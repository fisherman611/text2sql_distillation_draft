SELECT count(*) FROM singer_in_concert AS t1 JOIN singer AS t2 ON t1.singer_id = t2.singer_id
SELECT count(*) FROM singer_in_concert AS T1;
SELECT name , country , age FROM singer ORDER BY age DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name , nationality , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1;
SELECT DISTINCT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > 20 GROUP BY T1.name HAVING count(*) >= 1
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT count(*) , country FROM singer GROUP BY country HAVING count(*) > 0
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer ORDER BY age DESC LIMIT 1000000;
SELECT T2.song_name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT location , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT avg(capacity) , max(capacity) FROM stadium AS t1;
SELECT avg(capacity) , max(capacity) FROM stadium AS T1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT max(T1.year) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM singer WHERE age > 40 INTERSECT SELECT name FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert WHERE YEAR = 2014 )
SELECT count(*) , T1.concert_name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name HAVING count(*) > 0
SELECT T1.concert_name , T2.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT count(*) , T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014;
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014 AND T1.song_name = 'Music'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3Highest FROM stadium AS T3 JOIN concert AS T1 ON T3.stadium_id = T1.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT T3.name , T3.location FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T3.name , T3.location FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE pet_weight > 10
SELECT count(*) FROM Pets WHERE pet_weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 OFFSET 0 WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT max(T1.weight) , T2.category FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid GROUP BY T2.category HAVING count(*) >= 1000000
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20 GROUP BY T1.StuID HAVING count(*) >= 50000
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20;
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) >= 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(DISTINCT pet_species) FROM pets AS T1 JOIN has_pet AS T2 ON T1.pet_id = T2.pet_id WHERE T1.pet_type = 'Domestic'
SELECT count(DISTINCT pet_type) FROM pets;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"Kitten\" OR T2.pettype = \"Puppy\"
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = 'kitten' INTERSECT SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = 'puppy'
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = 'kitten' AND T1.lname IN (SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = 'puppy')
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT T1.stuid FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pet_type = 'Kitten' )
SELECT T1.discipline , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN ( SELECT T3.PetID FROM Pets AS T3 WHERE T3.pet_type = 'Kitten' )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'kitten'))
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'Kitten'))
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = "Puppy" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = "Cat"
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten'
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1;
SELECT T1.pet_type , T1.weight FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid ORDER BY T2.pet_age LIMIT 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT avg(age) , max(age) , pet_name FROM Pets GROUP BY pet_name HAVING count(*) >= 1
SELECT avg(pet_age) , max(pet_age) , pet_type FROM pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets)
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN ( SELECT petid FROM Pets )
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith'
SELECT T1.stuid FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.fname = 'Smith' AND T2.petid IN (SELECT petid FROM pets WHERE pettype = 'dog')
SELECT count(*) , T1.stuid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT count(*) , T1.stuid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) != 0
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T3.pet_type = "kitten"
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3 AND T3.pet_type = "Kitten"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents AS T1;
SELECT count(*) FROM continents AS T1;
SELECT T1.continent , T1.continent_name , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contId = T2.continent GROUP BY T1.continent_id HAVING count(*) > 0
SELECT T1.continent , T1.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.countryid GROUP BY T1.contid
SELECT count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid WHERE T1.countryid IN (SELECT id FROM car_makers)
SELECT count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid
SELECT T1.FullName , T1.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Horsepower = (SELECT min(Horsepower) FROM model_list)
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT T1.maker , min(T2.year) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid GROUP BY T1.makeid HAVING min(T2.year) != 0
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.continent , T1.contid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.contid ORDER BY count(*) DESC LIMIT 1;
SELECT T2.FullName , COUNT(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T2.id ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Make = 'Amc' AND T2.Model = 'Hornet Sportabout'
SELECT sum(Accelerate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.make = 'Amc' AND T2.model = 'Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'France'
SELECT count(*) FROM model_list WHERE maker IN (SELECT id FROM car_makers WHERE country = 'USA')
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker JOIN car_makers AS T3 ON T3.id = T2 maker WHERE T3.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.year = 1974 AND T1.Cylinders = 8
MIN(Weight) = MIN(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId = T2.id WHERE T1.Cylinders = 8 AND T2.Year = 1974
SELECT DISTINCT maker FROM model_list UNION SELECT DISTINCT maker FROM car_names
SELECT T1.Maker , T2.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 1
SELECT T1.continent , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) > 0;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.continent = T2.country GROUP BY T1.countryid HAVING count(*) >= 3 AND count(*) <= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1 continent = 'Europe'
SELECT max(T2.Horsepower) , T1 maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.cylinders = 3 GROUP BY T1.maker HAVING count(*) >= 1
SELECT max(T2.Horsepower) , T1.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker WHERE T1.Cylinders = 3 GROUP BY T1.Maker ORDER BY max(T2.Horsepower) DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker GROUP BY T2.model ORDER BY sum(T1.MPG) DESC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.MPG DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980;
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.year < 1980 GROUP BY T2.makeid HAVING avg(T2.Horsepower) > 0 {}
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.make = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE make = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accrate) , Max(Cylinders) FROM cars_data AS T1 GROUP BY T1.Cylinders;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT Model FROM model_list GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'American Motor Company'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T2.Make FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight > 3500 OR T2.FullName = 'General Motors'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'General Motors' OR T2.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000 INTERSECT SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 {}
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate != \"\" AND Maker = \"Volvo\"
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data ORDER BY Accelerate DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3)
SELECT count(*) FROM (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 5
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data) AND T2.cylinders != 3 ORDER BY T2.mpg ASC LIMIT 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.id , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders < (SELECT min(cylinders) FROM cars_data) GROUP BY T1.id HAVING count(*) < 4;
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T1.weight < 3500 AND T2.make NOT IN ( SELECT T3.make FROM car_makers AS T3 JOIN car_makers AS T4 ON T3.id = T4.id WHERE T4.FullName = 'Ford Motor Company')
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T2.makerid = T3.id WHERE T3.fullname = \"Ford Motor Company\"
SELECT countryname FROM car_makers GROUP BY countryid HAVING count(*) = 1
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT maker FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) < 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id NOT IN (SELECT id FROM model_list GROUP BY id HAVING count(*) <= 3) END
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T3.CountryId , T3.CountryName FROM countries AS T3 JOIN car_names AS T4 ON T3.CountryId = T4.Model WHERE T4.Model = 'fiat' {}
SELECT id , t1.countryname FROM car_makers AS t1 JOIN models AS t2 ON t1.id = t2.model GROUP BY t1.id HAVING count(*) > 3 UNION SELECT id , t1.make FROM car_names AS t1 JOIN models AS t2 ON t1.makeid = t2.make GROUP BY t1.id HAVING count(*) > 3 INTERSECT SELECT id , t1.make FROM car_names AS t1 JOIN models AS t2 ON t1.makeid = t2.make GROUP BY t1.id HAVING count(*) > 3
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "Los Angeles International Airport" AND T1.Airline = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = T2.DestAirport AND T1.Airline = 'Jetblue Airways'
Shortened word: JetBleu Airways
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.dest WHERE T2.sourceairport = T2.sourceairport AND T1.airline = "Jetblue Airways"
SELECT Airline , ShortenedWord FROM airlines WHERE Country = 'USA'
SELECT T1.Airline , T2.ShortenedWord FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'United States' AND city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM (SELECT DISTINCT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport)
SELECT sum(T2.length) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid HAVING sum(T2.length) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Airline LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Akosari' AND airportcode = 'KO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE country = 'United Kingdom' AND city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'ATO' AND destairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairline = 'Airline' AND T1.destinationairline = 'Airline' AND T1.flightround = 1 WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'Scotland' AND T1.sourceairport = 'Aberdeen' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3.country = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.arrestnode = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'United' AND T2.countryabbreviation = 'USA' AND T1.destairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines' AND T2.country = 'United States' AND T2.countryabbreviation = 'USA' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.airline WHERE T3.country = 'United Airlines' AND T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'United' AND T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT city FROM airports WHERE country = 'United States' GROUP BY city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T2.State , T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.State ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline , T2.state FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline ORDER BY count(*) LIMIT 1;
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD' INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.srcairport = 'AHD'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' AND T1.destairport = T2.airportcode INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Germany' AND T1.destairport = T2.airportcode {}
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' AND T1.destairport = 'APG' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' AND T1.destairport = 'CVO'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' EXCEPT SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Germany'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairline = 'CVO' EXCEPT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairline = 'APG'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airway HAVING count(*) >= 10
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airway HAVING count(*) >= 10
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airway HAVING count(*) < 200
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airline HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND FlightNo LIKE '%APG%'
SELECT T1.FlighNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Scotland' AND T1.destairport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'United Kingdom') AND destairport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "Scotland" AND T1.destairport = "Aberdeen"
SELECT T2.FlighCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T2.city = 'Aberdeen' UNION SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T2.city = 'Abilene' {}
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.countryabbreviation = 'AB'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights INTERSECT SELECT destairport FROM flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights INTERSECT SELECT destairport FROM flights)
SELECT count(*) FROM employee AS T1;
SELECT count(*) FROM employee AS T1;
SELECT name FROM employee ORDER BY age ASC;
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) != 0
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) > 0
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , t1.city FROM employee AS t1 JOIN shop AS t2 ON t1.employee_id = t2.manager_name GROUP BY t1.city HAVING count(*) > 0
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) != 0
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , district FROM shop ORDER BY Number_products DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
SELECT T1.name , T1.city , T1.district FROM shop AS T1 JOIN ( SELECT market_id , count(*) FROM T1 GROUP BY market_id ORDER BY count(*) DESC ) AS T2 ON T1.market_id = T2.market_id ORDER BY count(*) DESC;
SELECT name , location , district FROM shop ORDER BY number_products DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.start_from = (SELECT max(start_from) FROM hiring)
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded > (SELECT year_awarded FROM hiring ORDER BY YEAR_awarded DESC LIMIT 1)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name HAVING count(*) > 0 {}
SELECT count(*) , T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id;
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id HAVING sum(T1.Bonus) > 0.00
SELECT sum(T1.Bonus) FROM evaluation AS T1 WHERE T1.Year_awarded != 2017 AND T1.Bonus != 0.00 GROUP BY T1.Year_awarded HAVING sum(T1.Bonus) >= 100.00 UNION SELECT sum(T1.Bonus) FROM evaluation AS T1 WHERE T1.Year_awarded != 2017 AND T1.Bonus != 0.00 GROUP BY T1.Year_awarded HAVING sum(T1.Bonus) < 100.00 + 100.00
SELECT * FROM hiring
SELECT * FROM hiring AS T1 UNION SELECT * FROM employee AS T2 WHERE T1.employee_id = T2.employee_id
SELECT T1.District FROM shop AS T1 JOIN (SELECT District FROM shop WHERE Number_products < 3000 INTERSECT SELECT District FROM shop WHERE Number_products > 10000) AS T2 ON T1.District = T2.District
SELECT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000
SELECT count(DISTINCT LOCATION) FROM shop AS T1;
SELECT count(DISTINCT LOCATION) FROM shop AS T1;
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id;
SELECT document_id , document_name , document_description FROM Documents AS T1 JOIN Ref_templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"Paper\"
SELECT document_id , document_name , document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN ( SELECT document_id FROM Documents WHERE document_description LIKE '%w%' ) AS T2 ON T1.document_id = T2.document_id
SELECT T1.document_name , T1.layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T1.layout_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Robbin CV\"
SELECT document_id , layout_id , document_name FROM Documents WHERE document_name = \"Robbin CV\"
SELECT count(DISTINCT document_id) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id
SELECT count(DISTINCT template_type_code) FROM Ref_template_types WHERE template_type_description = \"Layout\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , t1.layout_id FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id GROUP BY t1.layout_id HAVING count(*) > 0;
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Documents GROUP BY document_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1)
SELECT template_id FROM documents WHERE document_id NOT IN ( SELECT t1.template_id FROM documents AS t1 JOIN ref_template_types AS t2 ON t1.template_id = t2.template_id )
SELECT count(*) FROM Ref_template_types AS t1;
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code;
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Ref_templates AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T1.edition_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description != ''
SELECT DISTINCT template_type_code FROM Ref_Template_Types;
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_description = \"PPT\")
SELECT template_id FROM Templates WHERE template_type_code = \"PP\" OR template_type_code = \"PPT\"
SELECT count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = 'CV'
SELECT count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = \"CV\"
SELECT edition_number , template_layout_type FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.version_number > 5;
SELECT template_type_code , layout_type_name FROM Ref_Template_Types WHERE template_type_code IN (SELECT template_type_code FROM Templates WHERE version_number > 5)
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code;
SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code;
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code ORDER BY min(version_number) ASC LIMIT 1;
SELECT template_type_code FROM Templates WHERE template_details = \"Data base\"
SELECT template_type_code FROM Templates WHERE template_name = \"Data base\"
SELECT document_name FROM documents WHERE template_id IN ( SELECT template_id FROM templates WHERE template_type_code = \"BK\" )
SELECT T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Templates AS T3 ON T3.template_id = T2.template_id WHERE T3.template_type_code = \"BK\"
SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code;
SELECT count(*) , template_type_code FROM Documents GROUP BY template_type_code HAVING count(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN ( SELECT template_type_code FROM Documents GROUP BY template_type_code HAVING count(*) > 1 )
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT t1.template_type_description , t2.template_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = \"AD\"
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"Book\"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.document_name NOT IN (SELECT document_name FROM Documents GROUP BY document_name HAVING count(*) > 1)
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name IN (SELECT document_name FROM Documents GROUP BY document_name HAVING count(*) > 1)
SELECT T1.layout_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_description = \"Presentation\"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id;
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id;
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT T1.Other_details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_text = \"Korea\"
SELECT T1.other_details FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Korea'
SELECT document_id , paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = \"Welcome to NY\"
SELECT T1 paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Welcome to NY\"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Customer reviews\"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Customer reviews'
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id , t1.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , t1.document_name FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id , t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = 'Brazil' INTERSECT SELECT document_id , t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1;
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT Name FROM teacher ORDER BY Age ASC;
SELECT age , hometown FROM teacher
SELECT age , hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> \"Little Lever Urban District\"
SELECT Name FROM teacher WHERE Hometown <> \"Little Lever Urban District\"
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1;
SELECT name FROM teacher ORDER BY age ASC LIMIT 1;
SELECT count(*) , T1.name FROM teacher AS T1 JOIN instructor AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) > 0 ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , name FROM teacher GROUP BY name HAVING count(*) > 0
SELECT T1.Hometown FROM teacher AS T1 JOIN (SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1) AS T2 ON T1.Hometown = T2.Hometown
SELECT T1.Hometown FROM teacher AS T1 JOIN (SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1) AS T2 ON T1.Hometown = T2.Hometown
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Faculty_ID = T2.Faculty_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) >= 2;
SELECT T1.Name , T2.Courseregular FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name , T2.Name FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC;
SELECT T2.Name , T1.Courseregular FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id ORDER BY T2.Name ASC
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.Course = \"Math\"
SELECT name FROM teacher WHERE teacher_id IN ( SELECT teacher_id FROM course_arrange WHERE course_id IN ( SELECT course_id FROM course WHERE course = 'Math' ) )
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id;
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name;
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2;
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP NOT BETWEEN 5 AND 100;
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009.0
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1;
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT avg(total_spent) , max(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING sum(T2.score) >= 0 {}
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM matches AS T1 UNION SELECT count(*) FROM players AS T2 WHERE T2.player_id IN (SELECT T1.winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id) UNION SELECT count(*) FROM players AS T3 WHERE T3.player_id IN (SELECT T1.loser_id FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id)
SELECT count(*) FROM MATCHES AS T1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(T1.loser_age) , avg(T2.winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id GROUP BY T1.winner_id , T1.loser_id;
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id HAVING count(*) >= 1
SELECT avg(T1.ranking_points) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id HAVING count(*) >= 1;
SELECT max(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id HAVING min(T2.loser_age) = 0
SELECT ranking FROM rankings WHERE ranking_points = (SELECT max(T1.ranking_points) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id) ORDER BY loser_rank DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id - 1
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id - 1
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) >= 11;
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num BETWEEN 1 AND 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num BETWEEN 1 AND 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = 2016
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 3 AND T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 4 AND T2.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , state_abbr FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN MATCHES AS T3 ON T1.player_id = T3.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.loser_name , T2.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1;
SELECT T1.winner_name , T2.winer_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT avg(T1.ranking) , T2.first_name , T2.last_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0 {}
SELECT T1.first_name , T1.last_name , T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT T1.abbr FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date HAVING count(*) > 0
SELECT sum(T1.tourneys) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_date ORDER BY sum(T1.tourneys) DESC;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR HAVING count(*) > 0
SELECT count(*) , YEAR FROM matches GROUP BY YEAR HAVING count(*) > 0
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.birth_date LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.year LIMIT 3;
SELECT count(*) FROM (SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" EXCEPT SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\")
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\";
SELECT T1.first_name , T1.last_name , T1.country_code , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = (SELECT max(ranking_points) FROM rankings)
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY tonnage DESC;
SELECT name , date , result FROM battle
SELECT max(t1.killed) , min(t1.killed) FROM death AS t1 JOIN ship AS t2 ON t1.caused_by_ship_id = t2.id
SELECT avg(injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id HAVING avg(injured) != 0
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.ship_type = 'Brig' GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10;
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.ship_type WHERE T1.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.ship_type WHERE T1.latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle AS T1;
SELECT count(*) FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE tonnage = '225')
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T1.name = 'Lettice' INTERSECT SELECT T3.name , T3.date FROM ship AS T3 JOIN battle AS T4 ON T3.lost_in_battle = T4.id WHERE T3.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT id FROM ship WHERE lost_in_battle = 1 INTERSECT SELECT id FROM battle WHERE name = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%' OR note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses AS T1 WHERE T1.address_id IN ( SELECT address_id FROM students )
SELECT line_1 , line_2 FROM addresses AS T1;
SELECT count(*) FROM courses AS T1;
SELECT count(*) FROM courses AS T1;
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name LIKE '%math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT T1.degree_summary_name , T1.department_id FROM Degree Programs AS T1 JOIN courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY sum(T2.degrees) DESC LIMIT 1;
SELECT count(*) FROM (SELECT DISTINCT department_id FROM degree_programs) AS T1 JOIN students ON T1.department_id = T2.degree_program_id GROUP BY T1.department_id HAVING count(*) > 0;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree Programs;
SELECT count(DISTINCT degree_summary_name) FROM degree_programs;
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT T1.section_name , T1.section_description FROM SECTION AS T1
SELECT T1.section_name , T1.section_description FROM SECTION AS T1
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTIONs AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
REVERSE ORDER OF SECTION_NAME USING ORDER BY SECTION_NAME ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.semester_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.semester_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.semester_name ORDER BY count(*) DESC LIMIT 1;
SELECT other_details FROM courses WHERE course_name LIKE '%the computer%'
SELECT other_details FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.last_name , T1.student_id , T4.semester_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T4 ON T2.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = '2' GROUP BY T2.student_id HAVING count(*) = 1
SELECT T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2' AND T2.semester_id = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelors')
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , T1.degree_summary_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degreeshiprogramid , T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degreeshiprogramid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Course_Course_Enrolment AS T2 ON T1.course_id = T2.course_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Course AS T2 ON T1.course_id = T2.course_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM students AS T3 JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id {}
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM students AS T3 JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id WHERE T4.department_id != T3.degree_program_id;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT cell_mobile_number FROM students WHERE first_name = 'Timothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 != T1.permanent_address_id;
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.zip_postcode != T1.perminent_address_id;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students AS T1;
SELECT avg(date_first_registered) FROM students AS T1;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered LIMIT 1;
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students AS T1;
SELECT count(*) FROM students AS T1;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1;
SELECT count(*) , student_enrolment_id FROM student_enrolment GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id WHERE T3.degree_program_id IN (SELECT degree_program_id FROM degrees WHERE degree_summary_name = 'Master') INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id WHERE T3.degree_program_id IN (SELECT degree_program_id FROM degrees WHERE degree_summary_name = 'Bachelor')
SELECT T1.seminumber FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T1.degree_program_id = 2 INTERSECT SELECT T1.seminumber FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T1.degree_program_id = 4 AND T2.course_id IN (SELECT course_id FROM courses WHERE course_name = 'Bachelor')
SELECT count(DISTINCT current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id HAVING count(*) > 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT other_student_details FROM students ORDER BY other_student_details DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT other_student_details FROM students ORDER BY last_name DESC LIMIT 100
SELECT DISTINCT T1.section_name FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE T2.section_name = "h"
SELECT other_description FROM courses WHERE course_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title ASC;
SELECT title FROM cartoon ORDER BY title
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.directed_by = T2.written_by WHERE T2.name = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Joseph Kuhr'
SELECT T2.animation , T1.directed_by FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date ASC;
SELECT T2.title , T2.directed_by FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.air_date ASC;
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by IN ("Ben Jones", "Brandon Vietti")
SELECT T2.Title FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = 'Ben Jones' OR T1.directed_by = 'Brandon Vietti'
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , country FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL AS T1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL AS T1;
SELECT CONTENT FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
SELECT Package_Option FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT count(*) , Language FROM TV_CHANNEL GROUP BY Language HAVING count(*) > 0
SELECT count(*) , Language FROM TV_CHANNEL GROUP BY Language;
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN Cartoon AS T3 ON T2.channel = T3.channel WHERE T3.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT id FROM TV_series ORDER BY rating ASC;
SELECT T2.episode , T2.rating FROM TV_series AS T2 JOIN TV_channel AS T1 ON T1.id = T2.channel ORDER BY T1.rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
MIN(Share) = 0 MAX(Share) = 100.0
MAX(Share) = 25360000000 MIN(Share) = 0
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = 'A Love of a Lifetime'
SELECT Weekly_Rank FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT avg(T2.Score) FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.serial_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = 'A Love of a Lifetime'
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = 'Sky Radio'
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by HAVING count(*) > 0;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HD'
SELECT Package_Option , Series_Name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HD'
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T2.series = T3.id WHERE T3.title = "Todd Casey: The Animated Series"
SELECT T2.State FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = \"Todd Casey\" AND T1.Content = \"TV Animation\"
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = "Todd Casey" )
SELECT id FROM cartoon WHERE written_by = 'Todd Casey' EXCEPT SELECT id FROM cartoon WHERE written_by = 'Todd Casey'
SELECT T1.series_name , T1.Hight_definition_TV FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2.directed_by = 'Michael Chang'
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'English' AND country NOT IN (SELECT channel FROM TV_channel WHERE LANGUAGE = 'English')
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language <> 'English' AND country != 'United States' AND country != 'Canada' AND country != 'Australia' AND country != 'New Zealand' AND country != 'Mexico' AND country != 'Brazil' AND country != 'Mexico'
SELECT id FROM TV_CHANNEL WHERE country IN ( SELECT country FROM TV_CHANNEL GROUP BY country HAVING count(*) > 2 )
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT Package_Option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.nationality = \"Car\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\"
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\" ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 AND T2.Nationality = "Car"
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Money_Rank < 200000 AND T2.Nationality = 'Car'
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = \"Car Game\"
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = 1 AND T1.Nationality = 'Car'
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY COUNT(*) ASC;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings = (SELECT min(Earnings) FROM poker_player)
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings ASC LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200;
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY T2.Earnings DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC;
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM people WHERE Nationality = \"Car\")
SELECT Name FROM people EXCEPT SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = \"Car_Gamer\"
SELECT count(DISTINCT Nationality) FROM people AS T1
SELECT count(DISTINCT Nationality) FROM people AS T1;
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE AS T1
SELECT max(T1.created) FROM VOTES AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.state = T2.state WHERE T2.state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T2 JOIN VOTES AS T1 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM VOTES WHERE state = \"NY\" OR state = \"CA\"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = \"Tabatha Gehling\"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM contestants WHERE contestant_name = \"Kelly Clauss\")
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indeyyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.Region = "Caribbean"
Caribbean = "The Bahamas", "The Cayman Islands", "The Turks and Caicos", "The Virgin Islands" sum(T1.SurfaceArea) FROM country AS T1 WHERE T1.Region = "Caribbean"
Anguilla is located in the Caribbean region of the world. So the continent it belongs to is Caribbean.
SELECT Continent FROM country WHERE Name = 'Anguilla'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
SELECT region FROM country WHERE capital = 'Kabul'
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = 'Aruba' GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Name = "Aruba" GROUP BY t1.Language ORDER BY Percentage DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = 'Brazil'
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
ANGOLA = "Angola", Population = 1038479610
ANGOLA.Region = "Africa" Angola.Population = 10364798.0
SELECT avg(LifeExpectancy) FROM country WHERE Region = \"Central Africa\"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT sum(population) , max(GNP) FROM country WHERE continent = 'Asia'
Asia population: 14390000 Largest GNP: 85600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = Africa;
SELECT avg(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'Africa'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE code IN (SELECT code FROM country WHERE governmentform = 'United States')
SELECT avg(GNP) , count(*) FROM country WHERE code IN (SELECT code FROM city WHERE countrycode IN (SELECT code FROM country WHERE name = 'United States'))
SELECT count(DISTINCT Language) FROM countrylanguage AS T1;
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.population > 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.code WHERE T2.countrycode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese' AND T1.population > 0
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('English', 'Dutch')
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('Dutch', 'English')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language IN ('English', 'Dutch')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM country WHERE continent = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE IsOfficial = 'Yes' GROUP BY Language HAVING COUNT(*) = 1 AND GovernmentForm = 'Republic'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.CountryCode HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE surfacearea > ( SELECT max(surfacearea) FROM country ) AND localname LIKE '%Asian%'
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T2.countrycode HAVING avg(T1.LifeExpectancy) != 0.01897354396348818
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = \"Beatrix\" AND T1.Language != \"Other\"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = 'Beatrix' AND T2.IsOfficial = 'Yes'
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage < 1930 GROUP BY T1.Code HAVING sum(T2.Percentage) < 1 THEN 1 END
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 1 AND Percentage > 0 AND IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND name = 'African'
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa' ORDER BY population ASC LIMIT 1;
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia' UNION SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia' INTERSECT SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT stateabbreviation FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.nationalabbreviation FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.nationalabbreviation HAVING count(*) >= 300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , T2.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT name FROM country WHERE code NOT IN (SELECT code2 FROM countrylanguage WHERE language = 'English') INTERSECT SELECT name FROM country WHERE governmentform != 'Republic'
SELECT abbreviation FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English') EXCEPT SELECT abbreviation FROM country WHERE governmentform = 'Republic'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'French' INTERSECT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'German'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 'No' INTERSECT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 'Yes'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Chinese' GROUP BY T1.id HAVING count(DISTINCT T1.name) = 806193
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T1.CountryCode IN (SELECT T3.CountryCode FROM country AS T3 JOIN countrylanguage AS T4 ON T3.Code = T4.CountryCode WHERE T4.Language = "Chinese") INTERSECT SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T1.CountryCode IN (SELECT T3.CountryCode FROM country AS T3 JOIN countrylanguage AS T4 ON T3.Code = T4.CountryCode WHERE T4.Language = "Chinese")
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 1;
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(DISTINCT T2.language) >= 3
SELECT T1.name , count(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(DISTINCT T2.language) > 2
SELECT count(*) , district FROM city WHERE population > ( SELECT avg(population) FROM city ) GROUP BY district;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT governmentform , sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72;
SELECT sum(T1.Population) , T1.GovernmentForm FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.GovernmentForm HAVING avg(T2.population) > 72;
SELECT avg(LifeExpectancy) , continent FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72.0
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72;
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3;
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language , T1.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT sum(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT code) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Spanish' AND percentage > (SELECT avg(percentage) FROM countrylanguage)
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' GROUP BY T1.Code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA' AND Nationality NOT IN (SELECT Nationality FROM conductor WHERE Nationality = 'USA')
SELECT RECORD_Company FROM ORCHESTRA ORDER BY YEAR_of_founded DESC;
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(Attendance) FROM show AS T1;
SELECT avg(Attendance) FROM show AS T1 WHERE T1.Show_ID NOT IN (SELECT Performance_ID FROM performance)
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT T3.Name , T2.Orcella FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID
SELECT T3.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 3
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC;
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY count(*) DESC;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM conductor WHERE Conductor_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT DISTINCT ensemble FROM performance WHERE TYPE != \"Performance\"
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 1 AND 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 2004 AND 9999;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2003
SELECT count(*) FROM orchestra WHERE Record_Company IN ("CD", "DVD")
SELECT count(*) FROM orchestra WHERE Record_Company IN ('CD', 'DVD')
SELECT T1.year_of_performance FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.performance_id HAVING count(*) > 1;
SELECT T1.year_of_foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_foundation HAVING count(*) > 1;
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler AS T1;
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10;
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10.
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM Highschooler GROUP BY grade;
SELECT count(*) , grade FROM Highschooler GROUP BY grade;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 1
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 1
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle' GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1 AND T2.name = 'Kyle'
SELECT count(*) FROM FRIEND WHERE student_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM Friend WHERE friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id) AND T1.id NOT IN (SELECT T3.id FROM likes AS T3 JOIN highschooler AS T4 ON T3.student_id = T4.id) AND T2.friend_id != T4.id
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id) AND T1.id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.liked_id = T3.student_id WHERE T3.friend_id IN (SELECT T4.id FROM highschooler AS T4 JOIN likes AS T5 ON T4.id = T5.student_id) AND T1.id NOT IN (SELECT T4.id FROM highschooler AS T4 JOIN likes AS T5 ON T4.id = T5.student_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id )) AND T1.id NOT IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id ))
SELECT count(*) , student_id FROM Likes GROUP BY student_id;
SELECT count(*) , student_id FROM likes GROUP BY student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle' AND liked_id IN (SELECT liked_id FROM likes AS T3 JOIN highschooler AS T4 ON T3.student_id = T4.id WHERE T4.name = 'Kyle')
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0.00;
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0.0
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT id FROM highschooler)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals WHERE role_code = 'Veterinarian' INTERSECT SELECT state FROM professionals WHERE role_code = 'Guardian'
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state IN (SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T1.role_code = 'Veterinarian') AND T2.state IN (SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T1.role_code = 'Guardian')
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) != 0;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Indiana' UNION SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = \"Indiana\" UNION SELECT T3.id , T3.last_name , T3.cell_number FROM professionals AS T3 JOIN treatments AS T4 ON T3.professional_id = T4.professional_id GROUP BY T3.professional_id HAVING count(*) >= 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T2.name FROM charges AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.charge_amount > 1000 GROUP BY T2.name HAVING count(*) > 1000;
SELECT first_name FROM professionals WHERE role_code = 'vet' UNION SELECT first_name FROM professionals WHERE role_code = 'guardian' EXCEPT SELECT first_name FROM professionals WHERE role_code = 'dog'
SELECT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT first_name FROM owners WHERE name LIKE '%dog%'
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'Male' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'Female'
SELECT role_code , first_name , last_name FROM professionals WHERE role_code != 'Dogs' UNION SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog Health Care' {}
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.professional_id , T2.role_code , T1.first_name , T1.last_name FROM Professional AS T2 JOIN Treatments AS T1 ON T2.professional_id = T1.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2;
SELECT T2.professional_id , T2.role_code , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name FROM Owners AS T2 JOIN Dogs AS T1 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T1.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.guardian_id , T1.family_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T2.breed_code = \"Puppy\" GROUP BY T1.guardian_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN charges AS T2 ON T1.treatment_id = T2.treatment_id GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1;
SELECT T1.zip_code , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.zip_code ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T2.professional_id , T2.cell_number FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.date_of_treatment , T2.first_name , T2.last_name
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T3.role_code = 'Veterinarian'
SELECT T1.treatment_type_description , T2.charge_type FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.charge_type = T2.charge_type
SELECT T1.treatment_type_description , T2.charge_type FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.charge_type = T2.charge_type
SELECT T1.first_name , T1.last_name , T4.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T3.size_code = T2.size_code JOIN dogs AS T4 ON T2.dog_id = T4.dog_id
SELECT T1.first_name , T1.last_name , T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_adopted ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , T2.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breeds AS T3 ON T3.breed_code = T2.breed_code
SELECT T1.name , T2.date_of_birth FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T1.breed_code = ( SELECT breed_code FROM breeds ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.weight ASC LIMIT 1;
SELECT T2.first_name , T1.name FROM owners AS T2 JOIN dogs AS T1 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Virginia' AND T1.gender = 'Male'
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_of_treatment = 'Medical'
SELECT T1.date_arrived , T1.date_adopted FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth ASC LIMIT 1;
SELECT email_address FROM owners WHERE state = \"Hawaii\" OR state = \"Wisconsin\"
SELECT email_address FROM owners WHERE state IN ('Hawaii', 'Wisconsin')
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id JOIN treatment_types AS t3 ON t2.treatment_type_code = t3.treatment_type_code WHERE t3.treatment_type_description = 'Health' AND t1.breed_code = 'Puppy'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T3.breed_code = 'Puppy' AND T1.role_code = 'Veterinarian'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'puppy'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE first_name LIKE '%West%' AND last_name LIKE '%West%' AND city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' AND date_arrived != 'null' AND date_departed != 'null' AND date_adopted != 'null' AND date_deposited != 'null' AND date_of_birth != 'null' AND gender != 'F' AND weight != 'null' AND gender != 'M' AND pet_age != 'null' AND pet_weight != 'null' AND pet_gender != 'M' AND pet_gender != 'F' AND pet_pet_age != 'null' AND pet_pet_weight != 'null' AND pet_pet_gender != 'M' AND pet_pet_gender != 'F' AND pet_pet_pet_age != 'null' AND pet_pet_pet_weight != 'null' AND pet_pet_pet_gender != 'M' AND pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_age != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_weight != 'null' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'M' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_gender != 'F' AND pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_pet_age
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppies' AND t1.gender = 'F'
SELECT count(*) FROM dogs WHERE breed_code != 'Puppy'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'puppy' )
SELECT count(*) FROM vets WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = 'puppy')
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
SELECT email_address , cell_number , home_phone FROM owners
SELECT DISTINCT breed_code , size_code FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT T1.breed_name , T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code AND T1.size_code = T2.size_code WHERE T2.age < 5 YEARS
SELECT T2.first_name , T2.last_name , T3.treatment_type_description FROM veterinarians AS T2 JOIN treatments AS T1 ON T2.professional_id = T1.professional_id JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.first_name , T4.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN pet_dogs AS T4 ON T2.dog_id = T4.dog_id
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship != \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , citizenship FROM singer GROUP BY citizenship;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT name FROM singer GROUP BY name ORDER BY count(*) DESC LIMIT 1) AS T1;
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country HAVING max(Net_Worth_Millions) != 0
SELECT max(Net_Worth_Millions) , NAME FROM singer GROUP BY NAME HAVING max(Net_Worth_Millions) != 0
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 INTERSECT SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) < 2
SELECT T2.Name , SUM(T1.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.Sales) > 0 ORDER BY SUM(T1.Sales) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T2.Name , sum(T1.sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name;
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT T2.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 AND T1.Birth_Year > 1955 GROUP BY T2.Country HAVING COUNT(*) >= 2
SELECT count(*) FROM Other_available_features AS T1;
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_id IN (SELECT property_id FROM Properties GROUP BY property_id HAVING count(*) > 0)
SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "House") OR property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "Apartment") AND room_count > 1;
