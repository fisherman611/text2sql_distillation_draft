SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , state FROM singer GROUP BY state
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2022 AND T1.capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.Stadium_ID FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T1.theme
SELECT T3.name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id GROUP BY T2.theme
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.stadium_id FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.stadium_id FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.highest = (SELECT highest FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pet_type FROM pets WHERE pet_type = 'Domestic' GROUP BY pet_type
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM Pets WHERE pettype = "Domestic"
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Mammal" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Feline"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten"
SELECT pettype , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , pettype FROM Pets GROUP BY pettype
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.lname = 'Smith'
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T3.pet_type = "Kitten"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" AND T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent , T2.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT T1.contid , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T2.continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.FullName , T2.Id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Id
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T1.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId ORDER BY T1.Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model GROUP BY T1.Maker ORDER BY T2.Year LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model WHERE T1.Year > 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T1.year > 1980
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Id = (SELECT Id FROM car_makers GROUP BY Id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T1.Maker = "Amc Hornet Sportabout (sw)"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T2.Maker = "AMC" AND T2.Model = "Hornet Sportabout (sw)"
SELECT count(*) FROM car_makers WHERE maker = "France"
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T2.Maker , T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id GROUP BY T1.Id HAVING count(*) >= 1
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id GROUP BY T1.Id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , avg(year) FROM cars_data
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "Tesla" AND T2.Continent = "Europe" GROUP BY T2.Continent HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 3 GROUP BY T2.Maker ORDER BY max(Horsepower) DESC LIMIT 1
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY sum(mpg) DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(edispl) FROM cars_data WHERE make = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE Model = "Volvo"
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = (SELECT Make FROM car_names GROUP BY Make ORDER BY COUNT(*) DESC LIMIT 1)
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE FullName = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING COUNT(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.weight > 3500
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN cars_data AS T3 ON T1.Id = T3.Id WHERE T1.Maker = "General Motors" OR T3.Weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT max(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Make = "Volvo"
SELECT count(*) FROM cars_data WHERE make = "Volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = "Volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE id NOT IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY MAX(T1.Horsepower) DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY SUM(T1.Horsepower) DESC LIMIT 1
SELECT T1.MakeId , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) EXCEPT SELECT T1.MakeId , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Cylinders > 3
SELECT T1.id , T1.fullname FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make JOIN cars_data AS T3 ON T2.model = T3.model WHERE T3.cylinders != 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight > 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.make = "Ford"
SELECT countryname FROM countries WHERE continent = (SELECT continent FROM continents EXCEPT SELECT T2.continent FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid GROUP BY T1.id HAVING count(*) = 1)
SELECT countryname FROM countries WHERE continent != (SELECT continent FROM continents WHERE ContId != 1)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.id IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 3) UNION SELECT T3.id , T3.countryname FROM countries AS T3 JOIN car_names AS T4 ON T3.countryid = T4.model WHERE T4.model = 'fiat'
SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id HAVING COUNT(*) > 3 UNION SELECT T1.Id , T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = " Fiat "
SELECT country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.AirportName , T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.country = "USA"
SELECT T1.AirportName , T1.AirportCode FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT count(*) FROM flights WHERE destairport != 'null' AND sourceairport != 'null'
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.Airway FROM Airports AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T2.FlightNo = 'UAL'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportcode WHERE T2.airportname = 'ATTO'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.airportname = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen' AND T2.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abbreviation = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY Airport' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines' AND T2.airportname = 'AHD'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "AHD" AND T2.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.city = 'Aberdeen' AND T3.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.ShortenedWord , T2.StateOfTheAirway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.StateOfTheAirway ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode , T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airportname ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airway FROM Airports AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport JOIN Airports AS T3 ON T3.AirportCode = T2.DestAirport WHERE T3.AirportName = "AHD"
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO'
SELECT T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport WHERE T2.SourceAirport = "APG"
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportcode GROUP BY T1.Airway HAVING count(*) >= 10
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport HAVING count(*) >= 10
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.Airway HAVING count(*) < 200
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Abandoned = 0 AND T2.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE sourceairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.manager_name , T2.district FROM shop AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.manager_name ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop ORDER BY number_products DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'Yes' AND T2.start_from = '1' ORDER BY T1.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.year_awarded = 2023
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%w%"
SELECT t1.document_id , t2.layout_id , t3.document_description FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN documents AS t3 ON t1.document_id = t3.document_id WHERE t1.document_name = "Robbin CV"
SELECT T1.document_id , T1.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM documents WHERE document_name LIKE "%text%"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T1.template_id = T3.template_id WHERE T3.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT template_type_code , template_type_description FROM Ref_Template_Types JOIN Templates ON Templates.template_type_code = Ref_Template_Types.template_type_code JOIN Documentations ON Documentations.document_id = Templates.document_id GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id , t2.template_type_code FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "text file"
SELECT template_id FROM layouts EXCEPT SELECT t1.template_id FROM layouts AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM Layouts
SELECT count(*) FROM Layouts
SELECT layout_id , version_number , layout_type FROM layouts
SELECT template_type_code , version_number , template_type_description FROM templates WHERE date_effective_to > '2023-12-31'
SELECT DISTINCT template_type_description FROM Ref_template_types
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_type_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Layouts WHERE Template_Type_Code = "CV"
SELECT edition_number , layout_type FROM Layouts WHERE edition_number > 5
SELECT edition_number , layout_type_name FROM layouts WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT count(*) , layout_type FROM Layouts GROUP BY layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3)
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN layouts AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code HAVING count(*) < 3
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT layout_type_code FROM layouts WHERE document_name = "Data base"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN documents AS t3 ON t2.template_id = t3.template_id WHERE t3.document_name = "Data base"
SELECT DISTINCT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code
SELECT layout_type FROM Documents GROUP BY layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T1.template_id = T3.template_id WHERE T3.template_type_code = "text" GROUP BY T3.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT layout_type FROM Ref_Template_Types EXCEPT SELECT T1.layout_type FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id WHERE T2.document_name = "text file"
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT t2.template_type_description FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_description = "Text file"
SELECT T1.template_type_description , T2.template_type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT t2.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_code = "AD"
SELECT t1.layout_type_name FROM Ref_Template_Types AS t1 JOIN Template_Type_Code AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.document_id IN (SELECT document_id FROM Documents WHERE document_description LIKE "%text%")
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id WHERE t4.paragraph_text LIKE "%text%"
SELECT layout_id FROM Layouts WHERE template_type_description = "Presentation"
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_description = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T2.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY count(*)
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY count(*)
SELECT count(*) , T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id , document_name FROM documents JOIN paragraphs ON documents.document_id = paragraphs.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM faculty
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.curriculums FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.name , T1.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Faculty , T1.curriculums FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID ORDER BY T2.Faculty
SELECT T2.Faculty , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Faculty
SELECT T2.name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = 'Math'
SELECT Name FROM teacher WHERE Age = 25 AND Hometown = 'New York' AND Grade = 'Math'
SELECT T2.faculty , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.faculty
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership <= 4
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , museum_id FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.museum_id , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum EXCEPT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit WHERE visitor_ID = 'Guest'
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.visitor_id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT T2.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM matches
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.year LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.first_name , T2.last_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T2.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.loser_id ORDER BY T3.minutes LIMIT 1
SELECT avg(T2.ranking) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T2.first_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(ranking_points) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T2.first_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , state FROM players GROUP BY state
SELECT T2.state FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T1.tours) , T2.ranking FROM rankings AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking
SELECT sum(tour) , ranking FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T2.winner_hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.note , T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT id , name FROM ship WHERE ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result != 'lost' AND id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = 225)
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = 'line 1' AND line_2 = 'line 2'
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM COURSES WHERE course_name = "Math"
SELECT DISTINCT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id JOIN courses AS T3 ON T2.course_id = T3.course_id WHERE T3.subject_id = 'Math'
SELECT T1.zip_postcode FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Chelsea" AND T1.department_name = "Course"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T1.department_name , T2.department_id FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT sum(T2.degree_summary_name) FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT sum(T1.degree_summary_name) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT section_name , section_description FROM sections
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1 semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Undergraduate' GROUP BY T1.semester_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_description FROM courses AS T1 JOIN departments AS T2 ON T1.course_id = T2.department_id WHERE T1.course_name LIKE '%computer%'
SELECT T2.department_description FROM courses AS T1 JOIN departments AS T2 ON T1.course_description = T2.department_description WHERE T1.course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_enrolment_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 AND T2.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Double Major' )
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduate' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_description FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN student_enrolment AS T3 ON T2.student_id = T3.student_id
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students WHERE date_left = (SELECT min(date_left) FROM students)
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , T2.section_name FROM Addresses AS T1 JOIN Sections AS T2 ON T1.address_id = T2.section_name GROUP BY T2.section_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) FROM transcripts
SELECT count(*) FROM students WHERE date_left = "null"
SELECT count(*) FROM Students
SELECT max(T2.date_left) FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_enrolment_id = T2.transcript_id WHERE T1.student_id = (SELECT student_id FROM students ORDER BY date_left DESC LIMIT 1)
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.curriculum_enrolment_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.curriculum_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*) , T1.course_id) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM Students AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.semester_name FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T2.semester_name FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T1.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT semester_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Masters' INTERSECT SELECT semester_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.country = "Haiti" AND T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.Language = "Cartoon" AND T1.directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.Language = "Cartoon" AND T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t1.channel , t1.series_name FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle!"
SELECT t1.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT t3.title FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel JOIN tv_series AS t3 ON t2.id = t3.id WHERE t1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY rating DESC LIMIT 3
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Air_Date FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.id = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.id = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT t2.channel FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.episode = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_channel AS t1 JOIN tv_series AS t2 ON t1.id = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = "Todd Casey"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey" AND T2.written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = 'Todd Casey'
SELECT country FROM cartoon EXCEPT SELECT t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by != "Todd Casey"
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT t1.id FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel EXCEPT SELECT t2.package_option FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones')
SELECT count(*) FROM car_game
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Name = "Car Game"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Name = "Car Gamers")
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Nationality = "Chinese")
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Gamers"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Gamers"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T2.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT count(*) , Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Car Game")
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Gamer")
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT T1.state , T2.set_up_time FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM AREA_CODE_STATE WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T2.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyyear > 1950
SELECT name FROM country WHERE independyr > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.District = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE code = 'ANGUILLA'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT language FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM city WHERE district = 'Aruba' )
SELECT language FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM city WHERE name = 'Aruba' )
SELECT T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Brazil"
SELECT T1.Population , T2.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Brazil"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Angola"
SELECT T1.Region , COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Angola" GROUP BY T1.Region
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(T1.Population) , max(T2.GNP) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia"
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "RepUBLIC"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT sum(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = 'English' INTERSECT SELECT count(*) FROM countrylanguage WHERE language = 'Dutch'
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "french"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "english" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "french"
SELECT T1.Name , T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name , T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language = "Chinese"
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" OR T2.language = "dutch"
SELECT DISTINCT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT language FROM countrylanguage WHERE isofficial = 1 GROUP BY language HAVING count(*) = 1 INTERSECT SELECT language FROM countrylanguage WHERE isofficial = 0 GROUP BY language HAVING count(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = "english" GROUP BY t1.name ORDER BY sum(t1.population) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = "English" GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.code WHERE T1.continent = "Asia" ORDER BY T1.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia" ORDER BY T1.population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language != "English")
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language != 'English')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE isofficial = 1 AND countrycode IN (SELECT countrycode FROM country WHERE indepsyear < 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE independyr = 1930 - 1)
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE continent = "African" INTERSECT SELECT name FROM country WHERE continent = "Asia"
SELECT name FROM country WHERE continent = 'Africa' INTERSECT SELECT name FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE continent = 'Africa'
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE continent = 'Africa'
SELECT countrycode FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT state FROM countrylanguage WHERE language != 'english'
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "english"
SELECT T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language != "english"
SELECT T1.LocalName FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "english" AND T1.GovernmentForm != "Republic"
SELECT abbreviation FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english") AND governmentform != "Republic"
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T1.countrycode = T3.countrycode WHERE T2.continent = "Europe" AND T3.isofficial = 0
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.name = "Europe" AND T3.language != "English"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.isofficial = 1 AND T3.language = "Chinese" AND T2.continent = "Asia"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.continent = "Asia" AND T3.language = "Chinese"
SELECT T1.name , T1.indepyear , T1.continent FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.population LIMIT 1
SELECT T1.name , T1.indepyear , T1.continent FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.population LIMIT 1
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT t1.name , t1.population , t1.headofstate FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode ORDER BY t2.population DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) < (SELECT avg(population) FROM city)
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT T1.name , count(*) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING avg(T1.lifeexpectancy) > 72
SELECT governmentform , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , sum(population) , continent FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT sum(T1.Population) , avg(T2.SurfaceArea) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T2.SurfaceArea > 3000
SELECT sum(T1.Population) , avg(T1.SurfaceArea) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T2.SurfaceArea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T2.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance ORDER BY age DESC LIMIT 1)
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.orchestra
SELECT T1.name , T2 Orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Official_ratings_(millions)
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance GROUP BY conductor_id HAVING count(*) > 1)
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT count(*) , T1.Record_company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_company
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(TYPE) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY count(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1 Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM FRIEND GROUP BY student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T2.name , count(*) FROM FRIEND AS T1 JOIN HIGHschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM FRIEND AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = (SELECT id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle'))
SELECT T2.name FROM FRIEND AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 2035933
SELECT count(DISTINCT friend_id) FROM FRIEND WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM FRIEND AS T1 JOIN HIGHCHOOLER AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT student_id FROM FRIENDS INTERSECT SELECT student_id FROM LIKES
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T2.student_id = T3.student_id WHERE T3.liked_id IN (SELECT liked_id FROM likes AS T3 JOIN highschooler AS T4 ON T3.liked_id = T4.id WHERE T4.id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) = 2))
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM professionals WHERE role_code = "veterinarian"
SELECT DISTINCT state FROM owners WHERE role_code = 'guardian' INTERSECT SELECT DISTINCT state FROM owners WHERE role_code = 'veterinary'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(age) FROM Dogs WHERE gender = 'dog' AND dog_id IN (SELECT dog_id FROM treatments WHERE treatment_type_code = "health care" )
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.email_address = T2.zip_code WHERE T2.state = 'INDA' UNION SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.email_address = T2.zip_code WHERE T2.state = 'INDA' OR count(*) > 2
SELECT professional_id , first_name , last_name , cell_number FROM professionals WHERE state = 'Indiana' UNION SELECT professional_id , first_name , last_name , cell_number FROM professionals WHERE count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinary' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE gender = 'dog'
SELECT first_name FROM professionals WHERE role_code = 'veterinary' OR role_code = 'guardian' EXCEPT SELECT T1.first_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.name LIKE '%dog%';
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Medical' AND T2.dog_id = (SELECT dog_id FROM dogs WHERE gender = 'M')
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT professional_id , role_code , first_name FROM professionals WHERE role_code = 'veterinarian' GROUP BY professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM treatments)
SELECT T1.professional_id , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN OWNERS AS T2 ON T1.dog_id = T2.owner_id GROUP BY T1.dog_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE sum(T1.cost_of_treatment) = (SELECT sum(cost_of_treatment) FROM treatments ORDER BY sum(cost_of_treatment) ASC LIMIT 1)
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM treatments)
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.cell_number = T2.owner_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT professional_id , cell_number FROM professionals WHERE role_code = 'Veterinary' GROUP BY cell_number HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Veterinary'
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Medical Care'
SELECT cost_of_treatment , treatment_type_code FROM treatments
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT T1.first_name , T1.last_name , T2.size_description FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name = 'Puppy'
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN DOKES AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'Rare'
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T2.first_name FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Virginia'
SELECT T2.name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical Care'
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.charge_type = 'Health Care'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE role_code = "veterinary" AND state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM OWNERS WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'P'
SELECT date_arrived , date_departed FROM dogs
SELECT count(*) FROM treatments WHERE treatment_type_code = "health care"
SELECT count(*) FROM treatments WHERE treatment_type_code = "health care"
SELECT count(DISTINCT professional_id) FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE gender = 'male' AND age > 10)
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "male" AND D.age >= 3 AND D.name = "Puppy";
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments WHERE treatment_type_code = "Health-care"
SELECT count(*) FROM Treatments WHERE date_of_treatment != "null" AND treatment_type_code != "puppy"
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE age < 100)
SELECT count(*) FROM Professionals WHERE role_code != 'Veterinary'
SELECT count(*) FROM Professionals WHERE role_code = "veterinarian" EXCEPT SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = "male" AND T2.name = "puppy"
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE gender = "P"
SELECT avg(age) FROM Dogs WHERE gender = 'P'
SELECT age FROM dogs WHERE age = (SELECT max(age) FROM dogs)
SELECT age FROM dogs WHERE gender = 'M' AND date_of_birth = (SELECT max(date_of_birth) FROM dogs WHERE gender = 'M')
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM PROFESSIONALS WHERE role_code = 'Veterinary'
SELECT email_address , home_phone , cell_number FROM Professionals WHERE role_code = 'Veterinary'
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code WHERE T2.gender = 'P'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer WHERE Citizenship = "Vocalist"
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Country FROM singer GROUP BY Country
SELECT T2.Citizenship FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer WHERE Citizenship = "MSM" GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(net_workmillions) , citizenship FROM singer GROUP BY citizenship
SELECT country , max(net_worth_millions) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Country FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Country FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T1.feature_name = 'AirCon'
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = 'House' UNION SELECT property_name FROM properties WHERE room_count > 1
