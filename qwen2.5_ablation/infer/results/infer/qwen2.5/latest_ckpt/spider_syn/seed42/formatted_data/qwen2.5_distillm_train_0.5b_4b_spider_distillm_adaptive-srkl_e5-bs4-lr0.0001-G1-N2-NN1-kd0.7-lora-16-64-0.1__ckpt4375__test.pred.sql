SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'French'
SELECT t1.name , t1.song_release_year FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id ORDER BY t1.age ASC LIMIT 1;
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , t1.country FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id GROUP BY t1.country
SELECT name FROM singer WHERE age > ( SELECT avg(age) FROM singer )
SELECT name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(highest) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(Highest) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.stadium_id , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT t1.name , count(*) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT TIME FROM concert GROUP BY TIME ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30 {}
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR != 2014)
SELECT T2.theme , count(*) FROM concert AS T1 JOIN song_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT t3.name FROM concert AS t1 JOIN singer_in_concert AS t2 ON t1.concert_id = t2.concert_id JOIN singer AS t3 ON t2.singer_id = t3.singer_id WHERE t1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014 AND T2.song_id IS NULL
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT t3.name , t3.position FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer AS t3 ON t1.songster_id = t3.singer_id WHERE t1.year = 2014 INTERSECT SELECT t3.name , t3.position FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer AS t3 ON t1.songster_id = t3.singer_id WHERE t1.year = 2015
SELECT t1.name , t1.location FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014 INTERSECT SELECT t1.name , t1.location FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE t2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 WHERE sex = 'F' AND pet_age = (SELECT min(pet_age) FROM pets WHERE sex = 'F')年龄最小的狗的体重。
SELECT count(*) FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(T2.weight) , T1.pet_type FROM pets AS T1 JOIN has_pet AS T2 ON T1.pet_id = T2.pet_id GROUP BY T1.pet_type
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T1.sex = 'F' AND T3.pet_type = "Puppy"
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.pet_type = "Puppy"
SELECT count(DISTINCT pet_type) FROM pets
SELECT count(DISTINCT pet_type) FROM pets
SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = 'kittens' OR T3.pettype = 'puppies'
SELECT T2.fname , T2.lname FROM Pets AS T1 JOIN Student AS T2 ON T1.petid = T2.stuid WHERE T1.pettype = "Kitten" OR T1.pettype = "Puppy"
SELECT T2.Fname , T2.Lname FROM Pets AS T1 JOIN Student AS T2 ON T1.petid = T2.stuid WHERE T1.pettype = "Kitten" INTERSECT SELECT T2.Fname , T2.Lname FROM Pets AS T1 JOIN Student AS T2 ON T1.petid = T2.stuid WHERE T1.pettype = "Puppy"
SELECT T2.fname FROM Pets AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T1.pettype = \"Kitten\" INTERSECT SELECT T2.fname FROM Pets AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T1.pettype = \"Puppy\""
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT T1.discipline , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT T3.petid FROM has_pet AS T3 JOIN pets AS T4 ON T3.petid = T4.petid WHERE T4.pettype = \"Kitten\")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Kittens")
SELECT fname , lname FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE PetType = "Cat") AND fname != "Puppy"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = \"pet\" AND T1.sex = \"Female\" AND T1.age > 40 AND T1.major = \"Electrical Engineering\"
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT t3.Fishweight , t2.Age FROM Has_Pet AS t1 JOIN Students AS T2 ON t1.Stuid = T2.Stuid JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T2.age = (SELECT min(age) FROM Students)
SELECT Stuid , weight FROM Pets WHERE pet_age > 1
SELECT StuID , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , major FROM student GROUP BY major
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT T1.fname , T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT T3.petid FROM has_pet AS T3 JOIN pets AS T4 ON T3.petid = T4.petid WHERE T4.pet_age > 150)
SELECT DISTINCT T2.fname , T2.lname , T1.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Student WHERE Fname = 'Smith' INTERSECT SELECT T3.Stuid FROM Has_Pet AS T1 JOIN Students AS T2 ON T1.Stuid = T2.Stuid JOIN Pets AS T3 ON T1.PetID = T3.PetID
SELECT StuID FROM Student WHERE Fname = 'Smith' INTERSECT SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pet_type = "dog" OR T2.pet_type = "cat"
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID;
SELECT count(*) , T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.Fname , T1.Lname
SELECT T2.fname , T2.lname , T2.sex FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.fname , T2.sex FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.Lname FROM Pets AS T1 JOIN Student AS T2 ON T1.Stuid = T2.Stuid WHERE T1.pet_age = 3;
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3 AND T1.Sex = 'Male'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continent_id , T1.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent_id
SELECT T1.continent , T1.continent , count(*) FROM continents AS T1 JOIN country_name AS T2 ON T1.continent = T2.continent GROUP BY T1.continent
SELECT count(*) FROM states
SELECT count(*) FROM countries
SELECT T1.maker , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker_id GROUP BY T1.maker_id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id
SELECT model FROM car_names ORDER BYhorsepower ASC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.model GROUP BY T2.model_id ORDER BY sum(T2.horsepower) LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.id WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.make_id = T2.id WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.make FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.make_id = T2.id WHERE T1.year = 1970;
SELECT T2.make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT T2.make , T1.year FROM car_names AS T1 JOIN car_makers AS T2 ON T1.make_id = T2.id WHERE T1.year = (SELECT min(YEAR) FROM cars_data)
SELECT T1 maker , T2.year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.year > 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.year > 1980
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Contid = T2.Country GROUP BY T1.continent
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Contid = T2.Country GROUP BY T1.continent
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.countryname = (SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1) END;
SELECT count(*) , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.FullName
SELECT t1.accelerate FROM cars_data AS t1 JOIN car_names AS t2 ON t1.make_id = t2.makeid WHERE t2.model = 'amc hornet sportabout' ORDER BY t1.accelerate DESC LIMIT 1;
SELECT sum(Accrate) FROM cars_data WHERE model = 'amc hornet sportabout (sw)'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers WHERE country = \"France\";
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers WHERE country IN ( 'United States' )
SELECT avg(MPG) FROM cars_data WHERE cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker
SELECT T1 maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2Maker.id GROUP BY T1.id HAVING count(*) >= 1;
SELECT T1 maker , T2.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id HAVING count(*) >= 1
SELECT count(*) FROM car_names WHERE horsepower > 150
SELECT count(*) FROM car_names WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T2.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.country WHERE T2.continent = 'Europe' GROUP BY T2.countryname HAVING count(*) >= 3
SELECT max(T1.horsepower) , T2.make FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T1.cylinders = 3
SELECT max(T1.horsepower) , T2.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.Cylinders = 3 GROUP BY T2.maker ORDER BY max(T1.horsepower) DESC LIMIT 1;
SELECT model FROM car_names WHERE mpg = (SELECT max(mpg) FROM car_names) GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM car_names ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM car_names WHERE YEAR < 1980;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.make = "Volvo"
SELECT avg(edispl) FROM cars_data WHERE maker = 'Volvo'
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accrate) FROM cars_data WHERE Cylinders = (SELECT Cylinders FROM cars_data GROUP BY Cylinders ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE cylinders > 4;
SELECT count(*) FROM cars_data WHERE cylinders > 4;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2 maker = 'American Motor Company'
SELECT T1.maker , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker_id GROUP BY T2Maker_id HAVING count(*) > 3
SELECT T1.maker , T2.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T1.maker HAVING count(*) > 3
SELECT DISTINCT T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker_id WHERE T1.fullName = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight > 3500 OR T2.maker = 'General Motors'
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM car_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM car_data WHERE weight > 3000;
SELECT max(Horsepower) FROM car_names WHERE Accelerate = ( SELECT max(Accelerate) FROM car_names )
SELECT max(Horsepower) FROM car_names WHERE Accelerate = (SELECT max(Accelerate) FROM car_names);
SELECT T1.cylinders FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.modelid WHERE T1 maker = 'volvo' ORDER BY T2.Accrate LIMIT 1;
SELECT T1.cylinders FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.modelid WHERE T1.maker = 'Volvo' ORDER BY T2.Accrate DESC LIMIT 1
SELECT count(*) FROM car_names WHERE accelerate > (SELECT max(horsepower) FROM car_names);
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data);
SELECT count(*) FROM car_makers WHERE country IN ( SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2 ) ;
SELECT count(*) FROM car_makers WHERE country = (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6;
SELECT model FROM car_names WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.model WHERE T1.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.makeid , T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.horsepower > ( SELECT min(horsepower) FROM cars_data ) AND T2.cylinders != 4
SELECT maker , model FROM car_names WHERE makeid NOT IN ( SELECT maker FROM car_names GROUP BY maker ORDER BY sum(horsepower) LIMIT 1 ) AND cylinders < 4
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980;
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980;
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2 maker = 'Ford Motor Company'
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list AS T2 JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3 maker = 'Ford Motor Company'
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT make FROM car_makers EXCEPT SELECT maker FROM car_names
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE T2.model count(*) >= 2 INTERSECT SELECT T1.id , T1.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T2.Horsepower > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.Countryid = T2.Country WHERE count(*) > 3 UNION SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_names AS T2 ON T1.Countryid = T2.Make WHERE T2.model = 'fiat'
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.country = T2.country GROUP BY T1.make HAVING count(*) > 3 UNION SELECT makeid , model FROM car_names WHERE make = 'Ford' INTERSECT SELECT makeid , model FROM car_names WHERE make = 'BMW'
SELECT T2.state FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE airline = \"Jetblue Airways\";
SELECT trim(Airline) FROM airlines WHERE Airline = \"JetBlue Airways\";
SELECT t1.countryabbreviation FROM airlines AS t1 JOIN flights AS t2 ON t1.id = t2.airline WHERE t2.sourceairport = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE country = "USA"
SELECT Airline , ShortWord FROM airlines WHERE country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = "Anthony"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airways
SELECT count(*) FROM airways
SELECT count(*) FROM aerodromes
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Abbreviation FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airways WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportcode = "Alton"
SELECT city , country FROM airports WHERE airportcode = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Canada') AND ato = 'Terminal'
SELECT count(*) FROM flights WHERE SourceAirport = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN ( SELECT city FROM airports WHERE airportname = 'Aberdeen' ) AND destairport IN ( SELECT city FROM airports WHERE airportname = 'Aberdeen' );
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Unknown'
SELECT count(*) FROM flights WHERE DESTAirport IN (SELECT airportcode FROM airports WHERE country = 'UK' AND city = 'Aberdeen');
SELECT count(*) FROM flights WHERE DESTAirport IN (SELECT airportcode FROM airports WHERE country = 'United Kingdom' AND city = 'Aberdeen')
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = 'Ashley' AND DestAirport = 'Aberdeen'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "JetBlue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.dedicated WHERE T1.airline = \"Jetblue Airways\";
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.airportname = 'ASY' AND T3.Alightline = \"United Airlines\";
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3Airline = \"United Airlines\" AND T2.country = \"USA\" AND T2.airportname = \"ASY Airport\";
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.airportname = 'AHD' AND T3.Alightairline = 'United Airlines';
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = \"Anchorage\" AND T3.city = \"Hawthorne\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.id WHERE T2.country = \"United States\" AND T2.city = \"Aberdeen\";
SELECT count(*) FROM flights WHERE Airline = \"United Airlines\" AND DESTAirport = \"Aberdeen\";
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.town FROM towns AS T1 JOIN airports AS T2 ON T1.town = T2.countryAbbrev GROUP BY T1.town ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS t2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS t2 ON T1.airportcode = t2.sourceairport GROUP BY t1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) DESC LIMIT 1;
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) DESC LIMIT 1
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) DESC LIMIT 1;
SELECT flightno FROM flights GROUP BY flightno ORDER BY count(*) ASC LIMIT 1
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airways ORDER BY count(*) DESC LIMIT 1;
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airways ORDER BY count(*) DESC LIMIT 1;
SELECT T2.airstate , T1.thename FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.thename ORDER BY count(*) LIMIT 1;
SELECT T2.airways , T1.countryfromstates FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.countryfromstates ORDER BY count(*) LIMIT 1;
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.country = 'USA' AND T2.country = 'Australia'
SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.adpark = 'AHD'
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.country = 'Canada' AND T1.destination = 'AHD'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.countryabbreviation = 'Australia' AND T2.countryabbreviation = 'Germany'
SELECT T2.airways FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = "Australia" INTERSECT SELECT T2.airways FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = "Canada"
SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.country = 'Country' AND T3.country = 'CountryAbbrev' WHERE T2.address = 'CVO' EXCEPT SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.country = 'Country' AND T3.country = 'CountryAbbrev' WHERE T2.address = 'APG'
SELECT T2.airways FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = 'Canada' EXCEPT SELECT T2.airways FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = 'Australia'
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airways HAVING count(*) >= 10
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airways HAVING count(*) >= 10
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT T2.FlighNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT T2.flightno FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = "USA" AND T1.name = "APG"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND sourceairport != 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DESTAirport IN (SELECT airportcode FROM airports WHERE country = 'Scotland') AND sourceairport = 'Aberdeen'
SELECT T2.flightsno FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Aberdeen' OR T1.city = 'Abilene'
SELECT count(*) FROM flights WHERE sourceairport IN ("Aberdeen", "Abilene")
SELECT airportname FROM airports EXCEPT SELECT T2.airportcode , T2.name FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode UNION SELECT T2.airportcode , T2.name FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode
SELECT airportcode FROM airports EXCEPT SELECT sourceairport , destairport FROM flights
"sql": "SELECT count(*) FROM employee"
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1;
SELECT city FROM employee GROUP BY city HAVING count(*) > 1;
SELECT count(*) , T3.name FROM shop AS T1 JOIN HIRING AS T2 ON T1.shop_id = T2.shop_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id GROUP BY T3.name
SELECT count(*) , T3.name FROM shop AS T1 JOIN evaluation AS T2 ON T1.shop_id = T2.shop_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id GROUP BY T3.name
SELECT name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T1.name , T1District FROM shop AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1District ORDER BY count(*) DESC LIMIT 1;
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT T2.name , T2.city , T2.district FROM shoppet AS T1 JOIN product AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.start_from DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 0 ORDER BY T2.Start_from DESC LIMIT 1;
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1"
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , t1.name FROM shop AS t1 JOIN employee AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.name
SELECT sum(T1.total_premium) FROM assessment AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = 2004 GROUP BY T1.employee_id HAVING count(*) >= 50000
SELECT sum(extra_prize) FROM assessment;
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT T1.District FROM shop AS T1 JOIN number_products AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T2.Number_products < 3000 INTERSECT SELECT T1.District FROM shop AS T1 JOIN number_products AS T2 ON T1.Shop_ID = T2.Shop_ID WHERE T2.Number_products > 10000 + 10000
SELECT count(DISTINCT location) FROM shop;
SELECT count(DISTINCT location) FROM shop
SELECT count(*) FROM Documents
"sql": "SELECT count(*) FROM Documents"
SELECT T1.paper_id , T2.paper_name , T2.paper_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT T1.template_id , T1.template_type_code , T1.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name != "null"
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE "%w%"
SELECT T1.Document_Name , T2.Layout_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Description LIKE '%w%'
SELECT T1.paper_id , T1.layout_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT T1.paper_id , T1.layout_id , T1.describing_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents;
SELECT count(DISTINCT t1.layout) FROM Text_FILES AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY t1.layout HAVING count(*) >= 40000
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) , T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id
SELECT count(*) , T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT layout_id , VERSION_NUMBER , layout_type FROM Templates
SELECT T1.template_id , T2.edition_number , T1.layout_type FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT DISTINCT layout FROM Ref_layout
SELECT DISTINCT template_type_description FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT edition_number , layout_type FROM Templates WHERE template_type_code = 'Paper' AND template_id IN (SELECT template_id FROM Documents WHERE document_description LIKE '%Letter%' AND document_name LIKE '%A Letter%') OR template_type_code = 'Book' AND template_id IN (SELECT template_id FROM Documents WHERE document_description LIKE '%Massachusetts Institute of Technology%' AND document_name LIKE '%MIT%' )
SELECT T1.template_id , T2.layout_type_name FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_code = "Edition Layout" AND T1.version_number > 5
SELECT template_type_code , count(*) FROM templates GROUP BY template_type_code
SELECT template_type_code , count(*) FROM Ref_templates GROUP BY template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_description FROM Ref_template_types WHERE template_type_code IN ( SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3 )
SELECT min(T2.version_number) , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_type_code ORDER BY count(*) ASC LIMIT 1;
SELECT template_type_code , version_number FROM Templates ORDER BY version_number ASC LIMIT 1;
SELECT template_type_code FROM templates WHERE template_details = "Data base"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%BK%"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID GROUP BY T1.template_type_description
SELECT template_type_code , count(*) FROM Documents GROUP BY template_type_code
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN paragraphs AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT template_type_description , template_type_code FROM Ref_Template_Types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID WHERE T2.Document_Description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.template_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM Templates WHERE template_type_code = "Presentation"
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Description = "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.Paragraph_ID , T2.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.Paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN_paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN_paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1 ID
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paragraph_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Brazil" INTERSECT SELECT T1.paragraph_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Ireland"
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_Text = "Brazil" INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Paragraph_Text = "Ireland"
SELECT count(*) FROM teacher
SELECT count(*) FROM professor
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT name FROM teacher ORDER BY age LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher UNION SELECT Hometown FROM course_arrange GROUP BY Hometown HAVING COUNT(*) >= 2;
SELECT T1.town FROM town AS T1 JOIN teacher AS T2 ON T1.town = T2.hometown GROUP BY T1.town HAVING count(*) >= 2;
SELECT T2.Name , T1.HomeworkCurriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Name , T1.Curriculum FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Faculties , T1.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Faculties ASC
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = \"Math\";
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.Course_ID = "Math"
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30;
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership < 5
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit
SELECT sum(total_spent) FROM visit WHERE LEVEL_of_membership = 1;
SELECT T3.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year < 2009 INTERSECT SELECT T3.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit WHERE museum_id IN ( SELECT museum_id FROM museum WHERE open_year > 2010 ) );
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
"sql": "SELECT count(*) FROM players"
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name FROM players WHERE country_code = "USA";
SELECT first_name , last_name FROM players WHERE country_code = 'USA'
SELECT avg(losser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches;
SELECT avg(winner_rank) FROM matches;
SELECT max(loser_rank) FROM matches;
SELECT T1.ranker_rank FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.ranker_rank ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT count(DISTINCT loser_name) FROM matches;
SELECT tourney_name FROM rankings WHERE tours > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_id FROM matches WHERE YEAR = 2016) GROUP BY winner_name HAVING count(*) >= 2013 AND count(*) >= 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.firstname FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.firstname FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.winner_name , T3.ranking_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T1.round = (SELECT max(round) FROM matches) ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\" GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM matches)
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN matches AS T3 ON T1.player_id = T3.winner_id ORDER BY T2.match_num DESC LIMIT 1
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.ranking , T2.first_name + ' ' + T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name , T1.last_name , SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , T1.state_code FROM states AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.state_code;
SELECT count(*) , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code
SELECTabbreviation FROM state AST1 JOIN matches AST2 ON T1.winner_id = T2.loser_id OR T1.winner_id = T2.loser_id GROUP BY T1.state_id ORDER BY count(*) DESC LIMIT 1;
SELECT abb FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T2.minutes) , t1.ranking FROM rankings AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id GROUP BY t1.ranking
SELECT sum(T2.minutes) , T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id + T1.year - T2.match_num GROUP BY T1.ranking ORDER BY sum(T2.minutes) DESC LIMIT 10;
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3;
SELECT T1.name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = \"WTA Championships\";
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = \"WTA Championships\";
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.rankings_points = ( SELECT max(T2.rankings_points) FROM rankings AS T2 ON T2.player_id = T1.player_id ) ORDER BY T1.winner_rank_points DESC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM battle WHERE result = 'Capture'
SELECT name , tonnage FROM ship ORDER BY tonnage DESC
SELECT name , date , result FROM battle
SELECT max(T1.death) , min(T1.death) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT avg(injured) FROM death;
SELECT T1.died , T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = T2.T2.tonnage
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS t2 ON T1.id = T2.lost_in_battle WHERE ship_type = 'Brig' OR ship_type = 'Colony' OR ship_type = 'Frigate' OR ship_type = 'HMS' OR ship_type = 'Patrol Ship' OR ship_type = 'Squadron' OR ship_type = 'Submarine' OR ship_type = 'Tory'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T1.lost_in_battle) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN bulgarian_commander AS T2 ON T1.bulgarian_commander = T2.bulgarian_commander WHERE T2.kaloyan >= ('Latin commander 'Baldwin I')
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT id FROM ship WHERE tonnage = 225 )
SELECT T1.name , T3.date FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id JOIN death AS T3 ON T1.id = T3.caused_by_ship_id WHERE T1.name = 'Lettice' INTERSECT SELECT T1.name , T3.date FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id JOIN death AS T3 ON T1.id = T3.caused_by_ship_id WHERE T1.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE lost_in_battle = 'English Channel')
SELECT T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.location LIKE '%East%'
SELECT address_id , line_1 , line_2 FROM Addresses
SELECT line_1 , line_2 FROM Addresses;
SELECT count(*) FROM Degrees PROGRAMS;
"sql": "SELECT count(*) FROM Degree_Programs;"
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT course_description FROM courses WHERE course_category = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.degree_summary_name , T1.department_id FROM Degree_Programs AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name FROM departments AS T1 JOIN student_enrolment_courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT count(DISTINCT degree_summary_description) FROM Degree_Programs;
SELECT sum(T2.angle) FROM Degree_Programs AS T1 JOIN Courses AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T1.department_name = \"Engineering\";
SELECT sum(T1.angle) FROM Degrees AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = \"Engineering\";
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2;
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM SECTION ORDER BY section_name DESC
SELECT T1.se semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT description FROM courses WHERE course_name LIKE '%computer%';
SELECT other_division FROM departments WHERE department_name LIKE '%computer%';
SELECT T1.first_name , T1.last_name , T1.middle_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = '2' GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2 GROUP BY T1.student_id HAVING count(*) = 1 UNION SELECT T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 4 AND T2.semester_id = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 'Bachelor';
SELECT T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN student_enrolment_courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id WHERE T2.degree_program_id = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.student_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_description FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.middle_name , T2.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT course_id FROM Student_Enrolment_Courses)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id WHERE student_enrolment_id NOT IN ( SELECT student_enrolment_id FROM student_enrolment );
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id IN (SELECT T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id HAVING count(*) > 0)
SELECT T2.course_name FROM student_enrolment AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1"
SELECT T1.last_name FROM students AS T1 JOIN students_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 'None'
SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id && 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN student_enrolment_courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id JOIN courses AS T4 ON T3.course_id = T4.course_id WHERE T4.course_name = 'Degree Programs' AND T3.student_enrolment_id IS NULL
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timothy\" AND last_name = \"Ward\";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT middle_name , last_name FROM Students WHERE student_id = (SELECT student_id FROM Student_Enrolment ORDER BY date_first_registered LIMIT 1)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_left ASC LIMIT 1;
SELECT T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_1 != T1.current_address_id;
SELECT T1.first_name FROM Students AS T1 JOIN Students.student_id AS T2 ON T1.student_id = T2.student_id WHERE T2.permanent_address_id = T1.current_address_id AND T1.current_address_id != T1.permanent_address_id;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1"
SELECT avg(date_first_registered) FROM Students;
SELECT avg(date_first_registered) FROM Students;
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT transcript_date , other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1;
SELECT count(*) FROM students;
SELECT count(*) FROM Students;
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1;
SELECT date_last_released FROM Students;
SELECT count(DISTINCT student_id) , student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id ORDER BY count(DISTINCT student_id) DESC LIMIT 1;
SELECT T1.course_name , T2.student_enrolment_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered , T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id = 'Bachelor'
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.course_id IN('CS105', 'CM406') AND T1.degree_program_id = 'MA' INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.course_id IN('CS105', 'CM406') AND T1.degree_program_id = 'BA' GROUP BY T1.student_id HAVING count(*) >= 200000
SELECT count(DISTINCT current_address_id) FROM Students;
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id;
SELECT * FROM students ORDER BY student_details DESC
SELECT * FROM Students ORDER BY first_name , last_name DESC
SELECT description FROM SECTION WHERE section_name = 'H';
SELECT section_description FROM SECTION WHERE section_name = "h"
SELECT T2.first_name , T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country = \"Haiti\" OR T2.cell_mobile_number = \"09700166582\";
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Students.student_id REFERENCES T1.student_id WHERE T1.permanent_address_id = (SELECT address_id FROM addresses WHERE country = "Haiti") UNION SELECT cell_mobile_number FROM Students WHERE country = "Haiti"
SELECT title FROM animation ORDER BY title
SELECT title FROM animation ORDER BY title
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\";
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM Animation WHERE Written_by = \"Joseph Kuhr\";
SELECT directed_by , air_date FROM cartoon ORDER BY air_date
SELECT T1.title , T1.directed_by FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel ORDER BY T2.air_date
SELECT T1.title FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Ben Jones" OR T2.directed_by = "Brandon Vietti"
SELECT T1.title FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.directed_by WHERE T2.written_by = \"Ben Jones\" OR T2.written_by = \"Brandon Vietti\";
SELECT Country , COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT t1.state , count(*) FROM state AS T1 JOIN tv_channel AS T2 ON T1.id = T2.channel GROUP BY T1.state ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel;
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Air_Date FROM TV_series WHERE Series_Name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT DISTINCT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1;
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = \"The Rise of the Blue Beetle!\"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = \"Sky Radio\"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT id , episode FROM TV_series ORDER BY rating
SELECT T2.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series;
SELECT max(Share) , min(Share) FROM TV_series;
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = \"A Love of a Lifetime\";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Weekly_Rank , T1.score FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = \"A Love of a Lifetime\"
SELECT id FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.episode FROM tv_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by;
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE hight_definition_tv = 'Yes'
SELECT package_option , series_name FROM TV_CHANNEL WHERE hight_definition_tv = 'Yes'
SELECT T3.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T2.channel = T3.channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.state FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = \"Todd Casey\";
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT id , title FROM cartoon WHERE written_by != 'Todd Casey'
SELECT T2.series_name , T1.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Ben Jones\" INTERSECT SELECT T2.series_name , T1.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Michael Chang\"
SELECT T2.series_name , T2.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.content = 'Animation' AND directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name , T2.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.content = 'Animation' AND directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR , country FROM TV_Channel WHERE Language != "english"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE != "english"
SELECT id FROM (SELECT channel FROM TV_channel GROUP BY channel HAVING count(*) > 2)
SELECT id FROM TV_channel GROUP BY channel HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM TV_series WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T2.id FROM TV_show AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel JOIN Ben Jones AS T3 ON T1.directed_by = T3.
SELECT package_option FROM TV_channel WHERE channel != "Ben Jones - TV"
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT channel FROM TV_series WHERE directed_by = "Ben Jones" )
SELECT count(*) FROM car_gamer;
SELECT count(*) FROM people WHERE Nationality = "Car"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE Nationality = "Car"
SELECT avg(T1.Revenue) FROM car_gameplayer AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\"
SELECT avg(Income) FROM Car_Gamer
SELECT Money_Rank FROM people JOIN poker_player ON people.People_ID = poker_player.People_ID ORDER BY Poker_Player_Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T2.Final_Table_Made) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM people AS T1 JOIN car_gamer AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T1.People_ID ORDER BY COUNT(*) ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 AND T2.Car_Games = 1
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 AND T2.Gamers_ID IN (SELECT Gamers_ID FROM car_gamer)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM People ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM people AS T1 JOIN cars_gameer AS T2 ON T1.People_ID = T2.People_ID)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT nationality) FROM people
SELECT count(DISTINCT nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT competitor_number , competitor_name FROM contestants ORDER BY competitor_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T2.contestant_number , T1.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM votes WHERE vote_id NOT IN ( SELECT vote_id FROM votes )
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1"
SELECT T1.phone_number , T1.state , T1.contestant_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contcontestant_name = 'Kelly Clauss'
SELECT distinct(t1.contestant_name) FROM contestants AS t1 JOIN testants AS t2 ON t1.contestant_number = t2.contestant_number WHERE t2.contestant_name LIKE '%Al%'
SELECT name FROM state WHERE independent > 1950
SELECT name FROM country WHERE indeyyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
SELECT region FROM country WHERE capital = 'Kabul'
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.countrycode = "Aruba" GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = 'Aruba' GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE Region = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Region = "Brazil"
SELECT region , population FROM country WHERE name = "Angola"
SELECT t3.region , t3.population FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode JOIN countrylanguage AS t3 ON t1.code = t3.countrycode WHERE t1.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE continent = 'Central'Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode ORDER BY t1.lifeexpectancy LIMIT 1
SELECT sum(Population) , max(GNP) FROM country WHERE Continent = "Asia"
SELECT count(*) , max(GNP) FROM country WHERE Continent = "Asia"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND Annotation != "NaN"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND Continent = "Africa"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland';
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'USA'
SELECT avg(GNP) , sum(population) FROM country WHERE continent = 'USA'
SELECT count(DISTINCT language) FROM countrylanguage;
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(DISTINCT t1.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT t3.LocalName FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode JOIN city AS t3 ON t1.Code = t3.CountryCode GROUP BY t2.CountryCode ORDER BY sum(t2.Percentage) DESC LIMIT 1;
SELECT t2.Continent FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code GROUP BY t2.Continent ORDER BY sum(t1.percentage) DESC LIMIT 1;
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = 'English' INTERSECT SELECT count(*) FROM countrylanguage WHERE language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Dutch"
SELECT t3.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN city AS t3 ON t1.countrycode = t3.countrycode WHERE t1.language = \"English\" INTERSECT SELECT t3.name FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code JOIN city AS t3 ON t1.countrycode = t3.countrycode WHERE t1.language = \"French\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'French' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Chinese"
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Asia' GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia' GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN language AS T3 ON T2.Language = T3.Language WHERE T1.GovernmentForm = "Republic" GROUP BY T3.Language HAVING Percentage = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = "English" GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = 'English' GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT avg(LifeExpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT sum(population) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT population FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = "English"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix" AND T2.IsOfficial = "English"
SELECT sum(isofficial) FROM countrylanguage WHERE indeyyear < 1930;
SELECT sum(isofficial) FROM countrylanguage WHERE createdyear < 1930;
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > ( SELECT min(surfacearea) FROM country WHERE continent = 'Europe' )
SELECT name FROM country WHERE continent = 'African' INTERSECT SELECT name FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'African' AND population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asian' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE region = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT abbreviation FROM country WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECTabbreviation FROM countrylanguage WHERE IsOfficial = 'No'
SELECT T1.name , T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "english"
SELECT T1.name , T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT code , abbreviation FROM country WHERE governmentform != 'Republic' AND IsOfficial = 'No'
SELECT abbreviation FROM state WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "Irlandais") AND governmentform != "República"
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'No' AND T2.Language = 'English' OR T2.Language = 'Spanish' OR T2.Language = 'French'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = "Not an Official Language" AND T2.Language != "English"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'Chinese' GROUP BY T1.Name HAVING COUNT(*) >= 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Chinese' AND T2.Language = 'English'
SELECT name , founded_year , region FROM country ORDER BY population LIMIT 1
SELECT name , indeyyear , region FROM country ORDER BY population LIMIT 1
SELECT count(*) , name , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform , sum(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT governmentform , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT continent , avg(lifeexpectancy) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT T1.Name , T2.SurfaceArea FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code ORDER BY T2.SurfaceArea DESC LIMIT 5
SELECT name , region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000;
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T1.countrycode FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.countrycode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , T2.language , max(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.language
SELECT sum(population) FROM countrylanguage WHERE language = 'Spanish' GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Spanish"
"sql": "SELECT count(*) FROM conductor"
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Yr_of_Founded DESC
SELECT avg(Attendance) FROM show;
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor;
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Director DESC
SELECT name FROM conductor ORDER BY age DESC
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1;
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT T2.Name , T3.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T1.Orchestra_ID = T3.Orchestra_ID
SELECT T2.Name , T3.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1;
SELECT T2.name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.name HAVING count(*) > 1;
SELECT T2.name FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T1.performance_id ORDER BY count(*) DESC LIMIT 1"
SELECT T2.name FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1"
SELECT T2.name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id WHERE T1.date > 2008 UNION SELECT T2.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.orchestra_id WHERE T1.year_of_work > 2008
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Date > '2008' AND T2.Year_of_Work < '2009'
SELECT record_company , COUNT(*) FROM orchestra GROUP BY record_company;
SELECT count(*) , e.name FROM enterprise AS t1 JOIN show AS t2 ON t1.orchestra_id = t2.performance_id GROUP BY e.name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1;
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM conductor WHERE Conductor_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT * FROM ensemble WHERE Performance_ID NOT IN (SELECT Performance_ID FROM performance)
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT count(*) FROM recording_company WHERE record_company = "CD" OR record_company = "DVD"
SELECT count(*) FROM performance WHERE Type = \"CD\" OR Type = \"DVD\";
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Year_of_Founded HAVING COUNT(*) > 1;
SELECT min(YEAR_of_Founded) FROM performance GROUP BY TYPE HAVING COUNT(*) > 1;
"sql": "SELECT count(*) FROM highschooler"
SELECT count(*) FROM highschooler
SELECT name , grade FROM Highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = "Kyle"
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T2.student_id , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T2.student_id
SELECT count(DISTINCT T2.friend_id) , T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle' AND T2.friend_id != 'Kyle'
SELECT T3.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T1.id = T3.id WHERE T1.id = T2.student_id AND T1.name = 'Kyle'
SELECT count(DISTINCT T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = \"Kyle\"
SELECT count(T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = \"Kyle\"
SELECT id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T2.student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.id NOT IN ( SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id )
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend WHERE student_id NOT IN (SELECT student_id FROM likes) AND friend_id NOT IN (SELECT student_id FROM friend)
SELECT T3.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id JOIN friend AS T3 ON T1.friend_id = T3.id WHERE T2.id IN ( SELECT T2.id FROM highschooler AS T2 JOIN likes AS T1 ON T2.id = T1.liked_id GROUP BY T2.id HAVING count(*) >= 1 ) {}
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT T1.student_id , count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROMlikes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM highschooler AS t1 JOIN likes AS t2 ON t1.id = t2.student_id GROUP BY t2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = \"Kyle\" AND T2.liked_id IN (SELECT liked_id FROM likes AS T3 JOIN highschooler AS T4 ON T3.student_id = T4.id WHERE T4.name = \"Josh\")
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id;
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT mingrade FROM highschooler WHERE id NOT IN ( SELECT student_id FROM Friend )
SELECT state FROM owners INTERSECT SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'vetted'
SELECT state FROM owners INTERSECT SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'vetrinarian'
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = 'Dog Medical') GROUP BY T1.dog_id HAVING count(*) > 0;
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN t3 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_description = \"healthcare\");
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professional AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "IN" OR count(*) > 2
SELECT T1.owner_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "IN" OR T1.owner_id IN (SELECT T3.owner_id FROM treatments AS T3 JOIN professionals AS T2 ON T3.professional_id = T2.professional_id GROUP BY T3.owner_id HAVING count(*) > 2)
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T3.name FROM charges AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000;
SELECT first_name FROM owners UNION SELECT first_name FROM professionals WHERE role_code = 'vetorarian' EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM owners WHERE job_code = 'Veterinarian' OR job_code = 'Guardian' EXCEPT SELECT first_name FROM dogs WHERE name LIKE '%dog%'
SELECT vet_id , role_code , email_address FROM veterinarians EXCEPT SELECT T1.vet_id , T2.role_code , T2.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = "dog owner"
SELECT curr_id , current_role , email FROM professionals EXCEPT SELECT T1.curr_id , T1.current_role , T1.email FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , Towners.first_name , Towners.last_name FROM Owners AS Towners JOIN Dogs AS Tdogs ON Towners.owner_id = Tdogs.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T3.first_name , T3.last_name FROM Dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.given_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Labrador' GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t3.size_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_id = t2.charge_id JOIN dogs AS t3 ON t2.dog_id = t3.dog_id GROUP BY t1.charge_type ORDER BY sum(t1.cost_amount) LIMIT 1;
SELECT t3.size_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_id = t2.cost_of_treatment JOIN dogs AS t3 ON t2.dog_id = t3.dog_id GROUP BY t1.charge_amount ORDER BY sum(t1.charge_amount) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.zip_code FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.veterinarian_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.veterinarian_id HAVING count(*) >= 2
SELECT T1.id , T2.cell_number FROM Professional AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(T3.cost_of_treatment) FROM treatments AS T3 JOIN professionals AS T4 ON T3.professional_id = T4.professional_id )
SELECT T1.first_name , T1.last_name FROM Professional AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(T3.cost_of_treatment) FROM treatments AS T3 JOIN professionals AS T4 ON T3.professional_id = T4.professional_id )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T1.operation = 'vet'
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.operation = 'vet'
SELECT T1.charge_type , T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T3.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
{ "sql": "SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id"
SELECT T1.first_name , T1.last_name , T4.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Sizes AS T3 ON T2.size_code = T3.size_code JOIN Treatment_Types AS T4 ON T2.dog_id = T4.dog_id
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Labrador'
SELECT T1.name , T3.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN t3 AS T3 ON T1.dog_id = T3.dog_id ORDER BY T2.breed_name ASC LIMIT 1;
SELECT T1.name , T4.date_arrived FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code JOIN owners AS T4 ON T1.owner_id = T4.owner_id WHERE T3.rarest_breed_code = T4.breed_code ORDER BY T4.date_arrived DESC LIMIT 1
SELECT T3.first_name , T3.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.state = \"VA\";
SELECT T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia" UNION SELECT T3.name FROM Dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN professionals AS T3 ON T1.owner_id = T3.owner_id
SELECT T1.date_arrived , T1.date_adopted FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical';
SELECT t1.date_arrived , t1.date_adopted FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Health' GROUP BY t1.dog_id HAVING count(*) >= 1;
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id ORDER BY t2.date_of_birth LIMIT 1;
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1;
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_adopted FROM Dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_adopted FROM Dogs WHERE breed_code = \"Puppy\""
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.breed_code = \"Pomeranian\" OR t1.breed_code = \"Labrador Retriever\" OR t1.gender = \"Male\" OR t1.gender = \"Female\" OR t1.age < 3 OR t1.age > 100
SELECT count(*) FROM dogs WHERE breed_code = \"Pug\" OR breed_code = \"Labrador Retriever\" OR breed_code = \"Bichon Frise\" OR breed_code = \"Corgi\" OR breed_code = \"German Shepherd\" OR breed_code = \"French Bulldog\" OR breed_code = \"Chihuahua\";
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.size_code = 'small' AND T3.gender = 'male';
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.size_code = 'small' AND T3.breed_code = 'Labrador' AND T1.role_code = 'vet' AND T2.treatment_type_code = 'puppy';
SELECT first_name , last_name , street , city , state FROM owners WHERE city LIKE '%West%'
SELECT first_name , last_name , street , city FROM owners WHERE state LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM OWNER WHERE state LIKE '%North%';
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs );
SELECT count(*) FROM dogs WHERE size_code = 'small' AND breed_code = \"Labrador Poodle\" OR breed_code = \"Bichon Frise\" OR breed_code = \"Samoyed\" OR breed_code = \"German Shepherd\" OR breed_code = \"French Bulldog\";
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT T1.cost_of_treatment FROM charges AS T1 JOIN treatments AS T2 ON T1.treatment_id = T2.treatment_id ORDER BY T2.date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments );
SELECT count(*) FROM dogs WHERE breed_code = \"Pug\" OR breed_code = \"Labrador Retriever\" OR breed_code = \"German Shepherd\" OR breed_code = \"French Bulldog\" OR breed_code = \"Chihuahua\" OR breed_code = \"Persian\" OR breed_code = \"Bichon Frise\" OR breed_code = \"Samoyed\" OR breed_code = \"Beagle\" OR breed_code = \"Dachshund\" OR breed_code = \"Bulldog\";
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'Puppy' )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE gender = 'male' AND breed_code = \"Labrador\" )
SELECT count(*) FROM veterinarians WHERE job_code != 'Puppy Tatcher' AND treatment_type_code != 'Disease Treatment';
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT treatment_type_code FROM treatments WHERE treatment_type_description = 'Puppy' )
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandonned_yn = '1'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT age FROM Dogs WHERE breed_code = 'puppy' ORDER BY age DESC LIMIT 1;
SELECT age FROM Dogs WHERE breed_code = 'puppy' ORDER BY age DESC LIMIT 1;
SELECT charge_type , charge_amount FROM CHarges
SELECT charge_type , charge_amount FROM CHarges
SELECT charge_amount FROM charges ORDER BY charge_type ASC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , cell_number , home_phone FROM professionals WHERE profession_code = "Veterinary"
SELECT email_address , cell_number , home_phone FROM owners AS T1 JOIN veterinarians AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT T1.breed_name , T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T2.first_name , T2.last_name , T1.description FROM Professional AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.dog_id
SELECT T1.first_name , T1.last_name , T3.description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatments AS T3 ON T2.treatment_id = T3.treatment_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , citizenship FROM singer GROUP BY citizenship
SELECT t1.Citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.song_id GROUP BY t1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id GROUP BY t1.citizenship HAVING count(*) >= 1
SELECT country , max(Net_Worth_Millions) FROM singer GROUP BY country
SELECT net_worth_millions , citizenship FROM singer GROUP BY citizenship ORDER BY max(net_worth_millions)
SELECT T3.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT T3.Title , T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN songwriter AS T3 ON T1.Singer_ID = T3.Singer_ID
SELECT DISTINCT T3.Name FROM song AS T1 JOIN artist AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID WHERE T1.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T3.Name , SUM(T2.Sales) FROM song AS T1 JOIN artist AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID GROUP BY T3.Name
SELECT T2.Name , SUM(T1.sales) FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN songwriter AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN songwriter AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM OTHER_AVAILABLE_FEATURES
SELECT T1.feature_type_code FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Properties WHERE property_type_code = "house" OR (property_type_code = "apartment" AND room_count > 1)
