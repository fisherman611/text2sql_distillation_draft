SELECT count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.singer_id HAVING count(*) >= 1 AND count(*) <= 50000000
SELECT count(*) FROM singer AS T1
sorted_vocalist = (SELECT name , country , age FROM singer ORDER BY age DESC)
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT count(*) , country FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium WHERE capacity != 0
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , t1.stadium_id FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id GROUP BY t1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT count(*) , t1.theme , t2.name FROM concert AS t1 JOIN singer_in_concert AS t2 ON t1.concert_id = t2.concert_id GROUP BY t2.concert_id HAVING count(*) > 0
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.concert_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%' OR song_name LIKE '%Hey%'
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
Pet age of youngest puppy = min(pet_age) FROM Pets GROUP BY pet_age ORDER BY pet_age ASC LIMIT 1;weight = (SELECT weight FROM Pets WHERE pet_age = min(pet_age) GROUP BY pet_age ORDER BY pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN Has_Pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1)_pet_id = 1;weight = (SELECT weight FROM Pets WHERE pet_id = pet_id FROM Pet AS T1 JOIN
Youngest Puppy = min(weight) FROM Pets WHERE pet_type = 'puppy' GROUP BY pet_age HAVING min(weight) = min(weight) FROM Pets WHERE pet_type = 'puppy'
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(weight) , pettype FROM Pets GROUP BY pettype;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T1.pettype = "Puppy" AND T2.sex = 'F' GROUP BY T2.stuid HAVING count(*) >= 1;
SELECT count(DISTINCT pet_type) FROM pets WHERE pet_type = 'domestic'
SELECT count(DISTINCT pet_type) FROM pets;
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"kitten\" OR T3.pet_type = \"puppy\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"kitten\" AND T3.pet_type = \"puppy\"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'kitten' INTERSECT SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'puppy'
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet WHERE pettype = 'Kitten')
SELECT T1.age , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN (SELECT T3.petid FROM Pets AS T3 JOIN Has_Pet AS T4 ON T3.PetID = T4.PetID)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "puppy" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "kitten"
PetType weight pet_age Has_Pet StuID PetID min(weight) min(pet_age)
SELECT T2.pet_type , T2.weight FROM Pets AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.pet_age LIMIT 1;
SELECT T1.stuid , T2.weight FROM student AS T1 JOIN pets AS T2 ON T1.stuid = T2.petid WHERE T1.age > 1
SELECT T1.stuid , T2.weight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.age > 1;
SELECT avg(age) , max(age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT PetID FROM Pets)
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.petid FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT T1.PetID FROM Pets AS T1 JOIN Student AS T2 ON T1.PetID = T2.PetID WHERE T2.LName = 'Smith')
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) != 0
SELECT count(*) , T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 0
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T2.Lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.petage = 3 AND T2.age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents AS T1;
SELECT count(*) FROM continents AS T1;
SELECT T1.continent , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.continent
SELECT T1.contid , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid HAVING count(*) > 0
SELECT count(*) FROM (SELECT DISTINCT ContId FROM continents)
SELECT count(*) FROM countries AS T1;
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model ORDER BY T1.Horsepower LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.year = 1970;
SELECT T1.make , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T2.continent ORDER BY count(*) DESC LIMIT 1;
count(*) , maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
Count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 1 AND count(*) <= 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
accelerate = (SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout')
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout' AND T1.Accelerate = (SELECT max(Accelerate) FROM cars_data WHERE model = 'Amc Hornet Sportabout')
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'France'
SELECT count(*) FROM model_list WHERE maker IN ( SELECT maker FROM car_makers WHERE countryid IN ( SELECT id FROM countries WHERE countryname = 'USA' ) )
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1Maker = t2.id JOIN countries AS t3 ON t2.countryid = t3.countryid WHERE t3.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8;
SELECT min(weight) FROM cars_data WHERE year = 1974 AND Cylinders = 8 LIMIT 1;
SELECT DISTINCT maker , model FROM model_list
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.id HAVING COUNT(*) > 0
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T2.id HAVING COUNT(*) > 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 3 AND count(*) <= 4 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 5 AND count(*) <= 6 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 7 AND count(*) <= 8 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 9 AND count(*) <= 10 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 11 AND count(*) <= 12 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 13 AND count(*) <= 14 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 15 AND count(*) <= 16 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 17 AND count(*) <= 18 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 19 AND count(*) <= 20 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 21 AND count(*) <= 22 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 23 AND count(*) <= 24 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 25 AND count(*) <= 26 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 27 AND count(*) <= 28 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 29 AND count(*) <= 30 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 31 AND count(*) <= 32 UNION SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3;
max(power) , maker FROM car_names WHERE cylinders = 3;
SELECT max(T2.Horsepower) , T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING max(T2.Horsepower) != 0
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY max(T2.MPG) DESC LIMIT 1;
max(mpg) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model ORDER BY T1.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980.0
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 GROUP BY id HAVING avg(Horsepower) > 0.5
SELECT avg(T2.Edispl) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2Maker = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T2.FullName = 'Volvo'
max_accelerate = (SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders)
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != '0'
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
YEAR = 1980 SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.DistinctiveType FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.FullName = "General Motors" OR T1.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = "USA" OR T1.weight > 3500 AND T2.fullname = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
```sql SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 ```
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Model = 'Volvo')
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = 'Volvo' ORDER BY T1.Accelerate LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.fullname FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data GROUP BY horsepower HAVING max(cylinders) = 3) EXCEPT SELECT T1.makeid , T1.fullname FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data GROUP BY horsepower HAVING max(cylinders) = 3) AND T2.cylinders < 3
SELECT T1.id , T1.FullName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.year NOT IN (SELECT min(MGPX) FROM cars_data GROUP BY T2.Cylinders)
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 AND YEAR < 1980.
max MPG of automobiles with 8 cylinders or produced before 1980: SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980;
SELECT Model FROM model_list WHERE Weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list AS T1 JOIN car_makers AS T2 ON T1Maker = T2.id WHERE T2.country = 'Ford'
SELECT country FROM car_makers GROUP BY country HAVING count(*) = 1
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) > 3 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE country = 'USA' GROUP BY id HAVING count(*) < 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker IN (SELECT T3.Maker FROM model_list AS T3 JOIN car_makers AS T4 ON T3.Maker = T4.id WHERE T4.model = 'fiat') UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker IN (SELECT T3.Maker FROM model_list AS T3 JOIN car_makers AS T4 ON T3.Maker = T4.id WHERE T4.model = 'fiat') GROUP BY T1.CountryId HAVING count(*) > 3
SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.country != T2.country OR count(*) >= 4 UNION SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.country != T1.country AND T1.maker IN (SELECT model FROM model_list GROUP BY model HAVING count(*) > 1)
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.Airline WHERE T1.Airline = 'Jetblue Airways'
Airline "JetBlue Airways" shortened word is "JetBlue".
SELECT T1.word FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = 'Jetblue Airways'
SELECT T1.airline , T2.shortened_word FROM airlines AS T1 JOIN airports AS T2 ON T1.country = T2.country WHERE T2.countryabbreviation = 'USA'
SELECT T1.airline , T2.shortened FROM airlines AS T1 JOIN airports AS T2 ON T1.country = T2.country WHERE T2.countryabbreviation = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT count(*) FROM (SELECT distinct T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport)
SELECT sum(T2.length) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.sourceairport HAVING sum(T2.length) > 0.5
SELECT count(*) FROM airports AS T1
SELECT count(*) FROM airports AS T1
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , countryfrom airports WHERE airportname = 'Alton' AND country = 'USA'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportname LIKE '%AKO%'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Toa Bay') AND sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Toa Bay') AND terminal = 'ATO'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Aato')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.srcairport = T2.airportcode WHERE T2.country = 'United Kingdom' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.srcairport = T2.airportcode WHERE T2.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = "Aberdeen" AND T3.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abbrivation = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destination = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Airlines' AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode AND T1.flightheight = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Ahd'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode GROUP BY T1.airway ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportname , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T2.sourceairport ORDER BY count(*) ASC LIMIT 1;
SELECT T1.airline , T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport GROUP BY T1.id ORDER BY count(*) LIMIT 1 , T1.country ASC;
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'AHD' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.srcairport = T2.airportcode WHERE T2.country = 'United States' AND T1.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.srcairport = 'AHD'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = 'AHD' AND T2.destinationairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport JOIN flights AS T3 ON T1.uid = T3.destairport WHERE T2.sourceairport = 'APG' AND T2.destairport = 'CVO' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport JOIN flights AS T3 ON T1.uid = T3.destairport WHERE T2.sourceairport = 'APG' AND T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'United States' AND T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'United States' AND T2.sourceairport = 'CVO' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'United States' AND T2.sourceairport = 'APG'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' EXCEPT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T2.airportname = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN ( SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'China' AND T4.destinationairport = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN ( SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'China' AND T4.destinationairport = 'CVO')
SELECT T2.airway FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airway HAVING count(*) >= 10
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.uid = T1.airline WHERE T3.country = "United States"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT T1.FlighCode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
APG: 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , srcairport FROM flights)
SELECT count(*) FROM employee AS T1;
SELECT count(*) FROM employee AS T1;
sorted(employee.name) ASC
sorted_employee = sorted(employee, key=lambda x: x.age) print(sorted_employee)
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age > 29 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , t1.city FROM shop AS t1 JOIN employee AS t2 ON t1.manager_name = t2.employee_id GROUP BY t1.city
SELECT count(*) , t1.city FROM employee AS t1 JOIN shop AS t2 ON t1.employee_id = t2.shop_id GROUP BY t1.city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT T1.name , T1.district FROM shop AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
SELECT min(Number_products) , max(Number_products) FROM shop AS T1;
SELECT T1.name , T1.city , T1.district FROM shop AS T1 JOIN commodity AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_shops = sorted(shops , 1 , 'desc' ) for shop in sorted_shops : print(f"Name : {shop.name} , District : {shop.district} , City : {shop.location}")
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT count(*) , name FROM shop GROUP BY name
SELECT sum(T1.premium) FROM evaluation AS T1 JOIN assessment AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T2.name = 'Extra'
SELECT * FROM hiring
SELECT * FROM hiring
districts_with_less_than_3000_and_more_than_10000 = (shop.District) & (shop.Number_products = 3000 AND shop.Number_products = 10000)
both_districts = (t1.District) INTERSECT (t2.District) WHERE t1.Number_products < 3000 AND t2.Number_products > 10000
SELECT count(DISTINCT location) FROM shop AS T1
SELECT count(DISTINCT location) FROM shop AS T1
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 0
SELECT document_id , document_name , document_description FROM Documents WHERE document_id IN ( SELECT document_id FROM Documents GROUP BY document_id ORDER BY count(*) DESC LIMIT 1 )
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%' AND T2.template_type_code = 'Letter'
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.document_description LIKE '%w%'
SELECT T1.document_id , T2.layout_id , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Robbin CV\"
SELECT T1.document_id , T2.layout_id , T2.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\"
SELECT count(DISTINCT template_id) FROM Documents GROUP BY template_id HAVING count(*) >= 1;
SELECT count(DISTINCT document_name) FROM Documents WHERE document_description != \"text file\"
SELECT count(*) FROM Documents WHERE document_name LIKE '%PPT%'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , template_id FROM Paragraphs GROUP BY template_id;
SELECT document_id , count(*) FROM Documents GROUP BY document_id HAVING count(*) > 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Document_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) > 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT document_id FROM Documents)
SELECT template_id FROM templates WHERE template_type_code NOT IN ( SELECT t1.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.document_id )
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates WHERE template_type_code = \"Layout\"
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T2.edition_number , T2.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = \"Layout\"
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"Layout\"
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description != 'Other'
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" UNION SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PPT\")
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_code = \"PPT\")
SELECT count(*) FROM Ref_Template_Types WHERE template_type_code = \"CV\"
SELECT count(*) FROM Ref_Template_Types WHERE template_type_description = \"CV\"
SELECT edition , layout_type FROM Documents GROUP BY edition , layout_type HAVING max(version_number) > 5
SELECT T1.template_type_code , T2.layout_type_name FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.edition_number > 6
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code;
layout_type , count(DISTINCT template_id) FROM templates GROUP BY layout_type HAVING count(*) >= 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3;
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code HAVING min(version_number) > 0;
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates WHERE template_name = \"Data base\"
SELECT template_type_code FROM templates WHERE template_name = \"Data base\"
BKSCROLL.txt BKSTART.txt BKSTOP.txt
BK_layouts = Documents WHERE document_id IN (SELECT document_id FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = \"BK\")) SELECT T1.document_name FROM Documents AS T1 JOIN BK_layouts AS T2 ON T1.document_id = T2.document_id
SELECT T1.template_type_code , count(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) > 0
SELECT count(*) , template_type_code FROM Ref_templates GROUP BY template_type_code;
Most number of text files layouts are used by Documents with document_id as 10374829.
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN ( SELECT t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id )
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.date_effective_from != \"null\" AND t2.date_effective_to != \"null\" AND t2.document_name IN (SELECT document_name FROM documents)
SELECT DISTINCT T1.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"Layout\" AND T1.document_name IN (SELECT document_name FROM Documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 1)
SELECT template_type_id FROM Ref_Template_Types WHERE template_type_description = "Presentation"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM Paragraphs AS T1;
SELECT count(*) FROM PARAGRANS AS T1
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Other_Details FROM PARAGRAPHS WHERE Paragraph_Text = "Korea"
SELECT Other_Details FROM PARAGRAPHS WHERE Paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Welcome to NY\"
SELECT document_id , paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = \"Welcome to NY\")
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , t1.document_name , count(*) FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id HAVING count(*) > 0
document_id , document_name , count(*) , paragraph_text ; SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' AND document_id IN (SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland')
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1
SELECT count(*) FROM teacher AS T1 WHERE T1.Hometown = \"USA\"
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher AS T1
SELECT age , hometown FROM teacher
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33
Teacher.name = (SELECT name FROM teacher ORDER BY age LIMIT 1)
SELECT name FROM teacher ORDER BY age ASC LIMIT 1;
SELECT count(*) , T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Hometown != T2.Hometown AND T1.Name = T2.Name GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T2.Name , T3.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id
SELECT T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Course ORDER BY T2.Course ASC;
SELECT T1.name , T2.grade FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC
SELECT T1.name , T2.name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.Curriculum = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course_id = 'Math'
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) > 0
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2;
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id)
No curriculum exists yet, so there are no instructor IDs to arrange. Therefore, we cannot answer this question.
SELECT count(*) FROM visitor WHERE age < 30
visitor[Level_of_membership] > 4 ORDER BY Level_of_membership FROM visitor AS T1
average_age = avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != '4'
visitor[Level_of_membership , Age] WHERE LEVEL_of_membership > 4 ORDER BY Age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit) ORDER BY T2.num_ticket DESC LIMIT 1;
SELECT avg(total_spent) , max(total_spent) FROM visit WHERE visitor_id IN (SELECT ID FROM visitor GROUP BY ID ORDER BY count(*) DESC LIMIT 1)
total_ticket_expense = (SELECT sum(Total_spent) FROM visit WHERE visitor_level = 1)
closed_museums = (SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year < 2009 INTERSECT SELECT T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T1.open_year > 2011)
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
open_year > 2013 OR open_year < 2008 count(*)
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM players AS T1
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;
SELECT count(*) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(T1.loser_age) , avg(T2.winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT avg(T1.loser_age) , avg(T2.loser_age) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T2.country_code;
SELECT avg(t1.loser_age) , avg(t2.winner_age) FROM matches AS t1 JOIN players AS t2 ON t1.loser_id = t2.player_id JOIN players AS t3 ON t1.winner_id = t3.player_id WHERE t3.birth_date != 'null' AVG(t2.loser_age) , AVG(t3.winner_age) FROM players AS t2 JOIN players AS t3 ON t2.player_id = t3.player_id WHERE t3.birth_date != 'null'
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING count(*) >= 1 AND count(*) <= 5000000
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING count(*) >= 1
SELECT max(T1.ranking_points) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id HAVING max(T1.ranking_points) != 0
SELECT ranking_points FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T1.ranking_points) DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.country_code != 'USA'
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10;
SELECT tourney_name FROM MATCHES GROUP BY tourney_name HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 MATCHES + 2016 MATCHES = 401 competitions were played in 2013 or 2016.
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , state_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.tourney_name = \"Australian Open\" AND T3.rank_points = (SELECT max(rank_points) FROM rankings WHERE tourney_name = \"Australian Open\")
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.rank_points DESC LIMIT 1;
SELECT T1.loser_name , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM MATCHES)
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM MATCHES)
SELECT avg(T1.ranking) , T2.first_name , T2.last_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0.0 {}
SELECT sum(T1.ranking_points) , T2.first_name , T2.last_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT abbrev FROM states WHERE code IN (SELECT T1.country_code FROM states AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1)
SELECT abbrev FROM players GROUP BY abbrev ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT count(*) , ranking FROM rankings GROUP BY ranking ORDER BY ranking DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date HAVING ranking_points >= 0 AND ranking_points <= 1000000
count(*) , YEAR FROM matches GROUP BY YEAR;
year , count(*) FROM matches GROUP BY YEAR HAVING count(*) >= 1000000
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age ASC LIMIT 3;
SELECT T1.winner_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3;
SELECT count(*) FROM (SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T3.player_id FROM players AS T3 JOIN MATCHES AS T4 ON T3.player_id = T4.loser_id WHERE T4.tourney_name = \"WTA Championships\" AND T3.hand = \"left\") WHERE count(*) = 2
SELECT count(*) FROM players WHERE hand = 'left' AND YEAR IN (SELECT T1.tourney_year FROM tournaments AS T1 JOIN MATCHES AS T2 ON T1.tourney_id = T2.tourney_id WHERE T1.tourney_name = 'WTA Championships')
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id IN ( SELECT T3.tourney_id FROM rankings AS T3 JOIN MATCHES AS T4 ON T3.ranking_date = T4.ranking WHERE T3.ranking_points = (SELECT max(T3.ranking_points) FROM rankings AS T3 JOIN MATCHES AS T4 ON T3.ranking_date = T4.ranking ) )
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.ranking_id = T3.ranking_id WHERE T3.rankings_points = (SELECT max(rankings_points) FROM rankings)
count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
count(*) FROM ship WHERE ship_type = 'Captured'
name : ship.name , tonnage : ship.tonnage ORDER BY name DESC TONNLES DESC
SELECT name , date , result FROM battle
max_death_toll = (SELECT max(killed) , min(killed) FROM death GROUP BY died)
SELECT avg(injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id;
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander <> 'Boril'
id,name 1,Brigon 2,Brigon 3,Brigon
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
""" SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.latin_commander = T2.id JOIN ship AS T3 ON T1.bulgarian_commander = T3.id WHERE T3.id IN (SELECT id FROM battle WHERE bulgarian_commander = 'Kaloyan' AND latin_commander = 'Baldwin I')"""
SELECT count(DISTINCT result) FROM battle AS T1
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.tonnage = '225' )
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.name = 'HMS Atalanta'
no_results_foundболгарски командир на битките без сушка в Британската Амфигия.
death.note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses ORDER BY line_1 ASC LIMIT 2;
SELECT count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING sum(T2.student_enrolment_id) > 0
SELECT count(*) FROM courses AS T1
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T1.department_summary_name , T1.department_id FROM Degree Programs AS T1 JOIN (SELECT department_id , count(*) FROM Degree Programs GROUP BY department_id ORDER BY count(*) DESC LIMIT 1) AS T2 ON T1.department_id = T2.department_id ORDER BY T2.count(*) DESC LIMIT 1;
SELECT T1.department_name FROM Degree_Programs AS T1 JOIN TRANSACTIONS AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM degrees AS T1
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT count(*) FROM courses AS T1 JOIN department AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
["Section_name"].reverse
["Section Name"]
SELECT T1.semester_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN semesters AS T3 ON T2.semester_id = T3.semester_id GROUP BY T3.semester_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_description FROM departments AS T1 JOIN students AS T2 ON T1.department_id = T2.department_id WHERE T2.first_name LIKE '%Computer%' OR T2.last_name LIKE '%Computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name , T1.last_name , T1.student_id , T2.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2nd Degree'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'One Term' GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T4.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T4 ON T1.degree_program_id = T4.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) , T2.degree_program_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Semester AS T2 ON T1.semester_id = T2.semester_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_id = T3.student_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name IN (SELECT T4.degree_summary_name FROM degree_programs AS T4 JOIN courses AS T5 ON T4.degree_program_id = T5.degree_program_id)
SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor of Science' UNION SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Master of Science'
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT phone_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 != T1.permanent_address_id
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_1 != T1.current_address_id;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students;
SELECT avg(date_first_registered) FROM students;
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM students;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1;
SELECT count(*) , student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_id , count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) ASC LIMIT 1;
Both Master and Bachelor students can get enrolled in the same academic session. Therefore, there is no such session where both Master and Bachelor students are enrolled simultaneously. The semesters that both Master and Bachelor students can enroll in are the ones that have the same semester name. Hence, we cannot find such a session.
SELECT T1.seminor FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Masters" INTERSECT SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Bachelors") GROUP BY T1.seminor HAVING count(*) >= 2
SELECT count(DISTINCT current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T2.first_name != \"null\" AND T2.last_name != \"null\"
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T2.first_name != \"null\" AND T2.last_name != \"null\"
Reverse sort of student details: SELECT * FROM students ORDER BY first_name DESC , last_name DESC;
Reverse alphabetical order of student details: first name , last name , cell mobile number , email address , ssn , date first registered , date left .
Section H: The section of the course description. It describes the entire course description.
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
[ "Animation 1", "Animation 2", "Animation 3", "Animation 4", "Animation 5", "Animation 6", "Animation 7", "Animation 8", "Animation 9", "Animation 10", "Animation 11", "Animation 12", "Animation 13", "Animation 14", "Animation 15", "Animation 16", "Animation 17", "Animation 18", "Animation 19", "Animation 20", "Animation 21", "Animation 22", "Animation 23", "Animation 24", "Animation 25", "Animation 26", "Animation 27", "Animation 28", "Animation 29", "Animation 30", "Animation 31", "Animation 32", "Animation 33", "Animation 34", "Animation 35", "Animation 36", "Animation 37", "Animation 38", "Animation 39", "Animation 40", "Animation 41", "Animation 42", "Animation 43", "Animation 44", "Animation 45", "Animation 46", "Animation 47", "Animation 48", "Animation 49", "Animation 50", "Animation 51", "Animation 52", "Animation 53", "Animation 54", "Animation 55", "Animation 56", "Animation 57", "Animation 58", "Animation 59", "Animation 60", "Animation 61", "Animation 62", "Animation 63", "Animation 64", "Animation 65", "Animation 66", "Animation 67", "Animation 68", "Animation 69", "Animation 70", "Animation 71", "Animation 72", "Animation 73", "Animation 74", "Animation 75", "Animation 76", "Animation 77", "Animation 78", "Animation 79", "Animation 80", "Animation 81", "Animation 82", "Animation 83", "Animation 84", "Animation 85", "Animation 86", "Animation 87", "Animation 88", "Animation 89", "Animation 90", "Animation 91", "Animation 92", "Animation 93", "Animation 94", "Animation 95", "Animation 96", "Animation 97", "Animation 98", "Animation 99", "Animation 100" ]
SELECT title FROM cartoon ORDER BY title ASC
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\"
SELECT T1.title FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.directed_by WHERE T2.written_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = \"Joseph Kuhr\"
SELECT count(*) FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.written_by WHERE T2.Old_Name = 'Joseph Kuhr'
SELECT T2.directed_by , T1.air_date FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id ORDER BY T1.air_date ASC
SELECT T1.Title , T2.Directed_by FROM cartoon AS T1 JOIN animation AS T2 ON T1.channel = T2.channel ORDER BY T2.Production_code ASC;
SELECT T2.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by IN ('Ben Jones', 'Brandon Vietti')
SELECT T2.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' OR T1.directed_by = 'Brandon Vietti'
SELECT Country , COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , content FROM TV_channel AS t1;
SELECT count(DISTINCT content) , count(DISTINCT series_name) FROM TV_channel;
SELECT CONTENT FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = 'Sky Radio'
SELECT package_option FROM TV_channel WHERE series_name = \"Sky Radio\"
SELECT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT LANGUAGE , count(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = 'The Rise of the Blue Beetle'
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.title FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT * FROM TV_series ORDER BY Rating DESC
SELECT T1.episode , T2.rating FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
Min(Take) = min(Share) Max(Take) = max(Share)
MAX(Take) MIN(Take) Share FROM TV_series AS T1
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT score FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = \"A Love of a Lifetime\"
SELECT T1.serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.episode = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT Production_code , Channel FROM Cartoon ORDER BY 1 DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Highest_Definition_TV = 'Yes'
Todd Casey wrote an episode of the cartoon titled "Toddlies Are Happy". The channel associated with this cartoon has content "Animation" and the country is "USA". Therefore, the TV_channel id for this channel is 35703. So, the answer is 35703.
SELECT T1.state FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id JOIN cartoon AS T3 ON T2.id = T3.channel WHERE T3.Written_by = 'Todd Casey' AND T2.content = 'TV'
TV_channels = (SELECT country FROM TV_channel WHERE content != 'Animation - Todd Casey')
SELECT id FROM cartoon WHERE written_by <> 'Todd Casey'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Written_by = 'Michael Chang'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Ben Jones\" INTERSECT SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Michael Chang\"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'english'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'english' AND id NOT IN ( SELECT channel FROM TV_channel WHERE LANGUAGE = 'english' )
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2;
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT count(*) FROM people WHERE Nationality = \"Car Gamer\"
SELECT count(*) FROM people WHERE Nationality = \"Car Gamer\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE People_ID IN ( SELECT People_ID FROM people WHERE Nationality = "Car")
SELECT T1.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = "Car Gamer"
SELECT avg(T1.Revenue) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\"
SELECT avg(T1.Money_Rank) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\" ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\" AND T1.Earnings < 200000
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\" AND T1.Earnings < 200000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car Gamer"
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Incomes > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 170 ORDER BY T2.Height DESC LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
sorted_by_revenue_desc = SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC;
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2;
{ "sql": "SELECT Name , Birth_Date FROM people ORDER BY Name ASC"
sorted_names_birth_dates = (SELECT Name , Birth_Date FROM people ORDER BY Name ASC)
names = people.Name where Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN ( SELECT T1.People_ID FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\")
SELECT Name FROM people WHERE Nationality <> 'Car Gamer'
SELECT count(DISTINCT Nationality) FROM people AS T1
SELECT count(DISTINCT Nationality) FROM people AS T1
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM area_code_state AS T1;
SELECT max(created) FROM VOTES WHERE state = \"CA\"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T2 JOIN VOTES AS T1 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T2 JOIN VOTES AS T1 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM VOTES WHERE state = \"NY\" OR state = \"CA\"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T2.state , T2.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabantient_name = \"Tabatha Gehling\"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\")
CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indeyyear > 1950
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.surfacearea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'Caribbean'
Caribbean = "Caribbean" + "Antigua" + "Barbuda" + "Cayman Islands" + "Dominica" + "Federica" + "French Guiana" + "Greenland" + "Haiti" + "Jamaica" + "Kentucky" + "Martinique" + "Monaco" + "Nicaragua" + "Panama" + "Puerto Rico" + "Saint Kitts" + "Saint Lucia" + "Saint Vincent" + "Turks and Caicos Islands" + "United States of America" TotalTerritory = sum(T1.SurfaceArea) * (count(*) / 4) print(totalterritory)
Anguilla is located in the Atlantic Ocean in the Western Hemisphere (Region). Therefore, its continent is Atlantic.
Anguilla belongs to the continent of Europe. Therefore, the continent name is "Europe".
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
Kabul is located in the Afghanistan region.
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT t3.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN language AS t3 ON t2.language = t3.language WHERE t1.name = \"Aruba\" AND t2.percentage > 50%
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.countrycode = "Angola"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Angola' GROUP BY T1.region ORDER BY sum(T1.population) DESC LIMIT 1;
SELECT avg(lifeexpectancy) FROM country WHERE region = \"Central Africa\"
Average life expectancy of central african population from country code 31 (Central African Republic) is 70 years.
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(t1.population) , max(t2.GNP) FROM country AS t1 JOIN country AS t2 ON t1.code = t2.code WHERE t1.continent = \"Asia\"
Asia population : 143 million Largest GNPs in Asia : 508971864800 USD
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'African' AND governmentform = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE continent = 'Africa' AND GovernmentForm = 'Republic'
Asia + Europe = 1843697058748848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484848484
TotalTerritory = sum(T1.SurfaceArea) + sum(T2.SurfaceArea) WHERE T1.Continent = \"Asia\" OR T2.Continent = \"Europe\"
Gelderland = " Gelderland ".population = 1039448
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'United States'
SELECT avg(GNP) , sum(Population) FROM country WHERE Code = (SELECT Code FROM country WHERE Name = \"United States\")
SELECT count(DISTINCT language) FROM countrylanguage AS T1
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "World"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Afghanistan" AND IsOfficial = 1
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = "Afghanistan" AND IsOfficial != 0
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
most_diverse_continent = (SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'English' INTERSECT SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Dutch\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.Continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "Chinese"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" OR T2.language = "dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = \"Asia\" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1 AND GovernmentForm = 'Republic'
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE GovernmentForm = 'Republic') AND Language NOT IN (SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE GovernmentForm = 'Unit'))
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.population > (SELECT max(population) FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = 'English'))
SELECT name , population , lifeexpectancy FROM country WHERE continent = \"Asia\" ORDER BY surfacearea DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = \"Asia\" ORDER BY population DESC LIMIT 1;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = \"Beatrix\" AND T2.IsOfficial = 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN city AS T3 ON T1.Code = T3.CountryCode WHERE T1.Name = \"Beatrix\" AND T2.Language = \"English\" AND T2.Percentage > 0.5
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE indeyyear < 1930)
SELECT count(DISTINCT Language) FROM countrylanguage WHERE IndepYear < 1930 GROUP BY CountryCode HAVING sum(Percentage) > 0.5
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"African\" ORDER BY population DESC LIMIT 1)
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population DESC LIMIT 1)
SELECT name FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT state FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = 'English' )
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != \"english\"
SELECT name FROM country WHERE code != (SELECT code2 FROM countrylanguage WHERE language = 'English') AND governmentform != 'Republic'
SELECT code , abbreviation FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = 'English' ) AND governmentform != 'Republic'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = \"Europe\" EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = \"Europe\" AND T2.code2 IN (SELECT code FROM countrylanguage WHERE language = \"English\")
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language = 'English' AND T1.countrycode = 'Europe'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.language = "Chinese" GROUP BY T1.name HAVING count(*) = 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T1.CountryCode IN ( SELECT T3.CountryCode FROM country AS T3 JOIN countrylanguage AS T4 ON T3.Code = T4.CountryCode WHERE T4.IsOfficial = 1 )
SELECT name , indyyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indyyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , name , headofstate FROM country WHERE surfacearea = (SELECT max(surfacearea) FROM country)
SELECT name , population , head_of_state FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3 {}
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2 ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 100
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT governmentform , sum(population) / count(*) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72
SELECT governmentform , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform HAVING sum(count(*) ) > 1000000
SELECT avg(LifeExpectancy) , sum(Population) , Continent FROM country GROUP BY Continent HAVING avg(LifeExpectancy) < 72
SELECT count(*) , avg(population) , avg(lifeexpectancy) FROM country WHERE continent != 'World' GROUP BY continent HAVING avg(lifeexpectancy) < 72;
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3;
Asia = (SELECT count(*) FROM country WHERE continent = 'Asia')
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
total_population = sum(population) / count(*) > 3000 average_territory = avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000 SELECT sum(total_population) , avg(average_territory) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(population) , avg(territory) FROM country WHERE continent = 'North America' AND territory > 3000 GROUP BY region HAVING sum(population) > 3000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language , T1.code FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' AND t2.percentage = (SELECT max(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > (SELECT percentage FROM countrylanguage GROUP BY language ORDER BY percentage DESC LIMIT 1)
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" GROUP BY T1.code HAVING sum(T2.percentage) > (SELECT avg(percentage) FROM countrylanguage WHERE language != \"English\")
SELECT count(*) FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT count(*) FROM conductor AS T1
ascending_order_of_age = conductor.sort_by_age()
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> \"USA\"
orchestras.sort_by_year_of_founded DESC :orchestras :record_company :descending ORDER BY orchestras.year_of_founded ASC :orchestras :record_company :ascending
sorted_by_year_or founded: orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show AS T1
SELECT avg(Attendance) FROM show AS T1
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT count(DISTINCT Name) FROM conductor AS T1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT T2.Name , T3.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T1.Name , T2.Organisation FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 4;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Foundations > 2008 {}
SELECT COUNT(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Name HAVING count(*) > 0
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Orchestra FROM orchestra EXCEPT SELECT T1.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 1 AND 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 2004 AND 9999;
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 EXCEPT SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003 UNION SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDER < 2003 EXCEPT SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003
SELECT count(*) FROM orchestra WHERE Record_Company = \"CD\" OR Record_Company = \"DVD\"
SELECT count(*) FROM orchestra WHERE record_company = 'CD' OR record_company = 'DVD'
SELECT T1.Year_of_Foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Foundation HAVING COUNT(*) > 1;
SELECT T1.year_of_foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_foundation HAVING count(*) > 1 {}
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = "10"
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
For each highschooler ID, we have a list of their friends' IDs. We can get this information by simply joining the friend table with the highschooler table. The result will be a list of (student_id , friend_id) pairs, where 'friend_id' represents the number of friends the student has. Here is the SQL query: SELECT T1.student_id , count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id;
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
Count(*) , T1.name AS student_name , count(*) AS num_friends FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle')
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM likes AS T1 JOIN friend AS T2 ON T1.liked_id = T2.friend_id) INTERSECT SELECT student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id
student_ids = (SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM likes)) INTERSECT SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T1.id = T3.friend_id WHERE T3.student_id IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) > 1) AND T1.id NOT IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) < 1 )
student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student2) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1 student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student2) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1 student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student2 student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student2 student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student1) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T3.student_id = student2 student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2
SELECT count(*) , student_id FROM LIKE GROUP BY student_id;
Count(*) AS T1 SELECT student_id , count(*) FROM LIKE GROUP BY student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T2.liked_id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND avg(T1.grade) > 5
SELECT count(*) FROM Like AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM (SELECT student_id FROM highschooler WHERE name = 'Kyle' UNION SELECT student_id FROM likes WHERE liked_id IN (SELECT liked_id FROM highschooler WHERE name = 'Kyle'))
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) != 0;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM friend)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IS NULL
Both guardians and veterinarians live in the state of Texas. SELECT state FROM professionals WHERE role_code = 'doctor' INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian' AND state = 'Texas'
Both guardians and veterinarians can reside in the same state. Therefore, we need to find the state of all owners who have either a guardian or a veterinarian. SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Guardian' OR T2.role_code = 'Veterinarian' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Guardian' OR T2.role_code = 'Veterinarian'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T2.date_of_treatment) != 0;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2
SELECT T1.id , T1.last_name , T1.cell_number FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T1.charge_id = T3.charge_id WHERE T3.charge_amount > 1000 )
SELECT T2.name FROM charges AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment > 1000 AND T3.role_code = 'Guardian'
owners_first_names = SELECT first_name FROM owners WHERE owner_id IN (SELECT professional_id FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian') EXCEPT SELECT first_name FROM owners WHERE owner_id IN (SELECT professional_id FROM professionals WHERE role_code = 'dog')
first_names = (SELECT first_name FROM owners WHERE email_address != 'dog@example.com' INTERSECT SELECT first_name FROM professionals WHERE role_code = \"Veterinarian\" OR role_code = \"Guardian\") - (SELECT first_name FROM owners WHERE email_address = \"dog@example.com\")
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Dog' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Dog'
SELECT T1.id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code != 'Dog' UNION SELECT T1.id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog Health Care'
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breue_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.weight > 50 GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T1.cost_of_treatment) ASC LIMIT 1;
SELECT T1.name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.cell_number HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(T2.cost_of_treatment) FROM treatments AS T2)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.charge_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.professional_id IN ( SELECT T1.professional_id FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.date_of_service , T2.first_name FROM charges AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatments AS T3 ON T1.treatment_id = T3.treatment_id WHERE T3.cost_of_treatment != \"null\" AND T2.role_code = \"operating veterinarian\"
treaties_cost , t treatment type code , treatment type description SELECT T1.cost_of_treatment , T2.treatment_type_code , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code HAVING sum(T1.charge_amount) >= 500 AND sum(T1.charge_amount) <= 3000
SELECT T1.cost_of_treatment , T2.treatment_type_code FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = 'health-care'
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.size_code ORDER BY T2.weight DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) >= 1 AND count(*) <= 3
{ "sql": "SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id"} {"result": "first_name , last_name , name"}
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T2.date_of_birth FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = (SELECT breed_code FROM breeds ORDER BY count(*) LIMIT 1)
SELECT T3.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T1.email_address = T3.email_address WHERE T1.state = 'Virginia' AND T1.city = 'Richmond'
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia' UNION SELECT T3.first_name , T3.last_name FROM Owners AS T3 JOIN Dogs AS T4 ON T3.owner_id = T4.owner_id WHERE T3.state = 'Virginia' AND T4.name != ''
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM owners WHERE state = "Hawaii" UNION SELECT email_address FROM owners WHERE state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" UNION SELECT email_address FROM owners WHERE state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs WHERE breed_code = \"Puppy\"
SELECT date_arrived , date_departed FROM Dogs WHERE breed_code = \"Puppy\"
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id JOIN professionals AS t3 ON t2.professional_id = t3.professional_id WHERE t3.role_code = 'healthcare'
SELECT count(*) FROM veterinarians AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'puppy'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'Puppy'
SELECT T1.role_code , T1.street , T1.city , T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'puppy' EXCEPT SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Health'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT T1.owner_id FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = 'Puppy')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = 'puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = 'Puppy' )
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = \"Puppy\"
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT max(charge_amount) FROM charges WHERE charge_type = 'Most Expensive'
SELECT max(charge_amount) FROM charges WHERE charge_type = (SELECT distinct charge_type FROM charges)
SELECT email_address , cell_number , home_phone FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code
Distinct breed_types AND sizes_types from dogs WHERE gender = 'Puppy'
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM charges AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatments AS T3 ON T3.treatment_id = T1.treatment_id JOIN t4 AS T4 ON T4.treatment_type_code = T1.treatment_type_code WHERE T2.role_code = \"Veterinarian\"
BEGIN; SELECT T1.first_name , T3.treatment_type_description FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.professional_id = T3.professional_id ; END;
SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer AS T1
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
{ "sql": "SELECT Birth_Year , Citizenship FROM singer AS T1"} {"sql": "SELECT Birth_Year , Citizenship FROM singer"}
SELECT Name FROM singer WHERE Citizenship <> \"France\"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT count(*) , country FROM singer GROUP BY country;
SELECT T1 citizenship FROM singer GROUP BY T1 citizenship ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY COUNT(*) DESC LIMIT 1) AS T3
SELECT country , max(Net_Worth_Millions) FROM singer GROUP BY country HAVING max(Net_Worth_Millions) != 0
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T2 ON T2.Singer_ID = T3.Singer_ID
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T2 ON T2.Singer_ID = T3.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 {}
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING SUM(T1.Sales) > 0 ORDER BY SUM(T1.Sales) DESC LIMIT 1;
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.Sales) > 0
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
singer(singer_id) WHERE birth_year < 1945 AND birth_year > 1955 INTERSECT SELECT citizenship FROM singer WHERE birth_year < 1945 AND birth_year > 1955
Before 1945: {"Birth_Year" : 1955 - 1945 + 1} Before 1955: {"Birth_Year" : 1956 - 1945 + 1} After 1955: {"Birth_Year" : 1956 - 1945 + 1} {"Birth_Year" : 1957 - 1945 + 1} {"Birth_Year" : 1958 - 1945 + 1} {"Birth_Year" : 1959 - 1945 + 1} {"Birth_Year" : 1960 - 1945 + 1} {"Birth_Year" : 1961 - 1945 + 1} {"Birth_Year" : 1962 - 1945 + 1} {"Birth_Year" : 1963 - 1945 + 1} {"Birth_Year" : 1964 - 1945 + 1} {"Birth_Year" : 1965 - 1945 + 1} {"Birth_Year" : 1966 - 1945 + 1} {"Birth_Year" : 1967 - 1945 + 1} {"Birth_Year" : 1968 - 1945 + 1} {"Birth_Year" : 1969 - 1945 + 1} {"Birth_Year" : 1970 - 1945 + 1} {"Birth_Year" : 1971 - 1945 + 1} {"Birth_Year" : 1972 - 1945 + 1} {"Birth_Year" : 1973 - 1945 + 1} {"Birth_Year" : 1974 - 1945 + 1} {"Birth_Year" : 1975 - 1945 + 1} {"Birth_Year" : 1976 - 1945 + 1} {"Birth_Year" : 1977 - 1945 + 1} {"Birth_Year" : 1978 - 1945 + 1} {"Birth_Year" : 1979 - 1945 + 1} {"Birth_Year" : 1980 - 1945 + 1} {"Birth_Year" : 1981 - 1945 + 1} {"Birth_Year" : 1982 - 1945 + 1} {"Birth_Year" : 1983 - 1945 + 1} {"Birth_Year" : 1984 - 1945 + 1} {"Birth_Year" : 1985 - 1945 + 1} {"Birth_Year" : 1986 - 1945 + 1} {"Birth_Year" : 1987 - 1945 + 1} {"Birth_Year" : 1988 - 1945 + 1}
SELECT count(*) FROM Other_Available_Features;
SELECT T1.feature_type_code FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_type_name = "AirCon"
SELECT t3.property_type_description FROM ref_properties AS t1 JOIN properties AS t2 ON t1.property_id = t2.property_id JOIN ref_property_types AS t3 ON t2.property_type_code = t3.property_type_code WHERE t1.property_type_code = t3.property_type_code
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House' UNION SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'Apartment'
