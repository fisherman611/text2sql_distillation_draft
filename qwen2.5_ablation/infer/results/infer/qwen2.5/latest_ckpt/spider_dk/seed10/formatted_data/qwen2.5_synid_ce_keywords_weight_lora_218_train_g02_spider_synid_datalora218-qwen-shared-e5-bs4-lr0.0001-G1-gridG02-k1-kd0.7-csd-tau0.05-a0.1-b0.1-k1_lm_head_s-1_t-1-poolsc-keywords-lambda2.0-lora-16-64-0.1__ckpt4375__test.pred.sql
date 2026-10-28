SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer AS T1;
SELECT name , country FROM singer ORDER BY birthday ASC;
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(songer_id) , min(songer_id) , max(songer_id) FROM singer WHERE country = 'French'
SELECT avg(song_id) , min(song_id) , max(song_id) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE birthday = 2001
SELECT DISTINCT country FROM singer WHERE birthday = '2001'
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer ORDER BY birthday > (SELECT avg(birthday) FROM singer) LIMIT 10000;
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR > 2014 {}
SELECT count(*) FROM concert WHERE YEAR > 2014;
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.stadium_id FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , max(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT max(Highest) FROM stadium WHERE capacity < 1000000000 AND highest > 0
SELECT t1.lowest FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 1900 AND t2.stadium_name NOT IN (SELECT T1.stadium_name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id) GROUP BY t1.stadium_name ORDER BY min(T2.attendance) ASC LIMIT 1;
SELECT country FROM singer WHERE birthday LIKE \"1981-%\" OR birthday LIKE \"%1991%\"
SELECT avg(t1.average) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year != 2014;
SELECT T1.lowest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014 AND T2.year != 1985;
{ "sql": "SELECT T1.concert_Name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_Name , T2.theme"
{ "sql": "SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme"
SELECT count(*) , T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.year > 2014;
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year < 2014 OR T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%' OR song_name LIKE '%Hey%!'
SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.year = 2015
SELECT min(T1.Highest) , max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.year = 2015 {}
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT count(*) FROM Pets WHERE weight > 10;
SELECT weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0;
SELECT min(weight) FROM Pets WHERE pettype = 'Dog'
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(DISTINCT pettype) FROM Pets;
SELECT count(DISTINCT pettype) FROM pets AS T1;
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"Kitten\" INTERSECT SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"Puppy\"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "kitten" INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "puppy"
SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype != \"Kitten\";
SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.stuid NOT IN (SELECT StuID FROM has_pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = 'Kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = 'Kitten')
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten'
SELECT PetType , Weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0;
SELECT PetType , Weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0 WHERE age = 1;
SELECT petid , weight FROM Pets WHERE birthdate > '2020-01-01' AND age > 30;
SELECT petid , weight FROM Pets WHERE birthdate > '2020-01-01' AND age > 20
SELECT avg(PetID) , max(PetID) , PetType FROM Pets GROUP BY PetType;
SELECT avg(petid) , max(petid) , pettype FROM Pets GROUP BY pettype;
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype HAVING avg(petid) != 0 AND max(petid) != 0
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype;
SELECT T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid HAVING count(*) >= 1 AND count(*) <= 3
SELECT DISTINCT T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM pets)
SELECT T1.petid FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith' AND T1.petid IN (SELECT T2.petid FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith')
SELECT T1.petid FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID;
SELECT count(*) , T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1 {}
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001;
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents AS T1;
SELECT T1.continent , T1.continent_name , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent HAVING count(*) > 0
SELECT count(*) FROM countries AS T1;
SELECT count(*) FROM countries
SELECT T1.FullName , T1.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model GROUP BY T2.Model ORDER BY sum(T1.Horsepower) ASC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year >= 2005 AND T2.year <= 2006;
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year >= 2006 AND T2.year <= 2018 {}
SELECT T2.Maker , T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id ORDER BY T1.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T1Maker FROM car_names WHERE T1.year < 1980 UNION SELECT DISTINCT T1Maker FROM car_names WHERE T1.year = 1980;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.year < 1980 OR T1.year = 1980 {}
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 300000000;
SELECT count(*) , T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id , T1.fullname;
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'AMC Hornet Sportabout' AND T1.Year = 2007
SELECT max(T1.Accrate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'amc hornet sportabout' AND T1.Accrate = T2.Accarte;
SELECT count(*) FROM car_makers WHERE Country = 'Japan'
SELECT count(*) FROM car_makers WHERE Country = 'Japan'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = 'United States'
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT DISTINCT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1 {}
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 0 {}
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT max(T2.Horsepower) , T1.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING count(*) >= 1 MAX(Horsepower) , MakeID FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.Cylinders = 3 GROUP BY T1.Maker HAVING count(*) >= 1
SELECT max(T1.Horsepower) , T2.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 3 GROUP BY T2.Maker HAVING max(T1.Horsepower) > 0
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid GROUP BY T2.model ORDER BY max(T1.MPG) DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model GROUP BY T2.model ORDER BY avg(T1.mpg) DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2Maker = 'Tesla'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'Tesla'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accrate) != '0'
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4;
SELECT count(*) FROM cars_data WHERE cylinders > 4;
SELECT count(*) FROM cars_data WHERE YEAR >= 2013 AND YEAR <= 2014
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2016 AND 2018 {}
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'United States'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.countryname = 'American'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3;
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3;
SELECT DISTINCT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T1.maker = T3.id WHERE T3.country = 'USA' AND T2.weight > 3500 OR T3.country = 'Canada' AND T2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight >= 3000 AND weight <= 4000;
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000;
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM cars_data WHERE Accelerate != 'null' ORDER BY Accelerate DESC LIMIT 1;
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT max(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2 )
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6;
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model_list.id WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) EXCEPT SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.Cylinders <= 3;
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders < 4;
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 AND T2.year < 1980;
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 8 OR T1.year < 1980 {}
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.id WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'Ford Motor'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'Ford Motor'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers GROUP BY country)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) <= 3;
SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_names GROUP BY id HAVING count(*) >= 3 {}
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_names AS T2 ON T1.countryid = T2.country WHERE T2.model = 'tesla'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Country WHERE T2.make = 'tesla' OR T2.countryname = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT airportcode , airportname FROM airports WHERE country = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE country = 'USA' AND city LIKE '%Syracuse%'
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
{ "sql": "SELECT city , country FROM airports WHERE airportname LIKE '%Alton%'"} {"result": ["Alton , United States"]}
SELECT City , Country FROM airports WHERE AirportName LIKE '%Alton%'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE Country = 'United States' AND CountryAbbrev = 'Jackson'
SELECT AirportName FROM airports WHERE Country = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Country' AND T1.sourceairport = 'APG'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'United States' AND destairport = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Syracuse' AND T3.city = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = 'Syracuse' AND destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.airline = 'JetBlue' AND T2.country = 'United States'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'AHD' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "United States" AND T1.sourceairport = "AHD" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1;
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Abbreviation ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destinationairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = T3.AirportCode INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = T3.AirportCode AND T3.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = T3.AirportCode AND T3.AirportName = 'CVO'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T2.countryabbreviation = 'United States' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T2.countryabbreviation = 'United States' AND T1.destinationairport = 'APG' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United States' AND T2.countryabbreviation = 'United States' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T2.countryabbreviation = 'United States' AND T1.destinationairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.destairport = 'APG'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destairport = 'CVO' EXCEPT SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.destairport = 'APG'
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING count(*) >= 10;
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T2.Airline HAVING count(*) >= 10;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline HAVING count(*) < 200;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid GROUP BY T1.Airline HAVING count(*) < 200;
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = 'JetBlue'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "Country" AND T2.countryabbreviation = "CountryAbbrev" AND T1.destairport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE Country = "Jackson")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE Country = "Jackson")
SELECT T1.Flighno FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T2.city = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Syracuse' UNION SELECT airportcode FROM airports WHERE countryabbreviation = 'Jackson')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Syracuse' UNION SELECT airportcode FROM airports WHERE country = 'Jackson')
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT T1.destairport , T1.sourceairport FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode AND T1.destairport = T2.airportcode)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM Documents AS T1;
SELECT count(*) FROM Documents AS T1;
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details LIKE '%w%'
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\" AND T2.template_type_code = \"Document\"
SELECT T1.document_description , T2.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\"
SELECT count(DISTINCT template_id) FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1000000000
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 0
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 0
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) >= 2;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT count(*) FROM Templates AS T1
SELECT count(*) FROM Templates AS T1;
SELECT Date_Effective_From , Template_Type_Code FROM Templates AS T1
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Date_Effective_To - Date_Effective_From > 0
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"PP\" OR Template_Type_Description = \"PPT\")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = \"PP\" OR Template_Type_Code = \"PPT\"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5;
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_From HAVING COUNT(*) > 0
SELECT Date_Effective_From , count(*) FROM Templates GROUP BY Date_Effective_From HAVING count(*) > 0
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To HAVING count(*) < 3;
SELECT min(version_number) , min(date_effective_from) , max(date_effective_to) FROM Templates
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates ORDER BY date_effective_from DESC LIMIT 1;
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.document_name = \"Data base\"
SELECT t1.Date_Effective_From , t1.Date_Effective_To FROM Templates AS t1 JOIN Documents AS t2 ON t1.Template_ID = t2.Template_ID WHERE t2.document_name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"
SELECT count(*) , date_effective_from , date_effective_to FROM Templates GROUP BY template_type_code;
SELECT T1.Date_Effective_From , T1.Date_Effective_To , COUNT(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code HAVING COUNT(*) > 0
SELECT Date_Effective_To FROM Templates WHERE Template_type_code IN (SELECT Template_type_code FROM Templates GROUP BY Template_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT Date_Effective_From , Date_Effective_To FROM Templates ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Date_Effective_From != \"\" AND Date_Effective_To != \"\" AND Date_Effective_From != \"\" AND Date_Effective_To != \"\"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1)
SELECT t1.template_type_code , t1.template_type_description FROM Ref_Template_Types AS t1
SELECT DISTINCT template_type_code , template_type_description FROM Ref_Template_Types
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) >= 1 {}
SELECT DISTINCT T1.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "Presentation"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Details = 'Presentation'
SELECT T1.match_num , T2.first_name , T2.last_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT T1.match_num , T2.first_name , T2.last_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id
SELECT T1.year , T2.birth_date FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT T1.year , T2.birth_date FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.match_num = 1
SELECT T1.year , T2.birth_date FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT T1.year , T2.birth_date FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1;
SELECT avg(winner_age) , avg(loser_age) FROM matches AS T1
SELECT avg(T1.ranking_points) , T2.match_num FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT avg(T1.ranking_points) , T2.match_num FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.match_num HAVING count(*) >= 1 ORDER BY T2.match_num ASC LIMIT 1000000;
SELECT avg(T2.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id UNION SELECT avg(T2.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T1.winner_rank != 'null' AND T1.loser_rank != 'null'
SELECT max(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id WHERE T2.winner_rank > T1.winner_rank AND T2.loser_rank < T1.loser_rank ORDER BY T1.ranking DESC LIMIT 1;
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = (SELECT max(match_num) FROM MATCHES) ORDER BY T1.ranking_points DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT T1.tourney_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.tourney_id HAVING count(*) > 10;
SELECT T1.tourney_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.tourney_name HAVING count(*) > 10;
SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.match_num , T1.year , T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2013 AND T1.match_num IN (SELECT T1.match_num FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2016) UNION SELECT T1.match_num , T1.year , T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2016 AND T1.match_num IN (SELECT T1.match_num FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2013)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T2.player_id = T1.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T2.player_id = T1.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC LIMIT 1000;
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date FROM players ORDER BY birth_date ASC LIMIT 10000;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.match_num , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_id IN (SELECT tourney_id FROM rankings WHERE ranking_points = (SELECT max(ranking_points) FROM rankings)) AND T1.tourney_name = 'Australian Open' ORDER BY T1.winner_rank_points DESC LIMIT 1;
SELECT T1.match_name , T1.winner_name , T1.winner_rank_points FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = 'Australian Open' ORDER BY T1.winner_rank_points DESC LIMIT 1;
SELECT T1.match_num , T2.winner_name , T2.losser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1;
SELECT T1.match_num , T1.winner_name , T2.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM MATCHES)
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name ORDER BY avg(T1.ranking) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking_points) DESC LIMIT 10000000;
SELECT T1.ranking , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name ORDER BY T1.ranking_points DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date HAVING sum(tours) != 0;
SELECT count(*) , YEAR FROM MATCHES GROUP BY YEAR HAVING count(*) >= 1 {}
SELECT YEAR , count(*) FROM MATCHES GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date LIMIT 3;
SELECT T1.name , T1.ranking FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.birth_date LIMIT 3;
SELECT count(DISTINCT T1.player_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\" GROUP BY T1.player_id HAVING count(*) >= 2;
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand HAVING count(*) != 0
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 FROM addresses
SELECT DISTINCT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE If_first_show = '1'
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT Name FROM conductor ORDER BY birthday ASC;
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT name FROM conductor WHERE nationality LIKE '%American%'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded ASC
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT avg(Attendance) FROM show WHERE If_first_show != 'Yes'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT Name FROM conductor ORDER BY birthday ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1;
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.birthday DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company HAVING COUNT(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC;
Sort by Age in Orchestras: SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDATION ASC;
SELECT Record_Company FROM orchestra ORDER BY birthday ASC LIMIT 1;
SELECT Record_Company FROM orchestra ORDER BY YEAR_OFFounded DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER < 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER >= 1985;
SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 1997 EXCEPT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded < 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded >= 2003 AND YEAR_of_Founded <= 2004 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_of_Founded > 1997
SELECT count(*) FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Type = \"First\") AND Performance_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"Glebe Park\")
SELECT count(*) FROM show WHERE Performance_ID IN ( SELECT Performance_ID FROM performance WHERE TYPE = \"First\" AND Performance_ID IN ( SELECT Performance_ID FROM performance WHERE TYPE = \"Glebe Park\" ) )
SELECT TYPE FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T1.performance_id HAVING count(*) > 1 AND T2.If_first_show != 1;
SELECT TYPE FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM show WHERE If_first_show = 1) GROUP BY TYPE HAVING COUNT(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals GROUP BY state HAVING count(*) >= 2 {}
SELECT state FROM owners WHERE role_code = 'professional' INTERSECT SELECT state FROM owners WHERE role_code = 'owner'
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) != 0;
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id;
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING sum(T2.cost_of_treatment) > 2000 WHERE T1.state = \"Indiana\"
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana" UNION SELECT T3.professional_id , T3.last_name , T3.cell_number FROM Professionals AS T3 JOIN T4 ON T3.professional_id = T4.professional_id JOIN T5 ON T4.professional_id = T5.professional_id GROUP BY T3.professional_id HAVING count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment > 1000;
SELECT first_name FROM professionals WHERE first_name NOT IN (SELECT first_name FROM owners) AND first_name NOT IN (SELECT first_name FROM dogs)
SELECT first_name FROM professionals WHERE first_name NOT IN (SELECT first_name FROM dogs) UNION SELECT first_name FROM owners WHERE first_name NOT IN (SELECT first_name FROM professionals)
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code IN (SELECT T3.treatment_type_code FROM Treatment_Types AS T3 WHERE T3.treatment_type_description = 'Dog') GROUP BY T1.professional_id HAVING count(*) < 1
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id IS NULL;
SELECT T1.owner_id , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 'Y' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T2.first_name , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T2.home_phone , T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
{ "sql": "SELECT T1.date_of_treatment , T3.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T1.dog_id = T3.dog_id"} {"sql": "SELECT T1.date_of_treatment , T3.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T1.dog_id = T3.dog_id"}
{ "sql": "SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treats AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code"} {"sql": "SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treats AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code"}
SELECT T1.treatment_type_description , T2.cost_of_treatment FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code WHERE T2.weight > 100 AND T1.email_address != \"\" ORDER BY T3.size_description ASC;
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T4.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id JOIN owners AS T4 ON T3.owner_id = T4.owner_id
SELECT T1.first_name , T1.last_name , T4.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id JOIN owners AS T4 ON T3.owner_id = T4.owner_id
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'Rarest' ORDER BY T2.date_of_treatment DESC LIMIT 1;
SELECT T1.name , T2.date_arrived FROM dogs AS T1 JOIN t treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.breed_code = 'rare' ORDER BY T2.date_arrived ASC LIMIT 1;
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_departed = T2.date_arrived AND T2.gender = 'M' AND T2.age < 100;
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.date_departed - T1.date_arrived > 0
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_arrived ASC LIMIT 1;
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.date_of_birth LIMIT 1;
HI Professionals: [email_address] WI Professionals: [email_address]
HI,email_address WI,email_address
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) >= 1;
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id;
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Labrador' OR T3.breed_code = 'Poodle' OR T3.breed_code = 'German Shepherd'
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%' OR city LIKE '%West%'
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%' OR state LIKE '%North%';
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs) AND abandoned_yn = 1
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE abandoned_yn = 'No' AND dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING count(*) > 0
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'dog')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT max(age) FROM dogs WHERE breed_code = 'Labrador'
SELECT max(age) FROM dogs WHERE breed_code = 'Labrador' OR breed_code = 'Pitbull' OR breed_code = 'Beagle' OR breed_code = 'Coxa' OR breed_code = 'Dalmatian' OR breed_code = 'German Shepherd' OR breed_code = 'Golden Retriever' OR breed_code = 'French Bulldog' OR breed_code = 'Bulldog' OR breed_code = 'Yorkshire Terrier' OR breed_code = 'Shih Tzu' OR breed_code = 'Pug' OR breed_code = 'Siberian Husky' OR breed_code = 'Corgi' OR breed_code = 'Rottweiler' OR breed_code = 'Collie' OR breed_code = 'Samoyed' OR breed_code = 'Pole Cat' OR breed_code = 'Pug' OR breed_code = 'Pug'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , first_name , last_name FROM professionals
SELECT email_address , first_name , last_name FROM professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T1.treatment_type_code = T3.treatment_type_code JOIN professionals AS T4 ON T2.professional_id = T4.professional_id
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM professionals AS T3 JOIN treatments AS T1 ON T3.professional_id = T1.professional_id JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = "Doggy therapy"
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Birth_Year
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year < 1948 OR Birth_Year >= 1950
SELECT Name FROM singer WHERE Birth_Year < 1948 OR Birth_Year >= 1950;
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1;
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1000
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(Citizenship) FROM singer AS T1;
SELECT max(Net_Worth_Millions) , Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship HAVING max(Net_Worth_Millions) != 0
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship HAVING max(Net_Worth_Millions) != 0
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1;
SELECT name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id ORDER BY T2.sales DESC LIMIT 1;
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.sales > 300000;
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , MAX(T1.Highest_POSITION) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer EXCEPT SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 UNION SELECT Citizenship FROM singer WHERE Birth_Year >= 1945;
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1945
