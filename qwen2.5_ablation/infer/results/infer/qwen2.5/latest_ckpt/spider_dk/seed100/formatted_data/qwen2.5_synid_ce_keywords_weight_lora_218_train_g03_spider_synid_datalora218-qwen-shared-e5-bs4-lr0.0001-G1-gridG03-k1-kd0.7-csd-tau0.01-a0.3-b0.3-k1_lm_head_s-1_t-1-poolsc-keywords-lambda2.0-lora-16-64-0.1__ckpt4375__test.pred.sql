SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT name , country FROM singer ORDER BY birthday ASC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'French'
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY birthday LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE birthday LIKE \"2001/%\"
SELECT DISTINCT country FROM singer WHERE birthday LIKE \"2001/%\"
SELECT count(*) , country FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer ORDER BY birthday > (SELECT avg(birthday) FROM singer) ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium AS t1;
SELECT avg(capacity) , max(capacity) FROM stadium AS t1
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR > 2014 OR concert_name != 'No concert'
SELECT count(*) FROM concert WHERE YEAR > 2014
count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING COUNT(*) > 0
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , max(T1.capacity) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT max(Highest) FROM stadium WHERE capacity < 1000000
SELECT min(lowest) FROM stadium WHERE highest != 0 AND lowest != 0 AND highest != lowest;
SELECT country FROM singer WHERE birthday LIKE \"1981/%\" OR birthday LIKE \"1991/%\"
SELECT avg(T3.average) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR != 2014 {}
SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014 EXCEPT SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name HAVING COUNT(*) > 0
SELECT T2.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014 {}
SELECT T2.name FROM singer AS T2 JOIN singer_in_concert AS T1 ON T1.singer_id = T2.singer_id WHERE T1.year < 2014 UNION SELECT T2.name FROM singer AS T2 JOIN singer_in_concert AS T1 ON T1.singer_id = T2.singer_id WHERE T1.year > 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%' OR song_name LIKE '%hey%'
SELECT min(T3.Highest) , max(T3.Lowest) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 AND T2.location = T2.location WHERE T1.year = 2015
SELECT min(T3.lowest) , max(T3.highst) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT min(T3.lowest) , max(T3.highst) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) WHERE weight > 10.
SELECT count(*) FROM Pets WHERE weight > 10.
SELECT min(weight) FROM Pets WHERE pettype = 'dog' ORDER BY birthdate LIMIT 1;
SELECT min(weight) FROM Pets WHERE pettype = 'Dog'
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM (SELECT StuID FROM Student WHERE sex = 'F' INTERSECT SELECT petid FROM Has_pet)
SELECT count(DISTINCT pettype) FROM Pets AS T1;
Pets.pettype GROUP BY pets.pettype COUNT(DISTINCT pettype) = count(*)
SELECT fname FROM student WHERE StuID IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy' )
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Kitten' OR T3.pettype = 'Puppy'
SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = 'Kitten' INTERSECT SELECT petid FROM Pets WHERE pettype = 'Puppy')
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten' AND T3.pettype = 'puppy'
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM has_pet WHERE PetID IN (SELECT petid FROM pets WHERE pettype = 'kitten'))
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets WHERE pettype = 'dog') EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets WHERE pettype = 'puppy')
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_pet) EXCEPT SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_pet WHERE pettype = 'Kitten')
Youngest_pet = Pets.birthdate ORDER BY birthdate LIMIT 1;pets.pettype.weightpets.pettype.weight
SELECT pettype , weight FROM Pets ORDER BY birthdate LIMIT 1;
SELECT petid , weight FROM Pets WHERE birthdate > '2020-01-01' AND pettype = 'Dog' UNION SELECT petid , weight FROM Pets WHERE birthdate > '2020-01-01' AND pettype = 'Cat' UNION SELECT petid , weight FROM Pets WHERE birthdate > '2020-01-01' AND pettype = 'Dog'
SELECT petid , weight FROM Pets WHERE birthdate > '2020-01-01' ORDER BY birthdate ASC LIMIT 1000;
SELECT avg(petid) , max(petid) , pettype FROM Pets GROUP BY pettype;
SELECT avg(petid) , max(petid) , pettype FROM Pets GROUP BY pettype;
SELECT avg(petid) , max(petid) , pettype FROM pets GROUP BY pettype;
SELECT avg(weight) , pettype FROM pets GROUP BY pettype;
SELECT T1.fname , T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN ( SELECT petid FROM pets )
SELECT DISTINCT T1.lname , T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets)
SELECT StuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.LName = 'Smith'
SELECT StuID FROM Student WHERE LName = 'Smith' INTERSECT SELECT petid FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 1
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = 2001;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = 2001;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , T1.contid , T2.contname FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT T1.contid , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries AS T1;
SELECT count(*) FROM countries
SELECT T1.FullName , T1.Id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.horsepower GROUP BY T1.model ORDER BY min(T2.Horsepower) LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model ORDER BY T2.Horsepower LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.weight < (SELECT avg(weight) FROM cars_data) WHERE T1.makeid = T2.makeid;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= 2005 AND T2.year <= 2014 GROUP BY T1.id HAVING count(*) > 1
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= 2003 AND T2.year <= 2004
SELECT T2.maker , T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid ORDER BY T1.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year < 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year < 1980
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT count(*) , T1.maker , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'Amc' AND T2.model = 'Hornet Sportabout'
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country = 'Japan'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'Japan')
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'America')
SELECT count(*) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.0
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.countryname , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T2.countryid HAVING count(*) >= 1
SELECT T1.CountryName , T2.CountryID FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.CountryID HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryid HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT max(T1.Horsepower) , T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T1.cylinders = 3 GROUP BY T2.make
max(Horsepower) = max(T1.Horsepower) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 AND T2.Maker = "Ford"
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY max(T2.MPG) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.id ORDER BY T2.mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 AND MODEL NOT IN (SELECT MODEL FROM cars_data WHERE YEAR > 1980)
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Model = \"Tesla\"
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Model = 'Tesla'
max(accelerate) BY Cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = (YEAR - 2) AND YEAR >= 1980
SELECT count(*) FROM cars_data WHERE YEAR >= 2013 AND YEAR <= 2014
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'American'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'American'
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING COUNT(*) > 3;
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T1.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.maker = T2.model WHERE T2.weight > 3500 OR T2.make = 'General Motors'
SELECT YEAR FROM cars_data WHERE weight >= 3000 AND weight <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.model = \"Tesla\" ORDER BY T1.accelerate LIMIT 1;
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Tesla' ORDER BY T1.Accelerate ASC LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Acelerate) FROM cars_data WHERE horsepower IN (SELECT max(horsepower) FROM cars_data))
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3 )
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.cylinders = 4 ORDER BY T1.horsepower DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.cylinders = 4 GROUP BY T2.model ORDER BY max(Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data GROUP BY makeid HAVING count(*) <= 3) EXCEPT SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.Cylinders > 3
SELECT T1.make , T1.name FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders < 4;
max mpg = (SELECT max(mpg) FROM cars_data WHERE cylindres = 8 AND YEAR <= 1980)
max MPG = (SELECT max(MPG) FROM cars_data WHERE cylinders = 8 UNION SELECT max(MPG) FROM cars_data WHERE YEAR < 1980)
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'Ford Motor'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'Ford Motor'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers GROUP BY country)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makegroup BY T1.id HAVING count(*) < 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_names GROUP BY id HAVING count(*) <= 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'Tesla' UNION SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryid HAVING count(*) >= 4;
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Model WHERE T2.Make = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT airportcode , airportname FROM airports WHERE countryabbreviation = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Syracuse%'
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airports
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City LIKE '%Jackson%'
SELECT airportname FROM airports WHERE countryabbreviation = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Jackson')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Jackson')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Jackson')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Jackson')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Syracuse') AND destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Ashley')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Syracuse") AND destairport IN (SELECT airportcode FROM airports WHERE airportname = "Ashley")
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'JetBlue'
SELECT count(*) FROM flights WHERE Airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.airline WHERE T3.Abbreviation = 'JetBlue' AND T2.airportname = 'ASY'
SELECT count(*) FROM flights WHERE sourceairport = 'ASY' AND destairport = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN (SELECT * FROM airlines WHERE airline = 'JetBlue') AS T3 ON T1.sourceairport = T3.airline WHERE T2.airportname = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.countryabbreviation = 'JetBlue' AND T3 airportname = 'AHD Airport'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen') AND airline = 'JetBlue'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen') AND destinationairport IN (SELECT airportcode FROM airports WHERE airportname = 'JetBlue')
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destairport ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.abbreviation , T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport GROUP BY T1.uid ORDER BY count(*) LIMIT 1;
SELECT T1.abbreviation , T1.countryfrom (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T3 , T3.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T4 , T4.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T5 , T5.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T6 , T6.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T7 , T7.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T8 , T8.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T9 , T9.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T10 , T10.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T11 , T11.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T12 , T12.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.countryfrom ORDER BY count(*) LIMIT 1) AS T13 , T13.countryFROM (SELECT T2.sourceairport , T2.countryfrom FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport =
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = 'AHD')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = T2.AHD
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.AirportName = 'APG' AND T2.DestAirport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airlines AS T3 JOIN airports AS T4 ON T3.uid = T4.airportcode WHERE T4.countryabbreviation = 'APG' INTERSECT SELECT T3.airportcode FROM airlines AS T3 JOIN airports AS T4 ON T3.uid = T4.airportcode WHERE T4.countryabbreviation = 'CVO')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destinationairport NOT IN ( SELECT T3.Airline FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.sourceairport WHERE T4.destinationairport = 'APG') INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destinationairport NOT IN ( SELECT T3.Airline FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.sourceairport WHERE T4.destinationairport = 'APG')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO') EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.srcairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) >= 10;
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline HAVING COUNT(*) >= 10;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) < 200;
SELECT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline HAVING count(*) < 200;
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = 'JetBlue'
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = \"APG\"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'Jackson'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Syracuse' OR airportname = 'Jackson')
Syracuse = (SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'NY') UNION Jackson = (SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'TN')
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights UNION SELECT srcairport , destairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details LIKE '%w%'
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_description , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT count(DISTINCT template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
template_id , count(*) FROM Documents GROUP BY template_id HAVING count(*) != 0
count(*) , template_id FROM Documents GROUP BY template_id;
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1 OFFSET 0;
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) >= 2;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT count(*) FROM Templates AS T1;
SELECT count(*) FROM Templates AS T1;
SELECT date_effective_from , template_type_code FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN (\"PP\", \"PPT\")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code = \"PP\" OR template_type_code = \"PPT\"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT count(*) , date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from , date_effective_to
Count(*) , Date_Effective_To - Date_Effective_From FROM Templates GROUP BY Date_Effective_To - Date_Effective_From
SELECT Date_Effective_To FROM Templates GROUP BY Date_Effective_To ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_To FROM Templates GROUP BY Date_Effective_To ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates ORDER BY date_effective_from DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T2.date_effective_from , T2.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
BK Documents BK Template 1 BK Template 2 BK Template 3
Count(*) AS T1 FROM Documents GROUP BY T1.document_name HAVING count(*) > 0
To determine the effective date range and count of documents per type, we can follow these steps: 1. Calculate the effective date range by subtracting the date effective from the date effective to. 2. Count the number of documents per template type by dividing the total number of documents by the count of templates. Let's calculate it step-by-step: 1. Effective date range = (Date_Effective_To - Date_Effective_From) + 1 2. Number of documents per template type = Total number of documents / count of templates Now let's do the calculations: Date_Effective_To - Date_Effective_From = 365 days (assuming a non-leap year) Total number of documents = 1000000 (number of documents in 1000000 templates) Count of templates = 1000000 / 1000000 = 1 Effective date range = 364 days (since adding 1 to the effective date range gives us an integer value) Number of documents per template type = 1000000 / 1000000 = 1 So, there are 1 document per template type. Now we can fill in the table with the calculated values: Template Type Code | Date_Effective_From | Date_Effective_To | Number of Documents Per Template Type Ref_Template_Types | 364 | 365 | 1 This completes the calculation for you.
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1;
SELECT date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from , date_effective_to ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code NOT IN ( SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1 )
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_from != 'null' AND date_effective_to != 'null'
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name = T3.document_name DISTINCT FROM Templates AS T2 JOIN Documents AS T3 ON T2.template_id = T3.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name IN (SELECT document_name FROM documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 1)
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"Presentation\" )
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.year , T2.birth_date FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id
SELECT T1.year , T2.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code LIKE 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1
SELECT avg(T1.ranking_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name HAVING avg(T1.ranking) > 0 INTERSECT SELECT avg(T1.ranking_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name HAVING avg(T1.ranking) < 0 {}
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id + T2.loser_id WHERE T2.match_num != 0 GROUP BY T1.player_id HAVING sum(T1.ranking_points) > 0 AND sum(T1.ranking_points) < 999999999
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT max(T1.ranking_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(T1.ranking_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.round DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'loser'
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
2013年：2013年 2016年：2016年
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.year IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
sorted_by_birth_date(players.birth_date)
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date DESC
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id GROUP BY T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.country_code = 'Australia' AND T1.winner_rank_points = (SELECT max(winner_rank_points) FROM matches WHERE tourney_name = 'Australian Open')
SELECT T1.first_name , T1.last_name , T2.minutes FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.winner_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM matches)
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name HAVING avg(T1.ranking) != 0
SELECT T1.first_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking_points) > 0 AVG(T2.ranking_points) FROM rankings AS T2 GROUP BY T2.player_id HAVING avg(T2.ranking_points) > 0
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points DESC
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT sum(tourney_points) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT sum(tourney_points) , ranking_date FROM rankings GROUP BY ranking_date;
counts = [year] , count(*) FROM matches GROUP BY YEAR;
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.first_name , T1.last_name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.age ASC LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"WTA Championships\" AND T2.hand = \"left\"
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY max(T2.winner_rank_points) DESC LIMIT 1;
counts = [hand_type] , count(*) FROM players GROUP BY hand_type;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE if_first_show = 'Yes'
SELECT count(*) FROM show WHERE if_first_show = 1
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT name FROM conductor WHERE Nationality LIKE "American%"
sorted(orchestra, record_company) ORDER BY year_of_founded ASC
sorted_orchestra = orchestra.sort_by("Year_of_Founded")
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
ascending_order_name = (SELECT Name FROM conductor ORDER BY birthday ASC)
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1;
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
COUNT(*) AS RECORD_company GROUP BY RECORD_company
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company HAVING count(*) > 1
ascending_major_record_format_orchestra ASC
sorted_by_age_orchestra_major_record_format ASC : SELECT Major_record_format FROM orchestra ORDER BY YEAR_of_founded ASC ;
SELECT record_company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC LIMIT 1;
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER BETWEEN 1 AND 2002;
SELECT record_company FROM orchestra WHERE year_of_founded > 2003 EXCEPT SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDER < 2003
SELECT count(*) FROM show WHERE If_first_show = 'Yes' AND Performance_ID IN (SELECT Performance_ID FROM performance WHERE Title = \"Glebe Park\")
SELECT count(*) FROM show WHERE IF_first_show = 'Yes' AND Performance_ID IN (SELECT Performance_ID FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Performance_ID = \"Glebe Park\")))
SELECT TYPE FROM performance WHERE performance_id IN (SELECT performance_id FROM show GROUP BY performance_id HAVING count(*) > 1)
SELECT TYPE FROM performance WHERE performance_id IN (SELECT performance_id FROM show GROUP BY performance_id HAVING count(*) > 1)
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.state = T2.state GROUP BY T1.state HAVING count(*) >= 1 AND count(*) <= 2
Both owners and professionals can live in the same state. Therefore, there will be no state where both owners and professionals live. The answer is: No such state exists.
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_of_treatment != \"null\";
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'Dog'
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana'
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.cost_of_treatment > 1000)
SELECT T2.name FROM dogs AS T2 JOIN treatments AS T1 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000 GROUP BY T2.dog_id HAVING count(*) >= 1;
SELECT first_name FROM professionals WHERE first_name NOT IN (SELECT first_name FROM dogs) UNION SELECT first_name FROM owners WHERE first_name NOT IN (SELECT first_name FROM dogs)
SELECT first_name FROM Professionals WHERE first_name NOT IN ( SELECT first_name FROM Dogs ) INTERSECT SELECT first_name FROM Owners WHERE first_name NOT IN ( SELECT first_name FROM Dogs )
SELECT professional_id , first_name , last_name FROM professionals WHERE professional_id NOT IN (SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT professional_id , first_name , last_name FROM Professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.abandoned_yn = 'Y' GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT t2.breed_name FROM dogs AS t1 JOIN breeds AS t2 ON t1.breed_code = t2.breed_code WHERE t1.abandoned_yn = 'Y' GROUP BY t2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments AS T4 JOIN Dogs AS T5 ON T4.dog_id = T5.dog_id WHERE T5.owner_id = T2.owner_id)
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1;
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_adopted) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.home_phone , T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(DISTINCT treatment_type_code) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.treatment_type_description , T2.cost_of_treatment FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code
For each owner, list their first name, last name, and the size of their dog. Dog size is given by size code from sizes table. Owner ID is given by dogs owner ID.
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T4 ON T2.size_code = T4.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.date_arrived ASC LIMIT 1
Rarest Breed: Chihuahua Rarest Date of Birth: 1983-02-15
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
from dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_departed = t2.date_of_treatment AND t1.date_arrived = t2.date_of_treatment
SELECT T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_arrived = T2.date_departed AND T2.gender = 'M' AND T2.breed_code = 'Dog'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM professionals WHERE state IN ('HI', 'WI')
SELECT email_address FROM professionals WHERE state IN ('HI', 'WI')
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'Yes'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'No'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'male' AND T2.weight > 400
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.gender = 'Male'
SELECT count(*) FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT count(*) FROM ( SELECT T1.professional_id FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog' )
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%' OR state LIKE '%North%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%' OR state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs) AND abandoned_yn = 'No'
SELECT count(*) FROM Dogs WHERE age < ( SELECT avg(age) FROM dogs ) AND abandoned_yn = 'No'
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE abandoned_yn != 'yes'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.gender = 'male' AND T1.date_adopted != 'null' GROUP BY T1.dog_id HAVING count(*) > 0;
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT T1.owner_id FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.abandoned_yn = 1)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Yes')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Yes'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'No'
Oldest Dog Age = max(age) FROM Dogs WHERE breed_code = "Dog"
Oldest Dog Age: 12 years old
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , first_name , last_name FROM Professionals
SELECT email_address , first_name , last_name FROM professionals
Breed_types = (Breed_code) , Size_codes = (Size_code) , Breed_types * Size_codes = (Breed_types * Size_codes)
SELECT DISTINCT breed_code , size_code FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T1.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM treatments AS T1 JOIN professionals AS T3 ON T1.professional_id = T3.professional_id JOIN treatment_types AS T4 ON T1.treatment_type_code = T4.treatment_type_code
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
Ascending Order: Name ASC Singer_ID
SELECT Name FROM singer ORDER BY Birth_Year
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year BETWEEN 0 AND 1947 OR Birth_Year > 1948
SELECT Name FROM singer WHERE Birth_Year BETWEEN 0 AND 1947 OR Birth_Year > 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1;
SELECT Name FROM singer ORDER BY Birth_Year LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
COUNT(*) AS count FROM singer GROUP BY Citizenship;
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) FROM singer AS T1 WHERE T1.Citizenship != \"Unknown\" AND T1.Citizenship != \"Null\"
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1;
SELECT TITLE FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , T3.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T1.Singer_ID = T3.Singer_ID ORDER BY T3.Highest_Position DESC LIMIT 1;
SELECT T2.Highest_POSITION , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY max(T1.Highest_Position) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945;
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 0 AND 1944;
