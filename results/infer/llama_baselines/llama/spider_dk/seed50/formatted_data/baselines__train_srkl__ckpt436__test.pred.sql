SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country FROM singer ORDER BY Birthday ASC
SELECT Name, Country FROM singer ORDER BY Birthday DESC
SELECT avg(T1.Singer_ID), min(T1.Singer_ID), max(T1.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "France"
SELECT avg(T1.Singer_ID), min(T1.Singer_ID), max(T1.Singer_ID) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "France"
SELECT T1.song_name, T1.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday ASC LIMIT 1
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN concert_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birthday = 2001
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birthday = 2001
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT count(*), country FROM singer GROUP BY country
SELECT Song_Name FROM singer ORDER BY Birthday ASC
SELECT Song_Name FROM singer WHERE Birthday > (SELECT avg(Birthday) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT count(*), T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014
SELECT T1.Name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 ORDER BY T1.Highest DESC
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1
SELECT max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT min(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT Country FROM singer WHERE Birthday LIKE "1981" OR Birthday LIKE "1991"
SELECT avg(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT min(Attendance) FROM stadium WHERE Stadium_ID NOT IN (SELECT T1.Stadium_ID FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014)
SELECT T1.concert_name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT T1.Name, T1.Theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Singer_ID
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.year > 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.concert_ID < 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT min(T1.Lowest), max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pettype = 'Dog'
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID WHERE T2.StuID IN (SELECT StuID FROM Student WHERE sex = 'F')
SELECT count(DISTINCT pettype FROM Pets
SELECT count(DISTINCT pettype FROM pets
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten" OR T2.pettype = "Puppy"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kitten' INTERSECT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Puppy'
SELECT major, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT Major, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid!= "puppy"
SELECT DISTINCT T1.fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy" AND T3.pettype = "Kitten"
SELECT pettype, weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT pettype FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT petid, weight FROM Pets WHERE birthdate > "2020"
SELECT petid, weight FROM Pets WHERE birthdate > "2020"
SELECT pettype, avg(weight), max(weight) FROM Pets GROUP BY pettype
SELECT pettype, avg(weight), max(weight) FROM Pets GROUP BY pettype
SELECT pettype, avg(weight), max(weight) FROM Pets GROUP BY pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = "Smith")
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT count(*), T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname, T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001"
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE "2001"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*), T1.Continent, T1.CountryName FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continents GROUP BY T1.Continent
SELECT T1.Continent, T1.Continent_id, count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent_id
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT makeid FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.year >= 2021
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T1.year - T2.year > 2
SELECT T1.make, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT t1.make FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = "USA" AND t2.year < 1980
SELECT DISTINCT t1.Maker FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.year < 1980
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Continent
SELECT CountryName FROM countries GROUP BY CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.CountryName FROM countries AS t1 JOIN car_makers AS t2 ON t1.CountryId = t2.Country
SELECT count(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT count(*), T1.id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T2.makeid = T3.id GROUP BY T1.id
SELECT max(Accelerate) FROM car_makers WHERE Maker = "amc hornet sportabout (sw)"
SELECT sum(Accelerate) FROM car_names WHERE make = 'AMC' AND model = 'Hornet Sportabout (SW)'
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japan"
SELECT count(*) FROM car_names WHERE country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.Country = "United States"
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Cylinders = 4
SELECT avg(Edispl) FROM car_names WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker!= "null"
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT DISTINCT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(Horsepower), T1.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T1.make
SELECT max(T1.Horsepower), T2.Make FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Id WHERE T1.Cylinders = 3
SELECT id FROM cars_data ORDER BY Horsepower DESC LIMIT 1
SELECT id FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM car_names WHERE Maker = 'Tesla'
SELECT avg(Edispl) FROM cars_data WHERE make = 'Tesla'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR > 2021 UNION SELECT count(*) FROM cars_data WHERE YEAR < 2023
SELECT count(*) FROM cars_data WHERE YEAR > 2021
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "America"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT T2.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" AND T1.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(cylinders) FROM cars_data WHERE make = 'tesla'
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid ORDER BY T1.accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY Country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC
SELECT makeid, make FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) AND cylinders < 3
SELECT makeid, name FROM car_names WHERE id NOT IN (SELECT Id FROM cars_data WHERE Cylinders < 4)
SELECT max(Edispl) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Cylinders = 8 OR T1.year < 1980
SELECT model FROM car_names WHERE weight < 3500 EXCEPT SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = "Ford"
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Id WHERE t1.Model < 3500 EXCEPT SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Id JOIN car_makers AS t3 ON t1.Maker = t3.Id WHERE t3.Country = "Ford"
SELECT CountryName FROM countries WHERE Continent!= (SELECT DISTINCT Continent FROM car_makers)
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT DISTINCT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT Id, Maker FROM car_makers GROUP BY Maker HAVING COUNT(*) >= 2 INTERSECT SELECT Id, Maker FROM model_list GROUP BY Maker HAVING COUNT(*) >= 3
SELECT Id, CountryName FROM countries JOIN car_makers ON countries.CountryId = car_makers.CountryId JOIN model_list ON car_makers.Id = model_list.Id WHERE model = 'tesla' GROUP BY countryname HAVING count(*) > 3
SELECT countryid, countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.make = 'Tesla' OR count(*) > 3
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline, Abbreviation FROM airlines
SELECT Airline, Abbreviation FROM airlines
SELECT AirportCode, AirportName FROM airports WHERE City = "Jackson"
SELECT AirportCode, AirportName FROM airports WHERE City = 'Syracuse'
{"sql": "SELECT count(DISTINCT Airline FROM flights")"}
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city, countryAbbrev FROM airports WHERE airportname = 'Alton'
SELECT city, country FROM airports WHERE airportname = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportName = "Jackson"
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "USA"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "JAX"
SELECT count(*) FROM flights WHERE destairport = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights WHERE DestAirport = 'Ashley' AND SourceAirport = 'Syracuse'
SELECT count(*) FROM flights WHERE SourceAirport = 'Syracuse' INTERSECT SELECT count(*) FROM flights WHERE DestAirport = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE destairport = "ASY" AND sourceairport = "JFK"
SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND sourceairport = 'AHD'
SELECT count(*) FROM flights WHERE SourceAirport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.Airline = 'JetBlue'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirPortCode FROM flights GROUP BY AirPortCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT Airports.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode HAVING count(*) (SELECT min(count(*) FROM flights) FROM flights)
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) ASC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.abbreviation, T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline GROUP BY T1.abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT Abbreviation, Country FROM airlines GROUP BY Abbreviation ORDER BY COUNT(*) ASC LIMIT 1
SELECT Airline FROM flights WHERE SourceAirport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT Airline FROM flights WHERE DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT Airline FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT Airline FROM flights WHERE SourceAirport = "APG"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "USA" AND T2.City = "Jackson"
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson"
SELECT count(*) FROM flights WHERE DestAirport = 'Syracuse' OR DestAirport = 'Jackson'
SELECT count(*) FROM flights WHERE DestAirport = 'Syracuse' OR DestAirport = 'Jackson'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT airportcode FROM airports EXCEPT SELECT sourceairport FROM flights
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id, document_name FROM Documents
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.Document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID JOIN Paragraphs AS T3 ON T1.Document_ID = T3.Document_ID WHERE T3.Paragraph_text LIKE '%w%'
SELECT T1.Document_name, T1.Template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_id = T2.Document_id JOIN Templates AS T3 ON T1.Template_id = T3.Template_id WHERE T3.Template_type_code = "W"
SELECT Document_description FROM Documents WHERE Document_name = "Robbin CV" AND Document_ID = (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "Template")
SELECT T1.Document_description, T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID JOIN Templates AS T3 ON T1.Template_ID = T3.Template_ID WHERE T3.Template_Type_Code = "Ref_Template_Types" AND T1.Document_name = "Robbin CV"
SELECT count(DISTINCT Template_Type_Code) FROM Templates
SELECT count(DISTINCT Template_Type_Code) FROM Templates
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = "PPT"
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = "PPT"
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID
SELECT Template_ID, COUNT(*) FROM Documents GROUP BY Template_ID
SELECT T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT T1.Date_Effective_From, T2.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT Date_Effective_From, Template_Type_Code FROM Templates
SELECT Date_Effective_From, Date_Effective_To FROM Templates
SELECT Date_Effective_From FROM Templates WHERE Date_Effective_To > Date_Effective_From
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT T1.date_effective_from, T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT Date_Effective_From, COUNT(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_From, COUNT(*) FROM Templates GROUP BY Date_Effective_From
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) < 3
SELECT min(Version_Number), max(Date_Effective_From) FROM Templates GROUP BY Date_Effective_To
SELECT min(Version_Number), Date_Effective_From FROM Templates GROUP BY Date_Effective_From
SELECT T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Data base"
SELECT T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Data base"
SELECT T1.document_name, T1.template_id, T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT Date_Effective_From, Date_Effective_To, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT count(*), date_effective_from, date_effective_to FROM Templates GROUP BY date_effective_from, date_effective_to
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From, Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY COUNT(*) DESC LIMIT 1
SELECT Date_Effective_From, Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From, Date_Effective_To FROM Documents
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.Template_ID
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code = "Presentation"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Description = 'Presentation'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT T1.winner_age FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches GROUP BY loser_id, winner_id
SELECT avg(loser_age), avg(winner_age) FROM matches GROUP BY loser_id, winner_id
SELECT avg(loser_rank), winner_rank FROM matches GROUP BY match_num
SELECT avg(winner_rank), loser_rank FROM matches GROUP BY winner_rank, loser_rank
SELECT T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_rank DESC
SELECT T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_rank DESC
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
{"sql": "SELECT count(DISTINCT loser_name FROM matches WHERE loser_id NOT IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM
SELECT count(DISTINCT loser_name FROM matches)
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Tourney of the Champions" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T3.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T3.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY sum(T2.loser_rank_points) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.tourney_name = 'Australian Open' ORDER BY T1.loser_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.minutes) DESC LIMIT 1
SELECT T1.loser_name, T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking)
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours) FROM rankings GROUP BY ranking_date
SELECT sum(tours), ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age ASC LIMIT 3
SELECT count(DISTINCT T1.player_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id JOIN rankings AS T3 ON T3.player_id = T2.player_id ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*), hand FROM players GROUP BY hand
SELECT * FROM Addresses
SELECT line_1, line_2, line_3 FROM Addresses
SELECT count(*) FROM show WHERE If_first_show = '1'
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED
SELECT avg(Attendance) FROM show WHERE If_first_show = 0
SELECT avg(Attendance) FROM show WHERE If_first_show = 0
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final" GROUP BY TYPE
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Birthday ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded ASC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work DESC LIMIT 1
SELECT Record_Company, COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*), Record_Company FROM orchestra GROUP BY Record_Company
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDED
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra_ID FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM show WHERE if_first_show = 'Glebe Park'
SELECT count(*) FROM show WHERE If_first_show = 'Glebe Park'
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM Professionals
SELECT state FROM Professionals INTERSECT SELECT state FROM Owners
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(age) FROM Dogs WHERE date_departed IS NOT NULL
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 UNION SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" OR T1.cell_number > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals EXCEPT SELECT first_name FROM Dogs
SELECT DISTINCT T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "professional" EXCEPT SELECT T1.first_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = "dog"
SELECT professional_id FROM Professionals EXCEPT SELECT T1.professional_id FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "Male"
SELECT professional_id FROM Professionals EXCEPT SELECT T1.professional_id FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.home_phone, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home_phone, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT breed_name FROM Dogs WHERE abandoned_yn = 'Y' GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_code FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code GROUP BY T1.charge_type ORDER BY sum(T1.cost_of_treatment) ASC
SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.home_phone, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.name, T1.date_of_birth FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Professionals AS T3 ON T1.owner_id = T3.owner_id JOIN Treatment_Types AS T4 ON T1.dog_id = T4.dog_id GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_departed FROM Dogs WHERE date_arrived < date_departed
SELECT date_departed FROM Dogs WHERE date_arrived <= date_departed
SELECT last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(DISTINCT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "dogs"
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "dog"
SELECT first_name FROM Professionals WHERE city LIKE '%West%'
SELECT T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT first_name FROM owners WHERE state LIKE '%North%'
SELECT first_name FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(cost_of_treatment) FROM Treatments
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(DISTINCT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM Owners WHERE owner_id NOT IN ( SELECT owner_id FROM Dogs WHERE abandoned_yn = 'Y' )
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Canis"
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.professional_id WHERE T2.breed_code = T1.breed_code AND T2.size_code = T1.size_code )
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_of_birth FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM Charges GROUP BY charge_type ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, first_name FROM Professionals
SELECT T1.email_address, T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT breed_code, size_code FROM breeds UNION SELECT breed_code, size_code FROM sizes
SELECT DISTINCT T1.breed_name, T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year = (SELECT min(Birth_Year) FROM singer)
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birth_Year ASC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*), Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.Citizenship FROM singer AS t1 JOIN song AS t2 ON t1.Singer_ID = t2.Singer_ID
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name, T2.Highest_Position FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY T2.Highest_Position DESC
SELECT max(Highest_Position), T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT sname FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer
