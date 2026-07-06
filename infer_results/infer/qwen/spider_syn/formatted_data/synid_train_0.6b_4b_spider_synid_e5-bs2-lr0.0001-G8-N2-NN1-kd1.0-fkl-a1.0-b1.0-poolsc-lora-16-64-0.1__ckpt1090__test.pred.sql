SELECT count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer WHERE age > (SELECT avg(age) FROM singer) )
SELECT song_title FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(Average) , max(Average) FROM stadium
SELECT avg(T1.Average) , max(T1.Average) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT name , highest FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , highest FROM stadium ORDER BY highest DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.Stadium_ID , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Stadium_ID
SELECT t2.name , t2.capacity FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id WHERE t1.year >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.year) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T2.Singer_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T2.theme , COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T1.singer_ID = T3.singer_ID GROUP BY T3.name , T3.theme
SELECT T1.name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.name , T1.theme
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT singer.name , singer.country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T3.concert_id = T1.concert_id JOIN singer AS T4 ON T3.singer_id = T4.singer_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id JOIN singer_in_concert AS T3 ON T3.concert_id = T1.stadium_id JOIN singer AS T4 ON T3.singer_id = T4.singer_id WHERE T1.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.average = (SELECT max(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type
SELECT max(weight) , pet_type FROM Pets WHERE pet_type = 'domestic'
SELECT count(*) FROM Student WHERE age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20
SELECT count(*) FROM student WHERE sex = 'F' AND Fname = 'Puppie'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets WHERE pettype = 'domestic'
SELECT count(DISTINCT name) FROM Animal
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Kitten" OR T3.pet_type = "Puppy"
SELECT DISTINCT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "cat" OR T3.pettype = "dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT DISTINCT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.PetType = "Kittens" INTERSECT SELECT DISTINCT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.PetType = "Puppies"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT T1.Major FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.Major FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE pettype = "kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT fname , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.StuID = T2.StuID WHERE pet_type = 'cat')
SELECT DISTINCT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "dog" EXCEPT SELECT DISTINCT fname , lname FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "kitten"
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetType , max(weight) FROM Pets GROUP BY PetType
SELECT StuID , pet_age FROM Has_Pet WHERE pet_age > 1
SELECT StuID , pet_age FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , pet_type FROM Pets GROUP BY pet_type
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_age , pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'pet'
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age > 1
SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Fname = "Smith"
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T3.pet_type = "kitten"
SELECT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , T1.Continent , T2.Continent FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T2.ContId
SELECT count(*) , continent , countryname FROM countries GROUP BY continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.Maker , T1.id , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Maker GROUP BY T1.Maker
SELECT T2.Maker , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT T1.maker , T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make_id JOIN cars_data AS T3 ON T2.model = T3.model WHERE T3.Horsepower FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make_id JOIN cars_data AS T3 ON T3.Id = T2.MakeId ORDER BY T3.Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE YEAR = 1970
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Modelid WHERE YEAR = 1970
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY T1.id ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE YEAR = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Maker = T2.Maker WHERE T1.Model >= 1980
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.id >= 1980
SELECT T2.Continent , count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Continent
SELECT T2.Continent , COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country
SELECT T2.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId ORDER BY T1.Maker DESC LIMIT 1
SELECT count(*) , T1.Maker , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T2.Maker , T2.Model , T1.Maker , T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = 'AMC' AND model = 'Hornet Sportabout'
SELECT sum(accelerate) FROM cars_data WHERE model = 'AMT' AND YEAR = 2023
SELECT count(*) FROM car_makers WHERE maker LIKE "%French%"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.id = T2.CountryId WHERE T2.Continent = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT T2.Country , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.id HAVING count(*) >= 1
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Continent = "Europe" GROUP BY T2.Country HAVING COUNT(*) >= 3
{"sql": "SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"France\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Italy\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Spain\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = \"Portugal\" INTERSECT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T
SELECT max(Horsepower) , max(Maker) FROM cars_data WHERE Cylinders = 3
SELECT max(Horsepower) , M2 FROM cars_data WHERE Cylinders = 3 AND M2 = 3
SELECT model FROM cars_data GROUP BY model ORDER BY avg(MPG) DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Mileage ORDER BY T2.Mileage DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE model = 'volvo'
SELECT avg(edispl) FROM cars_data WHERE make = 'volvo'
SELECT cylinders , max(accelerate) FROM cars_data GROUP BY cylinders
SELECT avg(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT t1.maker FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.model_list_id GROUP BY t1.maker ORDER BY count(*) DESC LIMIT 1
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = "American Motor Company"
SELECT T2.Maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN cars_data AS T3 ON T2.id = T3.id WHERE T3.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Id = (SELECT Id FROM cars_data ORDER BY Accelerate LIMIT 1)
SELECT cylinders FROM cars_data WHERE make = 'volvo' AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = 'volvo')
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Horsepower) FROM cars_data)
SELECT count(DISTINCT Country) FROM car_makers WHERE Maker != "null" AND count(DISTINCT Country) > 2
SELECT count(*) FROM car_makers WHERE maker = 'France' OR maker = 'Italy' OR maker = 'Spain'
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY horsepower DESC LIMIT 1
SELECT T1.id , T1.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders > (SELECT min(cylinders) FROM cars_data) AND T1.cylinders != 3
SELECT T1.Maker , T2.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.MPG < 4
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE modelid NOT IN (SELECT modelid FROM car_makers WHERE maker = 'Ford Motor Company') AND horsepower < 3500
SELECT DISTINCT model FROM cars_data WHERE horsepower < 3500 EXCEPT SELECT DISTINCT model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.modelid = T2.modelid WHERE T1.maker = "Ford"
SELECT country FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) >= 3
{"sql": "SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSEct SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSEct SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSEct SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSEct SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country JOIN model_list AS T3 ON T2.Id = T3.Maker WHERE T2.Maker = 'fiat' OR T3.Model = 'fiat' GROUP BY T1.CountryId HAVING COUNT(*) > 3
{"sql": "SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'car' INTERSECT
SELECT country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT AirportName , Abbreviation FROM airports WHERE Country = "USA"
SELECT T2.AirportName , T1.AirportCode FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.airportcode) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT DISTINCT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T2.destairport LIKE '%UAL%'
SELECT T2.Airline FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.AirportCode WHERE T2.Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE Country = 'USA'
SELECT count(*) FROM airports WHERE Country = 'USA'
SELECT T1.City , T2.Country FROM airports AS T1 JOIN airlines AS T2 ON T1.AirportCode = T2.Airline WHERE T1.AirportName = "Alton"
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE Country = 'Aberdeen'
SELECT AirportName FROM airports WHERE Country = 'Abadan'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights WHERE FlightNo = "APG"
SELECT count(*) FROM flights WHERE DESTAirport = 'AT0'
SELECT count(*) FROM flights WHERE DESTAirport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'United Airlines' AND T2.airportname = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'ASY' AND T1.airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) LIMIT 1
SELECT T2.AirportName FROM FLIGHTS AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT T2.AirportName FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportName , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline , T1.AirportCode FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.Airline , T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'CVO'
SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.destairport = T2.airportcode JOIN Flights AS T3 ON T1.airline = T3.airline WHERE T2.airportname = 'APG' INTERSECT SELECT T1.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.destairport = T2.airportcode JOIN Flights AS T3 ON T1.airline = T3.airline WHERE T2.airportname = 'CVO'
SELECT DISTINCT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport EXCEPT SELECT DISTINCT T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T2.SourceAirport = 'APG'
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode EXCEPT SELECT DISTINCT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode EXCEPT SELECT DISTINCT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode
SELECT T2.Airline FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.AirportName HAVING COUNT(*) >= 10
SELECT T1.Airline , T2.AirportName FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport HAVING COUNT(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.Airline , T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "United Airlines"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "United"
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.Airline , T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT DISTINCT T1.Airline , T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT DISTINCT T1.Airline , T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.Airline , T1.FlightNo FROM flighs AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Abadan' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Abadan" OR T2.city = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM Employee
SELECT name FROM Employee ORDER BY age ASC
SELECT name FROM Employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT city FROM Employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.name , T2.district FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop ORDER BY number_products DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.name ORDER BY bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM Employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT t1.name FROM employee AS t1 JOIN hiring AS t2 ON t1.employee_id = t2.employee_id GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T1.name , count(*) FROM hr AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.name
SELECT count(*) , T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T2.shop_id = T3.shop_id GROUP BY T1.name
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM documents
SELECT count(*) FROM documents
SELECT T1.template_id , T2.document_name , T3.document_description FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN documents AS T3 ON T1.document_id = T3.document_id
SELECT T1.template_id , T2.document_name , T3.document_description FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN documents AS T3 ON T1.template_id = T3.template_id
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE "%w%"
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.template_id , T2.layout_id , T3.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T1.template_id = T3.template_id WHERE T3.document_name = "Robbin CV"
SELECT T1.template_id , T2.layout_id , T3.template_details FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T1.template_id = T3.template_id WHERE T3.template_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM documents
SELECT count(*) FROM Paragraphs WHERE template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT layout_id , count(*) FROM Paragraphs GROUP BY layout_id
SELECT count(*) , layout_id FROM Documents GROUP BY layout_id
SELECT T1.template_id , T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id , template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id)
SELECT Template_ID FROM Templates EXCEPT SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT count(*) FROM layouts
SELECT count(*) FROM documents
SELECT layout_id , version_number , layout_type FROM layouts
SELECT T1.template_id , T2.version_number , T3.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code JOIN Templates AS T3 ON T1.template_id = T3.template_id
SELECT DISTINCT template_type_description FROM ref_template_types
SELECT DISTINCT template_type_description FROM ref_template_types
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code = "CV"
SELECT count(*) FROM STRIP_LAYOUT WHERE Template_Type_Code = "CV"
SELECT edition_number , layout_type FROM Templates WHERE version_number > 5
SELECT edition_number , layout_type_name FROM Templates WHERE edition_number > 5
SELECT template_type_code , count(*) FROM Ref_Template_Types GROUP BY template_type_code
SELECT Template_Type_Description , count(*) FROM Ref_Template_Types GROUP BY Template_Type_Description
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.Template_Type_Description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types WHERE Template_Type_Code != "error" GROUP BY Template_Type_Code HAVING count(*) < 3
SELECT T2.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Description HAVING COUNT(*) < 3
SELECT min(version_number) , min(template_type_code) FROM Templates
SELECT min(VERSION_NUMBER) , max(template_type_code) FROM Templates GROUP BY template_type_code
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Document_Name = "Data base"
SELECT t2.template_type_code FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Data base"
SELECT DISTINCT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T2.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT Template_Type_Description , count(*) FROM Templates GROUP BY Template_Type_Code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types EXCEPT SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_id
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id WHERE t4.paragraph_text LIKE '%text%'
SELECT T2.template_type_name , T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T2.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id WHERE t4.paragraph_text LIKE '%text%'
SELECT T1.layout_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T3.template_id = T2.template_id WHERE T3.template_type_description = "Presentation"
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Description = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT * FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT T1.document_id , count(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY T1.document_id
SELECT count(*) , T1.template_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT T3.Document_ID , T2.Document_Name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID JOIN Documents AS T3 ON T1.Document_ID = T3.Document_ID GROUP BY T1.Document_ID
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) >= 2
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING COUNT(*) >= 2
SELECT T1.document_id , T2.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Paragraph_ID , T1.Document_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Paragraph_ID FROM PARAGRAPHS AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT T1.paragraph_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "paper1" INTERSECT SELECT T1.paragraph_id FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "paper2"
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT T1.Paper_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Paragraph_Text = 'Brazil' OR T1.Paragraph_Text = 'Ireland'
SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Paragraph_Text = 'Brazil' INTERSECT SELECT T1.Document_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Paragraph_Text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM faculty
SELECT name FROM teacher ORDER BY age
SELECT name FROM teacher ORDER BY age
SELECT age , hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT Hometown FROM teacher ORDER BY age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT DISTINCT hometown FROM teacher GROUP BY hometown HAVING count(*) >= 2
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.name , T2.grade FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id
SELECT T1.name , T2.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Name
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id WHERE T3.subject = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Grade = "Math")
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT name FROM teacher WHERE teacher_id IN (SELECT teacher_id FROM course_arrange GROUP BY teacher_id HAVING count(*) >= 2)
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT Open_Year , Num_of_Staff FROM museum WHERE Name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.id ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T2.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum EXCEPT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Open_Year < 2011 INTERSECT SELECT T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Open_Year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT loser_age , winner_age , avg(loser_age) , avg(winner_age) FROM matches GROUP BY loser_age , winner_age
SELECT loser_age , avg(loser_age) , winner_age , avg(winner_age) FROM matches GROUP BY loser_id , winner_id
SELECT avg(winner_rank) FROM rankings
SELECT avg(winner_rank) FROM rankings
SELECT loser_rank FROM rankings GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT loser_rank FROM rankings GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM MATCHES WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN players AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = 'Australian Open'
SELECT T2.first_name , T2.last_name , T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_rank LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.first_name , T2.last_name , T1.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T2.tourney_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank , T1.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.winner_rank_points FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT t1.winner_name FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id JOIN matches AS t3 ON t3.winner_id = t2.player_id WHERE t3.tourney_name = "Australian Open" ORDER BY t2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1
SELECT T2.first_name , avg(T1.ranking) , T1.player_id , T1.ranking_date FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , avg(T2.ranker_points) FROM players AS T1 JOIN rankings AS T2 ON T2.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T2.first_name , T2.last_name , sum(T1.rankings_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players WHERE country_code = (SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1)
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(t1.tours) , T2.ranking FROM rankings AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.match_num LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.year , T2.year DESC LIMIT 3
SELECT count(DISTINCT winner_name) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.hand = "left" AND T1.tourney_name = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "Left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT t1.first_name , t1.country_code , t1.birth_date FROM players AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id ORDER BY t2.rankings_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , T1.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_hand GROUP BY T1.hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(t1.id) , min(t1.id) , max(t1.killed) , min(t1.killed) FROM death AS t1 JOIN ship AS t2 ON t1.caused_by_ship_id = t2.id GROUP BY t1.id
SELECT avg(injured) FROM death
SELECT T1.id , T1.note , T1.injured FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.bulgarian_commander = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result != 'loss' AND tonnage != 225
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.name = "Lettice" INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.name = "HMS Atalanta"
SELECT name , result FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.latin_commander = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "all" AND line_2 = "line 1" AND line_3 = "all line 2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM courses
SELECT count(*) FROM DEGREE_PROGRAMS
SELECT course_description FROM Courses WHERE degree_program_id = "MATH"
SELECT T1.course_description FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id JOIN Courses AS T3 ON T3.course_id = T2.course_id WHERE T3.department_id = T2.department_id AND T2.semester_id = 1 AND T3.department_program_id = 2
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , T2.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT sum(degree_summary_name) FROM Degree_Programs WHERE department_id = (SELECT department_id FROM Departments WHERE department_name = "Engineering")
SELECT count(*) FROM degree_programs WHERE department_id = (SELECT department_id FROM departments WHERE department_name = "Engineering")
SELECT T1.section_name , T2.section_description FROM sections AS T1 JOIN sections AS T2 ON T1.section_id = T2.section_id
SELECT T1.section_name , T2.section_description FROM sections AS T1 JOIN sections AS T2 ON T1.section_id = T2.section_id
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN student_enrolment_courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN courses AS T4 ON T3.course_id = T4.course_id JOIN degree_programs AS T5 ON T4.degree_program_id = T5.degree_program_id WHERE T1.semester_name = 'Fall' AND T2.student_id = T3.student_enrolment_id
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE "%computer%"
SELECT T1.department_description FROM DEPARTMENTS AS T1 JOIN COURSES AS T2 ON T1.department_id = T2.department_id WHERE T2.course_name LIKE '%computer%'
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = (SELECT department_id FROM degree_programs WHERE degree_summary_name = "2 degree programs")
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , T1.student_enrolment_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN students AS T4 ON T3.department_id = T4.department_id WHERE T3.department_name = 'Undergraduate' AND T4.student_enrolment_id = (SELECT student_enrolment_id FROM student_enrolment_courses WHERE semester_id = (SELECT semester_id FROM degree_programs WHERE degree_summary_name = '2') AND T3.department_name = 'Undergraduate' AND T4.student_enrolment_id = (SELECT student_enrolment_id FROM student_enrolment_courses WHERE semester_id = (SELECT semester_id FROM degree_programs WHERE degree_summary_name = '2') AND T3.department_name = 'Undergraduate')
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Bachelor"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T2.course_id = T3.degree_program_id WHERE T3.department_name = "Bachelor"
SELECT degree_program_id , count(*) FROM student_enrolment GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = (SELECT department_id FROM degree_programs WHERE degree_summary_name = 'Undergraduate') GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.section_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id NOT IN (SELECT T3.student_id FROM student_enrolment AS T3)
SELECT T1.section_name FROM sections AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T1.section_name NOT IN (SELECT T3.section_name FROM student_enrolment AS T3 JOIN student_enrolment_courses AS T4 ON T3.student_enrolment_id = T4.student_enrolment_id GROUP BY T3.section_name HAVING count(*) = 0)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN courses AS T3 ON T3.course_id = T2.course_id WHERE T3.course_name = T1.course_name
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T1.first_name , T1.middle_name , T1.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN degree_programs AS T3 ON T1.student_id = T3.degree_program_id
SELECT date_first_registered , student_id FROM students WHERE date_first_registered >= (SELECT min(date_first_registered) FROM transcripts GROUP BY student_id HAVING count(*) >= 2)
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcript_contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = (SELECT min(date_first_registered) FROM students)
{"sql": "SELECT T2.first_name , T2.middle_name , T2.last_name FROM transcripts AS T1 JOIN student_enrolment_courses AS T2 ON T1.transcript_id = T2.transcript_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.department_id JOIN departments AS T5 ON T5.department_id = T4.department_id JOIN students AS T6 ON T6.student_id = T2.student_enrolment_id JOIN student_enrolment AS T7 ON T7.student_id = T6.student_id JOIN semester_enrolment_courses AS T8 ON T7.course_id = T8.course_id JOIN courses AS T9 ON T8.course_id = T9.course_id JOIN degree_programs AS T10 ON T10.department_id = T9.department_id JOIN departments AS T11 ON T11.department_id = T10.department_id JOIN students AS T12 ON T12.student_id = T6.student_id JOIN student_enrolment AS T13 ON T13.student_id = T6.student_id JOIN semester_enrolment_courses AS T14 ON T13.course_id = T14.course_id JOIN courses AS T15 ON T14.course_id = T15.course_id JOIN degree_programs AS T16 ON T16.department_id = T15.department_id JOIN departments AS T17 ON T17.department_id = T16.department_id JOIN students AS T18 ON T18.student_id = T6.student_id JOIN student_enrolment AS T19 ON T19.student_id = T6.student_id JOIN semester_enrolment_courses AS T20 ON T19.course_id = T20.course_id JOIN courses AS T21 ON T20.course_id = T21.course_id JOIN degree_programs AS T22 ON T22.department_id = T21.department_id JOIN departments AS T23 ON T23.department_id = T22.department_id JOIN students AS T24 ON T24.student_id = T6.student_id JOIN student_enrolment AS T25 ON T25.student_id = T24.student_id JOIN semester_enrolment_courses AS T26 ON T25.course_id = T26.course_id JOIN courses AS T27 ON T26.course_id = T27.course_id JOIN degree_programs AS T28 ON T28.department_id = T27.department_id JOIN departments AS T29 ON T29.department_id = T28.department_id JOIN students AS T30 ON T30.student_id = T24.student_id JOIN student_enrolment AS T31 ON T31.student_id = T30.student_id JOIN semester_enrolment_courses AS T32 ON T31.course_id = T32.course_id JOIN courses AS T33 ON T32.course_id = T33.course_id JOIN degree_programs AS T34 ON T34.department_id = T33.department_id JOIN departments AS T35 ON T35.department_id = T34.department_id JOIN students AS T36 ON T36.student_id = T30.student_id JOIN student_en
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_course_id JOIN transcripts_contents AS T3 ON T2.transcript_id = T3.transcript_id JOIN degree_programs AS T4 ON T4.degree_program_id = T2.degree_program_id JOIN departments AS T5 ON T4.department_id = T5.department_id WHERE T4.degree_summary_name = 'Graduation' ORDER BY T4.degree_program_id , T4.degree_summary_description LIMIT 1
SELECT T1.first_name FROM students AS T1 JOIN students AS T2 ON T1.permanent_address_id = T2.permanent_address_id WHERE T1.first_name != T2.first_name
SELECT T2.first_name , T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT T1.line_1 , T1.line_2 , T1.line_3 , T2.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transt_date) FROM transcripts
SELECT avg(date_first_registered) FROM students
SELECT date_first_registered , first_name , last_name FROM students WHERE date_left = (SELECT min(date_left) FROM students)
SELECT max(transcript_date) , min(transcript_date) FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT max(date_left) FROM students
SELECT max(date_left) FROM students
SELECT T1.student_enrolment_id , count(*) FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id
SELECT count(*) , T1.student_enrolment_id FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.student_enrolment_id
SELECT T1.date_first_registered FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Master' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id JOIN student_enrolment_courses AS T4 ON T4.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T5 ON T5.degree_program_id = T4.course_id WHERE T5.degree_program_name = 'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id JOIN student_enrolment_courses AS T4 ON T4.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T5 ON T5.degree_program_id = T4.course_id WHERE T5.degree_program_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM sections;
SELECT course_description FROM courses WHERE course_name = "h"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.permanent_address_id WHERE T2.country = " Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = " Haiti " OR T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT * FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE Directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_Channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT PACKAGE_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM tv_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t2.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.Title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.channel WHERE T1.Series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM tv_series ORDER BY Rating
SELECT T1.Episode , T2.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T2.Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.air_date FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.episode = T2.episode WHERE T2.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN tv_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT tv_series.episode FROM tv_series JOIN tv_channel ON tv_series.channel = tv_channel.id WHERE tv_channel.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM Cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT PACKAGE_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T2.Country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Todd Casey"
SELECT Country FROM tv_channel EXCEPT SELECT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT DISTINCT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "english"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM tv_channel WHERE Country = "India" GROUP BY Country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM tv_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM tv_channel EXCEPT SELECT t1.id FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel EXCEPT SELECT T1.Package_Option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones'
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.18_49_Rating_Share = 49)
SELECT count(*) FROM car_game
SELECT count(*) FROM car_game
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT FINAL_TABLE_Made , best_finish FROM poker_player ORDER BY best_finish DESC
SELECT FINAL_TABLE_MADE , best_finish FROM poker_player ORDER BY best_finish
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "Chinese" )
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = "car"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Name LIKE "%gamers%"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made
SELECT t1.birth_date FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id ORDER BY t2.earnings LIMIT 1
SELECT t1.birth_date FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id ORDER BY t2.earnings LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.height > 200
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , count(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT name , birth_date FROM people ORDER BY name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Earnings = 0)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Best_Finish = "Gamer")
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_number DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T2.contestant_number , T1.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.state , T2.state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM CONTESTANTS AS T3 WHERE T3.contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT T3.contestant_number FROM CONTESTANTS AS T3 WHERE T3.contestant_name = 'Kelly Clauss')
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT headOfState FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE independyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Caribbean"
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Region WHERE T1.Continent = "Caribbean"
SELECT T2.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code2 = T2.CountryCode WHERE T1.Name = "Anguilla"
SELECT name FROM country WHERE countrycode = 'AFR'
SELECT T2.Region FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT region FROM country WHERE capital = "Kabul"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.name = 'Aruba' GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT population , lifeexpectancy FROM country WHERE continent = 'Brazil'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = "Central Africa"
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Republic' AND Continent = 'Africa'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Name = "Asia" UNION SELECT sum(SurfaceArea) FROM country WHERE Name = "Europe"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" OR Continent = "Europe"
SELECT population FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'US'
SELECT avg(GNP) , count(*) FROM country WHERE continent = "US"
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE continent = 'Africa'
SELECT sum(T1.percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "AB-24"
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = "AFG"
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode = "AF"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.code GROUP BY T1.CountryCode ORDER BY sum(T1.percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE percentage = 100 AND language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE percentage = 100 AND language = "Dutch"
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE language = "Dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "French" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T1.Language = "English" INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.IsOfficial = 1 AND T1.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" UNION SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT t1.continent) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.Language = "Chinese"
SELECT count(DISTINCT T1.Continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Chinese"
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "English" UNION SELECT DISTINCT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "Dutch"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = 'Republic' GROUP BY T1.Language HAVING count(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = "Federal" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "English" GROUP BY T1.name ORDER BY sum(T1.population) DESC LIMIT 1
SELECT t1.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN city AS t3 ON t2.capital = t3.id WHERE t1.Language = "English" GROUP BY t1.countrycode ORDER BY sum(t1.percentage) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 0 AND Language != "English")
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = "No")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "english"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code2 = T2.countrycode EXCEPT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code2 = T2.countrycode WHERE T2.Language = "English"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.HeadOfState = "Beatrix"
SELECT count(DISTINCT isofficial) FROM countrylanguage WHERE countrycode = (SELECT code FROM country WHERE indepyear < 1930)
SELECT count(DISTINCT isofficial) FROM countrylanguage WHERE independyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent != 'Asia' AND population FROM country WHERE population < (SELECT min(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent != 'Africa' INTERSECT SELECT name FROM country WHERE continent != 'Africa'
SELECT name FROM country WHERE continent = "Asia" AND population > (SELECT min(population) FROM country WHERE continent = "Africa")
SELECT countrycode FROM countrylanguage WHERE isofficial = 1 AND language != "english"
SELECT T2.State FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language != 'English'
SELECT T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name != 'English'
SELECT T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language != "english"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language != "english" AND T2.GovernmentForm != "Republic"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language != "English" AND T2.GovernmentForm != "Republic"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.CountryCode = T3.CountryCode WHERE T3.IsOfficial = 0 AND T2.Continent = "Europe"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 0 AND T2.Language != "English"
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.continent = "Asia" AND T2.Language = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Language = "Chinese" AND T2.IsOfficial = 1 AND T1.CountryCode = "China"
SELECT name , independyear , continent FROM country ORDER BY population LIMIT 1
SELECT name , indepyear , continent FROM country ORDER BY population LIMIT 1
SELECT T1.population , T2.HeadOfState , T2.name FROM country AS T1 JOIN city AS T2 ON T1.code2 = T2.code WHERE T1.SurfaceArea = (SELECT max(SurfaceArea) FROM country)
SELECT name , population , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT T2.Name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode HAVING count(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING COUNT(*) > 2
SELECT district , count(*) FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT district , count(*) FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT T2.name , count(*) FROM country AS T1 JOIN country AS T2 ON T1.code2 = T2.code2 WHERE T1.lifeexpectancy > 72 GROUP BY T2.name
SELECT governmentform , sum(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(LifeExpectancy) , sum(Population) FROM country WHERE avg(LifeExpectancy) < 72 GROUP BY continent
SELECT T1.Continent , sum(T2.Population) , avg(T2.lifeexpectancy) FROM country AS T1 JOIN country AS T2 ON T1.code2 = T2.code GROUP BY T1.continent HAVING avg(T2.lifeexpectancy) < 72
SELECT name , region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(Population) , avg(Territory) FROM country WHERE Continent = "North America" AND SurfaceArea > 3000
SELECT sum(T1.Population) , avg(T1.Territory) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T2.Territory > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T2.Population FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Population ORDER BY T1.Population DESC LIMIT 1
SELECT T1.CountryCode , T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T1.continent = T3.continent GROUP BY T2.countrycode ORDER BY sum(T3.percentage) DESC LIMIT 3
SELECT sum(T2.population) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.Language = "Spanish"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor WHERE age = (SELECT max(age) FROM conductor)
SELECT name FROM conductor WHERE age = (SELECT max(age) FROM conductor)
SELECT T2.Name , T1.Orchestra_id FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID GROUP BY T1.Orchestra_ID
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT count(*) , result FROM performance GROUP BY result
SELECT record_type FROM performance GROUP BY record_type ORDER BY count(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY count(*) ASC
SELECT record_company FROM PERFORMANCE GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Orchestra_ID NOT IN (SELECT T3.Orchestra_ID FROM performance AS T3 JOIN orchestra AS T4 ON T3.Orchestra_ID = T4.Orchestra_ID)
SELECT orchestra FROM performance EXCEPT SELECT T1.orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded < 2003 UNION SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM Highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , friend_id FROM friend
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM highschooler JOIN friend ON friend.student_id = highschooler.id GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = (SELECT friend_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle') )
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = (SELECT friend_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle') )
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler EXCEPT SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT student_id FROM friend WHERE student_id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler WHERE student_id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM friend AS T1 JOIN likes AS T2 ON T1.student_id = liked_id
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id IN (SELECT student_id FROM friend WHERE friend_id NOT IN (SELECT student_id FROM likes) )
SELECT name FROM highschooler INTERSECT SELECT name FROM friend WHERE liked_id IN (SELECT liked_id FROM likes)
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT name FROM highschooler WHERE student_id IN (SELECT student_id FROM likes GROUP BY student_id HAVING count(*) >= 2)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND T1.grade > 5
SELECT name FROM highschooler WHERE grade > 5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(DISTINCT name) FROM likes WHERE liked_id IN (SELECT student_id FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id = "Kyle")
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT avg(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT grade FROM highschooler EXCEPT SELECT T1.grade FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT state FROM owners WHERE role_code = "guardian" INTERSECT SELECT state FROM owners WHERE role_code = "veterinarian"
SELECT state FROM owners WHERE role_code = "guardian" INTERSECT SELECT state FROM owners WHERE role_code = "veterinarian"
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.charge_type = "medical care"
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "healthcare"
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "INDIA" OR T2.cell_number > 2
SELECT T1.id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.street = T2.street AND T1.city = T2.city AND T1.state = "Indiana" UNION SELECT T1.id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.street = T2.street AND T1.city = T2.city WHERE count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T3.role_code = "guardian" AND T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = "Veterinary" EXCEPT SELECT first_name FROM dogs WHERE role_code = "Dog"
SELECT DISTINCT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name LIKE '%dog%' != 'dog'
SELECT T1.professional_id , T2.role_code , T2.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'male'
SELECT T1.id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id NOT IN (SELECT dog_id FROM dogs)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = 100 AND T2.age = 100 GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'Y' GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.role_code , T1.first_name , T1.last_name HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id JOIN treatment_types AS T4 ON T4.treatment_type_code = T3.treatment_type_code WHERE T4.treatment_type_description = "Health Care" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatment_types AS T3 ON T2.dog_id = T3.treatment_type_code JOIN charges AS T4 ON T3.treatment_type_code = T4.charge_type JOIN treatments AS T5 ON T2.dog_id = T5.dog_id WHERE T5.cost_of_treatment ORDER BY T5.cost_of_treatment DESC LIMIT 1
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code WHERE t2.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.treatment_type_description , T1.cost_of_treatment FROM treatments AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type GROUP BY T2.charge_amount ORDER BY sum(T2.charge_amount) ASC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id JOIN professionals AS T4 ON T3.professional_id = T4.professional_id WHERE T4.role_code = "guardian" GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.cell_number , T1.cell_number FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.cell_number HAVING count(*) >= 2
SELECT T1.owner_id , T1.cell_number FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM PROFESSIONS AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM charges)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_birth , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T3.role_code = "Veterinary"
SELECT T1.date_of_birth , T2.first_name FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = "Veteriner"
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.cost_of_treatment
SELECT T1.cost_of_treatment , T1.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.treatment_type_code WHERE T2.cost_of_treatment = T1.cost_of_treatment
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN treatment_tipes AS T2 ON T1.dog_id = T2.dog_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.breed_code = (SELECT breed_code FROM breeds WHERE breed_name = "Rare")
SELECT T2.name , T1.date_arrived FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_of_treatment = (SELECT min(date_of_treatment) FROM treatments)
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "medical care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_of_treatment = "health care"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM PROFESSIONS WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM PROFESSIONS WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs
SELECT date_arrived , date_departed FROM Dogs;
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "healthcare"
SELECT count(*) FROM treatment_types AS t JOIN dogs AS d ON t.dog_id = d.dog_id WHERE t.treatment_type_code = "healthcare";
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "male" AND T2.treatment_type_code = "puppy care"
SELECT count(DISTINCT professional_id) FROM Treatments AS T JOIN Professionals AS P ON T.professional_id = P.professional_id JOIN Treatment_Types AS T1 ON T.treatment_type_code = T1.treatment_type_code WHERE T1.treatment_type_description = "Pup"
SELECT T2.role , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE street LIKE '%West%'
SELECT T1.first_name , T1.last_name , T2.email_address FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name LIKE '%North%'
SELECT T1.first_name , T1.last_name , T2.email_address FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(t2.cost_of_treatment) FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_of_treatment = (SELECT max(date_of_treatment) FROM treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatment_types AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "health-care"
SELECT count(*) FROM TREATMENTS WHERE date_of_treatment = 'Treated'
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = "Poodle")
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = "Puppy")
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = "Pupple")
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE breed_code = "Puppy"
SELECT avg(age) FROM dogs WHERE breed_code = "PUPPY"
SELECT age FROM dogs ORDER BY date_adopted DESC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM Charges;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM PROFESSIONALS
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT DISTINCT breed_type , size_type FROM Dogs
SELECT DISTINCT breed_type , size_type FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T1.size_code = T3.size_code WHERE T1.age = 14 AND T1.gender = "P"
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T2.treatment_type_description , T3.date_of_treatment FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer WHERE Citizenship = "Vocalist"
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer WHERE Citizenship = 'Country'
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT name FROM singer ORDER BY net_workmillions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
{"sql": "SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship HAVING COUNT(*) = (SELECT count(*) FROM singer AS T1 JOIN song AS T2 ON T1.S
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT country , max(net_worth_millions) FROM singer GROUP BY country
SELECT T2.Name , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT t1.name FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id WHERE t2.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Property_Features
SELECT T2.feature_type_name FROM Other_Property_Features AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_id = T2.feature_id WHERE T2.feature_name = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties)
SELECT property_name FROM properties WHERE property_type_code = "house" OR property_type_code = "apartment" AND room_count > 1
