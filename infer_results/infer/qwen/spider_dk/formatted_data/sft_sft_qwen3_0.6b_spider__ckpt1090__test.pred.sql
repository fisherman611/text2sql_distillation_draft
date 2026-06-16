SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday
SELECT name , country FROM singer ORDER BY age DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = 'France'
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.height FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT max(attendance) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT min(low) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday = 1981 OR birthday = 1991
SELECT avg(*) FROM stadium EXCEPT SELECT avg(*) FROM concert WHERE YEAR = 2014
SELECT min(low) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR < 2014)
SELECT T2.theme , count(*) , T1.cconcert_name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.cconcert_name
SELECT T2.theme , count(*) , T1.cconcert_name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.cconcert_name
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.year > 2014
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.songer_id = T2.songer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id WHERE T3.year < 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.Low , T2.High FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T2.Low , T2.High FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY birthdate LIMIT 1
SELECT min(weight) FROM pets WHERE pettype = 'dog'
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T3.stuid = T2.stuid WHERE T3.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T3.stuid = T2.stuid WHERE T3.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T3.stuid = T2.stuid WHERE T3.sex = "F" AND T1.pettype = "Puppy"
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T3.stuid = T2.stuid WHERE T3.sex = 'F' AND T1.pettype = "Puppy"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" OR T3.PetType = "Pupdog"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "Kitten")
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten"
SELECT fname , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "dog" INTERSECT SELECT StuID FROM Has_Pet WHERE PetID = "puppy")
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = "Puppy" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten")
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT pettype , weight FROM pets ORDER BY birthdate DESC LIMIT 1
SELECT petid , weight FROM pets WHERE birthdate > 2020
SELECT petid , weight FROM pets WHERE birthdate > 2020
SELECT pettype , avg(weight) , max(weight) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) , max(weight) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) , max(weight) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) FROM pets GROUP BY pettype
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "animal"
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001 AND T3.pettype = 'Cat'
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001 AND T1.sex = 'Cat'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(DISTINCT continent) FROM continents
SELECT T1.Countid , T1.CountryName , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Countid = T2.Countid GROUP BY T1.Countid
SELECT T1.countid , T1.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.countid = T2.countid GROUP BY T1.countid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.Maker , T2.FirstName , T2.Model , COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT T1.Maker , count(*) , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weights) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year < 2
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.ID = T2.MakeId WHERE T2.Year < 2
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.ID = T2.MAKEID ORDER BY T2.Year ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.ID = T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Year < 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Model WHERE T1.year < 1980
SELECT T2.Countid , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Countid
SELECT T1.Countinent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Countinent = T2.Country GROUP BY T1.Countinent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId JOIN car_names AS T3 ON T2.Country = T3.MakeId WHERE T3.Sportabout = "amc hornet"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Sporting = "Amc"
SELECT count(*) FROM car_makers WHERE Country = "Japanese"
SELECT count(*) FROM car_makers WHERE country = "Japanese"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'Americano'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , avg(YEAR) FROM cars_data
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T2.Horsepower) , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.cylinders = 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE model = "tesla"
SELECT avg(Edispl) FROM cars_data
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT model FROM car_makers GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data)
SELECT count(*) FROM cars_data WHERE YEAR = -2
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "American Motor"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "American Motor"
SELECT T1.Maker , T1.Name FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT T1.Name , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.Maker = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id JOIN cars_data AS T3 ON T3.id = T2.makeid WHERE T3.weight > 3500 OR T2.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT Cylinders FROM cars_data ORDER BY Accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower DESC LIMIT 4
SELECT makeid , make FROM car_makers WHERE horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT T1.id , T1.name FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.cylinders > 3)
SELECT makeid , model FROM cars_data WHERE horsepower < (SELECT min(horsepower) FROM cars_data) AND cylinders < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.Maker = 'Ford Motor'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN cars_data AS T3 ON T3.id = T2.makeid WHERE T3.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN cars_data AS T3 ON T3.id = T2.makeid WHERE T2.Maker = "Ford Motor"
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Model GROUP BY T1.Maker HAVING count(*) > 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Country , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.Country , T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.Maker WHERE T2.Model = 'tesla'
SELECT T1.Country , COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.Country , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) = 0
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "Americano"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "American"
SELECT AirportCode , AirportName FROM airports WHERE City = "Jackson"
SELECT AirportCode , AirportName FROM airports WHERE City = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE SOURCE Airport = "APG"
SELECT count(*) FROM flights WHERE SOURCE Airport = "APG"
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights WHERE destinationairport = (SELECT airportname FROM airports WHERE city = "Jackson")
SELECT count(*) FROM flights WHERE sourceairport = 'Syracuse' AND destinationairport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = "Syracuse" AND destinationairport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "JetBlue"
SELECT count(*) FROM flights WHERE FlightNo = "Jetblue"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T1.airline = "JetBlue" AND T2.destairport = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "ASY" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'JetBlue' AND T2.city = 'AHD'
SELECT count(*) FROM flights WHERE SourceAirport = "AHD" AND Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "JetBlue"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.DestAirport GROUP BY T1.Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destinationairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.AirportName = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.Source Airport WHERE T1.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.DestAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.Dest Airport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport GROUP BY T1.uid HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE SourceAirport = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SOURCE Airport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SOURCE Airport = "Jackson"
SELECT FlightNo FROM flights WHERE SOURCE Airport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' OR T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights) OR airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM documents WHERE document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV" AND template_id = "Robbin CV"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT t1.template_id) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT count(DISTINCT template_id) FROM documents
SELECT count(*) FROM Documents WHERE Template_ID IN ( SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Description = "PPT")
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT template_id , count(*) FROM Documents GROUP BY template_id
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROMTemplates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.dateffective_to - T1.dateffective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(*) > 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROMTemplates
SELECT count(*) FROMTemplates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM_templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_To - Date_Effective_From FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective FROM Templates WHERE Date_Effective_To - Date_Effective_From LIKE "PP" OR Date_Effective_To - Date_Effective_From LIKE "PPT"
SELECT Date_Effective_From , Date_Effective_To FROMTemplates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT date_ffective_from , date_ffective_to FROM Templates WHERE version_number > 5 AND template_type_code = "Text"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Version_Number > 5 AND Template_Type_Code = "Text"
SELECT Date_Effective_From , count(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_From , count(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) < 3
SELECT min(Version_Number) , min(Date_Effective_From) , min(Date_Effective_To) FROM Templates
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROMTemplates
SELECT T1.dateffective_to - T1.dateffective_from FROM_templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.dateffective_to - T1.dateffective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Data base"
SELECT document_name , document AND template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT document_name FROM documents WHERE document_id = (SELECT document_id FROM Documents WHERE template_id = "BK")
SELECT T1.Date_Effective_From , T1.Date_Effective_To , COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Document_Type_Code
SELECT T2.Date_Effective_From , T2.Date_Effective_To , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Date_Effective_From , T2.Date_Effective_To
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_From , T1.Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.dateffective_from , T1.dateffective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.dateffective_from , T1.dateffective_to ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code JOIN Documents AS T3 ON T2.Template_ID = T3.Template_ID
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID
SELECT Date_Effective_From , Date_Effective_To FROM_templates WHERE Template_Type_Description = "Presentation"
SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name , T2.age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_rank) , avg(winner_rank) , match_num FROM matches GROUP BY match_num
SELECT avg(loser_rank) , avg(winner_rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT avg(loser_rank) , avg(winning_rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winning_id
SELECT max(loser_rank) , min(winner_rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT max(loser_rank) , min(winner_rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT min(loser_rank) , min(winner_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.tourney_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING count(*) > 10
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winning_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winning_rank ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winning_rank , sum(T2.winning_rank_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winning_rank ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.rank = T3.player_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.winery_rank DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winery_rank = T3.winery_rank WHERE T3.tourney_name = "Australian Open" ORDER BY T3.winery_rank_points DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name , T1.year FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.year DESC LIMIT 1
SELECT avg(T1.rank) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(T1.ranking_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking_date
SELECT ranking , sum(tours) FROM rankings GROUP BY ranking_date
SELECT count(*) , T1.year FROM matches AS T1 JOIN rankings AS T2 ON T1.rankings = T2.player_id GROUP BY T1.year
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T2.winery_NAME , T2.winery_RANK FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winery_NAME ASC LIMIT 3
SELECT T2.winery_NAME , T2.winery_RANK FROM MATCHs AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winery_NAME ASC LIMIT 3
SELECT count(DISTINCT T2.winner_id) FROM races AS T1 JOIN matches AS T2 ON T1.winner_id = T2.winner_id WHERE T1.tourney_name = "WTA Championships" AND T2.winer_hand = "left"
SELECT count(*) FROM left-handed players AS T1 JOIN MATCH AS T2 ON T1.player_id = T2.winner_id JOIN ROLES AS T3 ON T2.tourney_id = T3.player_id WHERE T3.ranking_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHS AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winery_rank DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT line_1 FROM addresses
SELECT line_1 , line_2 , line_3 FROM ADDRES WHERE line_1 != "null"
SELECT count(*) FROM show WHERE if_first_show = 'T'
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT record_company FROM orchestra ORDER BY Year_of_Founded
SELECT record_company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(attendance) FROM show WHERE if_first_show = 'No'
SELECT avg(attendance) FROM show WHERE if_first_show = 'No'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T2.name , T3.orchitation FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T1.performance_id = T3.performance_id
SELECT T1.name , T2.organchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1 conductor_id = T2 conductor_id GROUP BY T1 conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1 conductor_id = T2 conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1 Conduct_ID = T2 Conduct_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Age ASC
SELECT major_record_format FROM orchestra ORDER BY Year_of_Founded
SELECT record_company FROM orchestra ORDER BY YEAR_OF_Founded DESC LIMIT 1
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_OF_Founded < 2003
SELECT record_company FROM orchestra WHERE YEAR_OF_Founded > 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_OF_Founded < 2003
SELECT count(*) FROM show WHERE If_first_show = 'Glebe Park'
SELECT count(*) FROM show WHERE If_first_show = 'Glebe Park'
SELECT T1.type FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T1.type HAVING count(*) > 1
SELECT T2.Type FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.If_first_show = 'No' GROUP BY T2.Type HAVING COUNT(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.city > 1000
SELECT first_name FROM professionals WHERE role_code = 'professional' UNION SELECT first_name FROM owners WHERE role_code = 'owner' EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = 'dog'
SELECT first_name FROM professionals WHERE role_code = 'student' OR role_code = 'owner' EXCEPT SELECT name FROM dogs WHERE gender = 'dog'
SELECT professional_id , first_name FROM professionals EXCEPT SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "animal"
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code != "dog"
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = (SELECT max(abandoned_yn) FROM dogs)
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.total_charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.total_cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , sum(T2.size_code) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name , T1.last_name , sum(T2.weight) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT min(breed_code) FROM dogs)
SELECT name , date_of_treatment FROM dogs WHERE breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T2.first_name , T1.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'VA'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT date_of_treatment FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT date_arrived , date_departed FROM Dogs WHERE treatment_type_code = "dog"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 0
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.name = 'Protoporphyrinogen IX'
SELECT count(DISTINCT T2.professional_id) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.name = "Professional"
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE abandoned_yn = 'yes' AND age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = "dog" )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = "dog_id")
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1' AND gender = 'male' UNION SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '0' AND gender = 'female'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'yes'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 1
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT max(age) FROM Dogs
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_type , sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT email_address , first_name FROM Professionals WHERE role_code = 'PROF'
SELECT email_address , first_name FROM Professionals WHERE role_code = 'PROF'
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_type , T2.size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code WHERE T1.name = "dogs"
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT common(citation) FROM singer
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Higher_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT max(T2.Highest_Position) , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship HAVING COUNT(*) >= 2
