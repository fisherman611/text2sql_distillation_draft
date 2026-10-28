SELECT count(DISTINCT Singer_ID) FROM singer
SELECT count(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age
SELECT name, country, age FROM singer ORDER BY age DESC
SELECT avg(age), min(age), max(age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "French"
SELECT T1.song_name, T2.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC
SELECT T1.song_name, T2.song_release_year FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country, count(*) FROM singer GROUP BY country
SELECT count(*), T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
{"sql": "SELECT T1.song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age) FROM singer WHERE Age > (SELECT avg(age)
SELECT name, highest FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT name, LOCATION FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(Average), max(Capacity) FROM stadium
SELECT average(Capacity), max(Capacity) FROM stadium
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name, capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T2.Name
SELECT count(*), T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Name
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year >= 2014 GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.Time FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.concert_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT DISTINCT T1.State FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 40 INTERSECT SELECT DISTINCT T1.State FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.theme
SELECT T1.Name, T1.Theme, count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name, count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Year = 2014
SELECT T1.name, T2.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.song_name LIKE '%Hey%'
SELECT T1.name, T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.song_name LIKE '%Hey%'
SELECT T1.Name, T2.Stadium_ID FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT T1.Name, T2.Stadium_ID FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM concert WHERE Stadium_ID = (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT min(weight) FROM Pets WHERE pet_type = 'puppy'
SELECT max(weight), pettype FROM pets GROUP BY pettype
SELECT max(weight), pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Sex = 'F'
SELECT count(*) FROM Student WHERE sex = 'F' AND Has_Pet IS NOT NULL
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "kitten" OR T2.pettype = "puppy"
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'puppy'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = 'Kitten' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = 'Puppy'
SELECT DISTINCT T1.major, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid EXCEPT SELECT T1.major, T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten'
SELECT T1.major FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid EXCEPT SELECT T1.major FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'puppy' EXCEPT SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten"
SELECT pet_type, weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type, weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT petid, weight FROM Pets WHERE pet_age > 1
SELECT avg(T1.age), max(T1.age) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.species
SELECT pettype, avg(weight), max(weight) FROM Pets GROUP BY pettype
SELECT pettype, avg(weight) FROM pets GROUP BY pettype
SELECT avg(weight), pettype FROM Pets GROUP BY pettype
SELECT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname, T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith'
SELECT count(*), T1.stuid FROM Has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid
SELECT T1.StuID, count(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID GROUP BY T1.StuID
SELECT T1.fname, T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname, T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid, T2.continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid
SELECT DISTINCT T1.contid, T2.continent, count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid JOIN country AS T3 ON T2.countryid = T3.countryid JOIN car_names AS T4 ON T4.makeid = T5.id GROUP BY T1.contid
SELECT count(*) FROM continents WHERE continent = 'Asia'
SELECT count(*) FROM countries
SELECT T1.FullName, T2.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.ModelId ORDER BY T2.Horsepower LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId ORDER BY T2.Horsepower LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId WHERE T2.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT Model FROM car_data WHERE Weight < (SELECT avg(Weight) FROM car_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT DISTINCT T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Year = 1970
SELECT T1.make, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT T1.Maker, T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980
SELECT T2.Continent, count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T1.continent, count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.CountryId GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id GROUP BY T2.FullName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*), T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Maker
SELECT T1.Model, T2.Maker, T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId GROUP BY T2.Maker
SELECT Accelerate FROM car_data WHERE Make = "AMC" AND Model = "Hornet" AND Sport = "SportAbout"
SELECT sum(accelerate) FROM cars_data WHERE makeid = "Hornet" AND model = "Sportabout"
SELECT count(DISTINCT maker) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_names WHERE makeid IN (SELECT id FROM model_list) WHERE country = 'USA'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Country = 'United States'
SELECT avg(T1.MPG) FROM car_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T2.Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.ModelId WHERE T2.Cylinders = 8 AND T1.Year = 1974
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 8 AND T1.Year = 1974
SELECT DISTINCT T1.Maker, T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId
SELECT DISTINCT T1.Maker, T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.Country = T2.Country
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id HAVING count(*) >= 1
SELECT T1.Model, T1.Id FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId JOIN car_makers AS T3 ON T2.Maker = T3.Id GROUP BY T1.Model HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(T1.Weight), T2.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id GROUP BY T2.Year
SELECT avg(T1.Weight), T2.Year FROM car_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Year
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(Horsepower), T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT max(horsepower), T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker WHERE T2.Cylinders = 3 GROUP BY T1.Maker ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.ModelId GROUP BY T1.Model ORDER BY avg(T2.MPG) DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_data WHERE make = 'Volvo'
SELECT avg(Edispl) FROM car_data WHERE make = 'Volvo'
SELECT max(Accelerate), Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.ModelId = T2.ModelId GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_names WHERE makeid = 'Automobile' AND YEAR = 1980
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = 'American Motor Company'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Maker = 'American Motor Company'
SELECT T1.FullName, T2.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id WHERE T2.FullName = "General Motors" AND T1.Weight > 3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Maker = "General Motors" OR T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT max(Accelerate) FROM cars_data
SELECT max(Accelerate) FROM cars_data
SELECT count(*) FROM cars_data WHERE makeid = 'volvo' AND accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE makeid = 'Volvo' AND accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY CountryId HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.ModelId WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.ModelId GROUP BY T1.Model ORDER BY sum(T2.Horsepower) DESC LIMIT 1
SELECT makeid, manufacturer FROM car_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT T1.makeid, T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders > 3
SELECT DISTINCT T1.id, T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.cylinders < 4
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Id WHERE T1.Cylinders = 8 AND T1.Year < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = 'Ford' AND T2.Weight < 3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.ModelId WHERE T2.Maker!= 'Ford' AND T2.Weight < 3500
SELECT DISTINCT T1.make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.countryid NOT IN (SELECT countryid FROM car_makers)
SELECT DISTINCT makeid FROM car_names WHERE makeid NOT IN (SELECT id FROM car_makers)
SELECT T1.id, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT DISTINCT T1.id, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.Id, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) >= 2 INTERSECT SELECT DISTINCT T1.Id, T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.id, T1.countryname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T2.model = 'fiat' GROUP BY T1.id HAVING count(*) > 3
SELECT Id, FullName FROM car_makers WHERE Country = 'USA' OR Id IN (SELECT Id FROM car_names WHERE Make = 'Fiat')
SELECT CountryAbbrev FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT T1.CountryAbbrev FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT DISTINCT T1.AirwayName, T1.AirwayShort FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.Airline WHERE T1.CountryAbbrev = "USA"
SELECT T1.AirwayName, T1.AirwayShort FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.Airline WHERE T2.CountryAbbrev = 'USA'
SELECT AirportCode, AirportName FROM airports WHERE City = "Anthony"
SELECT T2.AirportCode, T2.AirportName FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = 'Anthony'
SELECT count(*) FROM flights
SELECT sum(T1.Airway) FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "UAL"
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = 'UAL'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.country = 'USA'
SELECT count(*) FROM airports WHERE CountryAbbrev = 'USA'
SELECT DISTINCT T1.city, T1.countryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Alton"
SELECT T1.AirportName, T1.CountryAbbrev FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportName = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT DISTINCT T1.AirportName FROM airports AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT AirportName FROM airports WHERE AirportName = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = 'ABERDEEN'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Ashley' AND T1.airline = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.abbreviation = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE SourceAirport = 'ASY' AND Airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE SourceAirport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destAirport = T2.airportcode WHERE T2.cityabbrev = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND Airline = 'United'
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT AirportName FROM airports GROUP BY AirportName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) DESC LIMIT 1)
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY count(*) LIMIT 1
SELECT AirportCode FROM flights GROUP BY AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.Airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airway, T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airway ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline, T1.AirportName FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT DISTINCT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "AHD"
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT DISTINCT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "AHD"
SELECT DISTINCT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'APG' INTERSECT SELECT DISTINCT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = 'CVO'
SELECT DISTINCT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APG" INTERSECT SELECT DISTINCT T1.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "CVO"
SELECT DISTINCT T2.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'CVO' EXCEPT SELECT DISTINCT T2.Airway FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'APG'
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportCode = 'CVO' EXCEPT SELECT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline JOIN airports AS T3 ON T2.SourceAirport = T3.AirportCode WHERE T3.AirportCode = 'APG'
SELECT DISTINCT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairportcode GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT DISTINCT T1.Airway FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airway HAVING COUNT(*) >= 10
SELECT DISTINCT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.flightno < 200
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.FlightNo < 200
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United Airlines"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.CountryAbbrev = 'AP'
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportCode = "APG"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.CountryAbbrev = 'UK' AND T2.City = 'Aberdeen'
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = 'UK' AND T2.City = 'Aberdeen'
SELECT DISTINCT T1.Code FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT count(*) FROM flights WHERE DestAirport = "Aberdeen" OR DestAirport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*), city FROM employee GROUP BY city
SELECT count(*), T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_name GROUP BY T1.city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT DISTINCT city FROM employee WHERE age < 30 INTERSECT SELECT city FROM employee WHERE age < 30
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), city FROM shop GROUP BY city
SELECT name, district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT min(Number_products), max(Number_products) FROM shop
SELECT min(Number_products), max(Number_products) FROM shop
SELECT name, city, district FROM shop GROUP BY district ORDER BY count(*) DESC
SELECT name, city, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN evaluation AS T3 ON T2.employee_id = T3.employee_id WHERE T3.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*), T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT T1.name, count(*) FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT sum(T1.premium) FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id
SELECT sum(T1.bonus) FROM evaluation AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T2.shop_id = T3.shop_id GROUP BY T1.employee_id
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT T1.District FROM shop AS T1 JOIN market AS T2 ON T1.Shop_id = T2.Shop_id WHERE T1.Number_products < 3000 INTERSECT SELECT DISTINCT T1.District FROM shop AS T1 JOIN market AS T2 ON T1.Shop_id = T2.Shop_id WHERE T2.Number_products > 10000
SELECT count(DISTINCT city) FROM shop
SELECT count(DISTINCT city) FROM shop
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT document_id, t1.paper_name, t1.paper_description FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id
SELECT document_id, document_name, document_description FROM Documents
SELECT T1.document_name, T2.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE '%w%'
SELECT T1.Document_Name, T2.Template_ID FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Description LIKE '%w%'
SELECT T1.paper_id, T2.layout_id, T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.template_id, T2.layout_id, T2.document_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Robbin CV"
SELECT count(DISTINCT document_id) FROM paragraphs
SELECT count(DISTINCT document_id) FROM Documents WHERE document_name LIKE '%text%'
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = 'PPT'
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code = 'PPT'
SELECT template_id, count(*) FROM Documents GROUP BY template_id
SELECT count(*), T1.template_id FROM Templates AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.template_id, T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id, template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates WHERE Template_Type_Code = "layout"
SELECT template_id, version_number, template_type_code FROM Templates
SELECT template_id, version_number, template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT template_id FROM templates WHERE template_type_code = 'PP' OR template_type_code = 'PPT'
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Ref_Template_Types WHERE template_type_code = 'CV'
SELECT template_id, template_type_code FROM Templates WHERE version_number > 5
SELECT template_type_code, template_details FROM Templates WHERE version_number > 5
SELECT template_type_code, count(*) FROM Templates GROUP BY template_type_code
SELECT template_type_code, count(*) FROM templates GROUP BY template_type_code
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_description FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT min(version_number), template_type_code FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = "Data base"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id WHERE T2.document_name = "Data base"
SELECT DISTINCT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'layout' AND T2.Template_Type_Description = 'BK'
SELECT document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'BK'
SELECT template_type_code, count(*) FROM Ref_template_types GROUP BY template_type_code
SELECT template_type_code, count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM ref_template_types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id WHERE T2.document_name = 'layout'
SELECT template_type_code, template_type_description FROM Ref_template_types
SELECT template_type_code, template_type_description FROM Ref_Template_Types
SELECT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT template_id FROM ref_template_types WHERE template_type_description = "Presentation"
SELECT template_id FROM Ref_Template_Types WHERE template_type_description = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_name = 'Summer Show'
SELECT T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Korea'
SELECT T2.Paragraph_Text FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.Template_ID = T2.Document_ID WHERE T1.Template_Type_Code = 'Korea'
SELECT T1.paragraph_id, T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id, T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT paragraph_text FROM Paragraphs WHERE document_id IN (SELECT document_id FROM Documents WHERE document_name = "Customer reviews")
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id, count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id, count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT T2.document_id, count(*), T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id
SELECT T1.document_id, T2.name, count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id, document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id, t1.name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%1 to 2%'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%between%' OR paragraph_text LIKE '%two%'
SELECT T1.paper_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T1.paragraph_text = "Brazil" OR T1.paragraph_text = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' OR paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM course
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT DISTINCT name FROM teacher WHERE hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT min(Age) FROM teacher WHERE Name = 'youngest'
SELECT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT count(*), T1.hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.hometown
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING count(*) >= 2
SELECT T1.Name, T2.Course_ID FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T1.Name, T2.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT DISTINCT T1.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T2.Teacher_ID = T3.Teacher_ID WHERE T1.Grade = 'Math'
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Grade = 'Math'
SELECT T1.Name, count(*) FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T1.Name
SELECT T1.Name, count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*) >= 2)
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership
SELECT avg(Age) FROM visitor WHERE Level_of_membership > 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT name FROM museum WHERE open_year > 2010 GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.ID, T1.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T1.ID HAVING count(*) > 1
SELECT T1.id, T1.name, T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.Name, T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.Num_of_Ticket), max(T1.Num_of_Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID GROUP BY T2.ID
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID WHERE T2.Level_of_membership = 1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year < 2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.Open_Year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id = museum_id WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(loser_age), avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches WHERE best_of = 'Winner'
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.winner_id
SELECT max(loser_rank) FROM matches WHERE loser_id NOT IN (SELECT loser_id FROM matches)
SELECT loser_rank FROM matches WHERE loser_rank_points = (SELECT min(loser_rank_points) FROM matches)
SELECT count(DISTINCT DISTINCT winner_hand) FROM matches
SELECT count(DISTINCT loser_hand) FROM matches
SELECT count(DISTINCT loser_name) FROM matches WHERE loser_name = 'loser'
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT winner_name FROM matches WHERE year = 2013 INTERSECT SELECT winner_name FROM matches WHERE year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE tourney_date LIKE "%2013%" OR tourney_date LIKE "%2016%"
SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age LIMIT 1
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT T1.first_name, T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT tourney_id, YEAR FROM matches GROUP BY tourney_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name, T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1
SELECT winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name, T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.first_name), T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking DESC LIMIT 10
SELECT T1.first_name, T1.last_name, T1.player_id FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking DESC
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC
SELECT count(*), state FROM players GROUP BY state
SELECT count(*), state FROM players GROUP BY state
SELECT loser_hand FROM matches GROUP BY loser_hand ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T1.tourney_rank_points), T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT sum(T1.rankings_points), T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking
SELECT count(*), tourney_date FROM matches GROUP BY tourney_date
SELECT count(*), YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name, T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY T2.winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY loser_age LIMIT 3
SELECT count(DISTINCT loser_hand) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T2.hand = 'left' AND T1.tourney_name = 'WTA Championships'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.winner_hand = 'L' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name, T1.last_name, T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name, T1.country_code, T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*), hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(caused_by_ship_id), min(caused_by_ship_id) FROM death
SELECT avg(T1.injured) FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id
SELECT T1.tonnage, count(*) FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.tonnage HAVING count(*) > 1
SELECT name, result FROM battle WHERE bulgarian_commander!= 'Boril'
SELECT DISTINCT T1.id, T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.ship_type = 'Brig'
SELECT T1.id, T2.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id, T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage = '225' EXCEPT SELECT count(*) FROM ship WHERE tonnage = '225'
SELECT T2.name, T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'Lettice' INTERSECT SELECT T2.name, T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'HMS Atalanta'
SELECT T1.name, T1.result, T2.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.location = 'English Channel' EXCEPT SELECT T1.name, T1.result, T2.bulgarian_commander FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.location = 'English Channel'
SELECT T2.note FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.note LIKE '%East%'
SELECT * FROM Addresses WHERE address_id IN (SELECT address_id FROM Addresses WHERE line_1 = "1" AND line_2 = "2")
SELECT DISTINCT T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Addresses AS T2 ON T1.address_id = T2.address_id
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = "Math Curriculum"
SELECT T1.course_description FROM Courses AS T1 JOIN Transcripts AS T2 ON T1.course_id = T2.student_course_id
SELECT zip_postcode FROM Addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city = "Port"
SELECT department_name, department_id FROM Degree_Programs GROUP BY department_id ORDER BY count(*) DESC LIMIT 1
SELECT department_name FROM Degree_Programs GROUP BY department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs WHERE degree_summary_name = 'Engineering'
SELECT count(*) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = 'Engineering')
SELECT T1.section_name, T1.section_description FROM Sections AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id
SELECT T1.section_name, T2.section_description FROM Departments AS T1 JOIN Sections AS T2 ON T1.department_id = T2.department_id
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name, T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM Sections ORDER BY section_name
SELECT section_name FROM Departments ORDER BY section_name DESC
SELECT T1.degree_summary_name, T1.student_id FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN Students AS T3 ON T2.student_enrolment_id = T3.student_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name, T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_description FROM Departments AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE '%computer%'
SELECT T1.department_description FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.department_id JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_id WHERE T3.other_details LIKE '%computer%'
SELECT T1.first_name, T1.middle_name, T1.last_name, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2
SELECT T1.first_name, T1.last_name, T1.student_id, T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2nd year' AND T2.semester_id = 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 1
SELECT T1.first_name, T1.last_name, T1.middle_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id, T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id, T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id, T1.first_name, T1.last_name, T1.middle_name, count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.student_id, count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.season_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id NOT IN (SELECT T1.student_id FROM Student_Enrolment)
SELECT T1.department_name FROM Departments AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.department_id = T2.department_id WHERE T2.student_enrolment_id IS NULL
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id NOT IN (SELECT degree_program_id FROM Student_Enrolment_Courses) AND T1.state_province_county = "North Carolina"
SELECT DISTINCT T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = T3.degree_program_id
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.cell_mobile_number FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T1.first_name = "Timmothy" AND T2.city = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name, T1.middle_name, T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY T1.date_first_registered ASC LIMIT 1
SELECT first_name, last_name, ssn FROM Students ORDER BY date_first_registered LIMIT 1
SELECT DISTINCT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id!= T1.permanent_address_id
SELECT T1.first_name, T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id!= T1.permanent_address_id
SELECT T1.address_id FROM Addresses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id, T1.line_1, T1.line_2 FROM Addresses AS T1 JOIN Student_Enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.date_first_registered) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT avg(date_first_registered) FROM Students
SELECT T1.date_first_registered, T1.other_details FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.student_enrolment_id IN (SELECT student_enrolment_id FROM Student_Enrolment_Courses)
SELECT transcript_date, other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT count(*), student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.course_id), T2.student_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_first_registered FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered, T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.department_id = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.department_id = 'Bachelor'
SELECT T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT T1.address_id) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.city, T1.state_province_county FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM Students ORDER BY first_name ASC, last_name ASC
SELECT * FROM Students ORDER BY first_name ASC
SELECT section_name FROM Sections WHERE section_name = 'H'
SELECT section_description FROM Departments WHERE department_name = 'h'
SELECT first_name, last_name FROM Students WHERE cell_mobile_number = "09700166582" OR country = "Haiti"
SELECT first_name, last_name FROM Students WHERE cell_mobile_number = 09700166582 OR permanent_address_id = (SELECT permanent_address_id FROM Addresses WHERE country = 'Haiti')
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT DISTINCT Directed_by FROM Cartoon WHERE Written_by = 'Ben Jones'
SELECT count(*) FROM Cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1_written_by = "Joseph Kuhr"
SELECT Directed_by, Title FROM Cartoon ORDER BY Air_Date
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT DISTINCT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Directed_by FROM Cartoon WHERE Written_by = 'Ben Jones' OR Written_by = 'Brandon Vietti'
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.State, count(*) FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name, content FROM TV_channel
SELECT count(DISTINCT content), count(DISTINCT series_name) FROM TV_channel
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT count(*) FROM TV_Channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT Language, count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language, count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language, COUNT(*) FROM TV_Channel GROUP BY Language
SELECT language, count(*) FROM TV_channel GROUP BY language
SELECT T2.series_name FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T2.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1_episode, T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY T1.rating DESC LIMIT 3
SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share), max(Share) FROM TV_series
SELECT max(Share), min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.Title = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1 serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_Channel AS T2 ON T1.id = T2.id WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT Directed_by, count(*) FROM Cartoon GROUP BY Directed_by
SELECT directed_by, count(*) FROM Cartoon GROUP BY directed_by
SELECT T1.production_code, T2.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.Original_air_date DESC LIMIT 1
SELECT T2.production_code, T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date DESC LIMIT 1
SELECT T2.package_option, T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_TV = 'HD'
SELECT Package_option, series_name FROM TV_Channel WHERE Hight_definition_TV = 'HD'
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.State FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Written_by = "Todd Casey"
SELECT country FROM TV_channel WHERE written_by!= 'Todd Casey'
SELECT DISTINCT state FROM cartoon WHERE written_by!= 'Todd Casey'
SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.Directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.Directed_by = 'Michael Chang'
SELECT T1.serial_name, T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' INTERSECT SELECT T1.serial_name, T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Michael Chang'
SELECT DISTINCT T1.Pixel_aspect_ratio_PAR, T2.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Language!= "English"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language!= "English"
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_Channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE Directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT T2.id FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.directed_by WHERE T1_written_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE directed_by = 'Ben Jones')
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT id FROM Cartoon WHERE Directed_by = 'Ben Jones')
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player WHERE Player_ID = 'car'
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T1.Best_Finish) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Money_Rank < 200000
SELECT max(final_table_made) FROM poker_player WHERE earnings < 200000
SELECT DISTINCT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT DISTINCT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT DISTINCT T1.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Name FROM poker_player ORDER BY Final_Table_Made ASC
SELECT Birth_Date FROM people WHERE Birth_Date ORDER BY Earnings ASC LIMIT 1
SELECT T1.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id GROUP BY T2.people_id ORDER BY T2.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player WHERE Height = (SELECT max(Height) FROM people)
SELECT Money_Rank FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Height = (SELECT max(Height) FROM people)
SELECT avg(earnings) FROM poker_player WHERE height > 200
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality, COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number, contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code), min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state = 'CA'
SELECT contestant_name FROM contestants EXCEPT SELECT contestant_name FROM contestants WHERE contestant_name = 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number, T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code_state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code_state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state, T2.state, T1.phone_number FROM VOTES AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN contestsants AS T2 ON T1.state = T2.state JOIN votes AS T3 ON T2.contestant_number = T3.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN contestsants AS T2 ON T1.state = T2.state JOIN votes AS T3 ON T2.contestant_number = T3.contestant_number WHERE T2.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT DISTINCT name FROM country WHERE GovernmentForm = 'Sovereign' AND IndependenceYear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republi"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code2 = T2.Code WHERE T1.Region = 'Caribbean'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code2 = T2.Code WHERE T1.Continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba" ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT population, lifeexpectancy FROM country WHERE region = 'America' AND countrycode = 'BR'
SELECT population, lifeexpectancy FROM country WHERE countrycode = 'Brazil'
SELECT region, count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola" GROUP BY T1.Region
SELECT region, count(*) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola" GROUP BY T1.Region
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.Code2 WHERE T1.Continent = "Africa"
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE region = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT count(*), max(GNPold) FROM country AS T1 JOIN country AS T2 ON T1.Code2 = T2.CodeGroup WHERE T1.Continent = 'Asia'
SELECT count(*), max(GNP) FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode WHERE T1.Continent = 'Asia'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.Code2 = T2.Code WHERE T1.Continent = 'Africa' AND T2.GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' INTERSECT SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code2 = T2.Code WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP), count(*) FROM country WHERE GovernmentForm = "US" GROUP BY CountryCode
SELECT avg(GNP), count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(*) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AFG'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" AND T1.Name = "Dutch"
SELECT DISTINCT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM country WHERE Language = "French"
SELECT count(DISTINCT DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM countrylanguage WHERE language = "Chinese"
SELECT DISTINCT region FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T1.Language = "English"
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode = 'Asia' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial = 'Y' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM country WHERE GovernmentForm = 'Republique')
SELECT Language FROM countrylanguage WHERE IsOfficial = 'yes' AND CountryCode IN (SELECT Code FROM country WHERE GovernmentForm = 'republic')
SELECT name FROM city WHERE language = 'english' GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM city WHERE language = "English" ORDER BY population DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name, count(*), lifeexpectancy FROM country WHERE continent = 'Asia' GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT Language FROM countrylanguage WHERE CountryCode = "BE" AND IsOfficial = 1
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT CountryCode FROM country WHERE HeadOfState = "Beatrix")
SELECT count(DISTINCT language) FROM countrylanguage WHERE IsOfficial = 'yes' AND iscode < 1930
{"sql": "SELECT count(DISTINCT language) FROM countrylanguage WHERE IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial = 'T' AND IsOfficial
SELECT DISTINCT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT DISTINCT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT DISTINCT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT DISTINCT name FROM country WHERE countrycode IN (SELECT countrycode FROM city WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT DISTINCT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT DISTINCT t1.region FROM country AS t1 JOIN city AS t2 ON t1.code2 = t2.countrycode WHERE t1.continent = 'Asia' AND t2.population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT code2 FROM countrylanguage WHERE language!= "english"
SELECT DISTINCT code2 FROM countrylanguage WHERE language!= "english"
SELECT DISTINCT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language!= "English"
SELECT DISTINCT t2.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name!= "English"
SELECT DISTINCT code2 FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english") AND governmentform!= "Republic"
SELECT DISTINCT code2 FROM country WHERE language!= "english" AND governmentform!= "Republic"
SELECT DISTINCT name FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT name FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = 'Asian' AND T2.Language = 'Chinese'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese" AND T1.Continent = "Asia"
SELECT name, founded_year, territory FROM country ORDER BY population LIMIT 1
SELECT T1.Name, T1.Founded, T1.CountryCode FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) ASC LIMIT 1
SELECT count(*), name, leader FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name, count(*), T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code ORDER BY sum(T2.Population) DESC LIMIT 1
SELECT T2.Name, COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T2.Name, COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Name HAVING COUNT(*) > 2
SELECT district, count(*) FROM city WHERE population > (SELECT avg(population) FROM city)
SELECT district, count(*) FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT GovernmentForm, COUNT(*) FROM country AS T1 JOIN country AS T2 ON T1.GovernmentForm = T2.GovernmentForm GROUP BY T1.GovernmentForm HAVING avg(LifeExpectancy) > 72
SELECT GovernmentForm, COUNT(*) FROM country AS T1 JOIN city AS T2 ON T1.Code2 = T2.CountryCode GROUP BY T1.GovernmentForm HAVING avg(LifeExpectancy) > 72
SELECT avg(LifeExpectancy), count(*) FROM country WHERE LifeExpectancy < 72 GROUP BY Continent
SELECT DISTINCT continent, count(*), avg(LifeExpectancy) FROM country WHERE LifeExpectancy < 72 GROUP BY continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name, territory FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT DISTINCT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT count(*), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT count(*), avg(T1.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = 'North America' AND T1.SurfaceArea > 3000
SELECT DISTINCT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY Count(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language, count(*) FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Name, T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Spanish" GROUP BY T2.Name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT DISTINCT t1.Code FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "Spanish" GROUP BY t1.Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT code2 FROM countrylanguage WHERE language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share), min(share) FROM performance WHERE TYPE!= "Live final"
SELECT max(Share), min(Share) FROM performance WHERE Type!= "Live final"
SELECT count(DISTINCT conductor_id) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name, T3.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T2.Name, T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008
SELECT count(*), T1.Conductor_ID FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID
SELECT count(*), T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Share FROM performance GROUP BY Share ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Record_Company FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID JOIN orchestra AS T3 ON T1.Orchestra_ID = T3.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT name FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Type = 'ensemble'
SELECT T2.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT T2.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED > 2003
SELECT count(*) FROM performance WHERE TYPE = "CD" OR TYPE = "DVD"
SELECT count(*) FROM performance AS T1 JOIN concert AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Major_Record_Format = "CD" OR T2.Major_Record_Format = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING count(*) > 1
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name, grade FROM highschooler
SELECT name, grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT DISTINCT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT count(*), grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id, T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(*), T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id = 'Kyle'
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id = 'Kyle'
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT student_id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.friend_id = T3.id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.friend_id = T3.id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.friend_id = T3.id GROUP BY T1.id HAVING count(*) > 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id JOIN friend AS T3 ON T1.friend_id = T3.id WHERE T3.friend_id = T2.id
SELECT count(*), T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT count(*), T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name, count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name, count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) = 0
SELECT state FROM Professionals INTERSECT SELECT state FROM Owners
SELECT state FROM Professionals INTERSECT SELECT state FROM Professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id
SELECT avg(age) FROM Dogs WHERE breed_code = 'dog' AND treatment_type_code = 'healthcare'
SELECT T1.first_name, T1.last_name, T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN States AS T3 ON T2.state = T3.state WHERE T3.state = 'Indiana' GROUP BY T1.cell_number HAVING count(*) > 2
SELECT T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.cell_number = T2.cell_number WHERE T2.state = 'Indiana' UNION SELECT T1.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.cell_number = T2.cell_number GROUP BY T1.cell_number HAVING count(*) > 2
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.charge_amount > 1000
SELECT first_name FROM Professionals EXCEPT SELECT first_name FROM Professionals WHERE role_code = "Veterinarian" OR role_code = "Guardian"
SELECT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT first_name FROM dogs
SELECT professional_id, role, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = 'Dogs')
SELECT professional_id, role_code, email_address FROM professionals EXCEPT SELECT T1.professional_id, T1.role_code, T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'dog'
SELECT T1.first_name, T1.last_name, T1.email_address FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name, T1.role FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT breed_name FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types GROUP BY treatment_type_description ORDER BY sum(charge_amount) ASC LIMIT 1
SELECT T1.treatment_type_description FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN charges AS T3 ON T2.treatment_id = T3.treatment_id WHERE T3.charge_amount = (SELECT min(charge_amount) FROM charges)
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.cell_number = T2.home_phone GROUP BY T1.cell_number HAVING count(*) >= 2
SELECT T1.cell_number, T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Charges AS T3 ON T2.treatment_id = T3.treatment_id WHERE T3.charge_amount < (SELECT avg(charge_amount) FROM Charges)
SELECT T1.date_of_treatment, T2.first_name, T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment, T1.first_name, T1.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT charge_amount, treatment_type_description FROM Charges GROUP BY charge_type
SELECT T1.treatment_type_description, T1.charge_type FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code
SELECT T1.first_name, T1.last_name, T1.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = "dog"
SELECT T1.first_name, T1.last_name, T1.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name, T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name, T1.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name, T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT date_arrived, date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived, date_departed FROM Dogs WHERE breed_code = 'Puppy'
SELECT T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_description = 'health'
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = 'healthcare'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.name = 'puppy'
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.name = "puppy"
SELECT T1.role, T1.street, T1.city, T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T1.role, T1.street, T1.city, T1.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(T1.charge_amount) FROM Charges AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.charge_amount DESC LIMIT 1
SELECT max(T1.cost_of_treatment) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.treatment_type_code ORDER BY T1.date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health-care'
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM Dogs WHERE breed_code = 'Puppy')
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE date_arrived = '2020-01-01')
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.name = 'puppy' GROUP BY T1.professional_id HAVING count(*) = 0
SELECT count(*) FROM professionals WHERE role_code!= 'Veterinarian' INTERSECT SELECT count(*) FROM professionals WHERE role_code!= 'Puppy_Treatment'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE breed_code = 'puppy'
SELECT avg(age) FROM Dogs GROUP BY age
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth ASC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM Charges
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, home_phone, cell_number FROM Professionals
SELECT email_address, cell_number, home_phone FROM Owners
SELECT breed_code, size_code FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT T1.breed_name, T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T1.first_name, T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatments AS T3 ON T2.treatment_id = T3.treatment_id GROUP BY T1.first_name, T1.last_name
SELECT T1.first_name, T1.last_name, T1.description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.treatment_type_code = 'health-care'
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT T1.Birth_Year, T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship!= "France"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*), citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship, max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Name, T1.Title FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title, T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name, sum(T1.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT T1.property_name FROM Properties AS T1 JOIN Other_Available_Features AS T2 ON T1.property_id = T2.property_id WHERE T2.feature_id = 3 GROUP BY T1.property_name HAVING count(*) > 1
