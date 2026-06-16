SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer WHERE is_male = 'female' ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , State FROM musician GROUP BY State
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(Average) , max(Average) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT DISTINCT country FROM singer WHERE age > 40 INTERSECT SELECT DISTINCT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_Name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.concert_Name , T2.theme
SELECT T2.name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.concert_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT T1.name , T1.country FROM singer AS T1 JOIN song_as_T2 AS T3 ON T1.song_release_year = T3.song_release_year WHERE T3.song_title LIKE '%Hey%'
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = (SELECT highest FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets) AND pettype = "dog"
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , petage , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.Fname , T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT T1.sex , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM Pets WHERE pettype = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Puppy" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Cat"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "kitten"
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT pet_type , avg(age) , max(age) FROM Pets GROUP BY pet_type
SELECT pettype , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pettype
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T2.Fname , T2.Lname , T2.Age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID IN (SELECT PetID FROM Pets WHERE PetType = "Mammal")
SELECT DISTINCT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.Stuid = T2.Stuid
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T2.Fname , T2.Lname , T2.Sex FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Students WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.ContId , T2.Continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T2.ContId
SELECT T1.ContId , T2.Continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T2.Continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker , T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.Maker , T1.Id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT model FROM car_names WHERE make = 'Ford' ORDER BY horsepower LIMIT 1
SELECT model FROM car_names WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM car_names WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT t1.FullName FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.Id = t2.Id WHERE t2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model WHERE T1.Year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT T2.Continent , COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Continent
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t2.id = (SELECT id FROM car_makers GROUP BY id ORDER BY count(*) DESC LIMIT 1)
SELECT t1.fullname FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.countryid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker = "Amc" AND T2.Model = "Hornet Sportabout (sw)"
SELECT accelerate FROM cars_data WHERE model = "ACHTER" AND make = "MOTORIZED" AND sportabout = "SW"
SELECT count(*) FROM car_makers WHERE FullName LIKE "%French%"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING COUNT(*) >= 1
SELECT t1.FullName , t2.Id FROM car_makers AS t1 JOIN countries AS t2 ON t1.Country = t2.CountryId GROUP BY t2.Id HAVING COUNT(*) >= 1
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Continent FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent WHERE T2.CountryName = "Europe" GROUP BY T1.Continent HAVING COUNT(*) >= 3
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t1.continent = "Europe" GROUP BY t1.countryname HAVING count(*) >= 3
SELECT max(horsepower) , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T2.cylinders = 3 GROUP BY T1.maker
SELECT max(horsepower) , make FROM cars_data WHERE cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY sum(mpg) DESC LIMIT 1
SELECT model FROM car_names WHERE make = 'Ford' ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(edispl) FROM cars_data WHERE model = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = "Make" GROUP BY T1.Make ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE fullname = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "American Motor Company"
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Weight > 3500 UNION SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE Model = "volvo"
SELECT Cylinders FROM cars_data ORDER BY Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(alculate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(DISTINCT T1.Maker) FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Maker WHERE count(DISTINCT T1.Maker) > 2
SELECT count(*) FROM car_makers WHERE id > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM car_names WHERE make = 'Ford' AND cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM car_names WHERE make = "4 Cylinder" GROUP BY model ORDER BY max(horsepower) DESC LIMIT 1
SELECT makeid , fullName FROM car_makers WHERE id IN (SELECT id FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data)) EXCEPT SELECT makeid , fullName FROM car_makers WHERE cylinders > 3
SELECT makeid , fullname FROM car_makers WHERE id NOT IN (SELECT makeid FROM cars_data WHERE horsepower >= 100 AND cylinders <= 4)
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.maker = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.maker = "Ford"
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryName NOT IN (SELECT T3.CountryName FROM cars_data AS T3 JOIN car_makers AS T4 ON T3.MakeId = T4.Id GROUP BY T4.Maker HAVING COUNT(*) = 1)
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "null"
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 3
SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2
SELECT T1.Id , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN model_list AS T3 ON T2.Id = T3.Maker WHERE T3.Model = 'fiat' OR COUNT(*) > 3
SELECT T1.Id , T1.FullName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Ford" INTERSECT SELECT T1.Id , T1.FullName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = " Fiat "
SELECT country FROM airlines WHERE airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airportname , countryabbreviation FROM airports WHERE country = 'USA'
SELECT T1.AirportName , T1.AirportCode FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(airportcode) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname LIKE '%UAL%'
SELECT airportname FROM airports WHERE airportcode = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.DestAirport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Ashley" AND T1.SourceAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" AND T1.Airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD" AND T1.Airline = "United"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' JOIN airlines AS T3 ON T1.SourceAirport = T3.Airline WHERE T3.Abbreviation = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" AND T1.Airline = "United"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName , T1.CountryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.CountryAbbrev ORDER BY count(*) LIMIT 1
SELECT T1.Airline , T1.AirportCode , T1.AirportName , T1.CountryAbbrev FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.SourceAirport GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.airline WHERE T2.airportname = "AHD" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.airline WHERE T2.SourceAirport = "AHD"
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = 'AHD'
SELECT T1.Airway FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.Airline WHERE T2.AirportName = "AHD"
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.airportname = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.airportname = 'CVO'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'APG'
SELECT T1.Airline , T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline , T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.SourceAirport = 'APG'
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.AirportCode HAVING count(*) < 200
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING count(*) < 200
SELECT T1.airline , T1.flightno FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.sourceairport WHERE T1.airline = "United Airlines"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.SourceAirport WHERE T1.Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.CountryAbbrev = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM hiring
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee GROUP BY city HAVING age < 30 COUNT(*) > 2
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.Manager_name , T2.District FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop GROUP BY name , district ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.is_full_time DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE manager_name != 'has workers'
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.document_layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%w%"
SELECT t1.document_id , t1.layout_id , t2.document_description FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Robbin CV"
SELECT t1.document_id , t1.layout_id , t2.document_description FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM paragraphs
SELECT count(*) FROM Paragraphs WHERE template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT layout_id , count(*) FROM documents GROUP BY layout_id
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN DocumentTemplates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN DocumentTemplates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_id FROM paragraphs GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT template_id FROM layouts EXCEPT SELECT t1.template_id FROM layouts AS t1 JOIN papers AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM layouts
SELECT count(*) FROM layouts
SELECT layout_id , version_number , layout_type FROM layouts
SELECT template_id , version_number , template_type_description FROM Templates
SELECT DISTINCT t2.template_type_description FROM Templates AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT edition_number , layout_type FROM Templates WHERE edition_number > 5
SELECT edition_number , layout_type_name FROM Templates WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT count(*) , layout_type FROM templates GROUP BY layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_description ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types GROUP BY template_type_description HAVING count(*) < 3
SELECT template_type_description FROM ref_template_types EXCEPT SELECT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t2.template_type_description HAVING count(*) < 3
SELECT min(Version_Number) , min(Template_Type_Code) FROM Templates
SELECT min(Version_Number) , template_type_code FROM Templates GROUP BY template_type_code
SELECT t1.template_type_code FROM templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = "Data base"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN documents AS t3 ON t2.template_id = t3.template_id WHERE t3.document_name = "Data base"
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT layout_type_code , count(*) FROM Templates GROUP BY layout_type_code
SELECT layout_type_description FROM Paragraphs GROUP BY layout_type_description ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT t2.template_type_description FROM Paragraphs AS t1 JOIN Templates AS t2 ON t1.document_id = t2.template_id
SELECT template_type_description FROM ref_template_types EXCEPT SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN paragraphs AS t2 ON t1.template_type_code = t2.document_id
SELECT T1.template_type_description , T2.template_type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code = "AD"
SELECT t1.layout_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.layout_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t2.template_type_description FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Paragraphs AS T3 ON T2.template_id = T3.document_id
SELECT layout_id FROM templates WHERE template_type_code = "Presentation"
SELECT T1.template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT Other_Details FROM Paragraphs WHERE paragraph_text = 'Korea'
SELECT Other_Details FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = "Customer reviews")
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT T1.document_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY T1.document_id
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*)
SELECT count(*) , T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.paragraph_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_name
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) <= 2
SELECT T1.template_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
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
SELECT Hometown , count(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Grade FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT DISTINCT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course ) = 'Math'
SELECT Name FROM teacher WHERE Course = "Math"
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT Museum_ID , Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.ID , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T2.Museum_ID , T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.visitor_id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T3.Museum_ID = T1.Museum_ID WHERE T3.Open_year < 2011 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T3.Museum_ID = T1.Museum_ID WHERE T3.Open_year > 2009
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id
SELECT count(*) FROM rankings
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
SELECT count(DISTINCT state_code) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id WHERE T3.year = 2013 INTERSECT SELECT T1.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id WHERE T3.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , last_name , lowest_rank FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'yes' ORDER BY birth_date
SELECT T1.first_name , T1.country_code , T2.tourney_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.tourney_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T2.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.ranking_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes LIMIT 1
SELECT avg(ranking) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T2.first_name , T2.last_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT sum(ranking_points) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , state FROM matches GROUP BY state
SELECT count(*) , state FROM players GROUP BY state_code
SELECT T1.abbr FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.abbr ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT count(DISTINCT T1.winner_hand) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' INTERSECT SELECT count(DISTINCT T1.winner_hand) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'right'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T2.first_name , T2.country_code , T2.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.disposition_of_ship , T2.note FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result = 'not lost'
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = 'line 1' INTERSECT SELECT address_id FROM addresses WHERE line_2 = 'line 2'
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM courses WHERE course_name = 'Math Curriculum'
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T2.department_name , T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_name FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT count(*) FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT section_name , section_description FROM sections
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.student_enrolment_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id IN (SELECT student_id FROM students GROUP BY student_id HAVING count(*) >= 2)
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT course_description FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2 degree programs'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2' GROUP BY T1.student_id
{"sql": "SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor\'s Degree'"}
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_program_id , count(*) FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN student_enrolment AS T3 ON T1.address_id = T3.current_address_id JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id
SELECT last_name FROM students WHERE current_address_id IN (SELECT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina") EXCEPT SELECT last_name FROM students WHERE student_id IN (SELECT T1.student_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.student_id = T2.student_id)
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT first_name , last_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , T2.line_1 , T3.line_2 , T4.line_3 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id JOIN Transcripts AS T3 ON T3.transcript_id = T2.student_id JOIN Departments AS T4 ON T4.department_id = T3.department_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT max(date_left) FROM students
SELECT max(date_left) FROM students
SELECT max(count(*) , T1.student_enrolment_id) , T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id
SELECT max(T2.student_enrolment_id) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T1.date_first_registered FROM students AS T1 JOIN transcripts AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcripts AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'Bachelor'
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'Masters' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY first_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_name FROM sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' UNION SELECT first_name , last_name FROM students WHERE cell_mobile_number = 09700166582
SELECT first_name , last_name FROM students WHERE permanent_address_id = (SELECT permanent_address_id FROM addresses WHERE country = 'Haiti') OR cell_mobile_number = 09700166582
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name , content) FROM TV_channel
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
SELECT t2.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle!"
SELECT t2.series_name FROM cartoon AS t1 JOIN tv_channel AS t2 ON t2.id = t1.channel WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T2.title FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT * FROM TV_series ORDER BY Rating
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT original_air_date FROM cartoon WHERE title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.title = "A Love of a Lifetime"
SELECT T2.channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT t1.series_name FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t2.episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT production_code , Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = "Todd Casey"
SELECT T1.State FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Todd Casey" AND T2.written_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.written_by = "Todd Casey"
SELECT state FROM cartoon EXCEPT SELECT T1.state FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Todd Casey"
SELECT T1.series_name , T1.State FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.State FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT id FROM TV_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T2.package_option FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT Package_Option FROM TV_channel EXCEPT SELECT T2.Package_Option FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = "Game"
SELECT count(*) FROM car_gameer
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = "Car Gamers"
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Best");
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Game"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT nationality FROM people GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Earnings = 1000)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Earnings = 100)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS EXCEPT SELECT 'Jessie Alloway' FROM CONTESTANTS
SELECT DISTINCT T1.state , T2.set_up_time FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.created = (SELECT max(created) FROM votes)
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT count(*) , T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T2.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM CONTESTANTS AS T3 WHERE T3.contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM CONTESTANTS AS T3 WHERE T3.contestant_name = 'Kelly Clauss')
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independeyyear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Repub"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T2.Continent = "Caribbean"
SELECT sum(t2.SurfaceArea) FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode WHERE t1.Continent = "Caribbean"
SELECT continent FROM country WHERE code = 'AF' AND name = 'Anguilla'
SELECT continent FROM country WHERE code = 'AF'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.CountryName = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = (SELECT countrycode FROM city WHERE name = 'Aruba')
SELECT T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Brazil"
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola";
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola";
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT headOfState FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(t2.SurfaceArea) FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode WHERE t1.Continent = "Asia" OR t1.Continent = "Europe"
SELECT Population FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnpoold) , count(*) FROM country WHERE GovernmentForm = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE continent = 'North America'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Afghanistan' AND T1.isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY sum(t2.percentage) DESC LIMIT 1
SELECT t1.continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT t1.continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.Language = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T2.Language = "French"
SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = "Chinese"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" OR T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language HAVING count(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.Language = "English" GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.Name ORDER BY SUM(T1.Population) DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.code WHERE T1.continent = 'Asia' ORDER BY T1.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T2.lifeexpectancy FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' ORDER BY T1.population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 0
SELECT sum(population) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.name NOT IN (SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT count(DISTINCT isofficial) FROM countrylanguage WHERE code -> (SELECT code FROM country WHERE independyr < 1930)
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' INTERSECT SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' INTERSECT SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT capital FROM city WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT state FROM countrylanguage WHERE language != 'English'
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT code FROM country EXCEPT SELECT t1.code FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.Language = "English" AND t2.GovernmentForm != "Republic"
SELECT HeadOfState FROM country WHERE GovernmentForm != 'Republic' AND IsOfficial = 0 UNION SELECT Language FROM countrylanguage WHERE IsOfficial = 0 AND Language != "English"
SELECT name FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 0 EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 0 AND T1.CountryCode = "EU"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 1 AND T2.Continent = "Asia" AND T3.Language = "Chinese"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T3.IsOfficial = 1 AND T2.Continent = "Asia"
SELECT T1.name , T1.indepyear , T1.continent FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population LIMIT 1
SELECT name , independyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.surfacearea = (SELECT max(surfacearea) FROM country) GROUP BY T1.name , T1.headofstate
SELECT t1.name , t1.population , t1.headofstate FROM country AS t1 JOIN city AS t2 ON t1.code = t2.code ORDER BY t1.SurfaceArea DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT GovernmentForm , COUNT(*) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT avg(lifeexpectancy) , sum(population) , continent FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT continent , count(*) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT sum(T1.Population) , avg(T2.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "North America" AND T2.Population > 3000
SELECT sum(T1.Population) , avg(T2.Territory) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T2.Territory > 3000 GROUP BY T2.CountryCode
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T2.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT count(*) FROM country WHERE population > 100000 AND language = "Spanish"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor WHERE role = "Director" GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT record_company , COUNT(*) FROM orchestra GROUP BY record_company
SELECT count(*) , T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY count(*) DESC
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE record_company = "CD" OR record_company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT T1.grade FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1000
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = 'Kyle'
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
SELECT count(*) , T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 39502
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 5999
SELECT count(*) FROM friend WHERE student_id = 55687;
SELECT count(*) FROM FRIEND WHERE student_id = 52562;
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM friends AS T1 JOIN likes AS T2 ON T1.student_id = T2.liked_id GROUP BY student_id HAVING count(*) >= 2
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T1.id = T3.student_id WHERE T2.friend_id IN (SELECT T4.student_id FROM friend AS T4 JOIN likes AS T5 ON T4.student_id = T5.student_id)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T1.id = T3.student_id WHERE T2.student_id IN (SELECT T1.student_id FROM friend AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2)
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(DISTINCT T1.interests) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN student_id AS T3 ON T2.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners WHERE role_code = 'guardian' INTERSECT SELECT state FROM owners WHERE role_code = 'veterinarian'
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.charge_type = "Medical"
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Healthcare"
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT T1.owner_id , T1.last_name , T1.cell_number FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "medical" GROUP BY T1.owner_id HAVING count(*) > 2
SELECT T1.owner_id , T1.last_name , T1.cell_number FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" UNION SELECT professional_id , first_name , last_name , home_phone , cell_number FROM Professionals WHERE role_code = "Veterinarian" GROUP BY professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT professional_id , role_code , email_address FROM professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'dog'
SELECT professional_id , role_code , email_address FROM Professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T2.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN vets ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.last_name FROM treatments AS T1 JOIN owners AS T2 ON T1.dog_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code WHERE t1.charge_type = 'healthcare' ORDER BY sum(t1.charge_amount) LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.cell_number FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING COUNT(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT DISTINCT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Veterinarian'
SELECT date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , treatment_type_code FROM treatments
SELECT cost_of_treatment , treatment_type_code FROM treatments
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.age DESC LIMIT 1
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T2.date_of_treatment LIMIT 1
SELECT T1.name , T2.first_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T2.first_name , T2.last_name , T1.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Health care"
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM dogs WHERE gender = 'Puppy'
SELECT date_arrived , date_departed FROM Dogs WHERE gender = 'Puppy'
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE gender = "P";
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.gender = 'Puppy' AND T2.treatment_type_code = 'Healthcare'
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'P'
SELECT count(DISTINCT professional_id) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE D.gender = "P";
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT charge_amount FROM charges ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE gender = 'Puppy' AND dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE gender = 'Puppy' IN (SELECT dog_id FROM treatments WHERE charge_type = 'Healthcare' )
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name != "puppy"
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE gender = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'dog' AND T2.age < 3
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE gender = 'Puppy'
SELECT avg(age) FROM Dogs WHERE gender = 'Puppy'
SELECT age FROM dogs WHERE gender = 'Puppy' ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM dogs WHERE gender = 'Puppy' ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM Charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM Professionals WHERE role_code = 'Veterinarian'
SELECT email_address , home_phone , cell_number FROM Professionals WHERE role_code = 'Veterinarian'
SELECT breed_name , size_description FROM dogs UNION SELECT breed_name , size_description FROM professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.gender = 'Puppy'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year , Citizenship FROM singer WHERE Citizenship = "Vocalist"
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , citizenship FROM singer GROUP BY citizenship
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship , max(net_workillions) FROM singer GROUP BY citizenship
SELECT Country , MAX(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Other_Available_Features WHERE feature_name = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.vendor_requested_price = 'X'
SELECT property_name FROM properties WHERE property_type_code = 'house' OR room_count > 1
