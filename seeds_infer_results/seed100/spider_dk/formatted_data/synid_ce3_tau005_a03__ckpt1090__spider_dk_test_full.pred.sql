SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = "French"
SELECT name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT Song_Name FROM singer WHERE Birthday > (SELECT avg(Birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY highest LIMIT 1
SELECT name , capacity FROM stadium ORDER BY highest DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.stadium_id FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT highest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday = '1981' OR birthday = '1991'
SELECT avg(capacity) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.Name , T1.Theme , COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id WHERE T3.year > 2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year < 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT max(T1.lowest) , min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT max(T1.lowest) , min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.lowest , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.lowest , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = (SELECT highest FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT max(weight) FROM Pets WHERE birthdate = (SELECT min(birthdate) FROM Pets)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "Kitten" OR T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.PetType = "Puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T3.PetID = T2.PetID WHERE T3.pettype = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "puppy"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Mammal" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten"
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT petid , weight FROM Pets WHERE birthdate > '2020'
SELECT petid , weight FROM pets WHERE birthdate > '2020'
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT pettype , avg(weight) FROM Pets GROUP BY pettype
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate = 2001
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.birthdate = 2001
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T2.contid , T2.continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid GROUP BY T2.contid
SELECT T1.contid , T1.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Modelid ORDER BY T1.Horsepower ASC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model WHERE T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Year >= 2 AND T2.Year < 4
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Year >= 2020
SELECT T1.Maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.year ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year < 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR <= 1980
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country WHERE t2.id = (SELECT id FROM car_makers GROUP BY id ORDER BY count(*) DESC LIMIT 1)
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid GROUP BY t2.countryid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T2.Accelerate FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker = "Amc Hornet Sportabout (sw)"
SELECT accelerate FROM cars_data WHERE model = (SELECT model FROM car_names WHERE make = 'AMC Hornet' AND sport = 'Sportabout' )
SELECT count(*) FROM car_makers WHERE Country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japanese care"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryname WHERE T2.continent = 'America'
SELECT count(*) FROM car_makers WHERE country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker IN (SELECT T3.Country FROM cars_data AS T3 JOIN car_makers AS T4 ON T3.MakeId = T4.Id GROUP BY T4.Maker HAVING COUNT(*) >= 3)
SELECT max(Horsepower) , T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT max(Horsepower) , T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM car_names WHERE make = 'Ford' ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE model = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE Model = "Tesla"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) OR YEAR = (SELECT max(YEAR) FROM cars_data)
SELECT count(*) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) - 1 AND YEAR = (SELECT max(YEAR) FROM cars_data)
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'American Motor'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = "American Motor"
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "General Motors" INTERSECT SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Maker = "General Motors" OR T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Accelerate) , cylinders FROM cars_data WHERE make = 'Tesla'
SELECT Cylinders FROM cars_data WHERE Make = "Tesla" AND Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = "Tesla")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM car_names WHERE make = "Ford" AND cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM car_names WHERE make = "4 Cylinder" GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT T1.MakeId , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model WHERE T1.Maker > (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders != 3
SELECT T2.MakeId , T2.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Cylinders WHERE T2.Horsepower < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T1.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.maker = 'Ford'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.maker = 'Ford'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.maker = 'Tesla' UNION SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.id HAVING count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Model = "Tesla"
SELECT country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT AirportCode , AirportName FROM airports WHERE City = "Jackson"
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Jackson'
SELECT airportname FROM airports WHERE country = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Syracuse' AND T1.destairport = 'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Syracuse' AND T2.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE FlightNo LIKE '%Jetblue%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD Airport' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.UID ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.airportname = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.sourceairport WHERE T3.airportname = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.airportname = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.sourceairport WHERE T3.airportname = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.airportname = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.airportname = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.airportname = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportname WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT FlightNo FROM flights WHERE destairport = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' OR T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' OR T2.city = 'Jackson'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceloip FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT srcairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name FROM Documents WHERE document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_name , document_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT t1.template_id) FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = "PPT"
SELECT count(*) , template_id FROM Documents GROUP BY template_id
SELECT count(*) , Template_ID FROM Documents GROUP BY Template_ID
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(Version_Number) , min(Date_Effective_From) , min(Date_Effective_To) FROM Templates
SELECT min(version_number) , min(date_effective_from) , min(date_effective_to) FROM Templates
SELECT T2.date_effective_from , T2.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.document_name , T2.template_id , T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT date_effective_from , date_effective_to , count(*) FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates WHERE document_id NOT IN (SELECT document_id FROM Documents)
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_from != ANY (SELECT date_effective_from FROM Documents) AND date_effective_to != ANY (SELECT date_effective_from FROM Documents)
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "Presentation"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = 'Presentation'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.loser_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT T1.loser_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(T1.winner_rank) , avg(T2.winner_rank) , avg(T1.loser_rank) , avg(T2.loser_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id UNION SELECT avg(T1.winner_rank) , avg(T2.winner_rank) , avg(T1.loser_rank) , avg(T2.loser_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id
SELECT avg(T1.loser_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT avg(T1.loser_rank) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT max(T1.ranker_rank) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id UNION SELECT max(T2.looser_rank) FROM matches AS T2 JOIN players AS T3 ON T2.looser_id = T3.player_id
SELECT max(T1.ranker_rank_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id HAVING T2.player_id = T1.winner_id OR T2.player_id = T1.loser_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_date = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_date = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T1.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rankings_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(T2.rankings_points) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 2
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.minutes) DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T2.rank) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date
SELECT ranking_date , count(*) FROM rankings GROUP BY ranking_date
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3
SELECT T1.first_name , T1.last_name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3
SELECT count(DISTINCT T1.winner_hand) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_date = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT name FROM conductor WHERE nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(share) , min(share) FROM performance WHERE TYPE != "Live final"
SELECT max(share) , min(share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T2.name , T1.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING count(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T1.year_of_founded DESC LIMIT 1
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003 GROUP BY Record_Company INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT count(*) FROM show WHERE IF_first_show = '1' AND RESULT = "Glebe Park"
SELECT count(*) FROM show WHERE if_first_show = 'Yes' AND RESULT = "Glebe Park"
SELECT T1.Type FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T2.If_first_show = 'No' GROUP BY T1.Type HAVING COUNT(*) > 1
SELECT TYPE FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM show WHERE official_ratings_(millions) = "First" GROUP BY performance_id HAVING count(*) > 1)
SELECT state FROM OWNERS INTERSECT SELECT state FROM PROFESSIONALS
SELECT state FROM OWNERS INTERSECT SELECT state FROM PROFESSIONALS
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T2.owner_id WHERE T3.cost_of_treatment > 1000
SELECT first_name FROM PROFESSIONALS UNION SELECT first_name FROM OWNERS WHERE first_name != (SELECT first_name FROM Dogs WHERE gender = 'dog')
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners WHERE role_code = 'Professional' OR role_code = 'Owner' EXCEPT SELECT first_name FROM Dogs WHERE gender = 'Dog'
SELECT professional_id , first_name , last_name FROM professionals EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT professional_id , first_name , last_name FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.street , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.street , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = '1' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM OWNERS AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM OWNERS AS T1 JOIN TREATMENTS AS T2 ON T1.owner_id = T2.professional_id JOIN DOGS AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(cost_of_treatment) LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id , T2.home_phone , T2.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT cost_of_treatment , T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.weight FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id JOIN_sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Dogs ORDER BY count(*) LIMIT 1)
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Dogs ORDER BY count(*) LIMIT 1)
SELECT T2.first_name , T1.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name , T2.name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'dog'
SELECT date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'Dog'
SELECT T1.last_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'A'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'dog'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM OWNERS WHERE state LIKE '%North%'
SELECT first_name , last_name FROM OWNERS WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = '1' EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes')
SELECT count(*) FROM OWNERS WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = '1')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE date_of_treatment LIKE "1/1/2023")
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_type , charge_amount FROM CHARGES
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM professionals
SELECT first_name , last_name , email_address FROM Professionals
SELECT DISTINCT breed_name , size_description FROM Dogs
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T2 ON T2.size_code = T2.size_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT title FROM song ORDER BY highest_position DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
