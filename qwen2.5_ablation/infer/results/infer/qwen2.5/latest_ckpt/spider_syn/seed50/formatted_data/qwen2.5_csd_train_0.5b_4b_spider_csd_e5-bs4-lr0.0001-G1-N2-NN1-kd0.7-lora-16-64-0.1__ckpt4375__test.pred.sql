SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT min(song_name) , min(song_release_year) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM stadium WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT min(show_time) FROM show GROUP BY show_time ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT state FROM singer WHERE age > 40 INTERSECT SELECT state FROM singer WHERE age < 30
SELECT name FROM stadium WHERE YEAR != 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.song_name , T3.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id GROUP BY T2.song_name
SELECT T2.theme , T1.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE YEAR = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT t3.name , t3Highest FROM concert AS t1 JOIN singer AS t2 ON t1.singer_id = t2.singer_id JOIN stadium AS t3 ON t1.stadium_id = t3.stadium_id WHERE t1.year = 2014 INTERSECT SELECT t3.name , t3Highest FROM concert AS t1 JOIN singer AS t2 ON t1.singer_id = t2.singer_id JOIN stadium AS t3 ON t1.stadium_id = t3.stadium_id WHERE t1.year = 2015
SELECT t3.name , t3.location FROM concert AS t1 JOIN singer_in_concert AS t2 ON t1.concert_id = t2.concert_id JOIN stadium AS t3 ON t2.stadium_id = t3.stadium_id WHERE t1.year = 2014 INTERSECT SELECT t3.name , t3.location FROM concert AS t1 JOIN singer_in_concert AS t2 ON t1.concert_id = t2.concert_id JOIN stadium AS t3 ON t2.stadium_id = t3.stadium_id WHERE t1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Pets WHERE pet_weight > 10
SELECT count(*) FROM Pets WHERE pet_weight > 10
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(T2.weight) , T1.pettype FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT count(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.StuID = T3.StuID WHERE T3.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F' AND T2.pet_type = "Puppy"
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = "F"
SELECT count(DISTINCT pettype) FROM pets WHERE pettype = 'domestic'
SELECT count(DISTINCT pettype) FROM pets
SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "kitten" OR T3.pettype = "puppy"
SELECT T2.fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = "Kitten" OR T3.pet_type = "Puppy"
SELECT T2.fname , T2.lname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT T2.fname , T2.lname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'Kitten')
SELECT T2.Major , T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.petid NOT IN ( SELECT petid FROM pets WHERE pettype = 'Kitten' )
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT fname , age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Puppy" EXCEPT SELECT fname , age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat"
SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Dog") EXCEPT SELECT fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT t3.sex , t3.weight FROM pets AS t1 JOIN has_pet AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.pet_age = (SELECT min(pet_age) FROM pets)
SELECT count(*) , t2.weight FROM has_pet AS t1 JOIN pets AS t2 ON t1.petid = t2.petid WHERE t1.pet_age > 1
SELECT count(*) , T2.pet_id FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pet_age > 1 GROUP BY T2.pet_id
SELECT avg(T1.age) , max(T1.age) , T2.species FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.species
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT t1.stuid FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.lname = 'Smith'
SELECT t2.petid FROM students AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , T1.stuid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT t1.fname , t1.sex FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid GROUP BY t2.stuid HAVING count(*) > 1
SELECT t1.lname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid JOIN pets AS t3 ON t2.petid = t3.petid WHERE t3.pet_age = 3 AND t1.sex = "Kitten"
SELECT t1.lname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid JOIN pets AS t3 ON t2.petid = t3.petid WHERE t3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet )
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continent_id , T1.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent_id
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id GROUP BY T1.modelid ORDER BY sum(horsepower) LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id WHERE T2.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT DISTINCT T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = 1970
SELECT T1 maker , T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year LIMIT 1
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.year > 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker WHERE T1.year > 1980
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*) , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout'
SELECT max(Accrate) FROM cars_data WHERE make = "Amc" AND model = "Hornet Sportabout"
SELECT count(*) FROM car_makers WHERE Country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryName = "USA"
SELECT count(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8
SELECT maker , model FROM model_list
SELECT T1 maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T2.Id IN ( SELECT T1.Id FROM car_makers AS T1 JOIN country AS T2 ON T1.Country = T2.Country WHERE T1.Maker = T2.CountryName )
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.makeid GROUP BY T1.id HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT country FROM car_makers WHERE country IN (SELECT country FROM countries WHERE continent = 'Europe') GROUP BY country HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Concontinent = "Europe" GROUP BY T1.countryname HAVING count(*) >= 3
SELECT max(T2.Horsepower) , T1.maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.Cylinders = 3
SELECT max(T2.Horsepower) , T1.maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 3 GROUP BY T1.maker
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.id GROUP BY T1.model_id ORDER BY avg(T2.mpg) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id ORDER BY T2.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T2.Edispl) FROM model_list AS T1 JOIN car_names AS T2 ON T1 maker = T2.makeid WHERE T1.model = "Volvo"
SELECT avg(T2.edispl) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE maker = 'VOLVO'
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accrate) , Cylinders FROM cars_data
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.modelid GROUP BY T2.modelid ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = "American Motor Company"
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2 maker WHERE T1.FullName = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN cars_data AS T3 ON T1.id = T3.id WHERE T3.weight > 3500 OR T2.maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT min(cylinders) FROM cars_data WHERE accelerate = (SELECT max(accelerate) FROM cars_data WHERE maker = 'Volvo')
SELECT min(cylinders) , maker FROM model_list WHERE make = "Volvo" GROUP BY maker
SELECT count(*) FROM cars_data WHERE accelerate > ( SELECT max(accelerate) FROM cars_data )
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country > "USA" GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.makeid , T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders != 3
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.cylinders != 4 INTERSECT SELECT id , make FROM car_makers WHERE maker != 'Ford'
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA" AND T2.weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "Germany" AND T2.weight = "Ford Motor Company"
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT model_list.maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2 maker = 'Ford Motor Company'
SELECT country FROM car_makers GROUP BY country HAVING count(*) = 1
SELECT DISTINCT countryname FROM continents EXCEPT SELECT T1.countryname FROM continents AS T1 JOIN car_makers AS T2 ON T1.continentid = T2.country WHERE T2.countryname IN (SELECT maker FROM cars_data)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2Maker.id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE T2.Maker >= 2 INTERSECT SELECT T1.id , T1.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Maker WHERE T2.Horsepower > 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE count(*) > 3 UNION SELECT countryid , countryname FROM car_makers WHERE model = 'fiat'
SELECT id , make FROM car_makers GROUP BY make HAVING count(*) > 3 UNION SELECT T1.id , T1.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.make HAVING count(*) > 3
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airplane WHERE T1.Alightair = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM flights WHERE airline = "Jetblue Airways")
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "JetBlue Airways" AND T2.FlightNo LIKE "%Airline %"
SELECT T1.ShortenedWord FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AnnualRevenueOnly = "Jetblue Airways"
SELECT Airline , ShortenedWord FROM airlines WHERE Country = "USA"
SELECT T2.Weapon , T1.AirwayName FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.CountryAbbrev WHERE T1.Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.country
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode AND T1.flightno LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = "USA"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT city , country FROM airports WHERE airportcode = 'Alton'
SELECT city , countryfrom airports WHERE airportcode = "Alton"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT T2.name FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = "APG"
SELECT count(*) FROM flights WHERE sourceairport = "APG"
SELECT count(*) FROM flights WHERE sourceairport NOT IN ( SELECT destairport FROM flights WHERE terminal = 'ATA' )
SELECT count(*) FROM flights WHERE sourceairport = "ATAO"
SELECT count(*) FROM flights WHERE sourceairport IN ( SELECT destairport FROM airports WHERE countryabbreviation = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport LIKE "Aberdeen%"
SELECT count(*) FROM flights WHERE sourceairport IN ( SELECT destairport FROM airports WHERE countryabbreviation = "UK" AND city = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN ( SELECT destairport FROM airports WHERE countryabbreviation = "UK" AND city = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "JetBlue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline WHERE T1.Alightairline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = "United Airlines" AND T2.country = "USA"
SELECT count(*) FROM flights WHERE Airline = "United Airlines" AND SourceAirport = "ASYY"
SELECT count(*) FROM flights WHERE Airline = "United Airlines" AND SourceAirport = "AHD"
SELECT count(*) FROM flights WHERE Airline = "United Airlines" AND SourceAirport = "AHD"
SELECT count(*) FROM flights WHERE Airline = "United Airlines" AND SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE Airline = "United Airlines" AND DESTairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = "Scotland")
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T2.airports.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airports.airportcode GROUP BY T2.airports.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.sourceairport GROUP BY T1.code ORDER BY count(*) LIMIT 1
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) LIMIT 1
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.uid ORDER BY count(*) DESC LIMIT 1
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airways ORDER BY count(*) DESC LIMIT 1
SELECT T1.ShortenedWord , T1.State FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.State ORDER BY COUNT(*) LIMIT 1
SELECT T2.shortenedword , T1.country FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'Australia' AND T1.destairport = 'AHD'
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.sourceairport = "AHD"
SELECT T2.Wayname FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = "AHD"
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.sourceairport = T2.airports WHERE T1.destairport = T3.aerodromes WHERE T3.APDG = 'APG' INTERSECT SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.sourceairport = T2.airports WHERE T1.destairport = T3.aerodromes WHERE T3.CVO = 'CVO'
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.country = "USA" AND T2.countryabbreviation = "APG" INTERSECT SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.country = "USA" AND T2.countryabbreviation = "CVO"
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'CVO' EXCEPT SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = "CVO" EXCEPT SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = "APG"
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.uid HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT T2.FlighCode FROM airlines AS T1 JOIN flights AS T2 ON T1.UAircraft = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT T2.FlighNo FROM flights AS T1 JOIN flights AS T2 ON T1.sourceairport = T2.destairport WHERE T1.sourceairport = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.CountryAbbrev = "Australia" AND T2.DestAirport != "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen"
SELECT T2.Flighno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = "United Kingdom" AND T1.sourceairport = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.CountryAbbrev = "United Kingdom" AND T1.city = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = "Aberdeen" OR countryabbreviation = "Abilene")
SELECT T1.Name FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport EXCEPT SELECT T1.Name FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2DestAirport
SELECT airportcode FROM airports EXCEPT SELECT sourceairport FROM flights UNION SELECT destairport FROM flights
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , T1.district FROM shop AS T1 JOIN department AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.district
SELECT count(*) , T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_name GROUP BY T1.city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.name , T2.district FROM shop AS T1 JOIN shop.shop_id AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT min(Number_products) , max(Number_products) FROM shop
SELECT min(number_of_products) , max(number_of_products) FROM shop
SELECT name , district , LOCATION FROM shop ORDER BY count(*) DESC
SELECT name , district , number_products FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluating AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluating AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = 'Best seller' ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T2.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT sum(T1.totalpremium) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_id , T1.document_name , T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.document_description LIKE '%w%'
SELECT T1.document_id , T2.template_id , T3.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Paragraphs AS T3 ON T1.document_id = T3.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.paper_id , T2.template_id , T2.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T1.layout_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT DISTINCT T2.layout_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.layout_id
SELECT T1.template_id , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT t1.template_id FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT T1.layout_id , T1.version_number , T2.layout_type FROM Layouts AS T1 JOIN Layout_Types AS T2 ON T1.layout_type_code = T2.layout_type_code
SELECT T1.template_id , T2.version_number , T2.template_type_code FROM Templates AS T1 JOIN Versions AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT layout FROM Layouts
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT T2.version_number , T2.layout_type FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.template_details > "5"
SELECT T2.layout_type , T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT version_number , template_type_code FROM Templates WHERE template_type_code = "Low"
SELECT template_type_code FROM templates WHERE template_details = "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT document_name FROM paragraphs WHERE paragraph_text LIKE "%BK%"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_code , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_type_code
SELECT template_type_code , count(*) FROM Documents GROUP BY template_type_code
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM paragraphs GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Templates EXCEPT SELECT DISTINCT template_type_code FROM Documents
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code NOT IN ( SELECT template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.document_id UNION SELECT template_type_code FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id )
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT T1.template_type_name FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T2.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM Documents WHERE document_description = "Presentation"
SELECT template_id FROM Ref_template_types WHERE template_details = 'Presentation'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM_paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Other_Details FROM PARATIONS WHERE Paragraph_text = "Korea"
SELECT Other_Details FROM PARAGRAPSES WHERE Paragraph_Text LIKE "%Korea%"
SELECT T2.Paragraph_ID , T1.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T1.Paragraph_ID , T2.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN_paragraphs AS T2 ON T1.document_id = T2.document_id WHERE document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT T2.Paper_ID , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.Paper_ID ORDER BY count(*)
SELECT document_id , document_name , count(*) FROM paragraphs GROUP BY document_id
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Parations AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT t1.document_id , t2.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT T1.Paper_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.Paper_ID HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.document_id FROM Documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Name FROM teacher ORDER BY Age DESC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Name , T1.Curriculum FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name ASC
SELECT T2.Name , T1.Courier FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID WHERE T1.Curriculum = "Math"
SELECT Name FROM teacher WHERE Hometown = "Math"
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT avg(T2.Age) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_id WHERE T1.Level_of_membership != "Member" AND T1.Level_of_membership != "Guest"
SELECT Name , Level_of_membership FROM visitor WHERE Level_of_membership > 4 ORDER BY Age ASC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.museum_id , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.Name , T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT avg(total_spent) , max(total_spent) FROM visit
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.Open_Year < 2009 INTERSECT SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.Open_Year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN ( SELECT visitor_id FROM visit WHERE museum_id NOT IN ( SELECT museum_id FROM museum WHERE open_year > 2010 ) )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , last_name FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(losser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM rankings
SELECT avg(T2.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T1.competition_type = 'matches'
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT ranking FROM rankings WHERE tours LIKE 'best'
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT T2.tourney_name FROM rankings AS T1 JOIN plays AS T2 ON T1.player_id = T2.player_id GROUP BY T2.tourney_name HAVING count(*) > 10
SELECT T2.tourney_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.tourney_id HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date LIKE "2013%" INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_date LIKE "2016%"
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM MATCHES WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking = 'WTA Championship' INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking = 'Australian Open'
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T1.ranking_points FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T1.tourney_name = 'Australian Open'
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY sum(T2.minutes) DESC LIMIT 1
SELECT T1.name , T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = (SELECT max(match_num) FROM matches)
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.ranking , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(T1.ranking_points) DESC
SELECT T1.first_name , T1.last_name , SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT count(*) , T1.country_code FROM players AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T1.country_code = T2.country_code GROUP BY T1.country_code
SELECT count(*) , T1.country_code FROM players AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T1.country_code = T2.country_code GROUP BY T1.country_code
SELECT MATCH_NUM FROM rankings GROUP BY MATCH_NUM ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T1.match_num) , T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT T1.ranking , count(*) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_date LIMIT 3
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3
SELECT count(DISTINCT T1.player_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = "WTA Championship"
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = (SELECT max(ranking_points) FROM rankings)
SELECT count(*) , loser_hand FROM matches GROUP BY loser_hand
SELECT count(*) , T1.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.hand
SELECT count(*) FROM ship WHERE name = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(t1.death) , min(t1.death) FROM death AS t1 JOIN ship AS t2 ON t1.caused_by_ship_id = t2.id
SELECT avg(injured) FROM death
SELECT T1.note , T1.killed , T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = "t"
SELECT name , RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT count(*) , T1.id , T1.name FROM battle AS T1 JOIN ship AS t2 ON T1.id = T2.lost_in_battle WHERE t2.ship_type = 'Brig' GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = "Kaloyan" INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = "Baldwin I"
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT id FROM ship WHERE tonnage = 225 )
SELECT t1.name , t1.date FROM battle AS t1 JOIN ship AS t2 ON t1.id = t2.lost_in_battle WHERE t2.name = 'Lettice' INTERSECT SELECT t1.name , t1.date FROM battle AS t1 JOIN ship AS t2 ON t1.id = t2.lost_in_battle WHERE t2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE lost_in_battle = 'English Channel')
SELECT T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.name LIKE '%East%'
SELECT address_id , line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM COURSES WHERE course_name = "Math";
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.department_name , T1.department_id FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM departments AS T1 JOIN student_enrolment AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T1.department_name) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT T1.department_name) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM courses AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE department_name = "Engineering"
SELECT sum(T1.degree_summary_description) FROM Degree_Programs AS T1 JOIN DEPARTMENTASSESASSESSMENTS AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = "Engineering"
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTIONs AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTION_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM SECTION ORDER BY section_name DESC
SELECT section_name FROM SECTION ORDER BY section_name DESC
SELECT T1.course_name , T1.student_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name , T1.course_id , T2.semester_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT description FROM courses WHERE department_name LIKE '%the computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor of Science' AND T2.semester_id = 'Fall' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'' AND T2.semester_id = 'Fall' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T2.first_name , T2.middle_name , T2.last_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T1.degree_summary_name = "Bachelor"
SELECT T3.first_name , T3.middle_name , T3.last_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN students AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id WHERE T1.degree_summary_name = "Bachelors"
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_id , T4.degree_summary_description FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN student_enrolment AS T4 ON T2.student_enrolment_id = T4.student_enrolment_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT course_name FROM courses WHERE course_id NOT IN ( SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T3.last_name FROM addresses AS T3 JOIN student_enrolment AS T4 ON T3.address_id = T4.permident_address_id
SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = 'null' AND T1.state_province_county = 'North Carolina'
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.cell_mobile_number FROM students AS T1 JOIN courses AS T2 ON T1.current_address_id = T2.address_id JOIN transcripts AS T3 ON T1.student_id = T3.student_id WHERE T1.first_name = "Timmothy" AND T1.last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students WHERE student_id = (SELECT student_id FROM student_enrolment ORDER BY date_first_registered LIMIT 1)
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.last_name , T1.middle_name , T1.first_name FROM students AS T1 JOIN courses AS T2 ON T1.current_address_id = T2.address_id JOIN transcript_contents AS T3 ON T1.transcript_id = T3.transcript_id ORDER BY date_first_registered LIMIT 1
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != T1.permanent_address_id
SELECT T1.student_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_first_registered) FROM students
SELECT avg(date_first_registered) FROM students
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1
SELECT date_last_modified FROM students WHERE student_id IS NOT NULL ORDER BY date_last_modified DESC LIMIT 1
SELECT count(*) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.course_id , max(T2.student_id) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN student_enrolment_courses AS T3 ON T1.semester_id = T3.semester_id JOIN courses AS T4 ON T3.course_id = T4.course_id WHERE T4.course_name = "Bachelor" INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN student_enrolment_courses AS T3 ON T1.semester_id = T3.semester_id JOIN courses AS T4 ON T3.course_id = T4.course_id WHERE T4.course_name = "Master"
SELECT T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Course AS T2 ON T1.course_id = T2.course_id WHERE T2.degree_summary_name = 'Master' INTERSECT SELECT T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Course AS T2 ON T1.course_id = T2.course_id WHERE T2.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT T1.city) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY other_student_details DESC
SELECT * FROM Students ORDER BY other_student_details DESC
SELECT section_name FROM SECTION WHERE section_id = "h";
SELECT section_description FROM SECTION WHERE section_name = "h"
SELECT T2.first_name , T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permmanent_address_id WHERE T1.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT title FROM animation ORDER BY title
SELECT title FROM animation ORDER BY title
SELECT DISTINCT T2.animation FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT animation , directed_by FROM cartoon ORDER BY air_date
SELECT T2.title , T2.directed_by FROM cartoon AS T1 JOIN carto著 ON T1.channel = T2.channel ORDER BY T1.original_air_date
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT t2.package_option FROM tv_series AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT LANGUAGE , COUNT(*) FROM TV_channel GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT LANGUAGE , COUNT(*) FROM TV_channel GROUP BY LANGUAGE
SELECT count(*) , LANGUAGE FROM TV_channel GROUP BY LANGUAGE
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM tv_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE t1.series_name = "Sky Radio"
SELECT T3.title FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN tv_series AS T3 ON T2.channel = T3.channel WHERE T3.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT episode FROM TV_series ORDER BY rating
SELECT T1.episode , T2.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T2.rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT T2.Air_Date FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank , sum(T1.Score) FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime" GROUP BY Weekly_Rank
SELECT T1.id , T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT id FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.episode FROM tv_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = 'HD'
SELECT Package_Option , T1.series_name FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.High_definition_TV = 'HD'
SELECT T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT T2.State FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN cartoon AS T3 ON T1.directed_by = T3.directed_by WHERE T3.Written_by = "Todd Casey" AND T1.Content = "animation"
SELECT country FROM TV_channel EXCEPT SELECT T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT DISTINCT state FROM cartoon EXCEPT SELECT T1.state FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T2.series_name , T3.Hight_definition_TV FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T1.channel = T3.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name , T3.Hight_definition_TV FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T1.channel = T3.id WHERE T1.directed_by = "Michael Chang"
SELECT T2.id , T3.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.id , T3.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T1.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE != 'English'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE != 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY channel HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_channel WHERE channel NOT IN ( SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id JOIN cartoon AS T3 ON T1.channel = T3.channel WHERE T3.directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE channel NOT IN ( SELECT T2.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN cartoon AS T3 ON T1.directed_by = T3.directed_by )
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Final_Table_Made , T1.Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT T1.Final_Table_Made , T1.Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT avg(T2.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car Gamer"
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC LIMIT 1
SELECT max(T2.best_finish) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car" AND T1.Earnings < 200000
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 520 AND T1.Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN game_players AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT Name FROM people WHERE Nationality = "Car Gamer"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Tall" ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 AND T1.Nationality = "Car"
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 AND T1.Nationality = "Car"
SELECT T2.Name FROM people AS T1 JOIN car_gamer AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Revenue DESC
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
SELECT Name FROM people WHERE Nationality != "Car Gamer"
SELECT Name FROM people WHERE Nationality != "Car Gamer"
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM Votes
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT max(T2.created) FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T1.state = "CA"
SELECT DISTINCT contestant_name FROM contestants WHERE contestant_name != "Jessie Alloway"
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT t1.contestant_number , t2.contestant_name FROM CONTESTANTS AS t1 JOIN VOTES AS t2 ON t1.contestant_number = t2.contestant_number GROUP BY t1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN ( SELECT contestant_number FROM votes )
SELECT T1.area_number FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_number ORDER BY count(*) DESC LIMIT 1
SELECT T2.set_up_date , T2.state , T2.phone_number FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN votes AS T2 ON T1.state = T2.state AND T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN votes AS T2 ON T1.state = T2.state AND T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE region = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.District = 'Kabul'
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Aruba" AND t2.percentages = (SELECT max(percentages) FROM countrylanguage WHERE countrycode = "Aruba")
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Aruba" AND t2.percentagesummary = "Aruba"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America" AND CountryCode = "BR"
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central'
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE governmentform = 'Republic' AND continent = 'Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'United States'
SELECT avg(GNP) , count(*) FROM country WHERE Continent = "World" AND Population = (SELECT max(Population) FROM country WHERE Continent = "World")
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.codecode = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.codecode = T2.countrycode WHERE T2.language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT T3.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN city AS T3 ON T1.Code = T3.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T3.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN city AS T3 ON T1.Code = T3.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = "Asian" GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Concontinent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN language AS T3 ON T2.Language = T3.Language WHERE T1.GovernmentForm = "Republic" GROUP BY T3.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT sum(population) FROM city WHERE countrycode NOT IN ( SELECT countrycode FROM countrylanguage WHERE language = 'English' )
SELECT count(*) FROM country WHERE code NOT IN ( SELECT countrycode FROM countrylanguage WHERE language = 'English' )
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix" AND T2.IsOfficial = 'Yes'
SELECT T1.LocalName FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN sqlite_sequence AS T3 ON T1.Name = T3.name WHERE T3.seq = (SELECT max(seq) FROM countrysequence) AND T2.Language = "English" AND T1.HeadOfState = "Beatrix"
SELECT sum(T2.percentages) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.indepyear < 1930 GROUP BY T1.code
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > ( SELECT max(surfacearea) FROM country WHERE continent = 'Europe' )
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia') AND continent = 'African'
SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > ( SELECT max(population) FROM country WHERE continent = 'Africa' )
SELECT name FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT stateabbreviation FROM countrylanguage WHERE language != 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT name FROM country WHERE governmentform != 'Republic' AND language != 'English'
SELECT abbreviation FROM country WHERE governmentform != 'Republic' EXCEPT SELECT abbreviation FROM countrylanguage WHERE language = 'English'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'No' AND T2.language != 'English'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = "Not an official language" AND T1.CountryCode = "Europe"
{"sql": "SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = \"Asia\" AND T2.governmentform = \" presidential " UNION SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = \"Asia\" AND T2.governmentform = \" parliamentary " AND T2.language = \"Chinese\""}
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Chinese' AND T2.Language = 'Chinese'
SELECT name , founded_year , continent FROM country ORDER BY population LIMIT 1
SELECT name , founded , continent FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.Name , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 1
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > ( SELECT avg(population) FROM city ) GROUP BY district
SELECT T3.governmentform , sum(T2.population) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode JOIN countrylanguage AS T3 ON T1.code = T3.countrycode GROUP BY T3.governmentform HAVING avg(T1.lifeexpectancy) > 72
SELECT governmentform , sum(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.name , T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY surfacearea DESC LIMIT 5
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.language , T1.countrycode FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT sum(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T1.Type = "Director" ORDER BY T1.Date DESC
SELECT name FROM conductor ORDER BY date_OF becoming_a_director DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Type = "Director" GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work = (SELECT max(YEAR_of_Work) FROM conductor)
SELECT T3.Name , T2.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T3.Name , T2.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T3.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID WHERE T1.Type = "Ensemble" GROUP BY T3.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T3.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID WHERE T1.Type = "Ensemble" AND T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 AND T1.Year_of_Work >= T2.Year_of_Founded
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT T1.Name , COUNT(*) FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY COUNT(*) DESC
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT DISTINCT ensemble FROM performance EXCEPT SELECT DISTINCT ensemble FROM performance
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.Year_of_Founded HAVING COUNT(*) > 1
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle";
SELECT grade FROM Highschooler WHERE name = "Kyle";
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = "Kyle";
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.student_id , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT count(*) , T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.id = T2.student_id AND T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM highschooler WHERE id IN ( SELECT friend_id FROM friend ) INTERSECT SELECT student_id FROM likes
SELECT student_id FROM highschooler WHERE id IN ( SELECT friend_id FROM friend UNION SELECT student_id FROM likes )
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT count(*) , student_id FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T2.id
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) >= 1)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian'
SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health"
SELECT T1.professional_id , T2.first_name , T2.last_name , T2.home_phone FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = "Indiana" UNION SELECT T1.professional_id , T2.first_name , T2.last_name , T2.home_phone FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T2.first_name , T2.last_name , T2.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'Indiana' UNION SELECT T1.professional_id , T2.first_name , T2.last_name , T2.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments GROUP BY dog_id HAVING sum(cost_of_treatment) > 1000)
SELECT T2.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT first_name FROM owners WHERE breed_code = "Dog"
SELECT DISTINCT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT DISTINCT first_name FROM owners WHERE email_address LIKE '%dog%'
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T2.role_code , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT professional_id , role_code , email_address FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS D ON T1.dog_id = T1.dog_id WHERE breed_code = "dog" )
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.professional_id , T2.role_code , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_code = 'Puppy' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM charges AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id WHERE T3.treatment_type_code = 'health' GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN charges AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(t2.charge_amount) LIMIT 1
SELECT t1.treatment_type_description FROM treatments AS t1 JOIN charges AS t2 ON t1.treatment_id = t2.treatment_id GROUP BY t1.treatment_id ORDER BY sum(t2.charge_amount) LIMIT 1
SELECT T2.first_name , T2.last_name , T2.zip_code FROM charges AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id GROUP BY T2.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T2.id , T2.zip_code FROM charges AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T2.id ORDER BY sum(T1.cost_amount) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T2.home_phone FROM charges AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.cell_number FROM professionals AS T1 JOIN t3 AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.treatment_type_code = "Vet"
SELECT T3.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT T1.charge_type , T2.charge_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type_code = T2.charge_type_code
SELECT T1.cost_of_treatment , T3.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.charge_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T2.first_name , T2.last_name , T1.size_code FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T3.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T3.size_code = T2.size_code
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Guardian'
SELECT T3.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = "Rarest" ORDER BY T2.date_of_treatment ASC LIMIT 1
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.weight DESC LIMIT 1
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Virginia'
SELECT T1.first_name , T1.last_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.state = 'Virginia'
SELECT t1.date_arrived , t1.date_departed FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_arrived LIMIT 1
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM owners WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'puppy'
SELECT date_arrived , date_adopted FROM Dogs UNION SELECT date_departed , date_arrived FROM Dogs
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = "Puppies"
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = "healthcare"
SELECT count(DISTINCT T1.first_name , T1.last_name) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "puppy"
SELECT count(DISTINCT T2.first_name , T2.last_name) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'Puppy'
SELECT T2.role , T1.street , T1.city , T1.state FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T2.role_code , T1.street , T1.city , T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNER WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs )
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs )
SELECT sum(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = "health-care"
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'puppy' )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'puppy' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS dog_id ON T1.dog_id = dog_id WHERE dog_breed_code = "puppy")
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = "puppy")
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Yes'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE breed_code = "puppy"
SELECT avg(age) FROM dogs WHERE breed_code = "puppy"
SELECT age FROM dogs WHERE breed_code = 'puppy' ORDER BY date_of_birth DESC LIMIT 1
SELECT max(age) FROM dogs WHERE breed_code = 'puppy'
SELECT charge_type , charge_amount FROM CHarges
SELECT charge_type , charge_amount FROM CHarges
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM professionals
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT DISTINCT breed_type , size_type FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_type , T1.size_type FROM breeds AS T1 JOIN dogs AS t2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T2.first_name , T2.last_name , T3.treatment_type_description FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T2.role_code = "Veterinarian"
SELECT T1.first_name , T3.treatment_type_description FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Million DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , citizenship FROM singer GROUP BY citizenship
SELECT COUNT(*) , T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(DISTINCT T2.Country) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT T2.Title , T3.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN musician AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT T2.Title , T3.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T3.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name , SUM(T1.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT DISTINCT Country FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT DISTINCT Country FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T1.feature_type_code FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Properties WHERE room_count > 1 UNION SELECT property_name FROM Properties WHERE property_type_code = 'House' OR property_type_code = 'Apartment'
