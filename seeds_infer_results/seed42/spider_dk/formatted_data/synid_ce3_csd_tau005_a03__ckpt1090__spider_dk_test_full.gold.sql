SELECT count(*) FROM singer	new_concert_singer
SELECT count(*) FROM singer	new_concert_singer
SELECT name , country FROM singer ORDER BY birthday ASC	new_concert_singer
SELECT name , country FROM singer ORDER BY birthday ASC	new_concert_singer
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = 'France'	new_concert_singer
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE country = 'France'	new_concert_singer
SELECT song_name , song_release_year FROM singer ORDER BY birthday desc LIMIT 1	new_concert_singer
SELECT song_name , song_release_year FROM singer ORDER BY birthday desc LIMIT 1	new_concert_singer
SELECT DISTINCT country FROM singer WHERE birthday like '2001%'	new_concert_singer
SELECT DISTINCT country FROM singer WHERE birthday like '2001%'	new_concert_singer
SELECT country , count(*) FROM singer GROUP BY country	new_concert_singer
SELECT country , count(*) FROM singer GROUP BY country	new_concert_singer
SELECT song_name FROM singer WHERE birthday < (SELECT avg(birthday) FROM singer)	new_concert_singer
SELECT song_name FROM singer WHERE birthday < (SELECT avg(birthday) FROM singer)	new_concert_singer
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	new_concert_singer
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000	new_concert_singer
SELECT avg(capacity) , max(capacity) FROM stadium	new_concert_singer
SELECT avg(capacity) , max(capacity) FROM stadium	new_concert_singer
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1	new_concert_singer
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1	new_concert_singer
SELECT count(*) FROM concert WHERE YEAR >= 2014	new_concert_singer
SELECT count(*) FROM concert WHERE YEAR >= 2014	new_concert_singer
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id	new_concert_singer
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id	new_concert_singer
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1	new_concert_singer
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1	new_concert_singer
SELECT concert_Name FROM concert ORDER BY YEAR asc LIMIT 1	new_concert_singer
SELECT concert_Name FROM concert ORDER BY YEAR asc LIMIT 1	new_concert_singer
SELECT highest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)	new_concert_singer
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)	new_concert_singer
SELECT country FROM singer WHERE birthday like '1981%' or birthday like '1991%'	new_concert_singer
SELECT average FROM stadium EXCEPT SELECT T2.average FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014	new_concert_singer
SELECT lowest FROM stadium EXCEPT SELECT T2.lowest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014	new_concert_singer
SELECT T2.concert_name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id	new_concert_singer
SELECT T2.concert_name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id	new_concert_singer
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id	new_concert_singer
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id	new_concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id WHERE T3.year >= 2014	new_concert_singer
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id WHERE T3.year <= 2014	new_concert_singer
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'	new_concert_singer
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'	new_concert_singer
SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 2015	new_concert_singer
SELECT T2.lowest , T2.highest FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 2015	new_concert_singer
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1	new_concert_singer
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1	new_concert_singer
SELECT count(*) FROM pets WHERE weight > 10	new_pets_1
SELECT count(*) FROM pets WHERE weight > 10	new_pets_1
SELECT weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT max(weight) , petType FROM pets GROUP BY petType	new_pets_1
SELECT max(weight) , petType FROM pets GROUP BY petType	new_pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20	new_pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20	new_pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T1.sex = 'F' AND T3.pettype = 'dog'	new_pets_1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T1.sex = 'F' AND T3.pettype = 'dog'	new_pets_1
SELECT count(DISTINCT pettype) FROM pets	new_pets_1
SELECT count(DISTINCT pettype) FROM pets	new_pets_1
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'	new_pets_1
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'	new_pets_1
SELECT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'dog'	new_pets_1
SELECT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'dog'	new_pets_1
SELECT major , age FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat')	new_pets_1
SELECT major , age FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat')	new_pets_1
SELECT stuid FROM student EXCEPT SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat'	new_pets_1
SELECT stuid FROM student EXCEPT SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat'	new_pets_1
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'dog' AND T1.stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat')	new_pets_1
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'dog' AND T1.stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = 'cat')	new_pets_1
SELECT pettype , weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT pettype , weight FROM pets ORDER BY birthdate desc LIMIT 1	new_pets_1
SELECT petid , weight FROM pets WHERE birthdate < '2020-01-01'	new_pets_1
SELECT petid , weight FROM pets WHERE birthdate < '2020-05-01'	new_pets_1
SELECT avg(PetID) , max(PetID) , pettype FROM pets GROUP BY pettype	new_pets_1
SELECT avg(PetID) , max(PetID) , pettype FROM pets GROUP BY pettype	new_pets_1
SELECT avg(PetID) , max(PetID) , pettype FROM pets GROUP BY pettype	new_pets_1
SELECT avg(weight) , pettype FROM pets GROUP BY pettype	new_pets_1
SELECT DISTINCT T1.fname , T1.LName , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid	new_pets_1
SELECT DISTINCT T1.fname , T1.LName , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid	new_pets_1
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.Lname = 'Smith'	new_pets_1
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.Lname = 'Smith'	new_pets_1
SELECT count(*) , T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid	new_pets_1
SELECT count(*) , T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid	new_pets_1
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1	new_pets_1
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1	new_pets_1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.birthdate like '2001%' AND T3.pettype = 'cat'	new_pets_1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.birthdate like '2001%' AND T3.pettype = 'cat'	new_pets_1
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid)	new_pets_1
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid)	new_pets_1
SELECT count(*) FROM CONTINENTS;	car_1
SELECT count(*) FROM CONTINENTS;	car_1
SELECT T1.ContId , T1.Continent , count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId;	car_1
SELECT T1.ContId , T1.Continent , count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId = T2.Continent GROUP BY T1.ContId;	car_1
SELECT count(*) FROM COUNTRIES;	car_1
SELECT count(*) FROM COUNTRIES;	car_1
SELECT T1.FullName , T1.Id , count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id;	car_1
SELECT T1.FullName , T1.Id , count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id ORDER BY T2.horsepower ASC LIMIT 1;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id ORDER BY T2.horsepower ASC LIMIT 1;	car_1
SELECT T1.model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T2.Weight < (SELECT avg(Weight) FROM CARS_DATA)	car_1
SELECT T1.model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T2.Weight < (SELECT avg(Weight) FROM CARS_DATA)	car_1
SELECT DISTINCT T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker JOIN CAR_NAMES AS T3 ON T2.model = T3.model JOIN CARS_DATA AS T4 ON T3.MakeId = T4.id WHERE T4.year >= '2019';	car_1
SELECT DISTINCT T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker JOIN CAR_NAMES AS T3 ON T2.model = T3.model JOIN CARS_DATA AS T4 ON T3.MakeId = T4.id WHERE T4.year >= '2019';	car_1
SELECT T2.Make , T1.Year FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T1.Year = (SELECT min(YEAR) FROM CARS_DATA);	car_1
SELECT T2.Make , T1.Year FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T1.Year = (SELECT min(YEAR) FROM CARS_DATA);	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model = T2.model JOIN CARS_DATA AS T3 ON T2.MakeId = T3.id WHERE T3.year <= 1980;	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.model = T2.model JOIN CARS_DATA AS T3 ON T2.MakeId = T3.id WHERE T3.year <= 1980;	car_1
SELECT T1.Continent , count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId = T2.continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.Continent;	car_1
SELECT T1.Continent , count(*) FROM CONTINENTS AS T1 JOIN COUNTRIES AS T2 ON T1.ContId = T2.continent JOIN car_makers AS T3 ON T2.CountryId = T3.Country GROUP BY T1.Continent;	car_1
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;	car_1
SELECT T2.CountryName FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country ORDER BY Count(*) DESC LIMIT 1;	car_1
SELECT Count(*) , T2.FullName , T2.id FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker = T2.Id GROUP BY T2.id;	car_1
SELECT Count(*) , T2.FullName , T2.id FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker = T2.Id GROUP BY T2.id;	car_1
SELECT T1.Accelerate FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = 'amc hornet sportabout (sw)';	car_1
SELECT T1.Accelerate FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = 'amc hornet sportabout (sw)';	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = 'Japan';	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN COUNTRIES AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = 'Japan';	car_1
SELECT count(*) FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker = T2.Id JOIN COUNTRIES AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'usa';	car_1
SELECT count(*) FROM MODEL_LIST AS T1 JOIN CAR_MAKERS AS T2 ON T1.Maker = T2.Id JOIN COUNTRIES AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'usa';	car_1
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders = 4;	car_1
SELECT avg(mpg) FROM CARS_DATA WHERE Cylinders = 4;	car_1
SELECT Weight FROM CARS_DATA WHERE Cylinders = 4 AND YEAR = 1974 ORDER BY Weight ASC LIMIT 1;	car_1
SELECT Weight FROM CARS_DATA WHERE Cylinders = 4 AND YEAR = 1974 ORDER BY Weight ASC LIMIT 1;	car_1
SELECT Maker , Model FROM MODEL_LIST;	car_1
SELECT Maker , Model FROM MODEL_LIST;	car_1
SELECT T1.CountryName , T1.CountryId FROM COUNTRIES AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) >= 1;	car_1
SELECT T1.CountryName , T1.CountryId FROM COUNTRIES AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) >= 1;	car_1
SELECT count(*) FROM CARS_DATA WHERE horsepower > 150;	car_1
SELECT count(*) FROM CARS_DATA WHERE horsepower > 150;	car_1
SELECT avg(Weight) , YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT avg(Weight) , YEAR FROM CARS_DATA GROUP BY YEAR;	car_1
SELECT T1.CountryName FROM COUNTRIES AS T1 JOIN CONTINENTS AS T2 ON T1.Continent = T2.ContId JOIN CAR_MAKERS AS T3 ON T1.CountryId = T3.Country WHERE T2.Continent = 'europe' GROUP BY T1.CountryName HAVING count(*) >= 3;	car_1
SELECT T1.CountryName FROM COUNTRIES AS T1 JOIN CONTINENTS AS T2 ON T1.Continent = T2.ContId JOIN CAR_MAKERS AS T3 ON T1.CountryId = T3.Country WHERE T2.Continent = 'europe' GROUP BY T1.CountryName HAVING count(*) >= 3;	car_1
SELECT T2.horsepower , T1.Make FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T2.cylinders = 3 ORDER BY T2.horsepower DESC LIMIT 1;	car_1
SELECT T2.horsepower , T1.Make FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T2.cylinders = 3 ORDER BY T2.horsepower DESC LIMIT 1;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id ORDER BY T2.mpg DESC LIMIT 1;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id ORDER BY T2.mpg DESC LIMIT 1;	car_1
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR <= 1980;	car_1
SELECT avg(horsepower) FROM CARS_DATA WHERE YEAR <= 1980;	car_1
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T1.Model = 'tesla';	car_1
SELECT avg(T2.edispl) FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T1.Model = 'tesla';	car_1
SELECT max(Accelerate) , Cylinders FROM CARS_DATA GROUP BY Cylinders;	car_1
SELECT max(Accelerate) , Cylinders FROM CARS_DATA GROUP BY Cylinders;	car_1
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT Model FROM CAR_NAMES GROUP BY Model ORDER BY count(*) DESC LIMIT 1;	car_1
SELECT count(*) FROM CARS_DATA WHERE Cylinders > 4;	car_1
SELECT count(*) FROM CARS_DATA WHERE Cylinders > 4;	car_1
SELECT count(*) FROM CARS_DATA WHERE YEAR >= 2019;	car_1
SELECT count(*) FROM CARS_DATA WHERE YEAR >= 2019;	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker WHERE T1.FullName = 'American Motor Company';	car_1
SELECT count(*) FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker WHERE T1.FullName = 'American Motor Company';	car_1
SELECT T1.FullName , T1.Id FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3;	car_1
SELECT T1.FullName , T1.Id FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3;	car_1
SELECT DISTINCT T2.Model FROM CAR_NAMES AS T1 JOIN MODEL_LIST AS T2 ON T1.Model = T2.Model JOIN CAR_MAKERS AS T3 ON T2.Maker = T3.Id JOIN CARS_DATA AS T4 ON T1.MakeId = T4.Id WHERE T3.FullName = 'General Motors' OR T4.weight > 3500;	car_1
SELECT DISTINCT T2.Model FROM CAR_NAMES AS T1 JOIN MODEL_LIST AS T2 ON T1.Model = T2.Model JOIN CAR_MAKERS AS T3 ON T2.Maker = T3.Id JOIN CARS_DATA AS T4 ON T1.MakeId = T4.Id WHERE T3.FullName = 'General Motors' OR T4.weight > 3500;	car_1
SELECT DISTINCT T1.Year FROM CARS_DATA AS T1 WHERE T1.Weight > 3000 AND T1.weight < 4000;	car_1
SELECT DISTINCT T1.Year FROM CARS_DATA AS T1 WHERE T1.Weight > 3000 AND T1.weight < 4000;	car_1
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;	car_1
SELECT T1.horsepower FROM CARS_DATA AS T1 ORDER BY T1.accelerate DESC LIMIT 1;	car_1
SELECT T1.cylinders FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = 'tesla' ORDER BY T1.accelerate ASC LIMIT 1;	car_1
SELECT T1.cylinders FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = 'tesla' ORDER BY T1.accelerate ASC LIMIT 1;	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate > ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Accelerate > ( SELECT Accelerate FROM CARS_DATA ORDER BY Horsepower DESC LIMIT 1 );	car_1
SELECT COUNT(*) FROM ( SELECT T1.CountryId , COUNT(*) FROM COUNTRIES AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 2 );	car_1
SELECT COUNT(*) FROM ( SELECT T1.CountryId , COUNT(*) FROM COUNTRIES AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 2 );	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders > 6;	car_1
SELECT COUNT(*) FROM CARS_DATA WHERE Cylinders > 6;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1;	car_1
SELECT T1.Model FROM CAR_NAMES AS T1 JOIN CARS_DATA AS T2 ON T1.MakeId = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1;	car_1
SELECT T2.MakeId , T2.Make FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T1.Horsepower > (SELECT min(Horsepower) FROM CARS_DATA) AND T1.Cylinders <= 3;	car_1
SELECT T2.MakeId , T2.Make FROM CARS_DATA AS T1 JOIN CAR_NAMES AS T2 ON T1.Id = T2.MakeId WHERE T1.Horsepower > (SELECT min(Horsepower) FROM CARS_DATA) AND T1.Cylinders <= 3;	car_1
SELECT mpg FROM CARS_DATA WHERE Cylinders = 8 OR YEAR <= 1980 ORDER BY mpg DESC LIMIT 1;	car_1
SELECT mpg FROM CARS_DATA WHERE Cylinders = 8 OR YEAR <= 1980 ORDER BY mpg DESC LIMIT 1;	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.Model = T2.Model JOIN CARS_DATA AS T3 ON T2.MakeId = T3.Id JOIN CAR_MAKERS AS T4 ON T1.Maker = T4.Id WHERE T3.weight < 3500 AND T4.FullName != 'Ford Motor Company';	car_1
SELECT DISTINCT T1.model FROM MODEL_LIST AS T1 JOIN CAR_NAMES AS T2 ON T1.Model = T2.Model JOIN CARS_DATA AS T3 ON T2.MakeId = T3.Id JOIN CAR_MAKERS AS T4 ON T1.Maker = T4.Id WHERE T3.weight < 3500 AND T4.FullName != 'Ford Motor Company';	car_1
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.countryId = T2.Country;	car_1
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.countryId = T2.Country;	car_1
SELECT T1.Id , T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker JOIN CAR_NAMES AS T3 ON T2.model = T3.model GROUP BY T1.Id HAVING count(*) > 3;	car_1
SELECT T1.Id , T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) >= 2 INTERSECT SELECT T1.Id , T1.Maker FROM CAR_MAKERS AS T1 JOIN MODEL_LIST AS T2 ON T1.Id = T2.Maker JOIN CAR_NAMES AS T3 ON T2.model = T3.model GROUP BY T1.Id HAVING count(*) > 3;	car_1
SELECT T1.countryId , T1.CountryName FROM Countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country GROUP BY T1.countryId HAVING count(*) > 3 UNION SELECT T1.countryId , T1.CountryName FROM Countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country JOIN MODEL_LIST AS T3 ON T2.Id = T3.Maker WHERE T3.Model = 'tesla';	car_1
SELECT T1.countryId , T1.CountryName FROM Countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country GROUP BY T1.countryId HAVING count(*) > 3 UNION SELECT T1.countryId , T1.CountryName FROM Countries AS T1 JOIN CAR_MAKERS AS T2 ON T1.CountryId = T2.Country JOIN MODEL_LIST AS T3 ON T2.Id = T3.Maker WHERE T3.Model = 'tesla';	car_1
SELECT Country FROM AIRLINES WHERE Airline = "JetBlue Airways"	flight_2
SELECT Country FROM AIRLINES WHERE Airline = "JetBlue Airways"	flight_2
SELECT Abbreviation FROM AIRLINES WHERE Airline = "JetBlue Airways"	flight_2
SELECT Abbreviation FROM AIRLINES WHERE Airline = "JetBlue Airways"	flight_2
SELECT Airline , Abbreviation FROM AIRLINES WHERE Country = "USA"	flight_2
SELECT Airline , Abbreviation FROM AIRLINES WHERE Country = "USA"	flight_2
SELECT AirportCode , AirportName FROM AIRPORTS WHERE city = "Jackson"	flight_2
SELECT AirportCode , AirportName FROM AIRPORTS WHERE city = "Syracuse"	flight_2
SELECT count(*) FROM AIRLINES	flight_2
SELECT count(*) FROM AIRLINES	flight_2
SELECT count(*) FROM AIRPORTS	flight_2
SELECT count(*) FROM AIRPORTS	flight_2
SELECT count(*) FROM FLIGHTS	flight_2
SELECT count(*) FROM FLIGHTS	flight_2
SELECT Airline FROM AIRLINES WHERE Abbreviation = "UAL"	flight_2
SELECT Airline FROM AIRLINES WHERE Abbreviation = "UAL"	flight_2
SELECT count(*) FROM AIRLINES WHERE Country = "USA"	flight_2
SELECT count(*) FROM AIRLINES WHERE Country = "USA"	flight_2
SELECT City , Country FROM AIRPORTS WHERE AirportName = "Alton"	flight_2
SELECT City , Country FROM AIRPORTS WHERE AirportName = "Alton"	flight_2
SELECT AirportName FROM AIRPORTS WHERE AirportCode = "AKO"	flight_2
SELECT AirportName FROM AIRPORTS WHERE AirportCode = "AKO"	flight_2
SELECT AirportName FROM AIRPORTS WHERE City = "Jackson"	flight_2
SELECT AirportName FROM AIRPORTS WHERE City = "Jackson"	flight_2
SELECT count(*) FROM FLIGHTS WHERE SourceAirport = "APG"	flight_2
SELECT count(*) FROM FLIGHTS WHERE SourceAirport = "APG"	flight_2
SELECT count(*) FROM FLIGHTS WHERE DestAirport = "ATO"	flight_2
SELECT count(*) FROM FLIGHTS WHERE DestAirport = "ATO"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode JOIN AIRPORTS AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T2.City = "Ashley" AND T3.City = "Syracuse"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode JOIN AIRPORTS AS T3 ON T1.SourceAirport = T3.AirportCode WHERE T2.City = "Ashley" AND T3.City = "Syracuse"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "JetBlue Airways"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline = T1.uid WHERE T1.Airline = "JetBlue Airways" AND T2.DestAirport = "ASY"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline = T1.uid WHERE T1.Airline = "JetBlue Airways" AND T2.DestAirport = "ASY"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline = T1.uid WHERE T1.Airline = "JetBlue Airways" AND T2.SourceAirport = "AHD"	flight_2
SELECT count(*) FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T2.Airline = T1.uid WHERE T1.Airline = "JetBlue Airways" AND T2.SourceAirport = "AHD"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid = T1.Airline WHERE T2.City = "Aberdeen" AND T3.Airline = "JetBlue Airways"	flight_2
SELECT count(*) FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode JOIN AIRLINES AS T3 ON T3.uid = T1.Airline WHERE T2.City = "Aberdeen" AND T3.Airline = "JetBlue Airways"	flight_2
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.City FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.DestAirport OR T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.DestAirport OR T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.DestAirport OR T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.AirportCode FROM AIRPORTS AS T1 JOIN FLIGHTS AS T2 ON T1.AirportCode = T2.DestAirport OR T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1	flight_2
SELECT T1.Abbreviation , T1.Country FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.Abbreviation , T1.Country FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = "AHD"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "CVO" EXCEPT SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = "APG"	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) > 10	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) > 10	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200	flight_2
SELECT T1.Airline FROM AIRLINES AS T1 JOIN FLIGHTS AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid = T1.Airline WHERE T2.Airline = "JetBlue Airways"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRLINES AS T2 ON T2.uid = T1.Airline WHERE T2.Airline = "JetBlue Airways"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport = "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE SourceAirport = "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE DestAirport = "APG"	flight_2
SELECT FlightNo FROM FLIGHTS WHERE DestAirport = "APG"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT T1.FlightNo FROM FLIGHTS AS T1 JOIN AIRPORTS AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"	flight_2
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Syracuse" OR T2.city = "Jackson"	flight_2
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.city = "Syracuse" OR T2.city = "Jackson"	flight_2
SELECT AirportName FROM Airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM Flights UNION SELECT DestAirport FROM Flights)	flight_2
SELECT AirportName FROM Airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM Flights UNION SELECT DestAirport FROM Flights)	flight_2
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents	cre_Doc_Template_Mgt
SELECT document_id , document_name , document_description FROM Documents	cre_Doc_Template_Mgt
SELECT document_id , document_name , document_description FROM Documents	cre_Doc_Template_Mgt
SELECT document_name , template_id FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT document_name , Document_ID, template_id FROM Documents WHERE Document_Description LIKE "%w%"	cre_Doc_Template_Mgt
SELECT document_id , template_id , Document_Description FROM Documents WHERE document_name = "Robbin CV"	cre_Doc_Template_Mgt
SELECT document_id , template_id , Document_Description FROM Documents WHERE document_name = "Robbin CV"	cre_Doc_Template_Mgt
SELECT count(DISTINCT template_id) FROM Documents	cre_Doc_Template_Mgt
SELECT count(DISTINCT template_id) FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = 'PPT'	cre_Doc_Template_Mgt
SELECT template_id , count(*) FROM Documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT template_id , count(*) FROM Documents GROUP BY template_id	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1	cre_Doc_Template_Mgt
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1	cre_Doc_Template_Mgt
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents	cre_Doc_Template_Mgt
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT count(*) FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To , template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To , template_type_code FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code = "CV"	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code = "CV"	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To , template_type_code FROM Templates WHERE version_number > 5	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To , template_type_code FROM Templates WHERE version_number > 5	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To , count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To , count(*) FROM Templates GROUP BY template_type_code	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY template_type_code HAVING count(*) < 3	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY template_type_code HAVING count(*) < 3	cre_Doc_Template_Mgt
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"	cre_Doc_Template_Mgt
SELECT T2.document_name, T2.Document_ID, T2.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "BK"	cre_Doc_Template_Mgt
SELECT T2.document_name, T2.Document_ID, T2.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "BK"	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From , T1.Date_Effective_To , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From , T1.Date_Effective_To , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id	cre_Doc_Template_Mgt
SELECT Date_Effective_From , Date_Effective_To FROM Templates EXCEPT SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id	cre_Doc_Template_Mgt
SELECT template_type_code , template_type_description FROM Ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_code , template_type_description FROM Ref_template_types	cre_Doc_Template_Mgt
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"	cre_Doc_Template_Mgt
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"	cre_Doc_Template_Mgt
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"	cre_Doc_Template_Mgt
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"	cre_Doc_Template_Mgt
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID = T3.template_ID	cre_Doc_Template_Mgt
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.Template_ID = T3.template_ID	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Presentation"	cre_Doc_Template_Mgt
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Presentation"	cre_Doc_Template_Mgt
SELECT loser_name, winner_name FROM matches	wta_1
SELECT loser_name, winner_name FROM matches	wta_1
SELECT winner_age, loser_age FROM matches	wta_1
SELECT winner_age, loser_age FROM matches	wta_1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'	wta_1
SELECT avg(loser_age) , avg(winner_age) FROM matches	wta_1
SELECT avg(loser_age) , avg(winner_age) FROM matches	wta_1
SELECT avg(winner_rank), avg(loser_rank) FROM matches	wta_1
SELECT avg(winner_rank), avg(loser_rank) FROM matches	wta_1
SELECT min(winner_rank), min(loser_rank) FROM matches	wta_1
SELECT min(winner_rank), min(loser_rank) FROM matches	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT country_code) FROM players	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT count(DISTINCT loser_name) FROM matches	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10	wta_1
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10	wta_1
SELECT loser_name, winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT loser_name, winner_name FROM matches WHERE YEAR = 2016	wta_1
SELECT loser_name, winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT loser_name, winner_name FROM matches WHERE YEAR = 2016	wta_1
SELECT loser_name, winner_name FROM matches WHERE YEAR = 2013 OR YEAR = 2016	wta_1
SELECT loser_name, winner_name FROM matches WHERE YEAR = 2013 OR YEAR = 2016	wta_1
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'	wta_1
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open'	wta_1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1	wta_1
SELECT first_name , last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name , last_name FROM players ORDER BY birth_date	wta_1
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date	wta_1
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date desc	wta_1
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.tours DESC LIMIT 1	wta_1
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.tours DESC LIMIT 1	wta_1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT winner_name , winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT winner_name , winner_rank_points FROM matches GROUP BY winner_name ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT loser_name, winner_name FROM matches WHERE tourney_name = 'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT loser_name, winner_name FROM matches WHERE tourney_name = 'Australian Open' ORDER BY winner_rank_points DESC LIMIT 1	wta_1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT winner_name , loser_name FROM matches ORDER BY minutes DESC LIMIT 1	wta_1
SELECT avg(ranking) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name	wta_1
SELECT avg(ranking) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name	wta_1
SELECT sum(ranking_points) , T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name	wta_1
SELECT sum(ranking_points) , T1.first_name, T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name	wta_1
SELECT count(*) , country_code FROM players GROUP BY country_code	wta_1
SELECT count(*) , country_code FROM players GROUP BY country_code	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50	wta_1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50	wta_1
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date	wta_1
SELECT count(*) , YEAR FROM matches GROUP BY YEAR	wta_1
SELECT count(*) , YEAR FROM matches GROUP BY YEAR	wta_1
SELECT DISTINCT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT DISTINCT winner_name , winner_rank FROM matches ORDER BY winner_age LIMIT 3	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name = 'WTA Championships' AND winner_hand = 'L'	wta_1
SELECT count(DISTINCT winner_name) FROM matches WHERE tourney_name = 'WTA Championships' AND winner_hand = 'L'	wta_1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1	wta_1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1	wta_1
SELECT count(*) , hand FROM players GROUP BY hand	wta_1
SELECT count(*) , hand FROM players GROUP BY hand	wta_1
SELECT line_1 , line_2, line_3 FROM addresses	student_transcripts_tracking
SELECT line_1 , line_2, line_3 FROM addresses	student_transcripts_tracking
SELECT count(*) FROM show where If_first_show = 'T'	new_orchestra
SELECT count(*) FROM show where If_first_show = 'T'	new_orchestra
SELECT Name FROM conductor ORDER BY birthday desc	new_orchestra
SELECT Name FROM conductor ORDER BY birthday desc	new_orchestra
SELECT Name FROM conductor WHERE Nationality = 'USA'	new_orchestra
SELECT Name FROM conductor WHERE Nationality = 'USA'	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc	new_orchestra
SELECT avg(Attendance) FROM SHOW where If_first_show = 'F'	new_orchestra
SELECT avg(Attendance) FROM SHOW where If_first_show = 'F'	new_orchestra
SELECT max(SHARE) , min(SHARE) FROM performance WHERE TYPE != "Live final"	new_orchestra
SELECT max(SHARE) , min(SHARE) FROM performance WHERE TYPE != "Live final"	new_orchestra
SELECT count(DISTINCT Nationality) FROM conductor	new_orchestra
SELECT count(DISTINCT Nationality) FROM conductor	new_orchestra
SELECT Name FROM conductor ORDER BY birthday DESC	new_orchestra
SELECT Name FROM conductor ORDER BY birthday DESC	new_orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	new_orchestra
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1	new_orchestra
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID	new_orchestra
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID order by Year_of_Founded asc limit 1	new_orchestra
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID order by Year_of_Founded desc limit 1	new_orchestra
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company	new_orchestra
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company	new_orchestra
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded desc	new_orchestra
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded desc	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded asc LIMIT 1	new_orchestra
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded desc LIMIT 1	new_orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	new_orchestra
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)	new_orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded <= 2003	new_orchestra
SELECT Record_Company FROM orchestra WHERE Year_of_Founded >= 2003	new_orchestra
SELECT COUNT(*) FROM show WHERE Result = "Glebe Park" and If_first_show = "T"	new_orchestra
SELECT COUNT(*) FROM show WHERE Result = "Glebe Park" and If_first_show = "T"	new_orchestra
SELECT Type FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE If_first_show = 'F' GROUP BY T2.Performance_ID HAVING COUNT(*) > 1	new_orchestra
SELECT Type FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID Where If_first_show = 'F' GROUP BY T2.Performance_ID HAVING COUNT(*) > 1	new_orchestra
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals	dog_kennels
SELECT state FROM Owners INTERSECT SELECT state FROM Professionals	dog_kennels
SELECT avg(age) FROM Dogs WHERE dog_id IN ( SELECT dog_id FROM Treatments )	dog_kennels
SELECT avg(age) FROM Dogs WHERE dog_id IN ( SELECT dog_id FROM Treatments )	dog_kennels
SELECT professional_id , last_name , cell_number FROM Professionals WHERE state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2	dog_kennels
SELECT professional_id , last_name , cell_number FROM Professionals WHERE state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2	dog_kennels
SELECT name FROM Dogs WHERE dog_id NOT IN( SELECT dog_id FROM Treatments GROUP BY dog_id HAVING sum(cost_of_treatment) > 1000 )	dog_kennels
SELECT name FROM Dogs WHERE dog_id NOT IN( SELECT dog_id FROM Treatments GROUP BY dog_id HAVING sum(cost_of_treatment) > 1000 )	dog_kennels
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs	dog_kennels
SELECT first_name FROM Professionals UNION SELECT first_name FROM Owners EXCEPT SELECT name FROM Dogs	dog_kennels
SELECT professional_id , first_name , last_name FROM Professionals EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id	dog_kennels
SELECT professional_id , first_name , last_name FROM Professionals EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id	dog_kennels
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code where abandoned_yn = 1 GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code where abandoned_yn = 1 GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1	dog_kennels
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1	dog_kennels
SELECT T1.treatment_type_description FROM Treatment_types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1	dog_kennels
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2	dog_kennels
SELECT DISTINCT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 WHERE cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM Treatments )	dog_kennels
SELECT DISTINCT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 WHERE cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM Treatments )	dog_kennels
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id	dog_kennels
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id	dog_kennels
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code	dog_kennels
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM Treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code	dog_kennels
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id	dog_kennels
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id	dog_kennels
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id	dog_kennels
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id	dog_kennels
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = ( SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) ASC LIMIT 1 )	dog_kennels
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = ( SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) ASC LIMIT 1 )	dog_kennels
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'	dog_kennels
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'	dog_kennels
SELECT DISTINCT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT DISTINCT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id	dog_kennels
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = ( SELECT max(age) FROM Dogs )	dog_kennels
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = ( SELECT max(age) FROM Dogs )	dog_kennels
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT email_address FROM Professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'	dog_kennels
SELECT date_arrived , date_departed FROM Dogs where abandoned_yn = 1	dog_kennels
SELECT date_arrived , date_departed FROM Dogs where abandoned_yn = 1	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT dog_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT count(DISTINCT professional_id) FROM Treatments	dog_kennels
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'	dog_kennels
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'	dog_kennels
SELECT count(*) FROM Dogs WHERE abandoned_yn = 1 and age < ( SELECT avg(age) FROM Dogs )	dog_kennels
SELECT count(*) FROM Dogs WHERE abandoned_yn = 1 and age < ( SELECT avg(age) FROM Dogs )	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1	dog_kennels
SELECT count(*) FROM Dogs WHERE abandoned_yn = 1 and dog_id NOT IN ( SELECT dog_id FROM Treatments )	dog_kennels
SELECT count(*) FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM Treatments )	dog_kennels
SELECT count(*) FROM Owners WHERE owner_id NOT IN ( SELECT owner_id FROM Dogs where abandoned_yn = 1 )	dog_kennels
SELECT count(*) FROM Owners WHERE owner_id NOT IN ( SELECT owner_id FROM Dogs where abandoned_yn = 1 )	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )	dog_kennels
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM Treatments )	dog_kennels
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1	dog_kennels
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1	dog_kennels
SELECT avg(age) FROM Dogs where abandoned_yn = 1	dog_kennels
SELECT avg(age) FROM Dogs where abandoned_yn = 1	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT max(age) FROM Dogs	dog_kennels
SELECT charge_type , charge_amount FROM Charges	dog_kennels
SELECT charge_type , charge_amount FROM Charges	dog_kennels
SELECT max(charge_amount) FROM Charges	dog_kennels
SELECT max(charge_amount) FROM Charges	dog_kennels
SELECT email_address , first_name , last_name FROM professionals	dog_kennels
SELECT email_address , first_name , last_name FROM professionals	dog_kennels
SELECT DISTINCT breed_code , size_code FROM dogs	dog_kennels
SELECT DISTINCT breed_code , size_code FROM dogs	dog_kennels
SELECT DISTINCT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code	dog_kennels
SELECT DISTINCT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code	dog_kennels
SELECT count(*) FROM singer	singer
SELECT count(*) FROM singer	singer
SELECT Name FROM singer ORDER BY Birth_Year desc	singer
SELECT Name FROM singer ORDER BY Birth_Year desc	singer
SELECT Birth_Year , Citizenship FROM singer	singer
SELECT Birth_Year , Citizenship FROM singer	singer
SELECT Name FROM singer WHERE Citizenship != "France"	singer
SELECT Name FROM singer WHERE Citizenship != "France"	singer
SELECT Name FROM singer WHERE Birth_Year <= 1948	singer
SELECT Name FROM singer WHERE Birth_Year <= 1948	singer
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1	singer
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1	singer
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1	singer
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1	singer
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship	singer
SELECT Title FROM song order by Sales desc limit 1	singer
SELECT Title FROM song order by Sales desc limit 1	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000	singer
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1	singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1	singer
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name	singer
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)	singer
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945	singer
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945	singer
