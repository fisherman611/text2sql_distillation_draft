SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY is_male DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "France"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "France"
SELECT song_name , song_release_year FROM singer ORDER BY birthday DESC LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday DESC LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday LIKE "2001%"
SELECT DISTINCT country FROM singer WHERE YEAR(birthday) = 2001
SELECT country , count(*) FROM singer GROUP BY country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE is_male = 'F' AND age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE is_male = 'F' AND birthday < (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT average , highest FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.Stadium_ID , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Stadium_ID
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT highest FROM stadium EXCEPT SELECT T3.highest FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T1.stadium_id
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday LIKE "1981%" OR birthday LIKE "1991%"
SELECT avg(Average) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT lowest FROM stadium EXCEPT SELECT T1.lowest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT T1.concert_Name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_Name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name
SELECT T3.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID = T3.Singer_ID GROUP BY T3.Singer_ID
SELECT T3.Name , COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.singer_ID = T3.singer_ID GROUP BY T3.Name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year >= 2014
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.singer_ID = T3.singer_ID WHERE T2.year <= 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT DISTINCT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T1.lowest , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.lowest , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets WHERE pettype = 'dog' AND birthdate = (SELECT max(age) FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog')
SELECT weight FROM pets WHERE pettype = 'dog' AND birthdate = (SELECT max(birthdate) FROM pets WHERE pettype = 'dog')
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM has_pet WHERE StuID IN (SELECT StuID FROM Student WHERE age > 20)
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.pettype = "puppy" AND T3.sex = "F"
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T2.pettype = "puppy" AND T3.sex = "F"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE petid = (SELECT petid FROM Pets WHERE pettype = "Kitten"))
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE PetType = "Kitten"
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE pettype = "Kitten"
SELECT T2.fname , T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T3.petid = T1.petid WHERE T3.pettype = 'Dog' AND T3.birthdate != (SELECT max(T3.birthdate) FROM Has_pet AS T1 JOIN pets AS T3 ON T3.petid = T1.petid WHERE T3.pettype = 'Dog')
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "Dog" EXCEPT SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "Cat"
SELECT pettype , weight FROM pets ORDER BY birthdate DESC LIMIT 1
SELECT pettype , weight FROM pets ORDER BY birthdate DESC LIMIT 1
SELECT petid , weight FROM pets WHERE birthdate < "2020"
SELECT petid , weight FROM pets WHERE birthdate < "2020"
SELECT avg(petid) , max(petid) , pettype FROM pets GROUP BY pettype
SELECT avg(PetID) , max(PetID) , PetType FROM Pets GROUP BY PetType
SELECT avg(petid) , max(petid) , pettype FROM pets GROUP BY pettype
SELECT avg(weight) , pettype FROM pets GROUP BY pettype
SELECT T2.Fname , T2.Lname , T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T2.Fname , T2.Lname , T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID
SELECT petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT StuID , count(*) FROM Has_pet GROUP BY StuID
SELECT T2.Fname , T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Fname , T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%"
SELECT T2.Lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate LIKE "2001%"
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.ContId , T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT T1.ContId , T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.fullname , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.fullname , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.MakeId ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MPG = T2.Maker WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.modelid WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= 2020
SELECT DISTINCT T2.maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T1.year >= 2020
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year LIMIT 1
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.MakeId WHERE T2.year <= 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Maker = T2.MakeId WHERE T2.Year <= 1980
SELECT T2.Continent , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.fullname
SELECT count(*) , T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T3.id = T2.maker WHERE T3.fullname = "amc hornet sportabout"
SELECT accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid WHERE T2.model = "amc hornet sportabout"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "America"
SELECT count(*) FROM car_makers WHERE country = "USA"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT maker , model FROM model_list
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT DISTINCT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING T1.Continent = 'Europe' AND count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(horsepower) , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT max(Horsepower) , car_makers.Maker FROM cars_data JOIN car_makers ON cars_data.Id = car_names.MakeId WHERE cars_data.Cylinders = 3 GROUP BY car_makers.Maker
SELECT max(MPG) FROM cars_data
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(t1.edispl) FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id = t2.makeid JOIN model_list AS t3 ON t2.maker = t3.id WHERE t3.model = 'tesla'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.Maker WHERE T3.Maker = "Tesla"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.Id GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= 2019
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT max(YEAR) - 2 FROM cars_data)
SELECT count(*) FROM car_makers WHERE country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE country = 'American Motor'
SELECT T1.fullname , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.maker HAVING count(*) > 3
SELECT T1.maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T3.weight > 3500
SELECT DISTINCT T1.model FROM car_makers AS T2 JOIN model_list AS T1 ON T2.id = T1.maker WHERE T2.maker = 'General Motors' UNION SELECT DISTINCT T1.model FROM cars_data AS T2 JOIN model_list AS T1 ON T2.id = T1.model WHERE T2.weight > 3500
SELECT Yr FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data JOIN car_makers ON cars_data.MakeId = car_makers.Id JOIN model_list ON car_makers.Id = model_list.Maker WHERE model_list.Model = "tesla" ORDER BY accelerate LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId WHERE T2.Model = 'Tesla' ORDER BY T1.Accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT COUNT(*) FROM (SELECT Country FROM car_makers GROUP BY Country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker = T2.makeid WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT model , horsepower FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.MakeId , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders > 3
SELECT T1.MakeId , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year <= 1980
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Makeid = T2.model WHERE T1.weight < 3500 EXCEPT SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Makeid = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.fullname = 'Ford Motor Company'
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.ModelId JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "Ford Motor"
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT id , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.Maker WHERE T2.Model = 'tesla'
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.Country WHERE T2.Maker = "Tesla"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE abbreviation = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'America'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode , AirportName FROM airports WHERE City = "Jackson"
SELECT AirportCode , AirportName FROM airports WHERE City = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE countryabbrev = 'USA'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Jackson'
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Amsterdam Airport Schiphol'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Amsterdam Airport Schiphol'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Jackson'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = 'Jackson'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Jackson'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Jackson'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T1.City = 'Syracuse' AND T3.City = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T2.sourceairport = T1.airportcode JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T1.city = 'Syracuse' AND T3.city = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.abbreviation WHERE T2.airline = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T2.AirportName = 'ASY' AND T3.Abbreviation = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.airportname = 'Hartsfield-Jackson Atlanta International Airport' AND T2.abbriviation = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD Airport' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T1.Airline = 'JetBlue'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline ORDER BY count(*) ASC LIMIT 1
SELECT abbreviation , country FROM airlines GROUP BY abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT airline FROM flights WHERE sourceairport = "AHD"
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT Airline FROM flights WHERE SourceAirport = 'APG' INTERSECT SELECT Airline FROM flights WHERE DestAirport = 'CVO'
SELECT Airline FROM flights WHERE SourceAirport = "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport = "CVO"
SELECT Airline FROM flights WHERE SourceAirport = 'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName LIKE "%CVO") EXCEPT SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName LIKE "%APG")
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT DISTINCT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue"
SELECT T2.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Abbreviation = "JetBlue"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Syracuse' OR T1.City = 'Jackson'
SELECT count(*) FROM (SELECT * FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Syracuse' UNION SELECT * FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Jackson')
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports EXCEPT SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_description , document_id , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = 'PPT'
SELECT count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.Template_Type_Code = "PPT"
SELECT template_id , count(*) FROM Documents GROUP BY template_id
SELECT template_id , count(*) FROM Documents GROUP BY template_id
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Date_Effective_To , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Date_Effective_To , template_type_code FROM Templates WHERE Version_Number > 5
SELECT date_effective_from , date_effective_to , count(*) FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT date_effective_from , date_effective_to , count(*) FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To HAVING count(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To HAVING COUNT(*) < 3
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT version_number , date_effective_from , date_effective_to FROM templates ORDER BY version_number ASC LIMIT 1
SELECT t1.date_effective_from , date_effective_to FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = "Data base"
SELECT T2.Date_Effective_From , Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name = "Data base"
SELECT document_name , T1.document_id , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Details = "BK"
SELECT T1.Date_Effective_From , T1.Date_Effective_To , COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT T2.Date_Effective_From , T2.Date_Effective_To , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT min(Date_Effective_From) , max(Date_Effective_To) FROM Documents GROUP BY Template_ID
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T3.Template_Type_Description FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_Template_Types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code
SELECT DISTINCT T2.Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT T1.Date_Effective_From , Date_Effective_To FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "Presentation"
SELECT T1.Date_Effective_From , Date_Effective_To FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Presentation'
SELECT T1.first_name , T1.last_name , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT winner_age , loser_age FROM matches
SELECT winner_age , loser_age FROM matches
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) FROM matches
SELECT max(winner_rank) , max(loser_rank) FROM matches
SELECT min(winner_rank) , min(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT t1.first_name , t1.country_code FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id GROUP BY t2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.first_name , t1.country_code FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id ORDER BY t2.tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T3.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T3.tours = "Australian Open" AND T3.ranking_points = ( SELECT max(ranking_points) FROM rankings AS T4 JOIN matches AS T5 ON T4.player_id = T5.winner_id JOIN players AS T6 ON T5.winner_id = T6.player_id WHERE T4.tours = "Australian Open" )
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T3.player_id = T2.player_id WHERE T3.ranking_points = ( SELECT max(ranking_points) FROM rankings AS T4 JOIN matches AS T5 ON T5.winner_id = T4.player_id ) AND T1.tourney_name = "Australian Open"
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking_date , count(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date , count(*) FROM rankings GROUP BY ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT winner_name , winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT count(*) FROM (SELECT DISTINCT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA" )
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'L' AND T1.tourney_name = 'WTA Championships'
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT line_1 , line_2 , line_3 FROM Addresses LIMIT 3
SELECT count(*) FROM show WHERE if_first_show = 'Yes'
SELECT count(*) FROM show WHERE if_first_show = 'Yes'
SELECT Name FROM conductor ORDER BY birthday DESC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = 'American'
SELECT Name FROM conductor WHERE Nationality = 'American'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(attendance) FROM show WHERE if_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY birthday DESC
SELECT Name FROM conductor ORDER BY birthday DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work ASC LIMIT 1
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded = (SELECT min(Years_of_Founded) FROM orchestra)
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id WHERE t2.year_of_founded = (SELECT max(year_of_founded) FROM orchestra)
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded <= 2003
SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDED >= 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDED >= 2003
SELECT count(*) FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID JOIN orchestra AS T3 ON T3.Orchestra_ID = T1.Orchestra_ID WHERE T3.Orchestra = "Glebe Park" AND T2.If_first_show = "Yes"
SELECT count(*) FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID JOIN orchestra AS T3 ON T3.Orchestra_ID = T1.Orchestra_ID WHERE T3.Orchestra = "Glebe Park" AND T2.If_first_show = "Yes"
SELECT TYPE FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show GROUP BY Performance_ID HAVING COUNT(*) > 1)
SELECT TYPE FROM performance WHERE PERFORMANCE_ID IN (SELECT PERFORMANCE_ID FROM show WHERE If_first_show = 'No' GROUP BY PERFORMANCE_ID HAVING COUNT(*) > 1)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'IN'
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT professional_id , last_name , cell_number FROM professionals WHERE state = 'IN'
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T2.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000
SELECT first_name FROM owners UNION SELECT first_name FROM professionals EXCEPT SELECT name FROM dogs
SELECT first_name FROM professionals UNION SELECT first_name FROM owners EXCEPT SELECT name FROM dogs
SELECT professional_id , first_name , last_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT professional_id , first_name , last_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T2.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = 'Yes' GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT t2.breed_name FROM dogs AS t1 JOIN breeds AS t2 ON t1.breed_code = t2.breed_code WHERE t1.abandoned_yn = '1' GROUP BY t2.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T3.dog_id = T1.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T1.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T1.cost_of_treatment) LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = (SELECT breed_name FROM breeds GROUP BY breed_name ORDER BY count(*) ASC LIMIT 1)
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code GROUP BY T3.breed_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT date_departed - date_arrived FROM dogs
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT email_address FROM professionals WHERE state = 'HI' OR state = 'WI'
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = '1'
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = '1'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT COUNT (DISTINCT professional_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' AND age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = 'yes' AND dog_id NOT IN ( SELECT dog_id FROM treatments );
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'Yes' );
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments );
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT max(age) FROM dogs
SELECT max(age) FROM dogs
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM professionals
SELECT email_address , first_name , last_name FROM professionals
SELECT breed_code , size_code FROM Dogs
SELECT DISTINCT breed_code , size_code FROM dogs
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year DESC
SELECT Name FROM singer ORDER BY Birth_Year DESC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship , max(Net_Worth_Millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(Net_Worth_Millions) FROM singer GROUP BY citizenship
SELECT title FROM song ORDER BY sales DESC LIMIT 3
SELECT title FROM song ORDER BY sales DESC LIMIT 3
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year < 1945
