SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, nationality, age FROM singer ORDER BY age
SELECT Name, nationality, age FROM singer ORDER BY age DESC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT T1.Song_Name, T1.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.age ASC
SELECT T2.Song_Name, T1.song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country, count(*) FROM singer GROUP BY country
SELECT count(*), T1.name FROM singer AS T1 JOIN concert_in_singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T2.Song_Name FROM singer AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > T1.Highest
SELECT name, highest FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT t1.name, t1.location FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.capacity BETWEEN 5000 AND 10000
SELECT avg(capacity), max(capacity) FROM stadium
SELECT avg(capacity), max(capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.name
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T2.Name, T1.Seats FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.year >= 2014 GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name, t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.Time FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Time ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE name = "null"
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age > 40 INTERSECT SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.age < 30
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.song_name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name, T2.theme, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.singer_ID = T3.Singer_ID WHERE T1.year = 2014
SELECT T2.name, T2.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE '%Hey%'
SELECT T2.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.song_name LIKE '%Hey%'
SELECT T2.Name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T2.Name, T1.Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT T3.name, T3.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year = 2014 INTERSECT SELECT T3.name, T3.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T1.concert_id = T3.concert_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy'
SELECT min(weight) FROM Pets WHERE pet_type = 'Puppy'
SELECT max(weight), pet_type FROM Pets GROUP BY pet_type
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = 'kitten' OR pettype = 'puppy'
SELECT T1.fname, T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "kitten" OR T2.pettype = "puppy"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = 'Kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = 'Puppy'
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.fname, T1.lname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM pets WHERE pettype = 'kitten' )
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype = "Kitten"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pettype = "Kitten"
SELECT T1.fname, T1.age FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.fname, T1.age FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten"
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type, min(weight) FROM Pets GROUP BY pet_type
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT max(pet_age), avg(pet_age), pettype FROM Pets GROUP BY pettype
SELECT pet_type, avg(pet_age), max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type, avg(weight) FROM Pets GROUP BY pet_type
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid!= "null"
SELECT DISTINCT T1.fname, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid > 0
SELECT T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT T1.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith' GROUP BY T1.StuID HAVING count(*) >= 1
SELECT count(*), StuID FROM Has_Pet GROUP BY StuID
SELECT T2.pet_type, count(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.StuID
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname, T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" AND T3.petage = 3
SELECT T1.lname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.Stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten" AND T3.petage = 3
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.ContinentId, T1.Continent, count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.ContinentId
SELECT T1.id, T1.continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continents GROUP BY T1.continent
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.Maker, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.maker GROUP BY T1.Maker
SELECT T1.Maker, count(*), T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid = t2.id ORDER BY t2.Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.Id WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT t1.maker FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id WHERE t2.year = 1970
SELECT DISTINCT t1.maker FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t2.year = 1970
SELECT t1.make, t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id ORDER BY t2.year ASC LIMIT 1
SELECT t1.maker, t1.year FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.id ORDER BY t2.year LIMIT 1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.year > 1980
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = T2.country WHERE T1.year > 1980
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continents = T2.Country JOIN countries AS T3 ON T1.Continents = T3.Continents JOIN car_makers AS T4 ON T3.Country = T4.CountryId GROUP BY T1.Continents
SELECT T1.Continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continents = T2.Country JOIN car_makers AS T3 ON T1.Continents = T3.Country GROUP BY T1.Continents
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname ORDER BY count(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT count(*), T1.id, T1fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT t1.accelerate FROM cars_data AS t1 JOIN model_list AS t2 ON t1.id = t2.model WHERE t2.make = "amc" AND t2.model = "hornet sportabout (sw)"
SELECT sum(accelerate) FROM cars_data WHERE make = 'AMC Hornet Sportabout (SW)';
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "United States"
SELECT avg(MPG) FROM car_data WHERE Cylinders = 4
SELECT avg(Edispl) FROM car_data WHERE Cylinders = 4
SELECT min(T1.weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.maker = "Toyota" AND T1.year = 1974 AND T1.cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8
SELECT DISTINCT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T1.Maker, T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T2.Maker, T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeregion GROUP BY T1.id HAVING count(*) >= 1
SELECT T1.Name, T1.id FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.Maker HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight), YEAR FROM cars_data GROUP BY YEAR
SELECT DISTINCT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.Continent HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(T1.Horsepower), T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.modelid WHERE T1.cylinders = 3
SELECT max(T1.Horsepower), T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3
SELECT modelid, MAKER FROM car_makers ORDER BY mpg DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T1.year < 1980
SELECT avg(Edispl) FROM cars_data WHERE make = 'Volvo'
SELECT avg(Edispl) FROM car_names WHERE make = 'Volvo'
SELECT max(Accelerate), count(*) FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = 'American Motor Company'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.maker = "American Motor Company"
SELECT T1.FullName, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker, T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T1.maker = "General Motors" AND T2.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T2.Maker = "General Motors" OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT max(Accelerate) FROM cars_data
SELECT max(Accelerate) FROM cars_data
SELECT T1.id, T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.make = 'volvo' ORDER BY T1.accelerate LIMIT 1
SELECT t1.cylinders FROM cars_data AS t1 JOIN model_list AS t2 ON t1.makeid = t2.makeid WHERE t2.model = 'volvo' ORDER BY t1.accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country WHERE count(*) > 2
SELECT count(*) FROM car_makers GROUP BY country WHERE countryid IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.make, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) EXCEPT SELECT T1.make, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.Cylinders > 3
SELECT id, fullname FROM car_makers EXCEPT SELECT T1.id, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.Horsepower < (SELECT min(Horsepower) FROM cars_data)
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.year < 1980 AND T1.cylinders = 8
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT DISTINCT t1.Model FROM model_list AS t1 JOIN cars_data AS t2 ON t1.Model = t2.Model WHERE t1.Maker!= "Ford Motor Company" AND t2.weight < 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T1.Maker!= "Ford" AND T2.weight < 3500
SELECT DISTINCT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname HAVING count(*) > 1
SELECT fullname FROM car_makers EXCEPT SELECT T2.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid
SELECT DISTINCT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.id, T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.Id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.maker GROUP BY T1.Maker HAVING count(*) >= 2 INTERSECT SELECT T1.id, T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker HAVING count(*) > 3
SELECT T1.id, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.maker = 'fiat' GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.id, T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.maker = 'car maker' AND T1.countryid NOT IN ( SELECT countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.maker = 'fiat')
SELECT Id, FullName FROM car_makers GROUP BY Id HAVING count(*) > 3 UNION SELECT T1.Id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3 UNION SELECT T1.Id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker WHERE T2.Model = 'fiat'
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.abbrev = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbrieviation = 'Jetblue Airways'
SELECT abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT T1.Airwayname, T1.Abbrev FROM airlines AS T1 JOIN airports AS T2 ON T1.Airportcode = T2.Airportcode WHERE T1.country = 'USA'
SELECT T1.AirwayName, T1.AirportName FROM airways AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT T2.AirportCode, T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode WHERE T1.sourceairport = "Anthony"
SELECT count(*) FROM airports
SELECT sum(ABCD) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT DISTINCT Abbrev FROM airlines WHERE abbreviation LIKE '%UAL%'
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = 'UAL'
SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.country = 'USA'
SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.country = 'USA'
SELECT T1.city, T1.state FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Alton'
SELECT T1.city, T1.StateAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Alton"
SELECT T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.Airline WHERE T2.abbreviation = 'AKO'
SELECT T2_airportname FROM airports WHERE airportcode = "AKO"
SELECT T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.city = 'Aberdeen'
SELECT T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = "United Kingdom" AND T1.city = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights WHERE SourceAirport = 'ATP'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE destairport = "ABZ"
SELECT count(*) FROM flights WHERE SourceAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE destairport = 'Ashley' AND sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabb = 'United' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'ASY'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND airline = 'United'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'AHJ'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.Airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.Airline = "United Airlines" AND T2.city = "Aberdeen"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.town FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.town ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT min(T1.AirportCode) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.AirportCode
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.Airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.AirportCode GROUP BY T1.Airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirwayShort, T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.AirwayShort ORDER BY count(*) LIMIT 1
SELECT T1.abbrev, T2.state FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'airway' GROUP BY T1.uid ORDER BY count(*) LIMIT 1
SELECT T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.AirportName = 'AHD'
SELECT T1.abb FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Airport = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'AHD'
SELECT T1.abb FROM airlines AS T1 JOIN flights AS T2 ON T1.abbrev = T2.Airline WHERE T1.country = "United States" AND T2.destairport = "AHD"
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportCode = 'APG' INTERSECT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportCode = 'CVO'
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.sourceairport WHERE T1.abbreviation = "APG" INTERSECT SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.abbreviation = "CVO"
SELECT DISTINCT T1.abb FROM airlines AS T1 JOIN flights AS T2 ON T1.abbrev = T2.sourceairport WHERE T1.country = "USA" AND T2.sourceairport!= "APG"
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "CVO" EXCEPT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "APG"
SELECT T1.Airway FROM airways AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.AirportCode GROUP BY T1.Airway HAVING count(*) >= 10
SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airway HAVING count(*) >= 10
SELECT T1.abbrev FROM airlines AS T1 JOIN flights AS T2 ON T1.abbrev = T2.Airline GROUP BY T1.abbrev HAVING count(*) < 200
SELECT T1.abb FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.Airline GROUP BY T1.abbreviation HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.abbreviation = "United Airlines"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.AirportName = "APG"
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.AirportCode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Scotland' AND T1.sourceairport!= 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen' OR sourceairport = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT SourceAirport FROM flights)
SELECT airportcode FROM airports EXCEPT SELECT sourceairport FROM flights
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*), T1.city FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.employee_id GROUP BY T1.city
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.employee_id GROUP BY T1.location
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 INTERSECT SELECT DISTINCT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'No'
SELECT count(*), city FROM shop GROUP BY city
SELECT count(*), city FROM shop GROUP BY city
SELECT t1.name, t1.district FROM shop AS t1 JOIN employee AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.District, T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID GROUP BY T1.District ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products), max(number_products) FROM shop
SELECT min(number_products), max(number_products) FROM shop
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name, city, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.employee_id = t2.employee_id GROUP BY t1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN hiring AS t2 ON t1.employee_id = t2.employee_id WHERE t2.is_full_time = 'Yes' GROUP BY t1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN evaluation AS t2 ON t1.employee_id = t2.employee_id WHERE t2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM shop AS t1 JOIN employee AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name, count(*) FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id
SELECT count(*), T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.employee_id GROUP BY T1.name
SELECT sum(T1.Premium) FROM evaluation AS T1 JOIN assessment AS T2 ON T1.employee_id = T2.employee_id WHERE T2.premium!= "null"
SELECT sum(T1.bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.year_awarded > 2018 GROUP BY T1.employee_id
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM market WHERE number_products > 10000
SELECT count(DISTINCT city) FROM shop
SELECT count(DISTINCT city) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT t1.paper_id, t1.paper_name, t1.paper_description FROM papers AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id
SELECT T1.template_id, T1.template_name, T1.template_description FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT t1.document_name, t1.template_id FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_description LIKE '%w%'
SELECT t1.paper_name, t2.template_id FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_description LIKE '%w%'
SELECT t1.paper_id, t1.layout_id, t2.document_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = "Robbin CV"
SELECT T1.paper_id, T1.layout_id, T2.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT template_type_code) FROM Templates
SELECT count(DISTINCT template_type_code) FROM templates WHERE template_type_code = "layout"
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = 'PPT'
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_id = T2.Template_id WHERE T1.template_type_code = "PPT"
SELECT T1.template_id, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT t1.template_id, t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id, t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM paragraphs GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT t1.template_id FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates GROUP BY Template_Type_Code
SELECT T1.template_id, T1.version_number, T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_id, template_type_code, template_details FROM templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_description FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE Template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT template_details, layout_type FROM templates WHERE template_id IN (SELECT template_id FROM documents WHERE document_name > '5' GROUP BY document_name HAVING count(*) > 1)
SELECT t1.template_type_code, t2.template_details FROM Templates AS t1 JOIN Ref_Template_Types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.version_number > 5
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT t3.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t1.template_id = t3.template_id WHERE t1.template_details = "Data base"
SELECT t3.template_type_code FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t2.template_type_code = t3.template_type_code WHERE t1.document_name = "Data base"
SELECT document_name FROM Documents WHERE template_type_code = "BK"
SELECT t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t1.template_id = t3.template_id WHERE t3.template_type_code = "BK" GROUP BY t1.document_name HAVING count(*) >= 5
SELECT T2.template_type_description, count(*) FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_description
SELECT template_type_code, count(*) FROM Documents GROUP BY template_type_code
SELECT t3.template_type_code FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t1.template_id = t3.template_id GROUP BY t3.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT t1.template_type_code FROM Ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT t1.template_type_code FROM Ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id
SELECT template_type_code, template_details FROM Templates
SELECT template_type_code, template_details FROM Templates GROUP BY template_type_code
SELECT t3.template_type_description FROM templates AS t1 JOIN paragraph AS t2 ON t1.template_id = t2.document_id JOIN documents AS t3 ON t1.template_id = t3.document_id WHERE t1.template_type_code = "AD"
SELECT t2.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_details = "AD"
SELECT t1.template_type_name FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t3.template_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t1.template_id = t3.document_id WHERE t2.document_name LIKE '%text%'
SELECT T1.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_details HAVING count(*) > 100
SELECT t1.layout_id FROM templates AS t1 JOIN paragraphs AS t2 ON t1.template_id = t2.document_id WHERE t1.template_type_code = "Presentation"
SELECT template_id FROM Templates WHERE template_type_code = "Presentation"
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT paragraph_text FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Korea'
SELECT T1.paragraph_id, T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.Document_name = 'Welcome to NY'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT t1.paper_id, count(*) FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.paper_id ORDER BY t1.paper_id
SELECT T1.paragraph_id, count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paragraph_id ORDER BY T1.paragraph_id
SELECT T1.document_id, T1.document_name, count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.id, T1.name, count(*) FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.id
SELECT T1.name_id FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.name_id HAVING count(*) >= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT t1.document_id, t1.document_name FROM Documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.id, t1.name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT t1.paper_id FROM papers AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id GROUP BY t1.paper_id HAVING count(*) >= 1 INTERSECT SELECT t1.paper_id FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id GROUP BY t1.paper_id HAVING count(*) >= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paper_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = 'Brazil' INTERSECT SELECT T1.paper_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = 'Ireland'
SELECT T1.document_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM faculty
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE age = 32 OR age = 33
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT T2.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown
SELECT count(*), T2.Hometown FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name, T3.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID
SELECT T2.Name, T3.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T2.Name, T3.Course_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name ASC
SELECT T2.Name, T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.COURSE = "Math"
SELECT Name FROM teacher WHERE Name LIKE "%math%"
SELECT T2.Name, count(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1_teacher_ID = T2.teacher_id GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name, LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE open_year > 2010 AND num_of_staff ( select min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id, T1.name, T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.ID, T1.Name, T1.Membership_level FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT t1.name, t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.visitor_id GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket), max(num_of_ticket) FROM visit
SELECT sum(T2.Num_of_Ticket) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year < 2009 INTERSECT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(loser_age), avg(winner_age) FROM matches;
SELECT avg(winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT avg(winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id
SELECT loser_rank FROM matches WHERE draw_size = "best" ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches WHERE draw_size = "best_of" GROUP BY loser_id ORDER BY sum(loser_rank_points) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code FROM players)
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE tourney_date LIKE "2013%" OR tourney_date LIKE "2016%"
SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.loser_name, T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id GROUP BY T2.player_id ORDER BY sum(T1.minutes) DESC LIMIT 1
SELECT T1.loser_name, T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.loser_id DESC LIMIT 1
SELECT avg(T1.ranking), T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking) DESC
SELECT T1.player_id, T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name, sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT count(*), T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T1.ranking), T2.ranking_date FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_date
SELECT sum(T1.ranking), T2.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT count(*), tourney_date FROM matches GROUP BY tourney_date
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_age LIMIT 3
SELECT T1.winner_name, T1.winner_rank FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3
SELECT count(*) FROM players WHERE country_code = 'USA' AND hand = 'R' AND winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships')
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT hand, count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT bulgarian_commander, date, result FROM battle
SELECT max(T1.death_toll), min(T1.death_toll) FROM death AS T1 JOIN battle AS T2 ON T1.id = T2.id GROUP BY T1.id
SELECT avg(injured) FROM death
SELECT T1.death, T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 'T'
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT id, name FROM ship WHERE ship_type = 'Brig' AND lost_in_battle IN (SELECT id FROM battle)
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(killed) > 10
SELECT caused_by_ship_id, T1.id FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage = '225' AND lost_in_battle NOT IN (SELECT id FROM battle)
SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id WHERE T1.name = 'Lettice' INTERSECT SELECT T1.name, T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle JOIN death AS T3 ON T2.id = T3.caused_by_ship_id WHERE T1.name = 'HMS Atalanta'
SELECT T1.name, T1.bulgarian_commander, T1.result FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.lost_in_battle = 'No' AND T2.name = 'English Channel'
SELECT T1.remark FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.name LIKE 'East%'
SELECT line_1, line_2 FROM Addresses
SELECT line_1, line_2 FROM Addresses ORDER BY line_3 ASC
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = "math curriculum"
SELECT T1.course_description FROM Courses AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name = "Math Curriculum"
SELECT T1.zip_postcode FROM addresses AS T1 JOIN cities AS T2 ON T1.city = T2.city WHERE T2.city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name, count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name FROM Degree_Programs
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T1.degree_summary_name = "Engineering"
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id JOIN Degree_Programs AS T3 ON T2.department_id = T3.department_id JOIN Departments AS T4 ON T3.department_id = T4.department_id
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.department_name, T1.department_id FROM Degree_Programs AS T1 JOIN Sections AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id HAVING count(*) < 2
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.department_name, T1.department_id FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM degrees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.department_description FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.department_id JOIN Courses AS T3 ON T2.course_id = T3.course_id WHERE T3.course_name LIKE "%computer%"
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.degree_program_id HAVING count(*) = 2
SELECT T1.first_name, T1.middle_name, T1.last_name, T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2nd Year'
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelor"
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Bachelors"
SELECT T1.department_name FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.degree_program_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.last_name, count(*), T4.degree_program_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN Degree_Programs AS T4 ON T4.degree_program_id = T3.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name, T1.middle_name, T1.last_name, count(*), T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT section_name FROM Sections WHERE section_id NOT IN (SELECT student_course_id FROM Student_Enrolment)
SELECT T2.department_name FROM student_enrolment AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE degree_program_id = "null"
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > (SELECT count(*) FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id)
SELECT T2.course_name FROM Student_Enrolment AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) > 3
SELECT T2.course_name FROM Student_Enrolment AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN degree_programs AS T3 ON T2.student_id = T3.student_id
SELECT DISTINCT T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" AND T2.current_address_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT T1.date, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.cell_mobile_number FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.first_name = "Timmothy" AND T1.last_name = "Ward";
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY current_address_id ASC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.degree_summary_name = "Graduate" ORDER BY T1.date_first_registered ASC LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Address AS T2 ON T1.permanent_address_id = T2.address_id ORDER BY T1.date_first_registered LIMIT 1
SELECT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.address_id!= T1.current_address_id;
SELECT T2.first_name, T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_3!= T2.current_address_id
SELECT T1.address_id, T1.line_1 FROM addresses AS T1 JOIN current_address_id AS T2 ON T1.address_id = T2.address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.date_first_registered) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT avg(date_first_registered) FROM Students;
SELECT T1.date_first_registered, T2.other_student_details FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT count(*), T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.student_id), T2.degree_program_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_program_id
SELECT T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Master" INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = "Bachelor"
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 4 INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 3
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT * FROM students ORDER BY other_student_details
SELECT * FROM students ORDER BY other_student_details
SELECT section_name FROM Sections WHERE section_name = "h"
SELECT section_description FROM Sections WHERE section_name = "h"
SELECT first_name, last_name FROM students WHERE cell_mobile_number LIKE "09700166582" OR first_name LIKE "%Haiti%"
SELECT first_name, last_name FROM Students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT directed_by FROM Cartoon WHERE directed_by = "Ben Jones"
SELECT T2.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT T2.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT directed_by FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country, count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT t1.state FROM tv_channel AS t1 JOIN country AS t2 ON t1.country = t2.country_name GROUP BY t1.state ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, content) FROM TV_channel
SELECT count(DISTINCT series_name, content) FROM TV_channel
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT Language, count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language, count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language, COUNT(*) FROM TV_channel GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode, Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share), max(Share) FROM TV_series
SELECT max(Share), min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T2.serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.EPISODE = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT production_code, channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT t1.production_number, t1.channel FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id ORDER BY t1.Original_air_date DESC LIMIT 1
SELECT T1.id, T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_TV = 'Yes'
SELECT package_option, series_name FROM TV_channel WHERE Hight_definition_TV = 'HD'
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.state FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.written_by = 'Todd Casey'
SELECT country FROM cartoon EXCEPT SELECT T1.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = 'Todd Casey'
SELECT T1.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by!= 'Todd Casey'
SELECT T2.series_name, T1.State FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.State FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.directed_by = 'Michael Chang'
SELECT T2.series_name, T2.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Michael Chang'
SELECT country, pixel_aspect_ratio PAR FROM TV_channel WHERE language!= 'english'
SELECT pixel_aspect_ratio PAR, country FROM TV_channel WHERE language!= 'english'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM cartoon EXCEPT SELECT T1.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT id FROM cartoon EXCEPT SELECT T2.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel WHERE channel_id NOT IN (SELECT id FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE channel!= (SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = "Ben Jones")
SELECT count(*) FROM poker_player WHERE Game_Type_ = "Car"
SELECT count(*) FROM poker_player WHERE game = 'car'
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE Game_ID = "Car"
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T2.Final_Table_Made FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000)
SELECT max(T1.Final_Table_Made FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 100000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Rank = 'Car Gamer'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.Name ORDER BY COUNT(*) ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT T1.Name, count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Nationality FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT T2.Name, T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Name
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE Nationality!= "Gamer"
SELECT count(DISTINCT nationality) FROM people
SELECT count(DISTINCT nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = "CA"
SELECT DISTINCT contestant_name FROM contestants WHERE contestant_name!= 'Jessie Alloway'
SELECT DISTINCT state, created FROM votes
SELECT T1.contestant_number, T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM contests WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code, count(*) FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.area_code = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.phone_number, T1.state, T2.created FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state JOIN contestants AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT DISTINCT t1.name FROM country AS t1 JOIN city AS t2 ON t1.code2 = t2.code WHERE t1.indepyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(DISTINCT governmentform) FROM country WHERE governmentform = 'Republic'
SELECT count(DISTINCT governmentform FROM country WHERE governmentform = "Republik"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN continent AS T2 ON T1.Region = T2.Code WHERE T2.Name = 'Caribbean' AND T1.GNPold > 1000000
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Caribbean"
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT Continent FROM country WHERE CountryCode = "AN"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Aruba" ORDER BY t1.Percentage DESC LIMIT 1
SELECT t3.Language FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode JOIN country AS t3 ON t2.countrycode = t3.code WHERE t1.region = "North America" AND t3.name = "Aruba"
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'BR'
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'BR'
SELECT region, count(*) FROM city WHERE countrycode = "Angola" GROUP BY region
SELECT region, count(*) FROM city WHERE countrycode = "Angola" GROUP BY region ORDER BY count(*) DESC LIMIT 1;
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY LifeExpectancy LIMIT 1
SELECT sum(population), max(gnpold) FROM city WHERE continent = 'Asia'
SELECT max(GNPold), country.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T1.Name
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN continent AS T2 ON T1.Continent = T2.Code WHERE T2.Continent = 'Asia' OR T2.Continent = 'Europe'
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(GNP), count(*) FROM country WHERE GovernmentForm = "Territory" GROUP BY state
SELECT avg(GNP), count(*) FROM country WHERE CountryCode = "USA" GROUP BY countryCode
SELECT count(DISTINCT Language FROM countrylanguage
SELECT count(DISTINCT Language FROM countrylanguage
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AFG"
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT t3.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode JOIN city AS t3 ON t1.Code2 = t3.CountryCode GROUP BY t1.Code2 ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Dutch" INTERSECT SELECT count(*) FROM countrylanguage WHERE Language = "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "Dutch"
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "english" INTERSECT SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "french"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "English" INTERSECT SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT count(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT DISTINCT region FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.language = "english" OR t1.language = "dutch"
SELECT DISTINCT Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT DISTINCT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "English" OR t2.language = "Dutch"
SELECT CountryCode FROM countrylanguage WHERE Language = "English" OR Language = "Dutch"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = 'Asia' GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = "Asia" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T2.GovernmentForm = "Republic" GROUP BY T1.CountryCode HAVING COUNT(*) = 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT t1.name, t1.population, t1.LifeExpectancy FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Asia' ORDER BY t1.surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT avg(LifeExpectancy) FROM country WHERE Language!= 'English'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT count(*) FROM country WHERE countrycode NOT IN ( SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Beatrix" AND t1.IsOfficial = 1
SELECT count(DISTINCT t1.Language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.indepyear < 1930 GROUP BY t1.countrycode
SELECT count(DISTINCT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 GROUP BY T1.CountryCode
SELECT DISTINCT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT DISTINCT country FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = Europe)
SELECT country FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT code FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT DISTINCT region FROM city WHERE population > (SELECT max(population) FROM city WHERE continent = 'Asia')
SELECT name FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT DISTINCT t2.name FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.language!= "english"
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language!= "english"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language!= "English"
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.governmentform = "Republic" AND t2.language!= "english"
SELECT abr FROM country EXCEPT SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.language!= "English" EXCEPT SELECT t1.Name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.GovernmentForm = "Republic"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' AND t2.language!= 'English'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Europe' AND t2.language!= 'English'
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.language = "Chinese" AND t2.continent = "Asia"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code2 WHERE t2.language = "Chinese" AND t1 Continent = "Asia"
SELECT t1.name, t1.founded, t1.countrycode FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode GROUP BY t1.countrycode ORDER BY count(*) LIMIT 1
SELECT t1.name, t1.founded, t1.countrycode FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode GROUP BY t1.countrycode ORDER BY count(*) LIMIT 1
SELECT t1.population, t1.Name, t1.HeadOfState FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code ORDER BY t2.SurfaceArea DESC LIMIT 1
SELECT t1.Name, t1.Population, t1.HeadOfState FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode GROUP BY t1.Code ORDER BY t1.SurfaceArea DESC LIMIT 1
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT T1.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform, avg(lifeexpectancy) FROM country WHERE governmentform!= "Territory" GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT governmentform, count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.countrycode GROUP BY T1.governmentform HAVING avg(LifeExpectancy) > 72
SELECT avg(LifeExpectancy), count(*) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT Continent, sum(Population), avg(LifeExpectancy) FROM country GROUP BY Continent HAVING avg(LifeExpectancy) < 72
SELECT T1.Name, T1.Area FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T1.Area DESC LIMIT 5
SELECT name, territory FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT DISTINCT t1.name FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Europe' AND t2.population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population), avg(SurfaceArea) FROM country WHERE continent = 'North America' AND surfacearea > 3000;
SELECT count(*), avg(T1.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'North America' AND T1.Population > 3000 GROUP BY T2.Name
SELECT DISTINCT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, T2.Language FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.District ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "Spanish" GROUP BY T1.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE language = "spanish" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT T1.enterprise FROM orchestra ORDER BY T1.year_of_founding DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT max(Share), min(Share) FROM performance WHERE TYPE!= "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work DESC
SELECT T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name, T1.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_work > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_work > 2008
SELECT T1.enterprise, count(*) FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.enterprise
SELECT count(*), T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name
SELECT TYPE_ID FROM performance GROUP BY TYPE_ID ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY Share DESC LIMIT 1
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM conductor WHERE conductor_id NOT IN (SELECT conductor_id FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id)
SELECT ensemble FROM performance WHERE performance_id NOT IN (SELECT performance_id FROM performance WHERE type = 'performance')
SELECT * FROM orchestra WHERE Year_of_Founded > 2003 INTERSECT SELECT * FROM orchestra WHERE Year_of_Founded < 2003
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 2003
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_ID = T2.orchestra_id WHERE T2.Records_Company = "CD" OR T2.Records_Company = "DVD"
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.record_company = 'CD' OR T2.record_company = 'DVD'
SELECT T2.Year_of_Work FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), T1.grade FROM Highschooler AS T1 GROUP BY T1.grade
SELECT count(*), grade FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id, count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(*), T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T3.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Highschooler AS T3 ON T2.friend_id = T3.id WHERE T1.name = "Kyle"
SELECT T3.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T1.name = "Kyle"
SELECT count(DISTINCT student_id) FROM Friend WHERE student_id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING count(*) >= 2) AND student_id!= "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT student_id FROM Likes INTERSECT SELECT student_id FROM Friend
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1 INTERSECT SELECT DISTINCT name FROM highschooler WHERE T2.liked_id NOT IN (SELECT T1.id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.id WHERE T2.liked_id = T1.id
SELECT count(*), T1.id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(*), T1.id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 2 INTERSECT SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) FROM Highschooler WHERE name = "Kyle"
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.stduid GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.state = T2.state WHERE T1.role_code = "guardian" INTERSECT SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.state = T2.state WHERE T1.role_code = "veterinarian"
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.state = T2.state
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT avg(age) FROM dogs WHERE treatment_type_code = 'health'
SELECT T1.id, T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.cell_number = T2.cell_number WHERE T2.state = "Indiana" GROUP BY T1.id HAVING count(*) > 2
SELECT T1.id, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.treatment_id = T3.charge_id WHERE T3.charge_amount > 1000
SELECT T1.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T1.dog_id = T3.dog_id WHERE T3.charge_amount > 1000
SELECT DISTINCT first_name FROM professionals WHERE role_code = 'veterinarian' EXCEPT SELECT DISTINCT name FROM dogs
SELECT DISTINCT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE breed_name = 'dog'
SELECT professional_id, role_code, email_address FROM professionals WHERE role_code!= "Veterinarian" AND breed_code NOT IN (SELECT breed_code FROM dogs)
SELECT professional_id, role_code, email_address FROM Professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.first_name, T1.last_name, T1.owner_id FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T2.treatment_id = T3.treatment_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1
SELECT T1.guardian_id, T2.family_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.guardian_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.charge_amount ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Charges AS T3 ON T1.treatment_type_code = T3.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T3.charge_amount) LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T2.cell_number, T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.email_address = T2.email_address GROUP BY T1.first_name, T1.last_name HAVING count(*) >= 2
SELECT T1.id, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.cell_number = T2.cell_number GROUP BY T1.cell_number HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Charges AS T3 ON T2.treatment_id = T3.treatment_id WHERE T3.charge_amount < (SELECT avg(charge_amount) FROM Charges)
SELECT T1.date_of_treatment, T3.first_name, T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T2.role_code = 'veterinarian'
SELECT T1.date, T3.first_name FROM dogs AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.breed_code = "Bulldog"
SELECT T1.charge_amount, T2.treatment_type_description FROM charges AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment, T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name, T1.last_name, T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name, count(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name, T1.last_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.age_of_dog) DESC LIMIT 2
SELECT T1.first_name, T1.last_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name = "guardian"
SELECT T1.name, T2.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN Treatment_Types AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name, T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived, date_departed FROM Dogs WHERE treatment_type_code = 'medical'
SELECT date_arrived, date_departed FROM Dogs WHERE charge_type = 'health'
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT last_name FROM dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" UNION SELECT email_address FROM Professionals WHERE state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" UNION SELECT email_address FROM professionals WHERE state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM dogs AS T1 JOIN treats AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T3.role_code = 'vet'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Puppy' AND T2.treatment_type_code = 'Vet Care'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = "Puppy"
SELECT role, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT role, street, town, state FROM professionals WHERE town LIKE '%West%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN States AS T2 ON T1.state = T2.state WHERE T2.name LIKE '%North%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE date_of_birth < (SELECT avg(date_of_birth) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(T1.charge_amount) FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = 'health-care'
SELECT max(T1.charge_amount) FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM dogs WHERE breed_code = "puppy")
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT T1.dog_id FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = 'Pug')
SELECT count(*) FROM professionals WHERE role_code = "veterinarian" EXCEPT SELECT count(*) FROM treatment_types WHERE treatment_type_code = "puppy"
SELECT count(*) FROM professionals WHERE role_code = "veterinarian" EXCEPT SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = T1.breed_code WHERE T1.name = "puppy"
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM Dogs WHERE breed_code = "Puppy"
SELECT max(age) FROM dogs
SELECT charge_type, charge_amount FROM charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, cell_number, home_phone FROM Professionals WHERE role_code = 'Vet'
SELECT email_address, cell_number, home_phone FROM Professionals
SELECT breed_code, size_code FROM sizes UNION SELECT breed_code, treatment_type_code FROM treatment_types
SELECT DISTINCT T1.breed_name, T1.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.size_code = T2.size_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name, T1.last_name, T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T1.first_name = "Veterinarian"
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT T2.Birth_Year, T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "France"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT count(*), citizenship FROM singer GROUP BY citizenship
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, max(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT max(Net_Worth_Millions), Citizenship FROM singer GROUP BY Citizenship
SELECT T2.Name, T1.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name, sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT t2.feature_type_name FROM other_available_features AS t1 JOIN Ref_feature_types AS t2 ON t1.feature_type_code = t2.feature_type_code WHERE t1.feature_name = 'AirCon'
SELECT T1.property_type_description FROM Ref_property_types AS T1 JOIN properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM properties AS T1 JOIN Ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.room_count > 1
