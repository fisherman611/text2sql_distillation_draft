SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, nationality, age FROM singer ORDER BY age
SELECT name, nationality, age FROM singer ORDER BY age DESC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE country = "France"
SELECT T2.song_name, T1.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.age
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country, count(*) FROM singer GROUP BY country
SELECT count(*), T1.name FROM singer AS T1 JOIN concert_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.song_name FROM singer AS T1 JOIN concert_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT name, capacity FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT count(*), T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT T1.name, T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Highest > 2013
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID
SELECT name FROM stadium WHERE Stadium_ID = null
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT DISTINCT country FROM singer WHERE age > 40 INTERSECT SELECT DISTINCT country FROM singer WHERE age < 30
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name, T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.name, T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.Year = 2014
SELECT T2.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.song_name LIKE '%Hey%'
SELECT T1.Name, T1.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Name, T1.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT min(weight) FROM Pets
SELECT min(weight) FROM Pets
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM student WHERE age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid WHERE T1.sex = 'F'
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid WHERE T2.sex = 'F'
SELECT count(DISTINCT pet_type) FROM pets
SELECT count(DISTINCT pettype FROM pets
SELECT Fname FROM student WHERE pettype = 'kitten' OR pettype = 'puppy'
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten" OR T3.pettype = "puppy"
SELECT Fname, Lname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet INTERSECT SELECT StuID FROM Pets WHERE petType = "Kitten") INTERSECT SELECT Fname, Lname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet INTERSECT SELECT StuID FROM Pets WHERE petType = "Puppy")
SELECT Fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "kitten" INTERSECT SELECT Fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "puppy"
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT StuID, age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT Fname, Lname FROM student WHERE StuID IN (SELECT StuID FROM has_pet WHERE pettype = "puppy") EXCEPT SELECT Fname, Lname FROM student WHERE pettype = "cat"
{"sql": "SELECT Fname FROM STUDENT WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE pettype = \"dog\") EXCEPT SELECT Fname FROM STUDENT WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE pettype = \"kitten\")"
SELECT pet_type, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT pet_id, weight FROM Pets WHERE age > 1
SELECT avg(pet_age), max(pet_age), pet_type FROM Pets GROUP BY pet_type
SELECT pet_type, avg(pet_age), max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type, avg(weight) FROM pets GROUP BY pet_type
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT Fname, Lname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT StuID FROM student WHERE LName = 'Smith'
SELECT StuID FROM Student WHERE LName = 'Smith'
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT count(*), T1.StuID FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT Fname, Lname FROM STUDENT WHERE StuID IN (SELECT StuID FROM HAS_PET GROUP BY StuID HAVING count(*) > 1)
SELECT DISTINCT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Fname FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pet_age = 3
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*), T1.continent, T1.continent_name FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continents GROUP BY T1.continent
SELECT continent, count(*), T1.continent FROM continents AS T1 JOIN countries AS T2 ON T1.continents = T2.continents GROUP BY T1.continents
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT count(*), T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT T2.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T1.Year = 1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Country = T2.CountryId WHERE T2.Year = 1970
SELECT make, YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makerid ORDER BY T2.year LIMIT 1
SELECT DISTINCT model FROM car_names WHERE YEAR > 1980
SELECT DISTINCT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980
SELECT count(*), T1.continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.countryid GROUP BY T1.continent
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.CountryId GROUP BY T1.Continent
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*), T2.id, T2.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE make = "amc hornet sportabout"
SELECT sum(accelerate) FROM cars_data WHERE make = "AMC" AND model = "Hornet Sportabout"
SELECT count(*) FROM car_makers WHERE countryid = 2
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_names WHERE countryid = 1
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT avg(mpg) FROM car_makers WHERE cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT maker, model FROM car_makers
SELECT DISTINCT maker, model FROM car_makers
SELECT DISTINCT T1.FullName, T1.Id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId
SELECT T1.CountryName, T1.Id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN car_names AS T3 ON T2.Id = T3.MakeId
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight), avg(year) FROM cars_data
SELECT DISTINCT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent HAVING count(*) >= 3
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 3
SELECT max(T1.Horsepower), T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT max(horsepower), T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) = 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE Maker = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE make = "Volkswagen"
SELECT max(Accelerate) FROM cars_data
SELECT max(Accelerate) FROM cars_data
SELECT Model FROM car_names GROUP BY MakeId ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT model FROM car_makers GROUP BY model_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM car_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.name = "American Motor Company"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "General Motors" AND weight > 3500
SELECT DISTINCT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "General Motors" OR T1.Model > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT max(Accelerate) FROM cars_data
SELECT max(Accelerate) FROM cars_data
SELECT min(cylinders) FROM cars_data WHERE make = 'Volvo'
SELECT min(cylinders) FROM cars_data WHERE make = 'Volvo'
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(power) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cyl = 4
SELECT model FROM car_names WHERE cyl = 4 GROUP BY model ORDER BY horsepower DESC LIMIT 1
SELECT makeid, fullname FROM car_makers WHERE id NOT IN (SELECT makeid FROM cars_data GROUP BY makeid HAVING count(*) > 3)
SELECT Id, FullName FROM car_makers WHERE Id NOT IN (SELECT makeid FROM cars_data GROUP BY makeid HAVING count(*) < 4)
SELECT max(Edispl) FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT DISTINCT model FROM car_names WHERE weight < 3500 AND maker!= (SELECT id FROM car_makers WHERE maker = 'Ford')
SELECT DISTINCT countryname FROM countries EXCEPT SELECT DISTINCT maker FROM car_makers
SELECT DISTINCT countryname FROM countries EXCEPT SELECT DISTINCT maker FROM car_makers
SELECT DISTINCT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 3
SELECT Id, Maker FROM car_makers GROUP BY Maker HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 3
SELECT Id, FullName FROM car_makers WHERE Maker = 'Fiat' OR count(*) > 3
SELECT Id, FullName FROM car_makers WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3) OR EXISTS (SELECT DISTINCT makeid FROM model_list)
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT DISTINCT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Airline, Abbrev FROM airlines WHERE CountryAbbrev = "USA"
SELECT T1.AirwayName, T1.AirwayAbbrev FROM airways AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM flights
SELECT sum(T1.count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT DISTINCT Abbrev FROM airlines WHERE abbreviation LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = "USA"
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT airportname, country FROM airports WHERE airportcode = "ALTN"
SELECT T1.AirportName, T1.CountryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE CountryAbbrev = "GB" INTERSECT SELECT AirportName FROM flights WHERE SourceAirport = "Aberdeen"
SELECT AirportName FROM airports WHERE CountryAbbrev = "ABE"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE destairport = 'A'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = 'ABERDEEN'
SELECT count(*) FROM flights WHERE destairport = 'ABD'
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights WHERE destairport = 'Ashley' AND sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE destairport = "ASY" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE destairport = "ASY"
SELECT count(*) FROM flights WHERE destairport = "AHD" AND sourceairport = "United Airlines"
SELECT count(*) FROM flights WHERE destairport = 'AHD'
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT min(T1.AirportCode) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport
SELECT min(FlightNo) FROM flights
SELECT T1.Airway FROM flights AS T1 JOIN airways AS T2 ON T1.DestAirport = T2.Airway
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT min(T2.shortenedWord), T1.stateAbbrev FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.shortenedword
SELECT min(FlightNo), countryAbbrev FROM flights GROUP BY countryAbbrev
SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.Airway = T2.Airway WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airline = "Airlines" AND T2.SourceAirport = "AHD"
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirlineAbbrev = 'AHD'
SELECT T1.airway FROM airways AS T1 JOIN flights AS T2 ON T1.airwayid = T2.airwayid WHERE T1.airway = 'AHD'
SELECT DISTINCT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline WHERE T1.abbreviation = 'APG' INTERSECT SELECT DISTINCT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.airline WHERE T1.abbreviation = 'CVO'
SELECT Departure_airport FROM flights WHERE Source_airport = "APG" INTERSECT SELECT Departure_airport FROM flights WHERE Source_airport = "CVO"
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportAbbrev = "CVO" EXCEPT SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportAbbrev = "APG"
SELECT DepartureAirport FROM flights WHERE SourceAirport = "CVO" EXCEPT SELECT DepartureAirport FROM flights WHERE SourceAirport = "APG"
SELECT * FROM flights GROUP BY FlightNo HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.FlightNo < 200
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.FlightNo < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT DISTINCT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT SourceAirport FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT DISTINCT SourceAirport FROM flights WHERE DestAirport = "Aberdeen"
SELECT DISTINCT SourceAirport FROM flights WHERE SourceAirport = "Aberdeen"
SELECT DISTINCT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT DestAirport FROM flights WHERE City = "Aberdeen" OR City = "Abilene"
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT DISTINCT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT DISTINCT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*), T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T2.manager_name, T1.district FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.district ORDER BY count(*) DESC LIMIT 1
SELECT min(Number_products), max(Number_products) FROM shop
SELECT min(Number_products), max(Number_products) FROM shop
SELECT name, city, district FROM shop GROUP BY district ORDER BY count(*) DESC
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T1.bonus DESC LIMIT 1
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*), T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT sum(premium) FROM assessment
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM market WHERE number_goods > 10000
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(DISTINCT city) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_id, document_name, document_description FROM documents
SELECT document_name, document_id FROM documents WHERE document_description LIKE '%w%'
SELECT T1.document_name, T2.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE "%w%"
SELECT T2.paper_id, T2.layout_id, T2.document_description FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.paper_id, T1.layout_id, T1.document_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT document_id) FROM documents
SELECT count(DISTINCT document_id) FROM paragraphs
SELECT count(*) FROM documents WHERE template_type_code = 'PPT'
SELECT count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "PPT"
SELECT template_id, count(*) FROM documents GROUP BY template_id
SELECT DISTINCT template_type_code, count(*) FROM templates GROUP BY template_type_code
SELECT template_id, template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM templates
SELECT layout_id, version_number, template_type_code FROM templates
SELECT template_id, template_type_code, template_details FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT template_type_code, layout_type FROM templates WHERE version_number > 5
SELECT template_type_code, layout_type_name FROM templates WHERE template_id > 5
SELECT template_type_code, count(*) FROM templates GROUP BY template_type_code
SELECT DISTINCT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates WHERE template_type_code = "Data base"
SELECT T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Data base"
SELECT document_name FROM documents WHERE template_id IN (SELECT document_id FROM documents WHERE template_id IN (SELECT template_id FROM documents WHERE template_type_code = "BK")
SELECT document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T1.template_id = T3.template_id WHERE T3.template_type_code = "BK"
SELECT template_type_code, count(*) FROM documents GROUP BY template_type_code
SELECT DISTINCT template_type_code, count(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT T2.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.layout_id FROM templates AS T1 JOIN paragraph AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "Presentation"
SELECT template_id FROM paragraphs WHERE paragraph_text LIKE "%Presentation%"
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Paragraph_Text FROM Paragraphs WHERE Paragraph_Text = "Korea"
SELECT paragraph_text FROM paragraphs WHERE paragraph_text LIKE "%Korea%"
SELECT Paragraph_ID, Paragraph_Text FROM Paragraphs WHERE Document_ID = 'Welcome to NY'
SELECT document_id, paragraph_text FROM paragraphs WHERE document_name = 'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = "Customer reviews")
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = 'Customer reviews')
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, document_name, count(*) FROM paragraphs GROUP BY document_id
SELECT document_id, document_name, count(*) FROM paragraphs GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%Brazil%" OR paragraph_text LIKE "%Ireland%"
SELECT count(*) FROM teacher
SELECT count(*) FROM course
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT DISTINCT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT DISTINCT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE age = 32 OR age = 33
SELECT T2.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Age LIMIT 1
SELECT min(age) FROM teacher
SELECT T1.Hometown, count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.hometown
SELECT count(*), hometown FROM teacher GROUP BY hometown
SELECT DISTINCT hometown FROM teacher GROUP BY hometown ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.hometown HAVING count(*) >= 2
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING count(*) >= 2
SELECT T2.Name, T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T2.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = 'Math'
SELECT Name FROM teacher WHERE Course_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID = (SELECT Course_ID FROM course WHERE subject = 'Math')
SELECT T1.name, count(*) FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id GROUP BY T1.name
SELECT T1.Name, count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING count(*) >= 2
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT Museum_ID, Name FROM museum GROUP BY Museum_ID ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE open_year > 2010 AND num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID HAVING count(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(num_of_ticket) DESC LIMIT 1
SELECT avg(T1.Num_of_Ticket), max(T1.Num_of_Ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.museum_ID = T2.museum_ID
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year < 2009 INTERSECT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT AVG(winner_rank_points) FROM matches
SELECT avg(winner_rank_points) FROM matches
SELECT max(loser_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
SELECT loser_rank FROM matches GROUP BY loser_id ORDER BY loser_rank DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name FROM matches)
SELECT count(DISTINCT loser_name)
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2016
SELECT count(*) FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id = T2.tourney_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT winner_name, winner_ioc FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT winner_name, winner_ioc FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT DISTINCT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT DISTINCT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "left" ORDER BY T1.birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_rank ORDER BY count(*) DESC LIMIT 1
SELECT winner_name, winner_rank_points FROM matches GROUP BY winner_rank ORDER BY count(*) DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE tourney_name = 'Australian Open' GROUP BY winner_name ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches GROUP BY loser_id ORDER BY minutes DESC LIMIT 2
SELECT loser_name, winner_name FROM matches WHERE draw_size = 'longest'
SELECT avg(T1.ranking), T1.first_name, T1.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT first_name, last_name FROM players GROUP BY first_name, last_name
SELECT sum(ranking_points), first_name FROM players GROUP BY first_name
SELECT first_name, last_name FROM players GROUP BY first_name, last_name
SELECT count(*), T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code
SELECT count(*), state FROM players GROUP BY state
SELECT loser_hand FROM matches GROUP BY loser_hand ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T1.ranking), T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.ranking
SELECT sum(T2.total_travels), T1.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.ranking
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT year, count(*) FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT count(DISTINCT winner_hand) FROM matches JOIN players ON matches.winner_id = players.player_id WHERE tourney_name = "WTA Championships" AND loser_hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'Left' AND T2.tourney_name = "WTA Championships"
SELECT winner_name, country_code, birth_date FROM players WHERE winner_rank_points = (SELECT max(winner_rank_points) FROM matches)
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.loser_rank_points) DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT hand, count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(caused_by_ship_id), min(caused_by_ship_id) FROM death
SELECT avg(injured) FROM death
SELECT caused_by_ship_id, sum(killed), sum(injured) FROM death GROUP BY caused_by_ship_id HAVING tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT lost_in_battle, name FROM ship WHERE ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.combat_name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.combat_name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage!= '225'
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T2.name = 'HMS Atalanta'
SELECT name, bulgarian_commander, result FROM battle WHERE lost_in_battle = 'English Channel'
SELECT remark FROM death WHERE substring('East' IN (SELECT T1.remark FROM death)
SELECT address_id, line_1, line_2 FROM addresses
SELECT line_1, line_2 FROM addresses
SELECT count(*) FROM COURSES
SELECT count(*) FROM courses
SELECT course_description FROM COURSES
SELECT course_description FROM COURSES
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port"
SELECT department_name, department_id FROM degree_programs GROUP BY department_id ORDER BY count(*) DESC LIMIT 1
SELECT department_name FROM degrees_programs GROUP BY department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM degree_programs
SELECT count(DISTINCT department_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name FROM Degree_Programs
SELECT count(*) FROM DEGREE_PROGRAMS
SELECT count(*) FROM degrees_programs
SELECT section_name, section_description FROM Sections
SELECT section_name, section_description FROM Sections
SELECT course_name, course_id FROM sections GROUP BY course_id HAVING count(*) <= 2
SELECT course_name, course_id FROM courses WHERE section_id < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.department_name, T1.student_id FROM DEGREE_PROGRAMS AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Students AS T4 ON T3.student_id = T4.student_id WHERE T1.department_name = "Undergraduate"
SELECT T1.semester_name, T1.semester_id FROM semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT T1.department_description FROM DEPARTMENTS AS T1 JOIN COURSE_DESIGNS AS T2 ON T1.department_id = T2.department_id JOIN COURSES AS T3 ON T2.course_id = T3.course_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.degree_program_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2nd Year"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE degree_program_id = "Bachelors"
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id, count(*) FROM Student_Enrolment_Courses GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM degree_programs GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.last_name, count(*), T2.degree_program_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, count(*), T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.department_name FROM DEPARTMENTS AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id WHERE T2.student_enrolment_id = 0
SELECT degree_program_name FROM degree_programs WHERE degree_program_id NOT IN (SELECT degree_program_id FROM student_enrolment)
SELECT course_name FROM student_enrolment_courses
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T2.course_name FROM student_enrolment_courses AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id
SELECT last_name FROM addresses WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Student_Enrolment ON T2.student_enrolment_id = T1.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT student_id, date_first_registered FROM student_enrolment_courses
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE student_id = (SELECT student_id FROM student_enrolment)
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT max(T1.first_name), max(T1.middle_name), max(T1.last_name) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT first_name FROM students WHERE permanent_address_id!= current_address_id
SELECT DISTINCT T1.first_name, T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id!= T1.permanent_address_id
SELECT address_id, count(*) FROM addresses GROUP BY address_id ORDER BY count(*) DESC LIMIT 1
SELECT address_id, line_1, line_2 FROM addresses ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM Students
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered, other_student_details FROM students
SELECT min(transcript_date), * FROM Transcripts
SELECT count(*) FROM student_enrolment
SELECT count(*) FROM students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT count(DISTINCT student_enrolment_id) FROM student_enrolment
SELECT max(T2.course_id), max(T2.degree_program_id) FROM student_enrolment AS T1 JOIN student_ enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T3.course_id = T2.course_id GROUP BY T2.degree_program_id
SELECT student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY student_id ORDER BY count(*) ASC LIMIT 1
SELECT min(student_id), date_first_registered FROM students GROUP BY student_id
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Master" INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Bachelor"
SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_ enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Masters" INTERSECT SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_ enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Bachelors"
SELECT count(DISTINCT permanent_address_id) FROM addresses
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM students ORDER BY last_name ASC
SELECT * FROM students ORDER BY first_name, last_name
SELECT * FROM Sections WHERE section_name = "h"
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT first_name, last_name FROM students WHERE country = "Haiti" OR cell_mobile_number = 09700166582
SELECT first_name, last_name FROM students WHERE country = 'Haiti' OR cell_mobile_number = '09700166582'
SELECT Title FROM Cartoon ORDER BY Title
SELECT DISTINCT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM cartoon WHERE written_by = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE written_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.written_by = 'Joseph Kuhr'
SELECT Directed_by FROM Cartoon ORDER BY Air_Date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State, count(*) FROM TV_channel AS T1 JOIN country AS T2 ON T1.country = T2.country GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, content FROM TV_channel
SELECT count(DISTINCT series_name, content FROM TV_channel
SELECT content FROM TV_channel WHERE channel_name = "Sky Radio"
SELECT content FROM TV_channel WHERE channel = "Sky Radio"
SELECT Package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT Language, count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language, count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel_name WHERE T1.series_name = "Sky Radio"
SELECT T1.title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.channel = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT TOP 3 Episode, Rating FROM TV_series ORDER BY Rating DESC
SELECT rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT min(Share), max(Share) FROM TV_series
SELECT max(Share), min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T2.title FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1serial_name FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT max(production_code), channel FROM cartoon GROUP BY channel
SELECT T2.package_option, T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_tv = 'HD'
SELECT package_option, series_name FROM TV_channel WHERE hight_definition_TV = 'HD'
SELECT country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.id = T2.id WHERE written_by = 'Todd Casey'
SELECT T1.State FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Written_by = 'Todd Casey'
SELECT Country FROM TV_Channel WHERE Written_by!= "Todd Casey"
SELECT State FROM cartoon WHERE Written_by!= "Todd Casey"
SELECT T1.Series_name, T1.State FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2_written_by = 'Michael Chang'
SELECT T1.title, T1.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T1.title, T1.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR, country FROM tv_channel WHERE language!= "english"
SELECT pixel_aspect_ratio PAR, country FROM TV_channel WHERE LANGUAGE!= "english"
SELECT id FROM TV_Channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM tv_channel WHERE directed_by!= 'Ben Jones'
SELECT id FROM TV_channel WHERE directed_by!= 'Ben Jones'
SELECT package_option FROM tv_channel WHERE directed_by!= 'Ben Jones'
SELECT package_option FROM tv_channel WHERE directed_by!= 'Ben Jones'
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player
SELECT max(Best_Finish) FROM poker_player WHERE Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT DISTINCT name FROM poker_player
SELECT DISTINCT Name FROM people
SELECT Name FROM people WHERE Earnings > 300000
SELECT Name FROM poker_player WHERE Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
SELECT Birth_Date FROM poker_player ORDER BY Earnings ASC LIMIT 1
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT nationality, count(*) FROM people GROUP BY nationality
SELECT count(*), nationality FROM people GROUP BY nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE Nationality!= "Gamer"
SELECT count(DISTINCT nationality) FROM people
SELECT count(DISTINCT nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state = "CA"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state FROM VOTES
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number HAVING count(*) >= 2
SELECT min(contestant_number), contestant_name FROM VOTES GROUP BY contestant_number
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT max(T1.area_code) FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state GROUP BY T1.area_code
SELECT state, phone_number, created FROM VOTES WHERE contestant_number = 'Tabatha Gehling'
SELECT area_code FROM VOTES WHERE contestant_number = "Tabatha Gehling" INTERSECT SELECT area_code FROM VOTES WHERE contestant_number = "Kelly Clauss"
SELECT contestant_name FROM contestants WHERE contestant_name LIKE "%Al%"
SELECT DISTINCT state FROM country WHERE independenceyear > 1950
SELECT DISTINCT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "republic"
SELECT count(*) FROM country WHERE GovernmentForm = "republic"
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT sum(surfacearea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Caribbean'
SELECT DISTINCT Continent FROM country WHERE Code = "Anguilla"
SELECT DISTINCT continent FROM city WHERE name = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT population, lifeexpectancy FROM country WHERE countryCode = "Brazil"
SELECT population, lifeexpectancy FROM country WHERE countryCode = "Brazil"
SELECT region, count(*) FROM city WHERE countrycode = "Angola" GROUP BY region
SELECT region, count(*) FROM city WHERE countryCode = "Angola" GROUP BY region
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND Region = 'Central'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT Name FROM country WHERE Continent = Asia ORDER BY LifeExpectancy LIMIT 1
SELECT name FROM country WHERE continent = Asia ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population), max(gnp) FROM city WHERE region = 'Asia'
SELECT count(*), max(gnpold FROM city WHERE region = 'Asia')
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Repubic"
SELECT sum(SurfaceArea) FROM country AS T1 JOIN continent AS T2 ON T1.Continent = T2.Name WHERE T2.Continent = 'Asia' OR T2.Continent = 'Europe'
SELECT sum(surfacearea) FROM country AS T1 JOIN continent AS T2 ON T1.continent = T2.continent WHERE T2.Name = 'Asia' OR T2.Name = 'Europe'
SELECT count(*) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP), count(*) FROM country WHERE GovernmentForm = "Territory"
SELECT avg(GNP), count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT language FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT governmentForm FROM country)
SELECT count(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countryCode = "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AFG"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Dutch" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch"
SELECT DISTINCT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "English" INTERSECT SELECT DISTINCT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "French"
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "English" INTERSECT SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "French"
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "English" INTERSECT SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT count(DISTINCT Continent FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM country WHERE GovernmentForm = "Republic")
SELECT DISTINCT language FROM countrylanguage WHERE IsOfficial = 'yes' AND GovernmentForm = 'republic'
SELECT name FROM city WHERE language = 'English' GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT * FROM city WHERE language = 'English'
SELECT name, populace, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT IsOfficial FROM countrylanguage WHERE GovernmentForm = "Head of State" AND Language = "Beatrix"
SELECT LANGUAGE FROM countrylanguage WHERE CountryCode = "Beatrix"
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE YEAR < 1930
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND founded < 1930
SELECT DISTINCT countryCode FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT countryCode FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT DISTINCT countryCode FROM city WHERE population < (SELECT min(population) FROM city WHERE continent = 'Asia')
SELECT countrycode FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT countrycode FROM city WHERE population > (SELECT min(population) FROM city WHERE continent = 'Africa')
SELECT DISTINCT region FROM city WHERE population > (SELECT min(population) FROM city WHERE continent = 'Asia')
SELECT DISTINCT countrycode FROM country WHERE language!= "english"
SELECT DISTINCT CASE WHEN Language!= "English" THEN CountryCode ELSE NULL END FROM countrylanguage
SELECT DISTINCT CASE WHEN Language!= "English" THEN CountryCode ELSE NULL END FROM countrylanguage
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name!= "English"
SELECT DISTINCT CASE WHEN IsOfficial!= "Republic" AND Language!= "English" THEN CountryCode END FROM country
SELECT DISTINCT CASE WHEN Language!= "English" AND GovernmentForm!= "Republic" THEN Code ELSE NULL END FROM country
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t2.continent = "Europe" AND t2.language!= "English"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' EXCEPT SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.language = 'English'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = "Chinese" AND t2.continent = "Asia"
SELECT DISTINCT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Asia" AND T2.Language = "Chinese"
SELECT name, foundedYear, territory FROM country ORDER BY population LIMIT 1
SELECT Name, founded, territory FROM city ORDER BY Population LIMIT 1
SELECT count(*), name, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT countryname, count(*) FROM countrylanguage GROUP BY countryname HAVING count(*) > 2
SELECT count(*), district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT governmentform, sum(population) FROM city GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT DISTINCT governmentform, sum(population) FROM city GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT avg(LifeExpectancy), sum(Population) FROM city GROUP BY Continent WHERE avg(LifeExpectancy) < 72
SELECT DISTINCT continent, sum(population), avg(lifeexpectancy) FROM city GROUP BY continent HAVING avg(lifeexpectancy < 72
SELECT Name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT name, territory FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT DISTINCT name FROM city WHERE continent = 'Europe' AND population = 80000
SELECT DISTINCT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT count(*), avg(population) FROM city WHERE countrycode = 'North America' AND surfacearea > 3000
SELECT DISTINCT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY Population DESC LIMIT 1
SELECT DISTINCT countrycode, language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 10
SELECT sum(T2.Population) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Spanish" GROUP BY T2.CountryCode
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT DISTINCT countryCode FROM countrylanguage WHERE language = "Spanish"
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share), min(share) FROM performance WHERE TYPE!= "Live final"
SELECT max(share), min(share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT DISTINCT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Date DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor GROUP BY Name ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT Name FROM conductor GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work > 2008
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work > 2008
SELECT DISTINCT T1.enterprise, count(*) FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id
SELECT count(*), T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC
SELECT DISTINCT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id WHERE TYPE = 'ensemble' AND Share = 'no'
SELECT ensemble FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM performance)
SELECT * FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT * FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2003
SELECT Record_Company FROM performance WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM performance WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.record_company = "CD" OR T2.record_company = "DVD"
SELECT count(*) FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.Type = "CD" OR T1.Type = "DVD"
SELECT YEAR_OF_WORK FROM conductor GROUP BY YEAR_OF_WORK HAVING count(*) > 1
SELECT YEAR_OF_WORK FROM conductor GROUP BY YEAR_OF_WORK HAVING count(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT DISTINCT name FROM highschooler WHERE grade = 10
SELECT student_id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT max(grade) FROM highschooler
SELECT max(grade) FROM highschooler
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id, count(*) FROM friend GROUP BY student_id
SELECT count(*), T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) >= 3)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM likes INTERSECT SELECT DISTINCT T1.student_id FROM likes AS T1 JOIN friend AS T2 ON T1.student_id = T2.student_id
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT count(*), student_id FROM likes GROUP BY student_id
SELECT count(*), student_id FROM likes GROUP BY student_id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT name FROM highschooler GROUP BY name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 AND T1.grade > 5
SELECT name FROM highschooler WHERE grade > 5 INTERSECT SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(grade) FROM highschooler WHERE student_id IN (SELECT student_id FROM friend)
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) > 1)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM professionals INTERSECT SELECT state FROM professionals INTERSECT SELECT state FROM owners
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT avg(age) FROM dogs WHERE date_departed = date_arrived
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" OR T1.cell_number > 2
SELECT id, last_name, cell_number FROM professionals WHERE state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE charge_amount > 1000)
SELECT T1.name FROM dogs AS T1 JOIN charges AS T2 ON T1.dog_id = T2.dog_id WHERE T2.charge_amount > 1000
SELECT first_name FROM professionals WHERE role_code = "Veterinarian" EXCEPT SELECT first_name FROM dogs
SELECT DISTINCT first_name FROM professionals WHERE role_code = "Veterinarian" EXCEPT SELECT DISTINCT first_name FROM dogs
SELECT professional_id, role_code, email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = "dog";
SELECT professional_id, role_code, email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = "Health Care")
SELECT T1.first_name, T1.last_name, T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.role FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.first_name, T1.last_name ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT min(charge_amount) FROM Charges GROUP BY charge_type
SELECT * FROM charges AS T1 JOIN treatment_treatments AS T2 ON T1.charge_id = T2.charge_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.charge_amount = (SELECT min(charge_amount) FROM charges)
SELECT T1.owner_id, T1.zip_code FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT professional_id, cell_number FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT professional_id, cell_number FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT charge_amount, treatment_type_description FROM charges
SELECT T1.charge_type, T1.charge_amount FROM charges AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T1.size_code FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T1.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = "Male"
SELECT breed_name, date_of_birth FROM dogs WHERE breed_code = "RARE"
SELECT breed_name, date_of_birth FROM breeds WHERE breed_code = "RARE"
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE state = "Virginia"
SELECT date_arrived, date_departed FROM dogs WHERE treatment_type_code = "Medical"
SELECT date_arrived, date_departed FROM dogs WHERE breed_code = "puppy"
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT last_name FROM dogs ORDER BY age LIMIT 1
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM dogs
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'healthcare'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Puppy"
SELECT count(*) FROM dogs AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = "puppy"
SELECT DISTINCT T1.role, T1.street, T1.city, T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT role, street, town, state FROM professionals WHERE town LIKE "%West%"
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs WHERE breed_code NOT IN (SELECT breed_code FROM breeds)
SELECT count(*) FROM dogs WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = "puppy")
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = "Veterinarian" EXCEPT SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = "Puppy_Healthcare"
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = "puppy")
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT max(age) FROM dogs
SELECT max(age) FROM dogs
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM professionals
SELECT email_address, cell_number, home_phone FROM OWNERS
SELECT DISTINCT breed_code, size_code FROM sizes
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id JOIN Dogs AS T4 ON T2.dog_id = T4.dog_id JOIN Breeds AS T5 ON T4.breed_code = T5.breed_code WHERE T5.breed_name = "given_name"
SELECT T1.first_name, T1.first_name, T1.last_name, T1.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T2.dog_id = T3.owner_id WHERE T1.role_code = 'Veterinarian'
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "France"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT DISTINCT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT COUNT(*), citizenship FROM singer GROUP BY citizenship
{"sql": "SELECT COUNT(DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID")
SELECT DISTINCT Citizenship FROM singer
SELECT T1.Citizenship, max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT T2.Name, T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT T1.Name, sum(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T1.birth_year < 1945 INTERSECT SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T1.birth_year > 1955
SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year < 1945 INTERSECT SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year > 1955
SELECT count(*) FROM other_available_features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties)
SELECT property_name FROM properties WHERE property_type_code = 'HSE' OR property_type_code = 'APARTMENT' GROUP BY property_name HAVING count(*) > 1
