SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_release_year , name FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , COUNT(*) FROM singer GROUP BY country
SELECT count(*) , STATE FROM singer GROUP BY STATE
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT count(*) , T1.stadium_id FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.stadium_id
SELECT T2.name , T1.stadium_id , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T1.theme
SELECT T2.name , T3.theme , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T3.concert_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
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
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets WHERE pettype = 'domestic'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = "puppy"
SELECT count(DISTINCT pettype) FROM pets WHERE pettype = "domestic"
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kittens" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppies"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT fname , lname FROM Student WHERE StuID IN (SELECT T2.stuid FROM Has_Pet AS T2 JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten")
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , pettype FROM Pets GROUP BY pettype
SELECT pet_type , avg(pet_age) , max(pet_age) FROM PETS GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_age , pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age > 2
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Lname = 'Smith'
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" AND T3.pet_age = 3
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "Kitten" AND T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , T1.Continent , T2.ContId FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T2.Continent
SELECT contid , continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T2.maker , COUNT(*) , T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T2.maker
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.model IN (SELECT T3.model FROM cars_data AS T3 WHERE T3.year = 1970)
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T2.model = T3.id WHERE T3.year = 1970
SELECT T1.Maker , T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T3.Model = T4.Model ORDER BY T4.Year LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT count(*) , T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country ID GROUP BY T1.Continent
SELECT count(*) , continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY continent
SELECT T1.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent JOIN car_makers AS T3 ON T2.CountryId = T3.CountryId GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT t1.continent FROM continents AS t1 JOIN countries AS t2 ON t1.continent = t2.continent JOIN car_makers AS t3 ON t2.countryid = t3.countryid GROUP BY t1.continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T2.Maker , T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Maker
SELECT T3.Accelerate FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T2.Model = T3.Model WHERE T1.FullName = "Amc Hornet Sportabout (sw)"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "AMC Hornet Sportabout (sw)"
SELECT count(*) FROM car_makers WHERE maker = 'France'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T3.model = T2.model WHERE T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT maker , model FROM model_list
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 1
SELECT T1.Continent , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null" GROUP BY T1.CountryName HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Continent FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "Ford" AND T2.Continent = "Europe" GROUP BY T2.Continent HAVING COUNT(*) >= 3
SELECT t1.continent FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.continent JOIN car_makers AS t3 ON t2.countryid = t3.countryid GROUP BY t1.continent HAVING count(*) >= 3
SELECT max(Horsepower) , T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE Cylinders = 3
SELECT max(horsepower) , T2.maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE model = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) FROM cars_data BY cylinders
SELECT t2.maker FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.model GROUP BY t2.maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_names GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullName = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = "American Motor Company"
SELECT T1.FullName , T2.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE COUNT(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.weight > 3500 AND T1.maker = "General Motors"
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker JOIN car_names AS T3 ON T3.MakeId = T1.Id WHERE T3.Machine = "General Motors" OR T3.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(accelerate) , cylinders FROM cars_data WHERE model = 'volvo'
SELECT count(*) FROM cars_data WHERE model = "volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE model = "volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker >= 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM car_names WHERE make = "Ford" AND cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM car_names WHERE make = "4 Cylinder" GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT T1.MakeId , T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T2.Model IN (SELECT T3.Model FROM cars_data AS T3 JOIN car_names AS T4 ON T3.Id = T4.Model WHERE T3.Cylinders > (SELECT min(Cylinders) FROM cars_data)) EXCEPT SELECT T1.MakeId , T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T2.Model > 3
SELECT makeid , fullname FROM car_names WHERE model NOT IN (SELECT model FROM cars_data WHERE horsepower >= 4 AND cylinders <= 4)
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 UNION SELECT max(MPG) FROM cars_data WHERE YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 UNION SELECT max(MPG) FROM cars_data WHERE YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T1.maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = "Ford"
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.country WHERE T2.maker = 'Automobile'
SELECT countryname FROM countries WHERE continent NOT IN (SELECT continent FROM continents WHERE ContId NOT IN (SELECT countryid FROM car_makers))
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE COUNT(*) > 3 UNION SELECT T3.Model , T3.Maker FROM car_names AS T3 JOIN model_list AS T4 ON T3.Model = T4.Model WHERE T4.Maker = 'Fiat'
SELECT T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid JOIN car_names AS T3 ON T2.model = T3.model WHERE T2.model = 'Car' GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid JOIN car_names AS T3 ON T2.model = T3.model WHERE T3.make = ' Fiat'
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = "Jetblue Airways"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.AirportName , T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.Country = "USA"
SELECT T1.AirportName , T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T2.FlightNo) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T2.FlightNo LIKE '%UAL%'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T2.Airline = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.City , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T2.FlightNo = 13878
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT T2.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode WHERE T1.city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Terminal ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen' AND T1.airportname = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Aberdeen' AND T1.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY" AND T1.Airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines' AND T2.airportname = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "United"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen' AND T2.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T1.Airline = 'United Airlines'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode , T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode , T2.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airway FROM Airports AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airway FROM Airports AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.airportname = 'AHD'
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN flights AS T3 ON T1.airline = T3.airline WHERE T2.airportname = 'APG' INTERSECT SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN flights AS T3 ON T1.airline = T3.airline WHERE T2.airportname = 'CVO'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN Airports AS T3 ON T1.Airway = T3.AirportCode WHERE T3.CountryAbbrev = "APG" INTERSECT SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN Airports AS T3 ON T1.Airway = T3.AirportCode WHERE T3.CountryAbbrev = "CVO"
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'CVO' EXCEPT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'APG'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportCode GROUP BY T1.airline HAVING count(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline HAVING sum(T1.FlightNo) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T3.Airline = T1.Airline WHERE T3.Abbreviation = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.AnnualTicketPrice = "United"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen "
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" OR T2.AirportName = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT srcairport FROM flights)
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
SELECT manager_name , district FROM shop GROUP BY manager_name ORDER BY sum(number_products) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district , city FROM shop GROUP BY name ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM documents
SELECT count(*) FROM templates
SELECT T1.template_id , T2.document_name , T3.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T1.template_id = T3.template_id
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT document_id , layout_id , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT T1.template_id , T1.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM Documents
SELECT count(*) FROM Paragraphs AS T1 JOIN Templates AS T2 ON T1.document_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT T1.template_id , T1.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id
SELECT template_id FROM layouts EXCEPT SELECT DISTINCT t1.template_id FROM documents AS t1 JOIN paragraphs AS t2 ON t1.template_id = t2.document_id
SELECT count(*) FROM Ref_Template_Types
SELECT count(*) FROM Layouts
SELECT layout_id , VERSION_NUMBER , layout_type FROM Templates
SELECT template_id , version_number , template_type_description FROM Templates
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT DISTINCT template_type_description FROM Ref_template_types
SELECT template_id FROM_templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT T1.version_number , T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT T1.version_number , T2.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT count(*) , layout FROM Templates GROUP BY layout
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_description FROM Ref_Template_Types GROUP BY template_type_description HAVING count(*) < 3
SELECT template_type_description FROM Ref_template_types GROUP BY template_type_description HAVING count(*) < 3
SELECT min(version_number) , min(template_type_code) FROM Templates
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT layout_type_code FROM Templates WHERE template_details = "Data base"
SELECT T1.layout_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name = "Data base"
SELECT DISTINCT t1.document_name FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code
SELECT T1.layout_type FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documentations AS T3 ON T2.document_id = T3.document_id GROUP BY T1.layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates WHERE template_details LIKE "%text%" GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = 'text_file'
SELECT T1.layout_type_name , T2.template_details FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T2.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "AD"
SELECT T1.layout_type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documentations AS t3 ON t2.template_id = t3.template_id
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN document_templates AS T3 ON T2.template_id = T3.template_id JOIN paragraphs AS T4 ON T3.template_id = T4.document_id WHERE T4.paragraph_text LIKE "%text%"
SELECT layout_id FROM templates WHERE template_type_code = "Presentation"
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY count(*)
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT count(*) , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.document_name
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT template_id FROM paragraphs GROUP BY template_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
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
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name , T1.Course_ID , T1.Curriculum FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T3.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T2.Name , T1.Course_ID FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course_Region = "Math"
SELECT Name FROM teacher WHERE Age = 30 AND Course_ID = (SELECT Course_ID FROM course WHERE Course = 'Math')
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP <= 4
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id ORDER BY T1.total_spent DESC LIMIT 1
SELECT T2.Museum_ID , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.num_of_ticket) , max(T2.num_of_ticket) FROM visit AS T1 JOIN visit AS T2 ON T1.visitor_ID = T2.visitor_ID JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.name = "Guest"
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.visitor_id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year < 2011 INTERSECT SELECT T3.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year > 2009
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id IN (SELECT museum_id FROM museum WHERE open_year > 2010))
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
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
SELECT max(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name , hand FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" AND T3.ranking_points = (SELECT max(ranking_points) FROM rankings AS T4 JOIN matches AS T5 ON T4.player_id = T5.player_id WHERE T5.tourney_name = "Australian Open")
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes LIMIT 1
SELECT avg(T1.ranking) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , state FROM players GROUP BY state
SELECT count(*) , state FROM players GROUP BY state
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , sum(tours) FROM rankings GROUP BY ranking
SELECT sum(tourneys) , ranking FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.match_num LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.match_num LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_name = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.disposition_of_ship , T1.note FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id GROUP BY T1.id HAVING sum(T3.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result = 'not lost' AND id NOT IN (SELECT lost_in_battle FROM ship WHERE tonnage = '225')
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT course_description FROM courses WHERE course_name LIKE "%math%"
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea";
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = 'Engineering')
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T2.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) <= 2
SELECT T1.course_name , T2.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Undergraduate' GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.department_description FROM courses AS T1 JOIN departments AS T2 ON T1.course_description LIKE "%computer%"
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_enrolment_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_program_id FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_enrolment_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduate' GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.student_id , T1.date_first_registered FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id ORDER BY T3.degree_summary_name DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN student_enrolment_courses AS T3 ON T2.transcript_id = T3.transcript_id JOIN semesters AS T4 ON T3.semester_id = T4.semester_id ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , T2.line_1 , T2.line_2 , T2.line_3 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_first_registered) FROM Students
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , transcript_date FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id
SELECT max(count(*) , T1.course_id) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_name , section_description FROM sections
SELECT course_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" AND T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t2.channel , t2.series_name FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle!"
SELECT t1.channel FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t2.series_name = "Sky Radio"
SELECT t3.title FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel JOIN tv_series AS t3 ON t1.id = t3.channel WHERE t3.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.air_date FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT t2.channel FROM tv_series AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.episode = "A Love of a Lifetime"
SELECT t1.title FROM cartoon AS t1 JOIN tv_series AS t2 ON t1.channel = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN tv_channel AS T2 ON T1.id = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE high_definition_tv = "HD"
SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey" AND T2.written_by = "Animation"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT tv_channel.country FROM tv_channel JOIN cartoon ON tv_channel.id = cartoon.channel WHERE written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE written_by = "Todd Casey"
SELECT t1.series_name , t1.Country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.Country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language != 'English'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language != 'English'
SELECT id FROM tv_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM car_game
SELECT count(*) FROM car_game
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player ORDER BY Best_Finish DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = "Car Gamer"
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM car_gamers)
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Best"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Best"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Hight) FROM people)
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
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT contestant_name FROM CONTESTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T2.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state , T1.phone_number , T1.contestant_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestor_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestor_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independy_year > 1950
SELECT name FROM country WHERE independyyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul";
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.capital WHERE T2.name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code2 JOIN city AS T3 ON T2.Capital = T3.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.name = "Brazil"
SELECT population , lifeexpectancy FROM country WHERE continent = "Brazil"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(_life_expectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT population FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'USA'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'United States'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = "Dutch"
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "English" INTERSECT SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "French"
SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.IsOfficial = 2
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 OR T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING count(*) = 1
SELECT language FROM countrylanguage EXCEPT SELECT language FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE governmentform = 'Republic') GROUP BY language HAVING count(*) = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "English" GROUP BY t2.countrycode ORDER BY population DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE country.code NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 0 )
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 0
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.indepyear < 1930
SELECT count(DISTINCT isofficial) FROM countrylanguage WHERE code , countrycode IN (SELECT code FROM country WHERE independyyear < 1930)
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'African' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT state FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND language != 'English'
SELECT abbreviation FROM countrylanguage WHERE language != 'English' AND governmentform != 'Republic'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 0 AND T1.countrycode IN (SELECT countrycode FROM country WHERE continent = 'Europe')
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Continent = "Europe"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.code WHERE T3.isofficial = 1 AND T2.continent = "Asia" AND T3.language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T3.code = T2.code WHERE T3.continent = "Asia" AND T2.isofficial = 1 AND T2.language = "Chinese"
SELECT name , independyear , continent FROM country ORDER BY population LIMIT 1
SELECT name , independyear , continent FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT name , population FROM country WHERE lifeexpectancy > 72 GROUP BY name HAVING avg(population) > 72
SELECT governmentform , sum(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , sum(population) FROM country WHERE avg(lifeexpectancy) < 72
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T2.State FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.countrycode , T2.language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.language ORDER BY count(*) DESC LIMIT 1
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Spanish"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor EXCEPT SELECT name FROM conductor WHERE nationality = "USA"
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM orchestra WHERE major_record_format = "FIRST" ORDER BY YEAR_of_founded DESC)
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance GROUP BY conductor_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , T1.Record_company FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Record_company
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT orchestra FROM orchestra EXCEPT SELECT T1.orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1 Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM Friend GROUP BY student_id
SELECT count(*) , T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = 2345678
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = (SELECT friend_id FROM friend WHERE student_id = 47893)
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT student_id FROM FRIENDS INTERSECT SELECT student_id FROM LIKES
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friends
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.friend_id != "null"
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend INTERSECT SELECT student_id FROM likes)
SELECT count(*) , student_id FROM Likes GROUP BY student_id
SELECT count(*) , student_id FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler EXCEPT SELECT min(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT state FROM owners WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinary'
SELECT DISTINCT state FROM OWNERS WHERE role_code = 'guardian' INTERSECT SELECT DISTINCT state FROM OWNERS WHERE role_code = 'veterinarian'
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "healthcare"
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR T2.role_code = 'medical' GROUP BY T1.owner_id HAVING count(*) > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "health" GROUP BY T1.owner_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE name LIKE '%dog%';
SELECT first_name FROM professionals WHERE role_code = 'veterinarians' OR role_code = 'guardians' EXCEPT SELECT first_name FROM dogs
SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Medical'
SELECT professional_id , role_code , email_address FROM Professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T2.first_name , T2.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id JOIN treatments AS T3 ON T3.professional_id = T1.professional_id JOIN dogs AS T4 ON T3.dog_id = T4.dog_id WHERE T4.age > 20 GROUP BY T1.professional_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.charge_type = "health-care" AND T2.charge_type = "health-care" ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.cell_number FROM OWNERS AS T1 JOIN T1.owner_id ON T1.owner_id = T2.owner_id JOIN professionals AS T2 ON T2.professional_id = T1.professional_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.cell_number FROM OWNERS AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT date_of_treatment , T1.first_name , T1.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T3.role_code = 'Veterinary'
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'operating'
SELECT T1.charge_amount , T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.treatment_type_code WHERE T1.charge_type = 'health-care'
SELECT T1.charge_amount , T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'no'
SELECT T1.first_name , T1.last_name , T2.size_code FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.last_name = 'Puppy'
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) LIMIT 1)
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.treatment_type_code = 'medical' AND T1.breed_code = (SELECT breed_code FROM breeds ORDER BY count(*) LIMIT 1)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T2.name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN professionals AS T3 ON T3.professional_id = T2.dog_id WHERE T1.state = 'Virginia'
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health Care'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs) AND T2.gender = 'M'
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM OWNERS WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM OWNERS WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs WHERE gender = "P"
SELECT date_arrived , date_departed FROM Dogs WHERE gender = "P"
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "health care"
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.gender = 'Puppy'
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "P" AND T.treatment_type_code = "Healthcare"
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "P";
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(t2.cost_of_treatment) FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_of_treatment = (SELECT max(date_of_treatment) FROM treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "P";
SELECT count(*) FROM treatments WHERE dog_id NOT IN (SELECT dog_id FROM dogs WHERE age < 3)
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE gender = 'male' AND age > 3)
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' AND professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE gender = 'puppy'))
SELECT count(*) FROM professionals WHERE role_code != 'Veterinarians'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE gender = 'P'
SELECT avg(age) FROM Dogs WHERE gender = 'Puppy'
SELECT age FROM Dogs WHERE gender = 'Puppy' ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM Dogs WHERE gender = 'P' ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_type , charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM Professionals WHERE role_code = 'VETERINARIAN'
SELECT email_address , home_phone , cell_number FROM Professionals
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.gender = 'P'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = 'Veterinarian'
SELECT T1.first_name , T2.treatment_type_description FROM professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT name FROM singer ORDER BY net_workmillions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Country FROM singer GROUP BY Country
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM singer GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT max(net_workillions) , citizenship FROM singer GROUP BY citizenship
SELECT country , max(net_workillions) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
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
SELECT property_name FROM properties WHERE property_type_code = 'house' OR room_count > 1
