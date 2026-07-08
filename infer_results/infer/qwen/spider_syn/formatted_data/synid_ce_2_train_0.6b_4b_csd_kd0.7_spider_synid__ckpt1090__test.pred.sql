SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT name , LOCATION FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.theme
SELECT T2.name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.concert_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.highest = (SELECT highest FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = (SELECT Highest FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT min(weight) FROM Pets WHERE petage = "young"
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age > 42
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Mammal" EXCEPT SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Mammal"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat"
SELECT pettype , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT pet_age , pet_type , avg(age) , max(age) FROM Pets GROUP BY pet_type
SELECT pettype , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pettype
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT pet_age , avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age > 42
SELECT DISTINCT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = 'Smith'
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent , count(*) , T2.ContId FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T2.ContId
SELECT count(*) , continent , T1.continent FROM continents AS T1 JOIN countries AS T2 ON T1.continent = T2 Continent GROUP BY T1.continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker , COUNT(*) , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT T1.Maker , T1.Id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT t2.model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id = t2.model WHERE t1.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT fullname FROM car_makers WHERE id IN (SELECT maker FROM cars_data WHERE YEAR = 1970)
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN cars_data AS T3 ON T2.Model = T3.Model WHERE T3.Year = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId ORDER BY T2.year LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2 Continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.Continent
SELECT count(*) , continent FROM cars_data GROUP BY continent
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Maker = T2.CountryId GROUP BY T2.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.fullname FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.CountryId GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T4.Accelerate FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.MakeId = T4.Id WHERE T1.Maker = "Amc" AND T2.Model = "Hornet" AND T3.Model = "Sportabout"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "AMC" AND T2.Maker = "Hornet" AND T3.Model = "Sportabout"
SELECT count(*) FROM car_makers WHERE maker = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.CountryId WHERE T2.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId
SELECT T1.FullName , T2.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "Europe" GROUP BY T2.Continent HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Cylinders = 3
SELECT max(T1.Horsepower) , T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model ORDER BY T1.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Maker = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) FROM cars_data BY cylinders
SELECT T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullName = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = "American Motor Company"
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight > 3500 OR T1.Maker = "General Motors"
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data WHERE model = 'volvo')
SELECT count(*) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data) AND cylinders = (SELECT min(cylinders) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data))
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE id NOT IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT T1.MakeId , T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model JOIN cars_data AS T3 ON T2.Model = T3.Id WHERE T3.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T3.Cylinders != 3
SELECT T1.Maker , T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T2.Model NOT IN (SELECT T3.Model FROM cars_data AS T3 JOIN car_makers AS T4 ON T3.Id = T4.Id WHERE T4.Horsepower >= (SELECT min(Horsepower) FROM cars_data))
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 UNION SELECT max(MPG) FROM cars_data WHERE YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.maker = 'Ford Motor Company'
SELECT DISTINCT model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "Ford Motor Company" INTERSECT SELECT DISTINCT model FROM cars_data WHERE weight < 3500
SELECT DISTINCT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t2.id NOT IN (SELECT makeid FROM car_makers)
SELECT countryname FROM countries EXCEPT SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(DISTINCT T1.maker) >= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND T1.maker > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country JOIN model_list AS T3 ON T2.id = T3.maker WHERE T3.model = 'fiat' UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId WHERE T2.year > 2010 UNION SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId WHERE T2.year = 2010 AND T1.FullName = "Fiats"
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = "Jetblue Airways"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.AirportName , T2.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.Country = "USA"
SELECT T1.AirportName , T2.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(airwaycount) FROM Airways
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName LIKE '%UAL%'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportcode WHERE T2.airportname = 'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'City Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.airline = T1.airline WHERE T3.airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abandonable = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY Airport' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD Airport" AND T1.airline = "United Airlines"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports AS T1 JOIN flits AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T2.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.Airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.Country ORDER BY count(*) LIMIT 1
SELECT T1.Airline , T1.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T2.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.DestAirport = "AHD"
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Airline = "APG" INTERSECT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Airline = "CVO"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'CVO' EXCEPT SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = "CVO" EXCEPT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline JOIN airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T3.AirportName = "APG"
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.Airway HAVING COUNT(*) >= 10
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode HAVING count(*) >= 10
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.Airway HAVING count(*) < 200
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportCode HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "United Airlines"
SELECT T2.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights UNION SELECT SourceAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.Manager_name , T2.District FROM shop AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID ORDER BY T1.Number_products DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop GROUP BY name ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'Yes' ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM market WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT T1.template_id , T1.template_name , T1.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT T1.template_id , T1.document_name , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.template_id , T2.layout_id , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.template_id , T2.layout_id , T2.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM 文本文件
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT count(*) , layout_id FROM Documents GROUP BY layout_id
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Document_ID AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM layouts EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Layouts
SELECT count(*) FROM Layouts
SELECT layout_id , version_number , layout_type FROM layouts
SELECT template_id , version_number , template_type_code FROM Templates WHERE template_type_code = "Layout"
SELECT DISTINCT layout_type FROM layouts
SELECT DISTINCT template_type_description FROM ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "PP" OR T2.template_type_description = "PPT"
SELECT count(*) FROM_templates AS T JOIN ref_template_types AS R ON T.template_type_code = R.template_type_code WHERE R.template_type_description = "CV"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "CV"
SELECT edition_number , layout_type FROM Templates WHERE edition_number > 5
SELECT edition_number , layout_type_name FROM Templates WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT layout_type , count(*) FROM Templates GROUP BY layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types WHERE template_type_code = (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3)
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING count(*) < 3)
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT layout_type_code FROM templates WHERE template_name = "Data base"
SELECT T1.layout_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , layout_type FROM Templates GROUP BY layout_type
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates WHERE template_type_code = "text" GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id JOIN Paragraphs AS T4 ON T3.document_id = T4.document_id WHERE T4.paragraph_text = "text"
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_details = 'text'
SELECT T1.template_type_name , T2.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T2.template_type_description , T1.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T2.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number = 1 AND T1.template_type_code = "AD"
SELECT T2.layout_type_name FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = 'text file'
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_id = T3.template_id JOIN paragraphs AS T4 ON T3.document_id = T4.document_id WHERE T4.paragraph_text LIKE "%text%"
SELECT layout_id FROM layouts WHERE template_type_description = "Presentation"
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_description = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT other_details FROM Paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.template_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*)
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT count(*) , T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id
SELECT count(*) , T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.template_id , T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_name ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Faculty , T3.curriculums FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id ORDER BY T2.Faculty
SELECT T2.Name , T3.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID WHERE T1.Course = 'Math'
SELECT Name FROM teacher WHERE Course = 'Math'
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Course_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher EXCEPT SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership <= 4
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.Museum_ID , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit WHERE LEVEL_of_membership = 'Guest'
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.visitor_id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.visitor_id IN (SELECT T3.visitor_id FROM visit AS T3 JOIN museum AS T4 ON T3.museum_id = T4.museum_id WHERE T4.open_year < 2011 INTERSECT SELECT T3.visitor_id FROM visit AS T3 JOIN museum AS T4 ON T3.museum_id = T4.museum_id WHERE T4.open_year > 2009)
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT T2.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM rankings
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(T1.winner_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_rank
SELECT max(loser_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id WHERE T3.year = 2013 INTERSECT SELECT T1.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.loser_id WHERE T3.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , last_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_level , T2.tourney_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.tourney_level ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T2.ranking_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.winner_name ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.looser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1 UNION SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T2.first_name , T2.last_name , avg(T1.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM matches GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM matches GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.match_num LIMIT 3
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking ASC LIMIT 3
SELECT count(DISTINCT T1.winner_hand) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.winner_hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT T1.first_name , T1.country_code , T1.birth_date , T2.winner_name , T2.winner_rank , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.id , T1.name , T1.t FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.t = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id GROUP BY T1.id HAVING sum(T3.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result != 'lost' INTERSECT SELECT count(*) FROM ship WHERE tonnage != 225
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses WHERE line_1 = "" AND line_2 = ""
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT T1.course_description FROM courses AS T1 JOIN degree_programs AS T2 ON T1.course_id = T2.degree_program_id WHERE T2.department_name = 'Math'
SELECT T1.zip_postcode FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Port" AND T1.zip_postcode != "null"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T2.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_id , T2.department_name FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT count(*) FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT section_name , section_description FROM sections
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T2.section_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.section_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.semester_id = (SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'Undergraduate')
SELECT T1.semester_name , T2.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT course_description FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2nd'
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduate' AND T2.semester_id = 1 GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters EXCEPT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT lastname FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.lastname FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.lastname FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN student_enrolment_courses AS T3 ON T2.transcript_id = T3.transcript_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT first_name , middle_name , last_name FROM students WHERE date_left = (SELECT min(date_left) FROM students)
SELECT first_name , middle_name , last_name FROM students WHERE date_left = (SELECT min(date_left) FROM students)
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , T2.section_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM transcripts AS T1 JOIN transcript_contents AS T2 ON T1.transcript_id = T2.transcript_id
SELECT count(*) FROM students
SELECT max(date_left) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.course_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id
SELECT max(count(*) ) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'Masters' INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'Bachelors'
SELECT count(DISTINCT T1.current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T2.city FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id
SELECT * FROM students ORDER BY first_name DESC , last_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_name FROM sections;
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT first_name , last_name FROM students WHERE permanent_address_id IN (SELECT T1.permpermanent_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permpermanent_address_id WHERE T1.country = "Haiti") OR cell_mobile_number = 09700166582
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT t2.series_name FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT T1.episode , T2.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T2.rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.air_date FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_channel AS t1 JOIN tv_series AS t2 ON t1.id = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.episode FROM tv_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey" AND T2.written_by = "Todd Casey"
SELECT T1.State FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = "Animals" AND T1.written_by = "Todd Casey"
SELECT country FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.episode WHERE T2.directed_by = "Todd Casey" )
SELECT state FROM cartoon EXCEPT SELECT T1.state FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = 'Animation' AND T1.written_by = 'Todd Casey'
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM tv_channel WHERE country = 'USA' GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel EXCEPT SELECT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones'
SELECT package_option FROM TV_channel EXCEPT SELECT t1.package_option FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones'
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Chinese"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = 'Chinese'
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT FINAL_TABLE_MADE , best_finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Car" )
SELECT avg(Earnings) FROM poker_player WHERE Final_Table_Made = "Car Game"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Gamers"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = 'Car Game'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
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
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = 'Poker' AND Best_Finish = 'Win' )
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT T1.state , T2.set_up_time FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T3.contestant_number = T2.contestant_number WHERE T3.contestor_number = 103 AND T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T3.contestant_number = T2.contestant_number WHERE T3.contestor_number = 103 AND T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T2.Region = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE code = 'Anguilla'
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.capital = T2.capital WHERE T2.name = 'Kabul'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Languages" AND T1.capital = "Kabul"
SELECT language FROM countrylanguage WHERE countrycode = (SELECT code FROM city WHERE name = 'Aruba' )
SELECT language FROM countrylanguage WHERE countrycode = (SELECT code FROM city WHERE name = 'Aruba' )
SELECT T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Brazil"
SELECT T1.Population , T2.LifeExpectancy FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Brazil"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT T1.Region , T2.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Romanian" AND T1 Continent = "Africa" AND T1 Region = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode GROUP BY T1.name ORDER BY sum(T3.percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch"
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "English" INTERSECT SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "French"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT t1.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN city AS t3 ON t2.code = t3.countrycode WHERE t1.language = "english" ORDER BY t3.population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "English" ORDER BY T1.Population DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T1.surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'No'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT sum(population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.Language != "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.indepyear < 1930
SELECT count(DISTINCT language) FROM countrylanguage WHERE independyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE continent = 'Africa'
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT T1.LocalName FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT state FROM countrylanguage WHERE language != 'English'
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.LocalName FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English" AND T2.GovernmentForm != "Republic"
SELECT abbreviation FROM state WHERE language != 'English' AND governmentform != 'Republic'
SELECT name FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'Y' AND language != 'English')
SELECT name FROM city WHERE countrycode = (SELECT code FROM country WHERE continent = 'Europe') EXCEPT SELECT name FROM city WHERE isofficial = 1
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 1 AND T3.language = "Chinese" AND T2.continent = "Asia"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 1 AND T2.continent = "Asia" AND T3.language = "Chinese"
SELECT name , independyear , territory FROM country ORDER BY population LIMIT 1
SELECT name , indepyear , continent FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.Name , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name , T1.Population , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Population DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform , count(*) FROM country WHERE averagelifeexpectancy > 72 GROUP BY governmentform
SELECT governmentform , sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT avg(lifeexpectancy) , count(*) FROM country WHERE avg(lifeexpectancy) < 72
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , countrycode FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T2.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.Language = "Spanish"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Spanish"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance WHERE TYPE = "Director") GROUP BY conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM conductor WHERE age = (SELECT max(age) FROM conductor)
SELECT T2.name , T3.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T1.orchestra_id = T3.orchestra_id
SELECT T2.name , T1.orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T2.orchestra_id = T3.orchestra_id JOIN show AS T4 ON T3.performance_id = T4.performance_id GROUP BY T1.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY count(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT orchestra FROM orchestra EXCEPT SELECT T1.orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT T1.share FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.year_of_founded < 2003 INTERSECT SELECT T1.share FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.year_of_founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
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
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , friend_id FROM FRIEND
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = 955982048531398521
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 2045
SELECT count(DISTINCT T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT T1.friend_id) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT student_id FROM FREQ WHERE friend_id IN (SELECT liked_id FROM LIKES)
SELECT student_id FROM FRIEUND INTERSECT SELECT student_id FROM LIKES
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id WHERE T3.liked_id = T1.id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = T2.state AND T1.role_code = "guardian" INTERSECT SELECT state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "veterinarian"
SELECT DISTINCT state FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "guardian" INTERSECT SELECT DISTINCT state FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "veterinarian"
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.charge_type = 'health care'
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.age > 2 AND T1.state = 'Indiana'
SELECT professional_id , last_name , cell_number FROM professionals WHERE state = "Indiana" UNION SELECT professional_id , last_name , cell_number FROM professionals GROUP BY professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = "veterinary" UNION SELECT first_name FROM Professionals WHERE role_code = "guardian" EXCEPT SELECT T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "dog"
SELECT first_name FROM PROFESSIONALS WHERE role_code = "veterinarians" UNION SELECT first_name FROM PROFESSIONALS WHERE role_code = "guardians" EXCEPT SELECT first_name FROM Dogs
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'male'
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM treatments)
SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id ORDER BY T1.cost_of_treatment DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.charge_type = 'health-care' ORDER BY sum(T2.charge_amount) LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT professional_id , cell_number FROM professionals GROUP BY cell_number HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'Medical'
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.charge_amount , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.dog_id WHERE T2.treatment_type_code = "Healthcare"
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT T1.first_name , T1.last_name , T2.size_description FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T3.size_description FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T1.size_code = T3.size_code
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Dogs ORDER BY age LIMIT 1)
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = (SELECT breed_name FROM Breeds ORDER BY count(*) LIMIT 1)
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T2.first_name , T2.last_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM professionals WHERE role_code = "veterinary" AND state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM PROFESSIONALS WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'P'
SELECT date_arrived , date_departed FROM dogs
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health care";
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health care";
SELECT count(DISTINCT T1.first_name) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "male" AND T3.age < 14
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = 'Puppies'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM PROFESSIONALS WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(t2.cost_of_treatment) FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE gender = 'P'
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT dog_id FROM dogs WHERE age < 30)
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE age < 3)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'male'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE gender = 'Puppy'
SELECT avg(age) FROM Dogs WHERE gender = 'Puppy'
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM Professionals WHERE role_code = 'veterinarian'
SELECT email_address , home_phone , cell_number FROM Professionals
SELECT breed_name , size_description FROM Dogs
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code WHERE T1.breed_name = 'Puppy'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
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
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship , max(net_work_millions) FROM singer GROUP BY citizenship
SELECT country , max(net_workillions) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = (SELECT feature_type_code FROM Other_Available_Features WHERE feature_name = "AirCon")
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.feature_type_name = 'House' OR T1.room_count > 1
