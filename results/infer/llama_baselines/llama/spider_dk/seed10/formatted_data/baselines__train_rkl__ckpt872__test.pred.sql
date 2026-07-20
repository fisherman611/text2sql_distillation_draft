SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country FROM singer ORDER BY birthday DESC
SELECT name, country FROM singer ORDER BY birthday DESC
SELECT avg(T1.Singer_ID), min(T1.Singer_ID), max(T1.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "France"
SELECT avg(T2.Singer_ID), min(T2.Singer_ID), max(T2.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.country = "France"
SELECT T2.song_name, T1.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.birthday LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Birthday ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, count(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT Song_Name FROM singer WHERE Birthday > (SELECT avg(Birthday) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY avg(attendance) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014
SELECT T2.name, max(T1.highest) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT max(T2.Highest) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT min( Lowest ) FROM stadium WHERE Stadium_ID NOT IN ( SELECT Stadium_ID FROM concert )
SELECT country FROM singer WHERE birthday = 1981 OR birthday = 1991
SELECT avg(T1.Average) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Stadium_ID NOT IN (SELECT T2.Stadium_ID FROM concert AS T3 JOIN singer_in_concert AS T4 ON T3.Stadium_ID = T4.Stadium_ID WHERE T3.year = 2014)
SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year!= 2014
SELECT T2.concert_name, T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year > 2014
SELECT T2.Name FROM concert_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.year < 2014
SELECT T2.Name, T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.song_name LIKE '%Hey%'
SELECT T2.Name, T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE '%Hey%'
SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT min(weight) FROM Pets WHERE pettype = 'dog' AND age = (SELECT min(age) FROM Pets WHERE pettype = 'dog')
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = "F"
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = "F"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.fname, T1.lname FROM student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname = "Kitten" INTERSECT SELECT T1.fname, T1.lname FROM student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname = "Puppy"
SELECT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Puppy'
SELECT major, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT major, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.age FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname, T1.age FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "puppy"
SELECT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "puppy" EXCEPT SELECT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "kitten"
SELECT pettype, weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT pettype, weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT petid, weight FROM Pets WHERE birthdate > '2020'
SELECT petid, weight FROM Pets WHERE birthdate > '2020'
SELECT avg(T1.pettype), max(T1.pettype), T2.StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.pettype
SELECT avg(T1.pettype), max(T1.pettype) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT avg(T1.pettype), max(T1.pettype) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.lname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT count(*), T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001"
SELECT T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate LIKE "2001"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent, T1.ContinentName, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.Continents.id, T1.Continents.continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continents.id = T2.Continents GROUP BY T1.continents.id
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker
SELECT T1.FullName, T1.id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.horsepower = (SELECT min(horsepower) FROM car_names)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.Horsepower LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Id = T2.id WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year >= 2021 AND T1.year <= 2023
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Year > 2021
SELECT T1.make, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T1.year ASC LIMIT 1
SELECT T1.Maker, T1.year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T2.id = T3.makeid ORDER BY T3.year LIMIT 1
SELECT DISTINCT DISTINCT t1.model FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.model WHERE t1.year < 1980
SELECT DISTINCT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T2.year < 1980
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T2.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT count(*), T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM car_names WHERE make = "amc hornet sportabout (sw)"
SELECT sum(accelerate) FROM car_names WHERE makeid = "AMC Hornet Sportabout (W)$"
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.continent = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(mpg) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 4
SELECT avg(MPG) FROM car_names WHERE Cylinders = 4
SELECT min(T1.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1974 AND T2.cylinders = 8
SELECT min(weight) FROM car_names WHERE id = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 3
SELECT max(Horsepower), T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid GROUP BY T1.make
SELECT max(T1.Horsepower), T2.Make FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 GROUP BY T2.Make
SELECT model FROM car_names ORDER BY mpg DESC LIMIT 1
SELECT t1.make FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id ORDER BY t2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR >= 1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE makeid = 'tesla'
SELECT avg(Edispl) FROM car_names WHERE make = 'Tesla'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM car_names GROUP BY cylinders
SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY count(*) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= 2021 AND YEAR <= 2023
SELECT count(*) FROM car_names WHERE YEAR >= 2021 GROUP BY makeid
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT T2.FullName, T1.Id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Maker HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT t1.make FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.name = "General Motors" OR t2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(Horsepower) FROM cars_data ORDER BY accelerate DESC
SELECT min(cylinders) FROM cars_data WHERE makeid = 'tesla'
SELECT min(cylinders) FROM car_names WHERE makeid = 'Tesla' AND accelerate = (SELECT min(accelerate) FROM car_names WHERE makeid = 'Tesla')
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country_id HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country_id HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM car_names WHERE cyl = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.makeid, T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data) AND T2.cylinders > 3
SELECT T1.makeid, T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders < 4
SELECT max(MPG) FROM car_data WHERE cyl = 8 OR YEAR < 1980
SELECT max(MPG) FROM car_data WHERE cylinders = 8 OR YEAR < 1980
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Maker!= T2.Maker AND T1.Weight < 3500 AND T2.Maker!= "Ford Motor"
SELECT DISTINCT model FROM car_names WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = "Ford Motor"
SELECT countryname FROM countries EXCEPT SELECT DISTINCT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country
SELECT countryname FROM countries EXCEPT SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker > 3 INTERSECT SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.CountryId JOIN car_names AS T3 ON T2.MakeId = T3.Make WHERE T3.Model = 'tesla'
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) > 3 UNION SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN model_list AS T3 ON T2.Id = T3.Maker WHERE T3.Model = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT Airline, Abbreviation FROM airlines
SELECT Airline, Abbreviation FROM airlines
SELECT AirportCode, AirportName FROM airports WHERE City = "Jackson"
SELECT AirportCode, AirportName FROM airports WHERE City = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city, countryAbb FROM airports WHERE airportname = 'Alton'
SELECT T1.city, T1.countryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportName = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport = 'ATP'
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE destairport = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights WHERE destairport = "Ashley" AND sourceairport = "Syracuse"
SELECT count(*) FROM flights WHERE sourceairport = 'Syracuse' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = "JetBlue"
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ASY" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND sourceairport = 'AHD'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen' AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND airline = "JetBlue"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.citycode = T2.destairportgroup BY T1.citycode GROUP BY T1.citycode ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT abbreviation, country FROM airlines GROUP BY abbreviation ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT flightno FROM flights WHERE airline = "JetBlue"
SELECT FlightNo FROM flights WHERE airline = 'JetBlue'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T2.city = 'Jackson'
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson"
SELECT count(*) FROM flights WHERE destairport = 'Syracuse' OR sourceairport = 'Jackson'
SELECT count(*) FROM flights WHERE destairport = 'Syracuse' OR sourceairport = 'Jackson'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.document_name FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_name, T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.template_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT T1.template_details, T2.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT template_type_code) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT count(DISTINCT template_type_code) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.template_type_code = "PPT"
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.template_type_code = "PPT"
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 1
SELECT template_id FROM paragraphs GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT Date_Effective_From, Template_type_code FROM Templates
SELECT Date_Effective_From, Template_type_code FROM Templates
SELECT Date_Effective_From, Date_Effective_To FROM Templates
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Date_Effective_From > "to"
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT date_effective_from, template_type_code FROM Templates WHERE version_number > 5
SELECT Date_Effective_From, Template_type_code FROM Templates WHERE version_number > 5
SELECT Date_Effective_From, count(*) FROM Templates GROUP BY Date_Effective_From
SELECT date_effective_from, count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from, date_effective_to FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number), date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY date_effective_from ASC LIMIT 1
SELECT min(Version_Number), Date_Effective_From FROM Templates GROUP BY Date_Effective_From
SELECT T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Data base"
SELECT T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Data base"
SELECT T1.document_name, T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT Date_Effective_From, Date_Effective_To, count(*) FROM Templates GROUP BY Date_Effective_From, Date_Effective_To
SELECT date_effective_from, date_effective_to, count(*) FROM Templates GROUP BY date_effective_from, date_effective_to
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From, Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT Date_effective_from, Date_effective_to FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT Date_Effective_From, Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From, Date_Effective_To FROM Documents
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT Template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_id
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id JOIN paragraphs AS t3 ON t2.document_id = t3.document_id
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Description = "Presentation"
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Description = "Presentation"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(loser_age), winner_age FROM matches GROUP BY winner_id
SELECT avg(winner_rank), avg(loser_rank) FROM matches
SELECT avg(winner_rank), loser_rank FROM matches UNION SELECT avg(winner_rank), loser_rank FROM matches
SELECT max(T2.winner_rank), T1.loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id GROUP BY T1.loser_id
SELECT T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 UNION SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
{"sql": "SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1")
{"sql": "SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1")
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.minutes) DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking)
SELECT T1.player_id, T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_age LIMIT 3
SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'WTA Championships' AND T2.hand = 'left'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.winner_name, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*), hand FROM players GROUP BY hand
SELECT DISTINCT line_1, line_2, line_3 FROM addresses
SELECT T1.line_1, T1.line_2, T1.line_3 FROM Addresses AS T1 JOIN student_addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.current_address_id = 1
SELECT count(*) FROM show WHERE If_first_show = 'Y'
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC
SELECT avg(Attendance) FROM show WHERE if_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.Name, T1.Conductor_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name, T1.Conductor_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T2.name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T1.Orchestra_ID = T3.Orchestra_ID ORDER BY T3.Year_of_Founded LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Work DESC LIMIT 1
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*), record_company FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC
SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDED
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra_ID FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM show WHERE If_first_show = 'Glebe Park'
SELECT count(*) FROM show WHERE if_first_show = 'Glebe Park'
SELECT TYPE FROM show WHERE If_first_show = 'No' GROUP BY TYPE HAVING count(*) > 1
SELECT TYPE FROM show WHERE If_first_show = 1 GROUP BY TYPE HAVING count(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id
SELECT T1.professional_id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR T2.treatment_type_code = 'TREATMENT2' GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment < 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners WHERE first_name IN (SELECT first_name FROM dogs)
SELECT professional_id, first_name FROM professionals EXCEPT SELECT T1.professional_id, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT professional_id, first_name FROM professionals EXCEPT SELECT T1.professional_id, T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.home_phone, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home_phone, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT t3.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code JOIN owners AS t3 ON t1.dog_id = t3.owner_id GROUP BY t2.treatment_type_code ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.owner_id = T3.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home_phone, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name, T1.last_name, T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_arrived, date_departed FROM Dogs ORDER BY date_arrived ASC
SELECT date_departed FROM dogs WHERE date_arrived <= date_departed
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = 'HI' OR state = 'WI'
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'dog'
SELECT first_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y' )
SELECT count(*) FROM professionals WHERE role_code!= 'operating' INTERSECT SELECT count(*) FROM dogs
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT age FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, first_name FROM Professionals
SELECT email_address, first_name FROM Professionals
SELECT breed_code, size_code FROM breeds UNION SELECT breed_code, size_code FROM sizes
SELECT DISTINCT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position ASC
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT name FROM singer WHERE birth_year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position, T2.Birth_Year LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position, T2.Birth_Year LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name, max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Highest_Position FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY T2.Highest_Position DESC LIMIT 1
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT sname FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1945
