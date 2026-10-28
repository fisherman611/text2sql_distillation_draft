SELECT count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id;
SELECT count(*) FROM singer_in_concert;
SELECT name , country , age FROM singer ORDER BY age ASC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer)
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20 {}
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer AS T1 JOIN musician AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer) ORDER BY T1.song_name ASC;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT T1.location , T1.name FROM stadium AS T1 JOIN singer AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
2014 - 3 2015 - 3
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.concert_name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 EXCEPT SELECT country FROM singer WHERE age < 30
select name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
concert_id , theme , count(*) concert_id , theme , count(*) from concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
concert_id , theme , count(*) concert_in_concert(concert_id , theme)
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
concert_id , name , count SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
concert_id , name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014 AND T1.singer_id IN (SELECT singer_id FROM singer_in_concert AS T3 JOIN concert AS T4 ON T3.concert_id = T4.concert_id WHERE T4.year = 2014)
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
concert_id in (SELECT T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014 INTERSECT SELECT T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2015)
concert_id = (SELECT T1.concert_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014 INTERSECT SELECT T1.concert_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2015) location , name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1 OFFSET 0;
SELECT min(weight) FROM Pets WHERE pet_type = 'pet' AND pet_age = (SELECT min(pet_age) FROM student)
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20 AND T2.petid IN (SELECT petid FROM pets WHERE pet_age > 20)
SELECT count(*) FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F' AND T1.petid IN (SELECT petid FROM pets WHERE pettype = 'Puppy')
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.petid IN ( SELECT T3.petid FROM pets AS T3 JOIN has_pet AS T4 ON T3.petid = T4.petid WHERE T4.stuid = T1.stuid )
SELECT count(DISTINCT pet_type) FROM pets WHERE pet_type = 'domestic'
SELECT count(DISTINCT pettype) FROM has_pet;
Pets(PetID, pet_type) = 'kitten' OR pets(pet_type) = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Kitten' OR T3.pet_type = 'Puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"Kitten\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = \"Puppy\"
PetType = 'kitten' INTERSECT PetType = 'puppy' StuID IN (SELECT StuID FROM Has_pet)
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE pet_type = 'Kitten')
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten'
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = 'Kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Kitten')
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Kitten'
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT T2.pet_type , T2.weight FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.pet_id = T2.pet_id ORDER BY T1.pet_age ASC LIMIT 1;
Pets(weight) WHERE pet_age > 1
Pets[PetID] = (SELECT pet_id FROM Has_pet WHERE pet_age > 1)
SELECT avg(T1.age) , max(T1.age) , T2.species FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.species
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age != 0 AND T2.petid NOT IN (SELECT petid FROM Has_Pet)
StuID , Lname , age , fname , pet_age , pet_type , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type , fname , pet_age , pet_type ,
SELECT T1.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T1.petid FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID;
SELECT count(*) , T1.stuid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1;
Pet_Types: 'Kitten' pets_pet_age: 3 Has_Pet_stuid: StuID from Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = 'Kitten' AND T2.age = 3; T2.Fname T2.Lname
StuID = (SELECT StuID FROM Student WHERE age = 3 INTERSECT SELECT StuID FROM Has_Pet WHERE pet_type = 'Kitten')[0][1].lname
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
cont_id , continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contId = T2.continent GROUP BY T1.contId HAVING count(*) > 0
continents.contIds = (SELECT contid FROM countries GROUP BY contid) , continents.contname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid ORDER BY count(*) DESC
SELECT count(*) FROM countries AS T1 WHERE T1.continent IN (SELECT continent FROM continents AS T2 WHERE T2.id = T1.continent)
SELECT count(*) FROM (SELECT DISTINCT countryid FROM countries)
SELECT T2.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker GROUP BY T2.model ORDER BY sum(T1.horsepower) ASC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid GROUP BY T2.Model HAVING avg(T1.Weight) < T1.Weight
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year = 1970;
SELECT T2.maker , T2.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id ORDER BY T1.year ASC LIMIT 1
SELECT T2.maker , T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id ORDER BY T1.year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year > 1980;
cars_data.year > 1980.model.count()
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
conts , count(*) FROM car_makers GROUP BY contid;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
model_list��作者(maker,model)模型名（maker）全名（make）count（count）和（make）全名（make）模型名（maker）全名（make）count（count）和（make）全名（make）car_names��作者(maker,model)模型名（maker）全名（make）car_names印制（maker）全名（make）模型名（maker）全名（make）car_names印制（maker）全名（make）model_list印制（maker）全名（make）car_names印制（maker）全名（make）counts（count）and（make）全名（make）model_list印制（maker）全名（make）counts（count）and（make）全名（make）全名（make）model_list印制（maker）全名（make）counts（count）and（make）全名（make）全名（make）model_list印制（maker）全名（make）counts（count）and（make）全名（make）全名（make）model_list印制（maker）全名（make）counts（count）and（make）全名（make）全名（make）model_list印制（maker）全名（make）counts（count）and（make）全名（make）全名（make）counts（count）and（make）全名（make）counts（count）and（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（make）全名（make）counts（count）和（
SELECT count(*) , T1.id , T2.fullName FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'Amc' AND T2.Model = 'Hornet Sportabout'
SELECT sum(T1.Accelerate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers WHERE country IN ( SELECT countryid FROM countries WHERE countryname = 'France' )
SELECT count(*) FROM car_makers WHERE country IN (SELECT id FROM countries WHERE continent = 'USA')
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = (SELECT countryid FROM countries WHERE countryname = 'United States')
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(T2.weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.car_id WHERE T1.cylinders = 8 AND T1.year = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 0
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 3 INTERSECT SELECT countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryid HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT max(T2.Horsepower) , T1.maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Cylinders = 3 GROUP BY T1.maker
SELECT max(T2.Horsepower) , T1.Maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.id WHERE T2.cylinders = 3 GROUP BY T1.Maker ORDER BY max(T2.Horsepower) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker = T2.make WHERE T2.MPG = (SELECT max(MPG) FROM cars_data)
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Mpg = (SELECT max(Mpg) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year < 1980
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.id WHERE T1.Make = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.FullName = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1;
SELECT ModelId FROM model_list GROUP BY ModelId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3;
```sql SELECT DISTINCT T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T1.fullname = 'General Motors' OR T2.weight > 3500; ```
model_list Maker = 'General Motors' UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.maker = T2.make WHERE T2.weight > 3500;
SELECT YEAR FROM cars_data WHERE weight >= 3000 AND weight <= 4000
```sql SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.weight > 3000 AND T2.country > 4000; ```
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Volvo' ORDER BY T1.Accelerate LIMIT 1;
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = 'Volvo' ORDER BY T1.Accelerate LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1
SELECT T1.makeid , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data GROUP BY horsepower ORDER BY min(horsepower) DESC LIMIT 1) EXCEPT SELECT makeid , fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.cylinders <= 3
SELECT T1.id , T2.fullname FROM car_names AS T2 JOIN cars_data AS T1 ON T1.id = T2.makeid WHERE T1.cylinders < 4 INTERSECT SELECT id , fullname FROM car_makers WHERE id NOT IN (SELECT id FROM cars_data GROUP BY id ORDER BY min(horsepower) ASC LIMIT 1)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < 3500 EXCEPT SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T2.maker = 'Ford Motor Company'
cars_data c1.weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullName = 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers GROUP BY country )
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) < 2
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN ( SELECT id FROM model_list GROUP BY id HAVING count(*) <= 3 ) {}
models=['fiat'] for maker in model_list: if maker in models: make_ids = [maker] else: make_ids = [maker_id for maker_id in car_makers.id if maker_id in models] makeers = {make_id : country_name for make_id , country_name in zip(make_ids , countries.countrynames) if len(make_ids) > 3} print(list(makeers.items()))
SELECT id , fullname FROM car_makers WHERE country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3 ) UNION SELECT id , fullname FROM car_names WHERE makeid IN ( SELECT makeid FROM car_names GROUP BY makeid HAVING count(*) > 1 )
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T1.Airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = 'Jetblue Airways'
Airline "JetBlue Airways" shortened word is "Jet".
SELECT Abbreviation FROM airlines WHERE Airline = \"Jetblue Airways\"
SELECT T1.Airline , T2.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT T1.Airline , T2.AirportName FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airportcode;
SELECT sum(airlines.airline) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode;
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname LIKE '%Alton%'
SELECT airportname FROM airports WHERE airportname LIKE '%AKO%'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.Country = "United Kingdom" AND T1.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia' AND airline = 'AtoAir') AND sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia' AND airline = 'AtoAir') AND terminal = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'Toowoomba'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'UK' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
sourceairport = 'Aberdeen' AND destairport = 'Ashley'
source_airport = 'Aberdeen' dest_airport = 'Ashley' flights_between(source_airport , dest_airport)
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T3.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'United Airlines' AND T2.countryabbreviation = 'United Airlines' AND T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T3.country = 'United States' AND T2.airportname = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.airportname = 'AHD' AND T3.country = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'United Airlines' AND T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.country = 'United States' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline , T1.country , min(T2.count) FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairline GROUP BY T1.id ORDER BY min(T2.count) ASC LIMIT 1;
SELECT T2.airline , T1.state FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.state ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE airportname = 'AHD')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport = 'AHD'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.destairport = T2.sourceairport AND T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.destairport WHERE T2.sourceairport = T2.destairport AND T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'APG' AND T4.sourceairport = 'CVO') GROUP BY T1.airline HAVING count(*) >= 2
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = 'CVO') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = 'APG')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport NOT IN ( SELECT T3.airline FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.destairport WHERE T4.sourceairport = 'CVO' ) EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.srcairport NOT IN ( SELECT T3.airline FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.srcairport WHERE T4.destairport = 'APG' )
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING count(*) >= 10
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING count(*) >= 10;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING count(*) < 200;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = \"APG\"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = \"Aberdeen\"
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'Aberdeen' OR T1.sourceairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN ( SELECT destairport FROM flights WHERE sourceairport = destairport INTERSECT SELECT srcairport FROM flights WHERE destinationairport = srcairport )
SELECT count(*) FROM employee
SELECT count(*) FROM employee
sorted_employee = sorted(employee, key=lambda x: x.age)
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city;
SELECT count(*) , city FROM employee GROUP BY city;
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING count(*) >= 2
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , t1.city FROM shop AS t1 JOIN employee AS t2 ON t1.manager_name = t2.employee_id GROUP BY t1.city
SELECT count(*) , t1.city FROM employee AS t1 JOIN shop AS t2 ON t1.employee_id = t2.manager_name GROUP BY t1.city;
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT T1.name , T1.district FROM shop AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
min_number_of_product = (SELECT min(number_products) FROM shop); max_number_of_product = (SELECT max(number_products) FROM shop);
minimum_number = (SELECT min(Number_products) FROM shop), maximum_number = (SELECT max(Number_products) FROM shop)
SELECT T1.name , T1.city , T1.district FROM shop AS T1 JOIN (SELECT T2.shop_id , count(*) FROM shop AS T2 GROUP BY T2.shop_id ORDER BY count(*) DESC) AS T3 ON T1.shop_id = T3.shop_id
SELECT name , location , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.start_from DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN evaluation AS T3 ON T2.employee_id = T3.employee_id ORDER BY T3.year_awarded DESC LIMIT 1;
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM employee)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT count(*) , T2.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T2.name != 'Extra'
SELECT * FROM hiring
SELECT * FROM hiring
SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id WHERE T1.Number_products < 3000 INTERSECT SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.manager_name = T2.employee_id WHERE T1.Number_products > 10000
districts = (SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000)
SELECT count(DISTINCT location) FROM shop;
SELECT count(DISTINCT location) FROM shop;
SELECT count(*) FROM Documents AS T1;
SELECT count(*) FROM Documents AS T1
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , t1.template_id FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_description LIKE '%w%'
SELECT T1.document_name , T2.paragraph_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T2.template_id , T2.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_id , T2.template_id , T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT document_id) FROM documents;
SELECT count(DISTINCT document_name) FROM documents WHERE document_description != \"\";
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , t1.template_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id HAVING count(*) > 0
SELECT count(*) , template_id FROM Documents GROUP BY template_id;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.template_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id HAVING count(*) > 1
SELECT template_id FROM (SELECT template_id , document_id FROM Documents GROUP BY document_id HAVING count(*) >= 2)
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT template_id FROM Templates WHERE template_id NOT IN ( SELECT t1.template_id FROM Documents AS t1 JOIN Papers AS t2 ON t1.document_id = t2.document_id )
SELECT count(*) FROM Templates AS T1;
SELECT count(*) FROM Templates AS T1;
SELECT template_id , version_number , template_type_code FROM Templates
SELECT T1.template_id , T1.version_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"Layout\"
SELECT DISTINCT template_type_code FROM Templates
Templates.Template_type_code = \"PP\" OR Templates.Template_type_code = \"PPT\"
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "PP" OR template_type_description = "PPT")
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"CV\")
SELECT T1.template_type_code , T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Version_Number > 5;
template_type_code , template_layout_name FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5 {}
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code;
template_type_code , count(*) templates.template_type_code GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code ORDER BY version_number LIMIT 1;
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates WHERE template_details = \"Data base\"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_name = \"Data base\"
SELECT document_name FROM documents WHERE document_description LIKE "%BK%"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"
template_type_code , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code HAVING count(*) > 0
template_type_code , count(*) FROM Documents GROUP BY template_type_code;
SELECT t1.template_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates WHERE document_name IN (SELECT document_name FROM Documents))
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates WHERE document_name LIKE '%text%')
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_description != \"\" AND T3.document_description != \"null\" AND T3.document_name IN (SELECT document_name FROM Documents GROUP BY document_name HAVING count(*) > 1)
SELECT DISTINCT t1.template_details FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_description != \"\" AND t2.document_name IN (SELECT document_name FROM Documents GROUP BY document_name HAVING count(*) > 1)
template_type_code = \"Presentation\" FROM Ref_Template_Types WHERE template_type_code IN (SELECT template_type_code FROM Templates WHERE document_type_code = \"Document\") GROUP BY template_type_code HAVING count(*) >= 1
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
document_id IN (SELECT document_id FROM documents WHERE document_name = 'Summer Show') GROUP BY document_id HAVING count(*) >= 1分页显示：40分页显示：10分页显示：5分页显示：10分页显示：20分页显示：30分页显示：40分页显示：50分页显示：60分页显示：70分页显示：80分页显示：90分页显示：100分页显示：110分页显示：120分页显示：130分页显示：140分页显示：150分页显示：160分页显示：170分页显示：180分页显示：190分页显示：200分页显示：210分页显示：220分页显示：230分页显示：240分页显示：250分页显示：260分页显示：270分页显示：280分页显示：290分页显示：300分页显示：310分页显示：320分页显示：330分页显示：340分页显示：350分页显示：360分页显示：370分页显示：380分页显示：390分页显示：400分表：paragraphs(document_id) GROUP BY document_id HAVING count(*) >= 1分页显示：40分页显示：10分页显示：5分页显示：10分页显示：20分页显示：30分页显示：40分页显示：50分页显示：60分页显示：70分页显示：80分页显示：90分页显示：100分页显示：110分页显示：120分页显示：130分页显示：140分页显示：150分页显示：160分页显示：170分页显示：180分页显示：190分页显示：200分页显示：210分页显示：220分页显示：230分页显示：240分页显示：250分页显示：260分页显示：270分页显示：280分页显示：290分页显示：300分页显示：310分页显示：320分页显示：330分页显示：340分页显示：350分页显示：360分页显示：370分页显示：380分页显示：390分页显示：400分
document_id IN (SELECT document_id FROM documents WHERE document_name = 'Summer Show') GROUP BY document_id HAVING count(*) >= 1分
SELECT Other_details FROM paragraphs WHERE paragraph_text = "Korea"
SELECT T1.Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_Text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T3.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id JOIN templates AS T3 ON T2.document_id = T3.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id ASC
document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
document_id , document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id HAVING count(*) > 0
document_id | document_name | paragraph_count 1 | Document One | 20 2 | Document Two | 30 3 | Document Three | 40
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(DISTINCT paragraph_text) >= 2;
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 1 AND count(*) <= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Brazil" INTERSECT SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1;
sorted(teachertes.name)
sorted_name = sorted(teachertes.name , 0)
SELECT age , hometown FROM teacher
SELECT age , hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE age NOT IN (SELECT age FROM teacher WHERE Hometown = 'Little Lever Urban District')
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Hometown = T2.Hometown GROUP BY T1.Hometown;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Hometown = T2.Hometown GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Name = T2.Name AND T1.Age = T2.Age GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
Teacher_id , T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
teacher[Teacher_ID , Name , course_arrange]
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name
teacher(Teacher_ID, Name) JOIN course_arrange AS T1 ON teacher.teacher_id = T1.teacher_id ORDER BY T1.name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course_arrange AS T3 ON T1.course_id = T3.course_id WHERE T1.course_name = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 'Math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
Teacher_name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) > 0
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.teacher_id HAVING count(*) >= 2;
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name HAVING count(*) >= 2;
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30;
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 4;
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age DESC
SELECT Museum_ID , Name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1;
total_spent = (SELECT T2.total_spent FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY sum(T1.total_spent) DESC LIMIT 1) SELECT T2.id , T2.name , T2.level_of_membership FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT T1.museum_id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.num_ticket = (SELECT num_ticket FROM visit GROUP BY num_ticket ORDER BY count(*) DESC LIMIT 1)
SELECT avg(T2.total_spent) , max(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT T3.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011 INTERSECT SELECT T3.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
2014 <= open_year <= 2007 OR open_year >= 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM MATCHES
SELECT count(*) FROM MATCHES;
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM MATCHES WHERE winner_id IS NULL OR loser_id IS NULL
SELECT avg(loser_age) , avg(winner_age) FROM MATCHES WHERE loser_id IN (SELECT player_id FROM matches GROUP BY player_id HAVING avg(winner_age) > avg(loser_age)) UNION SELECT avg(winner_age) , avg(loser_age) FROM MATCHES WHERE looser_id IN (SELECT player_id FROM matches GROUP BY player_id HAVING avg(winner_age) > avg(loser_age))
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id HAVING count(*) = 1
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING avg(T1.ranking) > 0
SELECT max(T1.ranking_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_id DESC LIMIT 1;
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking ORDER BY sum(T1.rankings_points) DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT count(DISTINCT loser_name) FROM MATCHES;
SELECT T2.tourney_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.tourney_id HAVING count(*) > 10
SELECT T2.tourney_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.tourney_name HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
2013 | 478 2016 | 459
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 ORDER BY T1.birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
[ ["first_name", "last_name"] FROM players ORDER BY birth_date ASC ]
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM matches)
SELECT T1.winner_name , T2.wloser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1 OFFSET 0 UNION SELECT T2.wloser_name , T1.winner_name FROM players AS T2 JOIN matches AS T1 ON T2.player_id = T1.loser_id ORDER BY T2.match_num DESC LIMIT 1 OFFSET 0
SELECT avg(T1.ranking) , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name;
SELECT T1.first_name , T1.last_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking_points) != 0
sum(T1.ranking_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name ORDER BY sum(T1.ranking_points) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT T1.abbr FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.abbr ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) >= 60;
SELECT sum(T1.ranking_points) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_rank ORDER BY T2.ranking_rank_points DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT sum(T1.ranking_points) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_points;
SELECT YEAR , count(*) FROM MATCHES GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3;
best_of = 3 min(winner_age) FROM MATCHES ORDER BY winner_age ASC LIMIT 3
SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\" UNION SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
best_of = 1000000 max(ranking_points) AS max_rank_points SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = max(ranking_points) ORDER BY T3.ranking_points DESC LIMIT 1;
best_of = 1000 max(ranking_points) AS max_rank_points FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY max_rank_points DESC LIMIT 1; player_id , country_code , birth_date FROM players AS T1 JOIN best_of AS T2 ON T1.player_id = T2.player_id WHERE T1.player_id IN (SELECT player_id FROM rankings GROUP BY player_id ORDER BY ranking_points DESC LIMIT 1)
SELECT count(*) , hand FROM MATCHES GROUP BY hand
SELECT count(*) , hand FROM MATCHES GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
sorted(ship.name, ship.tonnage) ORDER BY ship.tonnage DESC
SELECT name , date , result FROM battle
max(min(killed)) by killed
SELECT avg(injured) FROM death;
SELECT T1.note , T2.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
displaced_vessels = ['Brig', 'Brigadier', 'Brigand'] unique_ids = set() for id in ship.id: if id in displaced_vessels: unique_ids.add(id) print(unique_ids)
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10;
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
baltic_battle1 = battle(name = 'Baltic Battle', bulgarian_commander = 'Kaloyan', latin_commander = 'Baldwin I') distinct name(baltic_battle1)
SELECT count(DISTINCT result) FROM battle;
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.tonnage != '225' )
name1 = 'Lettice' date1 = '2005-04-18' name2 = 'HMS Atalanta' date2 = '2006-03-27' battle1 = 'Battle between ship lost_in_battle : ' + name1 + ' and ship lost_in_battle : ' + name2 date1 = '2005-04-18' battle2 = 'Battle between ship lost_in_battle : ' + name1 + ' and ship lost_in_battle : ' + name2 date2 = '2006-03-27'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses;
SELECT count(*) FROM courses;
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = \"Port Chelsea\"
SELECT T1.degree_summary_name , T1.department_id FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name , T1.department_id FROM Degree_Programs AS T1 JOIN (SELECT department_id , count(*) FROM T1 GROUP BY department_id ORDER BY count(*) DESC LIMIT 1) AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree Programs;
SELECT count(*) FROM courses AS T1 JOIN degree_programs AS T2 ON T1.course_id = T2.department_id WHERE T2.department_name = 'Engineering'
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
reverse_sections = sorted(sections , key=lambda x: x.section_name , reverse=True)
reverse_sections = (SELECT section_name FROM sections ORDER BY section_name DESC)
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.semester_name , T1.student_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
courses_description: The Computer other_details: A description about this division.
SELECT description FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN ( SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = '2' ) GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.middle_name , T1.last_name , T1.student_id , T2.student_enrolment_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2nd Degree" GROUP BY T2.student_enrolment_id
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.middle_name , T1.last_name , T1.first_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors"
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) , T1.university_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM student_enrolment AS T1 JOIN semester AS T2 ON T1.semester_id = T2.semester_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id WHERE T2.student_enrolment_id != null;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id WHERE T2.student_enrolment_id IN (SELECT student_enrolment_id FROM student_enrolment_courses GROUP BY student_enrolment_id HAVING count(*) > 0)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
from addresses AS T1 join students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Data Analysis'
SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T2.student_id FROM student_enrolment AS T2 JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Elective'
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.permanent_address_id != T2.address_id;
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 != T1.permanent_address_id
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
average(date_first_registered)
SELECT avg(date_first_registered) FROM students;
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM students AS T1;
SELECT count(*) FROM students;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_last_registrated FROM students ORDER BY date_last_registrated DESC LIMIT 1;
SELECT count(*) , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , max(T2.student_id) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1;
student_enrolment_id in (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 'Master' INTERSECT SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelor')
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 'Masters' INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
reverse sorted students: SELECT * FROM students ORDER BY other_student_details DESC;
Reverse alphabetically by first name: SELECT * FROM students ORDER BY first_name DESC
SELECT 'H' FROM SECTION WHERE section_name = 'Home'
SELECT section_description FROM sections WHERE section_name LIKE '%h%'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haitie" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT cell_mobile_number FROM Students WHERE cell_mobile_number = "09700166582"
SELECT Title FROM Animation ORDER BY Title
sorted_anims = sorted(anims.keys())
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE Written_by = \"Joseph Kuhr\"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.channel = T2.channel WHERE T2.Written_by = \"Joseph Kuhr\"
SELECT T1.title , T2.directed_by FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T2.air_date
SELECT title , directed_by FROM cartoon ORDER BY produced_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT T2.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Country , count(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , content FROM TV_CHANNEL GROUP BY series_name , content;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel;
SELECT Content FROM TV_CHANNEL WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_CHANNEL WHERE Series_Name = "Sky Radio"
SELECT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) FROM TV_Channel WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "English"
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT LANGUAGE , count(*) FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
channel := t2.id JOIN cartoon AS t1 ON t1.channel = channel JOIN tv_series AS t2 ON t2.id = t1.channel WHERE t1.title = 'The Rise of the Blue Beetle!'
channel := t2.id FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.title = 'The Rise of the Blue Beetle'
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.id = T3.channel WHERE T3.series_name = "Sky Radio"
TV_channel.id IN (SELECT id FROM TV_channel WHERE series_name = "Sky Radio") AND channel IN (SELECT id FROM TV_series WHERE air_date = (SELECT air_date FROM cartoon ORDER BY air_date LIMIT 1))
SELECT Episode FROM TV_series ORDER BY Rating
SELECT episode FROM TV_series ORDER BY Rating ASC
SELECT T2.episode , T1.Rating FROM TV_series AS T1 JOIN (SELECT id FROM TV_series ORDER BY Rating DESC LIMIT 3) AS T2 ON T1.id = T2.id
SELECT id , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT sum(T2.Rating) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_channel AS T2 JOIN TV_series AS T1 ON T2.id = T1.channel WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.Episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT Package_Option , T2.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.HD_TV = 'Yes'
SELECT Package_Option , T2.series_name FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Content = "HD TV"
tv_channel_id = (SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey')
SELECT T2.State FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel JOIN TV_series AS T3 ON T3.id = T2.channel WHERE T3.Content = 'Animation' AND T2.Written_by = 'Todd Casey'
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.written_by = 'Todd Casey' )
SELECT id FROM cartoon WHERE written_by != 'Todd Casey'
SELECT T2.series_name , T2.Country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" AND T1.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE LANGUAGE <> "English"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> "English"
SELECT id FROM TV_channel WHERE country IN (SELECT country FROM TV_channel GROUP BY country HAVING count(*) > 2)
SELECT id FROM TV_channel GROUP BY id HAVING count(*) >= 3;
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones' )
SELECT count(*) FROM people WHERE Nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car\"
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = 'Car'
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = 'Car Gamer' ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 AND T2.Name = 'Car'
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car Gamer"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
people.name ORDER BY Poker_Player_ID ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY count(*) ASC;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T2.Name = 'Car'
SELECT avg(T1.Revenue) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T2.Name = 'Car'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > (SELECT max(Earnings) FROM poker_player) ORDER BY T1.Earnings DESC;
people.Name.sortby(Earnings).reverse()
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Nationality FROM people AS T1 JOIN people AS T2 ON T1.Nationality = T2.Nationality WHERE T1.Name = T2.Name GROUP BY T1.Nationality HAVING COUNT(*) >= 2;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people EXCEPT SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = "Car"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = "CA"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY T1.vote_id LIMIT 1;
SELECT count(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT count(*) FROM VOTES GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T1.state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 1 AND T2.phone_number = '314-906-8756' INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 2 AND T2.phone_number = '314-906-8756'
CONTESTANTS(contestant_name) WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.Region = 'Caribbean'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Caribbean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT Region FROM country WHERE Capital = 'Kabul'
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Population = 300000 AND T2.CountryCode = 'Aruba' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Aruba" GROUP BY T1.Language ORDER BY T1.Percentage DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT Region , Population FROM country WHERE CountryCode = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Central Africa'
SELECT name FROM country WHERE lifeexpectancy IN (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , gnp FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia" ORDER BY T1.gnup DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'African' AND governmentform = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
Asia + Europe = 1000000 + 1000000 = 2000000
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'United States'
SELECT avg(GNP) , count(*) FROM country WHERE code IN ( SELECT code FROM country WHERE name = "United States")
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code {}
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'World'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = \"Afghanistan\") AND isofficial = 1
SELECT count(*) FROM countrylanguage WHERE countrycode IN ( SELECT code FROM country WHERE name = "Afghanistan") AND isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY sum(T2.Percentage) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT count(DISTINCT T1.id) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(DISTINCT T1.id) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('Dutch', 'English')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('English', 'Dutch')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = \"Asia\" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode HAVING count(*) = 1
SELECT Language FROM countrylanguage WHERE Percentage = 1 AND IsOfficial = 1 GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
{ "sql": "SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.countrycode IN ( SELECT code FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1 )"
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode JOIN country AS T3 ON T2.CountryCode = T3.Code WHERE T3.Name = "Beatrix" AND T1.IsOfficial = 1
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930;
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Population < 1930 {}
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'African'
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population DESC LIMIT 1) AND code = 'ASIA'
SELECT name FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT code FROM countrylanguage WHERE language != 'English'
countrycode(Code) JOIN countrylanguage ON countrycode = countrylanguage.countrycode WHERE language != 'English'
countrycode(Codespan) Not In (SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != 'English')
SELECT name FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English') INTERSECT SELECT name FROM country WHERE governmentform != 'Republic'
SELECT name FROM country WHERE code2 IN (SELECT code FROM countrylanguage WHERE language != 'English') EXCEPT SELECT name FROM country WHERE governmentform = 'Republic'
country_code1 = t1.code country_code2 = t2.code country_language1 = t3.language country_language2 = t4.language t1.isofficial = t3.isofficial AND t4.isofficial t2.name = t3.name t4.name = t3.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode = t4.code t1.name = t3.name t2.name = t4.name t1.countrycode = t2.code t2.countrycode
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != 'English' AND T2.IsOfficial = 'No'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Language = "Chinese" GROUP BY T1.Name
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' INTERSECT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'Chinese'
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , region FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY T1.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY T1.population DESC LIMIT 1;
countrycode , count(*) , language FROM countrylanguage GROUP BY countrycode HAVING count(*) >= 3 {}
SELECT T1.Name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING count(*) > 2
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT T1.GovernmentForm , sum(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.GovernmentForm HAVING avg(T2.population) > 72 {}
SELECT sum(GovernmentForm) , governmentform FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode GROUP BY t1.governmentform HAVING avg(t1.lifeexpectancy) > 72;
SELECT avg(lifeexpectancy) , count(*) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 5;
SELECT name , region FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(T1.population) , avg(T1.surfacearea) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'North America' AND T1.population > 3000 GROUP BY T2.code
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language , T1.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1000000000
SELECT T1.name , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Spanish' AND T1.isofficial = 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING sum(T2.percentage) > (SELECT avg(sum(percentage)) FROM countrylanguage WHERE language = 'Spanish')
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
orchestre_conducteur = (SELECT * FROM orchestra ORDER BY YEAR_of_founded DESC)
orchestre_conducteur_orchestre_ORFANORCHE.sort_by(YEAR_OF_FOUNDER)descending{}
SELECT avg(Attendance) FROM show AS T1;
SELECT avg(Attendance) FROM show AS T1
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> "Live final"
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT count(DISTINCT Name) FROM conductor AS T1;
conductor.sort_by_date()descending{}
conductor.sort_by('Name', 'desc')
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work DESC LIMIT 1;
conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id ORchestra AS T3 JOIN performance AS T4 ON T3.orchestra_id = T4.performance_id WHERE T3.result = \"Success\" AND T4.result = \"Success\"{}
conductor AS T1 JOIN performance AS T2 ON conductor.conductor_id = T2.conductor_id JOIN orchestra AS T3 ON T2.orchestra_id = T3.orchestra_id
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
from conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_found > 2008 GROUP BY T1.name HAVING count(*) >= 3
conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_foundation > 2008{}
conductor , count(*) orchestra , 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name;
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC;
orchestras.sort(Major_Record_Format)
SELECT T2.Record_Company FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY COUNT(*) DESC LIMIT 1;
SELECT name FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT * FROM performance WHERE Performance_ID NOT IN ( SELECT Performance_ID FROM performance )
show(Record_Company) AS T1 FROM performance WHERE YEAR_OF_FOUNDER NOT BETWEEN 2003 AND 2014 INTERSECT SELECT Record_Company FROM performance WHERE YEAR_OF_FOUNDER BETWEEN 2003 AND 2014;
orchestra_record_company = (SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNISHED < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNISHED > 2003)
orchestra.bandrecord.type = \"CD\" OR orchestra.bandrecord.type = \"DVD\" performance.count(*)
orchestra.record_company LIKE '%CD%' OR orchestra.record_company LIKE '%DVD%'{}
SELECT T1.Year_of_Found FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Found HAVING COUNT(*) > 1;
SELECT T1.Year_of_Found FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Found HAVING COUNT(*) > 1;
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 1) AND name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
ID: 1
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) FROM highschooler WHERE grade IN (9, 10)
SELECT count(*) , grade FROM highschooler GROUP BY grade;
Highschooler.id , count(*) , grade FROM Highschooler GROUP BY grade;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.student_id , T2.friend_id FROM Friend AS T1 JOIN HIGHschooler AS T2 ON T1.student_id = T2.id
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
friend_count = (SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id)
Highschooler ID, count(*) friend_id, count(*) FROM Friend GROUP BY highschooler_id;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
Friend(student_id, friend_id) SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1 AND T1.name != 'Kyle'
Highschooler.query("SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'")
Highschooler.count(DISTINCT friend_id) WHERE name = 'Kyle'
SELECT student_id FROM highschooler WHERE id NOT IN (SELECT friend_id FROM friend)
SELECT student_id FROM highschooler WHERE id NOT IN (SELECT friend_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id)
SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM likes) INTERSECT SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM likes)
Friend.student_id = likes.student_id AND likes.liked_id IN (SELECT student_id FROM likes)
Friend(student_id) IN (SELECT student_id FROM likes GROUP BY student_id HAVING count(*) >= 1) UNION SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T1.id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) < 1)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.liked_id = T3.friend_id WHERE T3.student_id IN ( SELECT T4.student_id FROM likes AS T4 JOIN friend AS T5 ON T4.liked_id = T5.friend_id ) AND T3.student_id IN ( SELECT T4.student_id FROM likes AS T4 JOIN friend AS T5 ON T4.liked_id = T5.friend_id )
SELECT count(*) , student_id FROM LIKE GROUP BY student_id HAVING count(*) > 0
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING avg(T1.grade) > 5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING count(*) >= 2
highschooler.name friend.friend_id count(*) >= 2 AND highschooler.grade > 5
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
Highschooler.query("SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = \"Kyle\"")
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN ( SELECT student_id FROM Friend GROUP BY student_id HAVING count(*) > 0 )
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id)
states = set(t1.state for t1 in professionals_professionals if t1.role_code == 'vet' and t1.first_name != '' and t1.last_name != '') states = set(t1.state for t1 in professionals_professionals if t1.role_code == 'dog' and t1.first_name != '' and t1.last_name != '') states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states & states states
SELECT state FROM owners WHERE home_phone != \"null\" EXCEPT SELECT state FROM owners WHERE home_phone = \"null\" INTERSECT SELECT state FROM professionals WHERE role_code = \"veterinarian\" UNION SELECT state FROM professionals WHERE role_code = \"dog walker\" UNION SELECT state FROM professionals WHERE role_code = \"dog walker\"
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2;
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T2.name FROM charges AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN treatments AS T3 ON T1.treatment_id = T3.treatment_id WHERE T3.cost_of_treatment > 1000 GROUP BY T2.name HAVING count(*) > 1000
owners.first_name EXCEPT SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name LIKE '%dog%'专业人员(ROLE_CODE) EXCEPT SELECT T3.first_name FROM professionals AS T3 JOIN dogs AS T4 ON T3.professional_id = T4.professional_id WHERE T4.name LIKE '%dog%'
first_names = (SELECT first_name FROM owners WHERE owner_id IN ( SELECT T1.first_name FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'dog' ) EXCEPT SELECT first_name FROM owners WHERE owner_id IN ( SELECT T1.first_name FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'dog' ))
SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog' EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog' EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1
SELECT t3.treatment_type_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_type = t2.treatment_type_code JOIN TREATMENTS AS t3 ON t2.treatment_type_code = t3.treatment_type_code GROUP BY t3.treatment_type_description ORDER BY sum(t1.charge_amount) LIMIT 1;
SELECT t1.treatment_type_description , t1.treatment_type_code FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.charge_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.date_of_treatment , T2.first_name FROM charges AS T3 JOIN treatments AS T1 ON T3.treatment_id = T1.treatment_id JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.last_name = 'VETERINARIAN'
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.charge_type , T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.charge_type , T2.cost_of_treatment FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
{ "sql": "SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T3.size_code = T2.size_code JOIN owners AS T4 ON T4.owner_id = T1.owner_id"
SELECT T1.first_name , T1.last_name , T4.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN breeds AS T4 ON T2.breed_code = T4.breed_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T4.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Rarest' ORDER BY T1.date_of_birth ASC LIMIT 1; SELECT T3.date_of_treatment , T4.date_of_birth FROM treatments AS T3 JOIN dogs AS T1 ON T3.dog_id = T1.dog_id JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Rarest' ORDER BY T3.date_of_treatment ASC LIMIT 1;
SELECT T1.name , T3.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code JOIN T3 ON T1.dog_id = T3.dog_id ORDER BY T2.weight ASC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
owners = [owner1, owner2] dogs = [dog1, dog2] for owner in owners: print(f"{owner.first_name} {owner.last_name}") for dog in dogs: print(f"{dog.name}")
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health' AND T1.breed_code IN ( SELECT T3.breed_code FROM breeds AS T3 JOIN dogs AS T4 ON T3.breed_code = T4.breed_code WHERE T4.name = 'Puppy')
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age LIMIT 1;
SELECT email_address FROM owners WHERE state = "Hawaii" UNION SELECT email_address FROM owners WHERE state = "Wisconsin"
SELECT email_address FROM owners WHERE state = 'Hawaii' UNION SELECT email_address FROM owners WHERE state = 'Wisconsin'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
Treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'Puppy' GROUP BY T3.professional_id HAVING count(*) > 0
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'Puppy'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
owners.owners.first_name, owners.owners.last_name, owners.owners.street , owners.owners.city , owners.owners.state
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges WHERE charge_type = 'Health' ORDER BY charge_date DESC LIMIT 1;
SELECT T1.cost_of_treatment FROM treatments AS T1 JOIN charges AS T2 ON T1.treatment_id = T2.charge_id ORDER BY T2.date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'Puppy')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IS NULL)
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy' )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT age FROM dogs WHERE breed_code = "Puppy" ORDER BY date_of_birth DESC LIMIT 1
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , cell_number , home_phone FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM professionals
breeds_size_combinations = (select T1.breed_name , T2.size_description from breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code)
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_codedogs.size_code WHERE T1.breed_name != \"Puppy\" AND T2.size_description != \"Puppy\"
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
first_name : 'John', description : 'He has performed various treatments related to animal welfare.'
SELECT count(*) FROM singer
SELECT count(*) FROM singer AS T1
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year BETWEEN 1948 AND 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT COUNT(*) , citizenship FROM singer GROUP BY citizenship HAVING count(*) > 0
SELECT T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Country , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
net_worth_millions = 3000000 groupby(name) > 1 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 3000000 {} net_worth_millions < 3000000 {} net_worth_millions > 3000000 {} net_worth_millions >= 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.Sales) > 0
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
before_1945 = singer.birth_year < 1945 after_1955 = singer.birth_year > 1955 common_citizen = before_1945 & after_1955 print(common_citizen)
SELECT count(*) FROM Other_Available_Features AS T1;
SELECT T1.feature_type_code FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = 'House' UNION SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = 'Apartment')
