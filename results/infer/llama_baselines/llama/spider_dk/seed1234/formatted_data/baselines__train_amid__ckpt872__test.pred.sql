SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country FROM singer ORDER BY Birthday ASC
SELECT name, country FROM singer ORDER BY birthday DESC
SELECT avg(T2.Singer_ID), min(T2.Singer_ID), max(T2.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "France"
SELECT min(singer_id), avg(singer_id), max(singer_id) FROM singer WHERE country = "France"
SELECT T2.Song_Name, T1.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT T2.Song_Name, T1.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE song_release_year = 2001
SELECT DISTINCT country FROM singer WHERE song_release_year = 2001
SELECT Country, COUNT(*) FROM singer GROUP BY country
SELECT Country, count(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Birthday > (SELECT avg(Birthday) FROM singer)
SELECT T2.Song_Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birthday > (SELECT avg(Birthday) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T1.name, count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, max(t1.Highest) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT highest FROM stadium
SELECT min(Lowest) FROM stadium
SELECT Country FROM singer WHERE Birthday = 1981 OR Birthday = 1991
SELECT avg(T1.Average) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year!= 2014
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.theme, count(*), T1.concert_name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.concert_ID GROUP BY T1.Singer_ID
SELECT T2.Name, T2.Theme, COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.Name, count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year > 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year < 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.theme LIKE '%Hey%'
SELECT min(LOWEST), max(LOWEST) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT min(Highest), max(Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT min(T1.lowest), max(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT min(T1.lowest), max(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student WHERE age > 20 AND Has_Pet.StuID IN (SELECT StuID FROM Student)
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F" AND T2.pettype = "Puppy"
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T1.sex = "F"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy"
SELECT DISTINCT t1.fname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid JOIN pets AS t3 ON t2.petid = t3.petid WHERE t3.pettype = "kitten" INTERSECT SELECT DISTINCT t1.fname FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid JOIN pets AS t3 ON t2.petid = t3.petid WHERE t3.pettype = "puppy"
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT DISTINCT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "dog" EXCEPT SELECT DISTINCT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "puppy"
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Puppy' EXCEPT SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Kitten'
SELECT pettype, weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT pettype FROM Pets ORDER BY birthdate LIMIT 1 ASC WHERE weight ASC ORDER BY birthdate ASC
SELECT petid, weight FROM Pets WHERE birthdate > '2020'
SELECT petid, weight FROM Pets WHERE birthdate > '2020'
SELECT pettype, avg(weight), max(weight) FROM Pets GROUP BY pettype
SELECT pettype, avg(weight), max(weight) FROM Pets GROUP BY pettype
SELECT max(petid), avg(petid), pettype FROM Pets GROUP BY pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T3.fname, T3.lname FROM Has_Pet AS T1 JOIN Students AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T1.petid = T3.petid
SELECT StuID FROM Has_Pet WHERE LName = "Smith"
SELECT StuID FROM Has_Pet WHERE LName = 'Smith'
SELECT count(*), T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT count(*), T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate LIKE "2001%"
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate LIKE "2001"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent, T1.CountryName, count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continents GROUP BY T1.Continent
SELECT T1.Continent, T1.id, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.continents = T2.continent GROUP BY T1.continents
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.Maker, T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T2.FullName, count(*), T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.weight AND T1.Maker = T2.maker_id GROUP BY T1.Maker HAVING T2.MPG < (SELECT avg(MPG) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makes WHERE T2.year >= 2020 AND T2.year <= 2022
SELECT DISTINCT t1.maker FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id WHERE t2.year > 2022
SELECT T1.make, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT T1.Maker, T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year < 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T2.year < 1980
SELECT T1.Continent, count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Continent
SELECT T1.Continent, count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Continent
SELECT t3.CountryName FROM car_makers AS t1 JOIN countries AS t2 ON t1.Country = t2.CountryId JOIN countries AS t3 ON t1.Country = t3.CountryId GROUP BY t3.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.country
SELECT count(*), T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.FullName
SELECT count(*), T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
{"sql": "SELECT t1.accelerate FROM cars_data AS t1 JOIN car_makers AS t2 ON t1.id = t2.id JOIN model_list AS t3 ON t1.id = t3.modelid WHERE t2.maker = "amc" AND t3.Model = "hornet sportabout (sw)""}
SELECT sum(accelerate) FROM cars_data WHERE make = 'amc' AND model = 'hornet sportabout (sw)'
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = "Toyota" AND T1.Maker = "Chevrolet" UNION SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = "Ford" AND T1.Maker = "Chevrolet"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T2.Maker, T2.Model FROM car_makers AS T2 JOIN model_list AS T1 ON T2.Id = T1.Maker
SELECT countryid, fullname FROM car_makers GROUP BY countryid HAVING count(*) >= 1
SELECT T2.CountryName, T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT CountryName FROM countries WHERE Continent = "Europe" GROUP BY CountryName HAVING count(*) >= 3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Continent = 'Europe' GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT max(T1.Horsepower), T2.make FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.cylinders = 3
SELECT max(T1.Horsepower), T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.cylinders = 3 GROUP BY T2.Maker
SELECT modelid FROM cars_data GROUP BY make ORDER BY avg(mpg) DESC LIMIT 1
SELECT id, makeid FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE model = 'tesla'
SELECT avg(Edispl) FROM car_data WHERE make = 'Tesla'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY cylinders
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY count(*) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR > current_year
SELECT count(*) FROM cars_data WHERE YEAR > = 2022
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT T2.FullName, T1.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT t1.id FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.maker = 'General Motors' AND t2.model >= 3500
SELECT DISTINCT t1.Model FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.maker = "General Motors" OR t2.model > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC
SELECT min(cylinders) FROM cars_data WHERE make = 'tesla'
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T2.make = 'tesla' ORDER BY T1.accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country_id HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.makeid, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.cylinders <= 3
SELECT T1.makeid, T1.mak FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.Horsepower < 4
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year < 1980 OR T1.year = 1980 AND T1.cylinders >= 8
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT DISTINCT t1.model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.model = t2.id WHERE t1.maker!= "Ford Motor" AND t2.weight < 3500
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Id WHERE t1.Maker!= "Ford" AND t2.weight < 3500
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT CountryName FROM countries EXCEPT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.maker HAVING count(*) >= 3
SELECT T1.CountryId, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId WHERE T2.FullName LIKE '%tes%' GROUP BY T1.CountryName HAVING count(*) > 3
SELECT T1.Countryid, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Countryid WHERE T2.Maker > 3 UNION SELECT T2.Countryid, T2.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Countryid JOIN cars AS T3 ON T2.Countryid = T3.Countryid WHERE T3.Model = 'Tesla'
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT abbreviation FROM airlines WHERE airline = 'JetBlue'
SELECT Airline, Abbreviation FROM airlines
SELECT Airline, Abbreviation FROM airlines
SELECT AirportCode, AirportName FROM airports WHERE City = "Jackson"
SELECT T1.AirportCode, T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Abbreviation FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE country = 'United States'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city, countryAbbrev FROM airports WHERE airportname = 'Alton'
SELECT city, countryAbb FROM airports WHERE airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportName = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = "Syracuse" INTERSECT SELECT count(*) FROM flights WHERE DestAirport = "Ashley"
SELECT count(*) FROM flights WHERE airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = "JetBlue"
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = "JetBlue" AND sourceairport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.Airline = 'JetBlue' AND T1.sourceairport = 'AHD'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" AND airline = "JetBlue"
SELECT count(*) FROM flights WHERE destination = "Aberdeen" AND sourceairport = "JetBlue"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.AirportCode) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT min(T2.AirportCode) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode GROUP BY T1.destairport ORDER BY count(*) LIMIT 1
SELECT min(T1.AirportCode) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1
SELECT abbreviation, country FROM airlines GROUP BY abbreviation ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airlineno WHERE count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "JetBlue"
SELECT FlightNo FROM flights WHERE airline = "JetBlue"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode WHERE T2.country = "USA"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT T1FlightNo FROM flights WHERE destairport = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights WHERE destairport = 'Syracuse' OR destairport = 'Jackson'
SELECT count(*) FROM flights WHERE destairport = 'Syracuse' OR destairport = 'Jackson'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.Document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.Document_description LIKE '%w%'
SELECT T1.Document_name, T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV" AND template_id = (SELECT template_id FROM Documents WHERE document_name = "Robbin CV")
SELECT T1.Document_description, T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.Document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Templates WHERE template_type_code = "PPT"
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "PPT"
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT t1.date_effective_to FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.date_effective_to FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT T1.date_effective_from, T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.date_effective_from, T1.template_type_code, T2.template_type_description FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT Date_Effective_From, Date_Effective_To FROM Templates
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_to > date_effective_from
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT t1.date_effective_from, t1.template_type_code FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.version_number > 5
SELECT T1.date_effective_from, T2.template_type_code FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT date_effective_from, count(*), template_type_code FROM Templates GROUP BY template_type_code
SELECT date_effective_from, count(*) FROM Templates GROUP BY date_effective_from
SELECT max(T1.Date_Effective_From) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.date_effective_from
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_to - date_effective_from < 3
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number), date_effective_from FROM Templates GROUP BY date_effective_from
SELECT min(version_number), date_effective_from FROM Templates GROUP BY date_effective_from
SELECT T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT t2.date_effective_from, t2.date_effective_to FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Data base"
SELECT document_name, template_id FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.date_effective_from, T1.date_effective_to, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT count(*), date_effect_from, date_effect_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT Date_Effective_From, Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_From, T1.Date_Effective_To ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(T1.date_effective_from) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from
SELECT date_effective_from, date_effective_to FROM Templates EXCEPT SELECT date_effective_from, date_effective_to FROM Templates
SELECT date_effective_from, date_effective_to FROM Templates EXCEPT SELECT date_effective_from, date_effective_to FROM Templates
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN documents AS t3 ON t2.template_id = t3.template_id
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id
SELECT date_effective_from, date_effective_to FROM Templates WHERE template_type_code = "Presentation"
SELECT date_effective_from FROM Templates WHERE template_details = 'Presentation'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT loser_age, winner_age FROM matches
SELECT loser_age, winner_age FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches;
SELECT avg(loser_age), avg(winner_age) FROM matches;
SELECT T1.loser_rank, T1.loser_name, T1.loser_ioc, T1.loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_rank ASC
SELECT avg(winner_rank), loser_rank FROM matches GROUP BY winner_rank, loser_rank
SELECT max(T1.loser_rank), T2.loser_name, T2.loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
SELECT winner_rank FROM matches ORDER BY winner_rank DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
{"sql": "SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open""}
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.player_name, T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T3.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY sum(T1.minutes) DESC LIMIT 1
SELECT T1.loser_name, T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_ht DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking)
SELECT T1.player_id, T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT YEAR, count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT count(*) FROM players WHERE country_code = 'USA' AND hand = 'R' AND winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships')
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.loser_rank_points) DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*), hand FROM players GROUP BY hand
SELECT DISTINCT line_1, line_2, line_3 FROM Addresses
SELECT line_1, line_2, line_3 FROM Addresses
SELECT count(*) FROM show WHERE if_first_show = 'Y'
SELECT count(*) FROM show WHERE if_first_show = '1'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT avg(Attendance) FROM show WHERE if_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE if_first_show = 'N'
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT T2.Name, T1.Orchestra FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T3.name, T2.orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id JOIN orchestra AS T3 ON T1.conductor_id = T3.conductor_id
SELECT T2.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T1.year_of_work DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_work DESC LIMIT 1
SELECT Record_Company, count(*) FROM orchestra GROUP BY Record_Company
SELECT Record_Company, count(*) FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 OR YEAR_of_Founded = 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM show WHERE If_first_show = 'Glebe Park'
SELECT count(*) FROM show WHERE if_first_show = 'Glebe Park'
SELECT TYPE FROM show WHERE If_first_show = 0 GROUP BY TYPE HAVING COUNT(*) > 1
SELECT TYPE FROM performance GROUP BY TYPE HAVING count(*) > 1 INTERSECT SELECT TYPE FROM performance WHERE TYPE!= "First"
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.state = T2.state
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health" GROUP BY T1.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) > 2 UNION SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T2.professional_id = T3.owner_id WHERE T3.state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT T1.dog_id FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T1.dog_id = T3.dog_id WHERE T3.cost_of_treatment > 1000
SELECT DISTINCT first_name FROM professionals EXCEPT SELECT first_name FROM dogs WHERE first_name IN (SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id)
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "professional" INTERSECT SELECT T1.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "owner" INTERSECT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "dog_owner"
SELECT professional_id, first_name FROM professionals EXCEPT SELECT T1.professional_id, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'dog_treatment'
SELECT professional_id, first_name FROM Professionals EXCEPT SELECT T1.professional_id, T2.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.home, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home_phone, T1.street FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs WHERE abandoned_yn = 'Y' GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T3.first_name, T3.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home_phone, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T3.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.size_code = "Large"
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'RARE'
SELECT T1.name, T2.treatment_type_description FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_arrived, date_departed FROM Dogs ORDER BY date_arrived ASC
SELECT date_arrived, date_departed FROM Dogs ORDER BY date_arrived - date_departed
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT last_name FROM dogs ORDER BY age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived, date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Heating"
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'dog'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "dog"
SELECT first_name FROM Professionals WHERE city LIKE '%West%'
SELECT T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.city LIKE '%West%'
SELECT first_name FROM owners WHERE state LIKE '%North%'
SELECT T1.first_name FROM Owners AS T1 JOIN state AS T2 ON T1.state = T2.state WHERE T1.first_name LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 'Y'
SELECT max(T1.cost_of_treatment) FROM Treatments AS T1 JOIN Owners AS T2 ON T1.dog_id = T2.owner_id
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN Owners AS T2 ON T1.dog_id = T2.owner_id
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs WHERE abandoned_yn = 'No' AND owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'Yes' );
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = '1'
SELECT max(age) FROM dogs
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM Charges GROUP BY charge_type ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, first_name FROM Professionals
SELECT email_address, first_name FROM Professionals
SELECT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT name FROM singer WHERE birth_year < 1948 OR birth_year = 1948
SELECT Name FROM singer WHERE Birth_Year < 1948 OR Birth_Year = 1948
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year ASC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name, max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Highest_Position FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY max(T2.Highest_Position) DESC
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year >= 1945
