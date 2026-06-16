SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , state FROM state_musician GROUP BY state
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(Average) , max(Average) FROM stadium
SELECT avg(Average) , max(Average) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average LIMIT 1
SELECT name , highest FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.Stadium_ID , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Stadium_ID
SELECT t1.name , t2.capacity FROM stadium AS t1 JOIN singer_in_concert AS t2 ON t1.stadium_id = t2.stadium_id JOIN concert AS t3 ON t2.concert_id = t3.concert_id WHERE YEAR >= 2014 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.Name , T2.Theme , COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Theme
SELECT T3.name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.singer_ID = T3.singer_ID GROUP BY T2.theme
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT t1.name , t1.position FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT t1.name , t1.position FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE t2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pet_type FROM Pets WHERE pettype = "domestic" GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.F = "F" AND T1.PetType = "Puppy"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = "Pug"
SELECT count(DISTINCT pettype) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid WHERE T1.pettype = "dog"
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten"
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS PetID JOIN Pets AS T1 ON T1.PetID = T1.PetID WHERE T1.PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.Fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.Fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Has_Pet WHERE PetType = "dog") EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Has_Pet WHERE PetType = "kitten")
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT T2.pettype , T2.weight FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.petage = (SELECT min(petage) FROM pets)
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT avg(age) , max(age) , pettype FROM Pets GROUP BY pettype
SELECT pettype , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pettype
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Mammal"
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Fname = "Tom" AND T1.Lname = "Smith"
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = "Smith"
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM has_pet GROUP BY StuID
SELECT T1.Fname , T1.Sex , T2.PetID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.PetID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T2.PetID = 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.ContId , T2.Continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T2.ContId
SELECT t1.contid , t1.continent , count(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.contid GROUP BY t1.continent
SELECT count(DISTINCT continent) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker , COUNT(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.MakeId ORDER BY T2.Horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.MPG < (SELECT avg(MPG) FROM cars_data)
SELECT t1.fullName FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker JOIN cars_data AS t3 ON t2.model = t3.model WHERE t3.year = 1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker JOIN cars_data AS T3 ON T2.Model = T3.Model WHERE T3.Year = 1970
SELECT T2.Make , T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid ORDER BY T1.year LIMIT 1
SELECT t1.maker , t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id ORDER BY t2.year LIMIT 1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Maker = T2.Maker WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Maker = T2.Maker WHERE T2.Year > 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN continents AS T2 ON T1.Country = T2.Continent GROUP BY T2.Continent
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T2.StateName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT t2.Continent FROM car_makers AS t1 JOIN continents AS t2 ON t1.Country = t2.CountryId GROUP BY t1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Model = T2.MakeId WHERE T1.Maker = "Amc Hornet Sportabout (sw)"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = 'Honda' AND T3.Model = 'Sportabout'
SELECT count(*) FROM car_makers WHERE fullName LIKE "%French%"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryname WHERE T2.continent = "France"
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN countries AS T3 ON T3.countryid = T1.country WHERE T3.countryname = 'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT Weight FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Make = T2.Make
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id HAVING count(*) >= 1
SELECT T1.Continent , T1.Id FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id GROUP BY T1.Id HAVING count(*) >= 1
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId JOIN car_makers AS T3 ON T2.CountryId = T3.Country WHERE T3.Maker = "Toyota" GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT T1.FullName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(horsepower) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE cylinders = 3 GROUP BY T1.Maker
SELECT max(horsepower) , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.MPGas = (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Maker = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT accelerate , cylinders FROM cars_data GROUP BY cylinders ORDER BY max(accelerate) DESC
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT t2.Model FROM car_names AS t1 JOIN model_list AS t2 ON t1.Model = t2.Model WHERE t1.Make = "Make" GROUP BY t1.Make ORDER BY count(*) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE fullName = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = "American Motor Company"
SELECT T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Weight > 3500 OR T1.Maker = "General Motors"
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" UNION SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.MPG > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT max(Cylinders) FROM cars_data WHERE Make = 'Volvo' AND accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = 'Volvo')
SELECT Cylinders FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND MAKE = "Volvo"
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(alculate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT makeid , fullname FROM car_makers WHERE id NOT IN (SELECT makeid FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data WHERE cylinders > 3))
SELECT makeid , fullname FROM car_makers WHERE horsepower != "min" GROUP BY makeid HAVING count(*) < 4
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight > 3500 EXCEPT SELECT T1.Model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId WHERE T2.FullName = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.MakeId WHERE T2.fullname = "Ford Motor Company"
SELECT T1.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent WHERE T2.CountryName NOT IN (SELECT T1.CountryName FROM cars_data AS T3 JOIN car_names AS T4 ON T3.MakeId = T4.ModelId GROUP BY T4.ModelId HAVING count(*) > 1)
SELECT T1.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.ContId EXCEPT SELECT T3.CountryName FROM cars_data AS T3 JOIN car_makers AS T4 ON T3.MakeId = T4.Id
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Model GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Maker WHERE T2.Model = 'fiat' GROUP BY T1.Maker HAVING count(*) > 3 UNION SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Maker WHERE T2.Model = 'fiat'
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "Ford" INTERSECT SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "BMW"
SELECT T1.State FROM state AS T1 JOIN airlines AS T2 ON T1.State = T2.Abbreviation WHERE T2.Abbreviation = "JetBlue Airways"
SELECT T1.State FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode JOIN airlines AS T3 ON T3.Airline = T2.airline WHERE T3.Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.AirportName , T1.Airway FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.Country = "USA"
SELECT T1.AirwayName , T1.Abbreviation FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM (SELECT airportcode FROM airports INTERSECT SELECT airportcode FROM flights)
SELECT sum(T1.AirportCode) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairportcode
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname LIKE '%UAL%'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'UAL'
SELECT count(*) FROM airlines JOIN airports ON airlines.abbreviation = airports.airportcode WHERE country = "USA"
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.AirportName , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.FlightNo = 16231
SELECT City , CountryAbbrev FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.AirportCode = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.AirportCode = 'APG'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "Terminal ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'ABC' AND T1.destinationairport = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen" AND T2.destairport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN (airlines AS T2 ON T1.airline = T2.airline WHERE T2.Abbreviation = 'JetBlue Airways') ON T1.airline = T2.airline
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.Abbreviation = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abbreviation = "United Airlines" AND T2.destairport = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ASY Airport" AND T1.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.Uid WHERE T2.Abbreviation = 'United' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.UID WHERE T2.airportname = "AHD" AND T3.Abbreviation = "United"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "Aberdeen" JOIN airlines AS T3 ON T3.UIL = T1.airline WHERE T3.Abbreviation = "United"
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN Flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.State ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.AirportCode FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = 'AHD'
SELECT T1.airway FROM airways AS T1 JOIN flights AS T2 ON T1.airway = T2.destairport WHERE T2.destairport = 'AHD'
SELECT DISTINCT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T1.airportname = 'APG' INTERSECT SELECT DISTINCT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T1.airportname = 'CVO'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport JOIN airports AS T3 ON T3.airportcode = T2.sourceairport WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport JOIN airports AS T3 ON T3.airportcode = T3.airportcode WHERE T2.airline = 'CVO'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.airline WHERE T2.destairport = 'CVO' EXCEPT SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.airline WHERE T2.destairport = 'APG'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING count(*) >= 10
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode HAVING count(*) < 200
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING sum(count(*) ) < 200
SELECT T1.FLIGHTNO FROM flights AS T1 JOIN airports AS T2 ON T1.DESTairport = T2.Airportcode WHERE T2.airportname = "United Airlines"
SELECT T1.Airline , T1.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.SourceAirport WHERE T1.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen "
SELECT FlightNo FROM flights WHERE sourceairport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" OR T2.AirportName = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights , SELECT SourceAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , district FROM employee GROUP BY district
SELECT count(*) , district FROM employee GROUP BY district
SELECT T1.city FROM employee AS T1 JOIN town AS T2 ON T1.city = T2.city GROUP BY T2.city HAVING avg(age) > 30
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , district FROM shop GROUP BY district
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.name , T2.district FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id GROUP BY T1.manager_name ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop GROUP BY name ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.is_full_time = 'Yes' ORDER BY T2.bonus DESC LIMIT 1
SELECT T2.Name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.Bonus = (SELECT max(Bonus) FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT T3.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id JOIN evaluation AS T3 ON T1.employee_id = T3.employee_id WHERE T1.is_full_time = 'Y' ORDER BY count(*) DESC LIMIT 1
SELECT T3.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id JOIN evaluation AS T3 ON T1.employee_id = T3.employee_id WHERE T1.is_full_time = 'Y' ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE manager_name NOT IN (SELECT DISTINCT manager_name FROM hiring)
SELECT count(*) , T3.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id JOIN T3 AS evaluation ON T1.employee_id = T3.employee_id WHERE T1.is_full_time = 'Yes' GROUP BY T2.name
SELECT count(*) , T3.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id JOIN evaluation AS T3 ON T1.employee_id = T3.employee_id GROUP BY T2.name
SELECT sum(T2.Bonus) FROM hiring AS T1 JOIN evaluation AS T2 ON T1 = T2.Employee_ID WHERE T1.Start_from > 2020
SELECT sum(T2.Bonus) FROM hiring AS T1 JOIN evaluation AS T2 ON T1 = T2.Employee_ID WHERE T1.year_awarded = 2023
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT district) FROM shop
SELECT count(*) FROM Ref_Template_Types
SELECT count(*) FROM Ref_Papers
SELECT T1.template_id , T1.title , T1.description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT T1.Paragraph_ID , T1.paragraph_text , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%w%"
SELECT t1.paper_id , t1.layout_id , t2.template_details FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Robbin CV"
SELECT t3.document_id , t3.layout_id , t2.document_description FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id JOIN Templates AS t3 ON t1.template_id = t3.template_id WHERE t1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id JOIN Paragraphs AS T3 ON T3.paragraph_id = T2.paragraph_id WHERE T1.paragraph_text LIKE '%text%'
SELECT count(*) FROM Paragraphs AS T1 JOIN Templates AS T2 ON T1.document_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Templates WHERE Template_Type_Code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT count(*) , layout_id FROM Documents GROUP BY layout_id
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id , t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.paragraph_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paragraph_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id JOIN Paragraphs AS T3 ON T2.paragraph_id = T3.paragraph_id WHERE T2.document_name = "text file"
SELECT template_id FROM documents EXCEPT SELECT t1.template_id FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.paragraph_text = 'layout'
SELECT count(*) FROM layouts
SELECT count(*) FROM templates
SELECT layout_id , version_number , layout_type FROM layouts
SELECT T1.template_id , T2.version_number , T3.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code JOIN Templates(T3) ON T1.template_id = T3.template_id GROUP BY T1.template_id
SELECT DISTINCT layout FROM layout
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM templates WHERE template_type_code = "CV"
SELECT edition_number , layout_type FROM Ref_layouts WHERE edition_number > 5
SELECT edition_number , layout_type_name FROM Layouts WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(version_number) , t2.template_type_code FROM Templates AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_code
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT t1.template_type_code FROM templates AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_details = "Data base"
SELECT t3.layout_type_code FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t1.template_id = t3.template_id WHERE t2.paragraph_text = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%BK%"
SELECT t1.document_name FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , layout_type FROM Ref_templates AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY layout_type
SELECT t1.layout_type FROM Paragraphs AS t1 JOIN Templates AS t2 ON t1.document_id = t2.template_id GROUP BY t1.layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM paragraphs AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE t1.paragraph_text = "text" GROUP BY t2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Ref_Template_Types EXCEPT SELECT DISTINCT template_type_code FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.type = "text"
SELECT DISTINCT template_type_code FROM templates EXCEPT SELECT DISTINCT template_type_code FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id JOIN Paragraphs AS T3 ON T1.paragraph_id = T3.paragraph_id
SELECT T1.template_type_description , T2.template_type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT t1.layout_type_description FROM ref_template_types AS t1 JOIN your_table AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_Description = "Book"
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN (SELECT template_type_code FROM templates GROUP BY template_type_code) AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Paragraphs AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.document_id = t3.document_id WHERE t3.document_name = "text file"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id WHERE t4.paragraph_text LIKE "%text file%"
SELECT layout_id FROM Ref_Template_Types WHERE template_type_description = "Presentation"
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM Paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT paragraph_id , paragraph_text FROM Paragraphs WHERE paragraph_text = 'Welcome to NY'
SELECT DISTINCT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = "Customer reviews"
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT T1.paragraph_id , T1.paragraph_text , count(*) FROM Paragraphs AS T1 GROUP BY T1.paragraph_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id , other_details FROM Paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT paragraph_id FROM Paragraphs GROUP BY paragraph_id HAVING count(*) <= 2
SELECT T1.paragraph_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
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
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , count(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Staring_Date) FROM course
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T3.Faculty , T2.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT T3.Faculty , T2.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T3.Course_ID WHERE T3.课程 = 'math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T3.Course_ID = T1.Course_ID WHERE T3.Course = 'Math'
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Course_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Course_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year , Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.museum_id , T2.name , T2.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T2.museum_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T2.Museum_ID , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit GROUP BY visitor_ID
SELECT T2.Total_spent FROM visitor AS T1 JOIN visit AS T2 ON T1.visitor_ID = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T2.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.num_of_ticket > 10000 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM matches
SELECT count(*) FROM players
SELECT count(*) FROM matches WHERE tourney_date != "null"
SELECT count(*) FROM matches WHERE tourney_date = '2023-04-15'
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT loser_age , winner_age FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches WHERE winner_rank != "draw"
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.minutes LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT player_id , first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.state_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.state_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name , T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id WHERE t2.tourney_name = "Australian Open" ORDER BY t2.winner_rank DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY sum(minutes) DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY sum(minutes) DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(T1.ranking_points) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , T2.ranking_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id
SELECT count(*) , state FROM matches GROUP BY state
SELECT count(*) , state FROM players GROUP BY state_code
SELECT T1.abbr FROM states AS T1 JOIN matches AS T2 ON T1.country_code = T2.loser_country GROUP BY T1.abbr ORDER BY count(*) DESC LIMIT 1
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY winner_age LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY winner_age ASC LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" INTERSECT SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "right"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(id) , min(id) FROM death
SELECT avg(injured) FROM death
SELECT T1.id , T1.disposition_of_ship FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.latin_commander = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.tonnage = 225 )
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = 'Line 1' OR line_2 = 'Line 2'
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM COURSES
SELECT course_description FROM Courses WHERE course_name = 'Math'
SELECT DISTINCT T1.course_description FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id JOIN Courses AS T3 ON T2.course_id = T3.course_id WHERE T3.department_id = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port" AND department_name = "Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT count(*) FROM degree_programs WHERE department_id IN (SELECT department_id FROM degree_programs WHERE department_name = 'Engineering')
SELECT section_name , section_description FROM Sections
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.semester_name , T1.student_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_description FROM courses AS T1 JOIN departments AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name LIKE '%computer%'
SELECT DISTINCT T2.department_description FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T2.first_name LIKE "%computer%"
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Double Major' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduate' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN ( SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelor" )
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor’s"
SELECT T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T2.degree_program_id = T1.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id , COUNT(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id EXCEPT SELECT T3.semester_name FROM semesters AS T3 JOIN student_enrolment_Courses AS T4 ON T3.semester_id = T4.semester_id JOIN courses AS T5 ON T4.course_id = T5.course_id
SELECT T1.course_name FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment_courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.course_id HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment_courses AS T3 ON T2.section_id = T3.section_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN degree_programs AS T3 ON T3.degree_program_id = T1.student_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id JOIN students AS T3 ON T3.permanent_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 AND T2.degree_program_id = 'Graduate' ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id EXCEPT SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , count(*) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_first_registered) FROM Students;
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , transcript_id FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT max(T2.transcript_date) FROM transcripts AS T1 JOIN students AS T2 ON T1.transcript_id = T2.transcript_id
SELECT max(date_first_registered) FROM Students
SELECT count(*) , max_id FROM student_enrolment_courses GROUP BY max_id
SELECT max(count(*)), T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_course_id GROUP BY T2.student_course_id ORDER BY count(*) LIMIT 1
SELECT T1.transcript_date , T1.student_id FROM Transcripts AS T1 JOIN Student_Enrolment AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_summary_name = 'Master' INTERSECT SELECT T2.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_summary_name = 'Bachelor'
SELECT T2.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_summary_name = 'Masters' INTERSECT SELECT T2.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT T1.address_id) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T2.department_name FROM students AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id
SELECT * FROM students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T2.country = "Haiti" OR T3.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM tv_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , count(*) FROM tv_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM tv_channel WHERE language = "english"
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM tv_channel GROUP BY Language
SELECT Language , COUNT(*) FROM tv_channel GROUP BY Language
SELECT T2.Channel , T1.Series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT t1.id , t1.series_name FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Series_name = "Sky Radio"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.Series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.episode FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.Content = "A Love of a Lifetime" AND T2.Rating = 18_49_Rating_Share
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank FROM TV_series AS T1 JOIN (SELECT id , Episode FROM TV_series ORDER BY Weekly_Rank DESC LIMIT 1) AS T2 ON T1.episode = T2.episode WHERE T1.episode = "A Love of a Lifetime"
SELECT T2.Channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Series_Name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM tv_channel WHERE Content = "HD TV"
SELECT Package_Option , TV_Channel.id FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Animation" AND t2.write_by = "Todd Casey"
SELECT T1.State FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.PIXEL_aspect_ratio_PAR = "Animated" JOIN tv_series AS T3 ON T2.channel = T3.channel WHERE T3.18_49_Rating_Share = "Great" AND T1.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Todd Casey"
SELECT DISTINCT T1.State FROM country AS T1 JOIN tv_channel AS T2 ON T1.id = T2.Channel WHERE T2.Content != 'Animation' AND T2.directed_by != 'Todd Casey'
SELECT t1.id , t1.Channel FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.id , t1.Channel FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.id WHERE t2.directed_by = "Michael Chang"
SELECT t1.series_name , t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM tv_channel WHERE country = 'United States' GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Channel FROM cartoon EXCEPT SELECT Channel FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_Option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones'
SELECT count(*) FROM people WHERE height > 1.703 AND nationality = "Chinese"
SELECT count(*) FROM people WHERE height > 1.705
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT FINAL_TABLE_MADE , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = "Car"
SELECT avg(Earnings) FROM poker_player WHERE Nationality = "Car Gammer"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 AND T2.Nationality = "Chinese"
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Finish = "Top"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Finish = "Car Game"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT money_rank FROM people WHERE height = (SELECT max(height) FROM people)
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
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
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Best_Finish = "Game")
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Earnings = "Top 10" )
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT contestant_name FROM CONTESTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T2contestant_number , T2contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T2.contestant_name FROM votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T2.area_code_state FROM votes AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.state = T2.state GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T1.state , T1.phone_number FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T3.contestant_number FROM voters AS T3 WHERE T3.contestant_name = 'Tabatha Gehling')
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear > 1950
SELECT name FROM country WHERE independeyear > 1950
SELECT count(DISTINCT governmentform) FROM country
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(t1.SurfaceArea) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Percentage = 100 AND t1.Continent = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Antarctica'
SELECT T2.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code2 = T2.Percentage WHERE T1.name = "Anguilla"
SELECT t1.continent FROM country AS t1 JOIN country AS t2 ON t1.code = t2.code WHERE t1.name = "Anguilla"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" ORDER BY T1.Percentage DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT T1.Region , COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola" GROUP BY T1.Region
SELECT T1.Region , count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola" GROUP BY T1.Region
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(_life_expectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country ORDER BY lifeexpectancy LIMIT 1 AND continent = 'Asia'
SELECT sum(t1.population) , max(t2.gnp) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Region = "Africa" AND T2.GovernmentForm = "Republic"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE name = 'Asia' OR name = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT Population FROM city WHERE District = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE Region = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT T2.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT count(*) FROM countrylanguage WHERE country.code = 'AFG' AND isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Percentage = 100 AND Language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE Percentage = 100 AND Language = "Dutch"
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.State FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" INTERSECT SELECT T1.State FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name , T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Name , T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT T1.continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.Language = "Chinese"
SELECT DISTINCT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING count(*) = 1
SELECT DISTINCT l1.language FROM country AS l1 JOIN countrylanguage AS l2 ON l1.code = l2.countrycode JOIN country AS l3 ON l2.countrycode = l3.code WHERE l3.region = 'Republic' AND l3.govformation = 'Yes' GROUP BY l1.language HAVING count(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "English" GROUP BY T1.name ORDER BY sum(T1.population) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.Name , T1.Population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.code WHERE T1.Continent = "Asia" ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name , T1.Population , T1.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" ORDER BY T1.Population DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE IsOfficial = 1)
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 1)
SELECT sum(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'United Nations' AND T2.isofficial = 1 AND T1.indepyear < 1930
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE independyyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent != 'Asia' INTERSECT SELECT name FROM city WHERE population < (SELECT min(population) FROM city WHERE continent != 'Asia')
SELECT name FROM country WHERE continent != 'Asia' GROUP BY countrycode HAVING population < (SELECT min(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE region = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode EXCEPT SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.Language = "English"
SELECT state FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.NationAbbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode EXCEPT SELECT T1.NationAbbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "English"
SELECT T1.NationCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT T1.Code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "English" EXCEPT SELECT T1.code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "English" AND T1.GovernmentForm != "Republic"
SELECT abbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "North Atlantic" AND T1.GovernmentForm = "Democratie" AND T2.IsOfficial = 0
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.name NOT IN (SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code)
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.Language = "English"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.CountryCode WHERE T3.IsOfficial = 1 AND T2.name = "China" AND T3.Language = "Chinese" AND T2.Continent = "Asia"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" INTERSECT SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT T1.Name , T1.IndepYear , T1.Territory FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Code ORDER BY T2.Population ASC LIMIT 1
SELECT name , independyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) , T1.Name , T1.Capital , T2.Code FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name , T2.Population , T2.HeadOfState FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode HAVING count(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT T1.GovernmentForm , count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Capital GROUP BY T1.GovernmentForm HAVING avg(T1.LiveExpectancy) > 72
SELECT T1.GovernmentForm , count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Capital GROUP BY T1.GovernmentForm HAVING avg(T2.Population) > 72
SELECT avg(lifeexpectancy) , sum(population) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.Continent , sum(T2.Population) , avg(T2.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.Code GROUP BY T1.Continent HAVING avg(T2.LifeExpectancy) < 72
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT sum(t1.population) , avg(t1.territory) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "North America" AND t2.territory > 3000 GROUP BY t2.code
SELECT sum(t1.population) , avg(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "North America" AND t2.population > 3000 GROUP BY t2.code
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.population >= 1600000 AND T2.population <= 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T2.State FROM countrylanguage AS T1 JOIN state AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.nationabbr , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT sum(t1.Percentage) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t1.Language = "Spanish"
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE Language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE Language = "Spanish" GROUP BY countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE YEAR_of_work = (SELECT max(yEAR_of_work) FROM conductor) ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE role = 'Director' GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY age DESC LIMIT 1
SELECT T1.name , T2.major_record_format FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID WHERE T3.Type = "Show"
SELECT T1.name , T2.major_record_format FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T2.orchestra_id = T3.orchestra_id WHERE T3.type = "Show"
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id WHERE t2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT record_company , COUNT(*) FROM orchestra GROUP BY record_company
SELECT T1.name , count(*) FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name
SELECT T1.record_company FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.record_company ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY COUNT(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra != 'none'
SELECT orchestra FROM orchestra WHERE orchestra NOT IN (SELECT orchestra_id FROM performance)
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN show AS T3 ON T2.Performance_ID = T3.Performance_ID WHERE T1.year_of_founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN show AS T3 ON T2.Performance_ID = T3.Performance_ID WHERE T1.year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING count(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE ID = (SELECT id FROM friend WHERE student_id = (SELECT id FROM likes WHERE liked_id = 'Kyle') )
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
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM FRIEND GROUP BY student_id
SELECT count(*) FROM friend
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = (SELECT id FROM friend WHERE student_id = 'Kyle' )
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 40576
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friends
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friends
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id GROUP BY T1.id HAVING count(*) >= 1
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING max(T1.grade) > 5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM Professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinarian'
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinary"
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "health care";
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" OR T1.cell_number > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "Veterinary" GROUP BY T1.owner_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = "veterinarian" EXCEPT SELECT first_name FROM Professionals WHERE role_code = "dog name"
SELECT first_name FROM Professionals WHERE role_code = "veterinarian" EXCEPT SELECT first_name FROM Professionals WHERE role_code = "dog name"
SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T3.gender = "dog"
SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id EXCEPT SELECT T3.professional_id , T3.role_code , T3.email_address FROM Professionals AS T3 JOIN Treatments AS T4 ON T3.professional_id = T4.professional_id JOIN Dogs AS T5 ON T4.dog_id = T5.dog_id
SELECT T2.first_name , T2.last_name , T1.owner_id FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN vets ON T1.professional_id = T2.professional_id JOIN (SELECT professional_id FROM Treatment_Types GROUP BY professional_id HAVING count(*) >= 2) AS T2 ON T2.professional_id = T1.professional_id UNION SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN vets ON T1.professional_id = T2.professional_id JOIN (SELECT professional_id FROM Treatment_Types GROUP BY professional_id HAVING count(*) >= 2) AS T2 ON T2.professional_id = T1.professional_id
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T3.role_code = 'Triage' GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.guardian_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.guardian_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT cost_of_treatment FROM treatments GROUP BY cost_of_treatment ORDER BY sum(cost_of_treatment) LIMIT 1)
SELECT T1.breed_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.breed_name ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = 'M' GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.guardian_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.guardian_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2 AND T2.treatment_type_code = 'Health'
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T3.professional_id = T2.professional_id WHERE T3.date_of_departed > '2021-01-01' AND T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Veterinarian'
SELECT T1.date_of_birth , T2.first_name FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "operating"
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.cost_charge , T3.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.treatment_type_code JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T4.size FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id JOIN Sizes AS T4 ON T1.size_code = T4.size_code WHERE T1.age > 20
SELECT T1.breed_name , T2.name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T2.first_name , T2.last_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = 100
SELECT T1.breed_name , T1.date_of_departed FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.gender = 'dog' AND T2.date_of_departed LIKE '1999%' ORDER BY T2.date_of_departed DESC LIMIT 1
SELECT T1.name , T5.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id JOIN treatment_types AS T4 ON T3.role_code = T4.treatment_type_code JOIN breeds AS T5 ON T5.breed_code = T1.breed_code WHERE T4.treatment_type_code = 'Medical' AND T5.breed_name = 'Rare'
SELECT T2.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T2.name , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical Care'
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" INTERSECT SELECT email_address FROM Professionals WHERE state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'Puppy'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'P'
SELECT count(*) FROM treatments WHERE treatment_type_code = 'Healthcare';
SELECT count(*) FROM treatments WHERE treatment_type_code = "healthcare"
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = 'health' AND D.gender = "P"
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "Puppy"
SELECT T2.role_code , T1.street , T1.city , T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
SELECT role_code , street , city , state FROM PROFESSIONALS WHERE city LIKE "%West%"
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(t1.charge_amount) FROM charges AS t1 JOIN treatment_types AS t2 ON t1.charge_type = t2.charge_type_code WHERE t2.treatment_type_code = 'Health'
SELECT cost_of_treatment FROM treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment LIMIT 1)
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE gender = "P";
SELECT count(*) FROM treatment_types WHERE treatment_type_code = "guardian" EXCEPT SELECT count(*) FROM treatments WHERE dog_id IN ( SELECT dog_id FROM dogs WHERE weight < 100 AND gender = "dog" )
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = "dog" AND T2.breed_code != "Puppy";
SELECT count(*) FROM professionals WHERE role_code != 'treatment'
SELECT count(*) FROM professionals WHERE role_code = 'veterinary' AND professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = 'puppy')
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE gender = 'Puppy'
SELECT avg(age) FROM Dogs WHERE gender = 'dog' AND breed_code = 'pu'
SELECT max(age) FROM Dogs WHERE breed_code = 'Pug'
SELECT age FROM dogs WHERE gender = 'dog' ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_type , sum(charge_amount) FROM CHARGES GROUP BY charge_type
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM PROFESSIONALS WHERE role_code = 'VETERINARIAN'
SELECT email_address , cell_number , home_phone FROM PROFESSIONALS WHERE role_code = 'Veterinarian'
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.age = "dog" AND T2.gender = "pet"
SELECT T2.first_name , T2.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T3.treatment_type_code = T1.treatment_type_code WHERE T1.role_code = 'Veterinary'
SELECT T1.first_name , T1.role_code , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT t1.citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id GROUP BY t1.citizenship ORDER BY count(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(net_wealth_millions) , citizenship FROM singer GROUP BY citizenship
SELECT max(networth) , country FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T3.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN vocalist AS T3 ON T1.Name = T3.Name
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T1.feature_name = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Other_Property_Features WHERE apt_feature_1 = 'Yes' OR apt_feature_2 = 'Yes' OR apt_feature_3 = 'Yes')
