SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, nationality, age FROM singer ORDER BY Age
SELECT name, nationality, age FROM singer ORDER BY age DESC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC
SELECT T1.Name, T1.Song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.year = (SELECT min(YEAR FROM concert) FROM concert)
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 20
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 20
SELECT T1.Country, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT count(*), T1.Name FROM singer AS T1 JOIN concert_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > T1.Average(Age)
SELECT T1.name, T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity BETWEEN 5000 AND 10000
SELECT T1.Location, T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID JOIN singer_in_concert AS T3 ON T2.concert_ID = T3.concert_ID GROUP BY T1.Location HAVING T1.Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY avg(capacity) LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.Name, COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT count(*), T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year > 2013 GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.Time) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 40 INTERSECT SELECT DISTINCT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age < 30
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T1.name, T1.theme, COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.name, T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(T2.Capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Name = (SELECT Name FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy'
SELECT min(weight) FROM Pets WHERE pet_type = "Puppy"
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = "F"
SELECT count(DISTINCT pettype FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten" OR T2.pettype = "Puppy"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Kitten" OR T2.pettype = "Puppy"
SELECT T1.fname FROM Stu AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "kitten" INTERSECT SELECT T1.fname FROM Stu AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "puppy"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = "Kitten" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = "Puppy"
SELECT T1.Major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "null"
SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = '' WHERE T1.age > 18
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "puppy" AND T2.StuID!= T1.StuID
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = "dog" AND T3.petAge > 2 AND T2.StuID NOT IN (SELECT StuID FROM Has_Pet WHERE petType = "kitten")
SELECT pet_type, weight FROM Pets ORDER BY pet_age ASC
SELECT pet_type, max(weight) FROM Pets GROUP BY pet_type
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT avg(T1.pet_age), max(T1.pet_age), T2.pet_type FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID GROUP BY T2.pet_type
SELECT avg(T1.pet_age), max(T1.pet_age) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID GROUP BY T1.pet_type
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT avg(weight) FROM Pets GROUP BY PetType
SELECT DISTINCT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid = 1
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT count(*), T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.Fname, T1.Lname HAVING count(*) > 1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*), T1.Continent, T1.ContinentName FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT T1.Continent, T1.ContinentID, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Continent = T2.Continent GROUP BY T1.ContinentID
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T2.FullName, T1.id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY Horsepower ASC LIMIT 1
SELECT makeid FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT t1.Model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.MakeId = t2.MakeId WHERE t2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Model = '1970'
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = '1970'
SELECT T1.make, T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id JOIN cars_data AS T3 ON T1.Model = T3.Model WHERE T3.Year > 1980
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T2.Maker > '' AND T2.Maker != '' GROUP BY T1.Continent
SELECT T1.Continent, COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT Maker FROM car_makers GROUP BY Maker ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT count(*), T1.id, T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT max(Accelerate) FROM car_names WHERE make = "amc hornet sportabout (sw)"
SELECT sum(Accelerate) FROM cars_data WHERE make = 'AMC' AND model = 'Hornet Sportabout (SW)'
SELECT count(*) FROM car_makers WHERE Maker = "Peugeot"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.continent = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = "Toyota" AND T1.cylinders = 4
SELECT avg(Edispl) FROM car_data WHERE Cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T2.Maker = "Toyota" AND T1.year = 1974 AND T1.cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 1
SELECT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Maker NOT IN (SELECT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker)
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN model_list AS T3 ON T2.Id = T3.Id GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(T1.Horsepower), T2.FullName FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 3
SELECT max(Horsepower) FROM car_data WHERE Cylinders = 3
SELECT Id FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE Maker = 'Volvo'
SELECT avg(Edispl) FROM car_names WHERE make = 'Volvo'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT T1.Make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Make ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN car_makers AS t2 ON t1.Maker = t2.Id GROUP BY t1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.year = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Maker = "American Motor Company"
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.type FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.FullName = "General Motors" AND T2.weight > 3500
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T1.FullName = "General Motors" OR T2.Model > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT max(Accelerate) FROM cars_data
SELECT max(Accelerate) FROM cars_data
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = "Volvo" ORDER BY T1.Accelerate ASC
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid ORDER BY T1.accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC
SELECT makeid, fullname FROM car_makers WHERE id NOT IN (SELECT id FROM cars_data WHERE cylinders > 3)
SELECT Id, FullName FROM car_makers WHERE Id NOT IN (SELECT Id FROM cars_data WHERE Cylinders < 4)
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year < 1980 AND T1.cylinders = 8
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 AND id NOT IN (SELECT id FROM car_makers WHERE maker = 'Ford')
SELECT DISTINCT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname HAVING count(*) > 1
SELECT DISTINCT countryname FROM countries EXCEPT SELECT DISTINCT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid
SELECT DISTINCT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) > 3
SELECT Id, Maker FROM car_makers GROUP BY Maker HAVING count(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) >= 3
SELECT Id, FullName FROM car_makers WHERE CountryId IN ( SELECT CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3 UNION SELECT CountryId FROM model_list WHERE Maker = 'Fiat')
SELECT Id, FullName FROM car_makers GROUP BY Id HAVING count(*) > 3 UNION SELECT Id, FullName FROM car_makers WHERE country = "USA"
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.AirwayName, T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Country = "USA"
SELECT T1.abb, T1.abbr FROM airlines AS T1 JOIN airports AS T2 ON T1.abbreviation = T2.abbreviation WHERE T2.country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM airports
SELECT sum(DISTINCT count(*) FROM flights)
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.Town, T1.State FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "Alton"
SELECT T1.City, T1.CountryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE CountryAbbrev = "GB" AND City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'Terminal ATO'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE destairport = 'ABERDEEN'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destairport = T2.airportcode WHERE T2.city = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" AND DestAirport = "Ashley"
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "USA" AND T1.Airline = "United"
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE SourceAirport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights WHERE destairport = "ABERDEEN"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.Town FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.Town ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT code FROM airports GROUP BY airportcode ORDER BY count(*) ASC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.Airway = T2.Airway GROUP BY T1.Airway ORDER BY count(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airwayid, T1.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airwayid HAVING count(*) <= 5
SELECT Abbrev FROM airlines WHERE CountryAbbrev = "USA" GROUP BY Abbrev ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = "AHD"
SELECT T1.Airwayid FROM airways AS T1 JOIN flights AS T2 ON T1.Airwayid = T2.Airwayid WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.AirportName = "AHD"
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport JOIN airports AS T3 ON T1.AirportCode = T3.AirportCode WHERE T3.AirportName = 'APG' INTERSECT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport JOIN airports AS T3 ON T1.AirportCode = T3.AirportCode WHERE T3.AirportName = 'CVO'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG" INTERSECT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "CVO"
SELECT DISTINCT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportCode!= T2.AirportCode WHERE T2.AirportName = 'CVO'
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "CVO" EXCEPT SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "APG"
SELECT DISTINCT T1.Airwayid FROM airways AS T1 JOIN flights AS T2 ON T1.Airwayid = T2.Airwayid GROUP BY T1.Airwayid HAVING count(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM airlines WHERE Abbreviation = "United Airlines"
SELECT flightno FROM flights WHERE airline = 'United'
SELECT DISTINCT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "Scotland" AND T2.CountryAbbrev = "AB"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "Aberdeen" OR T2.DestAirport = "Abilene"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*), LOCATION FROM employee GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T2.Name, T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.District ORDER BY count(*) DESC LIMIT 1
SELECT min(Number_products), max(Number_products) FROM shop
SELECT min(Number_products), max(Number_products) FROM shop
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM employee ORDER BY age DESC LIMIT 1
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*), T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.Shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID GROUP BY T1.name
SELECT sum(T1.premium) FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(Bonus) FROM evaluation
SELECT * FROM employee AS T1 JOIN hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT * FROM hiring
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM shop WHERE Number_products > 10000
SELECT DISTINCT T1.District FROM shop AS T1 JOIN market AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 INTERSECT SELECT DISTINCT T1.District FROM shop AS T1 JOIN market AS T2 ON T1.District = T2.District WHERE T2.Number_goods > 10000
SELECT count(DISTINCT LOCATION FROM shop)
{"sql": "SELECT count(DISTINCT LOCATION FROM shop")"}
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id, t1.paper_name, t1.paper_description FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id
SELECT document_id, document_name, document_description FROM Documents
SELECT document_name, T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_name, T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT document_id, template_id, document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT T1.document_id, T1.template_id, T2.paragraph_text FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id WHERE T1.template_type_code = "Paper" AND T2.paragraph_text = "Robbin CV"
SELECT count(DISTINCT document_type_code) FROM Templates
SELECT count(DISTINCT document_type_code) FROM documents
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = 'PPT'
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = "PPT"
SELECT T1.Template_ID, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT template_id, count(*) FROM Templates GROUP BY template_id
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT document_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT document_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT T1.Template_ID, T1.Version_Number, T1.Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT template_id, template_type_code, template_details FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT DISTINCT Template_Type_Code FROM Ref_Template_Types
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT template_id FROM Templates WHERE Template_Type_Code = 'PP' OR Template_Type_Code = 'PPT'
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT template_type_code, template_details FROM Templates WHERE template_id IN (SELECT template_id FROM Templates WHERE version_number > 5)
SELECT T1.Template_Type_Code, T2.Template_details FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Version_Number > 5
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING count(*) < 3
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(Version_Number), Template_type_code FROM Templates GROUP BY Template_type_code
SELECT min(T1.template_type_code), T2.layout_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.layout_type_code
SELECT Template_Type_Code FROM Templates WHERE Template_Type_Code = "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_name = "Database"
SELECT Document_name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "BK")
SELECT t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t1.template_id = t3.template_id WHERE t3.template_type_code = "BK"
SELECT T1.template_type_code, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates JOIN Documents ON Templates.Template_ID = Documents.Template_ID
SELECT Template_Type_Code FROM Ref_Template_Types EXCEPT SELECT Template_Type_Code FROM Documents
SELECT Template_Type_Code, Template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id JOIN Paragraphs AS T3 ON T2.document_id = T3.document_id
SELECT T1.layout_id FROM templates AS T1 JOIN paragraphs AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.paragraph_text = "Presentation"
SELECT Template_ID FROM Templates WHERE Template_Type_Description = "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Document_name = 'Summer Show'
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Document_name = "Summer Show"
SELECT T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_id = T2.Document_id WHERE T1.Template_id = "Korea"
SELECT Paragraph_text FROM paragraphs WHERE Paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.Paragraph_id, T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.Document_id WHERE T2.Document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, count(*), T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.paper_id, T1.paper_name, count(*) FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.paper_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id, t1.name FROM Templates AS t1 JOIN Paragraphs AS t2 ON t1.template_id = t2.document_id GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' OR paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM course
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC
SELECT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT count(*), Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name, T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T1.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T1.Name ORDER BY T1.Name
SELECT T1.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID WHERE T1.Grade = "Math"
SELECT Name FROM teacher WHERE Name LIKE '%math%'
SELECT T1.Name, COUNT(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_OF_membership > 4 ORDER BY LEVEL_OF_membership DESC
SELECT avg(T2.Age) FROM visitor AS T1 JOIN museum AS T2 ON T1.ID = T2.Museum_ID WHERE T1.Level_of_membership <= 4
SELECT name, LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY Age
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.ID, T1.Name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID HAVING COUNT(*) > 1
SELECT T1.ID, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_id GROUP BY T1.ID ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID ORDER BY sum(T2.Num_of_Ticket) DESC LIMIT 1
SELECT avg(T1.Num_of_Ticket), max(T1.Num_of_Ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID WHERE T2.level_of_membership = 1
SELECT T2.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Open_Year < 2009 INTERSECT SELECT T2.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Open_Year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id > > 2010)
SELECT count(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age), avg(winner_age) FROM matches GROUP BY loser_id, winner_id
SELECT avg(loser_age), avg(winner_age) FROM matches GROUP BY loser_id, winner_id
SELECT avg(winner_rank) FROM matches GROUP BY winner_rank
SELECT avg(winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY T2.ranking DESC LIMIT 1
SELECT loser_rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
{"sql": "SELECT count(DISTINCT loser_name FROM matches WHERE loser_id NOT IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner_id IN (SELECT loser_id FROM matches WHERE winner
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 OR T1.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age ASC
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name, T1.last_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches GROUP BY loser_id ORDER BY sum(minutes) DESC LIMIT 2
SELECT T1.winner_name, T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking)
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT sum(T1.ranking), T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT sum(T1.minutes), T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.ranking
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_age ASC LIMIT 3
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 3
SELECT count(DISTINCT T1.player_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = 'WTA Championships' AND T1.hand = 'left'
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT T1.first_name, T1.last_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id GROUP BY T3.player_id ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY T2.loser_rank_points DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(T1.killed), min(T1.killed) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T2.id
SELECT avg(injured) FROM death
SELECT T1.tonnage, T2.death FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT T1.id, T1.name FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id = T2.id WHERE T1.ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
{"sql": "SELECT DISTINCT T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T1.id = T3.lost_in_battle JOIN battle AS T4 ON T2.id = T4.id JOIN ship AS T5 ON T3.id = T5.lost_in_battle JOIN battle AS T6 ON T4.id = T6.id JOIN ship AS T7 ON T5.id = T7.lost_in_battle JOIN battle AS T8 ON T6.id = T8.id JOIN ship AS T9 ON T7.id = T9.lost_in_battle JOIN battle AS T10 ON T8.id = T10.id JOIN ship AS T11 ON T9.id = T11.lost_in_battle JOIN battle AS T12 ON T10.id = T12.id JOIN ship AS T13 ON T11.id = T13.lost_in_battle JOIN battle AS T14 ON T12.id = T14.id JOIN ship AS T15 ON T13.id = T15.lost_in_battle JOIN battle AS T16 ON T14.id = T16.id JOIN ship AS T17 ON T15.id = T17.lost_in_battle JOIN battle AS T18 ON T16.id = T18.id JOIN ship AS T19 ON T17.id = T19.lost_in_battle JOIN battle AS T20 ON T18.id = T20.id JOIN ship AS T21 ON T19.id = T21.lost_in_battle JOIN battle AS T22 ON T20.id = T22.id JOIN ship AS T23 ON T21.id = T23.lost_in_battle JOIN battle AS T24 ON T22.id = T24.id JOIN ship AS T25 ON T23.id = T25.lost_in_battle JOIN battle AS T26 ON T24.id = T26.id JOIN ship AS T27 ON T25.id = T27.lost_in_battle JOIN battle AS T28 ON T26.id = T28.id JOIN ship AS T29 ON T27.id = T29.lost_in_battle JOIN battle AS T30 ON T28.id = T30.id JOIN ship AS T31 ON T29.id = T31.lost_in_battle JOIN battle AS T32 ON T30.id = T32.id JOIN ship AS T33 ON T31.id = T33.lost_in_battle JOIN battle AS T34 ON T32.id = T34.id JOIN ship AS T35 ON T33.id = T35.lost_in_battle JOIN battle AS T36 ON T34.id = T36.id JOIN ship AS T37 ON T35.id = T37.lost_in_battle JOIN battle AS T38 ON T36.id = T38.id JOIN ship AS T39 ON T37.id = T39.lost_in_battle JOIN battle AS T40 ON T38.id = T40.id JOIN ship AS T41 ON T39.id = T41.lost_in_battle JOIN battle AS T42 ON T40.id = T42.id JOIN ship AS T43 ON T41.id = T43.lost_in_battle JOIN battle AS T44 ON T42.id = T44.id JOIN ship AS T45 ON T43.id
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage!= '225'
SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T1.id = T3.id WHERE T3.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T1.id = T3.id WHERE T3.name = 'HMS Atalanta'
SELECT T1.name, T1.bulgarian_commander, T1.result FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'English Channel' AND T2.disposition_of_ship = 'lost'
SELECT T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.name LIKE '%East%'
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN current_address AS T2 ON T1.address_id = T2.address_id
SELECT T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Transcripts AS T2 ON T1.address_id = T2.address_id
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name LIKE '%math%'
SELECT course_description FROM Courses
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port"
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name FROM Degree_Programs
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Departments AS T4 ON T3.department_id = T4.department_id
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id JOIN Student_Enrolment_courses AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN Students AS T4 ON T3.student_id = T4.student_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_description FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.department_description FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_id, T1.department_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id, degree_summary_name FROM Degree_Programs GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.last_name, count(*), T4.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Degree_Programs AS T4 ON T3.degree_program_id = T4.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name, count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT section_name FROM Sections WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id)
SELECT T1.department_name FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id WHERE T2.student_enrolment_id = "null"
SELECT course_name FROM Courses WHERE course_id IN (SELECT course_id FROM Student_Enrolment_Courses)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Students AS T3 ON T2.student_enrolment_id = T3.student_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id JOIN Student_Enrolment AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = ""
SELECT DISTINCT T1.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county!= "North Carolina"
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Courses AS T4 ON T3.course_id = T4.course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered ASC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.degree_program_id = (SELECT degree_program_id FROM Degree_Programs ORDER BY degree_summary_name ASC LIMIT 1)
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id ORDER BY T2.transcript_date ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id!= current_address_id
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.first_name!= T2.first_name
SELECT T1.address_id, T1.address_line FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.date_first_registered) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Semesters AS T3 ON T2.semester_id = T3.semester_id
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM Students ORDER BY date_first_registered ASC
SELECT transcript_date FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT count(DISTINCT student_enrolment_id) FROM Student_Enrolment AS T1 JOIN Student_Enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Courses AS T3 ON T2.course_id = T3.course_id
SELECT count(*), T1.course_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.course_id
SELECT student_id FROM Students GROUP BY student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 1 INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 2
SELECT T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 1 INTERSECT SELECT T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 2
SELECT count(DISTINCT permanent_address_id) FROM Addresses
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY other_student_details
SELECT * FROM Students ORDER BY first_name ASC
SELECT * FROM Sections WHERE section_name = "h"
SELECT section_description FROM Sections WHERE section_name = 'h'
SELECT first_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT first_name, last_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT DISTINCT directed_by FROM Cartoon WHERE Written_by = "Ben Jones"
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT Directed_by FROM Cartoon ORDER BY Air_Date
SELECT title, directed_by FROM Cartoon ORDER BY Original_air_date
SELECT DISTINCT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones" OR Written_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Country = "India" GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, content FROM TV_channel GROUP BY content
SELECT count(DISTINCT series_name, content FROM TV_channel GROUP BY content
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Channel = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC
SELECT Language FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT count(*), Language FROM TV_Channel GROUP BY Language
SELECT T1.series_name FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Series_name = "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.Channel = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share), max(Share) FROM TV_series
SELECT max(Share), min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.serial_name FROM TV_series AS T1 JOIN Channel AS T2 ON T1.id = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE Series_name = "Sky Radio"
SELECT count(*), Directed_by FROM Cartoon GROUP BY Directed_by
SELECT count(*), Directed_by FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T1_production_number, T1.channel FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id ORDER BY T1.Original_air_date DESC LIMIT 1
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'HD'
SELECT Package_Option FROM TV_Channel WHERE Hight_definition_TV = 'HD'
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.State FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel EXCEPT SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT State FROM Cartoon WHERE Written_by!= "Todd Casey"
SELECT T1.series_name, T1.State FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name, T1.State FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language!= "English"
SELECT T1.pixel_aspect_ratio PAR, T1.Country FROM TVCHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Language!= "english"
SELECT id FROM TV_channel GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE Channel = "No" OR Directed_by!= "Ben Jones"
SELECT id FROM TV_channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones" )
SELECT package_option FROM TV_channel WHERE directed_by!= "Ben Jones"
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones" )
SELECT count(*) FROM people WHERE Nationality = "American"
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC
SELECT max(T1.Best_Finish) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Money_Rank < 200000
SELECT max(T1.Final_Table_Made FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000)
SELECT Name FROM people WHERE Nationality = "American"
SELECT Name FROM people WHERE Nationality = "American"
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT Name FROM people ORDER BY Birth_Date ASC
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
SELECT Birth_Date FROM people ORDER BY Earnings ASC LIMIT 1
SELECT Money_Rank FROM people ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM people WHERE Height > 150
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT Name FROM people ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT count(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Car Gamer"
SELECT Name FROM people WHERE Nationality!= "American"
SELECT count(DISTINCT nationality) FROM people
SELECT count(DISTINCT nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM AREA_CODE_STATE GROUP BY state
SELECT created FROM VOTES WHERE state = "CA"
SELECT DISTINCT contestant_name FROM CONTESTANTS WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.created FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.area_code = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.area_code = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT DISTINCT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(DISTINCT GovernmentForm FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republiks"
SELECT sum(SurfaceArea) FROM country WHERE Region = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Name FROM country WHERE Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AR" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population, LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Region, COUNT(*) FROM city WHERE CountryCode = "Angola" GROUP BY Region;
SELECT Region, COUNT(*) FROM city WHERE CountryCode = "Angola" GROUP BY Region
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Central"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(Population), max(GNP) FROM country WHERE Continent = Asia
SELECT count(*), max(gnpold) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T1.Code
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Repubic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Repubic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code2 WHERE T1.Continent = "Asia" OR T1.Continent = "Europe"
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(GNP), count(*) FROM country WHERE GovernmentForm = "Territory" GROUP BY country.Code
SELECT avg(GNP), count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "United States" GROUP BY T1.Code
SELECT count(DISTINCT Language FROM countrylanguage
SELECT count(DISTINCT Language FROM countrylanguage
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Name = "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AFG"
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode GROUP BY t1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT Continent FROM country WHERE Continent = "Africa" GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Netherlands" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Dutch"
SELECT Name FROM country WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT Name FROM country WHERE Language = "French" INTERSECT SELECT Name FROM country WHERE Language = "English"
SELECT DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" INTERSECT SELECT DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT count(DISTINCT Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "China"
SELECT DISTINCT Region FROM country WHERE Language = "english" OR Language = "Dutch"
SELECT DISTINCT Region FROM country WHERE Language = "Dutch" OR Language = "English"
SELECT DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" OR t2.Language = "Dutch"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.GovernmentForm = "Republic" GROUP BY t1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republik" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM city WHERE Population > 100000 AND Language = "english"
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, count(*), lifeexpectancy FROM country WHERE continent = 'Asia' GROUP BY name ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English" GROUP BY CountryCode
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country WHERE countrycode NOT IN ( SELECT countrycode FROM countrylanguage WHERE language = 'english' )
SELECT count(*) FROM country WHERE CountryCode NOT IN ( SELECT CountryCode FROM countrylanguage WHERE Language = "english" )
SELECT Language FROM countrylanguage WHERE CountryCode = "BE"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Beatrix"
SELECT count(DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.`IndependenceYear` < 1930)
SELECT count(DISTINCT t3.Language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode JOIN country AS t3 ON t1.Code = t3.Code2 WHERE t1.year < 1930)
SELECT Name FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT CountryCode FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT max(Population) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Africa' AND Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')
SELECT country FROM country WHERE Continent = 'Asia' AND Population > (SELECT min(Population) FROM country WHERE Continent = 'Africa')
SELECT DISTINCT t1.Name FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode WHERE t1 Continent = "Asia" AND t2.Population > (SELECT max(Population) FROM country WHERE Continent = "Africa")
SELECT Code FROM country WHERE Language!= "English"
SELECT DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Name!= "English"
SELECT DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language!= "English"
SELECT DISTINCT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language!= "English"
SELECT Code FROM country WHERE Language!= "English" EXCEPT SELECT Code FROM country WHERE GovernmentForm = "Republic"
SELECT Code FROM country WHERE Language!= "English" EXCEPT SELECT GovernmentForm FROM country WHERE GovernmentForm = "Republic"
SELECT DISTINCT t1.Name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Europe" AND t2.Language!= "English"
SELECT Name FROM city WHERE CountryCode = "Europe" EXCEPT SELECT Name FROM city WHERE Language = "english"
SELECT DISTINCT t1.Name FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Asia" AND t2.Continent = "Asia" AND t2.Language = "Chinese"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Asia" AND T2.Language = "Chinese"
SELECT name, foundedYear, territory FROM country ORDER BY population ASC LIMIT 1
SELECT Name, founded, Territory FROM country ORDER BY Population ASC LIMIT 1
SELECT count(*), T1.Name, T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT name, count(*), leader FROM country GROUP BY name ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*), district FROM city GROUP BY district HAVING count(*) > (SELECT avg(Population) FROM city)
SELECT district, count(*) FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city
SELECT GovernmentForm, COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING avg(LifeExpectancy) > 72 GROUP BY T1.GovernmentForm
SELECT governmentform, COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING avg(LifeExpectancy) > 72
SELECT avg(LifeExpectancy), count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent HAVING avg(T1.LifeExpectancy) < 72
SELECT Continent, COUNT(*), AVG(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT name, SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name, Region FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT sum(population), avg(SurfaceArea) FROM country WHERE continent = 'North America' AND surfacearea > 3000 GROUP BY region
SELECT count(*), avg(T1.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'North America' AND T1.Population > 3000 GROUP BY T2.Code
SELECT name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t3.name, t3.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN city AS t3 ON t1.code = t3.countrycode GROUP BY t3.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.Name ORDER BY T1.Population DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.Code
SELECT Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Spanish" GROUP BY T1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Code FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode HAVING COUNT(*) > = "100"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT orchestra FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final" GROUP BY TYPE
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final" GROUP BY TYPE
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor GROUP BY Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Work > 2008
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Work > 2008
SELECT count(*), T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT count(*), T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT T1.Orchestra_ID FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Conductor_ID FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN show AS T3 ON T2.Performance_ID = T3.Performance_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM conductor WHERE Conductor_ID NOT IN (SELECT Conductor_ID FROM performance)
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Type = "Ensemble" AND T2.Performance_ID NOT IN (SELECT Performance_ID FROM performance WHERE TYPE = "Ensemble")
SELECT * FROM orchestra WHERE YEAR_OF_FOUNDED > 2003 INTERSECT SELECT * FROM orchestra WHERE YEAR_OF_FOUNDED < 2003
SELECT T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded > 2003
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.record_company = "CD" OR T2.record_company = "DVD"
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.record_company = 'CD' OR T2.record_company = 'DVD'
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.year_of_work HAVING count(*) > 1
SELECT T1.Year_of_Work FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT count(*), T1.grade FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(*) FROM Friend GROUP BY student_id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.ID
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = T1.id WHERE T1.name = "Kyle"
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.ID = T2.friend_id WHERE T1.name = "Kyle"
SELECT id FROM highschooler WHERE id NOT IN (SELECT T1.id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id)
SELECT id FROM highschooler EXCEPT SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.id FROM Friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = T2.id)
SELECT T1.id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id
SELECT student_id FROM Likes INTERSECT SELECT student_id FROM Friend
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.student_id
SELECT count(*), T1.id FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT count(*), T1.id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.liked_id GROUP BY T1.ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2
SELECT name FROM Highschooler GROUP BY name HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id
SELECT avg(grade) FROM Highschooler WHERE id IN (SELECT T1.id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id GROUP BY T1.liked_id HAVING count(*) > 1)
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT T1.id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.id HAVING count(*) > 1)
SELECT state FROM professionals INTERSECT SELECT state FROM veterinarians
SELECT state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T1.professional_id = T3.professional_id
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical"
SELECT avg(age) FROM dogs WHERE date_departed > date_of_adopted
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" GROUP BY T1.first_name, T1.last_name HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" GROUP BY T1.id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000)
SELECT T1.name FROM Dogs AS T1 JOIN Charges AS T2 ON T1.dog_id = T2.dog_id WHERE T2.charge_amount > 1000
SELECT DISTINCT T1.first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = "Veterinarian" EXCEPT SELECT T1.first_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = "Dog"
SELECT DISTINCT T1.first_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = "Veterinarian" OR T1.role_code = "Guardian" EXCEPT SELECT T1.first_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.professional_id WHERE T2.name = "dog"
SELECT professional_id, role_code, email_address FROM Professionals WHERE role_code!= "Veterinarian"
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.first_name, T1.last_name, T1.first_name ||'' || T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.owner_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Charges AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.charge_amount) ASC
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id JOIN Owners AS T4 ON T3.owner_id = T4.owner_id WHERE T1.charge_amount = ( SELECT min(charge_amount) FROM Charges )
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id JOIN Dogs AS T4 ON T2.dog_id = T4.dog_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.dog_id = T3.owner_id AND T3.id = T1.owner_id
SELECT T1.date_of_treatment, T1.first_name, T1.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.first_name = "Veterinarian"
SELECT T1.charge_amount, T1.treatment_type_code FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.charge_type, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name, T1.last_name
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = "Guardian"
SELECT T1.name, date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = "Medical" GROUP BY T1.breed_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived FROM Dogs WHERE date_departed < date_arrived
SELECT T1.date_arrived, T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Health care"
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health"
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health"
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy"
SELECT count(DISTINCT T1.professional_id) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy"
SELECT T1.role, T1.street, T1.city, T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT role, street, town, state FROM Professionals WHERE town LIKE '%West%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT charge_amount FROM Charges ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT count(*) FROM Dogs WHERE id NOT IN (SELECT dog_id FROM Dogs WHERE breed_code = "Puppy")
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT T1.dog_id FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = "Puppy")
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = "Veterinarian" AND T2.treatment_type_code = "TREATMENT FOR PUPPIES" GROUP BY T1.professional_id HAVING count(*) = 0
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = "Veterinarian" EXCEPT SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy"
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs
SELECT avg(age) FROM Dogs
SELECT age FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT max(age) FROM Dogs
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM Charges GROUP BY charge_type ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number FROM Professionals
SELECT email_address, cell_number, home_phone FROM OWNERS
SELECT breed_code, size_code FROM sizes UNION SELECT breed_code, treatment_type_code FROM treatment_types
SELECT DISTINCT T1.breed_name, T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = T1.breed_code
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T2.dog_id = T3.owner_id JOIN Dogs AS T4 ON T2.dog_id = T4.dog_id WHERE T3.first_name = "Vet"
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
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT count(*), Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1
SELECT T1.Citizenship, max(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions), country FROM singer GROUP BY country
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title, T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_code FROM Ref_Feature_Types WHERE feature_type_name = "AirCon"
SELECT T1.property_type_description FROM Ref_property_types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT DISTINCT T1.property_name FROM Properties AS T1 JOIN Other_Property_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.feature_id IN (SELECT feature_id FROM Other_Available_Features WHERE feature_type_code = "HSE") OR T2.feature_id IN (SELECT feature_id FROM Other_Available_Features WHERE feature_type_code = "APT" GROUP BY feature_id HAVING count(*) > 1)
