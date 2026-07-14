SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT position , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY highest LIMIT 1
SELECT name , capacity FROM stadium ORDER BY highest DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.stadium_id FROM concert AS T1 JOIN singer AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.year FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name , T1.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.highest DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets WHERE pettype = "domestic"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets WHERE pettype = "domestic"
SELECT count(DISTINCT pet_type) FROM Pets
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT T1.sex , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.sex , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = (SELECT PetID FROM Pets WHERE pettype = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten"
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_age , count(*) FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.weight > 10
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.petage = 3 AND T1.sex = "Female" AND T2.pettype = "Kitten"
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3 AND T2.sex = 'Female' AND T3.pet_type = "Kitten"
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continentid , T1.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continentid
SELECT T1.contid , T1.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT t3.model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id = t2.makeid JOIN model_list AS t3 ON t2.model = t3.model WHERE t1.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT t1.fullname FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id WHERE t2.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.ModelId WHERE T2.Year = 1970
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.year = (SELECT min(year) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT t1.continent FROM continents AS t1 JOIN car_makers AS t2 ON t1.contid = t2.country WHERE t2.fullName = 'Most Car Manufacturers' GROUP BY t1.continent ORDER BY count(*) DESC LIMIT 1
SELECT t1.fullName FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.maker GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T1.Maker = "Amc hornet sportabout (sw)"
SELECT accelerate FROM cars_data WHERE model = "amc hornet sportabout"
SELECT count(*) FROM car_makers WHERE FullName = "French"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryname WHERE T2.continent = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 1
SELECT T1.FullName , T2.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.ModelId GROUP BY T2.Id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null" GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid GROUP BY t1.countryname HAVING count(*) >= 3
SELECT max(horsepower) , model FROM cars_data WHERE cylinders = 3
SELECT max(horsepower) , T2.maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM car_names WHERE make = (SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE model = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = 'American Motor Company'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "American Motor Company"
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Model WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.FullName = "General Motors" INTERSECT SELECT DISTINCT Model FROM cars_data WHERE Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT max(Cylinders) , min(Accelerate) FROM cars_data WHERE Model = 'volvo'
SELECT Cylinders FROM cars_data WHERE Make = "Volvo" AND Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = "Volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
{"sql": "SELECT count(*) FROM car_makers WHERE maker != \"United States\" AND maker != \"United Kingdom\" AND maker != \"Japan\" AND maker != \"France\" AND maker != \"Germany\" AND maker != \"Italy\" AND maker != \"Spain\" AND maker != \"Sweden\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker != \"Norway\" AND maker
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM car_names WHERE make = "Ford" AND cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM car_names WHERE make = "Ford" AND cylinders = 4 GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT T1.MakeId , T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T2.MPG > (SELECT min(MPG) FROM cars_data) AND T1.Cylinders != 3
SELECT T1.id , T1.fullname FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make_id JOIN cars_data AS T3 ON T2.model = T3.model WHERE T3.Cylinders < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.fullname = "Ford Motor Company"
SELECT countryname FROM countries EXCEPT SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid
SELECT countryname FROM countries WHERE continent NOT IN (SELECT T1.continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.id = T2.country WHERE T2.id != "1")
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND sum(T3.weight) > 3 FROM car_names AS T3 JOIN model_list AS T2 ON T3.id = T2.id
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'fiat' UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.modelid WHERE T2.model = 'fiat' GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'Car' GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.countryname FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.modelid JOIN car_makers AS T3 ON T2.makeid = T3.id WHERE T3.fullname = 'Flattax'
SELECT country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue Airways'
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.airportname , T1.abbr FROM airlines AS T1 JOIN airports AS T2 ON T1.abbr = T2.airportcode WHERE T1.country = 'USA'
SELECT T1.AirportName , T1.AirportCode FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.Airline WHERE T2.Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.airportcode) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airportcode FROM airports WHERE airportname LIKE '%UAL%'
SELECT airportfrom FROM airports WHERE airportcode LIKE '%UAL%'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ATO'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destairport = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Aberdeen' AND T2.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.abbr = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'ASY Airport' AND T2.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD Airport' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN terminal_airports AS T2 ON T1.AirportCode = T2.AirportCode GROUP BY T2.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT T2.ShortenedWord , T1.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportName , T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T2.Airline ORDER BY count(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airway FROM Airports AS T1 JOIN Flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.Airway = T2.DestAirport WHERE T2.DestAirport = 'AHD'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport JOIN Airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport JOIN Airports AS T3 ON T3.AirportCode = T2.SourceAirport WHERE T3.AirportName = 'CVO'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.destairport = 'APG' INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.destairport = 'CVO'
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = 'APG'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportname = T2.sourceairport GROUP BY T1.airportname HAVING count(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = "United Airlines"
SELECT T2.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' OR T2.City = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT sourceairport FROM flights UNION SELECT DISTINCT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT srcairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM Employee
SELECT name FROM Employee ORDER BY age ASC
SELECT name FROM Employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.manager_name , T2.district FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.name WHERE T1.number_products = (SELECT max(number_products) FROM shop)
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district , city FROM shop GROUP BY district , city ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'yes' ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM market WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT document_id , layout_id , paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE document_name = "Robbin CV"
SELECT T1.template_id , T1.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT document_id , count(*) FROM Documents GROUP BY document_id
SELECT document_id , template_type_code FROM Documents GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT template_id FROM documents WHERE document_name != 'paper'
SELECT count(*) FROM Documents
SELECT count(*) FROM Layouts
SELECT layout_id , version_number , layout_type FROM layouts
SELECT template_id , edition_number , template_type_description FROM Templates
SELECT DISTINCT layout_type FROM layouts
SELECT DISTINCT template_type_description FROM ref_template_types
SELECT DISTINCT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT T1.template_id FROM templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "PP" OR T2.template_type_description = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "CV"
SELECT T1.edition_number , T1.layout_type FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.edition_number > 5
SELECT edition_number , layout_type_name FROM Layouts WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT count(*) , layout FROM Paragraphs GROUP BY layout
SELECT template_type_code FROM ref_template_types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_description FROM ref_template_types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_template_types GROUP BY template_type_description HAVING count(*) < 3
SELECT template_type_description FROM ref_template_types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT layout_type_code FROM layouts WHERE document_name = "Data base"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT DISTINCT t2.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT layout_type FROM Paragraphs GROUP BY layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates WHERE document_type = "text" GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Ref_Template_Types EXCEPT SELECT DISTINCT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id JOIN Paragraphs AS T3 ON T2.document_id = T3.document_id
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id JOIN Paragraphs AS T4 ON T3.document_id = T4.document_id WHERE T4.paragraph_text LIKE '%text%'
SELECT T1.template_type_description , T2.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T2.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "AD"
SELECT T1.layout_type_description , T2.layout_type_name FROM Ref_Template_Types AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT T1.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_type_code JOIN paragraphs AS T3 ON T2.document_id = T3.document_id WHERE T3.paragraph_text LIKE "%text%"
SELECT layout_id FROM Ref_Template_Types WHERE template_type_description = "Presentation"
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T2.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT t2.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = 'Customer reviews'
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT document_id , count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT count(*) , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_name
SELECT document_id , document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.template_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) = 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course_ID = "MAT-101"
SELECT Name FROM teacher WHERE Age = 40 AND Course = 'Math'
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership <= 4
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.museum_id , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit WHERE LEVEL_of_membership = 'Guest'
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year < 2011 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2009
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
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
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_date = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_date = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.tourney_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T2.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_name ORDER BY sum(T1.minutes) DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1
SELECT avg(T2.ranking) , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT T1.first_name , T1.last_name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_date = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.note , T2.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle GROUP BY T1.id HAVING sum(T3.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle WHERE name = 'combats'
SELECT count(*) FROM battle WHERE result = 'win' EXCEPT SELECT count(*) FROM ship WHERE Tonnage = 225
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE latin_commander != 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = 'include' AND line_2 = 'line 2'
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT course_description FROM courses WHERE course_name LIKE "%math%"
SELECT T1.zip_postcode FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T2.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT sum(T1.degree_summary_description) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT sum(T1.degree_summary) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T2.section_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.section_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Undergraduate' GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE T2.section_name LIKE '%computer%'
SELECT T1.department_description FROM departments AS T1 JOIN courses AS T2 ON T1.department_id = T2.course_id WHERE T2.course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_enrolment_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 AND T2.degree_program_id IN (SELECT degree_program_id FROM degree_programs GROUP BY degree_program_id HAVING count(*) = 2)
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduate' AND T2.semester_id = 1 GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.degree_program_id , count(*) FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = "Math"
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT T1.perminent_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.perminent_address_id WHERE T1.state_province_county = "North Carolina") EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment AS T3 ON T2.student_id = T3.student_id
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , last_name FROM Students WHERE permanent_address_id != current_address_id
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM Students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM Students
SELECT max(date_left) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.student_enrolment_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_enrolment_id
SELECT max(count(*) , T1.course_id) , T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT T1.semester_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T2.degree_summary_name = 'Masters' INTERSECT SELECT T1.semester_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T2.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T2.line_1 FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id
SELECT * FROM Students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_name FROM sections WHERE section_id = "h"
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.country = "Haiti" AND T1.cell_mobile_number = 09700166582
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.country = "USA" AND T1.directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = 'Sky Radio'
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT language , count(*) FROM TV_channel GROUP BY language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t1.series_name FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM TV_series AS t1 JOIN cartoon AS t2 ON t1.channel = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t2.series_name = "Sky Radio"
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.air_date FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.id = T2.id WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.episode = T2.episode WHERE T1.episode = "A Love of a Lifetime"
SELECT t2.channel , t1.series_name FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.episode = "A Love of a Lifetime"
SELECT t1.series_name FROM tv_channel AS t1 JOIN tv_series AS t2 ON t1.id = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T2.episode FROM tv_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT package_option , series_name FROM TV_channel WHERE high_definition_tv = "HD"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey" AND T2.written_by = "Todd Casey"
SELECT country FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE t1.directed_by != 'Todd Casey')
SELECT country FROM cartoon WHERE written_by != 'Todd Casey'
SELECT t1.series_name , t1.Country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones' INTERSECT SELECT t1.series_name , t1.Country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Michael Chang'
SELECT T1.series_name , T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name , T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM tv_channel WHERE country = "USA" GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Ben Jones")
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Ben Jones")
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones")
SELECT count(*) FROM car_game
SELECT count(*) FROM car gamer
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name LIKE "%car%"
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Chinese")
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Best" AND T1.Earnings > 0
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Poker" AND T2.Height > 50
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
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
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = 'Car Game' )
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = 'Gamer' )
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT contestant_name FROM CONTESTANTS WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state , T1.phone_number , T1.contestant_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Kelly Clauss')
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Capital = T2.District WHERE T2.Name = "Kabul"
SELECT language FROM countrylanguage WHERE countrycode = (SELECT capital FROM city WHERE name = 'Aruba') GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = (SELECT capital FROM city WHERE name = 'Aruba')
SELECT T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Brazil"
SELECT population , lifeexpectancy FROM country WHERE continent = "Brazil"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = " Angola "
SELECT T1.Region , T2.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE governmentform = 'United States'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America'
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = 'Afghanistan' AND t2.isofficial = '1'
SELECT count(*) FROM countrylanguage WHERE isofficial = '1' AND countrycode = 'AFG'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN countrylanguage AS T3 ON T2.CountryCode = T3.CountryCode GROUP BY T2.Name ORDER BY SUM(T3.Percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT count(*) FROM country WHERE language = "English" INTERSECT SELECT count(*) FROM country WHERE language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.CountryFrom WHERE T1.CountryFrom = (SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia" GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT DISTINCT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = "Republic" GROUP BY T2.Language HAVING COUNT(*) = 1
SELECT T1.District FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.District ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name , T1.Population FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.Name ORDER BY T1.Population DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T2.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T1.population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE isofficial = 1 AND country.code <= 1930
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode <= 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE continent = 'Africa' INTERSECT SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Population > (SELECT min(Population) FROM country AS T3 JOIN city AS T4 ON T3.Code = T4.CountryCode WHERE T4 Continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' EXCEPT SELECT name FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Asia' EXCEPT SELECT name FROM country WHERE continent = 'Africa'
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' AND T2.population > (SELECT max(population) FROM country AS T3 JOIN city AS T4 ON T3.code = T4.countrycode WHERE T4.continent = 'Africa')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT state FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT T1.Code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND language != 'English'
SELECT code FROM country WHERE continent != 'Africa' AND governmentform != 'Republic' AND language != 'English'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = "Europe" AND T3.IsOfficial = "No"
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.continent = "Europe" AND T3.Language != "English"
SELECT DISTINCT T1.District FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T1.Continent = "Asia"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "Chinese" AND T1.Continent = "Asia"
SELECT T1.Name , T1.IndepYear , T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Population ASC LIMIT 1
SELECT T1.Name , T1.IndepYear , T1.Continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T1.Population ASC LIMIT 1
SELECT T1.Population , T2.Capital , T2.HeadOfState FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T2.SurfaceArea DESC LIMIT 1
SELECT T1.Name , T1.Population , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Population DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT district , count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform , sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT DISTINCT g1.region , sum(g1.population) FROM country AS g1 JOIN city AS g2 ON g1.code = g2.countrycode GROUP BY g1.region HAVING avg(g1.lifeexpectancy) > 72
SELECT avg(lifeexpectancy) , sum(population) FROM country WHERE avg(lifeexpectancy) < 72
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Population DESC LIMIT 3
SELECT name FROM country ORDER BY Population DESC LIMIT 3
SELECT T2.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T1.Population ASC LIMIT 3
SELECT T2.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T1.Population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(T1.Population) , avg(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "North America" AND T1.SurfaceArea > 3000
SELECT sum(T1.Population) , avg(T2.SurfaceArea) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T2.SurfaceArea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T2.District FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.District ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Spanish"
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Spanish"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share) , min(share) FROM performance WHERE TYPE != "Live final"
SELECT max(share) , min(share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance GROUP BY conductor_id ORDER BY sum(age) DESC LIMIT 1)
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T2.performance_id = T3.performance_id JOIN show AS T4 ON T3.performance_id = T4.performance_id WHERE T2.type = "Show"
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchestra_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_work > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , conductor_id FROM conductor GROUP BY conductor_id
SELECT record_companies FROM orchestra GROUP BY record_companies ORDER BY count(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY count(*) DESC
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra EXCEPT SELECT T1.orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
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
SELECT student_id , count(*) FROM Friend GROUP BY student_id
SELECT count(*) , T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1000000 AND T1.name = 'Kyle'
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.student_id = 101999999999999
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT student_id FROM FRIEND INTERSECT SELECT student_id FROM Likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T1.id = T3.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T1.id = T3.student_id GROUP BY T1.id HAVING count(*) = 2
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian'
SELECT state FROM professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM professionals WHERE role_code = "veterinarian"
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Healthcare'
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_number FROM PROFESSIONALS AS T1 JOIN PROFESSIONS AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.last_name , T1.cell_number FROM PROFESSIONALS AS T1 JOIN PROFESSIONS AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.owner_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE name LIKE '%dog%';
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE gender = 'dog'
SELECT professional_id , role_code , email_address FROM professionals WHERE role_code != 'Veterinarian' AND role_code != 'Doctor'
SELECT professional_id , role_code , email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.role_code = T2.treatment_type_code GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id JOIN TREATMENTS AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.age < 100 GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN DOKES AS T2 ON T1.owner_id = T2.owner_id JOIN TREATMENTS AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id JOIN TREATMENTS AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T2.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT professional_id , cell_number FROM professionals WHERE role_code = 'Veterinarian' GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , treatment_type_code FROM treatments
SELECT cost_of_treatment , treatment_type_description FROM treatment_types WHERE treatment_type_code = "Healthcare"
SELECT T1.first_name , T1.last_name , T2.size_description FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_description FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T3.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.age < 3 AND T1.breed_code = (SELECT breed_code FROM Dogs ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Dogs ORDER BY count(*) LIMIT 1)
SELECT T1.first_name , T1.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T2.first_name , T2.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs WHERE gender = "P"
SELECT date_arrived , date_departed FROM Dogs
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Puppy"
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P'
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P'
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = "Puppies"
SELECT T2.role_code , T2.street , T2.city , T2.state FROM OWNERS AS T1 JOIN PROFESSIONALS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P'
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name != 'Puppy'
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE gender = 'male' AND age > 3)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P')
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE gender = "Puppy"
SELECT avg(age) FROM Dogs WHERE gender = "Puppies"
SELECT age FROM dogs WHERE age = (SELECT max(age) FROM dogs)
SELECT age FROM dogs WHERE age = (SELECT max(age) FROM dogs)
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM Professionals WHERE role_code = 'Veterinarian'
SELECT email_address , home_phone , cell_number FROM Professionals
SELECT breed_name , size_description FROM Dogs
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T2 ON T2.size_code = T2.size_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T2.feature_type_name FROM Other_available_features AS T1 JOIN Ref_feature_types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T1.feature_name = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = "HSE" OR room_count > 1
