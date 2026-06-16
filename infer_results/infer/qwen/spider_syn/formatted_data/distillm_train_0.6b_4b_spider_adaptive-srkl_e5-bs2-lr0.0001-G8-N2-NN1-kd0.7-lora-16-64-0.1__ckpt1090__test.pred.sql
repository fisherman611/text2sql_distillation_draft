SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , State FROM musician GROUP BY State
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT name , location FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(Average) , max(Average) FROM stadium
SELECT avg(Average) , max(Average) FROM stadium
SELECT name , highest FROM stadium ORDER BY average LIMIT 1
SELECT name , highest FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT count(*) , stadium_id FROM concert GROUP BY stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.theme
SELECT T3.name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id GROUP BY T2.theme
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_ID = T2.singer_ID GROUP BY T2.name
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.singer_id
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T1.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T1.stadium_id WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT highest FROM stadium ORDER BY T2.capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT max(weight) FROM Pets WHERE pet_age = "young"
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type HAVING pet_type = "domestic"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.F = "F"
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(DISTINCT species) FROM animals
SELECT count(DISTINCT name) FROM animals
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.PetType = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Puppy"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat"
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT pet_type , weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT avg(age) , max(age) , pettype FROM Pets GROUP BY pettype
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T2.fname , T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T1.PetID WHERE T3.pet_type = "Miski"
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM Pets)
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Lname = "Smith"
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = "Smith"
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT T2.Fname , T2.Sex , T1.StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age = 3 AND T1.pet_type = "Kitten"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.ContId , T2.Continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T2.ContId
SELECT T1.ContId , T1.Continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model WHERE YEAR = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.modelid WHERE T2.year = 1970
SELECT T1.Make , T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT t1.maker , t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.makeid ORDER BY t2.year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT count(*) , T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT t1.state FROM cars_data AS t1 JOIN cars_data AS t2 ON t1.id = t2.id WHERE t1.mpg > t2.mpg GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1
SELECT t1.fullname FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.countryid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model JOIN car_makers AS T3 ON T3.Id = T2.Makeid WHERE T3.FullName = "Amc hornet sportabout (sw)"
SELECT accelerate FROM cars_data WHERE make = "F12" AND model = "SW"
SELECT count(*) FROM car_makers WHERE FullName LIKE "%French%"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.CountryId WHERE T2.CountryName = "France"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.fullname = "Ford" AND T2.model = "Ford Fusion" AND T2.countryname = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T1.country ID IN (SELECT countryid FROM countries WHERE continent = 'United States')
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN (SELECT Country FROM countries AS T2 JOIN car_makers AS T3 ON T2.CountryId = T3.Country ) AS T4 ON T4.Country = T1.Country GROUP BY T1.Id HAVING COUNT(*) >= 1
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN (SELECT ContId FROM cars_data GROUP BY ContId HAVING count(*) >= 1) AS T2 ON T1.Country = T2.ContId
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "Ford" GROUP BY T1.Maker HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T2.Horsepower) , T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Model WHERE Cylinders = 3 GROUP BY T1.Maker
SELECT max(T2.Horsepower) , T1.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT t1.model FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.model WHERE t1.make = 'Ford' ORDER BY t1.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(cedar) FROM cars_data WHERE model = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE make = "Volvo"
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data
SELECT t2.model FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.modelid JOIN car_makers AS t3 ON t2.make = t3.id GROUP BY t2.model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullName = 'American Motor Company'
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.modelid WHERE T1.FullName = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Id IN (SELECT MakeId FROM cars_data WHERE Weight > 3500)
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(cylinders) FROM cars_data WHERE make = 'volvo' AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = 'volvo')
SELECT count(*) FROM cars_data WHERE model = "Volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE model = "Volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(al Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(al Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.model = t2.makeid WHERE t2.cylinders = 4 GROUP BY t1.model ORDER BY t2.Horsepower DESC LIMIT 1
SELECT makeid , fullname FROM car_makers WHERE horsepower > (SELECT min(horsepower) FROM cars_data WHERE cylinders != 3)
SELECT makeid , fullname FROM car_makers WHERE make != 'Ford' INTERSECT SELECT makeid , fullname FROM cars_data WHERE cylinders != 2 AND horsepower != 60
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = 'Ford'
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker != "Ford"
SELECT T1.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId EXCEPT SELECT T3.CountryName FROM continents AS T3 JOIN countries AS T2 ON T3.ContId = T2.ContId JOIN car_makers AS T1 ON T2.CountryId = T1.Id
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Model GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Model GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.Id , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker > 3 UNION SELECT T1.Id , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = 'fiat'
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId WHERE T2.Mileage = "fiat"
SELECT T1.State FROM state AS T1 JOIN airlines AS T2 ON T1.StateCode = T2.Abbreviation WHERE T2.Airline = "JetBlue Airways";
SELECT country FROM airlines WHERE abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.AirportName , T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.Abbreviation = T2.Abbreviation WHERE T1.Country = "USA"
SELECT T1.AirwayName , T1.ShortenedWord FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.airportname) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName LIKE '%UAL%'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportcode = 'UAL'
SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airline WHERE T1.country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.sourceairport WHERE T1.airline = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.DestAirport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airportname = 'Ashley'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Aline = 'JetBlue Airways'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline WHERE T1.Airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airline = 'United Airlines' AND T2.city = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ASY Airport' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abbreviation = "United" AND T1.sourceairport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "United"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.sourceairport WHERE T3.city = 'Aberdeen' AND T1.airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airportcode ORDER BY count(*) LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T2.ShortenedWord , T1.StateOfAireway FROM flights AS T1 JOIN (SELECT ShortenedWord , StateOfAireway FROM airports) AS T2 GROUP BY T1.StateOfAireway ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.DestAirport = 'AHD'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.airline = 'FLY' AND T2.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.destairport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'CVO'
SELECT T1.airwaycode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airportname = 'APG' INTERSECT SELECT T1.airwaycode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airportname = 'CVO'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airliner WHERE T1.Abandoned = 'CVO' EXCEPT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airliner WHERE T1.Abandoned = 'APG'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING count(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport HAVING COUNT(*) < 200
SELECT T1.airline , T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.sourceairport WHERE T1.Abbreviation = "United Airlines"
SELECT T1.airline , T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.abbriation = T2.destairport WHERE T1.airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen "
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DestAirport , SourceAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , district FROM employee GROUP BY district
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop GROUP BY name , district ORDER BY count(*) DESC
SELECT name , district , LOCATION FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'Y' ORDER BY T1.age DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY manager_name ASC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE manager_name NOT IN (SELECT DISTINCT manager_name FROM hiring)
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.year_awarded = 2021
SELECT sum(T2.Bonus) FROM hiring AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from > 2023
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Ref_Template_types;
SELECT count(*) FROM Documents WHERE document_type = "Paper"
SELECT T1.template_id , T1.paragraph_text , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT T1.template_id , T1.paragraph_text , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_id , T1.paragraph_id , T1.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE '%w%'
SELECT t1.paper_id , t1.layout_id , t2.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Robbin CV"
SELECT t1.template_id , t2.layout_id , t1.template_details FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM documents
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT t1.template_id , t1.template_type_code FROM Templates AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id , t1.template_type_code FROM Templates AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id
SELECT template_id FROM documents EXCEPT SELECT document_id FROM paragraphs
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT layout_id , version_number , layout_type FROM layouts
SELECT id , edition_number , typename FROM layouts
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM templates WHERE template_type_code = "CV"
SELECT edition_number , layout_type FROM Templates WHERE edition_number > 5
SELECT T1.edition_number , T2.layout_type_name FROM Templates AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT layout_type , count(*) FROM Ref_Template_Types GROUP BY layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Layouts AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_id GROUP BY t1.template_type_code HAVING count(*) < 3
SELECT DISTINCT template_type_description FROM Ref_Template_Types WHERE template_type_code = 'layout' GROUP BY template_type_description HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT layout_type_code FROM layout WHERE name = "Data base"
SELECT t1.template_type_code FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.Other_Details = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT layout_type , count(*) FROM ...
SELECT t1.layout_type FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM documents AS T1 JOIN paragraphs AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id HAVING count(*) = (SELECT count(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id)
SELECT DISTINCT template_type_code FROM Ref_Template_Types EXCEPT SELECT DISTINCT template_type_code FROM Documents
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Paragraphs AS t2 ON t1.template_type_code = t2.document_id WHERE t2.paragraph_text = "text file"
SELECT T1.layout_type_name , T2.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t1.layout_type_description , t1.layout_type_name FROM Ref_Template_Types AS t1 JOIN Template_Type_Code AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.description = "Book"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.template_type_code = T2.document_id WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Paragraphs AS t2 ON t1.template_type_code = t2.template_id JOIN Documents AS t3 ON t2.document_id = t3.document_id WHERE t3.document_name = "text file"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_type_code JOIN Paragraphs AS t3 ON t2.document_id = t3.document_id WHERE t3.paragraph_text -> 'text file'
SELECT layout_id FROM paragraphs AS T1 JOIN document_as_t2 AS T2 ON T1.document_id = T2.document_id JOIN Ref_Template_Types AS T3 ON T3.template_type_code = T2.template_type_code WHERE T3.template_type_description = "Presentation"
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT paragraph_text FROM Paragraphs WHERE document_id IN (SELECT id FROM Documents WHERE document_name = "Customer reviews")
SELECT t2.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Customer reviews"
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY count(*)
SELECT count(*) , T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) <= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
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
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teach_ID = T2.Technical_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Course_ID
SELECT T1.Name , T2.Course_ID FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T1.Name , T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID ORDER BY T1.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T3.Course_ID = T1.Course_ID WHERE T3.Curriculum = 'Math'
SELECT Name FROM teacher WHERE Age = 35 AND Grade = "Math"
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership <= 4
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year , Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.visitor_id ORDER BY sum(T1.total_spent) DESC LIMIT 1
SELECT T2.Museum_ID , T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit
SELECT T2.Total_spent FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T2.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.Open_Year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM matches WHERE draw_size = 1
SELECT count(*) FROM players
SELECT count(*) FROM matches WHERE tourney_name = "Tournament"
SELECT count(*) FROM matches WHERE tourney_name = "T1"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_name WHERE YEAR = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_name WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , state_abbr FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.first_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id GROUP BY T2.country_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.first_name , T2.state_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.winner_rank LIMIT 1
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_name ORDER BY max(T1.minutes) LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(T1.ranking_points) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , T1.ranking_date , T1.ranking_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , state FROM matches GROUP BY state
SELECT count(*) , state FROM players GROUP BY state_code
SELECT T1.state FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.round ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T2.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year ASC LIMIT 3
SELECT T1.winner_name , T2.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year ASC LIMIT 3
SELECT count(DISTINCT T1.first_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT T2.first_name , T2.country_code , T2.birth_date FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.disposition_of_ship , T1.note FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.bulgarian_commander WHERE T1.ship_type = 'Brig' EXCEPT SELECT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.bulgarian_commander WHERE T1.ship_type != 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T1.tonnage = 225 )
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = 'line 1' INTERSECT SELECT address_id FROM addresses WHERE line_2 = 'line 2'
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = "Math"
SELECT course_description FROM Courses WHERE course_type = 'Math'
SELECT zip_postcode FROM addresses WHERE line_1 = "Port" AND line_2 = "Chelsea";
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T1.department_name , T2.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = "Engineering"
SELECT section_name , section_description FROM Sections
SELECT T1.section_name , T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T2.section_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.section_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.semester_name , T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T1.student_id = T3.student_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_description FROM courses AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T1.course_name LIKE '%computer%'
SELECT course_description FROM COURSES WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN semester_id AS T4 ON T2.semester_id = T4.semester_id WHERE T3.degree_summary_name = "2nd Degree Program" GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergrad' INTERSECT SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T1.student_id HAVING count(*) = 2
{"sql": "SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor\'"}
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT degree_program_id FROM student_enrolment GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_enrolment_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T2.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id NOT IN (SELECT T3.student_id FROM students AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id GROUP BY T3.student_id HAVING count(*) > 1)
SELECT T1.course_name FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id JOIN Student_Enrolment_Courses AS T3 ON T2.course_id = T3.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN student_enrolment AS T3 ON T3.student_id = T2.student_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.degree_program_id
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id JOIN student_enrolment AS T3 ON T3.student_id = T2.student_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.degree_program_id
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.transcript_id JOIN Student_Enrolment AS T3 ON T2.student_course_id = T3.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.transcript_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Student_Enrolment_Courses AS T4 ON T2.course_id = T4.course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_enrolment_id WHERE T2.transcript_date = (SELECT max(transcript_date) FROM transcripts)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE student_id NOT IN (SELECT student_id FROM students)
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , count(*) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , "transcript date" FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM Students
SELECT max(T1.date_left) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT max(date_first_registered) FROM Students
SELECT count(*) , T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id
SELECT count(*) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id = T2.transcript_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id = T2.transcript_id JOIN Student_Enrolment_Courses AS T3 ON T1.student_course_id = T3.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = "Master" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = "Bachelor"
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Masters" INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Bachelors"
SELECT count(DISTINCT T2.address_id) FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT DISTINCT T2.line_1 FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id
SELECT * FROM Students ORDER BY first_name , last_name DESC
SELECT other_student_details FROM STUDENTS ORDER BY other_student_details DESC
SELECT section_description FROM Sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" AND T1.cell_mobile_number = "09700166582"
SELECT first_name , last_name FROM students WHERE cell_mobile_number = 09700166582 OR permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti")
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Written_by FROM Cartoon WHERE Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM tv_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name , content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = 'en'
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM tv_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t2.series_name FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM TV_series AS t1 JOIN cartoon AS t2 ON t1.channel = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Episode FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT T1.channel FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT t1.series_name FROM cartoon AS t1 JOIN tv_series AS t2 ON t1.channel = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Directed_by , count(*) FROM cartoon GROUP BY Directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM tv_channel WHERE content = "HD TV"
SELECT Package_Option , TV_Channel.id FROM TV_Channel WHERE Hight_definition_TV = "HD"
{"sql": "SELECT t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = \"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t
SELECT T1.State FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Todd" AND T1.write_by = "Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel JOIN tv_series AS t3 ON t3.id = t2.18_49_Rating_Share WHERE t2.directed_by = "Todd" AND t2.written_by = "Casey"
SELECT state FROM cartoon EXCEPT SELECT state FROM cartoon WHERE written_by = 'Todd Casey'
SELECT t1.series_name , t1.Channel FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.Channel FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT T2.Series_Name , T2.Country FROM cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.Series_Name , T2.Country FROM cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != 'English'
SELECT id FROM tv_channel WHERE country = 'USA' GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones")
SELECT id FROM cartoon EXCEPT SELECT channel FROM cartoon AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT tv_channel.package_option FROM tv_channel JOIN cartoon ON tv_channel.id = cartoon.channel WHERE directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT Channel FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones")
SELECT count(*) FROM people WHERE nationality = "Chinese" AND birth_date < "2000-01-01"
SELECT count(*) FROM people WHERE Nationality = "China" AND Birth_Date < "2023-12-31"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Nationality = "Chinese")
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Nationality = "Chinese")
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT money_rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Gamers"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car Game"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
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
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Earnings = "Car Gamers")
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Earnings = "car gamer")
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT contestant_name FROM CONTESTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code , T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM CONTESTANTS AS T3 WHERE T3.contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM CONTESTANTS AS T3 WHERE T3.contestant_name = 'Kelly Clauss')
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(DISTINCT governmentform) FROM country
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT sum(t1.SurfaceArea) FROM country AS t1 JOIN country AS t2 ON t1.Code = t2.Code WHERE t1.Continent = "Caribbean" AND t2.name = "State"
SELECT sum(surfacearea) FROM country WHERE name = 'Continental' AND continent = 'Caribbean'
SELECT continent FROM country WHERE code = "ANGUILLA"
SELECT continent FROM country WHERE code = "ANGUILLA"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT district FROM city WHERE population = "Kabul"
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Code WHERE T2.CountryCode = "BR"
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT T1.Region , count(*) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Angola" GROUP BY T2.Code
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(people) , name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE t2.continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(t1.population) , max(tp.gnp) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(T1.LiveExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code WHERE T1.region = "Republic" AND T2.name = "African"
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN country AS t2 ON t1.code = t2.code WHERE t1.continent = "Africa" AND t2.region = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE governmentform = 'Union'
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(*) FROM countrylanguage WHERE countrycode = "ARUBA"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = (SELECT code FROM city WHERE name = 'Aruba' )
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Afghanistan" AND T1.isofficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State FROM city AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY SUM(T2.Percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT count(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.StateName FROM city AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.StateName FROM city AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name , T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Name , T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT T1.continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.Language = "Chinese"
SELECT T1.region FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.code2 WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT T1.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.language = 'Dutch' OR T1.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "English" ORDER BY T1.population DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.language = 'English' GROUP BY T2.countrycode ORDER BY population DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.code WHERE T1.continent = "Asia" ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name , T1.Population , T1.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" ORDER BY T1.Population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "N"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = "N" AND T1.Name != "India"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode EXCEPT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT T2.Language) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.population < 1000000 AND T2.IsOfficial = 1 AND T2.year < 1930
SELECT count(DISTINCT language) FROM countrylanguage WHERE independyyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code WHERE T1.continent = 'Asia')
SELECT name FROM country WHERE continent != "Asia" GROUP BY name HAVING sum(population) < (SELECT sum(population) FROM country WHERE continent != "Asia")
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE language != 'en'
SELECT state FROM state WHERE state NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.nationabbrev FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode EXCEPT SELECT T1.nationabbrev FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English"
SELECT T1.nationcode FROM countrycountry AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode EXCEPT SELECT T1.nationcode FROM countrycountry AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English"
SELECT code FROM country WHERE governmentform != 'Republic' AND (language != 'en' OR isofficial != 1)
SELECT abbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode EXCEPT SELECT T1.abbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.abbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "Republic"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 EXCEPT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.IsOfficial = "Yes" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.IsOfficial = "Yes"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.isofficial = 1 AND T2.language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.countrycode = T3.code WHERE T3.name = 'China' AND T3.continent = 'Asia'
SELECT T1.Name , T1.IndepYear , T2.Continent FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code ORDER BY T1.population ASC LIMIT 1
SELECT T1.Name , T1.indepyear , T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Code ORDER BY T1.population ASC LIMIT 1
SELECT capital , name FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT t1.name , t1.population , t1.headofstate FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code WHERE t2.population = (SELECT max(population) FROM city)
SELECT T1.Name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING count(*) >= 3
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT T1.GovernmentForm , COUNT(*) , avg(T2.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.GovernmentForm = T2.GovernmentForm WHERE avg(T2.LifeExpectancy) > 72 GROUP BY T1.GovernmentForm
SELECT governmentform , sum(population) FROM city WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , sum(population) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.Continent , sum(T2.Population) , avg(T2.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Code WHERE T1.LifeExpectancy < 72 GROUP BY T1.Continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.Population = 80000
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT sum(T1.population) , avg(T1.surfacearea) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "North America" AND T2.surfacearea > 3000
SELECT sum(t1.population) , avg(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "North America" AND t2.surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT T2.Language , T1.State FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.nationabbr , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Spanish"
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE Language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.StateCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor EXCEPT SELECT name FROM conductor WHERE nationality = 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE year_of_work = (SELECT max(year_of_work) FROM conductor) ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY age DESC LIMIT 1
SELECT name FROM conductor ORDER BY age DESC LIMIT 1
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID GROUP BY T1.Name
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY count(*) ASC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra != 'Show'
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.year_of_founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_founded HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
{"sql": "SELECT grade FROM highschooler WHERE id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM friend WHERE friend_id = (SELECT id FROM
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
SELECT T1.id , count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.id
SELECT count(DISTINCT friend_id) FROM FRIEND
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.name
SELECT count(*) , T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1000
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 59568
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T3.student_id = T2.student_id WHERE T2.friend_id IN (SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.friend_id HAVING count(*) = 2)
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.ID WHERE T2.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinarian"
SELECT state FROM Professionals WHERE role_code = "dog guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "dog veterinarian"
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.charge_type = "Medical"
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_number FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_number FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "Veterinarian" GROUP BY T1.owner_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = "Veterinarians" EXCEPT SELECT first_name FROM Professionals WHERE role_code = "Dog Name"
SELECT first_name FROM Professionals WHERE role_code = "Veterinarians" EXCEPT SELECT first_name FROM Professionals WHERE role_code = "Dog names"
SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT professional_id , role_code , email_address FROM Professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T2.first_name , T2.last_name , T1.owner_id FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id ORDER BY T3.cost_of_treatment DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id ORDER BY T3.cost_of_treatment DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments) AND T3.charge_type = 'health-care'
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T2.dog_id GROUP BY T1.breed_name ORDER BY sum(T3.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.owner_id , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.cell_number HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM charges)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = "Veterinarian"
SELECT T1.date_of_birth , T2.first_name FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.dog_id = T3.professional_id JOIN Treatment_Types AS T3 ON T2.role_code = T3.treatment_type_code WHERE T3.date_of_treatment = (SELECT date_of_treatment FROM treatments WHERE cost_of_treatment = 1000)
SELECT T1.charge_amount , T2.treatment_type_description FROM charges AS T1 JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code WHERE T1.charge_type = 'Healthcare'
SELECT cost_of_treatment , treatment_type_code FROM treatments WHERE treatment_type_code = 'Healthcare'
SELECT T2.first_name , T2.last_name , T3.size_description FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T1.size_code = T3.size_code WHERE T1.gender = "dog"
SELECT T2.first_name , T2.last_name , T3.weight FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T1.size_code = T3.size_code WHERE T1.age > 3
SELECT T1.breed_name , T2.name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T2.first_name , T2.last_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN puppies AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = "Rare"
SELECT T1.name , T5.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id JOIN Treatment_Types AS T4 ON T3.treatment_type_code = T4.treatment_type_code
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia";
SELECT T2.name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical Care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs) AND T2.gender = "M"
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'P'
SELECT date_arrived , date_departed FROM Dogs
SELECT count(*) FROM treatments WHERE treatment_type_code = 'Health Care'
SELECT count(*) FROM treatments WHERE treatment_type_code = 'Healthcare'
SELECT count(DISTINCT T1.professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P puppy'
SELECT count(DISTINCT professional_id) FROM treatments WHERE treatment_type_code = "Puppy Care"
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE "%West%"
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT date_of_birth FROM dogs ORDER BY date_of_birth DESC LIMIT 1)
SELECT cost_of_treatment FROM treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment LIMIT 1)
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.date_of_treatment LIKE "%health-care%"
SELECT count(*) FROM treatments WHERE treatment_type_code = "Guardian" EXCEPT SELECT count(*) FROM dogs WHERE gender = "dog"
SELECT count(*) FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name != "guardian" OR T2.gender != "dog"
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.dog_id = T3.dog_id AND T2.treatment_type_code = "Puppy care")
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = "Puppy" )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE gender = "P puppy"
SELECT avg(age) FROM Dogs WHERE gender = 'Puppy'
SELECT max(age) FROM Dogs WHERE gender = 'M' AND breed_code = 'Pipino'
SELECT max(age) FROM Dogs WHERE gender = 'P'
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM Professionals WHERE role_code = 'Veterinary'
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.age = " puppy "
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code WHERE T1.role_code = 'Veterinarian'
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT DISTINCT t1.title FROM song AS t1 JOIN singer AS t2 ON t1.singer_id = t2.singer_id GROUP BY t2.citizenship ORDER BY count(*) DESC LIMIT 1
SELECT country FROM singer GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT max(networth Millions) , citizenship FROM singer GROUP BY citizenship
SELECT country , max(networth Millions) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT country FROM singer INTERSECT SELECT country FROM singer WHERE birth_year < 1945 INTERSECT SELECT country FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Property_Features
SELECT t2.feature_type_name FROM other_available_features AS t1 JOIN ref_feature_types AS t2 ON t1.feature_type_code = t2.feature_type_code WHERE t1.feature_name = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties GROUP BY property_type_code HAVING count(*) = 2)
SELECT T1.property_name FROM properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_code = 'house' UNION SELECT T1.property_name FROM properties AS T1 JOIN Other_Property_Features AS T2 ON T1.property_id = T2.property_id JOIN Other_Available_Features AS T3 ON T2.feature_id = T3.feature_id WHERE T3.apt_feature_3 > 1
