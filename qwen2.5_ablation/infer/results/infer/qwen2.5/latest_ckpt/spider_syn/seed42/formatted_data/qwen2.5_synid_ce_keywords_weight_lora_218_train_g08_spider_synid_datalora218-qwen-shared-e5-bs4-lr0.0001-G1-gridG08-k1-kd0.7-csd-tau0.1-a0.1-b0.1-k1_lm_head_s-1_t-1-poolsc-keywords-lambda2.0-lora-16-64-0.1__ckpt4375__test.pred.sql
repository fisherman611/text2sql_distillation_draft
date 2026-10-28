SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer GROUP BY age)
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20 {}
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer) ORDER BY song_name ASC
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR BETWEEN 2014 AND 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.stadium_id FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT max(T1.year) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert WHERE YEAR = 2014 )
SELECT count(*) , T1.name , T2.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.concert_id HAVING count(*) > 0
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.concert_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING count(*) >= 1 {}
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.year = 2014 {}
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.country FROM singer AS T1 JOIN song AS T2 ON T1.song_name = T2.song_name WHERE T2.song_name LIKE '%Hey%'
SELECT T3.name , T3Highest FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T3Highest = 2014 INTERSECT SELECT T3.name , T3Highest FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015 AND T3Highest = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1;
SELECT min(weight) FROM Pets WHERE pet_type = "Puppy"
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(T1.weight) , T2.pet_type FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id GROUP BY T2.pet_type HAVING count(*) >= 50
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.age > 20;
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(DISTINCT pet_type) FROM Pets WHERE pet_type = 'domestic'
SELECT count(DISTINCT pet_type) FROM has_pet GROUP BY pet_type;
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'kitten' OR T3.pet_type = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'kitten' OR T3.pet_type = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"kitten\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"puppy\"
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'puppy' {}
SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' EXCEPT SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten'
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN ( SELECT T3.petid FROM Pets AS T3 JOIN Has_pet AS T4 ON T3.petid = T4.petid WHERE T4.pet_type = \"kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = \"Puppy\" EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = \"Cat\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten'
PetMin = (SELECT min(weight) FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)) SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1 OFFSET 0;
SELECT T2.pet_type , T1.weight FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid ORDER BY T1.pet_age LIMIT 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT avg(T1.age) , max(T1.age) , T2.pet_age FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID GROUP BY T2.pet_age;
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) >= 1;
SELECT DISTINCT T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid;
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID;
SELECT count(*) , T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1;
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents AS T1;
SELECT count(*) FROM continents AS T1;
SELECT T1.continent_id , T1.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent_id HAVING count(*) > 0
SELECT T1.continent , T1.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent , T1.countryname HAVING count(*) >= 1 AND count(*) <= 1000000
SELECT count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid
SELECT count(*) FROM countries AS T1;
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 0
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 0
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T2.MakeId = T3.id WHERE T3.Year = 1970;
SELECT T1.make , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.modelid = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.year > 1980;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid AND T1.year > 1980
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.FullName ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.id , T2.FullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.Maker , T2.FullName
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'Amc Hornet Sportabout'
SELECT sum(Accrate) FROM cars_data WHERE Model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE Country = 'France'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'USA')
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(T1.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT min(weight) FROM cars_data WHERE cylindernum = 8 AND YEAR = 1974;
SELECT DISTINCT maker FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Model GROUP BY T1.id HAVING COUNT(*) > 0
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Id GROUP BY T1.id HAVING COUNT(*) >= 1;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) >= 3 INTERSECT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) <= 2
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Concontinent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(T2.Horsepower) , T1.Maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING count(*) >= 1
SELECT max(T2.Horsepower) , T1.maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.id WHERE T2.cylinders = 3 GROUP BY T1.maker ORDER BY max(T2.Horsepower) DESC LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY avg(T2.MPG) DESC LIMIT 1;
SELECT T1.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model ORDER BY T1.MPG DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Volvo'
SELECT avg(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(DISTINCT model) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'American Motor Company'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 4
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.DistinctModel FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T3.id = T2.makeid WHERE T3.FullName = 'General Motors' OR T2.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T2.weight > 3500;
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000 {}
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = 0 AND Maker = 'Volvo'
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT T1.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid WHERE T1.cylinders = 4 GROUP BY T1.model ORDER BY max(Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower > ( SELECT min(Horsepower) FROM cars_data ) AND T2.cylinders < 4
SELECT T1.id , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.cylinders < 4 GROUP BY T1.id HAVING count(*) < 4
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T2.year < 1980
SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T1.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullName = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers GROUP BY country)
SELECT maker FROM car_makers EXCEPT SELECT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model
SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) <= 3 {}
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN (SELECT id FROM model_list GROUP BY id HAVING count(*) <= 3) GROUP BY id HAVING count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.id GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T3.id , T3.make FROM model_list AS T4 JOIN car_names AS T5 ON T4.model = T5.model WHERE T4.maker = 'fiat' GROUP BY T3.id HAVING count(*) > 3
SELECT id , fullname FROM car_makers WHERE country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 4 ) UNION SELECT makeid , fullname FROM car_names WHERE maker IN ( SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 4 )
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination = "Los Angeles International Airport" AND T2.sourceairport = T2.destairport AND T1.countryabbreviation = "JetBlue Airways"
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.Destination = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = \"JetBlue Airways\" LIMIT 1 OFFSET 0;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.country = "United States" AND T2.sourceairport = T2.destairport ORDER BY T2.flightsno ASC LIMIT 1;
SELECT Airline , ShortenedWord FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city = 'Anthony'
SELECT count(*) FROM airlines AS T1;
SELECT sum(airways) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.Country = 'United Kingdom' AND T2.SourceAirport = T1.AirportCode AND T2.DestinationAirport = T1.AirportCode WHERE T1.City = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.country = 'UK' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Aberdeen')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.country = 'United States' AND T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United Airlines' AND T2.airportname = 'ASY'
SELECT count(*) FROM flights WHERE airline = \"United Airlines\" AND sourceairport IN (SELECT airportcode FROM airports WHERE airportname = \"ASY\")
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.airportname = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "United States" AND T2机场名 = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.countryabbreviation = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airway ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.airway , T1.country from flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airway ORDER BY count(*) ASC LIMIT 1;
SELECT T1.airline , count(*) , T2.countryabbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.countryabbreviation ORDER BY count(*) ASC LIMIT 1;
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.airportname = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.AirportName = "AHD"
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.name = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE airportname = 'AHD')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airlines AS T3 JOIN airports AS T4 ON T3.uid = T4.airportcode WHERE T4.name = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airlines AS T3 JOIN airports AS T4 ON T3.uid = T4.airportcode WHERE T4.name = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE country = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.airportname = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.airportname = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.sourceairport WHERE T4.destairport IN (SELECT T5.airportcode FROM airports AS T5 JOIN flights AS T6 ON T5.airportcode = T6.sourceairport WHERE T6.destairport = 'CVO')) EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.sourceairport WHERE T4.destairport IN (SELECT T5.airportcode FROM airports AS T5 JOIN flights AS T6 ON T5.airportcode = T6.sourceairport WHERE T6.destairport = 'APG'))
SELECT T2.airway FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.uid HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT flightno FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "APG")
SELECT flightno FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.name = "APG"
SELECT flightno FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT T2.Flighno FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT flightno FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT T2.FlighNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T2.Flighno FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = 'Aberdeen' OR T1.sourceairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportcode FROM airports WHERE countrynotin(airlines) UNION SELECT sourceairport FROM flights WHERE flightno != \"\"
SELECT count(*) FROM employee AS T1;
SELECT count(*) FROM employee AS T1;
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city;
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , T1.city FROM shop AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.city
SELECT count(*) , T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT T2.name , T2.district FROM shop AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
SELECT min(number_products) , max(number_products) FROM shop AS T1
SELECT T1.name , T1.city , T1.district FROM shop AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id ORDER BY T2.number_products DESC
SELECT name , location , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.start_from DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT year_awarded FROM evaluation GROUP BY year_awarded ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT T2.name , count(*) FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id HAVING count(*) > 0
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T2.Name;
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.name = 'Extra'
SELECT * FROM hiring AS T1 UNION SELECT * FROM evaluation AS T2 UNION SELECT * FROM employee AS T3
SELECT * FROM hiring AS T1
SELECT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 UNION SELECT district FROM shop WHERE number_products > 10000;
SELECT count(DISTINCT city) FROM employee AS T1 JOIN shop AS T2 ON T1.location = T2.location
SELECT count(DISTINCT location) FROM shop;
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT document_id , document_name , document_description FROM Documents WHERE document_id IN ( SELECT document_id FROM Papers )
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , document_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T1.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_id , T1.layout_id , T2.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\"
SELECT count(DISTINCT template_id) FROM documents
SELECT count(DISTINCT document_layout) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_layout;
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\";
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 0
SELECT count(*) , document_id FROM Documents GROUP BY document_id;
SELECT T1.template_id , T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT document_template_id FROM Documents)
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT count(*) FROM Ref_template_types AS T1;
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T1.edition_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = \"Layout\"
SELECT DISTINCT template_type_code FROM Ref_template_types WHERE template_type_description = \"Layout\"
SELECT DISTINCT template_type_description FROM Ref_template_types;
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PPT\"))
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_code = \"PPT\")
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code = \"CV\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"CV\"
SELECT edition_number , layout_type FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.version_number > 5
SELECT edition_number , template_type_description FROM Ref_templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_templates GROUP BY template_type_code HAVING count(*) > 5)
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code HAVING count(*) >= 100 AND count(*) <= 5000
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 2
SELECT template_type_description FROM Ref_template_types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) >= 3)
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code ORDER BY version_number ASC LIMIT 1;
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code ORDER BY version_number ASC
SELECT template_type_code FROM Templates WHERE template_details = \"Data base\"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT document_name FROM paragraphs WHERE paragraph_text LIKE '%BK%'
SELECT document_name FROM documents WHERE template_id IN (SELECT document_id FROM paragraphs WHERE paragraph_text LIKE \"%BK%\")
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID GROUP BY T1.template_type_code;
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents GROUP BY template_type_code)
SELECT template_type_description FROM Ref_template_types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.document_description LIKE \"%AD%\"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = \"AD\"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code IN (SELECT template_type_code FROM Documents WHERE document_description = "book")
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = \"Book\"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_description HAVING count(*) > 1
SELECT DISTINCT t1.template_details FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_type_code;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"Presentation\"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM PARAGRAMES AS T1;
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Summer Show\"
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Other_Details FROM PARAGRAMES WHERE Paragraph_text = \"Korea\"
SELECT T1.Other_Details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Welcome to NY\"
SELECT document_id , paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = \"Welcome to NY\")
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Customer reviews\"
SELECT t3.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN ref_templates AS t3 ON t2.template_id = t3.template_id WHERE t1.document_name = \"Customer reviews\"
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id , T2.document_name
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_name , T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , t1.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id , paragraph_text FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id , paragraph_text FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1;
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM instructor
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> \"Little Lever Urban District\"
SELECT name FROM teacher WHERE hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33 OR Age BETWEEN 32 AND 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , Hometown FROM instructor GROUP BY Hometown;
SELECT count(*) , T2.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Hometown;
SELECT Hometown FROM instructor GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Faculty_ID != T2.Faculty_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T1.Name , T2.Curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id ORDER BY T2.Name ASC
SELECT T1.name , T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id ORDER BY T1.name ASC
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID WHERE T3.Course = \"Math\"
SELECT Name FROM teacher WHERE Teacher_ID IN ( SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*) = 1 AND Course_ID = \"Math\")
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) > 0
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) > 0
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM instructor WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id)
SELECT count(*) FROM visitor WHERE age BETWEEN 1 AND 29;
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 4;
SELECT Name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY AGE DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(open_year) FROM museum WHERE open_year < 2009.0
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.museum_id , T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.num_of_ticket) DESC LIMIT 1;
SELECT avg(T1.Num_of_Ticket) , max(T1.Num_of_Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1;
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id
SELECT avg(loser_age) , avg(winner_age) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id;
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id HAVING count(*) > 0;
SELECT max(loser_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.loser_id IN (SELECT player_id FROM matches GROUP BY player_id ORDER BY count(*) DESC LIMIT 1)
SELECT ranking FROM rankings WHERE ranking_points = (SELECT max(t2.ranking_points) FROM rankings AS t1 JOIN players AS t2 ON t1.player_id = t2.player_id WHERE t2.country_code = "USA")
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT tourney_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.tourney_id HAVING count(*) > 10;
SELECT T2.tourney_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = (SELECT tourney_id FROM matches WHERE tourney_name = \"WTA Championships\" INTERSECT SELECT tourney_id FROM matches WHERE tourney_name = \"Australian Open\") AND T1.country_code = T2.country_code
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_id = 6 AND T2.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE tourney_id = 6)
SELECT T1.loser_name , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM MATCHES )
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.minutes = (SELECT max(minutes) FROM matches)
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) > 0 {}
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0 {}
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) >= 60 {}
SELECT sum(t1.tours) , t2.ranking FROM rankings AS t1 JOIN players AS t2 ON t1.player_id = t2.player_id GROUP BY t2.ranking_date;
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT count(*) , YEAR FROM MATCHES GROUP BY YEAR;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3;
SELECT count(*) FROM ( SELECT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Left-handed' )
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = ( SELECT max(ranking_points) FROM rankings )
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC LIMIT 1000000;
SELECT name , date , result FROM battle
SELECT max(T1.killed) , min(T1.killed) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT avg(injured) FROM death
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.ship_type = 'Brig' UNION SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.ship_type = T2.type WHERE T1.bulgarian_commander = 'Kaloyan' AND T1.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle AS T1;
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.ship_type WHERE T2.tonnage = 225 )
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.name = 'Lettice' INTERSECT SELECT T3.name , T3.date FROM ship AS T3 JOIN battle AS T4 ON T3.id = T4.id WHERE T3.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses AS T1;
SELECT line_1 , line_2 FROM addresses AS T1;
SELECT count(*) FROM courses AS T1;
SELECT count(*) FROM courses AS T1;
Courses.course_description = \"Math\"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = \"Port Chelsea\"
SELECT T2.department_name , T1.department_id FROM Degree_Programs AS T1 JOIN TRANSCRIPTS AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT department_id) FROM degree_programs AS T1 JOIN courses AS T2 ON T1.degree_summary_name = T2.degree_summary_name
SELECT count(DISTINCT degree_summary_name) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM degree_programs;
SELECT count(*) FROM courses AS T1 JOIN department AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = \"Engineering\";
SELECT count(*) FROM departments WHERE department_name = \"Engineering\"
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTION AS T1;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.semester_name , T1.student_enrolment_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.semester_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT other_details FROM courses WHERE course_name LIKE '%the computer%'
SELECT other_details FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor of Science' AND T2.semester_id IN (SELECT semester_id FROM student_enrolment WHERE degree_program_id = 2) GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2 AND T2.semester_id = 1 {}
SELECT T2.first_name , T2.middle_name , T2.last_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T3.first_name , T3.middle_name , T3.last_name FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T1.degree_program_id = 'Bachelors'
SELECT T1.degree_program_id FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T4.degree_summary_name FROM Degree_Programs AS T4 JOIN Student_Enrolment_Courses AS T1 ON T1.degree_program_id = T4.degree_program_id JOIN Student_Enrolment AS T2 ON T2.student_enrolment_id = T1.student_enrolment_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.university_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) >= 1 {}
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN addresses AS T3 ON T2.address_id = T3.address_id WHERE T3.state_province_county = 'North Carolina' EXCEPT SELECT T4.last_name FROM students AS T4 JOIN student_enrolment_courses AS T5 ON T4.student_id = T5.student_id JOIN courses AS T6 ON T5.course_id = T6.course_id JOIN degree_programs AS T7 ON T6.department_id = T7.department_id {}
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T4.last_name FROM student_enrolment AS T4 JOIN degree_programs AS T5 ON T4.degree_program_id = T5.degree_program_id;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.cell_mobile_number FROM students AS T1 JOIN courses AS T2 ON T1.permanent_address_id = T2.permanent_address_id JOIN departments AS T3 ON T2.department_id = T3.department_id WHERE T1.first_name = 'Timmothy' AND T1.last_name = 'Ward'
SELECT T1.cell_mobile_number FROM students AS T1 JOIN students AS T2 ON T1.first_name = T2.first_name AND T1.last_name = T2.last_name WHERE T1.first_name = 'Timothy' AND T1.last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students WHERE date_first_registered = ( SELECT min(date_first_registered) FROM students )
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.other_address_details != T1.permanent_address_id
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_1 != T1.current_address_id;
SELECT T1.address_id , T2.line_1 FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T1.current_address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students;
SELECT avg(date_first_registered) FROM students;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered LIMIT 1;
SELECT min(transcript_date) , other_details FROM transcripts WHERE other_details != \"\"
SELECT count(*) FROM Student_Enrolment_Courses AS T1 JOIN Students AS T2 ON T1.student_enrolment_id = T2.student_id
SELECT count(*) FROM students;
SELECT max(date_left) FROM students WHERE date_left != '9999-12-31'
SELECT date_last_updated FROM students ORDER BY date_last_updated DESC LIMIT 1;
SELECT count(*) , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , count(*) , T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.date_first_registered ORDER BY count(*) LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 'Master' INTERSECT SELECT T1.semester_name FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 'Bachelor'
SELECT T1.id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T1.id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT count(DISTINCT T1.address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT * FROM Students ORDER BY other_student_details DESC
SELECT section_name FROM sections WHERE section_name = 'h'
SELECT course_description FROM courses WHERE course_id IN (SELECT course_id FROM sections WHERE section_name = 'h')
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT T2.Title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T1.Directed_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\";
SELECT count(*) FROM Cartoon WHERE Written_by = \"Joseph Kuhr\"
SELECT count(*) FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Written_by = 'Joseph Kuhr'
SELECT T2.name , T1.directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.air_date ASC
SELECT T2.Title , T1.Directed_by FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel ORDER BY T1.Air_Date ASC
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Brandon Vietti"
SELECT T2.Title FROM Animation AS T1 JOIN Cartoon AS T2 ON T1.Directed_by = T2.Directed_by WHERE T1.Written_by = \"Ben Jones\" OR T1.Written_by = \"Brandon Vietti\"
SELECT country , count(*) FROM TV_CHANNEL GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , id FROM TV_channel GROUP BY id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL AS T1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL
SELECT Content FROM TV_CHANNEL WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.series_name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT T1.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , Language FROM TV_CHANNEL GROUP BY Language
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE;
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT * FROM TV_series ORDER BY Rating ASC
SELECT episode , rating FROM TV_series ORDER BY rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series;
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT sum(T1.Score) FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T2.serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT count(*) , directed_by FROM Cartoon GROUP BY directed_by;
SELECT production_code , channel FROM Cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = 'HD'
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = 'HD'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = \"Todd Casey\"
SELECT T1.state FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Todd Casey" AND T2.content = "TV"
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Todd Casey' )
SELECT id FROM cartoon WHERE written_by = 'Todd Casey' EXCEPT SELECT id FROM cartoon WHERE written_by = 'Todd Casey'
SELECT T2.series_name , T2.Country FROM cartoon AS T1 JOIN TV_CHANNEL AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\" AND T1.directed_by = \"Michael Chang\"
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'english'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel GROUP BY id HAVING count(*) >= 3;
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel JOIN tv_series AS T3 ON T2.series = T3.series WHERE T3.directed_by = 'Ben Jones')
SELECT Package_Option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.id FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" )
SELECT count(*) FROM people WHERE Nationality = \"Car Gamer\"
SELECT count(*) FROM people WHERE Nationality = \"Car Gamer\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT avg(T1.Money_Rank) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT Money_Rank FROM poker_player WHERE Final_Table_Made = (SELECT Final_Table_Made FROM people ORDER BY Income DESC LIMIT 1)
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 GROUP BY T1.Table_Made HAVING count(*) >= 1
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000;
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\"
SELECT T2.Name FROM people AS T1 JOIN car_gamer AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.People_ID ORDER BY COUNT(*) ASC;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T2.Nationality = \"Car Gamer\"
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200;
SELECT T2.Name FROM people AS T1 JOIN car_gamer AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\" ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people EXCEPT SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Finishing >= 45 {}
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(*) FROM area_code_state AS T1;
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES AS T1;
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T2 JOIN VOTES AS T1 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM VOTES AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.state = T2.state WHERE T2.state = \"NY\" OR T2.state = \"CA\"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T1.state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabatha_gehling = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 1 AND T2.phone_number IN (SELECT T3.phone_number FROM area_code_state AS T3 JOIN votes AS T4 ON T3.state = T4.state WHERE T4.contestant_number = 2) AND T4.phone_number IN (SELECT T5.phone_number FROM area_code_state AS T5 JOIN votes AS T6 ON T5.state = T6.state WHERE T6.contestant_number = 1) AND T6.phone_number IN (SELECT T7.phone_number FROM area_code_state AS T7 JOIN votes AS T8 ON T7.state = T8.state WHERE T8.contestant_number = 2) WHERE T8.contestant_name = \"Tabatha Gehling\" AND T8.phone_number IN (SELECT T9.phone_number FROM area_code_state AS T9 JOIN votes AS T10 ON T9.state = T10.state WHERE T9.contestant_number = 1 AND T9.phone_number IN (SELECT T10.phone_number FROM area_code_state AS T10 JOIN votes AS T11 ON T10.state = T11.state WHERE T11.contestant_number = 2)) AND T11.phone_number IN (SELECT T12.phone_number FROM area_code_state AS T12 JOIN votes AS T13 ON T12.state = T13.state WHERE T13.contestant_number = 1 AND T13.phone_number IN (SELECT T13.phone_number FROM area_code_state AS T13 JOIN votes AS T14 ON T13.state = T14.state WHERE T14.contestant_number = 2)) WHERE T14.contestant_name = \"Kelly Clauss\"
SELECT contestant_name FROM CONTESTants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indepyear > 1950;
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T1.Continent = "Caribbean" AND T2.Continent = "Caribbean"
Anguilla is located in the Caribbean region of the world. Therefore, its continent is Caribbean.
Anguilla is located in the Caribbean region of the world. Therefore, its continent is Caribbean.
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.District = "Kabul"
SELECT region FROM country WHERE code = 'Kabul'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM city WHERE name = \"Aruba\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM city WHERE Name = "Aruba") GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
Region = "Angola" , Population = 13405867
SELECT region , population FROM country WHERE name = 'Angola'
SELECT avg(LifeExpectancy) FROM country WHERE Region = \"Central Africa\"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Central Africa\"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" ORDER BY T1.LifeExpectancy ASC LIMIT 1;
SELECT sum(population) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Europe'
SELECT sum(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) , count(*) FROM country WHERE GovernmentForm = 'United States' AND Code != 'USA'
SELECT avg(GNP) , count(*) FROM country WHERE Code = 'USA'
SELECT count(DISTINCT language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan')
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan') AND isofficial != 0
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1;
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = 'English' INTERSECT SELECT count(*) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.language = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language IN ('English', 'Dutch')
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language IN ('English', 'Dutch')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language IN ('English', 'Dutch')
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1 AND GovernmentForm = "Republic"
SELECT Language FROM countrylanguage WHERE IsOfficial = 'Yes' AND GovernmentForm = 'Republic' GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY sum(T1.population) DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != \"English\"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(T1.population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English'
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = "Yes"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = \"Beatrix\" AND T1.IsOfficial = 1
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.indepyear < 1930;
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > ( SELECT surfacearea FROM country WHERE continent = 'Europe' ORDER BY surfacearea DESC LIMIT 1 )
SELECT name FROM country WHERE continent = 'African' AND population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.code from country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.language != 'English' {}
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT name FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English' INTERSECT SELECT governmentform FROM countrylanguage WHERE language = 'English') AND governmentform != 'Republic'
SELECT code FROM country WHERE governmentform != 'Republic' EXCEPT SELECT code FROM country WHERE language = 'English'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Europe" AND T2.Language != "English"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English" AND T2.IsOfficial == 0
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Language = "Chinese" GROUP BY T1.Name HAVING count(*) >= 1 UNION SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Language = "Chinese" GROUP BY T1.Name HAVING count(*) <= 1000000
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T2.IsOfficial = 'Yes' AND T1.Continent = 'Asia'
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , T1.name , T2.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 1;
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT T1.GovernmentForm , sum(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING avg(T1.LifeExpectancy) > 72;
SELECT sum(T1.Population) , T2.GovernmentForm FROM country AS T2 JOIN countrylanguage AS T3 ON T2.Code2 = T3.Code WHERE T2.lifeexpectancy > 72 GROUP BY T2.GovernmentForm HAVING count(*) > 100
SELECT avg(LifeExpectancy) , count(*) FROM country WHERE LifeExpectancy < 72 GROUP BY continent;
SELECT count(*) , avg(LifeExpectancy) FROM country WHERE continent IN (SELECT continent FROM countrylanguage GROUP BY continent HAVING avg(lifeexpectancy) < 72)
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code WHERE T1.surfacearea > T2.surfacearea ORDER BY T1.surfacearea DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000;
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Language , T1.Percentage FROM countrylanguage AS T1 JOIN (SELECT countrycode FROM country AS T2 GROUP BY countrycode ORDER BY COUNT(*) DESC LIMIT 1) AS T3 ON T1.CountryCode = T2.countrycode GROUP BY T2.countrycode HAVING COUNT(*) >= 100
SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY sum(T2.Percentage) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' GROUP BY t2.countrycode ORDER BY sum(t2.percentage) DESC LIMIT 1;
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > (SELECT max(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING count(*) >= 5000 AND count(*) <= 10000
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_OFFounded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNISHED DESC
SELECT avg(Attendance) FROM show AS T1
SELECT avg(Attendance) FROM show AS T1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Foundation DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work = (SELECT max(YEAR_OF_WORK) FROM conductor)
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT T2.Name , T3.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID {}
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Work = T2.Year_of_Founded {}
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN show AS T3 ON T2.Performance_ID = T3.Performance_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Foundations > 2008 GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found > 2008 {}
SELECT RECORD_COMPANY , COUNT(*) FROM orchestra GROUP BY RECORD_COMPANY HAVING COUNT(*) > 1000
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT RECORD_COMPANY FROM orchestra GROUP BY RECORD_COMPANY ORDER BY count(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM conductor WHERE Nationality != \"Major\" UNION SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID EXCEPT SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID
SELECT ensemble FROM performance WHERE TYPE != \"performance\";
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded BETWEEN 2003 AND 9999 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded BETWEEN 2004 AND 9999
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded < 2003 AND T2.Year_of_Founded > 2003
SELECT count(*) FROM orchestra WHERE Record_Company IN (SELECT Record_Company FROM performance WHERE TYPE = \"CD\" OR TYPE = \"DVD\")
SELECT count(*) FROM orchestra WHERE Record_Company = \"CD\" OR Record_Company = \"DVD\"
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.year_of_work HAVING COUNT(*) > 1;
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.year_of_work HAVING count(*) > 1;
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
Highschooler.name , Highschooler.grade : (SELECT name , grade FROM Highschooler)
Highschooler.name , Highschooler.grade FROM Highschooler AS T1 {}
SELECT DISTINCT grade FROM Highschooler;
SELECT DISTINCT grade FROM highschooler;
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10;
SELECT name FROM highschooler WHERE grade = 10;
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 1 {}
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.id = (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = T1.id AND T1.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Friend WHERE friend_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T3.friend_id = T2.friend_id WHERE T3.id IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id )
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id) AND T1.id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2 )
SELECT count(*) , student_id FROM Likes GROUP BY student_id;
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 {}
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 AND T1.grade > 5
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM (SELECT T1.student_id FROM Like AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle' GROUP BY T1.student_id)
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Veterinarian' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Guardian' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Veterinarian' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Guardian'
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Veterinarian' AND T1.state IN (SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Guardian')
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) != 0;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'health'
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.home_phone FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT T1.id , T1.last_name , T1.cell_number FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T1.treatment_type_code WHERE T3.cost_of_treatment > 1000;
SELECT first_name FROM owners WHERE owner_id IN (SELECT owner_id FROM professionals WHERE role_code = 'guardian' UNION SELECT owner_id FROM professionals WHERE role_code = 'Veterinarian') EXCEPT SELECT first_name FROM owners WHERE first_name LIKE '%dog%'
SELECT first_name FROM owners WHERE owner_id NOT IN ( SELECT T1.owner_id FROM dogs AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'dog guardian' ) UNION SELECT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian'
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog' EXCEPT SELECT T4.role_code , T4.first_name , T4.last_name FROM professionals AS T4 JOIN treatments AS T5 ON T4.professional_id = T5.professional_id JOIN dogs AS T6 ON T5.dog_id = T6.dog_id WHERE T6.breed_code = 'Dog'
SELECT * FROM professionals WHERE role_code = 'Veterinarian' EXCEPT SELECT T1.professional_id , T1.role_code FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.breue_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breue_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T2.last_name FROM Professional AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.owner_id JOIN Treatments AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.professional_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T1.cost_of_treatment) ASC LIMIT 1;
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN charges AS T2 ON T1.treatment_id = T2.charge_id GROUP BY T1.treatment_type_code ORDER BY sum(T2charge_amount) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.treatment_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treats AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.role_code = 'Vet'
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = \"health\"
SELECT T1.first_name , T1.last_name , T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T4.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN dogs AS T4 ON T2.size_code = T4.size_code
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = 'male' AND T1.first_name != '' AND T1.last_name != ''
SELECT T1.name , T4.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Rarest Puppy' ORDER BY T1.date_of_birth DESC LIMIT 1;
SELECT T1.name , T2.date_of_birth FROM dogs AS T1 JOIN ( SELECT breed_code FROM breeds GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1 ) AS T2 ON T1.breed_code = T2.breed_code WHERE T1.weight < ( SELECT min(weight) FROM dogs )
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia' {}
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN T2 AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code IN ( SELECT T3.treatment_type_code FROM T3 JOIN Treatment_Types AS T4 ON T3.treatment_type_code = T4.treatment_type_code WHERE T4.treatment_type_description = 'Puppy' )
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Puppy Health Care"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age DESC LIMIT 1;
SELECT email_address FROM owners WHERE state = 'Hawaii' UNION SELECT email_address FROM owners WHERE state = 'Wisconsin'
SELECT email_address FROM owners WHERE state = 'Hawaii' UNION SELECT email_address FROM owners WHERE state = 'Wisconsin'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
SELECT count(*) FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Puppy' AND T1.role_code = 'Veterinarian'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T2.breed_code = 'puppy'
SELECT T1.role_code , T1.street , T1.city , T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T1.role_code , T2.street , T2.city , T2.state FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges ORDER BY charge_date DESC LIMIT 1;
SELECT T1.cost_of_treatment FROM treatments AS T1 JOIN (SELECT * FROM treatments ORDER BY date_of_treatment DESC LIMIT 1) AS T2 ON T1.date_of_treatment = T2.date_of_treatment
SELECT count(*) FROM dogs WHERE breed_code NOT IN (SELECT breed_code FROM treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Puppy'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT T1.owner_id FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) > 1 )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT T1.owner_id FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = 'Puppy' )
SELECT count(*) FROM professionals WHERE role_code = 'Veterinarian' AND professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = "Puppy")
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = 'Puppy')
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT charge_type , charge_amount FROM charges AS T1;
SELECT charge_type , charge_amount FROM charges AS T1;
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , home_phone , cell_number FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , home_phone , cell_number FROM owners WHERE role_code = 'VETERINARIAN'
BREED_TYPES = ["Mascara", "Labrador", "Poodle"] SIZE_TYPES = ["Small", "Medium", "Large"] combos = [(breed_type , size_type) for breed_type in BREED_TYPES for size_type in SIZE_TYPES] print(combos)
SELECT DISTINCT T1.breed_type , T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.gender = 'P'
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T3.treatment_description FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer AS T1;
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship != \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Country from singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Country , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.Sales) > 0 {}
SELECT T2.Name , sum(T1.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING sum(T1.Sales) > 0
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 100 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 2006 AND 2015 {}
SELECT T2.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 AND T2.Birth_Year > 1955 GROUP BY T2.Country HAVING COUNT(*) >= 1 AND COUNT(*) <= 2
SELECT count(*) FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code
SELECT feature_type_code FROM Ref_Feature_Types WHERE feature_type_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_code IN (SELECT property_type_code FROM Properties GROUP BY property_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "House") OR room_count > 1 UNION SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "Apartment") AND room_count > 1
