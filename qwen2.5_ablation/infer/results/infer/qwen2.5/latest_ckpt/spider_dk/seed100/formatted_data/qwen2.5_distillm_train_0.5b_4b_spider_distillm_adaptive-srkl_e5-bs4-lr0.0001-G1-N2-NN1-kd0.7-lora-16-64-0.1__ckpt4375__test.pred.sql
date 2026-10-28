SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday
SELECT name , country FROM singer ORDER BY birthday
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = "French"
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = "French"
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT name , song_release_year FROM singer ORDER BY song_release_year LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001%'
SELECT DISTINCT country FROM singer WHERE birthday = '2001'
SELECT country , count(*) FROM singer GROUP BY country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.artist WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT distinct(song_name) FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.artist WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(Highest) LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(Highest) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM CONCERT WHERE YEAR > 2014
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.stadium_id , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , max(t1.highest) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT highest FROM stadium WHERE capacity < (SELECT min(capacity) FROM stadium)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE birthday = 1981 OR birthday = 1991
SELECT avg(t1.attendance) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year != 2014
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT count(*) , T1.theme , T2.concert_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id
SELECT T2.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id
SELECT T2.name , count(*) FROM concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T3.name , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014
SELECT t3.name FROM concert AS t1 JOIN singer_in_concert AS t2 ON t1.concert_id = t2.concert_id JOIN singer AS t3 ON t2.singer_id = t3.singer_id WHERE YEAR < 2014 OR t2.song_id NOT IN (SELECT concert_id FROM concert WHERE YEAR > 2014)
SELECT country , name FROM singer WHERE song_name LIKE '%Hey%'
SELECT t1.name , t1.country FROM singer AS T1 JOIN songwriter AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT min(t1.highest) , max(t1.lowest) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2014 OR YEAR = 2015
SELECT min(t1.Highest) , max(t1.Lowest) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT min(t1.Highest) , max(t1.Lowest) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE t2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT t2.weight FROM has_pet AS t1 JOIN pets AS t2 ON t1.petid = t2.petid WHERE t1.birthdate = (SELECT min(birthdate) FROM has_pet) AND t2.sex = 'male' AND t2.age = 100
SELECT avg(weight) FROM Pets WHERE pettype = 'dog' ORDER BY birthdate LIMIT 1 LIMIT 1;
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , PetType FROM Pets GROUP BY PetType
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = "Puppy"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = \"Puppy\";
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T2.Fname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "kitten" OR T3.pettype = "puppy"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "Puppy" INTERSECT SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pettype = "Kitten"
SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "kitten" INTERSECT SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = "puppy"
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT T1.Major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT T3.petid FROM has_pet AS T3 JOIN pets AS T4 ON T3.petid = T4.petid WHERE T4.pettype = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "PetType" = "Kitten"
SELECT fname , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE PetType = \"Puppy\") AND TstID IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.PetID = T2.PetID WHERE PetType = \"Dog\")
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Puppy\" EXCEPT SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\");
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT petid , weight FROM Pets WHERE birthdate > '2020' AND pettype = 'dog' OR pettype = 'cat'
SELECT petid , weight FROM pets WHERE weight > (SELECT max(weight) FROM pets WHERE birthdate < '2020')
SELECT pettype , avg(petid) , max(petid) FROM pets GROUP BY pettype
SELECT avg.petid , max.petid , pettype FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid GROUP BY pettype
SELECT pettype , avg(weight) , max(weight) FROM pets GROUP BY pettype
SELECT pettype , avg(weight) FROM pets GROUP BY pettype
SELECT T2.fname , T2.lname , T2.age FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid INTERSECT SELECT T3.fname , T3.lname , T3.age FROM has_pet AS T1 JOIN student AS T3 ON T1.stuid = T3.stuid JOIN pets AS T4 ON T4.petid = T1.petid
SELECT DISTINCT T1.fname , T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT T2.petid FROM students AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT petid FROM has_pet AS T1 JOIN students AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.Fname , T1.Lname
SELECT T2.fname , T2.sex FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.fname , T2.sex FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat' AND T2.birthdate LIKE \"2001%\";
SELECT T2.LName FROM Pets AS T1 JOIN Student AS T2 ON T1.Stuid = T2.Stuid WHERE T1.birthdate LIKE \"2001%\";
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continent_id , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent_id
SELECT T1.continent , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.maker , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id
SELECT model FROM car_names ORDER BY horsepower ASC LIMIT 1
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.id ORDER BY T1.Horsepower ASC LIMIT 1
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.id WHERE T1.weight < ( SELECT avg(weight) FROM cars_data );
SELECT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year >= ( SELECT max(Year) FROM cars_data ) - 2 INTERSECT SELECT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year <= ( SELECT min(Year) FROM cars_data ) + 2
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE YEAR >= (SELECT max(YEAR) FROM cars_data) AND YEAR <= (SELECT min(YEAR) FROM cars_data)
SELECT T1.make , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.make_id = T2.id ORDER BY T2.year ASC LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year LIMIT 1
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year < 1980 OR T2.make < "Ford" OR T2.make = "BMW"
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year < 1980 OR T1.make IN (SELECT T3.maker FROM car_makers AS T3 JOIN model_list AS T2 ON T3.id = T2 maker WHERE T3.country = 'USA')
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Contid = T2.Country GROUP BY T1.continent
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country ORDER BY count(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.maker
SELECT count(*) , T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2Maker.id GROUP BY T1.maker
SELECT Accelerate FROM cars_data WHERE Maker = "amc" AND MakerModel = "hornet sportabout"
SELECT avg(horsepower) FROM cars_data WHERE Accelerate = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country = 'Japanese'
SELECT count(*) FROM car_makers WHERE country = 'Japanese';
SELECT count(*) FROM car_makers WHERE country = 'America'
SELECT count(*) FROM car_makers WHERE country IN ( 'United States' )
SELECT avg(MPG) FROM cars_data WHERE cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE cylinders = 4;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.countryname , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.countryname , T2.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT max(T2.Horsepower) , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Cylinders = 3
SELECT max(T2.Horsepower) , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.id WHERE T1.cylinders = 3 GROUP BY T1.make ORDER BY T2.Horsepower DESC LIMIT 1
SELECT model FROM car_names WHERE mpg = (SELECT max(mpg) FROM car_names) GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id ORDER BY T1.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 OR Horsepower < 0
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 OR MODEL NOT IN (SELECT model FROM car_names WHERE make IN ('Ford', 'BMW') AND year < 1980)
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.Model = "Tesla"
SELECT avg(edispl) FROM cars_data WHERE model_type = 'Tesla' ;
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accrate) FROM cars_data WHERE Cylinders = (SELECT max(Cylinders) FROM cars_data)
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = YEAR (SELECT max(YEAR) FROM cars_data)
SELECT count(*) FROM cars_data WHERE YEAR = 2018 OR YEAR = 2019
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE country = 'American'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE countryname = 'American'
SELECT T1.maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.maker , T2.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker HAVING count(*) > 3
SELECT model FROM model_list WHERE maker = 'General Motors' OR weight > 3500
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight > 3500 OR T2Maker.Maker = "General Motors"
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT min(Cylinders) FROM car_names WHERE Accelerate = 'Yes' AND model = 'tesla'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = 'Yes' AND model = 'Tesla'
SELECT count(*) FROM car_names WHERE accelerate > ( SELECT max(horsepower) FROM car_names );
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data);
SELECT count(*) FROM car_makers WHERE country = maker GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country = 'Country' GROUP BY country HAVING count(*) > 2;
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM car_names WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.model WHERE T2.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT makeid , make FROM car_makers WHERE country NOT IN (SELECT country FROM cars_data GROUP BY country HAVING count(*) > 3) UNION SELECT maker FROM car_names WHERE cylinders != 4
SELECT makeid , model FROM cars_data WHERE edispl < ( SELECT min(edispl) FROM cars_data WHERE cylinders < 4 )
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT max(MPG) FROM car_names WHERE cylinders = 8 OR YEAR < 1980;
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT model FROM model_list WHERE maker = 'Ford Motor'
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.id WHERE T1.weight < 3500 AND T2 maker != 'Ford' GROUP BY T2.model HAVING count(*) > 10;
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T3 ON T1.id = T3.makeid GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker_id GROUP BY T1.make HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker_id GROUP BY T1.make HAVING count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Country LIMIT 3 UNION SELECT T1.id , T1.countryname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker WHERE T2.model = 'tesla'
SELECT countryid , countryname FROM car_makers GROUP BY countryid HAVING count(*) > 3 UNION SELECT countryid , make FROM car_names WHERE make Model = 'tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "American"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "American"
SELECT airportcode , airportname FROM airports WHERE country = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = "Jackson"
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Jackson'
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'New Zealand') WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'ATO') AND destinationairport NOT IN (SELECT airportcode FROM airports WHERE country = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport = 'Jackson' AND destairport = ' anywhere'
SELECT count(*) FROM flights WHERE SOURCEAirport = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Jackson') AND destairport IN (SELECT airportcode FROM airports WHERE city = 'Jackson')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'USA') AND destairport IN (SELECT airportcode FROM airports WHERE country = 'Canada' AND state = 'Jackson')
SELECT count(*) FROM flights WHERE SourceAirport = 'Syracuse' AND DestAirport = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = 'Syracuse' AND DestAirport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'JetBlue'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T1.Name = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Alightairline = \"JetBlue\" AND T2.AirportName = \"ASY\";
SELECT count(*) FROM flights WHERE SourceAirport = 'ASY' AND Airline = 'JetBlue';
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.airportname = 'AHD' AND T3.Adairline = 'JetBlue';
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'United States' AND T3.Airline = 'JetBlue' AND T2 airportname = 'AHD Airport';
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE Airline = 'JetBlue' AND DestAirport = 'Aberdeen';
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS t2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1
SELECT airportcode FROM Flights GROUP BY airportcode ORDER BY count(*) LIMIT 1;
SELECTairlines FROMflights GROUP BYairlines ORDERBYcount(*) DESC LIMIT1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T2.abbreviation , T2.countryfrom SELECT T1.abbreviation , T1.countryFROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT T2.abbreviation , T1.countryAbbrev FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.countryAbbrev ORDER BY count(*) ASC LIMIT 1;
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportCode = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportCode = "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportCode = "CVO"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "CVO"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportCode = 'CVO' EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportCode = 'APG'
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportName = "CVO" EXCEPT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = "APPG"
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport IN ( "APG" )
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia')
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport FROM = "Jackson"
SELECT FlightNo FROM flights WHERE DestAirport = "Jackson"
SELECT FlightNo FROM flights WHERE DESTAirport IN (SELECT city FROM airports WHERE country = 'USA' AND countryabbreviation = 'United States')
SELECT count(*) FROM flights WHERE sourceairport = 'Syracuse' OR destairport = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport IN ( "Syracuse" , "Jackson" )
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport , DestAirport FROM flights)
SELECT airportname FROM airports EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport UNION SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT Document_ID , Document_Name , Document_Description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%' AND T2.template_type_code = \"Letter\";
SELECT T1.document_name , T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_description , T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\" AND T2.template_type_code = \"Custom\";
SELECT count(DISTINCT template_id) FROM Documents;
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents WHERE Template_ID IN ( SELECT Template_ID FROM Templates WHERE Template_Type_Code = \"PPT\")
SELECT count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.template_type_code = "PPT"
SELECT TEMPLATE_ID , count(*) FROM Documents GROUP BY TEMPLATE_ID
SELECT count(*) , TEMPLATE_ID FROM Documents GROUP BY TEMPLATE_ID
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_From ORDER BY count(*) DESC LIMIT 1"
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1"
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates
SELECT date Effective FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = \"CV\";
SELECT T1.Date_Effective_From , T1.Template_Type_Code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Version_Number > 5
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , count(*) FROM Templates GROUP BY Date_Effective_From
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1"
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT date_effective_from FROM Templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT min(version_number) , date_effective_from AND date_effective_to FROM Templates;
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT max(T1.date_effective_from) , min(T1.date_effective_to) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT date_effective_from , date_effective_to , count(*) FROM Templates GROUP BY template_type_code
SELECT T1.Date_Effective_From , T1.Date_Effective_To , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_From
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.date_effective_from ORDER BY count(*) DESC LIMIT 1"
SELECT date_effective_from FROM Templates WHERE template_type_code = 'Date Effective' GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_id NOT IN ( SELECT template_id FROM Documents )
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT Template_Type_Code , Template_Type_description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "Presentation"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_description = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id
SELECT T1.match_num , T2.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id
SELECT T1.birth_date , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) , avg(loser_rank) FROM matches;
SELECT avg(winner_rank) FROM matches UNION SELECT avg(loser_rank) FROM matches
SELECT max(T2.ranking_points) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id WHERE T1.match_num = (SELECT min(match_num) FROM matches) ORDER BY T1.match_num ASC LIMIT 1;
SELECT min(T2.ranking_points) , max(T2.winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.winner_id IS NULL UNION SELECT min(T2.ranking_points) , max(T2.loser_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.loser_id IS NULL
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2013 UNION SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id AND T1.loser_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.year = 2013 UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC;
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date FROM players;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.match_num , T1.winner_name , T1.losser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id WHERE T2.winner_rank = (SELECT max(winner_rank) FROM matches WHERE tourney_name = \"Australian Open\");
SELECT T1.match_player_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" GROUP BY T2.winner_player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.match_num , T1.winner_name , T2.loser_name FROM matches AS T1 JOIN matches AS T2 ON T1.match_num = T2.match_num ORDER BY T2.minutes DESC LIMIT 1;
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking_points) DESC LIMIT 1;
SELECT sum(T1.ranking_points) , T2.first_name + ' ' + T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name , T1.last_name , SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = \"WTA Championships\";
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = \"WTA Championships\";
SELECT T1.name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.winner_rank = 'Gold' GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 FROM addresses
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT count(*) FROM show WHERE IF_first_show = 1;
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT name FROM conductor WHERE nationality = 'American'
SELECT name FROM conductor WHERE nationality = 'American'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM ORCHESTRA ORDER BY Year_of_Founded ASC
SELECT avg(Attendance) FROM show WHERE IF_first_show = 0;
SELECT avg(Attendance) FROM show WHERE IF_first_show = \"No\";
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != \"Live final\";
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT T2.Name , T3.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T2.Name , T3.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID WHERE T1.Type = \"Performance\"
SELECT T2.name FROM performance AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name HAVING count(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.name FROM performance AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1"
SELECT T2.name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id ORDER BY count(*) DESC LIMIT 1"
SELECT T2.name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id ORDER BY T1.Date DESC LIMIT 1;
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Date = (SELECT max(Date) FROM performance)
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , record_company FROM orchestra GROUP BY record_company;
SELECT major_record_format FROM orchestra ORDER BY Age
SELECT Major_record_format FROM orchestra ORDER BY YEAR_of_founded
SELECT record_company FROM orchestra ORDER BY year_of_founded LIMIT 1;
SELECT Record_Company FROM ORCHESTRALATION ORDER BY YEAR_of_Founded DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 UNION SELECT record_company FROM orchestra WHERE year_of_founded > 1960
SELECT record_company FROM orchestra WHERE year_of_founded > 2003 INTERSECT SELECT record_company FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM performance WHERE type = \"Share\") AND date < (SELECT max(date) FROM performance WHERE type = \"Share\")"
SELECT count(*) FROM show WHERE IF_first_show = "Glebe Park"
SELECT count(*) FROM show WHERE If_first_show = "Glebe Park"
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1"
SELECT T2.type FROM performance AS T1 JOIN exhibition AS T2 ON T1.performance_id = T2.performance_id WHERE T1.if_first_show = 1 GROUP BY T2.type HAVING count(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals GROUP BY state HAVING count(*) >= 2
SELECT DISTINCT state FROM owners INTERSECT SELECT DISTINCT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog treatment' GROUP BY T1.breed_code, T1.size_code;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog' GROUP BY T1.breed_code, T1.size_code;
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "IN" OR count(*) > 2
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id GROUP BY T1.professional_id HAVING T2.state = "IN" UNION SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM dogs EXCEPT SELECT T3.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000
SELECT T3.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000;
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM professionals WHERE role_code = 'owner'
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM dogs WHERE name IN (SELECT t1.name FROM dogs AS t1 JOIN professionals AS t2 ON t1.owner_id = t2.owner_id);
SELECT professional_id , first_name , last_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT professional_id , first_name , last_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T3.dog_id = T1.dog_id
SELECT T1.owner_id , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 1 GROUP BY T2.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(cost_of_treatment) LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT T1.first_name , T1.last_name FROM Professional AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
```sql SELECT T1.first_name , T1.last_name , T3.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code; ```
SELECT T1.first_name , T1.last_name , T3.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T3.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id
SELECT T1.name , T3.date_of_treatment FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code ORDER BY T3.weight LIMIT 1;
SELECT T1.name , T1.date_arrived FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.breed_name ASC LIMIT 1;
SELECT T1.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = \"VA\";
SELECT T1.first_name , T3.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.state = "VA"
SELECT date_of_treatment FROM treatments WHERE date_of_treatment BETWEEN date_arrived AND date_departed;
SELECT date_arrived , date_departed FROM Dogs;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id ORDER BY t2.date_of_birth LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.date_of_birth LIMIT 1;
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'No'
SELECT count(*) FROM Dogs WHERE dog_id IN ( SELECT dog_id FROM treatments );
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = \"Dog\";
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = \"Dog\";
SELECT count(DISTINCT professional_id) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = \"Dog\";
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'No' AND age < ( SELECT avg(age) FROM Dogs );
SELECT count(*) FROM dogs WHERE abandoned_yn = 'No' AND age < ( SELECT avg(age) FROM dogs );
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE abandoned_yn = 'No' AND dog_id NOT IN ( SELECT dog_id FROM treatments );
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Dog"
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes' )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'yes' );
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'dogs' );
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id);
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'No';
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'No';
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1;
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1;
SELECT charge_type , charge_amount FROM CHANGES
SELECT charge_type , charge_amount FROM CHarges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , first_name , last_name FROM professionals
SELECT email_address , first_name , last_name FROM professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_code , T1.size_code FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T1.role_code , T4.treatment_type_description FROM Professional AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN t3 AS T4 ON T2.treatment_id = T4.treatment_id
SELECT T1.first_name , T1.last_name , T1.role_code , T3.treatment_type_description FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < OR Date > 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT title FROM song ORDER BY Sales DESC LIMIT 1
SELECT title FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T3.Name , max(T2.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer EXCEPT SELECT T3.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year >= 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 2000
