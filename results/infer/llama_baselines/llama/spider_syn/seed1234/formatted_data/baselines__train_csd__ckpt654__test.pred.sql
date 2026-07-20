SELECT count(*) FROM singer WHERE Is_male = 'Y'
SELECT count(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE Country = "France"
SELECT T2.Song_Name, T1.Song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age LIMIT 1
SELECT DISTINCT T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT count(*), T1.Name FROM singer AS T1 JOIN stadium AS T2 ON T1.Country = T2.Country GROUP BY T1.Name
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING avg(T1.Age) > (SELECT avg(Age) FROM singer)
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.Name, T2.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Capacity BETWEEN 5000 AND 10000
SELECT T2.Location, T2.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT T2.Name, T2.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID ORDER BY avg(T1.Average) DESC LIMIT 1
SELECT T2.Name, T2.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID ORDER BY avg(T1.Highest) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT T2.Name, COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year >= 2014 GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.year > 2013 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT max(Show_time) FROM concert GROUP BY Show_time
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T2.name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.theme
SELECT T2.name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID WHERE T3.concert_Name LIKE '%Hey%'
SELECT T1.Name, T1.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Position FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T2.Name, T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT count(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy'
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy'
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT max(weight), pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM Student WHERE age > 20
SELECT count(*) FROM Student WHERE age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = "F"
SELECT count(*) FROM Student WHERE sex = 'F' AND StuID IN (SELECT StuID FROM Has_Pet WHERE pettype = 'Puppy')
SELECT count(DISTINCT pettype) FROM Has_Pet WHERE sex = 'M'
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' INTERSECT SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy'
SELECT major, age FROM Student EXCEPT SELECT T1.major, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T1.fname, T1.lname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid!= "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat'
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "kitten"
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type, pet_weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT avg(pet_age), max(pet_age), pet_type FROM Pets GROUP BY pet_type
SELECT pettype, avg(pet_age), max(pet_age) FROM Pets GROUP BY pettype
SELECT pettype, avg(weight) FROM Pets GROUP BY pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Has_Pet JOIN Student ON StuID = Has_Pet.StuID WHERE LName = 'Smith'
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT T1.StuID, count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.Fname, T1.Lname HAVING count(*) > 1
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.Fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.Continent, T1.ContinentID, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContinentID
SELECT T1.ContId, T1.Continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data ORDER BY Horsepower LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.ModelId ORDER BY T2.Horsepower LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Model = '1970'
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Model = '1970'
SELECT T1.Make, T1.Year FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id ORDER BY T1.Year LIMIT 1
SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.year > 1980
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T1.Maker, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT T1.id, T1fullname, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = "amc hornet sportabout (sw)"
SELECT sum(accelerate) FROM cars_data WHERE make = 'AMC' AND model = 'Hornet Sportabout (SW)';
SELECT count(*) FROM car_makers WHERE fullname LIKE "%French%"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers WHERE country = 'United States'
SELECT avg(MPG) FROM car_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.FullName = "Toyota" AND T1.year = 1974 AND T1.cylinders = 8
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.CountryName, T1.Id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT T1.CountryName, T1.Id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower), T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) = 3
SELECT max(Horsepower), T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY max(Horsepower) DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.MPG = (SELECT max(MPG) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE make = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE make = 'Volvo'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "American Motor Company"
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker WHERE T2.FullName = 'American Motor Company'
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT T1.Maker, T1.ModelId FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) > 3
SELECT DISTINCT T1.type FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.FullName = "General Motors" AND T2.Weight > 3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T1.Maker = T3.Id WHERE T3.FullName = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT YEAR FROM cars_data WHERE weight > 3000
SELECT make, model FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT max(Accelerate) FROM cars_data
SELECT T1.Id, T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T2.FullName = "volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Id WHERE T2.Model = "Volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT count(*) FROM car_makers GROUP BY country_id HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.makeid, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.cylinders > 3 GROUP BY T1.makeid HAVING count(*) > 1
SELECT Id, FullName FROM car_makers WHERE Id NOT IN (SELECT Id FROM cars_data WHERE Cylinders < 4)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT * FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.FullName = 'Ford Motor Company'
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN car_names AS t2 ON t1.Model = t2.Model WHERE t1.Weight < 3500 EXCEPT SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN car_names AS t2 ON t1.Model = t2.Model WHERE t2.Maker = "Ford"
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) > 1
SELECT DISTINCT countryname FROM countries WHERE continent = 'Asia'
SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker HAVING count(*) >= 2 INTERSECT SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make GROUP BY T1.Maker HAVING count(*) >= 3
SELECT T1.Id, T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN model_list AS T3 ON T2.Id = T3.Maker WHERE T3.Model = 'fiat' GROUP BY T1.CountryName HAVING count(*) > 3
SELECT Id, FullName FROM car_makers GROUP BY Id HAVING count(*) > 3 UNION SELECT Id, FullName FROM car_makers WHERE Country = 'USA' INTERSECT SELECT Id, FullName FROM car_makers WHERE Country = 'France'
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT T1.CountryAbbrev FROM airlines AS T1 JOIN flights AS T2 ON T1.Abbreviation = T2.Airline WHERE T1.Abbreviation = "Jetblue Airways"
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T1.AirwayName, T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Country = "USA"
SELECT T1.Airwayname, T1.Airportname FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.Airline WHERE T2.Country = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT count(*) FROM airlines
SELECT sum(T1.Distinct sum(T2.Distinct(T1.Distinct(T1.Airline))) ) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Abbrev FROM airlines WHERE Abbrev = "UAL"
SELECT Airway FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city, countryAbbrev FROM airports WHERE airportname = 'Alton'
SELECT T1.city, T1.countryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE destairport = 'ABD'
SELECT count(*) FROM flights WHERE destairport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE DestAirport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE Airline = "Jetblue Airways"
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD'
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen' AND airline = 'United'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" AND airline = "United"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.Code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) LIMIT 1
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Airwayid, T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.Airwayid ORDER BY count(*) LIMIT 1
SELECT T1.Airline, T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT T2.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.Country = "USA" AND T2.City = "AHD"
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.AirportName = "AHD"
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportCode = 'APG' INTERSECT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportCode = 'CVO'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "APG" INTERSECT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "CVO"
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.AirportName = 'CVO' EXCEPT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.AirportName = 'APG'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = 'CVO' EXCEPT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = 'APG'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airway HAVING count(*) >= 10
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.Airway HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T2.city = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T2.city = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "Aberdeen" OR T2.DestAirport = "Abilene"
SELECT count(*) FROM flights WHERE destairport = 'ABR' OR sourceairport = 'ABI'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age ASC
SELECT count(*), T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_name GROUP BY T1.city
SELECT count(*), T1.location FROM shop GROUP BY T1.location
SELECT T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id WHERE T2.age < 30 GROUP BY T1.name HAVING count(*) > 1
SELECT T2.name FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T2.name HAVING count(*) > 1
SELECT count(*), T1.city FROM shop AS T1 JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID GROUP BY T1.city
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T2.name, T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.Shop_id = T2.Shop_id GROUP BY T1.District ORDER BY count(*) DESC LIMIT 1
SELECT min(Number_products), max(Number_products) FROM shop
SELECT min(Number_products), max(Number_products) FROM shop
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM employee ORDER BY age DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name, count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT T2.Name, count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T2.Name
SELECT sum(T2.premium) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.year_awarded > 2015
SELECT sum(Bonus) FROM evaluation WHERE YEAR_awarded > 2015
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM shop WHERE Number_products > 10000
SELECT district FROM shop WHERE Number_products < 3000 INTERSECT SELECT district FROM market WHERE Number_products > 10000
SELECT count(DISTINCT LOCATION FROM shop)
SELECT count(DISTINCT LOCATION FROM shop)
SELECT count(*) FROM Documents
SELECT count(*) FROM Paragraphs
SELECT paper_id, paper_name, paper_description FROM papers
SELECT document_id, template_id, template_type_code, template_description FROM Templates GROUP BY document_id, template_id, template_type_code ORDER BY document_id
SELECT T1.document_name, T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_name, T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.paper_id, T1.layout_id, T2.document_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT T1.paper_id, T1.layout_id, T2.document_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT document_id) FROM Paragraphs
SELECT count(DISTINCT document_type) FROM Documents
SELECT count(*) FROM Documents WHERE Template_Type_Code = "PPT"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "PPT"
SELECT T1.layout_id, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_id
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Templates GROUP BY template_id HAVING count(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates GROUP BY Template_Type_Code
SELECT T1.layout_id, T2.version_number, T2.template_type_code FROM Templates AS T1 JOIN Document_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_id, template_type_code, template_details FROM Templates GROUP BY template_type_code, template_details
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT template_type_code, layout_type FROM Templates WHERE version_number > 5
SELECT T1.Template_Type_Description, T2.Template_Type_Name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Version_Number > 5
SELECT Template_Type_Code, count(*) FROM Templates GROUP BY Template_Type_Code
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT Template_Type_Description FROM Ref_Template_Types GROUP BY Template_Type_Description HAVING count(*) < 3
SELECT min(Version_Number), Template_type_code FROM Templates GROUP BY Template_type_code
SELECT min(Version_Number), Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT template_type_code FROM Templates WHERE template_details = "Data base"
SELECT Template_type_code FROM Documents WHERE Document_name = "Data base"
SELECT document_name FROM Documents WHERE template_type_code = "BK"
{"sql": "SELECT document_name FROM documents WHERE document_id IN (SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%BK%'")"}
SELECT template_type_code, count(*) FROM Paragraphs GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Paragraphs GROUP BY template_type_code
SELECT Template_Type_Description FROM Ref_Template_Types GROUP BY Template_Type_Description ORDER BY COUNT(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Documents
SELECT Template_Type_Description, Template_Type_Name FROM Ref_Template_Types
SELECT Template_Type_Description, Template_type_details FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = 'layout'
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id JOIN Paragraphs AS T3 ON T2.document_id = T3.document_id
SELECT T1.layout_id FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id WHERE T1.template_type_code = "Presentation"
SELECT template_id FROM Templates WHERE template_type_code = "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs WHERE Document_id IN (SELECT Document_id FROM Documents WHERE Document_name = 'Summer Show')
SELECT count(*) FROM Paragraphs WHERE Document_id IN (SELECT Document_id FROM Documents WHERE Document_name = 'Summer Show')
SELECT Paragraph_text FROM Paragraphs WHERE Paragraph_text = "Korea"
SELECT paragraph_text FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.Paragraph_id, T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_id = T2.document_id WHERE T2.Document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT T2.document_id, count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY T2.document_id
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.document_id, T1.document_name, count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.paper_id, T1.paper_name, count(*) FROM Papers AS T1 JOIN Paragraphs AS T2 ON T1.paper_id = T2.document_id GROUP BY T1.paper_id
SELECT T1.template_id FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id, T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT t1.paper_id FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t1.paragraph_text = 'Brazil' INTERSECT SELECT t1.paper_id FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t1.paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM faculty
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown, COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*), T2.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name, T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name, T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = 'Math'
SELECT Name FROM teacher WHERE Name LIKE '%math%'
SELECT T2.Name, count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name, LEVEL_OF_membership FROM visitor WHERE LEVEL_OF_membership > 4 ORDER BY age
SELECT Museum_ID, Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID HAVING COUNT(*) > 1
SELECT T1.Museum_ID, T1.Name, T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.Museum_ID ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Ticket), max(Num_of_Ticket) FROM visit
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.year < 2009 INTERSECT SELECT T2.Name FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id > 2010)
SELECT count(*) FROM museum WHERE Open_Year > 2013 OR Open_Year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, last_name FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches WHERE loser_id NOT IN (SELECT loser_id FROM matches)
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name, last_name FROM players ORDER BY birth_date LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY sum(T1.minutes) DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name, T1.last_name, avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, T1.player_id, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT count(*), T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T1.trips), T2.ranking FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.ranking
SELECT sum(T1.total), T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking
SELECT year, count(*) FROM matches GROUP BY year
SELECT year, count(*) FROM matches GROUP BY year
SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM (SELECT T1.winner_name, T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_age LIMIT 3)
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = 'WTA Championships' AND loser_hand = 'left'
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.last_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT hand, count(*) FROM players GROUP BY hand
SELECT hand, count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(caused_by_ship_id), min(caused_by_ship_id) FROM death
SELECT avg(injured) FROM death
SELECT caused_by_ship_id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING T1.tonnage = 't'
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT id, name FROM ship WHERE ship_type = 'Brig'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(killed) > 10
SELECT caused_by_ship_id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T2.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T2.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage!= '225'
SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'HMS Atalanta'
SELECT T1.name, T1.bulgarian_commander, T1.result FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' AND T2.disposition_of_ship = 'sunk'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses ORDER BY line_1, line_2
SELECT count(*) FROM Courses
SELECT count(*) FROM COURSES
SELECT course_description FROM Courses WHERE course_name = "Math curriculum"
SELECT course_description FROM Courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port"
SELECT T2.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_name FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM DEGREES WHERE department_name = 'Engineering'
SELECT count(*) FROM Departments WHERE department_name = 'Engineering'
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id
SELECT section_name, section_description FROM Sections
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2"
SELECT T1.first_name, T1.last_name, T1.student_id, T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelors"
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name, T1.student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_program_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.last_name, T1.middle_name, count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.id, count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT section_name FROM Sections WHERE section_id NOT IN (SELECT student_enrolment_id FROM Student_Enrolment)
SELECT T2.department_name FROM Student_Enrolment AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id WHERE T1.student_id = "null"
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT last_name FROM Students WHERE state_province_county = "North Carolina" AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered LIMIT 1
SELECT first_name, last_name, T1.department_name FROM Students AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id ORDER BY T1.date_first_registered LIMIT 1
SELECT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.city = 'City' AND T2.state_province_county = 'State' AND T2.country = 'Country' AND T1.permanent_address_id!= T2.address_id
SELECT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.city = 'New York' EXCEPT SELECT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.city = 'New York'
SELECT T1.address_id, T1.address_line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.date_first_registered) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered, other_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT transcript_date, * FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT count(*) FROM Students
SELECT date_first_registered FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT date_first_registered FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT count(DISTINCT student_enrolment_id) FROM Student_Enrolment
SELECT max(count(*), course_id) FROM Student_Enrolment_Courses GROUP BY course_id
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Master" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.degree_program_id = "Bachelor"
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Masters" INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelors"
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.city FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM Students ORDER BY first_name, last_name
SELECT * FROM Students ORDER BY first_name DESC
SELECT section_name FROM Sections WHERE section_description = "h"
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT first_name, last_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = 09700166582
SELECT first_name, last_name FROM Students WHERE country = 'Haiti' OR cell_mobile_number = 09700166582
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Directed_by FROM Cartoon WHERE Written_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT title, directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" OR T1.Directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.State, count(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, Content) FROM TV_channel
SELECT count(DISTINCT series_name, content FROM TV_channel GROUP BY series_name, content
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_series WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT T1.Language, COUNT(*) FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel GROUP BY T1.Language ORDER BY COUNT(*) LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.Title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Title, T1.Episode, T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Rating DESC LIMIT 3
SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share), max(Share) FROM TV_series
SELECT max(Share), min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT sum(T1.Weekly_Rank) FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Title = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.id FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.Title = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE Series_name = "Sky Radio"
SELECT count(*), Directed_by FROM Cartoon GROUP BY Directed_by
SELECT Directed_by, count(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT T1.Title, T2.Channel FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Original_air_date DESC LIMIT 1
SELECT T2.package_option, T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'Yes'
SELECT Package_Option, T1.id FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.Hight_definition_TV = 'HD'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT T2.State FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT Country FROM TV_Channel EXCEPT SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT State FROM Cartoon EXCEPT SELECT T1.State FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT T2.series_name, T2.State FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.State FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = "Michael Chang"
SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2 CHANNEL WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.CHANNEL WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language!= "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language!= "english"
SELECT id FROM TVCHANNEL GROUP BY Country HAVING COUNT(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE Channel NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT id FROM TV_channel EXCEPT SELECT id FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT count(*) FROM poker_player WHERE Game_Type = "Car"
SELECT count(*) FROM poker_player WHERE Game = "Car"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people GROUP BY People_ID HAVING COUNT(*) >= 5)
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T1.Best_Finish) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT Name FROM people WHERE Nationality = "Car"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Game_Games = 1
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player WHERE Height = (SELECT max(Height) FROM people)
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
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
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number HAVING count(*) >= 2
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM VOTES WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.area_code = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republique"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Region FROM country WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "AR" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "AR" ORDER BY Percentage DESC LIMIT 1
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'BR'
SELECT Population, LifeExpectancy FROM country ORDER BY LifeExpectancy DESC LIMIT 1
SELECT region, count(*) FROM city WHERE countrycode = "Angola" GROUP BY region
SELECT Region, COUNT(*) FROM city WHERE CountryCode = "Angola" GROUP BY Region
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT name FROM country WHERE region = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT sum(Population), max(GNP) FROM country WHERE Continent = Asia
SELECT count(*), max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Repubic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(GNP), count(*) FROM country WHERE GovernmentForm = "US"
SELECT avg(GNP), count(*) FROM country WHERE CountryCode = "USA"
SELECT count(DISTINCT Language FROM countrylanguage
SELECT count(DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = "Africa")
SELECT count(DISTINCT GovernmentForm FROM country WHERE Continent = "Africa")
SELECT sum(language) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AR"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AFG"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "AFG"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Dutch" INTERSECT SELECT count(*) FROM countrylanguage WHERE Language = "English"
SELECT count(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT T1.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "English" INTERSECT SELECT T1.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT count(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM countrylanguage WHERE Language = "Chinese"
SELECT DISTINCT Region FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Region FROM countrylanguage WHERE Language = "Dutch" OR Language = "English"
SELECT CountryName FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT CountryName FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) = 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = "Republic" GROUP BY T2.CountryCode HAVING COUNT(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM city WHERE language = "english" GROUP BY name ORDER BY population DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "english"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "english")
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix"
SELECT count(DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.DependentYear < 1930)
SELECT count(DISTINCT Language FROM countrylanguage WHERE CountryCode < 1930)
SELECT Code FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT Country FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT Code FROM country WHERE Population < (SELECT max(Population) FROM country WHERE Continent = 'Asia')
SELECT country FROM country WHERE Continent = 'Africa' AND Population < (SELECT max(Population) FROM country WHERE Continent = 'Asia')
SELECT Country FROM country WHERE Continent = "Asia" AND Population > (SELECT max(Population) FROM country WHERE Continent = "Africa")
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' AND T2.Population > (SELECT max(Population) FROM country WHERE Continent = 'Africa')
SELECT CountryCode FROM country WHERE Language!= "english"
SELECT Code FROM countrylanguage WHERE Language!= "English"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language!= "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language!= "English"
SELECT Code FROM country WHERE Language!= "English" AND GovernmentForm!= "Republic"
SELECT abbr FROM country WHERE Language!= "english" EXCEPT SELECT GovernmentForm FROM country WHERE GovernmentForm = "Republic"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.Language!= "English"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language!= "English" AND T2.IsOfficial = "No"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T2.IsOfficial = 1 AND T1 Continent = "Asia"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T1 Continent = "Asia"
SELECT T1.Name, T1.FoundedYear, T1.CountryCode FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) LIMIT 1
SELECT T1.Name, T1.YearOfFounding, T1.CountryCode FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) LIMIT 1
SELECT count(*), T1.Name, T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, T1.Population, T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district
SELECT GovernmentForm, COUNT(*) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT GovernmentForm, COUNT(*) FROM country WHERE LifeExpectancy > 72 GROUP BY GovernmentForm
SELECT avg(LifeExpectancy), count(*) FROM country GROUP BY Continent WHERE avg(LifeExpectancy) < 72
SELECT T1.Continent, count(*), avg(LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent WHERE T1.LifeExpectancy < 72 GROUP BY T1.Continent
SELECT T1.Name, T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T1.SurfaceArea DESC LIMIT 5
SELECT name, region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT sum(T1.Population), avg(T1.SurfaceArea) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T1.SurfaceArea > 3000
SELECT sum(T1.Population), avg(T1.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T1.SurfaceArea > 3000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language, T2.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 10
SELECT sum(T1.CountryCode) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode
SELECT countrycode FROM countrylanguage WHERE language = "spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT Code FROM countrylanguage WHERE Language = "Spanish" GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT orchestra_id, YEAR_OF_FOUNDED FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Age DESC
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Age DESC
SELECT T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name, T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Work > 2008
SELECT T2.Conductor_ID, COUNT(*) FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID
SELECT T2.Name, COUNT(*) FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT T1.Record_Company FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Record_Company FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING count(*) = 1
SELECT Ensemble_ID FROM ensemble WHERE Ensemble_Name = ""
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM performance WHERE TYPE = "CD" OR TYPE = "DVD"
SELECT count(*) FROM performance WHERE record_company = 'CD' OR record_company = 'DVD'
SELECT T2.Year_of_Work FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T2.Year_of_Work FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT grade, count(*) FROM Highschooler GROUP BY grade
SELECT grade, count(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id, count(*) FROM Friend GROUP BY student_id
SELECT count(*), T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = T2.id AND T1.student_id = Kyle
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT count(*) FROM Friend WHERE student_id = 'Kyle'
SELECT count(*) FROM Friend WHERE friend_id IN (SELECT student_id FROM Highschooler WHERE name = "Kyle")
SELECT id FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM Likes INTERSECT SELECT student_id FROM Friend GROUP BY student_id HAVING count(*) >= 2
SELECT student_id FROM Likes INTERSECT SELECT student_id FROM Friend
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id
SELECT count(*), student_id FROM Likes GROUP BY student_id
SELECT student_id, count(*) FROM Likes GROUP BY student_id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name, count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(*) FROM Likes WHERE student_id = "Kyle"
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id
SELECT min(grade) FROM Highschooler WHERE student_id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT state FROM Professionals INTERSECT SELECT state FROM Owners WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals INTERSECT SELECT state FROM Owners WHERE role_code = "veterinarian"
SELECT state FROM Professionals INTERSECT SELECT state FROM Owners WHERE role_code = 'guardian' INTERSECT SELECT state FROM Owners INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinarian'
SELECT avg(age) FROM dogs WHERE treatment_id IN (SELECT dog_id FROM treatments GROUP BY dog_id HAVING count(*) > 1)
SELECT avg(age) FROM Dogs WHERE treatment_type_code = 'healthcare'
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" GROUP BY T1.id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Indiana" OR T1.role_code = "Veterinarian" GROUP BY T1.id HAVING count(*) > 2
SELECT name FROM dogs WHERE id NOT IN (SELECT owner_id FROM treatments GROUP BY owner_id HAVING sum(cost_of_treatment) > 1000)
SELECT T1.name FROM Dogs AS T1 JOIN Charges AS T2 ON T1.dog_id = T2.owner_id WHERE T2.charge_amount > 1000
SELECT first_name FROM Professionals WHERE role_code = "Veterinarian" OR role_code = "Guardian" EXCEPT SELECT first_name FROM Dogs WHERE first_name = "Dog"
SELECT first_name FROM Professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT first_name FROM Dogs WHERE first_name = 'Dog'
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "dog"
SELECT T1.first_name, T1.last_name, T1.owner_id FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id, T1.role, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.role_code, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T1.professional_id = T3.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.guardian_id, T2.last_name FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.guardian_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1
SELECT t3.treatment_type_description FROM charges AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code JOIN dogs AS t3 ON t1.dog_id = t3.dog_id GROUP BY t3.treatment_type_description ORDER BY sum(t1.charge_amount) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Charges AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Dogs AS T4 ON T2.dog_id = T4.dog_id WHERE T3.charge_amount = (SELECT sum(T3.charge_amount) FROM Charges AS T3 JOIN Treatments AS T4 ON T3.treatment_type_code = T4.treatment_type_code JOIN Dogs AS T5 ON T4.dog_id = T5.dog_id GROUP BY T5.breed_code ORDER BY sum(T3.charge_amount) LIMIT 1)
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T1.owner_id = T3.owner_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Charges AS T3 ON T2.treatment_type_code = T3.treatment_type_code GROUP BY T1.first_name, T1.last_name HAVING avg(T3.cost_of_treatment) < (SELECT avg(T3.cost_of_treatment) FROM Charges AS T3)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T2.first_name FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Veterinarian'
SELECT T1.charge_amount, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.charge_type, T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.breed_name LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.breed_code ORDER BY count(*) LIMIT 1
SELECT T1.first_name, T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT date_arrived, date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments WHERE treatment_type_code = 'medical')
SELECT date_arrived, date_departed FROM Dogs WHERE charge_id = 'healthcare'
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT last_name FROM Owners JOIN Dogs ON Owners.owner_id = Dogs.owner_id WHERE date_of_birth = (SELECT min(date_of_birth) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs WHERE breed_code = "Puppy"
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = "TREATMENT"
SELECT count(*) FROM Dogs WHERE breed_code = "puppy" AND date_adopted > date_arrived
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy"
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy"
SELECT T1.role, T1.street, T1.city, T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT role, street, town, state FROM Professionals WHERE town LIKE '%West%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT charge_amount FROM Charges ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Treatments)
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health-care'
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Dogs WHERE breed_code = "Puppy")
SELECT count(*) FROM Dogs WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE breed_code = "Puppy")
SELECT count(*) FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT count(*) FROM treatments WHERE treatment_type_code = 'puppy'
SELECT count(*) FROM Professionals WHERE role_code = 'Veterinarian' EXCEPT SELECT count(*) FROM Professionals WHERE role_code = 'Puppy_Treatment'
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE breed_code = "Puppy"
SELECT avg(age) FROM Dogs WHERE breed_code = "Puppy"
SELECT age FROM Dogs ORDER BY date_of_birth LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals WHERE role_code = "Veterinarian"
SELECT email_address, cell_number, home_phone FROM Owners
SELECT T1.breed_name, T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name, T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer WHERE Name = "Vocalist"
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "France"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name, SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Property_Types WHERE feature_type_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.room_count > 1
