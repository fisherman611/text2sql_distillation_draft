SELECT count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id;
SELECT count(*) FROM singer_in_concert;
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20;
country , count(*) FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer AS T1 JOIN musician AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer) ORDER BY T1.song_name ASC;
SELECT name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
2014.year >= 2014 AND 2014.year <= 2015 shows.count() = 3
2014 3 2015 3
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.concert_name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30 {}
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
select name from stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
concert_id , theme , count(*) SELECT T1.concert_id , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
concert(concert_id, theme, count(*) )联接 singer_in_concert 爆炸歌喉 , 句子主题 , count(*) 结果数
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id;
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id;
concert_name = "2014" concert_id = singer_in_concert.concert_id song_name = singer_in_concert.song_name conductor_name = singer_in_concert.conducteur_name result = singer_in_concert.result name_list = [T1.name for T1 in singer_in_concert.conducteur_name if T1.year == 2014]
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
concert_id = (SELECT T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014 INTERSECT SELECT T1.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2015)
concert_id = (SELECT T1.concert_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014 INTERSECT SELECT T1.concert_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2015)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT min(weight) FROM Pets WHERE pet_type = 'pet' AND age = 1
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20;
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20;
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(DISTINCT pettype) FROM pets WHERE pettype = 'domestic'
SELECT count(DISTINCT pet_type) FROM has_pet;
PetType = 'kitten' OR PetType = 'puppy' FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID
Pets(PetID, pet_type) { 'Kitten', 'Puppy' } Has_Pet(StuID, PetID) { StuID in (select StuID from Has_Pet where pet_type = 'Kitten' OR pet_type = 'Puppy') }
PetType = 'kitten' INTERSECT PetType = 'puppy' StuID IN (SELECT StuID FROM Has_pet)
PetType = 'pet' AND pet_type = 'kitten' INTERSECT PetType = 'pet' AND pet_type = 'puppy'
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT T1.stuid FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pet_type = 'Kitten' )
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Pets AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_type = \"kitten\"
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = 'Kitten')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten'
SELECT pet_type , pet_weight FROM Pets ORDER BY pet_age LIMIT 1 OFFSET 0
SELECT t1.pet_type , t1.weight FROM Pets AS t1 JOIN Has_pet AS t2 ON t1.petid = t2.petid ORDER BY t2.pet_age LIMIT 1;
SELECT petid , weight FROM pets WHERE petage > 1
Pets[PetID] > 1 weight Pets.weightpets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets[PetID] {}pets
SELECT avg(t1.age) , max(t1.age) , t1.species FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid GROUP BY t1.species
SELECT avg(weight) , max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID != \"null\"
StuID , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname , age , fname ,
SELECT T1.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T1.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID;
SELECT count(*) , T1.stuid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1;
StuID from Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = 'Kitten' AND T3.pet_age = 3; Fname , Lname FROM Student AS T2 JOIN Has_pet AS T1 ON T2.StuID = T1.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = 'Kitten' AND T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Kitten' AND T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet);
SELECT count(*) FROM continents;
SELECT count(*) FROM continents
cont_id , continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contId = T2.continent GROUP BY T1.contId HAVING count(*) > 0
SELECT T1.contid , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid
SELECT count(*) FROM countries AS T1 WHERE T1.continent IN (SELECT contid FROM continents)
SELECT count(*) FROM countries AS T1;
SELECT T2.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Horsepower = T2.Horsepower ORDER BY T1.Horsepower LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.Maker ORDER BY T1.Horsepower ASC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.weight < (SELECT avg(weight) FROM car_names)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.year = 1970;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.year > 1980;
cars_data.year > 1980.model distinct model_list.maker
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
conts , count(*) FROM car_makers GROUP BY conts HAVING count(*) > 0
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
model_list造车型号,maker,model造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker, fullName造车型号,maker,
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'Amc' AND T2.Model = 'Hornet Sportabout'
SELECT avg(T1.Accrate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = "France")
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2Maker WHERE T1.country IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 1)
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 3 AND T1.continent = 'Europe'
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3;
SELECT max(T2.Horsepower) , T1.maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders = 3 GROUP BY T1.maker
SELECT max(T2.Horsepower) , T1.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker WHERE T1.cylinders = 3 GROUP BY T1.maker HAVING max(T2.Horsepower) != 0
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker = T2.make GROUP BY T1.maker ORDER BY avg(T2.mpg) DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid ORDER BY T1.mpg DESC LIMIT 1;
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.year < 1980 {}
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year < 1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Volvo'
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T1.model = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
model_list.model WHERE maker IN (SELECT id FROM car_names GROUP BY id ORDER BY count(*) DESC LIMIT 1)
SELECT ModelId FROM model_list GROUP BY ModelId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.fullname = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T2.Maker FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T2.id = T3.make WHERE T1.FullName = 'General Motors' OR T3.Weight > 3500
model_list Maker = car_makers.id intersect (SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid WHERE T2.weight > 3500)
SELECT YEAR FROM cars_data WHERE WEIGHT >= 3000 AND WEIGHT <= 4000
```sql SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.weight > 3000 INTERSECT SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.weight < 4000; ```
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT min(T1.Cylinders) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Volvo' AND T1.Accelerate = 0
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = 'Volvo' ORDER BY T1.accelerate LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) >= 3;
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1;
SELECT T2.makeid , T2.fullname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders < 4 UNION SELECT T2.makeid , T2.fullname FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.horsepower > (SELECT min(horsepower) FROM cars_data GROUP BY horsepower HAVING count(*) <= 3)
SELECT T1.id , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.cylinders > 4 UNION SELECT id , fullname FROM car_makers WHERE id NOT IN (SELECT id FROM cars_data GROUP BY id ORDER BY min(horsepower) DESC LIMIT 1)
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = 8 AND T1.year < 1980
max(mpg) FROM cars_data WHERE cylinders = 8 UNION SELECT max(mpg) FROM cars_data WHERE YEAR < 1980;
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.maker = T2.make WHERE T2.weight < 3500 EXCEPT SELECT model FROM model_list AS T1 JOIN car_names AS T2 ON T1.maker = T2.make WHERE T2.make = 'Ford Motor Company'
cars_data c1.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'Ford'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers GROUP BY country)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) <= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN (SELECT id FROM model_list GROUP BY id HAVING count(*) > 3) {}
models = ['fiat', 'volvo', 'saab', 'bmw', 'toyota'] for maker in car_makers.maker: if len(car_names.makeId) > 3 or maker in models: print(maker.countryname, maker.fullName)
SELECT id , full_name FROM car_makers WHERE count(*) > 3 UNION SELECT id , full_name FROM car_names GROUP BY id HAVING count(*) >= 1
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN airports AS T2 ON T1.DebutAirport = T2.AirportCode WHERE T1.Airline = 'Jetblue Airways'
Airline "JetBlue Airways" shortened word is "Jet".
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT T2.Airline , T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = "USA"
SELECT T1.Airline , T2.AirportName FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city LIKE '%Anthony%'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.uid = T2.airportcode;
SELECT sum(T2.length) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.country;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode;
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1
SELECT Airline FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname LIKE '%Alton%'
SELECT airportname FROM airports WHERE airportname LIKE '%AKO%'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE country = 'United Kingdom' AND city = 'Aberdeen'
SELECT airportname FROM airports WHERE country = 'United Kingdom' AND city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'A' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode AND T1.flightrate = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destinationairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
source_airport = 'Aberdeen' dest_airport = 'Ashley' flights_between(source_airport , dest_airport)
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.sourceairline = T3.airline WHERE T2.country = 'United Airlines' AND T2.countryabbreviation = 'United' AND T2.airportname = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.Airline = 'United' AND T2.countryabbreviation = 'USA' AND T1.sourceairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrv WHERE T2.country = 'United Airlines' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'United Airlines' AND T1.destairport = T2.airportcode
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.country = 'United' AND T2.countryabbrev = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT flightno FROM flights GROUP BY flightno ORDER BY count(*) ASC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline , T1.country , T2.city FROM airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airportcode JOIN flights AS T3 ON T2.airportcode = T3.sourceairport GROUP BY T1.airline ORDER BY count(*) LIMIT 1;
SELECT T1.airline , T2.state FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE airportname = 'AHD')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'APG' AND T2.sourceairport = 'CVO' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'CVO' AND T2.sourceairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'APG' INTERSECT SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairline WHERE T2.destairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE country = 'CVO') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.srcairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airline HAVING count(*) >= 10;
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airline HAVING count(*) >= 10;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING count(*) < 200;
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200;
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = \"APG\"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = \"Aberdeen\"
SELECT FlightNo FROM flights WHERE sourceairport IN ( SELECT airportcode FROM airports WHERE city = 'Aberdeen' )
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = 'United Kingdom' AND T2.destairport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = 'Aberdeen' OR T2.country = 'USA' AND T1.sourceairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights INTERSECT SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
sorted_employee = sorted(employee , 'Age')
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city;
SELECT count(*) , city FROM employee GROUP BY city;
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING count(*) >= 2;
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , t1.city FROM shop AS t1 JOIN employee AS t2 ON t1.manager_name = t2.employee_id GROUP BY t1.city HAVING count(*) > 0
SELECT count(*) , T1.city FROM employee AS T1 JOIN shop AS T2 ON T1.employee_id = T2.manager_name GROUP BY T1.city HAVING count(*) > 0
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT T1.name , T1.district FROM shop AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
min(max(Number_products))
SELECT min(number_products) , max(number_products) FROM shop AS T1
SELECT T1.name , T1.city , T1.district FROM shop AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC
SELECT name , location , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.start_from DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.start_from = 'Biggest' ORDER BY T2.is_full_time DESC LIMIT 1;
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM employee)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT count(*) , T2.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T2.name = 'Extra Prize'
SELECT * FROM hiring
SELECT * FROM hiring
SELECT T1.District FROM shop AS T1 JOIN shop AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 AND T2.Number_products > 10000;
districts = (select district from shop WHERE number_products < 3000 union select district from shop WHERE number_products > 10000)
SELECT count(DISTINCT location) FROM shop;
SELECT count(DISTINCT location) FROM shop;
SELECT count(*) FROM Documents;
SELECT count(*) FROM Documents AS T1
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , t1.document_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_description LIKE '%w%'
SELECT T1.document_name , T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.document_description LIKE '%w%'
SELECT T1.document_id , T2.template_id , T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_id , T2.template_id , T2.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM documents
SELECT count(DISTINCT document_name) FROM documents WHERE document_description != 'text file'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , t1.template_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_id;
SELECT count(*) , template_id FROM Documents GROUP BY template_id;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.template_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) >= 2;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id)
SELECT template_id FROM templates WHERE template_id NOT IN (SELECT t1.template_id FROM Documents AS t1 JOIN Papers AS t2 ON t1.document_id = t2.document_id)
SELECT count(*) FROM Templates
SELECT count(*) FROM Ref_Template_Types;
SELECT template_id , version_number , template_type_code FROM Templates
template_id , edition_number , template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id , T1.edition_number , T1.template_type_code ;
SELECT DISTINCT template_type_code FROM Ref_Template_Types;
SELECT DISTINCT template_type_code FROM Templates
SELECT template_id FROM Templates WHERE template_type_code IN ("PP", "PPT")
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_template_types WHERE template_type_description = \"PP\" OR template_type_description = \"PPT\")
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_template_types WHERE template_type_description = \"CV\")
SELECT T1.template_type_code , T1.layout_type FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.edition_number > 5;
SELECT T1.template_type_code , T1.layout_type_name FROM Ref_Template_Types AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.edition_number > 5
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code;
template_type_code , count(*) FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code ORDER BY version_number ASC LIMIT 1
SELECT min(T1.version_number) , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code ORDER BY T1.version_number ASC LIMIT 1
SELECT template_type_code FROM Templates WHERE template_details = "Data base"
SELECT T1.template_type_code FROM Ref_templates AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = \"Data base\"
SELECT document_name FROM documents WHERE document_id IN ( SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%BK%")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
template_type_code , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_type_code;
template_type_code , count(*) FROM Documents GROUP BY template_type_code;
SELECT t1.template_type_code FROM Ref_Template_Types AS t1 JOIN Documents AS t2 ON t1.Template_Type_Code = t2.Template_ID GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN ( SELECT template_type_code FROM Templates UNION SELECT document_id FROM paragraphs )
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details = "Book"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id GROUP BY T1.template_type_description HAVING count(*) > 0
SELECT DISTINCT T1.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.document_description != \"\" AND T2.document_name IN (SELECT document_name FROM documents GROUP BY document_name HAVING count(*) > 1)
SELECT template_id FROM Documents WHERE document_description LIKE "%Presentation%"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
document_id IN (SELECT document_id FROM documents WHERE document_name = \"Summer Show\") GROUP BY document_id HAVING count(*) = 1
document_id IN (SELECT document_id FROM documents WHERE document_name = 'Summer Show') GROUP BY document_id HAVING count(*) = 1
SELECT T1.Other_details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Korea"
SELECT T1.Other_details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T3.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id JOIN Documents AS T3 ON T2.document_id = T3.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id ASC
document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
document_id | document_name | count_paragraphs 1 | Paper1.txt | 28463 2 | Paper2.txt | 28463 3 | Paper3.txt | 28463
document_id | document_name | paragraph_count 1 | Document One | 4 2 | Document Two | 3 3 | Document Three | 5
SELECT document_id FROM Documents WHERE document_id IN ( SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2 )
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Brazil" INTERSECT SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1;
sorted(teach.name)
sorted_teacher_name = sorted(teacher.name , 1)
SELECT Age , Hometown FROM teacher AS T1
SELECT * FROM teacher
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE age NOT IN ( SELECT age FROM teacher WHERE Hometown = 'Little Lever Urban District' )
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Name = T2.Name GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
Teacher_id , T1.name , T2.course , T3.grade ; T1 , T2 , T3 ;
teacher_name = (SELECT T1.name , T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id)
Teacher T1.Name , course_arrange T2.Course , T1.Name ASC
Teacher(Teacher_ID, Name) JOIN course_arrange AS T1 ON T1.teacher_id = Teacher(id) ORDER BY T1.name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 'Math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
Teacher_id , count(*) FROM course_arrange GROUP BY Teacher_id;
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2;
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30;
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 4;
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1;
total_spent = (SELECT T1.total_spent FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY sum(T1.total_spent) DESC LIMIT 1) ID = (SELECT id FROM visit WHERE total_spent = (SELECT max(total_spent) FROM visit)) NAME = (SELECT T2.name FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.id = ID) LEVEL_OF_MEMBERSHIP = (SELECT T2.level_of_membership FROM visitor AS T2 JOIN visit AS T1 ON T1.visitor_id = T2.id WHERE T1.id = ID)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(total_spent) , max(total_spent) FROM visit WHERE visitor_id IN ( SELECT visitor_id FROM visit GROUP BY visitor_id ORDER BY count(*) DESC LIMIT 1 )
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
open_year > 2013 | open_year < 2008 open_year >= 2014 open_year <= 2007 open_year >= 2008 open_year <= 2013 open_year >= 2015 open_year <= 2016 open_year >= 2017 open_year <= 2018 open_year >= 2019 open_year <= 2020 open_year >= 2021 open_year <= 2022 open_year >= 2023 open_year <= 2024 open_year >= 2025 open_year <= 2026 open_year >= 2027 open_year <= 2028 open_year >= 2029 open_year <= 2030 open_year >= 2031 open_year <= 2032 open_year >= 2033 open_year <= 2034 open_year >= 2035 open_year <= 2036 open_year >= 2037 open_year <= 2038 open_year >= 2039 open_year <= 2040 open_year >= 2041 open_year <= 2042 open_year >= 2043 open_year <= 2044 open_year >= 2045 open_year <= 2046 open_year >= 2047 open_year <= 2048 open_year >= 2049 open_year <= 2050 open_year >= 2051 open_year <= 2052 open_year >= 2053 open_year <= 2054 open_year >= 2055 open_year <= 2056 open_year >= 2057 open_year <= 2058 open_year >= 2059 open_year <= 2060 open_year >= 2061 open_year <= 2062 open_year >= 2063 open_year <= 2064 open_year >= 2065 open_year <= 2066 open_year >= 2067 open_year <= 2068 open_year >= 2069 open_year <= 2070 open_year >= 2071 open_year <= 2072 open_year >= 2073 open_year <= 2074 open_year >= 2075 open_year <= 2076 open_year >= 2077 open_year <= 2078 open_year >= 2079 open_year <= 2080 open_year >= 2081 open_year <= 2082 open_year >= 2083 open_year <= 2084 open_year >= 2085 open_year <= 2086 open_year >= 2087 open_year <= 2088 open_year >= 2089 open_year <= 2090 open_year >= 2091 open_year <= 2092 open_year >= 2093 open_year <= 2094 open_year >= 2095 open_year <= 2096 open_year >= 2097 open_year <= 2098 open_year >= 2099 open_year <= 2100 open_year >= 2101 open_year <= 2102 open_year >=
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;
SELECT count(*) FROM MATCHES;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(winner_age) , avg(loser_age) FROM MATCHES WHERE winner_id != loser_id
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id;
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING count(*) = 1
SELECT max(T1.ranking_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_id DESC LIMIT 1;
SELECT ranking FROM rankings WHERE ranking_points = (SELECT min(ranking_points) FROM rankings)
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM MATCHES;
SELECT count(DISTINCT loser_name) FROM MATCHES;
SELECT tourney_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.tourney_id HAVING count(*) > 10
SELECT T2.tourney_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 | 2016 | 48
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
[ ["first_name", "last_name"], [players.birth_date] ]
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = "L" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id WHERE T1.minutes = (SELECT max(minutes) FROM matches)
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1 UNION SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.match_num DESC LIMIT 1
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0
SELECT T1.first_name , T1.last_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking_points) != 0 {}
total_ranking = sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.first_name != \"\" AND T2.last_name != \"\" {}
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT T1.abbr FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.abbr ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date ORDER BY ranking_date ASC;
SELECT sum(T1.ranking_points) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_points ORDER BY T2.ranking_points DESC LIMIT 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age ASC LIMIT 3;
best_of = 3 loser_age = min(winner_age) FROM MATCHES ORDER BY loser_age ASC LIMIT 3;
player_id = (SELECT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\") GROUP BY player_id HAVING count(*) >= 2;
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.winner_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings)
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.ranking_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings)
SELECT count(*) , hand FROM matches GROUP BY hand
SELECT count(*) , hand FROM MATCHES GROUP BY hand
SELECT count(*) FROM ship WHERE ship_type = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
max(killed) , min(injured) FROM death AS T1
SELECT avg(injured) FROM death
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.ship_type = 'Brig' AND T2.result = 'Lost'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10;
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
british_commander = 'Kaloyan' latin_commander = 'Baldwin I' distinct(name) between british_commander AND latin_commander
SELECT count(DISTINCT result) FROM battle;
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.tonnage = '225' )
name1 = 'Lettice' date1 = '20XX/XX/XX' name2 = 'HMS Atalanta' date2 = '20XX/XX/XX' battle1 = 'Battle of Lettice' battle2 = 'Battle of HMS Atalanta' ship1 = 'Lettice' ship2 = 'HMS Atalanta' loss_in_battle1 = 'Lettice' loss_in_battle2 = 'HMS Atalanta' death1 = 'Lettice' death2 = 'HMS Atalanta' battles1 = [battle1, loss_in_battle1] battles2 = [battle2, loss_in_battle2] ships1 = [ship1, ship2] battles1.extend([battle1, battles2]) battles2.extend([battle1, battles2]) for battle in battles1: if battle.name == 'Battle of Lettice': date1 = battle.date break for battle in battles2: if battle.name == 'Battle of HMS Atalanta': date2 = battle.date break if date1 != '20XX/XX/XX' or date2 != '20XX/XX/XX': print('Error: Battle dates do not match the given names')
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses;
SELECT count(*) FROM courses;
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
addresses(address_id, city, zip_postcode) WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = \"Port Chelsea\"
SELECT T3.degree_summary_name , T3.department_id FROM Degree_Programs AS T3 JOIN Departments AS T4 ON T3.department_id = T4.department_id GROUP BY T3.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name , T2.degree_program_id FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id GROUP BY T2.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree Programs;
SELECT count(*) FROM (SELECT T1.department_id FROM Degree Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering' GROUP BY T1.department_id)
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
reversed_sections = sorted(list(set([section_name] for section_name in sections)))[::-1]
SELECT section_name FROM courses WHERE course_id IN (SELECT course_id FROM sections ORDER BY course_id DESC)
SELECT T4.se semester_name , T4.student_enrolment_id FROM student_enrolment AS T1 JOIN student_energisation AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN semesters AS T4 ON T4.semester_id = T1.semester_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM degrees AS T5 WHERE T5.department_id IN (SELECT department_id FROM students AS T6 WHERE T6.student_id IN (SELECT student_id FROM student_enrolment)) GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1) ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1;
courses(course_name, course_description) LIKE '%the computer%'
courses_course_description_other_details_for_text("computer")
SELECT T1.first_name , T1.last_name , T1.middle_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN ( SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = \"2\" ) GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2nd Degree" GROUP BY T1.student_id HAVING count(*) = 1
SELECT T3.first_name , T3.middle_name , T3.last_name FROM students AS T3 JOIN student_enrolment AS T2 ON T3.student_id = T2.student_id JOIN degree_programs AS T1 ON T2.degree_program_id = T1.degree_program_id WHERE T1.degree_summary_name = 'Bachelor'
SELECT T1.middle_name , T1.last_name , T1.first_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , T1.course_description , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) , T2.degrees_of_graduation FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id WHERE T2.student_enrolment_id IN (SELECT student_enrolment_id FROM student_enrolment_courses)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id INTERSECT SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T2 JOIN student_enrolment AS T1 ON T2.student_id = T1.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Elective'
from addresses AS T1 join students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name != 'Elective'
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = \"Timothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id EXCEPT SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.permanent_address_id != T2.address_id;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students;
SELECT avg(date_first_registered) FROM students;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts GROUP BY other_details
SELECT count(*) FROM students AS T1;
SELECT count(*) FROM students;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT count(*) , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name , max(T2.student_enrolment_id) , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Master') INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelor')
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Masters' INTERSECT SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors') GROUP BY T1.student_id HAVING count(*) = 2
SELECT count(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
reverse_students_details = sorted(list(reversed(Student_Enrolment.student_details)), key=lambda x: x.lower())
Reverse alphabetical order of student details: SELECT other_student_details FROM Students ORDER BY other_student_details DESC;
SELECT 'H' FROM SECTION WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haitie" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT cell_mobile_number FROM Students WHERE cell_mobile_number = "09700166582"
SELECT title FROM animation ORDER BY title ASC
sorted_anims = sorted(anims.keys())
SELECT T2.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.Directed_by = "Ben Jones"
SELECT T2.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon WHERE Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.channel = T2.channel WHERE T2.Written_by = 'Joseph Kuhr'
SELECT T1.title , T2.directed_by FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id ORDER BY T2.air_date ASC
SELECT title , directed_by FROM cartoon ORDER BY produced_date
SELECT T2.Title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" OR T1.Directed_by = "Brandon Vietti"
SELECT T2.Title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = \"Ben Jones\" OR T1.Directed_by = \"Brandon Vietti\"
SELECT Country , COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Country , count(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel;
SELECT CONTENT FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_CHANNEL WHERE Series_Name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT LANGUAGE , count(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT Language , count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT LANGUAGE , count(*) FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
channel := T2.id join cartoon AS t1 ON channel = t1.channel WHERE t1.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel JOIN TV_series AS T3 ON T1.id = T3.channel WHERE T3.series_name = "Sky Radio"
TV_channel.id IN (SELECT id FROM TV_channel WHERE series_name = \"Sky Radio\") AND channel IN (SELECT id FROM TV_series WHERE air_date = (SELECT air_date FROM TV_series WHERE channel = TV_channel.id) )
SELECT Episode FROM TV_series ORDER BY Rating
SELECT episode FROM TV_series ORDER BY Rating ASC
SELECT T2.episode , T1.Rating FROM TV_series AS T1 JOIN ( SELECT id FROM TV_series ORDER BY Rating DESC LIMIT 3 ) AS T2 ON T1.id = T2.id
SELECT id , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT sum(T2.Rating) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T2.serial_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) , Directed_by FROM cartoon GROUP BY Directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE hight_definition_tv = 'HD'
SELECT Package_Option , T2.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.High_Defined_TV = 'Yes'
TV_channel_id = (SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey')
cartoons.Written_by = \"Todd Casey\" AND channel IN (SELECT id FROM TV_series WHERE content = \"TV\")
TV_channel.id NOT IN (SELECT T2.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = 'Todd Casey')
SELECT id FROM cartoon WHERE written_by != 'Todd Casey' {}
SELECT T1.series_name , T2.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T2.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_Channel WHERE LANGUAGE <> "English"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT id FROM TV_channel WHERE country IN (SELECT country FROM TV_channel GROUP BY country HAVING count(*) > 2)
SELECT id FROM (SELECT * FROM TV_channel GROUP BY id HAVING count(*) > 2)
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
package_option = (SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones'))
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones')
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T2.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\"
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = 'Car'
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\" ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 AND T2.Nationality = 'Car'
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
people.name ORDER BY Poker_Player_ID ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY count(*) ASC;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T1.Name = \"Car Gamer\"
SELECT avg(T1.Revenue) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T1.Name = \"Car\"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID JOIN car_game AS T3 ON T2.People_ID = T3.People_ID ORDER BY T3.Earnings DESC;
people[Nationality] -> people.Name ORDER BY Poker_Player_Pep.RMoney DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 100
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Nationality FROM people AS T1 JOIN people AS T2 ON T1.Nationality = T2.Nationality WHERE T1.Name = T2.Name GROUP BY T1.Nationality HAVING COUNT(*) >= 2;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM Poker_Player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = "CA"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number ORDER BY T1.contestant_number LIMIT 1;
SELECT count(*) FROM VOTES WHERE state LIKE '%NY%' OR state LIKE '%CA%'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT count(*) FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1;
SELECT T2.set_up_date , T2.state , T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTants WHERE contestant_name = \"Kelly Clauss\")
Contestants[VOTE_ID] LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE lifeexpectancy > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.Region = 'Caribbean'
SELECT sum(T1.surfacearea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.Name = "Kabul"
"SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.District = 'Kabul' AND T1.Capital = 'Kabul'"}
SELECT T2.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Aruba' GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Language FROM countrylanguage AS t1 JOIN city AS t2 ON t1.CountryCode = t2.CountryCode WHERE t2.District = "Aruba" GROUP BY t1.Language ORDER BY sum(t1.Percentage) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT region , population FROM country WHERE code = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Central Africa'
SELECT name FROM country WHERE lifeexpectancy IN (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
total = sum(T1.population) , max(T2.GNPPeople) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia'
SELECT count(*) , max(GNP) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'African' AND governmentform = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
Asia + Europe = 1400000 + 1400000 = 2800000
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'USA'
SELECT avg(GNP) , sum(population) FROM country WHERE code IN ( SELECT code FROM country WHERE name = 'United States' )
SELECT count(DISTINCT language) FROM countrylanguage;
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM countrycode)
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(t1.language) FROM countrylanguage AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t2.countrycode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan') AND isofficial = 1
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN ( SELECT Code FROM country WHERE Name = "Afghanistan")
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = 'English' AND T2.Language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
countrycode1 = 'EN' countrycode2 = 'FR' countrycode3 = 'EN' countrycode4 = 'FR' countrylanguage1 = 'English' countrylanguage2 = 'French' intersect(countrycode1, countrycode2)
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 1 INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French' AND T2.isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language IN ('Nederlands', 'Engels')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING count(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.code WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING count(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT T1.Name , T1.Population , T1.LifeExpectancy FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.CountryCode IN ( SELECT Code FROM country WHERE Continent = "Asia") ORDER BY T1.Population DESC LIMIT 1
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'English' GROUP BY T1.countrycode HAVING avg(T1.lifeexpectancy) > (SELECT avg(LifeExpectancy) FROM countrylanguage)
SELECT sum(T1.population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English' {}
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix" AND T1.IsOfficial = 1
countrycode = 'Beatrix' AND code2 IN (SELECT countrycode FROM country WHERE name IN ('Béjaïa', 'Bejaïa')) AND language IN (SELECT language FROM countrylanguage WHERE countrycode IN (SELECT countrycode FROM country WHERE name = 'Béjaïa')) AND isofficial = 1
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 {}
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Population < 1930 {}
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT population FROM country WHERE continent = 'Asia' ORDER BY population ASC LIMIT 1)
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'Asia' GROUP BY continent ORDER BY population DESC LIMIT 1) INTERSECT SELECT name FROM country WHERE continent = 'Africa'
SELECT name FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT code FROM countrylanguage WHERE language != 'English'
countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language != 'English' {}
countrycode COUNTRYabbreviation FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language != 'English'
SELECT name FROM country WHERE code2 NOT IN ( SELECT code2 FROM countrylanguage WHERE language = 'English' ) INTERSECT SELECT name FROM country WHERE governmentform = 'Rep' {}
SELECT name FROM country WHERE code2 IN (SELECT code FROM countrylanguage WHERE language = 'English') EXCEPT SELECT name FROM country WHERE governmentform = 'Republic'
countrycode = 'Europe' AND LANGUAGE != 'English'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial != 'Yes' AND T2.Language = 'English'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" AND T2.Language = "Chinese" GROUP BY T1.Name
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.code WHERE T3.language = 'Chinese' AND T2.continent = 'Asia'
SELECT T1.name , T1.indepyear , T1.continent FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) LIMIT 1;
SELECT name , indepyear , region FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY T1.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY T1.population DESC LIMIT 1;
countrycode , count(*) , sum(percentage) FROM countrylanguage GROUP BY countrycode HAVING count(*) >= 3;
countrylanguage GROUP BY CountryCode HAVING count(DISTINCT Language) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT T1.GovernmentForm , sum(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.GovernmentForm HAVING avg(T2.population) > 72
SELECT sum(population) , governmentform FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , count(*) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Europe' AND T2.population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000;
SELECT sum(population) , avg(surfacearea) FROM city WHERE countrycode IN ( SELECT code FROM country WHERE continent = "North America" AND population > 3000 )
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language , T1.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = 'Spanish' AND t1.percentage > (SELECT min(percentage) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t1.language = 'Spanish')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING sum(T2.percentage) > 50%
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
conductor.sort_by_age()
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> \"USA\"
orchestras.sort_by_your_year_of_founded DESC ORTHANOS.sort_by_your_year_of_founded DESC
ortcha.orchestre ORDER BY YEAR_OF_FOUNISHED DESC
SELECT avg(Attendance) FROM show;
SELECT avg(Attendance) FROM show AS T1
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Director DESC;
conductor.sort_by('Name', 'desc')
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found <= (SELECT max(YEAR_OF_WORK) FROM conductor) GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id JOIN orchestra AS T3 ON T2.orchestra_id = T3.orchestra_id T4 AS T5 JOIN show AS T6 ON T3.orchestra_id = T6.performance_id SELECT T1.Name , T5.Orecord FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id JOIN orchestra AS T3 ON T2.orchestra_id = T3.orchestra_id JOIN show AS T4 ON T3.orchestra_id = T4.performance_id JOIN performance AS T5 ON T4.performance_id = T5.performance_id JOIN orchestra AS T6 ON T5.orchestra_id = T6.orchestra_id
conductor AS T1.join(orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Name != \"\" union select T1.Name , T3.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
from performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T1.year_of_performance > 2008 GROUP BY T2.conductor_id HAVING COUNT(*) >= 3;
conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_foundation > 2008 {}
conductor , count(*) orchestra , count(*) FROM orchestra GROUP BY orchestra.id ;
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC;
orchestras.sort(Major_Record_Format)
SELECT T2.Record_Company FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM conductor WHERE Conductor_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT * FROM performance WHERE Performance_ID NOT IN ( SELECT Performance_ID FROM performance )
performance AS T1 ORchestra_ID IN (SELECT T2.Orchestra_ID FROM performance AS T2 JOIN orchestra AS T1 ON T2.Orchestra_ID = T1.Orchestra_ID WHERE T2.Year_of_Found < 2003 INTERSECT SELECT T2.Orchestra_ID FROM performance AS T2 JOIN orchestra AS T1 ON T2.Orchestra_ID = T1.Orchestra_ID WHERE T2.Year_of_Found > 2003)
conductor_id IN (SELECT T1.conductor_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.year_of_founded < 2003 INTERSECT SELECT T1.conconduct_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T2.year_of_found > 2003) {}
orchestra(Record_Company) LIKE "CD" OR Record_Company LIKE "DVD" Performance_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE = \"DVD\") OR TYPE = \"CD\" performance_id IN (SELECT Performance_ID FROM performance WHERE TYPE
orchestra.bandrecord.type LIKE '%CD%' OR bandrecord.type LIKE '%DVD%'{}
SELECT T2.Year_of_Found FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_of_Found HAVING COUNT(*) > 1;
SELECT T1.Year_of_Found FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_Found HAVING COUNT(*) > 1 {}
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 1)
Highschooler.id = (SELECT id FROM highschooler WHERE name = 'Kyle') AND grade = 'A'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
Highschooler.id = '1' AND name = 'Kyle'
Highschooler.id = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) , grade FROM highschooler GROUP BY grade;
Highschooler.id , count(*) AS num_students FROM highschooler GROUP BY grade HAVING count(*) > 0
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.student_id , T2.friend_id FROM Friend AS T1 JOIN HIGHschooler AS T2 ON T1.student_id = T2.id
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
friend_count = (SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id)
friend_count = (SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
Friend(student_id, friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
Highschooler.count(*) AS count_kyle FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT student_id FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id)
SELECT student_id FROM highschooler WHERE id NOT IN (SELECT friend_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id)
SELECT name FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.student_id WHERE T3.friend_id IN (SELECT id FROM highschooler)
SELECT student_id FROM likes INTERSECT SELECT student_id FROM highschooler WHERE id IN (SELECT student_id FROM likes) AND student_id NOT IN (SELECT student_id FROM likes)
Friend(student_id, student_id) IN (SELECT T1.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.student_id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.student_id IN ( SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2 )
SELECT count(*) , student_id FROM LIKE GROUP BY student_id HAVING count(*) > 0
Like student_id count(*) FROM likes GROUP BY like_student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.grade > 5
highschooler.name [SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2]
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
Highschooler.query(like('%Kyle%'))[0].count(*)
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id)
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id)
states = set() for owner in owners: if owner.state in states: continue for professional in professionals: if professional.role_code == 'Veterinarian' and professional.first_name != '' and professional.last_name != '': states.add(provinstate) for professional in professionals: if professional.role_code == 'Veterinarian' and professional.first_name != '' and professional.last_name != '': states.add(provinstate) print(states)
SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = 'Veterinarian' INTERSECT SELECT T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.role_code = 'Guardian'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'medical'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T2.name FROM charges AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN treatments AS T3 ON T1.treatment_id = T3.treatment_id WHERE T3.cost_of_treatment > 1000 GROUP BY T2.name HAVING count(*) > 10
first_names = (SELECT first_name FROM owners WHERE owner_id IN (SELECT owner_id FROM professionals WHERE role_code = 'dog guardian' INTERSECT SELECT owner_id FROM professionals WHERE role_code = 'vet') EXCEPT SELECT first_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs))
SELECT first_name FROM owners WHERE owner_id IN ( SELECT T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name != 'dog' ) EXCEPT SELECT first_name FROM professionals WHERE role_code = 'guardian' OR role_code = 'vet'
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T3.dog_id = T1.dog_id WHERE T3.breed_code = 'Dog' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T3.dog_id = T1.dog_id WHERE T3.breed_code = 'Dog'
SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id IS NULL
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1 AS T4 SELECT T4.owner_id , T4.last_name FROM owners AS T4 JOIN treats AS T5 ON T4.owner_id = T5.owner_id WHERE T5.dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1) GROUP BY T4.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1 AS T6 SELECT T6.owner_id , T6.last_name FROM owners AS T6 JOIN treats AS T7 ON T6.owner_id = T7.owner_id WHERE T7.dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1) GROUP BY T6.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1 AS T8 SELECT T8.owner_id , T8.last_name FROM owners AS T8 JOIN treats AS T9 ON T8.owner_id = T9.owner_id WHERE T9.dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1) GROUP BY T8.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1 AS T10 SELECT T10.owner_id , T10.last_name FROM owners AS T10 JOIN treats AS T11 ON T10.owner_id = T11.owner_id WHERE T11.dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1) GROUP BY T10.owner_id ORDER BY sum(T11.cost_of_treatment) DESC LIMIT 1 AS T11 SELECT T11.owner_id , T11.last_name FROM owners AS T11 JOIN treats AS T12 ON T11.owner_id = T12.owner_id WHERE T12.dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1) GROUP BY T11.owner_id ORDER BY sum(T12.cost_of_treatment) DESC LIMIT 1 AS T12 SELECT T12.owner_id , T12.last_name FROM owners AS T12 JOIN treats AS T13 ON T12.owner_id = T13.owner_id WHERE T13.dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T3.owner_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1) GROUP BY T12.owner_id ORDER BY sum(T13.cost_of_treatment) DESC LIMIT 1 AS T
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1;
SELECT t1.treatment_type_description , t1.cost_of_treatment FROM treatments AS t1 JOIN professionals AS t2 ON t1.professional_id = t2.professional_id GROUP BY t1.cost_of_treatment ORDER BY sum(cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.charge_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T3.date_of_treatment , T2.first_name FROM charges AS T3 JOIN treatments AS T1 ON T3.treatment_id = T1.treatment_id JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.last_name = 'VETERINARIAN'
SELECT T3.date_of_treatment , T2.first_name FROM charges AS T1 JOIN treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id
SELECT T1.charge_type , T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.charge_type , T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
{ "sql": "SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T4 ON T4.size_code = T2.size_code WHERE T2.name IN (SELECT T3.name FROM dogs AS T3 JOIN owners AS T4 ON T3.owner_id = T4.owner_id WHERE T4.first_name != \"\" AND T4.last_name != \"\")"
SELECT T1.first_name , T1.last_name , T4.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN breeds AS T4 ON T2.breed_code = T4.breed_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.email_address = "owner@breeds.com" AND T2.breed_code = "Puppies"
SELECT T1.name , T4.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = 'Rarest' ORDER BY T1.age ASC LIMIT 1; SELECT T4.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = 'Rarest' ORDER BY T1.age ASC LIMIT 1;
SELECT T1.name , T4.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Rare' ORDER BY T1.weight ASC LIMIT 1;
SELECT T3.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOINowners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.state = 'Virginia' AND T2.owner_id = T3.owner_id
owners = [owners.first_name , owners.last_name] dogs = [dogs.name , dogs.owner_id] WHERE dogs.state = 'Virginia'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age ASC LIMIT 1;
SELECT email_address FROM owners WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM owners WHERE state = 'Hawaii' UNION SELECT email_address FROM owners WHERE state = 'Wisconsin'
SELECT date_arrived , date_dejected FROM dogs WHERE breed_code = "Puppy"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy' AND t2.date_of_treatment != 'null'
Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'Puppy' GROUP BY T3.professional_id HAVING count(*) > 0
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy'
SELECT T2.role_code , T1.street , T1.city , T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city LIKE '%West%'
owners.owners.city = 'West' AND owners.state = 'West' AND owners.email_address IN (SELECT email_address FROM owners WHERE street LIKE '%West%')
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs ) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges WHERE charge_type = 'Health' ORDER BY charge_date DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' AND date_of_birth NOT IN (SELECT T1.date_of_birth FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical')
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy' AND t2.date_of_treatment != 'null'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'Puppy' )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'Puppy' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IS NULL)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy')
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT age FROM dogs WHERE breed_code = 'Puppy' ORDER BY date_of_birth DESC LIMIT 1;
SELECT age FROM dogs WHERE breed_code = 'Puppy' ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , cell_number , home_phone FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM professionals
BREED_SIZE_COMbinations = (breed_code , size_code)
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_codedogs WHERE T1.breed_code = 'Puppy'
SELECT T1.first_name , T1.last_name , T4.description FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.professional_id JOIN treatments AS T3 ON T2.professional_id = T3.professional_id JOIN treatment_types AS T4 ON T3.treatment_type_code = T4.treatment_type_code
first_name : 'John' description : 'Veterinarian John has treated dogs with rabies.'
SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1
SELECT COUNT(*) , citizenship FROM singer GROUP BY citizenship HAVING count(*) > 0
SELECT T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY count(*) DESC LIMIT 1;
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
net_worth_millions > 300000 AND name IN (SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING SUM(T1.Sales) > 0
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN ( SELECT Singer_ID FROM song )
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT net_worth_millions FROM singer WHERE birth_year BETWEEN 1 AND 1944 UNION SELECT net_worth_millions FROM singer WHERE birth_year BETWEEN 1945 AND 1955
SELECT count(*) FROM Other_Available_Features AS T1;
SELECT T1.feature_type_code FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "House" UNION SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = "Apartment")
