SELECT count(*) FROM singer_in_concert AS t1 JOIN singer AS t2 ON t1.singer_id = t2.singer_id
SELECT count(*) FROM singer_in_concert AS T1;
SELECT name , country , age FROM singer ORDER BY age ASC;
SELECT name , nationality , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT name FROM singer WHERE age > 20 AND name NOT IN (SELECT DISTINCT name FROM singer WHERE age <= 19)
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT T2.song_name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.studio_id WHERE T1.age > avg(T1.age) GROUP BY T2.song_name ORDER BY avg(age) DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.song_name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.concert_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT name , LOCATION FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium AS t1;
SELECT avg(capacity) , max(capacity) FROM stadium AS T1
SELECT name , capacity FROM stadium ORDER BY avg(attendance) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id GROUP BY t1.stadium_id;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT max(T1.year) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2019 AND T2.year != 2020 AND T2.year != 2021
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , count(*) , T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name HAVING count(*) > 0
SELECT T1.concert_name , T2.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014 {}
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%' OR song_name LIKE '%Hey%'
SELECT T1.name , T1Highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE pet_weight > 10
SELECT count(*) FROM Pets WHERE pet_weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 OFFSET 0 WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT min(weight) FROM Pets WHERE pet_age = 1
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT max(weight) , category FROM Pets GROUP BY category HAVING count(*) >= 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20;
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20 AND T2.pet_id IN (SELECT pet_id FROM Pets WHERE pet_age > 20)
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) >= 0.5
SELECT count(DISTINCT pet_type) FROM pets WHERE pet_type = 'domestic'
SELECT count(DISTINCT pet_type) FROM pets AS T1 JOIN has_pet AS T2 ON T1.pet_id = T2.pet_id GROUP BY T1.pet_type;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'puppy'
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = \"kitten\" AND T1.lname IN (SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = \"puppy\")
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pet_type = 'kitten' )
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM pets WHERE pettype = "kitten")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE pet_type = 'Kitten'))
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT T1.StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = 'Kitten')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = 'Puppy' EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = 'Cat'
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten'
SELECT pet_type , weight FROM Pets ORDER BY pet_age ASC LIMIT 1;
SELECT T1.pet_type , T1.weight FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T2.pet_age ASC LIMIT 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT avg(age) , max(age) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type HAVING count(*) >= 1;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets)
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN ( SELECT petid FROM Pets )
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith'
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith'
SELECT count(*) , T1.stuid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT count(*) , T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.lname , T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T3.pet_type = "Kitten"
SELECT T1.Lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T3.pet_type = \"kitten\";
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents AS T1
SELECT count(*) FROM continents AS T1;
SELECT T1.continent , T1.continent_name , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contId = T2.continent GROUP BY T1.continent_name HAVING count(*) > 0
SELECT T1.continent , T1.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.countryid GROUP BY T1.contid HAVING count(*) > 0
SELECT count(*) FROM (SELECT DISTINCT country FROM countries)
SELECT count(*) FROM countries AS T1
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 0 ORDER BY count(*) DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Horsepower = (SELECT min(Horsepower) FROM model_list)
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T1.year = 1970;
SELECT T2.maker , min(T1.year) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id GROUP BY T2.maker ORDER BY min(T1.year) ASC LIMIT 1;
SELECT T1.maker , T1.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName FROM car_makers AS T1 JOIN country AS T2 ON T1.Country = T2.CountryId GROUP BY T1.FullName ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.FullName , COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC;
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 0
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'AMC' AND T2.model = 'Hornet Sportabout'
SELECT sum(Accrate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.make = 'AMC' AND T2.model = 'Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE Country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.modelid = T2.model WHERE T1.makeid IN (SELECT id FROM car_makers WHERE country = 'United States')
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.0
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.0
SELECT min(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T1.Cylinders = 8 AND T2.Year = 1974;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT DISTINCT maker FROM model_list UNION SELECT DISTINCT maker FROM car_names
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 1
SELECT T1.continent , T1.countryid , T2.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model GROUP BY T1.id HAVING count(*) > 0 {}
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.Concontinent = "Europe" GROUP BY T1.Country HAVING COUNT(*) >= 3;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3 AND CONTINENT = 'Europe'
SELECT max(T2.Horsepower) , T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING count(*) >= 1
SELECT max(T2.Horsepower) , T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING max(T2.Horsepower) = (SELECT max(Horsepower) FROM model_list WHERE Cylinders = 3)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker GROUP BY T2.model ORDER BY sum(T1.MPG) DESC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.MPG DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(T2.Horsepower) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.year < 1980 GROUP BY T1.makeid HAVING avg(T2.Horsepower) != 0.0;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.make = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE Make = 'Volvo'
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING count(*) > 1;
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1;
SELECT Model FROM model_list GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = 'American Motor Company' AND T2.model = 'Auto'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T2.Make FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight > 3500 OR T1.FullName = 'General Motors'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 {}
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = 0 AND Maker = 'Volvo'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = 1 AND Maker = 'Volvo'
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data WHERE Power = (SELECT max(Power) FROM cars_data))
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data) AND T2.cylinders < 3 GROUP BY T1.makeid HAVING count(*) <= 3
SELECT id , maker , model FROM cars_data WHERE mpg NOT IN ( SELECT min(mpg) FROM cars_data ) AND cylinders < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T1.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.makeid = T3.id WHERE T3.FullName = 'Ford Motor Company'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Weight < 3500 EXCEPT SELECT DISTINCT Model FROM model_list WHERE Maker = 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers GROUP BY country )
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT maker FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers GROUP BY id HAVING count(*) <= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) > 2 INTERSECT SELECT id , maker FROM car_makers WHERE id NOT IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) < 3)
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Model WHERE T2.Model = 'fiat' {}
SELECT id , countryname FROM car_makers GROUP BY countryid HAVING count(*) > 3 UNION SELECT id , make FROM car_names GROUP BY make HAVING count(*) > 2
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "Los Angeles International" AND T1.Abbreviation = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T3.uid = T1.airline WHERE T3.Airline = 'Jetblue Airways'
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA" ORDER BY Length ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Airline , T2.ShortenedWord FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'United States' AND city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM (SELECT DISTINCT Airline FROM flights)
SELECT sum(T1.length) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.country ORDER BY sum(T1.length) DESC LIMIT 1;
SELECT count(*) FROM airports AS T1
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) > 0
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Akosari'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'United States' AND airline = 'American Airlines') AND sourceairport = 'Los Angeles' AND flightno = '1234567890' AND destination = 'New York' AND T1.terminal = 'ATA'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairline = 'Airline' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'Aberdeen' AND T2.countryabbreviation = 'United Kingdom' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'Aberdeen' AND T2.countryabbreviation = 'United Kingdom' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") INTERSECT SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Ashley")
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = 'JetBlue Airways' AND T1.SourceAirport != T1.DestAirport
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines' AND T2.airstation = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'United Airlines' AND T2.countryabbreviation = 'United States' AND T2.city = 'Asym'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines' AND T2.country = 'United States' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines' AND T2.country = 'United States' AND T2.city = 'Hampton Beach'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United Airlines' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'United' AND T2.country = 'Scotland' AND T1.destairport = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT city FROM airports WHERE country = 'United States' GROUP BY city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline , T2.country FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.country ORDER BY count(*) LIMIT 1;
SELECT T1.airline , T2.country FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.country ORDER BY count(*) LIMIT 1;
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'AHD' AND T1.destairport IN ( SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'AHD')
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T3.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.sourceairline = T3.uid WHERE T2.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairline = 'Airline' AND T2.FlightNo = 'AHD'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' AND T1.destairport = T2.airportcode INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' AND T1.destairport = T2.airportcode WHERE T2.country = 'Germany' AND T1.destairport = T2.airportcode
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'APG' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'CVO'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destairport = 'CVO' EXCEPT SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destairport = 'APG'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairline = 'CVO' EXCEPT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairline = 'APG'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airway HAVING count(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.Airline HAVING count(*) >= 10
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airway HAVING count(*) < 200;
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Abbreviation = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT T2.FlighCode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Aberdeen")
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'United Kingdom') AND destairport = 'Aberdeen'
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "United Kingdom" AND T1.destairport = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T2.city = 'Aberdeen' UNION SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T1.destairport = 'Aberdeen' UNION SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T1.destairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights INTERSECT SELECT destairport FROM flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN ( SELECT sourceairport FROM flights UNION SELECT destairport FROM flights )
SELECT count(*) FROM employee AS T1;
SELECT count(*) FROM employee AS T1;
SELECT name FROM employee ORDER BY age ASC;
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) != 0
SELECT count(*) , city FROM employee GROUP BY city;
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city HAVING count(*) != 0
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) > 0
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1;
SELECT T1.name , T1.city , T1.district FROM shop AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id WHERE T1.number_products > T2.number_products ORDER BY T1.number_products DESC;
SELECT name , district , city FROM shop ORDER BY number_products DESC;
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.start_from DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT min(YEAR_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id;
SELECT count(*) , T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id HAVING count(*) > 0
SELECT sum(T1.Bonus) FROM evaluation AS T1 WHERE T1.Year_awarded != 2018 AND T1.Bonus != 0
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id;
SELECT * FROM hiring
SELECT * FROM hiring AS T1 UNION SELECT * FROM employee AS T2 WHERE T1.employee_id = T2.employee_id UNION SELECT * FROM evaluation AS T3 WHERE T1.employee_id = T3.employee_id UNION SELECT * FROM shop AS T4 WHERE T1.shop_id = T4.shop_id;
SELECT district FROM shop WHERE number_products BETWEEN 0 AND 2999 INTERSECT SELECT district FROM shop WHERE number_products > 10000 {}
SELECT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT count(DISTINCT LOCATION) FROM shop AS T1;
SELECT count(DISTINCT LOCATION) FROM shop AS T1;
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id;
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id;
SELECT document_id , document_name , document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id UNION SELECT document_id , document_name , document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_id , document_name , document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_name , document_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T1.layout_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Robbin CV\"
SELECT document_id , layout_id , document_description FROM Documents WHERE document_name = \"Robbin CV\"
SELECT count(DISTINCT document_id) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"Layout\"
SELECT count(DISTINCT template_type_code) FROM Ref_Template_Types WHERE template_type_description = \"Text\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , T1.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_id HAVING count(*) > 0
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN ( SELECT t1.template_id FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id )
SELECT template_id FROM documents WHERE document_id NOT IN (SELECT document_id FROM paragraphs) UNION SELECT template_id FROM templates WHERE template_type_code = \"Layout\"
SELECT count(*) FROM Ref_template_types;
SELECT count(*) FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_type_code;
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Ref_template_types AS T2 JOIN Templates AS T1 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T2.edition_number , T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description != \"\" DESIGNED BY USER CODE = 1024\"\"
SELECT DISTINCT template_type_code FROM Ref_template_types;
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_description = \"PPT\")
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_description = \"PPT\")
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code = 'CV'
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = 'CV'
SELECT edition_number , template_layout_type FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.date_effective_from > 5;
SELECT template_type_code , template_layout_type_name FROM Ref_Template_Types WHERE template_type_code IN ( SELECT template_type_code FROM Templates WHERE version_number > 5 )
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code;
SELECT count(*) , template_type_code FROM Ref_template_types GROUP BY template_type_code;
SELECT template_type_code FROM ref_template_types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code ORDER BY version_number ASC LIMIT 1;
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code ORDER BY min(version_number) LIMIT 1;
SELECT template_type_code FROM Templates WHERE template_details = \"Data base\"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT document_name FROM Documents WHERE document_id IN ( SELECT document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\" )
SELECT count(*) , template_type_code FROM Ref_template_types GROUP BY template_type_code;
SELECT count(*) , template_type_code FROM Documents GROUP BY template_type_code HAVING count(*) > 0
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = \"AD\"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.document_name = \"AD\"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"Book\"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.document_name IN (SELECT document_name FROM Documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 100)
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name IN (SELECT document_name FROM Documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 1)
SELECT template_id FROM Documents WHERE document_description = \"Presentation\"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id HAVING sum(count(*) ) > 0
SELECT count(*) FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id GROUP BY t2.document_id;
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT T1.Other_details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = \"Korea\"
SELECT T1.Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Welcome to NY\"
SELECT T1 paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Welcome to NY'
SELECT t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT count(*) , T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id ASC
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id , t1.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , t1.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1 OFFSET 0;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id , paragraph_text FROM paragraphs WHERE document_id IN ( SELECT document_id FROM documents WHERE document_name = \"Brazil\" INTERSECT SELECT document_id FROM documents WHERE document_name = \"Ireland\")
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1;
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT age , hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT name FROM teacher WHERE hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown <> \"Little Lever Urban District\"
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT name FROM teacher ORDER BY age ASC LIMIT 1;
SELECT count(*) , T1.name FROM teacher AS T1 JOIN instructor AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) > 0;
SELECT count(*) , name FROM teacher GROUP BY name HAVING count(*) > 0
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN (SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1) AS T2 ON T1.Hometown = T2.Hometown
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Faculty_ID = T2.Faculty_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) >= 2;
SELECT T1.name , T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY T2.grade ASC ;
SELECT T1.Name , T2.Name FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.name , T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC;
SELECT T2.Name , T1.Courseresult FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.course = 'Math'
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course_id = (SELECT course_id FROM course WHERE course_id = 'Math')
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name;
SELECT count(*) , T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name HAVING count(*) > 0;
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2;
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 4.0
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age DESC;
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1;
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT avg(total_spent) , max(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 3
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1;
SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year < 2009 INTERSECT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING sum(T2.score) >= 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM MATCHES AS T1;
SELECT count(*) FROM matches AS T1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(T1.loser_age) , avg(T2.winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id GROUP BY T1.winner_id , T1.loser_id;
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id UNION SELECT avg(winner_age) , avg(loser_age) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id {}
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id HAVING count(*) >= 1;
SELECT avg(T2.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING count(*) >= 1;
SELECT max(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id HAVING min(T2.loser_age) = (SELECT min(loser_age) FROM matches)
SELECT ranking FROM rankings WHERE ranking_points = (SELECT max(t2.rankings_points) FROM rankings AS t1 JOIN players AS t2 ON t1.player_id = t2.player_id) ORDER BY loser_rank DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT T1.loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T2.country_code != 'USA'
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id HAVING count(*) > 1;
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT T1.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = 2016
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 5 AND T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 6 AND T2.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championship\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , state_abbr FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.winner_name , T2.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' AND T2.tourney_rank = (SELECT max(tourney_rank) FROM rankings WHERE player_id IN (SELECT player_id FROM players WHERE country_code = 'Australia'))
SELECT T2.winner_name FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T1.ranking_points DESC LIMIT 1;
SELECT T1.loser_name , T2.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1;
SELECT T1.winner_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , avg(T2.rankings) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.rankings) > 0 {}
SELECT T1.first_name , T1.last_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.rank) >= 3 ORDER BY avg(T2.rank) DESC LIMIT 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY T2.ranking_points DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT T1.abbr FROM state AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.abbr ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT sum(T1.tourney_rank_points) , T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking_date HAVING count(*) >= 0
SELECT sum(T1.tours) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_date HAVING count(*) > 0
SELECT count(*) , YEAR FROM matches GROUP BY YEAR;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.birth_date LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.year ASC LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_id IN (SELECT tourney_id FROM wta_championships WHERE tourney_name = 'WTA Championships') AND T2.hand = 'Left'
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championship\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.country_code , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = (SELECT max(ranking_points) FROM rankings)
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) , hand FROM players GROUP BY hand HAVING count(*) >= 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name , date , result FROM battle
SELECT max(t1.killed) , min(t1.killed) FROM death AS t1 JOIN ship AS t2 ON t1.caused_by_ship_id = t2.id
SELECT avg(injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id;
SELECT T1.note , T2.killed , T2.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.ship_type = 'Brig' AND T2.result = 'Lost'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.ship_type WHERE T1.bulgarian_commander = 'Kaloyan' AND T2.name IN (SELECT T3.name FROM battle AS T3 JOIN ship AS T4 ON T3.id = T4.ship_type WHERE T3.latin_commander = 'Baldwin I')
SELECT count(DISTINCT result) FROM battle AS T1;
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.tonnage = 225 )
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T1.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T1.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT id FROM ship WHERE lost_in_battle = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses AS T1;
SELECT count(*) FROM courses AS T1;
SELECT count(*) FROM courses AS T1
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT T1.course_description FROM courses AS T1 JOIN courses AS T2 ON T1.course_description = T2.course_description WHERE T1.course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT T1.degree_summary_name , T1.department_id FROM Degree Programs AS T1 JOIN courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM Degree Programs;
SELECT count(DISTINCT department_id) FROM degree_programs AS T1 JOIN courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id HAVING count(*) > 0
SELECT count(DISTINCT degree_summary_name) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs AS T1
SELECT count(*) FROM courses AS T1 JOIN degree_programs AS T2 ON T1.course_id = T2.course_id WHERE T2.department_id = (SELECT department_id FROM departments WHERE department_name = 'Engineering')
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = \"Engineering\";
SELECT T1.section_name , T1.section_description FROM SECTION AS T1
SELECT T1.section_name , T1.section_description FROM SECTION AS T1 JOIN COURSES AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTIONs AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.semester_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.semester_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.semester_id ORDER BY count(*) DESC LIMIT 1;
SELECT other_details FROM courses WHERE course_name LIKE '%the computer%'
SELECT other_details FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.last_name , T1.student_id , T4.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T4 ON T2.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = '2' GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.name , T1.middle_name , T1.student_id , T2.semester_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2' GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors')
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , T1.degree_summary_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Course_Courses AS T2 ON T1.course_id = T2.course_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Course AS T2 ON T1.course_id = T2.course_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) >= 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN courses AS T2 ON T1.current_address_id = T2.course_id JOIN degree_programs AS T3 ON T1.current_address_id = T3.degree_program_id WHERE T3.department_id IN (SELECT T4.department_id FROM students AS T4 JOIN courses AS T5 ON T4.current_address_id = T5.course_id WHERE T5.course_name = 'Degree Program')
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'North Carolina'
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT cell_mobile_number FROM students WHERE first_name = \"Timothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 != T1.permanent_address_id;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.zip_postcode != T1.permersenly_address_id;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students AS T1;
SELECT avg(date_first_registered) FROM students AS T1;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered LIMIT 1;
SELECT min(transcript_date) , other_details FROM transcripts WHERE other_details != \"null\" ORDER BY transcript_date ASC LIMIT 1;
SELECT count(*) FROM students AS T1;
SELECT count(*) FROM students AS T1;
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1;
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1;
SELECT count(*) , student_enrolment_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1;
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 3 AND T2.student_id IN ( SELECT T1.student_id FROM Students AS T4 JOIN Student_Enrolment AS T5 ON T4.student_id = T5.student_id WHERE T4.degree_program_id = 4 ) INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 4 AND T2.student_id IN ( SELECT T1.student_id FROM Students AS T4 JOIN Student_Enrolment AS T5 ON T4.student_id = T5.student_id WHERE T4.degree_program_id = 5 )
SELECT T1.semi_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T1.degree_program_id = 1 AND T2.course_id IN ( SELECT T3.course_id FROM Student_Enrolment AS T3 JOIN Student_Enrolment_Courses AS T4 ON T3.student_enrolment_id = T4.student_enrolment_id WHERE T4.degree_program_id = 2 ) INTERSECT SELECT T1.semi_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T1.degree_program_id = 2 AND T2.course_id IN ( SELECT T3.course_id FROM Student_Enrolment AS T3 JOIN Student_Enrolment_Courses AS T4 ON T3.student_enrolment_id = T4.student_enrolment_id WHERE T4.degree_program_id = 1 )
SELECT count(*) FROM (SELECT DISTINCT current_address_id FROM students)
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id HAVING count(*) > 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT other_student_details FROM students ORDER BY other_student_details DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT other_student_details FROM students ORDER BY last_name DESC LIMIT 10
SELECT DISTINCT T1.section_name FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = 'h'
SELECT other_description FROM courses WHERE course_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' UNION SELECT first_name , last_name FROM Students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'Haiti' AND T1.cell_mobile_number = "09700166582"
SELECT title FROM animation ORDER BY title ASC;
SELECT title FROM cartoon ORDER BY title ASC
SELECT DISTINCT T2.directed_by FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.Written_by WHERE T2.Old_air_date = (SELECT Air_Date FROM TV_channel ORDER BY Air_Date ASC LIMIT 1) AND T2.Written_by = \"Joseph Kuhr\"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Joseph Kuhr'
SELECT T1.animation , T2.directed_by FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date ASC
SELECT T1.title , T1.directed_by FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel ORDER BY T2.air_date ASC
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by IN (SELECT directed_by FROM animation WHERE directed_by = \"Ben Jones\" OR directed_by = \"Brandon Vietti\")
SELECT T2.Title FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.directed_by WHERE T2.Written_by = \"Ben Jones\" OR T2.Written_by = \"Brandon Vietti\"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , country FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel AS T1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel AS t1;
SELECT CONTENT FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Series_name LIKE '%Sky Radio%'
SELECT Package_Option FROM TV_CHANNEL WHERE series_name = \"Sky Radio\"
SELECT package_option FROM TV_CHANNEL WHERE series_name = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) LIMIT 1;
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) LIMIT 1;
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE;
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM TV_channel AS T2 JOIN cartoon AS T1 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN tv_series AS T3 ON T1.id = T3.channel WHERE T3.episode = '10' AND T3.series_name = 'Sky Radio'
SELECT Episode FROM TV_series ORDER BY Rating ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT id FROM TV_channel ORDER BY rating ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.episode , T2.rating FROM TV_series AS T2 JOIN TV_channel AS T1 ON T1.id = T2.channel ORDER BY T1.rating DESC LIMIT 3;
SELECT Rating , Episode FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT min(Share) , max(Share) FROM TV_series AS T1
MAX(Share) = 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Air_Date FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT air_date FROM TV_series WHERE episode = 'A Love of a Lifetime'
SELECT Weekly_Rank FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT avg(T2.Score) FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = \"A Love of a Lifetime\"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.series_name = \"Sky Radio\"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT Production_code , Channel FROM Cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE hight_definition_tv = 'HD'
SELECT package_option , series_name FROM TV_CHANNEL WHERE hight_definition_tv = 'HD'
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T2.channel = T3.channel WHERE T3.title = "Todd Casey: Animation"
SELECT T1.state FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey' AND T1.content = 'TV Animation'
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.written_by = 'Todd Casey' )
SELECT state FROM cartoon WHERE written_by = 'Todd Casey' EXCEPT SELECT state FROM cartoon WHERE written_by = 'Todd Casey'
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2.directed_by = 'Michael Chang'
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English' AND content != 'Television'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'english' AND channel NOT IN ( SELECT id FROM TV_channel WHERE LANGUAGE = 'english' )
SELECT id FROM TV_channel WHERE country IN (SELECT country FROM TV_channel GROUP BY country HAVING count(*) > 2)
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\"
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\"
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\" ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Revenue < 200000 AND T1.Nationality = \"Car\"
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Finishing = 1 AND T1.Nationality = 'Car Gamer'
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY count(*) ASC;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1;
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 GROUP BY T1.Height HAVING avg(T1.Revenue) > 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 GROUP BY T1.Name HAVING avg(T1.Revenue) != 0.0 {}
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY T2.Earnings DESC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > (SELECT min(Earnings) FROM poker_player) ORDER BY T1.Earnings DESC;
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(DISTINCT Nationality) FROM people AS T1;
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC;
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state AS T1;
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = 'NY' OR T2.state = 'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = \"Tabatha Gehling\"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indepyear > 1950;
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.Region = "Caribbean"
Caribbean = "The islands of the Caribbean Sea, including the Bahamas, Turks and Caicos Islands, and the West Indies." TotalTerritory = sum(T1.SurfaceArea) * T2.Population TotalTerritory = TotalTerritory / 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Kabul'
SELECT Language FROM countrylanguage WHERE CountryCode = 'Aruba' GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Aruba" GROUP BY t1.Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
ANGOLA.Region = "Angola" angola_population = population(angola)
ANGOLA.Region = "Africa" angola.population = 24109781.0
SELECT avg(LifeExpectancy) FROM country WHERE Region = \"Central Africa\"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT name FROM country WHERE lifeexpectancy < (SELECT max(lifeexpectancy) FROM country WHERE continent = 'Asia') ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT name FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GBN) FROM country WHERE code IN (SELECT code FROM city WHERE countrycode IN (SELECT code FROM country)) AND region = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT avg(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT Population FROM city WHERE District = 'Gelderland'
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) , count(*) FROM country WHERE code IN ( SELECT code FROM country WHERE governmentform = 'United States' )
SELECT avg(GNP) , count(*) FROM country WHERE code IN ( SELECT code FROM city WHERE region = 'USA' )
SELECT count(DISTINCT Language) FROM countrylanguage AS T1;
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Population > 500000000
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 1 AND CountryCode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Dutch' {}
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = \"French\"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Chinese' AND T2.isofficial = 1
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('English', 'Dutch')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language IN ('English', 'Dutch')
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = \"Asia\" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE IsOfficial = 'Yes' GROUP BY CountryCode HAVING COUNT(*) = 1 ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.CountryCode HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country) AND localname = 'Asian' ORDER BY lifeexpectancy DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.code HAVING avg(T1.lifeexpectancy) > 70.5389572848067
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.code HAVING avg(T1.LifeExpectancy) != 0.0印象主义
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = \"Beatrix\" AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = \"Beatrix\" AND T1.CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = \"English\") AND T1.IsOfficial = 1
SELECT count(DISTINCT Language) FROM countrylanguage WHERE Percentage > 0 AND IndepYear < 1930;
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 1 AND Percentage > 50.0 WHERE IndepYear < 1930;
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE continent = 'Europe' ORDER BY surfacearea DESC LIMIT 1)
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent != 'Africa'
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia' INTERSECT SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia' INTERSECT SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT stateabbreviation FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.nationalabbreviation FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.nationalabbreviation HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.nationabbreviation FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT name FROM country WHERE code != 56 AND governmentform != 'Republic' EXCEPT SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT abbreviation FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English') EXCEPT SELECT abbreviation FROM country WHERE governmentform = 'Republic'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English' AND T2.isofficial == 0 INTERSECT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial == 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 'No' EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'German' AND T2.isofficial = 'No'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Chinese' GROUP BY T1.id HAVING count(DISTINCT T1.name) = count(*) INTERSECT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Asian' GROUP BY T1.id HAVING count(DISTINCT T1.name) = count(*)
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T1.CountryCode IN ( SELECT T3.CountryCode FROM country AS T3 JOIN countrylanguage AS T4 ON T3.Code = T4.CountryCode WHERE T4.IsOfficial = 'Yes' ) INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T1.CountryCode IN ( SELECT T3.CountryCode FROM country AS T3 JOIN countrylanguage AS T4 ON T3.Code = T4.CountryCode WHERE T4.IsOfficial = 'Yes' )
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 1;
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3 ORDER BY count(*) DESC LIMIT 30000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , count(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district HAVING count(*) > (SELECT count(*) FROM city GROUP BY district)
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) != 0
SELECT governmentform , sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72;
SELECT sum(T1.population) , T2.governmentform FROM country AS T2 JOIN city AS T1 ON T1.countrycode = T2.code GROUP BY T2.governmentform HAVING avg(T1.population) > 72;
SELECT avg(LifeExpectancy) , continent FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72;
SELECT name , region FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population LIMIT 3;
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000;
SELECT sum(T1.population) , avg(T1.surfacearea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'North America' AND T2.area > 3000 GROUP BY T1.code HAVING sum(T1.population) > 3000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Language , T1.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT sum(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T2.countrycode HAVING percentage >= 50%;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING percentage > (SELECT min(percentage) FROM countrylanguage WHERE language = 'Spanish') ORDER BY percentage DESC LIMIT 1;
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_OFFounded DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(Attendance) FROM show AS T1
SELECT avg(Attendance) FROM show AS T1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT T1.Name , T2.Organisation FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded != 0
SELECT T1.Name , T2.Organizational_Ensemble FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 3;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name;
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC;
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT * FROM ensemble WHERE performance_id != performance_id;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 1 AND 2002 UNION SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2003;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2003
SELECT count(*) FROM orchestra WHERE Record_Company = \"CD\" OR Record_Company = \"DVD\"
SELECT count(*) FROM orchestra WHERE Record_Company IN ('CD', 'DVD')
SELECT T1.Year_of_Work FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Work HAVING COUNT(*) > 1;
SELECT T1.year_of_foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_foundation HAVING count(*) > 1 {}
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler AS T1 {}
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN FRIENDS AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle' AND T1.name != 'Kyle'
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name != \"Kyle\" AND T1.friend_id IN (SELECT ID FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name = \"Kyle\")).
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle')
SELECT count(*) FROM FRIEND WHERE friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id) INTERSECT SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id) AND T1.id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.liked_id = T3.student_id WHERE T3.friend_id != T1.id GROUP BY T1.id HAVING count(*) >= 1 AND count(*) <= 3
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id)
SELECT count(*) , student_id FROM LIKE GROUP BY student_id;
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.id HAVING min(T1.grade) > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING avg(T1.grade) > 5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM (SELECT T1.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle' INTERSECT SELECT T1.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle')
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T2.grade) != 0 {}
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T2.grade) != 0.0 {}
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT id FROM highschooler)
SELECT min(grade) FROM highschooler WHERE id NOT IN ( SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id )
SELECT state FROM professionals WHERE role_code = 'Veterinarian' EXCEPT SELECT state FROM professionals WHERE role_code = 'Veterinarian' INTERSECT SELECT state FROM professionals WHERE role_code = 'Guardian'
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Alabama' INTERSECT SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Arkansas' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'California' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Delaware' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Florida' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Georgia' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Hawaii' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Idaho' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Illinois' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Indiana' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Iowa' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Kansas' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Kentucky' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Louisiana' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Maine' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Maryland' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Massachusetts' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Michigan' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Minnesota' UNION SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) != 0.5;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.id , T1.first_name , T1.last_name , T1.home_phone FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT T1.id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Indiana' UNION SELECT T3.id , T3.last_name , T3.cell_number FROM professionals AS T3 JOIN treatments AS T4 ON T3.professional_id = T4.professional_id GROUP BY T3.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T2.name FROM charges AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.charge_amount > 1000 AND T2.treatment_type_code = 'health'
SELECT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT first_name FROM owners WHERE email_address LIKE '%dog%'
SELECT first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name != 'Dog' EXCEPT SELECT first_name FROM professionals WHERE role_code = 'guardian' UNION SELECT first_name FROM professionals WHERE role_code = 'Veterinarian'
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'Male' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'Female'
SELECT role_code , first_name , last_name FROM professionals WHERE role_code NOT IN ( SELECT T1.role_code FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Dog' )
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1;
SELECT T1.guardian_id , T1.family_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T2.name IN (SELECT T4.name FROM dogs AS T4 JOIN treatments AS T5 ON T4.dog_id = T5.dog_id GROUP BY T4.name ORDER BY sum(T5.cost_of_treatment) DESC LIMIT 1)
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN charges AS T2 ON T1.treatment_id = T2.charge_id GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'Vet'
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'Vet'
SELECT T1.treatment_type_description , T2.charge_type FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.charge_type = T2.charge_type
SELECT T1.treatment_type_description , T2.charge_type FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.charge_type = T2.charge_type
SELECT T1.first_name , T1.last_name , T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name ORDER BY T2.weight ASC;
SELECT T1.first_name , T1.last_name , T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name , T2.size_code HAVING count(*) >= 1;
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code
SELECT T1.name , T2.date_of_birth FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'Rarest' ORDER BY T2.date_of_birth DESC LIMIT 1;
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.weight ASC LIMIT 1;
SELECT T3.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.state = 'Virginia' AND T2.gender = 'Male'
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth ASC LIMIT 1;
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM owners WHERE state IN ('Hawaii', 'Wisconsin')
SELECT date_arrived , date_dejected FROM dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = 'Puppy' AND T1.cost_of_treatment != NULL;
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T3.breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T2.breed_code = 'puppy'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE first_name LIKE '%West%' OR last_name LIKE '%West%' OR street LIKE '%West%' OR city LIKE '%West%' OR state LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' AND date_of_birth NOT IN (SELECT T1.date_of_birth FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Puppy Health Care'
SELECT count(*) FROM dogs WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'puppy')
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'puppy' )
SELECT count(*) FROMVeterinarians WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'puppy')
SELECT count(*) FROM veterinarians WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'puppy' )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges AS T1;
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , cell_number , home_phone FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM professionals
SELECT DISTINCT breed_name , size_description FROM sizes AS T1 JOIN dogs AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT T1.breed_name , T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.age < 3 Years AND T2.weight < 100 Kilograms
SELECT T1.first_name , T1.last_name , T4.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Professionalization AS T4 ON T1.professional_id = T4.professional_id
SELECT T1.first_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> \"France\"
SELECT Name FROM singer WHERE Citizenship != \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , citizenship FROM singer GROUP BY citizenship HAVING COUNT(*) > 0
SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT T1.Name AS Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1) AS T3
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country HAVING max(Net_Worth_Millions) != 0
SELECT max(Net_Worth_Millions) , Name FROM singer GROUP BY Name HAVING max(Net_Worth_Millions) != 0
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T1 ON T3.Singer_ID = T1.Singer_ID JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 INTERSECT SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) >= 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 INTERSECT SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) < 1
SELECT T2.Name , SUM(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.sales) > 0 {}
SELECT T2.Name , sum(T1.sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING sum(T1.sales) > 0
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 AND Citizenship != \"Unknown\" UNION SELECT Citizenship FROM singer WHERE Birth_Year > 1955 AND Citizenship != \"Unknown\"
SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955 GROUP BY T1.Country HAVING COUNT(*) >= 2
SELECT count(*) FROM Other_available_features AS T1;
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_id IN (SELECT property_id FROM Properties GROUP BY property_id HAVING count(*) >= 1)
SELECT property_name FROM Properties WHERE property_type_code = 'House' OR property_type_code = 'Apartment' AND room_count > 1;
