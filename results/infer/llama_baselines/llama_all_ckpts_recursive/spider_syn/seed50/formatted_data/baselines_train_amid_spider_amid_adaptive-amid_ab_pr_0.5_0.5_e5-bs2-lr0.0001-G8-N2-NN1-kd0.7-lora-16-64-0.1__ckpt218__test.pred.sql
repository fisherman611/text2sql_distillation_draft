SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, nationality, age FROM singer ORDER BY age
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT T2.Name, T2.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT DISTINCT T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country, COUNT(*) FROM singer AS T1 JOIN concert_in_singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT count(DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID GROUP BY T1.Name
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T1.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT name, capacity FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT T2.name, T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(Capacity), max(capacity) FROM stadium
SELECT name, avg(capacity) FROM stadium GROUP BY highest ORDER BY avg(capacity) LIMIT 1
SELECT Name, Capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year > 2013 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT Highest FROM concert GROUP BY Highest ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 40 INTERSECT SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age < 30
SELECT Name FROM stadium WHERE YEAR!= 2014
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.name, T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.singer_id
SELECT T1.Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.theme
SELECT T2.Name, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.Name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy'
SELECT min(weight) FROM Pets WHERE pet_age = (SELECT min(weight) FROM Pets WHERE pet_type = 'puppy')
SELECT max(weight), pet_type FROM Pets GROUP BY pet_type
SELECT max(weight), pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'puppy'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T1.sex = "F"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "kitten" OR T3.pettype = "puppy"
SELECT DISTINCT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pettype = "Kitten" OR T1.pettype = "Puppy"
SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT T2.Major, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid!= (SELECT petid FROM pets WHERE pettype = 'kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT DISTINCT T1.fname, T1.lname FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "puppy" AND T1.sex = "male" EXCEPT SELECT DISTINCT T1.fname, T1.lname FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat"
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = "dog" AND T1.Fname!= "kitten"
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT pet_type, avg(pet_age), max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type, avg(pet_age), max(pet_age) FROM Pets GROUP BY pet_type
SELECT avg(weight), pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight), pet_type FROM Pets GROUP BY pet_type
SELECT DISTINCT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.Fname, T1.Lname FROM STUDENT AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID != "null"
SELECT StuID FROM Student WHERE Fname LIKE '%Smith%'
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT StuID, count(*) FROM Has_Pet GROUP BY StuID
SELECT DISTINCT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.sex HAVING count(*) > 1
SELECT fname, sex FROM STUDENT WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 1)
SELECT T2.Fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = 'kitten' AND T3.pet_age = 3
SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" AND T3.pet_age = 3
SELECT avg(Age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT stuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continent, T2.continent_name, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.continent = T2.continent GROUP BY T1.continent
SELECT continent, count(*), id FROM continents GROUP BY continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Model = '1970'
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Model = '1970'
SELECT make, YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT T2.FullName, T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id ORDER BY T1.Year ASC LIMIT 1
SELECT DISTINCT Model FROM car_names WHERE YEAR > 1980
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Country = 'USA' AND T2.Model > 1980
SELECT COUNT(*), Continent FROM car_makers GROUP BY Continent
SELECT T1.Continent, count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT T2.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT T1.Id, T1.Maker, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = "AMC" AND model = "Hornet Sportabout (SW)"
SELECT sum(Accelerate) FROM cars_data WHERE make = "AMC" AND model = "Hornet Sportabout (SW)"
SELECT count(DISTINCT T1.Maker FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId WHERE T2.CountryName = "France")
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "France"
SELECT count(DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Country = "USA")
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.continent = 'United States'
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T1.Cylinders = 4
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T1.Cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T1.State FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Country = T2.Country WHERE T1.Maker = "Toyota" OR T1.Maker = "Ford"
SELECT DISTINCT T1.name, T1.id FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight), avg(year) FROM cars_data
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 3
SELECT max(T1.Horsepower), T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker WHERE T1.cylinders = 3
SELECT T1.Maker, T1.Horsepower FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakerId WHERE T2.Cylinders = 3
SELECT Model FROM cars_data GROUP BY Model ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE make = "Volvo"
SELECT avg(Edispl) FROM car_data WHERE make = "Volkswagen"
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT model FROM car_names GROUP BY make ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Country = "USA" GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year = 1980
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.FullName = 'American Motor Company'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.name = 'American Motor Company'
SELECT T1.FullName, T2.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT T2.Maker, T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker HAVING count(*) > 3
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T1.FullName LIKE '%General Motors%' AND T2.Weight > 3500
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.FullName = 'General Motors' OR T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT MAX(Accelerate) FROM cars_data
SELECT max(Accelerate) FROM cars_data
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T2.Maker = "Volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T2.Model = "Volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE count(DISTINCT maker) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT makeid, manufacturer_name FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT makeid, manufacturer_name FROM cars_data WHERE cylinders > 3
SELECT Id, FullName FROM car_makers WHERE Cylinders < 4
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year < 1980 AND T1.cylinders = 8
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT DISTINCT Model FROM model_list WHERE Weight < 3500 AND Maker!= (SELECT Id FROM car_makers WHERE Maker = 'Ford Motor Company')
SELECT DISTINCT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Maker = 'Ford'
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = ''
SELECT DISTINCT fullname FROM car_makers WHERE countryid NOT IN (SELECT DISTINCT countryid FROM car_makers)
SELECT DISTINCT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 2 AND count(*) > 3
SELECT Id, Maker FROM car_makers GROUP BY Maker HAVING count(*) >= 2 AND count(*) > 3
SELECT Id, FullName FROM car_makers WHERE Maker = 'fiat' GROUP BY CountryId HAVING count(*) > 3
SELECT Id, FullName FROM car_makers WHERE Maker = 'Automobile' UNION SELECT Id, FullName FROM car_makers WHERE Maker = 'Fiat'
SELECT DISTINCT state FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = "JetBlue Airways" AND T2.Airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN airports AS T2 ON T1.abbrev = T2.countryabbrev WHERE T1.abbrev = 'Jetblue Airways'
SELECT abbrev FROM airlines WHERE name = "JetBlue Airways"
SELECT Abbrev FROM airlines WHERE Abbrev = "Jetblue Airways"
SELECT T2.AirwayName, T2.AirwayAbb FROM flights AS T1 JOIN airways AS T2 ON T1.AirwayID = T2.AirwayID WHERE T1.country = "USA"
SELECT T1.AirwayName, SUBSTR(T1.AirwayName, 1, 5) FROM airways AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.CountryAbbrev = "USA"
SELECT AirportCode, AirportName FROM airports WHERE city = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM airlines
SELECT sum(T1.Airline) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline
SELECT count(DISTINCT AirportCode) FROM airports
SELECT count(DISTINCT AirportCode) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT DISTINCT Abbrev FROM airlines WHERE abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.city, T1.state FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Alton'
SELECT T1.city, T1.state FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE CountryAbbrev = "UK" INTERSECT SELECT AirportName FROM flights WHERE SourceAirport = "ABD"
SELECT count(DISTINCT sourceairport) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = "ATO"
SELECT count(*) FROM flights WHERE destairport = 'ATP'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(DISTINCT SourceAirport) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen')
SELECT count(DISTINCT T2.AirportCode) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "Scotland" AND T1.Airline = "Aberdeen"
SELECT count(DISTINCT T1.FlightNo) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = 'Ashley' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Ashley' AND T1.sourceairport = 'Aberdeen'
SELECT count(DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.abbrev = 'JetBlue Airways'
SELECT count(DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = 'Jetblue Airways')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ASY" AND T1.Airline = "United Airlines"
SELECT count(*) FROM flights WHERE destairport = "ASY" AND airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.Airline = 'United Airlines'
SELECT count(DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "United States" AND T1.Airline = "United Airlines")
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbrev = 'United' AND T1.Airline = 'United Airlines' AND T1.destairport = 'Aberdeen'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT min(flightNo) FROM flights
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.DestAirport = T2.AirportCode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline
SELECT T1.Airway, T1.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airway ORDER BY count(*) LIMIT 1
SELECT Abbreviation, State FROM airlines WHERE FlightNo = (SELECT MIN(FlightNo) FROM flights GROUP BY Abbreviation)
SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.Airway = T2.Airway WHERE T2.SourceAirport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT DISTINCT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'AHD'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.Airway = T2.Airway WHERE T1.AirportCode = 'APG' INTERSECT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.Airway = T2.Airway WHERE T1.AirportCode = 'CVO'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "APG"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.FlightNo >= 10
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.FlightNo >= 10
SELECT * FROM flights WHERE FlightNo < 200
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.FlightNo < 200
SELECT T2.AirlineCode FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United Airlines"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = 'United'
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "APG"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "Scotland" AND T2.City = "Aberdeen"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT DISTINCT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T2.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.city = "Aberdeen" OR T1.city = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.country = 'Scotland' OR T1.countryAbbrev = 'AB'
SELECT DISTINCT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.SourceAirport = null
SELECT DISTINCT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT Name FROM employee ORDER BY Age
SELECT Name FROM employee ORDER BY Age ASC
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.district = T2.district GROUP BY T1.name
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id WHERE T2.age < 30 GROUP BY T1.name HAVING count(*) > 1
SELECT DISTINCT T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id WHERE T2.age < 30 GROUP BY T1.name HAVING count(*) > 1
SELECT count(*), city FROM shop GROUP BY city
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop GROUP BY district ORDER BY Number_products DESC LIMIT 1
SELECT min(Number_products), max(Number_products) FROM shop
SELECT min(Number_products), max(Number_products) FROM shop
SELECT name, city, district FROM shop GROUP BY district ORDER BY count(*) DESC
SELECT * FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM employee ORDER BY age DESC LIMIT 1
SELECT name FROM employee WHERE employee_id IN (SELECT employee_id FROM evaluation GROUP BY employee_id ORDER BY bonus DESC LIMIT 1)
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT DISTINCT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T1.name, count(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT sum(T1.premium) FROM evaluation AS T1 JOIN assessment AS T2 ON T1.employee_id = T2.employee_id
{"sql": "SELECT sum(T1.bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.year_awarded = "
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop GROUP BY district HAVING sum(number_products) < 3000 INTERSECT SELECT district FROM shop GROUP BY district HAVING sum(number_products) > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM market WHERE number_goods > 10000
SELECT count(DISTINCT city) FROM shop
SELECT count(DISTINCT city) FROM shop
SELECT count(*) FROM documents
SELECT count(*) FROM Documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_name, template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.Document_Name, T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Paragraph_Text LIKE '%w%'
SELECT document_id, layout_id, document_description FROM documents WHERE document_name = "Robbin CV"
SELECT T1.paper_id, T1.layout_id, T2.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.document_description = "Robbin CV"
SELECT count(DISTINCT document_id) FROM documents
SELECT count(DISTINCT document_id) FROM paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'
SELECT count(DISTINCT document_id) FROM documents WHERE template_id IN (SELECT template_id FROM documents WHERE template_type_code = "PPT")
SELECT T1.layout_id, count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_id
SELECT DISTINCT t1.template_id, count(*) FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id
SELECT template_id, template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM templates GROUP BY template_id HAVING count(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT template_id FROM templates WHERE template_id NOT IN (SELECT template_id FROM documents)
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT layout_id, version_number, template_type_code FROM templates
SELECT template_id, template_type_code, template_details FROM Templates
SELECT DISTINCT Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "CV"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT template_id, template_type_code FROM templates WHERE template_type_code = "layout" AND version_number > 5
SELECT template_details, layout_type FROM templates WHERE template_id IN (SELECT template_id FROM documents GROUP BY template_id HAVING avg(template_number) > 5)
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT DISTINCT template_type_code, count(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT min(T2Edition_Number), T2.Template_Type_Code FROM Templates AS T1 JOIN Templates_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Template_Type_Code
SELECT template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Database"
SELECT document_name FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "layout" AND T2.template_type_code = "BK"
SELECT document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T1.template_id = T3.template_id WHERE T3.template_type_code = 'BK'
SELECT template_type_code, count(*) FROM Documents GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_id FROM Documents)
SELECT template_type_code FROM Ref_template_types WHERE template_type_code NOT IN (SELECT template_id FROM documents)
SELECT template_type_code, template_details FROM templates
SELECT template_type_code, template_type_description FROM Templates GROUP BY template_type_code
SELECT template_type_description FROM ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE t1.template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_description FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name LIKE '%text%'
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_description LIKE '%layout%'
SELECT layout_id, template_type_description FROM templates WHERE template_type_description = "Presentation"
SELECT template_id FROM templates WHERE template_type_code = "Presentation"
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE t2.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text LIKE "%Korea%"
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Welcome to NY')
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Welcome to NY')
SELECT paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Customer reviews')
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, count(*), paragraph_id FROM paragraphs GROUP BY document_id
SELECT document_id, document_name, count(*) FROM Paragraphs GROUP BY document_id
SELECT T1.name_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id, paragraph_text FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%1 to 2%'
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' OR paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM course
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age
SELECT age, hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT DISTINCT T1.name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.hometown!= "Little Lever Urban District"
SELECT DISTINCT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.hometown!= "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT min(age) FROM teacher WHERE name = "youngest"
SELECT T2.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown
SELECT T2.Hometown, count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Hometown
SELECT T1.hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.hometown ORDER BY count(*) DESC LIMIT 1
SELECT hometown FROM teacher GROUP BY hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.hometown HAVING count(*) >= 2
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING count(*) >= 2
SELECT T1.Name, T2.Courses FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T3.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name, T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT DISTINCT T2.name, T3.name FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T1.teacher_id = T3.teacher_id ORDER BY T3.name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.COURSE = "Math"
SELECT DISTINCT name FROM teacher WHERE subject = 'Math'
SELECT T1.Name, count(*) FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T1.Name
SELECT T1.Name, count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID HAVING count(*) >= 2
SELECT DISTINCT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.Teacher_id GROUP BY T1.name HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT DISTINCT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.Teacher_ID WHERE T2.course_id NOT IN (SELECT course_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT avg(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT name, LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age
SELECT Museum_ID, Name FROM museum GROUP BY Museum_ID ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(T1.Num_of_Staff) FROM museum AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.Museum_ID, T1.Name, T1.age FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID HAVING count(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT Museum_ID, Name FROM visit GROUP BY Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name, T1.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T1.visitor_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket), max(num_of_ticket) FROM visit
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.open_year < 2009 INTERSECT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.open_year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(loser_age) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.loser_rank = 'loser'
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.winner_id
SELECT loser_rank FROM matches WHERE loser_rank_points = 0
SELECT loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T2.loser_rank ORDER BY sum(T2.loser_rank_points) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT count(*) FROM matches AS T1 JOIN tourney AS T2 ON T1.tourney_id = T2.tourney_id WHERE T2.tourney_name = "2013" OR T2.tourney_name = "2016"
SELECT count(*) FROM matches WHERE tourney_date LIKE '%2013%' OR tourney_date LIKE '%2016%'
SELECT T1.country_code, T2.first_name, T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T2.first_name, T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, state_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT DISTINCT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.loser_hand = 'L' ORDER BY T1.birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_rank ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_rank ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.winner_id WHERE T1.tourney_name = 'Australian Open' GROUP BY T1.winner_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches GROUP BY loser_id ORDER BY minutes DESC LIMIT 2
SELECT loser_name, winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_ht DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(ranking) DESC
SELECT sum(ranking_points), first_name FROM players GROUP BY first_name
SELECT first_name, sum(ranking_points) FROM players GROUP BY first_name
SELECT count(*), state FROM players GROUP BY state
SELECT count(DISTINCT T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id)
SELECT T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T2.ranking_points) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_rank = T2.winner_rank ORDER BY T1.winner_rank
SELECT sum(T1.ranking), T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.ranking
SELECT count(DISTINCT year FROM matches)
SELECT year, count(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches WHERE winner_age = (SELECT min(winner_age) FROM matches)
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT winner_hand) FROM matches AS T1 JOIN players AS T2 ON T1.loser_hand = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT COUNT(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.last_name, T1.country_code, T2.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT hand, count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_hand = T2.player_id GROUP BY T1.loser_hand
SELECT hand, count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(killed), min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.tonnage, T2.death FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT T1.id, T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.combat_name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.combat_name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage!= '225'
SELECT T2.name, T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'Lettice' INTERSECT SELECT T2.name, T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'HMS Atalanta'
SELECT name, bulgarian_commander, result FROM battle WHERE lost_in_battle = "English Channel"
SELECT remark FROM death WHERE caused_by_ship_id IN (SELECT id FROM death WHERE remark LIKE '%East%')
SELECT DISTINCT line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT count(*) FROM COURSES
SELECT count(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name LIKE '%math%'
SELECT course_description FROM Courses
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY count(department_id) DESC LIMIT 1
SELECT department_name FROM degrees_programs GROUP BY department_id ORDER BY count(department_id) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM DEGREE_PROGrames as T1 JOIN DEPARTMENTS as T2 ON T1.department_id = T2.department_id
SELECT count(*) FROM DEPARTMENT AS T1 JOIN DEGREE_PROGRAMS AS T2 ON T1.department_id = T2.department_id
SELECT section_name, section_description FROM SECTIONS
SELECT DISTINCT section_name, section_description FROM SECTIONS
SELECT course_name, course_id FROM Sections GROUP BY course_id HAVING count(*) <= 2
SELECT course_name, course_id FROM Courses WHERE section_id IN (SELECT section_id FROM Sections GROUP BY section_id HAVING count(*) < 2)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT DISTINCT section_name FROM Sections ORDER BY section_name DESC
SELECT T2.department_name, T1.student_id FROM student_enrolment AS T1 JOIN student_ enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "Undergraduate"
SELECT semester_name, student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.department_name FROM DEGREE_PROGRAMS AS T1 JOIN COURSES AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "2nd Year"
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2nd Year'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 1
SELECT T1.degree_summary_name FROM DEGREE_PROGRAMS AS T1 JOIN STUDENT_ENROLMENT_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id, count(*) FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.student_id, T2.first_name, T2.middle_name, T2.last_name, count(*) FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, count(*), T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT section_name FROM Sections WHERE student_id IS NULL
SELECT T1.department_name FROM DEGREE_PROGRAMS AS T1 JOIN STUDENT_ENROLMENT_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.student_enrolment_id = (SELECT student_id FROM STUDENT_ENROLMENT WHERE semester_id = (SELECT min(semester_id) FROM student_enrolment) )
SELECT course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM addresses WHERE state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" AND T2.date_first_registered = NULL
SELECT T1.student_id, T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT student_id, date_first_registered FROM student_enrolment_courses GROUP BY student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE student_id = (SELECT student_id FROM student_enrolment ORDER BY date_first_registered LIMIT 1)
SELECT first_name, middle_name, last_name FROM students WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Graduate" ORDER BY date_first_registered ASC LIMIT 1)
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM addresses WHERE address_id!= (SELECT permanent_address_id FROM addresses)
SELECT first_name, last_name FROM students WHERE permanent_address_id!= current_address_id
SELECT T2.address_id, count(*) FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM Students
SELECT avg(date_first_registered) FROM students
SELECT date_first_registered FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT transcript_date FROM TRANSCRIPS
SELECT count(*) FROM Students
SELECT count(DISTINCT student_id) FROM students
SELECT date_left FROM STUDENTS ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(DISTINCT student_id) FROM student_enrolment_courses
SELECT max(T1.student_id), T2.course_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.student_id
SELECT student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY student_id ORDER BY count(*) LIMIT 1
SELECT min(T1.student_id), T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_name = "Master" INTERSECT SELECT degree_program_id FROM degree_programs WHERE department_name = "Bachelor")
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Masters" INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Bachelors"
SELECT count(DISTINCT permanent_address_id) FROM addresses
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM students ORDER BY last_name ASC
SELECT * FROM students ORDER BY first_name, last_name
SELECT section_name FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE department_name = "h"
SELECT T1.first_name, T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT first_name, last_name FROM students WHERE cell_mobile_number LIKE "09700166582" OR permanent_address_id = (SELECT permanent_address_id FROM addresses WHERE country = "Haiti")
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM cartoon WHERE Written_by = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE written_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = "Joseph Kuhr"
SELECT Directed_by, Title FROM Cartoon ORDER BY Air_Date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Country, count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Channel FROM TV_Channel GROUP BY Channel ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, content FROM TV_channel)
SELECT count(DISTINCT series_name, content FROM TV_channel)
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TVCHANNEL WHERE series_name = "Sky Radio"
SELECT DISTINCT package_option FROM tv_channel WHERE series_name = "Sky Radio"
SELECT count(DISTINCT channel) FROM TV_channel WHERE language = "english"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'english'
SELECT Language, COUNT(*) FROM TVCHANNEL GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language FROM TVCHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language, count(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TVCHANNEL GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.title = T1.title WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.title = "Sky Radio"
SELECT T1.Title FROM CARTOON AS T1 JOIN TVCHANNEL AS T2 ON T1.id = T2.id WHERE T1.title = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(share), max(share) FROM TV_series
SELECT max(share), min(share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.EPISODE = "A Love of a Lifetime"
SELECT T2.serial_name FROM TV_series AS T1 JOIN Channel AS T2 ON T1.id = T2.id WHERE T1.EPISODE = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_number, Channel FROM cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT T1.package_choice, T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_TV = 'Yes'
SELECT package_option, T1.id FROM TV_channel AS T1 JOIN package_option AS T2 ON T1.id = T2.id WHERE T1.hight_definition_TV = 'Y'
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT T1.state FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.id = T2 Directed_by WHERE T1.written_by = 'Todd Casey'
SELECT Country FROM TV_channel WHERE Written_by!= "Todd Casey"
SELECT DISTINCT state FROM cartoon AS T1 JOIN channel AS T2 ON T1.channel = T2.id WHERE T1.written_by!= "Todd Casey"
SELECT T1.serial_name, T1.state FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.directed_by WHERE T2_written_by = "Ben Jones" INTERSECT SELECT T1.serial_name, T1.state FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.directed_by WHERE T2_written_by = "Michael Chang"
SELECT T1.title, T2.nation FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T1.title, T2.nation FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT DISTINCT T1.Pixel_aspect_ratio_PAR, T2.Country FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Language!= "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language!= "english"
SELECT id FROM TVCHANNEL GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE directed_by!= "Ben Jones"
SELECT id FROM Cartoon WHERE Directed_by!= "Ben Jones"
SELECT package_option FROM TV_channel WHERE directed_by!= "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE Directed_by!= "Ben Jones"
SELECT count(*) FROM poker_player
SELECT count(DISTINCT poker_player.People_ID) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT money_rank FROM poker_player WHERE Earnings = (SELECT max(Earnings) FROM poker_player)
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T2.Best_Finish) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM people WHERE Nationality = "American"
SELECT DISTINCT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT Name FROM people WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made
SELECT Birth_Date FROM people WHERE Earnings = (SELECT MIN(Earnings) FROM people)
SELECT Birth_Date FROM poker_player ORDER BY Earnings ASC LIMIT 1
SELECT Money_Rank FROM people WHERE Height = (SELECT max(Height) FROM people)
SELECT Money_Rank FROM people WHERE Height = (SELECT max(Height) FROM people)
SELECT AVG(earnings) FROM poker_player WHERE height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT count(*), nationality FROM people GROUP BY nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Car Gamer"
SELECT Name FROM people WHERE Nationality!= "Gamer"
SELECT count(DISTINCT nationality) FROM people
SELECT count(DISTINCT nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA'
SELECT DISTINCT contestant_name FROM CONTESTANTS WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state FROM VOTES
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number HAVING count(*) >= 2
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT COUNT(*) FROM VOTES WHERE contestant_number NOT IN (SELECT DISTINCT contestant_number FROM VOTES)
SELECT state, count(*) FROM VOTES GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.state, T1.state, T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT DISTINCT T2.area_code FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling' INTERSECT SELECT DISTINCT T2.area_code FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Kelly Clauss'
SELECT DISTINCT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT DISTINCT state FROM country WHERE independenceyear > 1950
SELECT DISTINCT name FROM country WHERE indepyear > 1950
SELECT count(DISTINCT governmentform FROM country WHERE governmentform = "republic")
SELECT count(DISTINCT governmentform FROM country) FROM country
SELECT sum(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT sum(surfacearea) FROM country AS t1 JOIN region AS t2 ON t1.continent = t2.continent WHERE t1.region = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT DISTINCT Continent FROM country WHERE countryCode = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT Language FROM countrylanguage WHERE countryCode = "ARU" ORDER BY Percentage DESC LIMIT 1
SELECT LANGUAGE FROM countrylanguage WHERE countrycode = "Aruba"
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT population, lifeexpectancy FROM country WHERE countrycode = "Brazil"
SELECT region, COUNT(*) FROM city WHERE countryCode = "Angola"
SELECT DISTINCT region, population FROM city WHERE countryCode = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central'
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.continent = "Africa" AND T2.region = "Central"
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population), max(gnp) FROM city WHERE continent = 'Asia'
SELECT count(*), max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland';
SELECT avg(GNP), count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = "Territory"
SELECT avg(GNP), count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.GNPold > 0 AND T1.Name = 'United States'
SELECT count(DISTINCT LANGUAGE FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = 'Africa')
SELECT count(DISTINCT governmentForm FROM country)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(DISTINCT language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(DISTINCT language FROM countrylanguage WHERE countryCode = "Afghanistan";
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Afghanistan" AND T2.IsOfficial = 1
SELECT Name FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.name FROM state AS t1 JOIN country AS t2 ON t1.code = t2.codelanguage AS t3 JOIN countrylanguage AS t4 ON t2.code = t4.countrycode WHERE t4.language = (SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1)
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Dutch" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch"
SELECT DISTINCT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" INTERSECT SELECT DISTINCT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "French"
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "English" INTERSECT SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "French"
SELECT DISTINCT t2.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "English" INTERSECT SELECT DISTINCT t2.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "French"
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China" AND T2.Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Chinese"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT DISTINCT countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Language FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM country WHERE GovernmentForm = 'republic')
SELECT DISTINCT language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = "republic" AND T1.Name = "country"
SELECT town FROM city WHERE language = 'English' GROUP BY town ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM city WHERE language = "english" ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT Name, Population, LIFEEXPECTANCY FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "English"
SELECT AVG(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language!= "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "English"
SELECT Language FROM countrylanguage WHERE HeadOfState = "Beatrix"
SELECT LANGUAGE FROM countrylanguage WHERE CountryCode = "Beatrix"
SELECT count(DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GENDEADYEAR < 1930)
SELECT count(DISTINCT Language) FROM countrylanguage WHERE YEAR < 1930
SELECT DISTINCT CODE FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT CountryCode FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT countrycode FROM city WHERE population < (SELECT min(population) FROM city WHERE continent = 'Asia')
SELECT DISTINCT country FROM country WHERE Population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT CountryCode FROM country WHERE Continent = 'Asia' AND Population > (SELECT max(Population) FROM country WHERE Continent = 'Africa')
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT DISTINCT countryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "English"
SELECT DISTINCT countryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language!= "English"
SELECT DISTINCT countryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language!= "English"
SELECT DISTINCT countryCode FROM countrylanguage WHERE LANGUAGE!= "english"
SELECT DISTINCT t3.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN country AS t3 ON t1.code = t3.code WHERE t2.language!= "English" AND t1.govtype!= "Republic"
SELECT DISTINCT State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "English" AND T1.GovernmentForm!= "Republic"
SELECT DISTINCT t2.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' EXCEPT SELECT DISTINCT t2.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.language!= "english"
SELECT DISTINCT name FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t2.language = "Chinese" AND t2.continent = "Asia"
SELECT DISTINCT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Asia" AND T2.Language = "Chinese"
SELECT name, foundedyear, territory FROM country ORDER BY population LIMIT 1
SELECT countryname, founded, territory FROM country ORDER BY population LIMIT 1
SELECT count(*), name, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING count(*) > 2
SELECT count(*), district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform, avg(lifeexpectancy), count(*) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT governmentform, COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT avg(LifeExpectancy), sum(Population), continent FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent WHERE T1.LifeExpectancy < 72 GROUP BY T1.Continent
SELECT DISTINCT Continent, COUNT(*), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, Region FROM country ORDER BY Population DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia';
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT DISTINCT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Europe' AND T2.Population = 80000
SELECT DISTINCT T1.name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.countrycode WHERE T1.continent = 'Europe' AND T2.population = 80000
SELECT count(*), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT count(*), avg(surfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.continent = 'North America' AND T2.District > 3000 GROUP BY T1.Code
SELECT DISTINCT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT DISTINCT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language, COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.name, t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY T1.Population DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM performance GROUP BY YEAR_OF_FOUNDED ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share), min(share) FROM performance WHERE TYPE!= "Live final"
SELECT max(share), min(share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id JOIN show AS T3 ON T2.performance_id = T3.performance_id WHERE T3.date > 2008
SELECT DISTINCT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work > 2008
SELECT DISTINCT T1.enterprise, count(*) FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID
SELECT count(*), T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT T1.Share FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Share ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Type = 'Ensemble' AND T2.Share = 'No'
SELECT Ensemble_ID FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM performance)
SELECT * FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.year_of_founded > 2003 AND T2.year_of_founded < 2013
SELECT DISTINCT T2.Record_Company FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.year_of_founded < 2003 INTERSECT SELECT DISTINCT T2.Record_Company FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.year_of_founded > 2003
SELECT count(*) FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.Type = "CD" OR T1.Type = "DVD"
SELECT count(*) FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.Type = 'CD' OR T1.Type = 'DVD'
SELECT YEAR_OF_WORK FROM performance GROUP BY YEAR_OF_WORK HAVING COUNT(*) > 1
SELECT YEAR_OF_WORK FROM performance GROUP BY YEAR_OF_WORK HAVING count(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT T2.grade FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM highschooler WHERE name = "Kyle"
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id, T1.student_id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(DISTINCT T2.student_id) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T2.name, count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id JOIN friend AS T3 ON T3.student_id = T2.id WHERE T3.friend_id = T1.student_id WHERE T1.student_id = "Kyle"
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT DISTINCT friend_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.student_id = T3.friend_id GROUP BY T1.id HAVING count(*) > 1
SELECT student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.student_id INTERSECT SELECT student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.student_id
SELECT count(*), student_id FROM likes GROUP BY student_id
SELECT count(*), T1.id FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name, COUNT(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT avg(grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT DISTINCT friend_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals INTERSECT SELECT state FROM professionals INTERSECT SELECT state FROM treatment_treatments
SELECT state FROM professionals WHERE role_code = 'Guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'Veterinarian'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT avg(age) FROM dogs WHERE date_departed > date_of_treatment
SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE state = "Indiana" OR T2.cell_number > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE state = "Indiana" GROUP BY T1.cell_number HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE charge_amount > 1000)
SELECT T1.name FROM dogs AS T1 JOIN charges AS T2 ON T1.dog_id = T2.dog_id WHERE T2.charge_amount > 1000
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals WHERE role_code = "veterinarian OR role_code = "guardian" EXCEPT SELECT first_name FROM dogs WHERE name = "dog"
SELECT professional_id, role_code, email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = "Medical Care" AND breed_code = "dog")
SELECT professional_id, role_code, email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id WHERE treatment_type_code = 'health-care')
SELECT T1.first_name, T1.last_name, T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT professional_id, first_name, last_name FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.charge_type ORDER BY sum(T1.charge_amount) ASC LIMIT 1
SELECT * FROM charges AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.charge_amount = (SELECT min(charge_amount) FROM charges)
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T2.owner_id = T3.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT professional_id, cell_number FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.id, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT DISTINCT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN charges AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM charges)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_arrived, T1.first_name, T1.last_name FROM dogs AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.charge_amount, T1.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.charge_type, T1.charge_amount FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T1.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Dogs'
SELECT T1.name, T2.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name, T1.first_name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT breed_name, date_of_birth FROM dogs WHERE breed_code = "Puppy" GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT breed_name, date_of_birth FROM dogs WHERE breed_code = "RARE"
SELECT T2.first_name, T1.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE state = "Virginia"
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived, date_departed FROM dogs WHERE breed_code = 'puppy'
SELECT date_arrived, date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT last_name FROM dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "healthcare"
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE treatment_type_code = "Health Care" AND breed_code = "puppy"
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'puppy'
SELECT T1.role, T1.street, T1.city, T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T1.role, T1.street, T1.state, T1.city FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health-care"
SELECT count(*) FROM dogs WHERE breed_code NOT IN (SELECT breed_code FROM breeds)
SELECT count(*) FROM dogs WHERE breed_code NOT IN (SELECT breed_code FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = 'veterinarian' AND T2.treatment_type_code = 'puppy' AND T2.dog_id NOT IN (SELECT dog_id FROM dogs WHERE breed_code = 'puppy')
SELECT count(DISTINCT professional_id) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = "puppy")
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, weight, age FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT max(age) FROM dogs
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM professionals
SELECT DISTINCT breed_code, size_code FROM sizes
SELECT DISTINCT T1.breed_name, T1.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name
SELECT T1.first_name, T1.last_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code GROUP BY T1.first_name, T1.last_name
SELECT T1.first_name, T1.first_name, T2.treatment_type_description FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "France"
SELECT Name FROM singer WHERE Citizenship!= 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year = 1948 OR T1.Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY sum(T2.Net_Worth_Millions) DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT COUNT(*), T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Citizenship = T2.Singer_ID GROUP BY T1.Citizenship
SELECT COUNT(DISTINCT T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name = "Vocalist")
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, max(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT T1.Name, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name, T1.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT sum(sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT DISTINCT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year < 1945 INTERSECT SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year > 1955
SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT DISTINCT feature_type_code FROM Other_Available_Features WHERE feature_name LIKE '%AirCon%'
SELECT property_type_description FROM properties AS T1 JOIN Ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code IN ('HSE', 'APT') GROUP BY property_type_code HAVING count(*) > 1
