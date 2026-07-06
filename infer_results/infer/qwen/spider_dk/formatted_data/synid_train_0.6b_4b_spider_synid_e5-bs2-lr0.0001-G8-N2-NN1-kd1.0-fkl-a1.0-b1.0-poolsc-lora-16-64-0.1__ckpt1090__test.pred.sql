SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthdate DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = "France"
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = "French"
SELECT name , song_release_year FROM singer ORDER BY birthdate LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthdate LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = "2001"
SELECT DISTINCT country FROM singer WHERE birth YEAR = 2001
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE is_male = 'male' AND birthday > (SELECT avg(birthday) FROM singer)
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , highest FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , stadium_id FROM concert GROUP BY stadium_id
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 ORDER BY T2.highest DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR LIMIT 1
SELECT sum(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = (SELECT max(year) FROM concert)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday = '1981' OR Birthday = '1991'
SELECT avg(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id EXCEPT SELECT avg(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.Singer_ID
SELECT T1.Name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name , COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.year > 2014
SELECT t1.name FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id JOIN concert AS t3 ON t2.concert_id = t3.concert_id WHERE t3.year < 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.Lowest , T1.Higher FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Lowest , T1.Higher FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT T1.Lowest , T1.Higher FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Lowest , T1.Higher FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Capacity = (SELECT max(Capacity) FROM concert)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT weight FROM Pets WHERE birthdate = (SELECT birthdate FROM Pets ORDER BY weight LIMIT 1)
SELECT max(weight) , PetType FROM Pets GROUP BY PetType
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = pets.petid WHERE T1.stuid IN (SELECT stuID FROM has_pet WHERE age > 20)
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = "F" AND T3.pettype = "Puppy"
SELECT count(*) FROM Pet WHERE pettype = "Puppy" INTERSECT SELECT count(*) FROM Has_Pet AS T1 JOIN Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = "F"
SELECT count(DISTINCT PetType) FROM Pets
SELECT count(DISTINCT PetType) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM student EXCEPT SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.PetID = T3.PetID WHERE pettype = "kitten"
SELECT T1.Major FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.Major FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT fname , age FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = "Puppy")
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy" EXCEPT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten"
SELECT PetType , weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT PetType , weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT PetID , weight FROM Pets WHERE birthdate > '2020'
SELECT petid , weight FROM Pets WHERE birthdate > '2020'
SELECT avg(PetID) , max(PetID) , PetType FROM Pets GROUP BY PetType
SELECT avg(PetType) , max(PetType) FROM Pets GROUP BY PetType
SELECT PetType , avg(PetID) , max(PetID) FROM Pets GROUP BY PetType
SELECT PetType , avg(weight) FROM Pets GROUP BY PetType
SELECT T2.Fname , T2.lname , T1.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Pet')
SELECT DISTINCT T1.Fname , T1.Lname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t1.stuid = t3.stuid WHERE t3.lname = 'Smith'
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T2.StuID , count(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID GROUP BY T1.StuID
SELECT T1.Fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID = (SELECT PetID FROM Pets WHERE birthdate = "2001")
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE birthdate = '2001' AND pettype = 'cat'
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student EXCEPT SELECT avg(age) FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent , T2.Continent FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T2.ContId
SELECT T1.Continent , T2.CountryName , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T2.CountryName
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T2.Maker , T1.id , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Maker GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE YEAR <= 2023
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE YEAR <= 2 AND YEAR >= 2
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = (SELECT min(year) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model_list_id WHERE T1.maker = T2.model_list_maker AND T2.model < 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR < 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T2.Continent , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , maker FROM car_makers GROUP BY maker
SELECT T2.Maker , T1.Model , T1.Maker , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = 'amc hornet sportabout'
SELECT accelerate FROM cars_data WHERE model = 'acara' AND YEAR = 2023
SELECT count(*) FROM car_makers WHERE country = 'Japan'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "Japan"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T3.id = T2.model JOIN countries AS T4 ON T4.CountryId = T3.Country WHERE T4.Continent = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = "United States"
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(Weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T2.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T2.CountryName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN cars_data AS T3 ON T2.Maker = T3.Maker GROUP BY T3.Maker HAVING count(*) >= 1
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Country = "Europe" GROUP BY T2.CountryID HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Cylinders = 3 GROUP BY T2.Maker
SELECT max(Horsepower) , M2 FROM cars_data WHERE Cylinders = 3 AND M2 = car_makers(3)
SELECT model FROM cars_data GROUP BY model ORDER BY avg(MPG) DESC LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Maker JOIN cars_data AS T3 ON T2.Model = T3.Model ORDER BY T3.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE Model = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE MakeId = "Tesla"
SELECT cylinders , max(accelerate) FROM cars_data GROUP BY cylinders
SELECT max( accelerate ) FROM cars_data GROUP BY cylinders
SELECT T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT max(YEAR) FROM cars_data) AND YEAR <= (SELECT min(YEAR) FROM cars_data)
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2018 AND 2020
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FULLNAME = "American"
SELECT count(*) FROM car_makers WHERE country = "American"
SELECT T2.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T2.Maker , T2.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id HAVING count(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = "General Motors" INTERSECT SELECT DISTINCT Model FROM cars_data WHERE Weight > 3500
SELECT DISTINCT model FROM model_list WHERE maker = "General Motors" OR weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Make = "Tesla" ORDER BY Accelerate LIMIT 1
SELECT Cylinders FROM cars_data WHERE Make = "Tesla" AND Accelerate = (SELECT MIN(Accelerate) FROM cars_data WHERE Make = "Tesla" GROUP BY Cylinders)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country = (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE country = (SELECT country FROM countries GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY horsepower DESC LIMIT 1
SELECT makeid , fullname FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) AND cylinders != 2
SELECT T2.Maker , T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Horsepower != (SELECT min(Horsepower) FROM cars_data WHERE Cylinders != 4)
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR <= 1980
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE model NOT IN (SELECT model FROM car_makers WHERE maker = 'Ford') AND horsepower < 3500
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM car_makers WHERE model = 'Ford'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) > 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 AND T2.Maker > 3
SELECT T1.CountryId , T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING COUNT(*) > 3 UNION SELECT T3.Model , T3.Maker FROM car_makers AS T3 JOIN model_list AS T4 ON T3.Maker = T4.Maker WHERE T4.Model = 'tesla'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Toyota" OR T2.Maker = "Ford"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Abbreviation = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT AirportCode , AirportName FROM airports WHERE Country = "JAK"
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = "USA";
SELECT Country , City FROM airports WHERE AirportName = "Alton"
SELECT city , country FROM airports WHERE AirportName = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Jackson'
SELECT AirportName FROM airports WHERE Country = 'USA' AND City = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights WHERE DESTAirport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights WHERE destairport = 'JACKSON'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'Syracuse' AND T2.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Syracuse" INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.abbreviation WHERE T2.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE FlightNo LIKE 'Jetblue%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY Airport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "JetBlue"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM FLIGHTS AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) LIMIT 1
SELECT T2.AirportCode FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.AIRLINE JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T2.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T1.AirportCode = T3.AirportCode WHERE T3.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T1.AirportCode = T3.AirportCode WHERE T3.AirportName = 'CVO'
SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN Airports AS T3 ON T2.AirportCode = T3.AirportCode WHERE T3.Airline = 'APG' INTERSECT SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN Airports AS T3 ON T2.AirportCode = T3.AirportCode WHERE T3.Airline = 'CVO'
SELECT DISTINCT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = "CVO" AND T3.AirportName != "APG"
SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport HAVING COUNT(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM FLights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = 'JetBlue'
SELECT FlightNo FROM Flights WHERE FlightNo LIKE 'J%';
SELECT FlightNo FROM Flights WHERE DESTAirport = 'APG'
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM Flights WHERE DESTAirport = "APG"
SELECT FlightNo FROM Flights WHERE DESTAirport = 'APG'
SELECT FlightNo FROM flights WHERE DESTAirport = "Jackson"
SELECT FlightNo FROM Flights WHERE FlightNo LIKE "J%"
SELECT FlightNo FROM Flights WHERE DESTAirport = "Jackson"
SELECT FlightNo FROM flights WHERE DESTAirport = "Jackson"
SELECT count(*) FROM flights WHERE DESTAirport = 'Syracuse' OR DESTAirport = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Syracuse" OR T2.city = "Jackson"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT airportname FROM airports EXCEPT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM documents
SELECT count(*) FROM documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_name , document_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_description FROM documents WHERE document_name = "Robbin CV"
SELECT T1.document_description , T2.template_id , T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT t1.template_id) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT count(DISTINCT Template_ID) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.Template_Type_Code = "PPT"
SELECT T1.template_id , count(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT Template_ID , count(*) FROM Documents GROUP BY Template_ID
SELECT T1.date_effective_from FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING count(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates
SELECT date_effective_from FROM Templates WHERE date_effective_to <= date_effective_from
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_from FROM Templates WHERE template_type_code = 'CV'
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates WHERE date_effective_to <= date_effective_from AND count(*) < 3
SELECT date_effective_from FROM Templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT min(version_number) , max(date_effective_from) , max(date_effective_to) FROM Templates
SELECT min(VERSION_NUMBER) , max(date_effective_from) , max(date_effective_to) FROM Templates
SELECT T1.date_effective_from , T1.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.date_effective_from , T1.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.document_name , T2.template_id , T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T2.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT date_effective_from , date_effective_to , count(*) FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT T2.Date_Effective_from , T2.Date_Effective_to , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT date_effective_from FROM documents GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM DOCUMENTS GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T2.date_effective_from , T2.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_from > (SELECT min(date_effective_from) FROM Documents) AND date_effective_to > (SELECT max(date_effective_to) FROM Documents)
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "Presentation"
SELECT date_effective_from FROM Templates WHERE template_type_code = 'Presentation'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T2.first_name , T2.last_name , T1.loser_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT loser_age , loser_entry FROM matches
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT loser_age , winner_age FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT T1.player_id , avg(T2.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id
SELECT avg(winner_rank) + avg(loser_rank) FROM rankings
SELECT max(T1.winner_rank) , max(T2.winner_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id
SELECT T1.rank , T2.rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.rank , T2.rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T2.year = 2016
SELECT T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.winner_rank , T1.winner_rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T1.winner_rank_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open Tourney" ORDER BY T2.winner_rank LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE tourney_name = 'Australian Open')
SELECT T1.first_name , T1.last_name , T3.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id
SELECT T1.winner_name , T2.loser_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T3.player_id = T1.player_id WHERE T2.minutes = (SELECT max(minutes) FROM matches)
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.first_name , T2.last_name , sum(T1.rankings_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.first_name , T2.last_name , sum(T1.rankings_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(t1.tourney_date) , ranking FROM rankings AS t1 JOIN matches AS t2 ON t1.player_id = t2.player_id GROUP BY ranking
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T2.winner_name , T2.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id ORDER BY T3.year , T3.winner_rank_points , T3.winner_rank_points DESC LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id ORDER BY T3.year , T3.winner_rank_points DESC LIMIT 3
SELECT count(DISTINCT winner_name) FROM rankings WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships" AND loser_hand = "left hand");
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T2.first_name , T2.last_name , T2.birth_date FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T2.birth_date FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T2.player_id ORDER BY sum(T3.winner_rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE if_first_show != 'Yes'
SELECT avg(Attendance) FROM performance WHERE If_first_show != "Y"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT COUNT (DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance GROUP BY conductor_id ORDER BY YEAR_OF_WORK DESC LIMIT 1)
SELECT T1.name , T2.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.year_of_founded LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company
SELECT major_record_format FROM orchestra ORDER BY YEAR_of_founded ASC
SELECT major_record_format FROM orchestra ORDER BY YEAR_of_founded
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY YEAR_OF_FOUNDED ASC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT count(*) FROM show WHERE if_first_show = 'Yes' AND name = 'Glebe Park'
SELECT count(*) FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id WHERE T2.if_first_show = 'Glebe Park'
SELECT TYPE FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM show WHERE if_first_show = "first")
SELECT TYPE FROM performance GROUP BY TYPE HAVING count(*) > 1 INTERSECT SELECT TYPE FROM performance WHERE if_first_show != "first"
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(t1.age) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" OR count(*) > 2
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" OR T2.treatment_count > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.cost_of_treatment > 1000
SELECT DISTINCT T1.first_name FROM PROFESSIONALS AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id EXCEPT SELECT DISTINCT T1.first_name FROM PROFESSIONALS AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.name = "dog"
SELECT first_name FROM PROFESSIONALS UNION SELECT first_name FROM OWNERS WHERE first_name NOT IN (SELECT first_name FROM Dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.name = 'dog')
SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "male"
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT max(age) FROM dogs)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.street , T1.city , T1.state , T1.zip_code , T1.email_address , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T2.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = 'Y' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_description ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1;
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.professional_id , T2.first_name , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.date_of_treatment , T3.first_name , T3.last_name FROM Treatment_Types AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T3.dog_id = T1.dog_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , treatment_type_description FROM treatments JOIN treatment_types ON treatments.treatment_type_code = treatment_types.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.cost_of_treatment
SELECT T1.first_name , T1.last_name , T3.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code WHERE T3.size_description = "dog"
SELECT T1.first_name , T1.last_name , T3.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T3.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = "Rare"
SELECT T1.name , T4.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Breeds AS T4 ON T1.breed_code = T4.breed_code WHERE T3.treatment_type_description = "Rare"
SELECT T2.first_name , T2.last_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_of_treatment FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "male"
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM PROFESSIONALS WHERE state = "HI" OR state = "WI"
SELECT email_address FROM PROFESSIONALS WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "male"
SELECT count(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id GROUP BY T3.dog_id
SELECT count(DISTINCT professional_id) FROM Treatments AS T JOIN Professionals AS P ON T.professional_id = P.professional_id JOIN Dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "male" OR D.gender = "female"
SELECT first_name , last_name FROM PROFESSIONALS WHERE city LIKE '%West%'
SELECT first_name , last_name FROM PROFESSIONALS WHERE city LIKE '%West%'
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE abandoned_yn = 'Y' AND age < (SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM dogs WHERE abandoned_yn = 'Y' AND age < (SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y')
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = 'Y' AND date_departed = 'N'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'Y')
SELECT count(DISTINCT owner_id) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT age FROM Dogs ORDER BY date_departed DESC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM PROFESSIONALS
SELECT email_address , first_name , last_name FROM Professionals
SELECT DISTINCT breed_type , size_type FROM Dogs
SELECT DISTINCT breed_code , size_code FROM Dogs AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code WHERE T1.breed_code = "dog"
SELECT T1.first_name , T1.last_name , T3.date_of_treatment FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
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
SELECT name FROM singer ORDER BY birth_year ASC LIMIT 1
SELECT name FROM singer ORDER BY birth_year LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT DISTINCT t1.name FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id WHERE t2.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship HAVING COUNT(*) >= 1
