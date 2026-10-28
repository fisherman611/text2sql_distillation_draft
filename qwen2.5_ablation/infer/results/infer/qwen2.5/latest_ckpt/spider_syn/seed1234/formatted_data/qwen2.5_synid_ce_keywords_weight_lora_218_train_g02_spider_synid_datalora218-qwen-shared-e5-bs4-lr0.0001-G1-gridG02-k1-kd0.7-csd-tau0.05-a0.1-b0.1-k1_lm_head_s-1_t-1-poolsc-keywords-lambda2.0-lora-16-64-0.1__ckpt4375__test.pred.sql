SELECT count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT count(*) FROM singer AS T1;
SELECT name , country , age FROM singer ORDER BY age ASC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1000000;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country HAVING count(*) != 0
SELECT song_name FROM singer AS T1 JOIN song AS T2 ON T1.song_id = T2.song_id WHERE T1.age > (SELECT avg(age) FROM singer) ORDER BY T2.song_name ASC LIMIT 1000;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT T1.name , T1.location FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.capacity BETWEEN 5000 AND 10000;
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium WHERE capacity != 0
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR BETWEEN 2014 AND 2015
SELECT count(*) FROM show WHERE YEAR IN (2014 , 2015)
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.stadium_id , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT min(T1.year) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 AND age < 30;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT count(*) , T1.theme , T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.name HAVING count(*) > 0 {}
SELECT T1.theme , T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.concert_id
SELECT count(*) , T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name HAVING count(*) > 0
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014;
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%' OR song_name LIKE '%Hey%'
SELECT T3.name , T3.position FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.highest = (SELECT max(highest) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets) AND PetType = "Puppy"
SELECT min(weight) FROM Pets WHERE pet_age = 'youngest'
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(T2.weight) , T1.pet_type FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid GROUP BY T1.pet_type HAVING count(*) >= 500
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(*) FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.sex = 'F' AND t2.pettype = 'Puppy'
SELECT count(DISTINCT pet_type) FROM pets WHERE pet_type = 'Domestic'
SELECT count(DISTINCT pet_type) FROM pets;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_type = 'kitten' OR T3.pet_type = 'puppy'
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.lname , T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"kitten\" INTERSECT SELECT T1.lname , T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"puppy\"
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"Kitten\" INTERSECT SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"Puppy\"
SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype != 'Kitten'
SELECT T1.pet_age , T2.fname , T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age != 10 AND T2.stuid NOT IN (SELECT StuID FROM Has_pet)
SELECT StuID FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = 'Kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Kitten')
SELECT T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pet_type = 'Puppy' EXCEPT SELECT T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pet_type = 'Cat'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "kitten"
SELECT pet_type , weight FROM Pets ORDER BY pet_age ASC LIMIT 1 OFFSET 0;
SELECT T2.pet_type , T2.weight FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1;
SELECT T1.stuid , T1.weight FROM Pets AS T1 JOIN Has_pet AS T2 ON T1.petid = T2.petid WHERE T2.pet_age > 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT avg(T1.age) , max(T1.age) , T2.species FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.species;
SELECT avg(weight) , max(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1;
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0 {}
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 0
SELECT count(*) , T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.lname , T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.Lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents AS T1;
SELECT T1.continent , T1.continent_name , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT T1.continent , T1.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 0;
SELECT count(*) FROM countries AS T1;
SELECT T1.FullName , T1.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 0
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 0
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Horsepower ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.ModelId = T2.id ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.id WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year = 1970;
SELECT T2.maker , T2.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id ORDER BY T1.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.year > 1980;
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryname ORDER BY count(*) DESC LIMIT 1;
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 0
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id , T1.fullName ORDER BY count(*) DESC LIMIT 1000;
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'Amc' AND T2.Model = 'Hornet Sportabout' AND T1.Year = 2004
SELECT max(T1.Accelerate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'amc hornet sportabout' AND T1.model = 'sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.countryid WHERE t2.countryname = 'France'
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE T2.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8;
SELECT min(weight) FROM cars_data WHERE cylindrums = 8 AND YEAR = 1974;
SELECT DISTINCT maker , model FROM model_list
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryID = T2.CountryID GROUP BY T1.id HAVING COUNT(*) > 0 {}
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id HAVING COUNT(*) > 0 {}
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT max(T2.Horsepower) , T1.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING count(*) >= 1;
SELECT max(T2.Horsepower) , T1.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING max(T2.Horsepower) > 0 LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid GROUP BY T2.model ORDER BY max(T1.MPG) DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid ORDER BY T1.mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.make = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accrate) != 0;
SELECT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.make = 'Automobile' GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
1980 YEAR = 45276504 / (SELECT count(*) FROM cars_data WHERE YEAR = 1980)
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.FullName = 'American Motor Company'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.countryname = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3;
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3;
SELECT DISTINCT T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T1.country = "United States" AND T2.weight > 3500 OR T1.fullname = "General Motors"
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'General Motors' OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000;
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Maker = 'Volvo')
SELECT min(Cylinders) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.make = 'Volvo'
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data WHERE horsepower = (SELECT max(horsepower) FROM cars_data))
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6;
SELECT count(*) FROM cars_data WHERE cylinders > 6;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 4 GROUP BY T2.model ORDER BY sum(T1.horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.horsepower > (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT T1.makeid , T1.fullname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.cylinders <= 3 {}
SELECT T1.id , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.horsepower < (SELECT min(horsepower) FROM cars_data GROUP BY horsepower ORDER BY horsepower ASC LIMIT 1) INTERSECT SELECT id , make FROM car_names WHERE cylinders < 4;
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 AND YEAR < 1980;
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.weight < 3500 EXCEPT SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T2.maker = 'Ford Motor Company'
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model JOIN car_makers AS T3 ON T3.id = T2.maker WHERE T3.countryname = 'Ford'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) = 1 )
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers )
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) <= 3 {}
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.CountryID , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.countryname IN (SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) > 3) UNION SELECT T1.CountryID , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN model_list AS T3 ON T2.id = T3.maker WHERE T3.model = 'fiat'
SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.country = 'USA' AND T2.model = 'fiat' GROUP BY T1.id HAVING count(*) > 3
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'Los Angeles' AND T2.destairport = 'Los Angeles' AND T1.Airline = 'JetBlue Airways' AND T1.Country = 'United States'
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.Airline = 'Jetblue Airways' AND T1.CountryAbbrev = 'United States'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T2.ShortenedWord FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Abbreviation = 'Jetblue Airways'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA' ORDER BY Length ASC LIMIT 10000;
SELECT Airline , ShortenedWord FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'United States' AND city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT count(*) FROM (SELECT DISTINCT Airline FROM flights)
SELECT sum(airways) FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.AirportCode
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination = T2.sourceairport AND T2.country = T1.country AND T2.countryabbreviation = T1.countryabbreviation AND T2.flightno = T2.flightno AND T2.sourceairport = T2.destairport AND T2.destination = T2.sourceairport AND T2.flightno = T2.flightno AND T2.sourceairport = T2.destairport AND T2.destination = T2.sourceairport AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.sourceairport = T2.destairport AND T2.destination = T2.sourceairport AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.sourceairport = T2.destairport AND T2.destination = T2.sourceairport AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.sourceairport = T2.destairport AND T2.destination = T2.sourceairport AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno = T2.flightno AND T2.flightno =
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T2.SourceAirport = 'AKO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = T1.airportcode AND T1.airportcode = 'AKO'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = 'Aberdeen'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.CountryAbbrev = 'United Kingdom' AND T1.City = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'APG'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'United States' AND terminal = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND destinationairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND flightno = 'Ato'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destinationairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen') AND destairport IN (SELECT airportcode FROM airports WHERE city = 'Ashley')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Abbreviation = 'United' AND T2.countryabbreviation = 'United States' AND T1.sourceairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "United States" AND T1.sourceairport = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrv WHERE T2.city = 'Aberdeen' AND T3.countryabbreviation = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'United' AND T2.countryabbreviation = 'United States' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Aircode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.Aircode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.Aircode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport GROUP BY T1.Aircode ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country , T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport GROUP BY T1.country , T1.airline ORDER BY count(*) LIMIT 1;
SELECT T1.country , T2.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T2.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = 'United States' AND T1.SourceAirport = 'AHD'
SELECT T2.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T2.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = 'United States' AND T1.SourceAirport = 'AHD'
SELECT T2.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'Ahd' AND T1.sourceairport = 'Ahd'
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' INTERSECT SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Germany'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.AirportCode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = "APG" INTERSECT SELECT T3.AirportCode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = "CVO")
SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'France' EXCEPT SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' INTERSECT SELECT T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T1.destinationairport = T2.airportcode WHERE T2.country = 'France'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.sourceairport = 'APG'
SELECT T2.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.Airway HAVING count(*) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airway HAVING count(*) < 200;
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200;
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Country' AND T2.countryabbreviation = 'CountryAbbrev' AND T1.destairport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "Australia" AND T1.destairport = "APG"
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE CountryAbbrev = "United Kingdom")
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "United Kingdom" AND T1.sourceairport = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'Aberdeen' UNION SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'Abilene'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport != 'V' AND T2.destinationairport != 'F'
SELECT city , country FROM airports WHERE airportcode NOT IN ( SELECT sourceairport , destairport FROM flights )
SELECT count(*) FROM employee
SELECT count(*) FROM employee AS T1;
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) != 0;
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) > 0
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , T1.city FROM shop AS T1 JOIN shop AS T2 ON T1.location = T2.location GROUP BY T1.city HAVING count(*) > 0
SELECT count(*) , city FROM shop GROUP BY city HAVING count(*) != 0;
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT T1.name , T1.district FROM shop AS T1 JOIN (SELECT shop_id , count(*) FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1) AS T2 ON T1.shop_id = T2.shop_id WHERE T2.count(*) = (SELECT count(*) FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1)
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
SELECT min(Number_products) , max(Number_products) FROM shop AS T1;
SELECT T1.name , T1.district , T1.city FROM shop AS T1 JOIN (SELECT T2.shop_id , count(*) AS num_commodities FROM shop AS T2 JOIN shop AS T3 ON T2.shop_id = T3.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC) AS T4 ON T1.shop_id = T4.shop_id;
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = 2019 ORDER BY T2.bonus DESC LIMIT 1;
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name HAVING count(*) > 0 {}
SELECT count(*) , T2.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id HAVING count(*) > 0
SELECT sum(T1.Bonus) FROM evaluation AS T1 WHERE T1.Year_awarded != 0;
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.name = 'Extra'
{ "sql": "SELECT * FROM hiring AS T1"} {"sql": "SELECT * FROM hiring AS T1"}
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000;
SELECT district FROM shop WHERE number_products < 3000 EXCEPT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT location) FROM shop;
SELECT count(DISTINCT location) FROM shop AS T1
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_id , document_name , document_description FROM Documents WHERE document_type_code = 'Paper'
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T2.paragraph_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT document_id , template_id , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_id , template_id , document_description FROM Documents WHERE document_name = \"Robbin CV\"
SELECT count(DISTINCT document_id) FROM documents GROUP BY document_id HAVING count(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(DISTINCT document_name) FROM Documents WHERE document_type = 'text'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , t1.layout_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.layout_id;
SELECT count(*) , T2.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.layout_id HAVING count(*) > 0
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM Templates GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT template_id FROM Documents WHERE document_id NOT IN (SELECT document_id FROM Paragraphs) UNION SELECT template_id FROM Templates WHERE template_type_code = \"Paper\" UNION SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) >= 1;
SELECT count(*) FROM Templates
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Date_Effective_To - T2.Date_Effective_From > 0
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Layouts AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T1.edition_number , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Templates
SELECT template_id FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "PP" OR template_type_description = "PPT")
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = 'CV'
SELECT edition_number , layout_type FROM Layouts WHERE edition_number > 5;
SELECT edition_number , layout_type_name FROM Layout WHERE edition_number > 6
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code HAVING count(*) > 0
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3;
SELECT min(Date_Effective_To) , date_effective_from FROM Templates ORDER BY Date_Effective_To ASC LIMIT 1;
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code;
SELECT T1.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Data base"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\" AND T1.template_type_code IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1)
SELECT document_name FROM documents WHERE template_id IN ( SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID JOIN Templates AS T3 ON T3.Template_ID = T2.Template_ID WHERE T3.template_type_code = "BK"
SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code;
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 5;
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description != 'Text File' UNION SELECT template_type_code FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates) UNION SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT t1.template_type_description , t2.template_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id WHERE t3.document_name IN (SELECT document_name FROM paragraphs GROUP BY document_name HAVING count(*) > 0)
SELECT DISTINCT T1.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code IN ( SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1 )
SELECT template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "Presentation"
SELECT t1.template_id FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_description LIKE '%Presentation%'
SELECT count(*) FROM Paragraphs AS T1
SELECT count(*) FROM (SELECT DISTINCT paragraph_id FROM paragraphs)
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = \"Summer Show\"
SELECT T1.Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_Text = "Korea"
SELECT Other_Details FROM PARAGRANS WHERE Paragraph_Text LIKE '%Korea%'
SELECT T1.Paragraph_ID , T2.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1 paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC;
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id, T2.document_name;
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) > 0
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1 OFFSET 0;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT T1.paragraph_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Brazil" INTERSECT SELECT T1.paragraph_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Ireland"
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name;
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age
SELECT age , hometown FROM teacher
SELECT age , hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE age != 'Little Lever Urban District' AND Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT T1.Hometown FROM teacher AS T1 JOIN (SELECT Teacher_ID FROM teacher ORDER BY Age ASC LIMIT 1) AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Name != \"\" AND T1.Age = min(T2.age)
SELECT name FROM teacher ORDER BY age ASC LIMIT 1;
SELECT count(*) , T2.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Hometown;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1000000;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Name != T2.Name AND T1.Hometown = T2.Hometown GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING COUNT(*) >= 2;
SELECT T2.Name , T3.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T1.course_id = T3.course_id
SELECT T1.Name , T2.Curriculum FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name , T3.Curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id ORDER BY T1.Name ASC;
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course_id IN (SELECT course_id FROM course WHERE COURSE = "Math")
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course_id = 'Math'
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) > 0
SELECT T2.Name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING count(*) > 0
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2;
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2;
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT T1.teacher_id FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != '4' AND LEVEL_OF_MEMBERSHIP != '5' AND LEVEL_OF_MEMBERSHIP != '6' AND LEVEL_OF_MEMBERSHIP != '7' AND LEVEL_OF_MEMBERSHIP != '8' AND LEVEL_OF_MEMBERSHIP != '9' AND LEVEL_OF_MEMBERSHIP != '10' AND LEVEL_OF_MEMBERSHIP != '11' AND LEVEL_OF_MEMBERSHIP != '12' AND LEVEL_OF_MEMBERSHIP != '13' AND LEVEL_OF_MEMBERSHIP != '14' AND LEVEL_OF_MEMBERSHIP != '15' AND LEVEL_OF_MEMBERSHIP != '16' AND LEVEL_OF_MEMBERSHIP != '17' AND LEVEL_OF_MEMBERSHIP != '18' AND LEVEL_OF_MEMBERSHIP != '19' AND LEVEL_OF_MEMBERSHIP != '20' AND LEVEL_OF_MEMBERSHIP != '21' AND LEVEL_OF_MEMBERSHIP != '22' AND LEVEL_OF_MEMBERSHIP != '23' AND LEVEL_OF_MEMBERSHIP != '24' AND LEVEL_OF_MEMBERSHIP != '25' AND LEVEL_OF_MEMBERSHIP != '26' AND LEVEL_OF_MEMBERSHIP != '27' AND LEVEL_OF_MEMBERSHIP != '28' AND LEVEL_OF_MEMBERSHIP != '29' AND LEVEL_OF_MEMBERSHIP != '30' AND LEVEL_OF_MEMBERSHIP != '31' AND LEVEL_OF_MEMBERSHIP != '32' AND LEVEL_OF_MEMBERSHIP != '33' AND LEVEL_OF_MEMBERSHIP != '34' AND LEVEL_OF_MEMBERSHIP != '35' AND LEVEL_OF_MEMBERSHIP != '36' AND LEVEL_OF_MEMBERSHIP != '37' AND LEVEL_OF_MEMBERSHIP != '38' AND LEVEL_OF_MEMBERSHIP != '39' AND LEVEL_OF_MEMBERSHIP != '40' AND LEVEL_OF_MEMBERSHIP != '41' AND LEVEL_OF_MEMBERSHIP != '42' AND LEVEL_OF_MEMBERSHIP != '43' AND LEVEL_OF_MEMBERSHIP != '44' AND LEVEL_OF_MEMBERSHIP != '45' AND LEVEL_OF_MEMBERSHIP != '46' AND LEVEL_OF_MEMBERSHIP != '47' AND LEVEL_OF_MEMBERSHIP != '48' AND LEVEL_OF_MEMBERSHIP != '49' AND LEVEL_OF_MEMBERSHIP != '50' AND LEVEL_OF_MEMBERSHIP != '51' AND LEVEL_OF_MEMBERSHIP != '52' AND LEVEL_OF_MEMBERSHIP != '53' AND LEVEL_OF_MEMBERSHIP != '54' AND LEVEL_OF_MEMBERSHIP != '55' AND LEVEL_OF_MEMBERSHIP != '56' AND LEVEL_OF_MEMBERSHIP != '57' AND LEVEL_OF_MEMBERSHIP != '58' AND LEVEL_OF_MEMBERSHIP != '59' AND LEVEL_OF_MEMBERSHIP != '60' AND LEVEL_OF_MEMBERSHIP != '61' AND LEVEL_OF_MEMBERSHIP != '62' AND LEVEL_OF_MEMBERSHIP != '63' AND LEVEL_OF_MEMBERSHIP != '64' AND LEVEL_OF_MEMBERSHIP != '65' AND LEVEL_OF_MEMBERSHIP != '66' AND LEVEL_OF_MEMBERSHIP != '67' AND LEVEL_OF_MEMBERSHIP != '68' AND LEVEL_OF_MEMBERSHIP != '69' AND LEVEL_OF_MEMBERSHIP != '70' AND LEVEL_OF_MEMBERSHIP != '71' AND LEVEL_OF_MEMBERSHIP != '72' AND LEVEL_OF_MEMBERSHIP != '73' AND LEVEL_OF_MEMBERSHIP != '74' AND LEVEL_OF_MEMBERSHIP != '75' AND LEVEL_OF_MEMBERSHIP != '76' AND LEVEL_OF_MEMBERSHIP != '77' AND LEVEL_OF_MEMBERSHIP != '78' AND LEVEL_OF_MEMBERSHIP !=
visitor.Name , visitor.Level_of_membership , visitor.Age FROM visitor WHERE visitor.Level_of_membership > 4 ORDER BY visitor.Age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(open_year) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT T1.museum_id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT total_spent FROM visit GROUP BY total_spent ORDER BY total_spent DESC LIMIT 1)
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.name;
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1;
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011;
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id;
SELECT count(*) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id;
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(*) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(T1.loser_age) , avg(T2.winner_age) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id WHERE T3.country_code != 'USA' AVG(T1.loser_age) , AVG(T2.winner_age) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id WHERE T3.country_code != 'USA' GROUP BY T1.loser_id , T2.winner_id.average()
SELECT avg(T1.loser_age) , avg(T2.winner_age) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id UNION SELECT avg(T1.loser_age) , avg(T2.loser_age) FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id WHERE T1.match_num = 1 AND T2.tourney_name = "Final" AVG(T1.loser_age) , AVG(T2.winner_age) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = 1 AND T2.tourney_name = "Final"
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id;
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.country_code = 'USA'
SELECT max(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.country_code != \"USA\" AND T2.birth_date != \"1970-01-01\" ORDER BY T1.ranking DESC LIMIT 1;
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.ranking ORDER BY avg(T2.losser_rank_points) DESC LIMIT 1;
SELECT count(DISTINCT player_id) FROM players GROUP BY player_id;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM matches WHERE winner_id IS NULL;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT T2.tourney_name FROM rankings AS T1 JOIN players AS T2 ON T1.ranking = T2.player_id JOIN MATCHES AS T3 ON T1.match_num = T3.match_num GROUP BY T2.tourney_name HAVING count(*) > 10;
SELECT T1.tourney_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.tourney_id HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 AND T2.match_num IN (SELECT T2.match_num FROM matches AS T2 WHERE T2.year = 2016)
SELECT T1.name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016;
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA" INTERSECT SELECT T3.first_name , T3.last_name , T3.country_code FROM players AS T3 JOIN MATCHES AS T4 ON T3.player_id = T4.winner_id WHERE T4.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN players ORDER BY T1.birth_date LIMIT 1 OFFSET 0 WHERE T1.birth_date = (SELECT min(birth_date) FROM players)
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.winner_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.loser_name , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM MATCHES)
SELECT T1.tourney_name , T2.tourney_name FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT avg(T1.ranking) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name;
SELECT T1.first_name , T1.last_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking_points) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0 ORDER BY sum(T2.ranking_points) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
{ "sql": "SELECT count(*) , country_code FROM players GROUP BY country_code"} {"sql": "SELECT count(*) , country_code FROM players GROUP BY country_code"}
SELECT T1.abbr FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT abbrev FROM players GROUP BY abbrev ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country_code , T2.abbr FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT T1.country_code , T2.abbr FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date ORDER BY ranking_date DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT sum(T1.tours) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking ORDER BY T2.ranking_points DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , YEAR FROM matches GROUP BY YEAR HAVING count(*) > 0 {}
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.ranking , T2.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id ORDER BY T2.birth_date LIMIT 3;
SELECT T1.name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.birth_date LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\" GROUP BY T1.winner_id HAVING count(*) > 1 {}
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = \"left\" AND T2.tourney_name = \"WTA Championships\"
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(T1.killed) , min(T1.killed) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT avg(injured) FROM death AS T1;
SELECT T1.injured , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.ship_type = 'Brig' AND T2.note = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10;
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.bulgarian_commander = T2.id WHERE T2.name = 'bulgarian_commander' AND T1.latin_commander = 'latin_commander'
SELECT count(DISTINCT result) FROM battle;
SELECT count(*) FROM battle WHERE result != 'Lost' AND ship.tonnage != 225;
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.name = 'Lettice' UNION SELECT T3.name , T3.date FROM ship AS T3 JOIN battle AS T4 ON T3.id = T4.lost_in_battle WHERE T3.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.killed = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses AS T1;
SELECT count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id;
SELECT count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id;
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM Degree Programs AS T1 JOIN Department AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name FROM Degree_Programs AS T1 JOIN SECTION_PROGRAMS AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs AS T1
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs AS T1 JOIN SECTION_PROGRAMS AS T2 ON T1.degree_program_id = T2.degree_program_id
SELECT count(*) FROM (SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Engineering')
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = \"Engineering\"
SELECT course_name , course_description FROM courses AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id
SELECT course_name , course_description FROM courses UNION SELECT section_name , section_description FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTIONAS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2;
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM SECTION ORDER BY section_name DESC
SELECT T1.course_name , T1.semester_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN semesters AS T3 ON T2.semester_id = T3.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name , T1.semester_id , count(*) FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1;
SELECT other_details FROM courses WHERE course_name LIKE '%the computer%'
SELECT T1.department_description FROM departments AS T1 JOIN student_enrolment_courses AS T2 ON T1.department_id = T2.department_id WHERE T2.course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = \"2nd degree\" GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.middle_name , T1.student_id , T1.other_details FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2-Year Bachelor' GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors' {}
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_id , T1.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) , T1.undergraduate_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT course_id FROM student_enrolment_courses)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT course_id FROM student_enrolment_courses)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) > 0;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN degree_programs AS T3 ON T1.student_id = T3.student_id WHERE T3.degree_program_id = null;
SELECT T1.last_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id IN (SELECT T3.current_address_id FROM addresses AS T3 JOIN students AS T4 ON T3.address_id = T4.current_address_id WHERE T3.state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id IN (SELECT T3.current_address_id FROM addresses AS T3 JOIN students AS T4 ON T3.address_id = T4.current_address_id WHERE T3.state_province_county = 'South Carolina') INTERSECT SELECT T1.last_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id IN (SELECT T3.current_address_id FROM addresses AS T3 JOIN students AS T4 ON T3.address_id = T4.current_address_id WHERE T3.state_province_county = 'Georgia')
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = 'Timothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN courses AS T2 ON T1.current_address_id = T2.current_address_id WHERE T1.date_first_registered = (SELECT min(date_first_registered) FROM students)
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_3 != T1.current_address_id;
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.permanent_address_id != T2.address_id;
SELECT T1.address_id , T1.line_1 , T1.other_address_details FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students;
SELECT avg(date_first_registered) FROM students;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts AS T1
SELECT count(*) FROM students AS T1
SELECT count(*) FROM students AS T1;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_last_modified FROM students ORDER BY date_last_modified DESC LIMIT 1;
SELECT count(*) , student_enrolment_id FROM student_enrolment_courses GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_id , count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1; SELECT T1.course_id , T1.student_enrolment_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transparencies AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT student_id FROM student_enrolment AS T1 JOIN transcript_contents AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1; SELECT
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id IN (SELECT T4.current_address_id FROM students AS T4 JOIN student_enrolment_courses AS T5 ON T4.student_id = T5.student_id WHERE T5.degree_program_id = 2) AND T3.current_address_id IN (SELECT T4.current_address_id FROM students AS T4 JOIN student_enrolment_courses AS T5 ON T4.student_id = T5.student_id WHERE T5.degree_program_id = 1)
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2 AND T1.semester_id IN (SELECT T3.semester_id FROM Student_Enrolment AS T3 JOIN Student_Enrolment_Courses AS T4 ON T3.student_enrolment_id = T4.student_enrolment_id WHERE T4.course_id = 4) INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 3 AND T1.semester_id IN (SELECT T3.semester_id FROM Student_Enrolment AS T3 JOIN Student_Enrolment_Courses AS T4 ON T3.student_enrolment_id = T4.student_enrolment_id WHERE T4.course_id = 5)
SELECT count(DISTINCT current_address_id) FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T1.current_address_id HAVING count(*) > 0
SELECT DISTINCT T1.city , T1.state_province_county FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T2.date_first_registered != \"null\" AND T2.date_left != \"null\"
SELECT * FROM students ORDER BY current_student_details DESC
SELECT * FROM students ORDER BY other_student_details DESC
SELECT course_description FROM courses WHERE course_id IN ( SELECT course_id FROM sections WHERE section_name = 'h' )
SELECT course_description FROM courses WHERE course_name LIKE '%h%'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = "09700166582"
SELECT title FROM animation ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title
SELECT T2.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\";
SELECT count(*) FROM cartoon WHERE Written_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.Written_by = T2.Directed_by WHERE T2.Written_by = 'Joseph Kuhr'
SELECT T1.title , T2.directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id ORDER BY T2.air_date ASC;
SELECT T1.Title , T2.Directed_by FROM cartoon AS T1 JOIN cartoon AS T2 ON T1.Channel = T2.Channel ORDER BY T2.Period_Air_date
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Brandon Vietti"
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" OR T2.Directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_CHANNEL GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , content FROM TV_channel GROUP BY series_name , content;
SELECT count(DISTINCT series_name) , content FROM TV_channel AS T1;
SELECT Content FROM TV_CHANNEL WHERE Series_name = "Sky Radio"
SELECT Content FROM TV_CHANNEL WHERE id IN ( SELECT Channel FROM TV_series WHERE Series_name = 'Sky Radio' )
SELECT Package_Option FROM TV_CHANNEL WHERE Series_Name = "Sky Radio"
SELECT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle!"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel ORDER BY t2.Rating
SELECT T1.episode , T2.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T2.rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT min(Share) , max(Share) FROM TV_series WHERE Series_name = 'TV'
SELECT max(Share) , min(Share) FROM TV_series AS T1;
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank , Score FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT id FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT Production_code , Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE content = 'HD TV'
SELECT package_option , series_name FROM TV_CHANNEL WHERE content = 'HD TV'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = "Todd Casey: Animation"
SELECT T1.state FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Todd Casey' AND T2.Written_by = 'Todd Casey'
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = 'Todd Casey' )
SELECT state FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = 'Todd Casey' )
SELECT T1.series_name , T1.country FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.content = 'Animation' AND T2.directed_by = 'Ben Jones' AND T2.directed_by = 'Michael Chang'
SELECT T1.series_name , T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'English' AND LANGUAGE != 'Catalan' AND LANGUAGE != 'Basque' AND LANGUAGE != 'Estonian' AND LANGUAGE != 'Finnish' AND LANGUAGE != 'French' AND LANGUAGE != 'German' AND LANGUAGE != 'Greek' AND LANGUAGE != 'Hebrew' AND LANGUAGE != 'Hindi' AND LANGUAGE != 'Italian' AND LANGUAGE != 'Japanese' AND LANGUAGE != 'Korean' AND LANGUAGE != 'Lithuanian' AND LANGUAGE != 'Malay' AND LANGUAGE != 'Manifesto' AND LANGUAGE != 'Maori' AND LANGUAGE != 'Marathi' AND LANGUAGE != 'Russian' AND LANGUAGE != 'Sanskrit' AND LANGUAGE != 'Swedish' AND LANGUAGE != 'Ukrainian' AND LANGUAGE != 'Vietnamese' AND LANGUAGE != 'Welsh' AND LANGUAGE != 'Xhosa' AND LANGUAGE != 'Yiddish' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zapadny Kyego' AND LANGUAGE != 'Zimbabwean' AND LANGUAGE != 'Zydlany' AND LANGUAGE != 'Chinese' AND LANGUAGE != 'Portuguese' AND LANGUAGE != 'Punjabi' AND LANGUAGE != 'Polski' AND LANGUAGE != 'Romansch' AND LANGUAGE != 'Russo' AND LANGUAGE != 'Tamil' AND LANGUAGE != 'Turkish' AND LANGUAGE != 'Uzbek' AND LANGUAGE != 'Ukraine' AND LANGUAGE != 'Urdu' AND LANGUAGE != 'Uganda' AND LANGUAGE != 'Umbundu' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Boliviano' AND LANGUAGE != 'Bulgarian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bengali' AND LANGUAGE != 'Burmese' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosnian' AND LANGUAGE != 'Bosn
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English' AND LANGUAGE != 'Russian' AND LANGUAGE != 'Spanish' AND LANGUAGE != 'French' AND LANGUAGE != 'German' AND LANGUAGE != 'Italian' AND LANGUAGE != 'Japanese' AND LANGUAGE != 'Korean' AND LANGUAGE != 'Catalan' AND LANGUAGE != 'Lithuanian' AND LANGUAGE != 'Polish' AND LANGUAGE != 'Portuguese' AND LANGUAGE != 'Punjabi' AND LANGUAGE != 'Bengali' AND LANGUAGE != 'Hindi' AND LANGUAGE != 'Hebrew' AND LANGUAGE != 'Arabic' AND LANGUAGE != 'Afrikaans' AND LANGUAGE != 'Dutch' AND LANGUAGE != 'Danish' AND LANGUAGE != 'Dari' AND LANGUAGE != 'Estonian' AND LANGUAGE != 'Esperanto' AND LANGUAGE != 'Finnish' AND LANGUAGE != 'Galician' AND LANGUAGE != 'Georgian' AND LANGUAGE != 'Guarani' AND LANGUAGE != 'Icelandic' AND LANGUAGE != 'Haiti' AND LANGUAGE != 'Hausa' AND LANGUAGE != 'Hawaiian' AND LANGUAGE != 'Hindi' AND LANGUAGE != 'Hmong' AND LANGUAGE != 'Hungarian' AND LANGUAGE != 'Itek' AND LANGUAGE != 'Irish' AND LANGUAGE != 'Inuit' AND LANGUAGE != 'Italiano' AND LANGUAGE != 'Japanese' AND LANGUAGE != 'Kannada' AND LANGUAGE != 'Laotian' AND LANGUAGE != 'Malay' AND LANGUAGE != 'Maori' AND LANGUAGE != 'Mongolian' AND LANGUAGE != 'Pashto' AND LANGUAGE != 'Persian' AND LANGUAGE != 'Punjabi' AND LANGUAGE != 'Russian' AND LANGUAGE != 'Sindhi' AND LANGUAGE != 'Slovak' AND LANGUAGE != 'Slovenian' AND LANGUAGE != 'Swahili' AND LANGUAGE != 'Tagalog' AND LANGUAGE != 'Tamil' AND LANGUAGE != 'Turkish' AND LANGUAGE != 'Uganda' AND LANGUAGE != 'Vietnamese' AND LANGUAGE != 'Welsh' AND LANGUAGE != 'Xhosa' AND LANGUAGE != 'Yiddish' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zazao' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zimbabwean' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zhuyin' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zhutong' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu' AND LANGUAGE != 'Zulu'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel GROUP BY id HAVING count(*) >= 3;
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN (SELECT T1.id FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\"
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT Money_Rank FROM poker_player WHERE People_ID IN ( SELECT People_ID FROM people WHERE Nationality = \"Car Gamer\" ORDER BY Earnings DESC LIMIT 1 )
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 GROUP BY T1.Final_Table_Made HAVING count(*) > 1
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000;
SELECT Name FROM people WHERE Nationality = "Car Gamer"
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = "Car"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000 AND T1.Nationality == \"Car\";
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.People_ID ORDER BY count(*) ASC;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people) ORDER BY T1.Money_Rank DESC LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 GROUP BY avg(T1.Earnings) HAVING avg(T1.Earnings) > 50000;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID JOIN car_gamer AS T3 ON T3.People_ID = T1.People_ID ORDER BY T3.Earnings DESC;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car" ORDER BY T2.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) >= 1
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2;
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality <> \"Russia\";
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM Poker_player)
SELECT Name FROM people WHERE People_ID NOT IN ( SELECT People_ID FROM Poker_player )
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people;
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state AS T1 JOIN contestants AS T2 ON T1.state = T2.state WHERE T2.contestant_name != \"null\"
SELECT max(created) FROM VOTES WHERE state = \"CA\"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T1.state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = \"Tabatha Gehling\"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%' OR contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'Caribbean'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Region = T2.Region WHERE T1.Continent = "Caribbean" AND T2.Continent = "Caribbean"
Anguilla is located in the Caribbean continent.
Anguilla belongs to the continent of Africa.
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.Capital = 'Kabul'
Kabul is located in the region of Afghanistan.
SELECT Language FROM countrylanguage WHERE CountryCode = 'Aruba' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode = 'Aruba' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Population , Lifeexpectancy FROM country WHERE CountryCode = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "Brazil"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola"
Angola belongs to the continent of Africa and has a population of approximately 10 million. The number of residents for Angola is 10 million.
SELECT avg(LifeExpectancy) FROM country WHERE Region = \"Central Africa\"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
Asia = (SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1)
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T1.lifeexpectancy ASC LIMIT 1;
SELECT sum(Population) , max(GNPOld) FROM country WHERE Continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND Continent = "African"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Name = T2.Name AND T1.Region = T2.Region UNION SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.Continent = T2.Continent WHERE T1.Name = T2.Name AND T1.Region = T2.Region;
SELECT sum(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe')
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'USA'
SELECT avg(gnp) , count(*) FROM country WHERE code = 'USA'
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "World"
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "World"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.code WHERE T2.countrycode = "Aruba"
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' AND T2.percentage > 0.5 OR T2.language = 'Dutch' AND T2.percentage > 0.5
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = 'Yes' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French' AND T2.isofficial = 'Yes'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT count(DISTINCT T1.continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Chinese"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT Language FROM countrylanguage WHERE CountryCode IN ( SELECT CountryCode FROM country WHERE Continent = 'Asia' GROUP BY Language ORDER BY count(*) DESC LIMIT 1 )
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM city WHERE population = (SELECT max(population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English')
SELECT name , population , lifeexpectancy FROM country WHERE surfacearea = (SELECT max(surfacearea) FROM country) AND continent = "Asia"
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = \"Beatrix\" AND T2.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.Language != "English" AND T2.Language != "Esperanto" AND T2.Language != "Estonian" AND T2.Language != "Finnish" AND T2.Language != "German" AND T2.Language != "Greek" AND T2.Language != "Italian" AND T2.Language != "Japanese" AND T2.Language != "Lithuanian" AND T2.Language != "Malay" AND T2.Language != "Norwegian" AND T2.Language != "Polish" AND T2.Language != "Portuguese" AND T2.Language != "Russian" AND T2.Language != "Swedish" AND T2.Language != "Ukrainian" AND T2.Language != "Vietnamese" WHERE T2.Language = "English" AND T2.Percentage > 50%
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage > 0 AND T2.IsoCountry = "ISO 639-2" AND T1.IncorporationYear < 1930;
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Percentage < 100 AND T2.District < 1930
SELECT name FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE continent = 'Europe' ORDER BY surfacearea DESC LIMIT 1)
SELECT name FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE continent = 'Europe' ORDER BY surfacearea DESC LIMIT 1)
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia' UNION SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa') INTERSECT SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE code != 'English' UNION SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT stateAbbreviation FROM country WHERE code NOT IN (SELECT language FROM countrylanguage WHERE language = 'English')
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English' AND T2.IsOfficial = 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language <> 'English' {}
SELECT name FROM country WHERE code != 31 AND governmentform != 'Republic' AND language != 'English'
SELECT code FROM country WHERE code2 != 'Republic' EXCEPT SELECT code FROM countrylanguage WHERE language = 'English'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English' AND T2.isofficial = 0 AND T1.countrycode IN (SELECT code FROM country WHERE continent = 'Europe')
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != 'English' AND T2.IsOfficial = 0
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Chinese' AND T1.countrycode IN ( SELECT countrycode FROM country AS T3 WHERE t3.continent = 'Asia')
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" AND T1.CountryCode IN (SELECT Code FROM country WHERE Continent = "Asia")
SELECT name , population , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT T1.name , T1.yearoffounding , T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population LIMIT 1;
SELECT count(*) , T1.name , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.population) DESC LIMIT 1;
SELECT name , population , head_of_state FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3 {}
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2 {}
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT governmentform , sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72;
SELECT sum(Population) , GovernmentForm FROM country GROUP BY GovernmentForm HAVING avg(LifeExpectancy) > 72
SELECT avg(LifeExpectancy) , count(*) FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72;
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 5;
SELECT name , region FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Europe' AND T2.population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT count(*) , avg(population) FROM country WHERE continent = 'North America' AND population > 3000 ;
SELECT sum(T1.population) , avg(T1.surfacearea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'North America' AND T2.surfacearea > 3000 GROUP BY T1.name;
SELECT name FROM city WHERE population >= 16000 AND population <= 90000;
SELECT name FROM city WHERE population >= 16000 AND population <= 900000;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Language , T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Population != \"null\" GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1;
SELECT T1.name , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.code WHERE T1.Language = "Spanish" GROUP BY T1.Language ORDER BY sum(Percentage) DESC LIMIT 1;
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > 0.5
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code HAVING sum(T2.percentage) >= 50%
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA' AND Nationality NOT IN (SELECT Nationality FROM conductor WHERE Nationality = 'USA')
SELECT Name FROM conductor WHERE Nationality <> \"USA\";
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 1000000;
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 1000000;
SELECT avg(Attendance) FROM show AS T1;
SELECT avg(Attendance) FROM show AS T1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != \"Live final\";
SELECT count(DISTINCT Name) FROM conductor AS T1
SELECT count(DISTINCT Name) FROM conductor AS T1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Date DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year = (SELECT max(YEAR) FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID) ORDER BY T2.Year DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1;
SELECT T1.Name , T2.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) >= 1 {}
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 2;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 3;
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 0 {}
SELECT T2.Record_Company FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Record_Company ORDER BY COUNT(*) ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM conductor EXCEPT SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT * FROM performance EXCEPT SELECT T1.* FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded > 2003;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded < 2003 AND T2.Year_of_Founded > 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded > 2003 AND T2.Year_of_Founded < 2003
SELECT count(*) FROM performance WHERE TYPE = \"CD\" OR TYPE = \"DVD\"
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T1.type = \"CD\" OR T1.type = \"DVD\"
SELECT T2.Year_of_Foundation FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_of_Foundation HAVING COUNT(*) > 1
SELECT T1.Year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Year_of_founded HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler AS T1 {}
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 'Kyle' ID: 5
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) , grade FROM highschooler GROUP BY grade;
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4;
SELECT T1.id , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT count(*) , T1.id FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM friend WHERE friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T2.liked_id = T3.id WHERE T3.friend_id IN (SELECT id FROM highschooler) AND T3.student_id IN (SELECT id FROM highschooler)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.student_id WHERE T3.friend_id IN (SELECT student_id FROM highschooler) AND T1.id NOT IN (SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.student_id WHERE T3.friend_id IN (SELECT T4.id FROM highschooler AS T4 JOIN likes AS T5 ON T4.id = T5.liked_id) AND T3.student_id IN (SELECT T4.id FROM highschooler AS T4 JOIN likes AS T5 ON T4.id = T5.liked_id)
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT count(*) , student_id FROM likes GROUP BY student_id;
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 AND count(*) >= 2;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING avg(T2.grade) > 5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) >= 2 {}
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = \"Kyle\"
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T2.grade) > 0 Average grade of students with friends: 39.5%
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT id FROM friend GROUP BY id HAVING count(*) > 0)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT id FROM friend GROUP BY id HAVING count(*) > 0)
SELECT state FROM owners WHERE guardian != 'No' INTERSECT SELECT state FROM owners WHERE veterinarian != 'No'
SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state IN (SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'IL' AND T2.city = 'Chicago') INTERSECT SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'IL' AND T2.city = 'Springfield' UNION SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'IL' AND T2.city = 'Springfield'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Dogs need medical attention"
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Health"
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2;
SELECT T2.id , T2.last_name , T2.cell_number FROM professionals AS T2 JOIN owners AS T1 ON T1.owner_id = T2.owner_id WHERE T1.state = \"Indiana\" UNION SELECT T3.id , T3.last_name , T3.cell_number FROM professionals AS T3 JOIN treatments AS T4 ON T3.professional_id = T4.professional_id GROUP BY T3.id HAVING count(*) > 2
SELECT name FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.dog_id HAVING sum(cost_of_treatment) >= 1000 )
SELECT T2.name FROM charges AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment > 1000 FOR HEALTH-CARE
SELECT first_name FROM professionals WHERE role_code = \"guardian\" EXCEPT SELECT first_name FROM owners WHERE last_name = \"Dog\" UNION SELECT first_name FROM dogs WHERE name != \"dog\" AND first_name NOT IN (SELECT first_name FROM professionals WHERE role_code = \"dog\")
SELECT first_name FROM owners WHERE owner_id IN (SELECT owner_id FROM professionals WHERE role_code = \"guardian\") EXCEPT SELECT first_name FROM dogs WHERE owner_id IN (SELECT owner_id FROM professionals WHERE role_code = \"dog guardian\")
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT T1.id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog' EXCEPT SELECT T1.id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.role , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_code = 'Puppy' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Charges AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN T3 AS T2 ON T1.owner_id = T2.owner_id JOIN T4 AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t3.treatment_type_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_type = t2.treatment_type_code JOIN dogs AS t3 ON t2.dog_id = t3.dog_id ORDER BY sum(cost_of_treatment) ASC LIMIT 1;
SELECT T1.treatment_type_description FROM treatments AS T1 JOIN t3 ON T1.dog_id = T3.dog_id GROUP BY T1.dog_id ORDER BY sum(T1.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T1.home_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.treatment_id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treats AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'Vet'
SELECT T1.date_of_treatment , T2.first_name FROM treats AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.charge_type , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.treatment_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treats AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
{ "sql": "SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name HAVING T2.weight > 100"} {"sql": "SELECT T3.first_name , T3.last_name , T4.size_description FROM Owners AS T3 JOIN Dogs AS T4 ON T3.owner_id = T4.owner_id GROUP BY T3.first_name , T3.last_name"}
{ "sql": "SELECT T1.first_name , T1.last_name , T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name"
SELECT T1.name , T2.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id HAVING count(*) >= 3 AND count(*) <= 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = "P" UNION SELECT T3.first_name , T3.name FROM owners AS T3 JOIN dogs AS T4 ON T3.owner_id = T4.owner_id WHERE T4.gender = "F"
SELECT T1.name , T3.date_of_birth FROM dogs AS T1 JOIN treats AS T2 ON T1.dog_id = T2.dog_id JOIN charges AS T3 ON T2.charge_id = T3.charge_id WHERE T1.breed_code = 'Rarest' ORDER BY T3.date_of_birth ASC LIMIT 1;
Rarest Breed: The rarest breed among all breeds is the Border Collie. Their medical care date is March 14, 2006.
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia' AND T1.city = 'Richmond'
SELECT T1.name , T4.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN breeds AS T4 ON T2.breed_code = T4.breed_code WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age ASC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth LIMIT 1;
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_dejected FROM Dogs WHERE breed_code = \"Puppy\"
SELECT date_arrived , date_departed FROM Dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'Puppy' AND T1.treatment_type_code = 'Health'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id JOIN treatment_types AS t3 ON t2.treatment_type_code = t3.treatment_type_code WHERE t3.treatment_type_description = 'health'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Puppy'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'puppy'
SELECT T1.role_code , T1.street , T1.city , T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T2.role_code , T1.street , T1.city , T1.state FROM veterinarians AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND gender = 'Puppy'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges ORDER BY charge_date DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' EXCEPT SELECT count(*) FROM treatments;
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy Health Care'
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code != 'Puppy'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'Puppy' )
SELECT count(*) FROM professionals WHERE role_code = 'VETERINARIAN' EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = 'Puppy'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "Puppy" AND T1.first_name != \"null\" AND T1.last_name != \"null\";
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1 {}
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT age FROM dogs WHERE breed_code = 'Puppy' ORDER BY age DESC LIMIT 1;
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , cell_number , home_phone FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM professionals
{ "sql": "SELECT DISTINCT breed_name , size_description FROM sizes AS T1 JOIN breeds AS T2 ON T1.size_code = T2.size_code"} {"sql": "SELECT DISTINCT breed_name , size_description FROM sizes AS T1 JOIN breeds AS T2 ON T1.size_code = T2.size_code"}
SELECT DISTINCT T2.breed_name , T3.size_description FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T1.size_code = T3.size_code
SELECT T2.first_name , T2.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT T2.first_name , T3.treatment_type_description FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> \"France\"
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING count(*) > 0
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT name FROM singer GROUP BY name ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Country , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country HAVING max(T2.Net_Worth_Millions) > 0
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country HAVING max(Net_Worth_Millions) != 0
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T1 ON T1.Singer_ID = T3.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY sum(T1.Sales) DESC LIMIT 1;
SELECT T2.Name , sum(T1.Sales) FROM singer AS T2 JOIN song AS T1 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING sum(T1.Sales) > 0 Total Sales For Each Vocalist NAME
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year > 1955 {}
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 AND T1.Birth_Year > 1955 GROUP BY T1.Citizenship HAVING COUNT(*) >= 2 {}
SELECT count(*) FROM Other_Available_Features AS T1;
SELECT T1.feature_type_code FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T2.property_type_description FROM OTHER_PROPERTY_FEATURES AS T1 JOIN REF_PROPERTY_Types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.property_id IN (SELECT property_id FROM Properties)
SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = \"House\" UNION SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = \"Apartment\") AND room_count > 1;
