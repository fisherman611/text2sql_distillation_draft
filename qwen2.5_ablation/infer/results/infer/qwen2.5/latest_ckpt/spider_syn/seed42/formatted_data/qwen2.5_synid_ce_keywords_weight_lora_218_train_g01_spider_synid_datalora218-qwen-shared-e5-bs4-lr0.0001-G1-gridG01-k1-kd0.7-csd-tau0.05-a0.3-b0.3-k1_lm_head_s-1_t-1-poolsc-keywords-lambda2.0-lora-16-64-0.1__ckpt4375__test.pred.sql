SELECT count(*) FROM singer_in_concert AS t1 JOIN singer AS t2 ON t1.singer_id = t2.singer_id GROUP BY t2.country HAVING count(*) > 1
SELECT count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
sorted_vocalist = (select name , country , age FROM singer ORDER BY age DESC)
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
youngest_musicians = select song_name , song_release_year from singer where age = (SELECT min(age) FROM singer GROUP BY age)
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT country FROM singer WHERE age > 20 GROUP BY country HAVING count(*) >= 1
SELECT count(*) , country FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT location , name FROM singer_in_concert WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium WHERE capacity != 0
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(avg_attendance) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.stadium_id FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30 {}
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
select name from stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
count(*) , theme , count(*) FROM concert GROUP BY theme HAVING count(*) > 0
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name , T2.theme
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014
SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3Highest FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T3Highest = 2014 INTERSECT SELECT T3.name , T3Highest FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015 AND T3Highest = 2015
{ "sql": "SELECT T3.name , T3.location FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T1.song_release_year = 2015 INTERSECT SELECT T3.name , T3.location FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T2.stadium_id WHERE T2.year = 2015 AND T1.song_release_year = 2015"} {"sql": "SELECT T3.name , T3.location FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T1.song_release_year = 2015 INTERSECT SELECT T3.name , T3.location FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN stadium AS T3 ON T3.stadium_id = T2.stadium_id WHERE T2.year = 2015 AND T1.song_release_year = 2015"}
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = max(T2.capacity)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 OFFSET 0 WHERE pet_age = (SELECT min(pet_age) FROM Pets)
youngest_puppy_weight = pets.weight WHERE pet_age = (SELECT min(pet_age) FROM pets GROUP BY pet_age)
MAX(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20 GROUP BY T1.StuID HAVING count(*) >= 1;
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20;
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T1.pet_type = 'Puppy' AND T2.sex = 'F' GROUP BY T2.stuid HAVING count(*) > 0
SELECT count(DISTINCT pettype) FROM pets WHERE pettype = 'domestic'
SELECT count(DISTINCT pet_type) FROM pets
PetTypes: kitten , puppy SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype IN (SELECT pettype FROM Pets WHERE pettype = 'kitten' OR pettype = 'puppy')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype IN ('Kitten', 'Puppy')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"kitten\" AND T3.pet_type = \"puppy\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"puppy\" AND T3.pet_type = \"kitten\"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"kitten\" AND T1.sex = \"male\" INTERSECT SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"puppy\" AND T1.sex = \"male\"
No pets found: SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet WHERE PetType = \"Kitten\")
No pets owned by students who do not own kittens as pets. The StuID of these students will have an age of -1.
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT fname , lname FROM student WHERE StuID NOT IN ( SELECT T1.StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE T2.pet_type = 'cat' )
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "kitten"
PetAge = (SELECT min(pet_age) FROM Pets) AND Weight = (SELECT min(weight) FROM Pets WHERE pet_type = "pet")
SELECT T2.pet_type , T2.weight FROM Pets AS T1 JOIN Pets AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age LIMIT 1;
SELECT T1.stuid , T2.weight FROM Student AS T1 JOIN Pets AS T2 ON T1.stuid = T2.petid WHERE T1.age > 1;
SELECT T1.stuid , T2.weight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.age > 1;
SELECT avg(age) , max(age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(pet_age) , max(pet_age) , pet_type FROM pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN ( SELECT T3.petid FROM Pets AS T3 JOIN Has_Pet AS T4 ON T3.petid = T4.petid )
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.petid FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T1.petid FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T2.stuid = T3.stuid WHERE T3.fname = "Smith"
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 1
SELECT count(*) , T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) != 0
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pet_age = 3 AND T2.age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents AS T1;
SELECT count(*) FROM continents AS T1;
cont1 = (SELECT T1.contid , T2.contname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid)
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT count(*) FROM (SELECT DISTINCT ContId FROM continents)
SELECT count(*) FROM countries AS T1;
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 100
min_horsepower = (SELECT min(Horsepower) FROM cars_data) SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower = min_horsepower;
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < ( SELECT avg(weight) FROM car_names )
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.year = 1970;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
{ "sql": "SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker"} {"result": [[T2.maker , count(*)] FOR T2 IN model_list}}
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id , T2.FullName
accelerate = '71.5' model = 'amc hornet sportabout' cars_data.Accelerate = accelerate
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout' AND T1.Accelerate = (SELECT max(Accelerate) FROM cars_data WHERE model = 'Amc Hornet Sportabout')
SELECT count(*) FROM car_makers WHERE Country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'France'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974.
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T2.id HAVING COUNT(*) > 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3 INTERSECT SELECT T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) <= 2 UNION SELECT T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T1.Horsepower) , T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 GROUP BY T2.Maker HAVING max(T1.Horsepower) >= (SELECT max(Horsepower) FROM car_names WHERE Cylinders = 3)
SELECT max(T1.Horsepower) , T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.cylinders = 3 GROUP BY T2.Maker ORDER BY max(T1.Horsepower) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY max(T2.MPG) DESC LIMIT 1;
model_list ORDER BY MPG DESC LIMIT 1 MODEL_LIST最高 MPG的汽车模型。
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980.
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T2.Maker = 'Volvo'
max_accelerate = (SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders)
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != '0'
model_list WHERE make IN (SELECT make FROM car_names GROUP BY make ORDER BY count(*) DESC LIMIT 1) model_list
SELECT ModelId FROM model_list GROUP BY ModelId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
Year = 1980 count(*) AS T1 FROM cars_data WHERE YEAR = 1980 GROUP BY T1.makeid HAVING count(*) >= 1 AND count(*) <= 50000
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT DISTINCT T1.DistinctiveType FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.FullName = 'General Motors' OR T2.Weight > 3500
general_motors = (SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors') weights > 3500 = (SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.weight > 3500) different_models = general_motors EXCEPT weights > 3500 different_models.count()
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
```sql SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 ```
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'Volvo' ORDER BY T1.Accelerate ASC LIMIT 1;
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Model = 'Volvo')
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelrate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2;
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 5
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1;
SELECT T1.makeid , T1.fullname FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data GROUP BY Hoursepower HAVING max(cylinders) = 3) EXCEPT SELECT T1.makeid , T1.fullname FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower < (SELECT min(Horsepower) FROM cars_data GROUP BY Hoursepower HAVING max(cylinders) = 3)
SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.cylinders < (SELECT min(cylinders) FROM cars_data) GROUP BY T2.makeid HAVING count(*) < 4
max mpg = (SELECT max(mpg) FROM cars_data WHERE cylinders = 8 AND YEAR < 1980)
max MPG of 8 cylinder or before 1980 is 26.0
model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T1.maker WHERE T3.country = 'Ford'
SELECT country FROM car_makers WHERE country NOT IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) = 1)
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers )
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) <= 3
SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN (SELECT id FROM model_list GROUP BY id HAVING count(*) <= 3) GROUP BY id HAVING count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.countryname IN ( SELECT countryname FROM countries GROUP BY countryname HAVING count(*) > 3 UNION SELECT model , countryname FROM model_list WHERE maker = 'fiat' ) SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.countryname IN ( SELECT countryname FROM countries GROUP BY countryname HAVING make = 'fiat' )
SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.country != T2.country OR count(*) > 3 UNION SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.country != T2.country AND T1.make + T2.make == ' Fiat'
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.destination = "JetBlue Airways")
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T1.ShortenedWord FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "Jetblue Airways"
SELECT T1.airline , T2.countryshortened FROM airlines AS T1 JOIN airports AS T2 ON T1.country = T2.country WHERE T2.country = "USA"
SELECT T1.airline , T2.shortened FROM airlines AS T1 JOIN airports AS T2 ON T1.country = T2.country WHERE T2.countryabbreviation = 'USA'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT count(*) FROM (SELECT DISTINCT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airportcode)
SELECT sum(T1.length) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.country ORDER BY sum(T1.length) DESC LIMIT 1;
SELECT count(*) FROM airports AS T1
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) > 1
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.sourceairport = T2.destairport AND T2.airline LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportname = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = 'United Kingdom' AND T1.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Toastradio') AND sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Toastradio') AND terminal = 'ATO'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Austr')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Airlines' AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'USA' AND T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.destinationairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = '
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Ahd'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destination = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) LIMIT 1;
SELECT sourceairport FROM flights GROUP BY sourceairport ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airway ORDER BY count(*) DESC LIMIT 1;
SELECT T1.shortened , T2.country FROM airports AS T2 JOIN flights AS T1 ON T1.destairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) LIMIT 1;
SELECT T1.airinterface , T2.countryfrom ( SELECT T3.country , count(*) FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode GROUP BY T3.destairport ORDER BY count(*) DESC LIMIT 1) AS T2 ON T3.sourceairport = T2.sourceairport AND T3.destinationairport = T2.destinationairport ;
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = 'AHD'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2机场名 = 'AHD'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'United States' INTERSECT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2机场名 = 'CVO' EXCEPT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2机场名 = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'China' AND T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'China' AND T2.sourceairport = 'APG'
SELECT T1.airway FROM flights AS T1 JOIN flights AS T2 ON T1.sourceairport = T2.destairport AND T1.destinationairport = T2.sourceairport GROUP BY T1.airway HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2机场名 = "APG"
APG: 12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2机场名 = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT T1.destairport , T1.sourceairport FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode AND T1.destairport = T2.airportcode)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT count(*) FROM employee AS T1;
SELECT count(*) FROM employee AS T1;
sorted_employee = (SELECT name FROM employee ORDER BY age)
sorted_list = sorted(employee, key=lambda x: x.age) employee.sort(key=lambda x: x.age)
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , t1.city FROM shop AS t1 JOIN employee AS t2 ON t1.manager_name = t2.employee_id GROUP BY t1.city HAVING count(*) > 0
SELECT count(*) , t1.city FROM employee AS t1 JOIN shop AS t2 ON t1.employee_id = t2.shop_id GROUP BY t1.city HAVING count(*) > 0
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT T1.name , T1.district FROM shop AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
SELECT name , city , district FROM shop ORDER BY number_products DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_shop = sorted(shop , 0) DESC GROUP BY shop ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY sum(T2.year_awarded) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT count(*) , name FROM shop GROUP BY name HAVING count(*) != 0
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T2.city = 'New York'
SELECT * FROM hiring
SELECT * FROM hiring
district_with_both = (SELECT district FROM shop WHERE number_products BETWEEN 0 AND 2999 INTERSECT SELECT district FROM shop WHERE number_products > 10000)
both_districts = (district for district in shop if number_products < 3000) & (district for district in market if number_products > 10000)
SELECT count(DISTINCT location) FROM shop AS T1
SELECT count(DISTINCT location) FROM shop AS T1
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 1
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
document_names = [] layout_ids = [] for document_id in range(len(documents)): document_description = documents.document_description[document_id] if "w" in document_description: document_names.append(document_name[document_id]) layout_ids.append(layout_id[document_id]) {"document_names", "layout_ids"}
SELECT T1.document_id , T2.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Robbin CV\"
SELECT T1.document_id , T1.layout_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Robbin CV\"
SELECT count(DISTINCT document_id) FROM documents GROUP BY document_id HAVING count(*) > 0
SELECT count(DISTINCT document_name) FROM Documents WHERE document_id IN (SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) > 1)
SELECT count(*) FROM Documents WHERE document_name LIKE '%PPT%'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , t1.layout_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.layout_id HAVING count(*) > 0
SELECT document_id , count(*) FROM Documents GROUP BY document_id HAVING count(*) >= 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT document_id FROM Documents)
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id) GROUP BY template_id HAVING count(*) < 1
SELECT count(*) FROM Templates
SELECT count(*) FROM Ref_Template_Types WHERE template_type_code = \"Layout\"
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T2.edition_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"layout\"
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description != 'Unknown'
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_code = \"PPT\")
SELECT template_id FROM Templates WHERE template_type_code = \"PP\" OR template_type_code = \"PPT\"
SELECT count(*) FROM Ref_Template_Types WHERE template_type_code = "CV"
SELECT count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = \"CV\"
SELECT template_type_code , layout_type FROM Ref_templates WHERE template_type_code IN ( SELECT template_type_code FROM Ref_templates GROUP BY template_type_code HAVING max(version_number) > 5 )
SELECT template_type_code , layout_type_name FROM Ref_templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_templates GROUP BY template_type_code HAVING count(*) > 5)
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code;
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3;
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3;
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code;
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates WHERE template_name = \"Data base\"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT document_name FROM Documents WHERE template_id IN ( SELECT template_id FROM Templates WHERE template_type_code = "BK" )
BK_layouts = (SELECT document_name FROM Documents WHERE document_id IN (SELECT document_id FROM Paragraphs AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"))
SELECT count(*) , template_type_code FROM Ref_templates GROUP BY template_type_code;
SELECT count(*) , template_type_code FROM Ref_templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates UNION SELECT template_type_code FROM Documents)
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT template_type_description , template_type_code FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.date_effective_from != \"null\" AND T2.date_effective_to != \"null\" AND T2.document_name IN (SELECT document_name FROM documents)
SELECT DISTINCT t1.template_details FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code IN (SELECT template_type_code FROM Ref_Template_Types) AND t1.document_name IN (SELECT document_name FROM Documents GROUP BY document_name HAVING count(*) > 1)
SELECT template_type_id FROM Ref_Template_Types WHERE template_type_description = "Presentation"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM PARAGRANS AS T1;
SELECT count(*) FROM PARAGRANS AS T1
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Summer Show'
SELECT Other_Details FROM PARAGRANS WHERE Paragraph_Text LIKE "%Korea%"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2paragraph_text FROM paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2document_name = \"Welcome to NY\"
document_id = 1 paragraph_text = 'Welcome to NY'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , t1.document_name , count(*) FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id HAVING count(*) > 0
Counting paragraphs per document can be done by keeping track of the paragraph count for each document and then counting these values across all documents. The template_id would also help us keep track of which templates were used. SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(DISTINCT paragraph_text) >= 2;
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text = \"Brazil\" INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = \"Ireland\"
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING sum(T2.grade) >= 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Age , Hometown FROM teacher
SELECT age , hometown FROM teacher
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT count(*) , name FROM teacher GROUP BY name ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Hometown != T2.Hometown GROUP BY T1.Hometown HAVING COUNT(*) >= 2 {}
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T2.Name , T3.Courses FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id
SELECT T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.name , T2.grade FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T2.teacher_id = T3.teacher_id ORDER BY T3.name ASC;
SELECT T1.name , T2.course FROM teacher AS T1 JOIN course AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID IN (SELECT Course_ID FROM course WHERE Title = \"Math\"))
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course_id = 'Math'
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.Name , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2;
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 5 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 4;
visitor[Level_of_membership , Age] > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.num_ticket) DESC LIMIT 1;
SELECT avg(total_spent) , max(total_spent) FROM visit WHERE visitor_id IN ( SELECT visitor_id FROM visit GROUP BY visitor_id ORDER BY count(*) DESC LIMIT 1 )
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM players AS T1
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;
SELECT count(*) FROM MATCHES;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(T1.loser_age) , avg(T2.winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id GROUP BY T2.player_id HAVING count(*) >= 1 AND count(*) <= 50
SELECT avg(loser_age) , avg(winner_age) FROM matches WHERE loser_id != winner_id
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id HAVING count(*) >= 1
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id HAVING count(*) >= 1;
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id HAVING max(T1.ranking) > 0
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.match_num = T2.match_num JOIN players AS T3 ON T2.winner_id = T3.player_id WHERE T3.country_code = "USA" GROUP BY T1.ranking ORDER BY sum(T1.rankings_points) DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T2.player_id HAVING count(*) >= 1 AND count(*) <= 5000
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T2.player_id HAVING count(*) > 1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\" AND T1.tourney_id = 198
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , state_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.tourney_name = 'Australian Open' AND T3.ranking_points = (SELECT max(T3.ranking_points) FROM rankings AS T3 WHERE T3.tourney_name = 'Australian Open')
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.rank_points DESC LIMIT 1;
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM matches)
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT T1.first_name , avg(T2.ranking) , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0 {}
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0 UNION SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) < 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT T1.abbr FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT abbrev FROM players GROUP BY abbrev ORDER BY count(*) DESC LIMIT 1;
SELECT abbreviation FROM players GROUP BY abbreviation HAVING count(*) > 50;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT count(*) , ranking FROM rankings GROUP BY ranking ORDER BY ranking DESC
SELECT count(*) , T1.rating FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.rating HAVING max(T1.tourneys) >= 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , YEAR FROM MATCHES GROUP BY YEAR HAVING count(*) > 1
year , count(*) FROM MATCHES GROUP BY YEAR HAVING count(*) > 100
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age ASC LIMIT 3;
SELECT T1.winner_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3;
SELECT count(*) FROM (SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.winner_hand = \"left\")
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.ranking_id = T3.ranking_id ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN Rankings AS T3 ON T2.ranking = T3.ranking WHERE T3.rankings_points = (SELECT max(rankings_points) FROM rankings)
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
count(*) FROM ship WHERE ship_type = 'Captured'
sorted_name_tonnage = (name , tonnage ) order by sorted_name_tonnage desc ; SELECT name , tonnage FROM ship ORDER BY sorted_name_tonnage DESC ;
SELECT name , date , result FROM battle
SELECT max_deaths , min_deaths FROM death
SELECT avg(injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.ship_type = 'Brig' INTERSECT SELECT DISTINCT T3.id , T3.name FROM ship AS T3 JOIN battle AS T4 ON T3.id = T4.id WHERE T4.result = 'Lost' AND T4.bulgarian_commander = 'Bulgarian'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
most_injured_vessel = (SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1)
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.latin_commander = T2.id WHERE T1.bulgarian_commander = "Kaloyan"
SELECT count(DISTINCT result) FROM battle AS T1
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = '225' )
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' INTERSECT SELECT T3.name , T3.date FROM ship AS T3 JOIN battle AS T4 ON T3.id = T4.id WHERE T4.name = 'HMS Atalanta'
no_results_found: "No battles were found where the 'English Channel' was lost."
death.note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses AS T1
SELECT count(*) FROM courses;
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea' AND city = 'Portsmouth'
SELECT T1.department_summary_name , T1.department_id FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.degree_program_id = T2.degree_program_id
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT count(*) FROM (SELECT T1.section_name FROM sections AS T1 JOIN department_courses AS T2 ON T1.section_id = T2.section_id JOIN departments AS T3 ON T2.department_id = T3.department_id WHERE T3.department_name = 'Engineering')
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
["Section_name"] reversed chronological order.
["Section Name"]
SELECT T1.semester_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , T1.semi semester_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.semester_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.section_description FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN sections AS T3 ON T2.section_id = T3.section_id WHERE T3.section_name LIKE '%the computer%'
"Transcript"::Transcript_text LIKE '%computer%'
SELECT T1.first_name , T1.last_name , T1.student_id , T2.semester_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2 AND T2.semester_id = 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'One Term') AND T2.semester_id IN (SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'One Term'))
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T6.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T6 ON T1.degree_program_id = T6.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) , T1.university_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN ( SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id )
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN student_enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'North Carolina'
SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id NOT IN (SELECT department_id FROM Degree_Programs)
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT cell_mobile_number FROM Students WHERE first_name = 'Timothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , last_name , middle_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_1 != T1.current_address_line
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.zip_postcode != T1.current_address_id
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM Students AS T1
SELECT avg(date_first_registered) FROM students;
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id;
SELECT count(*) FROM students;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1;
SELECT count(*) , student_enrolment_id FROM student_enrolment GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_id , count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM Student_Enrolment_Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Master') AND T2.student_id IN (SELECT student_id FROM Student_Enrolment_Courses WHERE semester_id IN (SELECT semester_id FROM Semesters WHERE semester_name = 'Fall' UNION SELECT semester_id FROM Semesters WHERE semester_name = 'Spring')) INTERSECT SELECT T1.semester_name FROM Student_Enrolment_Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelor') AND T2.student_id IN (SELECT student_id FROM Student_Enrolment_Courses WHERE semester_id IN (SELECT semester_id FROM Semesters WHERE semester_name = 'Fall' UNION SELECT semester_id FROM Semesters WHERE semester_name = 'Spring'))
SELECT T1.seminam FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 1 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 2 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 1 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 2 ) ) INTERSECT SELECT T1.seminam FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 1 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 2 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 1 ) ) INTERSECT SELECT T1.seminam FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 2 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 1 AND T2.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 2 ) )
SELECT count(DISTINCT current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T2.first_name != \"null\" AND T2.last_name != \"null\"
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
[ "SELECT * FROM students ORDER BY first_name DESC , last_name DESC" ]
Reverse alphabetical order of student details: other_student_details.
Section H: The main heading of the course description. It appears to be a placeholder for the course name.
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title
SELECT T2.Directed_by FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.directed_by WHERE T2.Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.Written_by WHERE T2.Old_Name = 'Joseph Kuhr' AND T2.Written_by = 'Joseph Kuhr'
SELECT T2.animation , T2.directed_by FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date
SELECT T1.title , T2.directed_by FROM cartoon AS T1 JOIN animation AS T2 ON T1.channel = T2.channel ORDER BY T1.original_air_date ASC
SELECT T2.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by IN ('Ben Jones', 'Brandon Vietti')
SELECT T1.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = \"Ben Jones\" OR T2.directed_by = \"Brandon Vietti\"
SELECT country , count(*) FROM TV_CHANNEL GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , content FROM TV_channel AS t1;
SELECT count(DISTINCT series_name) , content FROM TV_channel GROUP BY series_name , content HAVING count(*) >= 200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT CONTENT FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Series_name = 'Sky Radio'
SELECT package_option FROM tv_channel WHERE series_name = "Sky Radio"
SELECT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = 'The Rise of the Blue Beetle'
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.title FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT * FROM TV_series ORDER BY Rating DESC
SELECT T1.episode , T2.rating FROM TV_series AS T1 JOIN (SELECT * FROM TV_series ORDER BY rating DESC LIMIT 3) AS T2 ON T1.id = T2.id
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
Min(TV_series.Share) , max(TV_series.Share)
MAX(Share) , min(Share) FROM TV_series AS T1
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT T1.score FROM cartoony AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime" AND T2.Episode = "A Love of a Lifetime"
SELECT T1.serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.episode = \"A Love of a Lifetime\"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY 1 DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT Package_Option , Series_Name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HD'
SELECT Package_Option , Series_Name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HD'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = 'Todd Casey' AND T1.Content = 'Animation'
SELECT T1.state FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey' INTERSECT SELECT T1.state FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey'
{ "sql": "SELECT country FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = 'Todd Casey')"
SELECT id FROM cartoon WHERE written_by != 'Todd Casey'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
SELECT T1.serial_name , T1.country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' INTERSECT SELECT T1.serial_name , T1.country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> "english"
TV_Channel(id, country, language) WHERE language <> 'english' AND id NOT IN (SELECT id FROM TV_channel WHERE language = 'english')
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT count(*) FROM people WHERE Nationality = \"Car Gamer\"
SELECT count(*) FROM people WHERE Nationality = \"Car Gamer\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Earnings FROM poker_player ORDER BY Earnings DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE People_ID IN ( SELECT People_ID FROM people WHERE Nationality = "Car Gamer" )
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE People_ID IN ( SELECT People_ID FROM people WHERE Nationality = "Car Gamer")
SELECT avg(T1.Revenue) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\"
SELECT avg(T1.Money_Rank) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = 'Car Gamer' ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Finishing) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\" AND T1.Earnings < 200000
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\" AND T1.Earnings < 200000
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car Gamer"
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Incomes > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 {}
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > (SELECT avg(Earnings) FROM poker_player) ORDER BY T2.Earnings DESC
sorted_by_revenue_desc = SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC;
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2;
sorted_people = sorted(people) for person in sorted_people: print(person.Name , person.Birth_Date)
sorted_names_birth_dates = sorted(people, key=people.Name) Names and Birth Dates: [Name , Birth_Date]
names = people.Name where Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Games_Played = 1)
SELECT Name FROM people WHERE Nationality <> \"Car Gamer\"
SELECT count(DISTINCT Nationality) FROM people AS T1
SELECT count(DISTINCT Nationality) FROM people AS T1
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state AS t1
SELECT max(created) FROM VOTES WHERE state = \"CA\"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T2.contestant_name FROM CONTESTANTS AS T2 JOIN VOTES AS T1 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM VOTES WHERE state = \"NY\" OR state = \"CA\"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T2.state , T2.area_code FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabonent_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\").
CONTESTANTS WHERE contestant_name LIKE '%Al%' OR contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
after_1950 = (SELECT name FROM country WHERE indeyyear > 1950)
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
Total territory of the State in the Caribbean region = 3000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000 + 3000000 + 2000000 + 1000000 + 5000000 + 4000000
Caribbean = 'Caribbean' SurfaceArea + TotalTerritory(Region) WHERE Region IN ('Caribbean')
Anguilla is located in the Caribbean continent. Therefore, the continent Anguilla belongs to is "Caribbean".
Anguilla is located in the Caribbean region of the world. Therefore, the continent it belongs to is the Caribbeans. The continent name is "Carribies".
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
Kabul is located in the Afghanistan region.
SELECT t1.language FROM countrylanguage AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t2.countrycode = 'Aruba' GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Aruba" GROUP BY t1.language ORDER BY sum(t2.percentage) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Africa"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Africa"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.countrycode = 'Angola'
Angola has a population of 631,000 according to the country code. The region it belongs to is Angola.
SELECT avg(lifeexpectancy) FROM country WHERE region = \"Central Africa\"
Average life expectancy in Central Africa: 70.1 years
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT t1.name FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Asia' ORDER BY t2.lifeexpectancy ASC LIMIT 1;
total_population = sum(t1.population) max_gnp = max(countryGNP) / 100000000 total_population + max_gnp = 34567890000000000 + 100000000 = 34567890000000000 maximum GNP = 100000000 / 100000000 = 1.0 total_population + max_gnp = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890000000000 + 1.0 = 34567890
SELECT count(*) , max(GNP) FROM country WHERE Continent = \"Asia\"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'African' AND governmentform = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Africa\" AND GovernmentForm = \"Republic\"
Asia + Europe = 106400000 + 106400000 = 212800000
TotalTerritory = sum(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe')
Gelderland district has a population of 536149.
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'US Territory'
SELECT avg(GNP) , sum(population) FROM country WHERE code IN ( SELECT code FROM country WHERE name = 'United States' )
SELECT count(DISTINCT language) FROM countrylanguage AS T1
SELECT count(DISTINCT language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.population > 5000000
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan' AND isofficial = 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Afghanistan' AND T2.isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" AND T2.language = \"Dutch\"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
Continent = "China" UNION SELECT count(DISTINCT t1.Continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" OR T2.language = "dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM country WHERE Continent = \"Asia\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = \"Asia\" GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1 AND GovernmentForm = 'Republic'
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE GovernmentForm = 'Republic')
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'English' ORDER BY population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = \"Asia\" ORDER BY surfacearea DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.code HAVING avg(T1.lifeexpectancy) > (SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English')
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = \"English\")
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = \"Beatrix\" AND T2.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE percentage > 5 % AND indepyear < 1930
SELECT count(DISTINCT language) FROM countrylanguage WHERE indepyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = "African")
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population DESC LIMIT 1)
SELECT name FROM country WHERE code NOT IN (SELECT code2 FROM countrylanguage WHERE language = 'English')
SELECT state FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = 'English' )
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'english'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'english'
SELECT name FROM country WHERE code != (SELECT code FROM countrycode WHERE language = 'English') AND governmentform NOT IN ('Republic')
SELECT name FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = 'English' INTERSECT SELECT code FROM countrylanguage WHERE language = 'Republic')
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.language = 'English'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != 'English' AND T2.IsOfficial = 'No'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = \"Asia\" AND T2.population > 500000 AND T2.isofficial = 1 AND T2.language = \"Chinese\" GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T1.CountryCode = 'Asia' INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T1.CountryCode = 'Asia'
SELECT name , indyyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indyyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.surfacearea = (SELECT max(surfacearea) FROM country) ORDER BY T1.population DESC LIMIT 1
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3 {}
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2 ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district HAVING count(*) > 1000000
SELECT count(*) , district FROM city WHERE population > ( SELECT avg(population) FROM city ) GROUP BY district HAVING count(*) > 1000000
SELECT T1.GovernmentForm , sum(T2.population) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.GovernmentForm HAVING avg(T2.population) > 72.0 {}
SELECT governmentform , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform HAVING sum(count(*) ) > 1000000
SELECT avg(LifeExpectancy) , sum(population) , continent FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72
SELECT continent , count(*) , avg(population) , avg(lifeexpectancy) FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000 ;
total_population = sum(population) / count(*) , avg_territory = avg(towards) FROM country WHERE continent = 'North America' AND territory > 3000 GROUP BY total_population , avg_territory
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
most_common_language = (SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.CountryCode ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Name , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY sum(T2.Percentage) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage = (SELECT max(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > (SELECT percentage FROM countrylanguage GROUP BY language ORDER BY percentage DESC LIMIT 1)
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING sum(T2.percentage) >= (SELECT avg(percentage) FROM countrylanguage WHERE language != 'English')
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
ortcha.company DESC UNION SELECT record_company FROM orchestra ORDER BY year_of_founded DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_by_year_or founded: orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show AS T1
SELECT avg(Attendance) FROM show AS T1
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT T2.Name , T3.Organisation FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T2.Name , T3.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Performance_ID = T3.Performance_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_OF_Foundations > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 3;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID WHERE T3.Year_of_Founded > 2008 {}
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Name HAVING COUNT(*) > 0
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM orchestra EXCEPT SELECT T1.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT * FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 1 AND 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded BETWEEN 2004 AND 2016 {}
ensemble1.year_of_founded < 2003 AND ensemble2.year_of_founded > 2003 UNION SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE Record_Company = \"CD\" OR Record_Company = \"DVD\"
SELECT count(*) FROM orchestra WHERE record_company IN ('CD', 'DVD')
SELECT T1.Year_of_Foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Foundation HAVING COUNT(*) > 1 {}
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_founded HAVING COUNT(*) > 1;
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM Highschooler AS T1
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
student_id , count(*) FROM friend GROUP BY student_id HAVING count(*) > 1
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle')
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
No friend{"name":""}
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T1.id = T3.friend_id WHERE T3.student_id IN (SELECT id FROM highschooler WHERE id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T1.id = T3.friend_id)) INTERSECT SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T1.id = T3.friend_id WHERE T3.student_id IN (SELECT id FROM highschooler WHERE id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T1.id = T3.friend_id))
student_ids = (SELECT student_id FROM likes INTERSECT SELECT student_id FROM friends) WHERE student_id IN (SELECT student_id FROM likes) AND liked_id IN (SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.friend_id = T3.friend_id WHERE T1.id IN (SELECT T2.student_id FROM likes AS T2 JOIN friend AS T3 ON T2.liked_id = T3.friend_id) {}
student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student1 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id) student2 = (SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id)
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) >= 2 AND avg(T1.grade) > 5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2liked_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Like AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0.0;
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IS NULL;
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
Both guardians and veterinarians can live in the same state. Therefore, the state that both guardians and veterinarians can live in is the state of Texas. So the answer is "Texas".
Both guardians and veterinarians must live in the same state. Since there can't be multiple states with two guardians or veterinarians simultaneously, we can simply return the state of the first guardian and the first veterinarian. SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'guardian' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'veterinarian' AND T1.state != T2.state;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2
SELECT T1.owner_id , T2.last_name , T2.cell_number FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = \"Indiana\" OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T1.charge_id = T3.charge_id WHERE T3.charge_amount > 1000)
SELECT T2.name FROM charges AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment > 1000 AND T3.role_code = 'Guardian'
first_names = (SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian') EXCEPT SELECT first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY first_name HAVING count(*) > 1
first_names = (SELECT first_name FROM owners WHERE email_address != \"dog@example.com\") EXCEPT SELECT first_name FROM professionals WHERE role_code = \"Guardian\" UNION SELECT first_name FROM professionals WHERE role_code = \"Veterinarian\"
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id WHERE T2.breed_code = 'Dog' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id WHERE T2.breed_code = 'Dog'
SELECT T1.email_address , T2.role_code , T1.id FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.email_address NOT IN (SELECT T3.email_address FROM dogs AS T3 JOIN treats AS T4 ON T3.dog_id = T4.dog_id JOIN professionals AS T5 ON T4.professional_id = T5.professional_id WHERE T5.role_code = 'Veterinarian' AND T3.breed_code = \"Dog\")
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breue_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.weight > 400 GROUP BY T1.breue_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.charge_amount) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t1.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(T2.cost_of_treatment) FROM treatments AS T2 GROUP BY T2.professional_id)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.charge_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.professional_id IN ( SELECT T3.professional_id FROM treatments AS T3 JOIN dogs AS T4 ON T3.dog_id = T4.dog_id JOIN owners AS T5 ON T4.owner_id = T5.owner_id WHERE T5.first_name = 'John' AND T5.last_name = 'Doe')
SELECT T1.date_of_treatment , T2.first_name FROM charges AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.name = 'Bella'
Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code HAVING sum(T1.cost_of_treatment) > 0.5
SELECT T1.cost_of_treatment , T2.treatment_type_code FROM charges AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = "health-care"
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T3.first_name , T3.last_name , T2.weight FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T1.size_code = T3.size_code
SELECT T1.name , T2.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
{ "sql": "SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id"} {"result": ["First Name", "Last Name", "Puppies Name"]}
SELECT T1.name , T4.date_of_treatment FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN treatments AS T3 ON T1.dog_id = T3.dog_id JOIN owners AS T4 ON T3.owner_id = T4.owner_id WHERE T2.breed_name = 'Rarest' ORDER BY T4.date_of_treatment ASC LIMIT 1
SELECT T1.name , T3.date_arrived FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia' UNION SELECT T3.first_name , T3.last_name FROM Owners AS T3 JOIN Dogs AS T4 ON T3.owner_id = T4.owner_id WHERE T4.breed_code = 'Labrador Retriever'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1 OFFSET 0;
SELECT email_address FROM owners WHERE state LIKE "Hawaii%" UNION SELECT email_address FROM owners WHERE state LIKE "Wisconsin%"
SELECT email_address FROM owners WHERE state = 'Hawaii' UNION SELECT email_address FROM owners WHERE state = 'Wisconsin'
SELECT date_arrived , date_departed FROM Dogs WHERE breed_code = \"Puppy\"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id JOIN professionals AS t3 ON t2.professional_id = t3.professional_id WHERE t3.role_code = 'health'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id JOIN professionals AS t3 ON t2.professional_id = t3.professional_id WHERE t1.breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'Puppy'
SELECT T2.role_code , T1.street , T1.city , T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges ORDER BY charge_date DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' EXCEPT SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Health'
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM dogs WHERE breed_code = \"puppy\")
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'Puppy' )
SELECT count(*) FROM veterinarians WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = 'Puppy' )
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = \"Puppy\"
SELECT avg(age) FROM dogs WHERE breed_code = \"Puppy\"
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'puppy'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT max(charge_amount) FROM charges WHERE charge_type = 'Most Expensive'
SELECT max(charge_amount) FROM charges WHERE charge_type = (SELECT charge_type FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1)
SELECT email_address , cell_number , home_phone FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM professionals AS T1
BREEDS b = (SELECT DISTINCT breed_name FROM breeds) INTERSECT sizes S = (SELECT DISTINCT size_description FROM sizes) BREADTHES AND SIZEDEPS BREADTHES AND SIZEDEPS BREADTHES AND SIZEDEPS BREADTHES AND SIZEDEPSsizes S = (SELECT DISTINCT size_description FROM sizes)
Distinct breed_code , size_code FROM dogs WHERE gender = 'Puppy'
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
BEGIN; SELECT T1.first_name , T3.treatment_type_description FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.professional_id = T3.professional_id ; END;
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> \"France\"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT count(*) , country FROM singer GROUP BY country HAVING count(*) > 100
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT COUNT(*) FROM (SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY COUNT(*) DESC LIMIT 1) AS T3
SELECT net_worth_millions , citizenship FROM singer GROUP BY citizenship HAVING max(net_worth_millions) != 0
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 {}
SELECT T2.Name , sum(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING sum(T1.sales) > 0
SELECT T2.Name , sum(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.sales) > 0
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 1944 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 2000
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features AS T1
SELECT T1.feature_type_code FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_type_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code WHERE T2.property_type_code = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House' UNION SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'Apartment'
