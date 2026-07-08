SELECT count(*) FROM (SELECT DISTINCT t1.name FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id)
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , highest FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT T1.Location , T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , stadium_id FROM concert GROUP BY stadium_id
SELECT t1.name , t2.capacity FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT T2.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT T3.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T2.theme
SELECT T3.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T2.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.singer_ID = T3.singer_ID WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT t1.name , t1.stadium_id FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014 INTERSECT SELECT t1.name , t1.stadium_id FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2015
SELECT t1.name , t1.location FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT t1.name , t1.location FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT weight FROM pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Sex = "F"
SELECT count(*) FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT count(DISTINCT species) FROM pets
SELECT count(DISTINCT species) FROM animals
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Pug"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = "kitten")
SELECT T1.Major , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.Major , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = Pets.PetID
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat")
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = "dog") EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = "cat")
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , pettype FROM pets GROUP BY pettype
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pettype , avg(weight) FROM pets GROUP BY pettype
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT T2.stuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , T1.Continent , T2.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T2.Continent
SELECT count(*) , t1.contid , t1.continent FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.continent GROUP BY t1.continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T2.Maker , T2.Model , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT T1.fullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model JOIN cars_data AS T3 ON T2.Model = T3.MPG ORDER BY T3.Horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.ModelId WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.year = 1970
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.year = 1970
SELECT T2.Maker , T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.year = (SELECT min(YEAR) FROM cars_data)
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.MakeId ORDER BY T1.Year LIMIT 1
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT count(*) , continent FROM car_makers GROUP BY continent
SELECT T2.Conduct , T1.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT t1.fullName FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.countryid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T2.id , T2.Maker , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT accelerate FROM cars_data WHERE make = "amc hornet sportabout" AND model = "sw"
SELECT accelerate FROM cars_data WHERE model = 'Hornet Sportabout' AND make = 'Honda'
SELECT count(*) FROM car_makers WHERE maker = 'French'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'usa'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T2.Maker , T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT T1.FULLNAME , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent != "North Atlantic"
SELECT T1.fullname , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 1
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , avg(year) FROM cars_data
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE CONTinent = "Europe" GROUP BY T2.Continent HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Country = "Europe" GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT max(horsepower) , T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE cylinders = 3
SELECT max(T2.Horsepower) , T1.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY avg(mpg) DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Model = 'volvo'
SELECT avg(edispl) FROM cars_data WHERE make = "volvo"
SELECT accelerate , cylinders FROM cars_data GROUP BY cylinders ORDER BY cylinders DESC LIMIT 1
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT T2.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.make = (SELECT T1.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T1.make ORDER BY count(*) DESC LIMIT 1)
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = "American Motor Company"
SELECT T1.FullName , T2.ModelId FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.ModelId HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.fullName = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = "General Motors" UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.id IN (SELECT T1.id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.weight > 3500)
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(Cylinders) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE Make = "Volvo" AND Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = "Volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Maker , T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T1.Id IN (SELECT T1.Id FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING avg(T1.Horsepower) > 3 )
SELECT makeid , fullname FROM cars_data WHERE cylinders < 4 EXCEPT SELECT T1.maker , T1.fullname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.country WHERE T1.cylinders >= 4
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight > 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = 'Ford'
SELECT countryname FROM cars_data UNION SELECT countryname FROM car_names GROUP BY countryname HAVING count(*) <= 1
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT T2.id , T2.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker HAVING count(*) >= 2 INTERSECT SELECT T2.id , T2.Maker FROM car_makers AS T2 GROUP BY T2.Maker HAVING count(*) >= 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 AND T2.Model >= 3
SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN car_names AS T3 ON T2.model = T3.modelid WHERE T2.Maker = 'fiat' GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN car_names AS T3 ON T2.model = T3.modelid WHERE T2.Maker = 'fiat'
SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Modelid = T2.id GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Modelid = T2.id WHERE T2.Maker = 'Fiat'
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.AirportName , T2.Abbreviation FROM airports AS T1 JOIN airlines AS T2 ON T1.CountryAbbrev = T2.country WHERE T2.countryAbbrev = "USA"
SELECT T2.Airway , T1.Abbr FROM airlines AS T1 JOIN airports AS T2 ON T1.CountryAbbrev = T2.Country WHERE T1.Country = "USA"
SELECT airportname , airportcode FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airplanes AS T1 JOIN airports AS T2 ON T1.airportcode = T2.airportcode
SELECT sum(T1.airway) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T2.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname LIKE '%UAL%'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "UAL"
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'APG'
SELECT count(*) FROM flights WHERE FlightNo LIKE 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN destairport AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.City = 'Aberdeen' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.City = "Ashley" AND T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abbrivation = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airline = 'United Airlines' AND T1.airline = 'United Airlines' AND T1.airportcode = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ASY Airport" AND T1.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'United Airlines' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "United"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" AND T1.airline = "United"
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportName GROUP BY T1.destAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airway , T2.CountryAbbreviation FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.CountryAbbreviation ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.DestAirport = (SELECT T3.DestAirport FROM flights AS T3 GROUP BY T3.DestAirport ORDER BY count(*) ASC LIMIT 1)
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T2.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "AHD"
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "AHD"
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'APG' INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'CVO'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'APG' UNION SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'CVO' EXCEPT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'APG'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Aline = 'CVO' EXCEPT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.Aline = 'APG'
SELECT T1.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T1.airline HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T2.destairport HAVING count(*) >= 10
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline HAVING count(*) < 200
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport HAVING count(*) < 200
SELECT T1.Aline , T1.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T1.Aline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE DESTAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.flighted FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM hiring
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , district FROM evaluation GROUP BY district
SELECT count(*) , district FROM employee GROUP BY district
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , district FROM shop GROUP BY district
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(Number_products) , max(Number_products) FROM shop
SELECT name , district FROM shop GROUP BY name , district ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.is_full_time = 'Y' ORDER BY T1.bonus DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT Name FROM employee EXCEPT SELECT T2.Name FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T2.bonus) FROM evaluation AS T1 JOIN (SELECT bonus FROM evaluation GROUP BY bonus) AS T2 ON T1.bonus = T2.bonus
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T1.Year_awarded >= 2015
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM documents
SELECT count(*) FROM documents
SELECT T1.template_id , T1.template_details , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT T1.template_id , T1.document_name , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_name , layout_id FROM documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T1.layout_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_id , T1.layout_id , T3.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T1.template_id = T3.template_id WHERE T3.template_type_code = "Template" AND T1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM Documents WHERE document_type = "text"
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T2.template_id = T3.template_id WHERE T3.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_Template_Types AS Ref_Typ ON T2.template_type_code = Ref_Typ.template_type_code WHERE Ref_Typ.template_type_description = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT count(*) , layout_id FROM Documents GROUP BY layout_id
SELECT T1.id , T1.type FROM layout AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_id FROM documents EXCEPT SELECT document_id FROM paragraphs
SELECT count(*) FROM Ref_Template_types
SELECT count(*) FROM templates
SELECT layout_id , VERSION_NUMBER , layout_type FROM layouts
SELECT T1.Template_ID , T1.version_number , T2.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT layout_type FROM layout
SELECT DISTINCT template_type_description FROM Ref_template_types
SELECT document_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT T1.template_id FROM templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Layout" AND T2.template_type_code = "PP" OR T2.template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description = "CV"
SELECT count(*) FROM Documents WHERE document_type = "CV"
SELECT edition_number , layout_type FROM Ref_Template_Types WHERE edition_number > 5
SELECT T1.edition_number , T1.layout_type_name FROM Layouts AS T1 JOIN Ref_Template_Types AS T2 ON T1.layout_type_code = T2.layout_type_code WHERE T1.edition_number > 5
SELECT layout_type_code , count(*) FROM Ref_Template_types GROUP BY layout_type_code
SELECT layout_type , count(*) FROM Ref_Template_types GROUP BY layout_type
SELECT layout_type_code FROM layouts GROUP BY layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.layout_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT layout_type FROM Ref_layouts GROUP BY layout_type HAVING count(*) < 3
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.layout_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(version_number) , min(template_type_code) FROM Templates
SELECT min(version_number) , T2.template_type_code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT layout_type_code FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.paragraph_id = T2.paragraph_id WHERE T1.document_name = "Data base"
SELECT t1.template_type_code FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.document_name = "Data base"
SELECT DISTINCT t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.paragraph_text LIKE '%BK%'
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , layout_type FROM Documents GROUP BY layout_type
SELECT layout_type FROM Paragraphs GROUP BY layout_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.document_name = "text"
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT T2.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number = 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.template_type_code = T2.template_type_code EXCEPT SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.paragraph_text = "text"
SELECT T1.template_type_description , T2.paragraph_text FROM Ref_template_types AS T1 JOIN paragraphs AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T2.template_type_description , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.layout_type_name FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name = "text_file_paragraphs_.txt"
SELECT T1.layout_id FROM layout_template AS T1 JOIN ref_layout_type_template AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.description = "Presentation"
SELECT T1.template_id FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT count(*) , T1.template_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id HAVING count(*) >= 2
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id , t1.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT age , Hometown FROM teacher
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
SELECT T2.Hometown FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.name , T1.grade FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Name , T3.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.grade = "Math"
SELECT name FROM teacher WHERE age = 35 AND grade = 'Math'
SELECT T3.Name , COUNT(*) FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID GROUP BY T3.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) >= 2
SELECT T2.id , T2.name , T2.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_ID ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T2.Museum_ID , T1.Name FROM visitor AS T1 JOIN museum AS T2 ON T1.ID = T2.Num_of_Staff JOIN visit AS T3 ON T3.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT T1.museum_id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 'Tourist' )
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2011 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year > 2009
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id >= (SELECT open_year FROM museum WHERE open_year > 2010 ))
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT loser_age , winner_age FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT max(loser_rank) FROM matches
SELECT ranking FROM matches WHERE loser_hand = 'loser' ORDER BY loser_rank LIMIT 1
SELECT count(DISTINCT state_code) FROM participants
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.tourney_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'yes' ORDER BY birth_date
SELECT T2.first_name , T2.last_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T3.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN players AS T3 ON T3.player_id = T1.winner_id GROUP BY T3.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T1.winner_rank_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id GROUP BY T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T2.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T1.player_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.loser_id WHERE T3.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY sum(T1.minutes) DESC LIMIT 1;
SELECT T2.winner_name , T2.loser_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T2.first_name , T2.last_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.ranking_points , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T2.first_name
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , sum(tours) FROM rankings GROUP BY ranking
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.looser_age ASC LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.looser_age ASC LIMIT 3
SELECT count(DISTINCT T1.winner_hand) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_date = "WTA Championships" AND T1.loser_hand = "L"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_date LIKE "%WTA Championships%"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = (SELECT max(T2.ranking_points) FROM rankings AS T2 WHERE T2.ranking_points = T3.ranking_points GROUP BY T3.player_id)
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.killed , T2.injured FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T2.bulger_commander = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT t1.id , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t1.id ORDER BY sum(t2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander < 'Kaloyan' AND latin_commander > 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result = 'not lost' EXCEPT SELECT count(*) FROM ship WHERE tonnage = 225
SELECT T1.name , T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id = T2.id WHERE T1.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T2.id = T1.id WHERE T1.name = 'HMS Atalanta'
SELECT T1.name , T1.result , T2.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location != "English Channel"
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id , line_1 , line_2 FROM addresses WHERE line_1 = 'include' AND line_2 = 'include'
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM COURSES WHERE course_name = 'Math'
SELECT T1.course_description FROM Courses AS T1 JOIN Transcripts AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port" AND department_name = "Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.department_name , T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT sum(T2.degree_summary_name) FROM Degree_Programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT sum(T2.degree_summary) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_description FROM courses AS T1 JOIN departments AS T2 ON T1.department_name = T2.department_name WHERE T1.course_name LIKE "%computer%"
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name LIKE "%computer%"
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.semester_id = 1 GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , T1.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 1 AND T3.semester_name = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = 'Bachelor'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor's"
SELECT T1.degree_program_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.department_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 AND T2.degree_program_id = 3 GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id EXCEPT SELECT T2.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Transcript_Contents AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM transcripts AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_course_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Graduate" ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN students AS T3 ON T3.permanent_address_id = T1.address_id WHERE T1.line_1 != T2.line_1 AND T1.line_2 != T2.line_2 AND T1.line_3 != T2.line_3
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id EXCEPT SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT T1.address_id , T2.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT average(date_left) FROM Students
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered , first_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT max(date_left) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id
SELECT T1.course_id , count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM Students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id WHERE T2.transcript_date = (SELECT min(transcript_date) FROM transcripts)
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Transcript_Contents AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT T3.student_id FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id WHERE T3.first_name = "Master" INTERSECT SELECT T3.student_id FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id WHERE T3.first_name = "Bachelor")
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT T3.student_id FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id WHERE T3.current_address_id = 'Masters' INTERSECT SELECT T3.student_id FROM Students AS T3 JOIN Student_Enrolment AS T4 ON T3.student_id = T4.student_id WHERE T3.current_address_id = 'Bachelors')
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY date_left DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" AND T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.cell_mobile_number = 09700166582 WHERE T2.country = "Haiti"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , count(*) FROM tv_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM tv_channel GROUP BY Language
SELECT count(*) , Language FROM tv_channel GROUP BY Language
SELECT t1.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.id = t2.id WHERE t1.content = "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM cartoon AS t1 JOIN tv_series AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT tv_series.air_date FROM tv_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.air_date FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.episode = T2.episode WHERE T2.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT t1.Weekly_Rank FROM TV_series AS t1 JOIN cartoon AS t2 ON t1.episode = t2.id WHERE t2.title = "A Love of a Lifetime"
SELECT T2.Channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t1.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , COUNT(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Todd Casey"
SELECT DISTINCT title FROM cartoon WHERE directed_by != "Toby" AND written_by != "Casey"
SELECT t1.channel , t2.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Ben Jones" INTERSECT SELECT t1.channel , t2.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Michael Chang"
SELECT t1.id , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.id , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM tv_channel WHERE Language != 'English'
SELECT id FROM tv_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT id FROM tv_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel EXCEPT SELECT tv_channel.package_option FROM tv_channel JOIN cartoon ON tv_channel.id = cartoon.channel WHERE directed_by = "Ben Jones"
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones')
SELECT count(*) FROM car_game
SELECT count(*) FROM car_gamers
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Final_Table_Made , T2.best_finish FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id
SELECT T2.Final_Table_Made , T2.best_finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Car" )
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Chinese")
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(T1.Final_Table_Made) FROM poker_player WHERE T1.Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Chinese"
SELECT T2.Name FROM people AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Chinese"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
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
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Poker" )
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Gamer")
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT contestant_name FROM CONTESTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state , T1.phone_number , T1.created FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T2.state FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T2.state FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyyear > 1950
SELECT name FROM country WHERE independYear > 1950
SELECT count(DISTINCT country) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(t1.SurfaceArea) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Continent = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT T2.Continent FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Anguilla"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.capital == T2.capital WHERE T2.name == "Kabul"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.capitol = T2.id WHERE T2.name = "Kabul"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT t1.population , t1.lifeexpectancy FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code WHERE t2.countrycode = "Brazil"
SELECT T2.Population , T2.lifeexpectancy FROM country AS T1 JOIN country AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Brazil"
SELECT T2.Region , T1.Population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Angola"
SELECT T1.Region , T2.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(people) , region FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE region = 'Republic' AND continent = 'Africa'
SELECT avg(T2.lifeexpectancy) FROM country AS T1 JOIN country AS T2 ON T1.code = T2.region WHERE T1.continent = "Africa" AND T1.region = "republic"
SELECT sum(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , sum(population) FROM country WHERE governmentform = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE Region = 'North America'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT sum(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE country.code = "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE country.code = 'AFG' AND isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country ON T1.CountryCode = T2.CountryCode JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = "Chinese"
SELECT T1.region FROM country WHERE T1.region = "United Kingdom" UNION SELECT T1.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE IsOfficial = 1 OR T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.IsOfficial = 0
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING count(*) = 1
SELECT DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.Language = "English" GROUP BY t1.countrycode ORDER BY sum(t1.population) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.id = t2.capital WHERE t1.population = (SELECT max(population) FROM city) AND t2.name = "English"
SELECT t1.name , t1.population , t1.lifeexpectancy FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = "Asia" ORDER BY t1.SurfaceArea DESC LIMIT 1
SELECT t1.name , count(*) , t1.lifeexpectancy FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = "Asia" GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.IsOfficial != 1
SELECT mean (lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 0)
SELECT sum(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name NOT IN (SELECT countrycode FROM countrylanguage WHERE language != "english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Capital = "Beatrix"
SELECT sum(t1.isofficial) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.year < 1930
SELECT sum(DISTINCT isofficial) FROM countrylanguage WHERE country.code IN (SELECT countrycode FROM countrylanguage WHERE country.code < 1930 GROUP BY countrycode HAVING sum(DISTINCT isofficial) >= 100)
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE continent != 'Asia' AND population < (SELECT max(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent != 'Asia' AND population < (SELECT max(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.State FROM countrystate AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "english"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode EXCEPT SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "english"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "english" AND T2.GovernmentForm != "Republic"
SELECT abbreviation FROM country WHERE countrycode NOT IN (SELECT countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 1)
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.IsOfficial = 0 AND T2.Name = "Europe"
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.id = T2.region WHERE T1.countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1 AND language != "english") UNION SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.id = T2.region WHERE T1.countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1 AND language != "english")
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T1.continent = "Asia" AND T2.language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.id = T2.capital WHERE T2.continent = "Asia" AND T2.LocalName = "Chinese"
SELECT T1.name , T1.indepyear , T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.population LIMIT 1
SELECT name , independyear , territory FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) , T1.name , T1.capital FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT t1.name , t1.population , t1.HeadOfState FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code ORDER BY t2.population DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode HAVING count(*) >= 3
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform , count(*) FROM country WHERE gnp_old > 72 GROUP BY governmentform
SELECT governmentform , sum(population) FROM country WHERE gnpold > 72 GROUP BY governmentform
SELECT avg(_life expectancy) , count(*) FROM country WHERE continent != "Africa" AND avg(_life expectancy) < 72
SELECT T1.Continent , sum(T2.Population) , avg(T2.lifeexpectancy) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent HAVING avg(T2.lifeexpectancy) < 72
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT T2.Name FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT sum(T1.population) , avg(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "North America" AND T1.SurfaceArea > 3000
SELECT sum(t1.population) , avg(t1.region) FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode WHERE t1.Continent = "North America" AND t1.region > 3000 GROUP BY t1.region
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Region ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish" AND IsOfficial = 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor WHERE conductor_id = 100 ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance GROUP BY conductor_id ORDER BY age DESC LIMIT 1)
SELECT name FROM conductor ORDER BY age DESC LIMIT 1
SELECT T2.Name , T1.Orchestra_ID FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Performance_ID = T3.Performance_ID WHERE T3.type = "Show"
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id JOIN orchestra AS T3 ON T2.orchestra_id = T3.orchestra_id GROUP BY T3.orchestra_id HAVING count(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_ID = T2.conductor_ID GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY count(*) DESC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id EXCEPT SELECT T3.name FROM conductor AS T3 JOIN performance AS T4 ON T3.performance_id = T4.performance_id
SELECT orchestra FROM orchestra WHERE orchestra != (SELECT T1.orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T1.type != "show")
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = 'CD' OR major_record_format = 'DVD'
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
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
SELECT T1.id , count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.id
SELECT count(DISTINCT T2.student_id) FROM FRIENDS AS T1 JOIN HIGHschooler AS T2 ON T1.student_id = T2.id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 553
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT DISTINCT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.friend_id NOT NULL
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.friend_id != "null"
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.friend_id IN (SELECT T4.friend_id FROM highschooler AS T4 JOIN likes AS T5 ON T4.id = T5.student_id GROUP BY T5.student_id HAVING count(*) > 1)
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT count(*) , T1.name FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(*) FROM likes WHERE liked_id IN (SELECT id FROM friend WHERE student_id = 53484)
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT state FROM Professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinary'
SELECT state FROM owners WHERE first_name = 'guardian' INTERSECT SELECT state FROM owners WHERE first_name = 'veterinary'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical"
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "healthcare"
SELECT T1.cell_number , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'IN' OR count(*) > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM PROFESSIONALS WHERE role_code = "guardian" OR role_code = "veterinarian" EXCEPT SELECT first_name FROM dogs WHERE name = "dog name"
SELECT first_name FROM Professionals WHERE role_code = "veterinary" EXCEPT SELECT first_name FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT first_name FROM Professionals WHERE role_code = "dog guardian"
SELECT T1.role_code , T1.first_name , T1.email_address FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code JOIN Dogs AS T3 ON T3.professional_id = T2.professional_id WHERE T3.gender = 'dog'
SELECT professional_id , role_code , email_address FROM Professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name , T1.professional_id FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id ORDER BY T3.cost_of_treatment DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charge_type AS T2 ON T1.cost_of_treatment = T2.charge_type WHERE T2.charge_type = "Healthcare" GROUP BY T1.cost_of_treatment ORDER BY sum(T1.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.cost_of_treatment = T2.cost_of_treatment GROUP BY T1.cost_of_treatment ORDER BY sum(T1.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Treatment_Types AS T2 ON T1.owner_id = T2.dog_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN TREATMENTS AS T2 ON T1.owner_id = T2.dog_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.cell_number , T1.owner_id FROM Professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.id , T1.cell_number FROM Professionals AS T1 JOIN owners AS T2 ON T1.cell_number = T2.home_phone GROUP BY T1.cell_number HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code JOIN Dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatment_Types)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T3.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatment_Types)
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Veterinarian'
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Veterinary'
SELECT cost_of_treatment , treatment_type_code FROM treatments
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T4.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id JOIN professionals AS T4 ON T3.professional_id = T4.professional_id WHERE T3.treatment_type_code = 'Puppies'
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = 'Rare' ORDER BY T2.date_of_treatment LIMIT 1
SELECT T1.name , T3.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.gender = 'M' AND T3.role_code = 'T' AND T2.date_of_treatment = (SELECT min(date_of_treatment) FROM Treatments WHERE T1.gender = 'M')
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T2.name , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Health Care"
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs
SELECT date_arrived , date_departed FROM Dogs
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "Puppy care"
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "healthcare"
SELECT count(*) FROM Professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T2.treatment_type_description = "health care to puppies"
SELECT count(*) FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T3.gender = "Pup" AND T2.treatment_type_description = "Breed Adopter"
SELECT T2.role_code , T1.street , T1.city , T1.state FROM Professionals AS T1 JOIN owners AS T2 ON T1.street = T2.street WHERE T2.city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT T1.first_name , T1.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM treatments WHERE treatment_type_code = "Puppy Care"
SELECT count(*) FROM owners WHERE id NOT IN ( SELECT T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_departed = '01/01/2023' )
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM professionals WHERE role_code != 'treatment professional'
SELECT count(*) FROM Professionals WHERE role_code != 'Veterinarian'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE gender = "Puppy"
SELECT avg(age) FROM dogs WHERE gender = 'Puppy'
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges
SELECT charge_type , charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM PROFESSIONALS WHERE role_code = "Veterinarian"
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT breed_name , size_description FROM Dogs
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code WHERE T2.age = 2 AND T2.date_of_birth = '2016-05-13'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code
SELECT T1.first_name , T1.role_code , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.role_code = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = '1948' OR Birth_Year = '1949'
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Title , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM other_available_features AS T1 JOIN ref_feature_types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T1.feature_name = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = 'apartment' AND room_count > 1 UNION SELECT property_name FROM properties WHERE property_type_code = 'house'
