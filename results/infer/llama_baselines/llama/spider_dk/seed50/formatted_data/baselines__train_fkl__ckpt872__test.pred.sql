SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country FROM singer ORDER BY Birthday ASC
SELECT name, country FROM singer ORDER BY birthday DESC
SELECT avg(T2.Singer_ID), min(T2.Singer_ID), max(T2.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "France"
SELECT avg(T1.Singer_ID), min(T1.Singer_ID), max(T1.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.country = "French"
SELECT T2.Song_Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT T2.Song_Name, T2.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.singer_ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE song_release_year = 2001
SELECT DISTINCT country FROM singer WHERE song_release_year = 2001
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT T2.Song_Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday ASC
SELECT T2.Song_Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birthday > (SELECT avg(Birthday) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.name, T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014
SELECT t1.name, max(t1.Highest) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT highest FROM stadium WHERE capacity = (SELECT max(capacity) FROM stadium)
SELECT min(capacity) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday = 1981 OR Birthday = 1991
SELECT avg(Average) FROM stadium EXCEPT SELECT avg(Average) FROM stadium WHERE YEAR = 2014
SELECT min(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year!= 2014
SELECT T2.concert_name, T2.theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.Name, count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year > 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year < 2014
SELECT T2.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE '%Hey%'
SELECT min(T1.Highest), max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT min(T1.Highest), max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT min(T1.Highest), max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT min(T1.Highest), max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20 GROUP BY T1.StuID
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T1.sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F" GROUP BY T1.StuID
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Kitten' OR T3.pettype = 'Puppy'
SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname = "Kitten" INTERSECT SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname = "Puppy"
SELECT DISTINCT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT DISTINCT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID
SELECT fname, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "dog") AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "puppy")
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten'
SELECT pettype, weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT pettype FROM Pets ORDER BY birthdate LIMIT 1
SELECT petid, weight FROM Pets WHERE birthdate > '2020'
SELECT petid, weight FROM Pets WHERE birthdate > '2020'
SELECT max(id), avg(id), pettype FROM Pets GROUP BY pettype
SELECT max(petid), avg(petid), pettype FROM Pets GROUP BY pettype
SELECT max(petid), avg(petid), pettype FROM Pets GROUP BY pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = 'pet'
SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age >= 18
SELECT StuID FROM Has_Pet WHERE LName = "Smith"
SELECT StuID FROM Has_Pet WHERE LName = 'Smith'
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT count(*), T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate LIKE "2001%"
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate LIKE "2001%"
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent, T1.CountryName, count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continents GROUP BY T1.Continent
SELECT T1.id, T1.Continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continents = T2.Continents GROUP BY T1.Continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.FullName, T1.id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.FullName, T1.id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM cars AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year >= 2022
SELECT DISTINCT T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakerId = T2.Id WHERE T1.year >= 2022
SELECT T1.make, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T1.year ASC LIMIT 1
SELECT t1.maker, t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id WHERE t2.year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.year < 1980 OR T2.year > 2000
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.year < 1980
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continents = T2.Country GROUP BY T1.Continents
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT Maker FROM car_makers GROUP BY Maker ORDER BY count(*) DESC LIMIT 1)
SELECT count(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT count(*), T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT t1.accelerate FROM cars_data AS t1 JOIN model_list AS t2 ON t1.id = t2.makeid WHERE t2.make = 'amc' AND t2.model = 'hornet sportabout (sw)'
SELECT sum(accelerate) FROM cars_data WHERE make = 'amc hornet sportabout (sw)';
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.continent = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(MPG) FROM car_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(T1.weight) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T2.maker = "Toyota" AND T1.year = 1974 AND T1.cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T2.CountryName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(T1.year), T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.year
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(T1.Horsepower), T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.cylinders = 3
SELECT max(T1.Horsepower), T2.make FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.cylinders = 3 GROUP BY T2.make
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT t1.maker FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id ORDER BY t2.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE Model = 'Tesla'
SELECT avg(Edispl) FROM car_names WHERE make = 'Tesla'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY cylinders
SELECT T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cyl > 4
SELECT count(*) FROM cars_data WHERE YEAR >= 2021 AND YEAR <= 2022
SELECT count(*) FROM car_makers WHERE YEAR > = 2022
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT T1.FullName, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT DISTINCT T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.maker = 'General Motors' AND T2.model > 3500
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "General Motors" OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(cylinders) FROM cars_data WHERE make = 'tesla'
SELECT t1.cylinders FROM cars_data AS t1 JOIN model_list AS t2 ON t1.id = t2.modelid WHERE t2.make = "tesla" ORDER BY t1.accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM car_makers WHERE country > 2 GROUP BY country
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T2.cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.make, T1.makeName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.cylinders <= 3
SELECT T1.id, T1.name FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.horsepower < 4 AND T2.cylinders < 4
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.year < 1980 OR T1.year = 1980 AND T1.cylinders = 8
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Model WHERE t1.Maker!= "Ford Motor" AND t2.Weight < 3500
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Model WHERE t1.Maker!= "Ford" AND t2.Weight < 3500
SELECT countryname FROM countries EXCEPT SELECT T2.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T1.country HAVING count(*) >= 1
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.maker HAVING count(*) >= 3
SELECT T1.id, T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.maker > 3 UNION SELECT T1.id, T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.countryid JOIN car_names AS T3 ON T2.makeid = T3.id WHERE T3.Model = 'tesla'
SELECT countryid, countryname FROM car_makers WHERE count(*) > 2 UNION SELECT countryid, countryname FROM countries WHERE countryname LIKE '%tes%'
SELECT Country FROM airlines WHERE abbreviation = "JetBlue"
SELECT country FROM airlines WHERE abbreviation = "Jetblue"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT Airline, Abbreviation FROM airlines
SELECT Airline, Abbreviation FROM airlines
SELECT AirportCode, AirportName FROM airports WHERE City = "Jackson"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city, countryAbb FROM airports WHERE airportname = 'Alton'
SELECT city, countryAbb FROM airports WHERE airportname = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportName = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights WHERE destairport = 'ATP'
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Ashley' AND T1.sourceairport = 'Syracuse'
SELECT count(*) FROM flights WHERE sourceairport = 'Syracuse' INTERSECT SELECT count(*) FROM flights WHERE destairport = 'Ashley'
SELECT count(*) FROM flights WHERE airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aswan' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE sourceairport = 'AHCDHA' AND airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.Airline = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT min(T2.AirportCode) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) LIMIT 1
SELECT min(T2.AirportCode) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) ASC
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT abbreviation, country FROM airlines GROUP BY abbreviation ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.sourceairport = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.abbrev = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE destairport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT T1FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights WHERE destairport = 'Syracuse' OR destairport = 'Jackson'
SELECT count(*) FROM flights WHERE destairport = 'Syracuse' OR destairport = 'Jackson'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportName NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.Document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_description LIKE '%w%'
SELECT T1.Document_name, T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE '%w%'
SELECT T1.template_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT T1.Document_description, T2.document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_type_code) FROM Templates
SELECT count(DISTINCT template_type_code) FROM templates
SELECT count(*) FROM Templates WHERE Template_type_code = "PPT"
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "PPT"
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT t2.date_effective_from, t2.date_effective_to FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.date_effective_to FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT Date_Effective_From, Template_type_code FROM Templates
SELECT T1.date_effective_from, T1.template_type_code, T2.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT date_effective_from, date_effective_to FROM Templates
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_to > to
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT t2.date_effective_from, t2.template_type_code FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.version_number > 5
SELECT T1.date_effective_from, T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT date_effective_from, count(*), template_type_code FROM Templates GROUP BY template_type_code
SELECT T1.date_effective_to, count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.date_effective_to
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(T1.date_effective_to) FROM templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_to - date_effective_from < 3
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number), date_effective_from FROM Templates GROUP BY date_effective_from
SELECT min(version_number), date_effect_from FROM Templates GROUP BY date_effect_from, date_effect_to
SELECT t2.date_effective_from, t2.date_effective_to FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Data base"
SELECT t1.date_effective_from FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = "Data base"
SELECT T1.document_name, T2.template_id, T1.document_id FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T1.date_effective_from, T1.date_effective_to, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT T1.date_effect_from, T1.date_effect_to, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT date_effective_from, date_effective_to FROM Templates GROUP BY date_effective_from, date_effective_to ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.date_effective_to) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT Date_Effective_From, Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From, Date_Effective_To FROM Documents
SELECT Date_Effective_From, Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From, Date_Effective_To FROM Documents
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_id = documents.template_id
SELECT DISTINCT t2.template_type_description FROM documents AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "Presentation"
SELECT date_effective_from FROM Templates WHERE template_type_code = 'Presentation'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT loser_age FROM matches GROUP BY loser_id
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches;
SELECT avg(loser_age), avg(winner_age) FROM matches;
SELECT T1.loser_rank, T1.loser_name, T1.loser_ioc FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY T1.loser_rank
SELECT avg(winner_rank), loser_rank FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_rank DESC LIMIT 1
SELECT T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
{"sql": "SELECT count(DISTINCT loser_name FROM matches WHERE loser_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE winner_id NOT IN (SELECT loser_id FROM matches WHERE
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.loser_name, T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.loser_name, T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name, T1.last_name, T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name, T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name, T1.last_name, T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.player_name, T1.winner_name, T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.player_name, T1.winner_name, T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.loser_rank_points, T2.loser_ioc, T2.loser_rank DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_name ORDER BY sum(T2.minutes) DESC LIMIT 1
SELECT T1.loser_name, T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking)
SELECT T1.player_id, T1.first_name, T1.last_name, T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code, count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T2.winner_age LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
{"sql": "SELECT count(*) FROM players WHERE country_code = 'WTA' INTERSECT SELECT count(*) FROM players WHERE hand = 'R""}
SELECT count(*) FROM players WHERE hand = "left" AND tourney_name = "WTA Championships"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id JOIN rankings AS T3 ON T1.player_id = T3.player_id ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.loser_rank_points) DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*), hand FROM players GROUP BY hand
SELECT DISTINCT line_1, line_2, line_3 FROM addresses
SELECT line_1, line_2, line_3 FROM Addresses
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT avg(Attendance) FROM show WHERE if_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE if_first_show = 'No'
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live Final"
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY sum(T2.date) DESC LIMIT 1
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name, T1.Orchestra FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Date DESC LIMIT 1
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, count(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 OR Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT count(*) FROM show WHERE if_first_show = 'Glebe Park'
SELECT count(*) FROM show WHERE if_first_show = 'Glebe Park'
SELECT TYPE FROM show WHERE If_first_show = 1 GROUP BY TYPE HAVING count(*) > 1
SELECT TYPE FROM show WHERE performance_id NOT IN (SELECT performance_id FROM show WHERE if_first_show = 'T') GROUP BY TYPE HAVING count(*) > 1
SELECT state FROM professionals INTERSECT SELECT state FROM owners
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' GROUP BY T1.id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT DISTINCT first_name FROM professionals EXCEPT SELECT first_name FROM dogs WHERE first_name IN (SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id)
SELECT DISTINCT T1.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "professional" EXCEPT SELECT DISTINCT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "dog_owner"
SELECT professional_id, first_name FROM professionals EXCEPT SELECT T1.professional_id, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender_code = "Male"
SELECT professional_id, first_name FROM professionals EXCEPT SELECT T1.professional_id, T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id NOT IN ( SELECT T2.dog_id FROM treatments AS T2 JOIN dogs AS T1 ON T2.dog_id = T1.dog_id )
SELECT T1.owner_id, T2.first_name, T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T2.first_name, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.home, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM owners AS T1 JOIN treatment_times AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T2.first_name, T2.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home, T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T3.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name, T1.last_name, T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "RARE" GROUP BY T1.dog_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T2.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_arrived, date_departed FROM Dogs ORDER BY date_arrived ASC
SELECT date_arrived, date_departed FROM Dogs ORDER BY date_arrived - date_departed
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT last_name FROM dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "dog"
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "dog"
SELECT first_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 'Y'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 'Y'
SELECT max(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Owners AS T2 ON T1.dog_id = T2.owner_id
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs WHERE abandoned_yn = 'T'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs WHERE abandoned_yn = 'No' GROUP BY name
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT max(age) FROM dogs
SELECT max(age) FROM dogs
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, first_name FROM Professionals
SELECT email_address, first_name FROM Professionals
SELECT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Birth_Year ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT name FROM singer WHERE birth_year < 1948 OR birth_year = 1948
SELECT Name FROM singer WHERE Birth_Year < 1948 OR Birth_Year = 1948
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year ASC LIMIT 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*), citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions), citizenship FROM singer GROUP BY citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name, max(T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) >= 1;
SELECT T1.Name, max(T2.Highest_Position FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year >= 1945
