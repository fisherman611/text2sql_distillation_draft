SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT name , country FROM singer ORDER BY birthday ASC;
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT avg(songwriter_id) , min(songwriter_id) , max(songwriter_id) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001-%'
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001%'
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer ORDER BY birthday > (SELECT avg(birthday) FROM singer) ASC LIMIT 100;
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT avg(capacity) , max(capacity) FROM stadium AS t1
SELECT avg(capacity) , max(capacity) FROM stadium AS T1
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(avg_attendance) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id GROUP BY t1.stadium_id HAVING count(*) > 0
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , max(T1.capacity) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY YEAR DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT max(Highest) FROM stadium WHERE capacity < (SELECT capacity FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday LIKE \"1981/%\" OR birthday LIKE \"1991/%\"
SELECT avg(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014 {}
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T1.theme ;
SELECT T1.concert_name , T2.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT count(*) , T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id;
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.year > 2014 GROUP BY T1.singer_id HAVING count(*) >= 1
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year < 2014 OR T2.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT min(lowest) , max(highest) FROM stadium WHERE stadium_id IN ( SELECT stadium_id FROM concert WHERE YEAR = 2014 INTERSECT SELECT stadium_id FROM concert WHERE YEAR = 2015 )
SELECT min(lowest) , max(highest) FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE YEAR = 2014 INTERSECT SELECT stadium_id FROM concert WHERE YEAR = 2015)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0 WHERE pettype = 'newborn' AND age = 1;
SELECT min(weight) FROM Pets AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age = 1
SELECT max(weight) , pettype FROM Pets GROUP BY pettype;
MAX(weight) , PetType FROM Pets GROUP BY PetType;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.PetType = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) > 0
SELECT count(DISTINCT pettype) FROM pets AS T1;
SELECT count(DISTINCT pettype) FROM pets AS T1
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = \"puppy\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = \"Kitten\"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'puppy'
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kitten' )
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM pets WHERE pettype = 'kitten')
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT T1.StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'kitten'))
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT PetID FROM Pets WHERE PetType = 'puppy') EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT PetID FROM Pets WHERE PetType = 'dog')
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Puppy\" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Kitten\"
SELECT PetType , weight FROM Pets ORDER BY birthdate LIMIT 1;
SELECT PetType , weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0 WHERE age = (SELECT min(age) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid)
SELECT petid , weight FROM Pets WHERE birthdate > (SELECT birthdate FROM Pets WHERE birthdate = '2020' )
SELECT petid , weight FROM Pets WHERE birthdate > (SELECT min(birthdate) FROM Pets WHERE birthdate >= '2020-01-01')
SELECT avg(weight) , max(weight) , pettype FROM Pets GROUP BY pettype;
SELECT avg(weight) , max(weight) , pettype FROM Pets GROUP BY pettype HAVING count(*) >= 1
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype HAVING count(*) > 100
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT PetID FROM Pets)
SELECT DISTINCT T1.lname , T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM Pets)
SELECT T1.petid FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT count(*) , T1.stuid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT count(*) , T1.stuid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) > 1;
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001 AND T1.sex = 'Cat'
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001 AND T1.sex = 'Cat'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents AS T1;
SELECT count(*) FROM continents AS T1;
SELECT T1.continent , T1.continent_name , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contId = T2.continent GROUP BY T1.contId HAVING count(*) > 0
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.countryid GROUP BY T1.contid HAVING count(*) > 0
SELECT count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid
SELECT count(*) FROM countries AS T1;
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0 {}
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.ID = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data) AND T1.weight != ""
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= (SELECT YEAR - 1 FROM cars_data) AND T2.year <= YEAR
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= (SELECT YEAR FROM cars_data ORDER BY YEAR DESC LIMIT 2) INTERSECT SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year <= (SELECT YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 2)
SELECT T1.maker , min(T2.year) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid GROUP BY T1.id ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year < 1980 OR T1.Year = 1979
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Year < 1980 OR T1.Year = 1980 {}
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.ContId HAVING COUNT(*) > 0
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 0
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 0 ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Accrate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.FullName = 'Amc Hornet Sportabout'
SELECT T1.Accrate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.Model WHERE T2.Make = 'AMC' AND T2.Model = 'Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'Japan')
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = \"Japanese\"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.country = (SELECT id FROM countries WHERE continent = 'America')
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.countryid IN (SELECT id FROM countries WHERE countryname = 'United States'))
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.0
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.Maker HAVING COUNT(*) > 0;
SELECT T1.Maker , T2.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model
SELECT T1.CountryName , T1.CountryID FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryID HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryID FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryID HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE Horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3 AND COUNT(*) <= 3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T1.Horsepower) , T2.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.cylinders = 3 GROUP BY T2.maker HAVING count(*) >= 1
SELECT max(T2.Horsepower) , T1.make FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T1.cylinders = 3 GROUP BY T1.make HAVING count(*) >= 1 ORDER BY max(T2.Horsepower) DESC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.maker GROUP BY T2.model ORDER BY sum(T1.MPG) DESC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model ORDER BY T2.mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 OR YEAR = 1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Maker = 'Tesla'
SELECT avg(Edispl) FROM cars_data WHERE MAKE = 'Tesla'
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accrate) , Max(Cylinders) FROM cars_data AS T1 GROUP BY T1.Cylinders HAVING count(*) = count(*)
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT Model FROM model_list GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2018 AND 2019 - 1 ORDER BY YEAR DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT max(YEAR) - 1 FROM cars_data) AND YEAR <= 2018
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = (SELECT id FROM countries ORDER BY countryname ASC LIMIT 1)
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.id WHERE T3.FullName = \"General Motors\" OR T1.Weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500;
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT min(Cylinders) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.Accelerate = 0
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY SUM(T2.Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders < 3 GROUP BY T1.makeid HAVING count(*) <= 3
SELECT T1.makeid , T2.fullname FROM car_names AS T2 JOIN cars_data AS T1 ON T1.id = T2.makeid WHERE T1.Horsepower != (SELECT min(Horsepower) FROM cars_data) AND T1.Cylinders < 4;
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T2.year < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < 3500 EXCEPT SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T2.makerid = T3.id WHERE T3.fullname = 'Ford Motor'
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT maker FROM car_makers WHERE fullname = \"Ford\"
SELECT CountryName FROM countries WHERE CountryId NOT IN ( SELECT Country FROM car_makers )
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3 INTERSECT SELECT id , maker FROM model_list GROUP BY maker HAVING count(*) >= 2
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_names GROUP BY id HAVING count(*) > 3
SELECT T1.CountryID , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryID HAVING COUNT(*) > 3 UNION SELECT T3.CountryID , T3.CountryName FROM countries AS T3 JOIN car_names AS T4 ON T3.CountryId = T4.Model WHERE T4.Model = 'tesla' {}
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Model WHERE T2.Make = 'Tesla' {}
SELECT Country FROM airlines WHERE Airline = \"JetBlue\"
SELECT Country FROM airlines WHERE Airline = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = \"JetBlue\"
SELECT Abbreviation FROM airlines WHERE Airline = 'JetBlue'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'United States'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'United States'
SELECT airportcode , airportname FROM airports WHERE country = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Jackson'
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destinationairport IN (SELECT airportcode FROM airports WHERE country = 'Australia')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Jackson' AND T1.sourceairport = T2.airportcode
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Jackson' AND T1.destairport = T2.airportcode
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Syracuse') INTERSECT SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Ashley')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'Syracuse' AND T3.country = 'Ashley'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.airstation = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = "JetBlue" AND T2.country = "USA" AND T1.sourceairport = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.country = 'USA' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airline = 'JetBlue' AND T2.country = 'United States' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'JetBlue' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = "JetBlue" AND T2.country = "United Kingdom" AND T1.sourceairport = "Aberdeen"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1;
SELECT T1.abbreviation , T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destairport = T2.airportcode AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'APG'
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.Airline HAVING count(*) >= 10
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline HAVING count(*) < 200;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = \"JetBlue\"
SELECT FlightNo FROM flights WHERE Airline = 'JetBlue'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE Country = 'Jackson')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'Syracuse' OR T1.sourceairport = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Syracuse' OR T2.country = 'Jackson'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT T1.destairport FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights UNION SELECT destairport FROM flights)
SELECT count(*) FROM Documents AS T1;
SELECT count(*) FROM Documents AS T1
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents AS T1;
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details LIKE '%w%' AND T1.document_description LIKE '%w%'
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\" AND T2.template_type_code = 18049
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\" AND T2.template_type_code = 109
SELECT count(DISTINCT template_id) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id
SELECT count(DISTINCT template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , t1.template_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id HAVING count(*) > 0
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Date_Effective_From - T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_ID IN ( SELECT Template_ID FROM Documents GROUP BY Template_ID ORDER BY count(*) DESC LIMIT 1 )
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT count(*) FROM Templates AS T1
SELECT count(*) FROM Templates AS T1;
SELECT Date_Effective_From , Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT Date_Effective_From , Template_Type_Code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1
Date_Effective_From TO Date_Effective_To
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"PP\" OR Template_Type_Description = \"PPT\")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = \"PP\" OR Template_Type_Code = \"PPT\"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = \"CV\"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = \"CV\"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Count(*) FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) > 0
SELECT count(*) , Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) < 3
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates WHERE date_effective_to - date_effective_from > 1 DAY
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name IN (SELECT document_name FROM documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 1)
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.document_name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"
SELECT count(*) , date_effective_from , date_effective_to FROM Templates GROUP BY template_type_code;
SELECT count(*) , T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code HAVING count(*) > 0
SELECT T1.Date_Effective_To - T1.Date_Effective_From FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents GROUP BY Template_ID ORDER BY count(*) DESC LIMIT 1)
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Date_Effective_From NOT IN (SELECT Date_Effective_From FROM Templates) INTERSECT SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Date_Effective_To NOT IN (SELECT Date_Effective_To FROM Templates)
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code NOT IN ( SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1 )
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = \"AD\"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"Book\"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) >= 1 {}
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_description != ''
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"Presentation\" )
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = 'Presentation' )
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.winner_id, T2.loser_id HAVING count(*) >= 1;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id
SELECT T1.player_id , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.player_id , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id
SELECT T1.player_id , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING count(*) > 0
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM MATCHES AS T1;
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1
SELECT T1.year , avg(T2.winner_rank) , avg(T2.loser_rank) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id GROUP BY T1.player_id HAVING avg(T2.winner_rank) > 0 INTERSECT SELECT T1.year , avg(T2.winner_rank) , avg(T2.loser_rank) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id GROUP BY T1.player_id HAVING avg(T2.winner_rank) < 100
SELECT avg(T1.ranking_points) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT avg(T1.ranking_points) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num > 0 AND T2.winner_age != 0 AND T2.loser_age != 0;
SELECT max(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = 1 ORDER BY T2.score DESC LIMIT 1;
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.ranking_points DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id - 1
SELECT count(DISTINCT T1.loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id HAVING count(*) > 1
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) >= 11
SELECT T1.first_name , T1.last_name , T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name , T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2016 {}
SELECT T1.winner_name , T2.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name , T2.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 3 AND T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 4 AND T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM players ORDER BY birth_date ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 1 AND T2.winner_rank_points = (SELECT max(winner_rank_points) FROM MATCHES WHERE tourney_id = 1) ORDER BY T2.score DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id = 1 AND T2.winner_rank_points = (SELECT max(winner_rank_points) FROM MATCHES WHERE tourney_id = 1 AND tourney_name = 'Australian Open')
SELECT T1.first_name , T1.last_name , T2.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.winner_name , T2.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM MATCHES)
SELECT avg(T1.ranking) , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name;
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name HAVING avg(T2.rank) > 0.5
SELECT T1.player_id , T2.rankings_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 21
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT sum(tourneys) , ranking_date FROM rankings GROUP BY ranking_date HAVING count(*) >= 1 ORDER BY count(*) DESC;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR HAVING count(*) >= 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date LIMIT 3;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date LIMIT 3;
SELECT count(*) FROM (SELECT DISTINCT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\")
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.winner_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT DISTINCT line_1 FROM addresses AS T1;
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE If_first_show = 1
SELECT count(*) FROM show WHERE if_first_show = 1
SELECT Name FROM conductor ORDER BY birthday ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor WHERE Nationality LIKE "American%"
SELECT Name FROM conductor WHERE Nationality = 'American'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(Attendance) FROM show WHERE If_first_show != 1
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY birthday ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY birthday ASC;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT Record_Company , count(*) FROM orchestra GROUP BY Record_Company HAVING count(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company HAVING count(*) > 0
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC;
SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDER ASC;
SELECT Record_Company FROM ORCHESTRA ORDER BY YEAR_OF_FOUNDER ASC LIMIT 1;
SELECT Record_Company FROM ORCHESTRA ORDER BY YEAR_OF_FOUNDED DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN ( SELECT Orchestra_ID FROM performance )
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER < 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER >= 1900;
SELECT record_company FROM orchestra WHERE year_of_founded > 1993 EXCEPT SELECT record_company FROM orchestra WHERE year_of_founded < 1993
SELECT count(*) FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Official_ratings_(millions) = (SELECT max(Official_ratings_(millions)) FROM performance) AND RESULT = "First" AND IF_first_show = 1 AND IF_first_show = 1) AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show = 1 AND IF_first_show =
SELECT count(*) FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Official_ratings_millions = 1 AND TYPE = "First") AND Performance_ID = "Glebe Park"
SELECT TYPE FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id WHERE T2.if_first_show != 1 GROUP BY TYPE HAVING count(*) > 1
SELECT TYPE FROM performance WHERE Performance_ID NOT IN ( SELECT Performance_ID FROM show WHERE If_first_show = 1 ) GROUP BY TYPE HAVING count(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals WHERE role_code = 'professional' AND first_name != '' AND last_name != ''
SELECT state FROM owners WHERE email_address IN (SELECT email_address FROM professionals GROUP BY email_address HAVING count(*) = 1)
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) != 0;
SELECT avg(T3.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id GROUP BY T2.dog_id HAVING avg(T3.age) > 0.5;
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'Indiana' UNION SELECT T3.professional_id , T3.home_phone FROM Professional AS T3 JOIN Treatments AS T4 ON T3.professional_id = T4.professional_id GROUP BY T3.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000;
SELECT first_name FROM professionals WHERE first_name NOT IN ( SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id ) UNION SELECT first_name FROM owners WHERE first_name NOT IN ( SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id ) {}
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.first_name = T2.first_name WHERE T2.email_address != '' AND T2.home_phone != '' AND T2.cell_number != '' AND T2.city != '' AND T2.state != '' AND T2.zip_code != '' AND T2.home_phone != '' AND T2.cell_number != '' AND T2.street != '' AND T2.name != '' AND T2.date_arrived != '' AND T2.date_adopted != '' AND T2.date_departed != '' AND T2.role_code != 'student' AND T2.role_code != 'partner' AND T2.role_code != 'owner'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog' EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog'
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN ( SELECT T1.professional_id FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T2 JOIN dogs AS T1 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T1.home_phone , T2.treatment_type_code FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T3.size_code = T2.size_code JOIN owners AS T4 ON T4.owner_id = T2.owner_id WHERE T2.weight > 50
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN breeds AS T4 ON T2.breed_code = T4.breed_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id
SELECT T1.name , T2.date_of_birth FROM Dogs AS T1 JOIN T treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.weight ASC LIMIT 1;
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.weight ASC LIMIT 1;
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T4.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.state = \"VA\" UNION SELECT T4.first_name , T4.last_name FROM owners AS T4 JOIN dogs AS T5 ON T4.owner_id = T5.owner_id
SELECT T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Dog' AND T1.date_departed - T1.date_arrived > 0
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog' AND T2.date_of_treatment BETWEEN T1.date_arrived AND T1.date_departed ;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth ASC LIMIT 1;
SELECT email_address FROM professionals WHERE state LIKE '%HI%' OR state LIKE '%WI%'
SELECT email_address FROM professionals WHERE state IN ('HI', 'WI')
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Yes'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Yes'
SELECT count(*) FROM (SELECT DISTINCT dog_id FROM treatments)
SELECT count(*) FROM (SELECT DISTINCT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.professional_id )
SELECT count(*) FROM ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.professional_id ) WHERE count(*) > 0 AND count(*) <= 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%' OR city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%' OR state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs) AND abandoned_yn = 'Yes'
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM Dogs WHERE abandoned_yn != 'yes'
SELECT count(*) FROM ( SELECT dog_id FROM treatments GROUP BY dog_id )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y' )
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM Professionals WHERE professional_id NOT IN ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT max(age) FROM dogs AS T1;
SELECT max(age) FROM dogs AS T1;
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , first_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.first_name = T2.first_name AND T1.last_name = T2.last_name
SELECT email_address , first_name , last_name FROM professionals
SELECT DISTINCT breed_name , size_description FROM sizes AS T1 JOIN dogs AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_code , size_code FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_code = T2.size_code INTERSECT SELECT DISTINCT breed_code , size_code FROM dogs AS T3 JOIN breeds AS T4 ON T3.breed_code = T4.breed_code
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.date_of_treatment JOIN professionals AS T3 ON T2.professional_id = T3.professional_id JOIN Treatment_Types AS T4 ON T2.treatment_type_code = T4.treatment_type_code
SELECT T3.first_name , T3.last_name , T2.treatment_type_description FROM treatments AS T1 JOIN professionals AS T3 ON T1.professional_id = T3.professional_id JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship != \"French\"
SELECT Name FROM singer WHERE Birth_Year > 1948 OR Birth_Year < 1900
SELECT Name FROM singer WHERE Birth_Year > 1948 OR Birth_Year < 1900
SELECT Name FROM singer ORDER BY Birth_Year LIMIT 1 OFFSET 0;
SELECT Name FROM singer ORDER BY Birth_Year LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT sum(Citizenship) FROM singer AS T1;
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship ORDER BY max(Net_Worth_Millions) DESC
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship ORDER BY max(Net_Worth_Millions) DESC
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.sales DESC LIMIT 1;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , T1.Highest_POSITION FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_POSITION DESC LIMIT 1;
SELECT T2.Name , max(T1.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name;
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 UNION SELECT Citizenship FROM singer WHERE Birth_Year >= 1945;
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 UNION SELECT Citizenship FROM singer WHERE Birth_Year > 0
