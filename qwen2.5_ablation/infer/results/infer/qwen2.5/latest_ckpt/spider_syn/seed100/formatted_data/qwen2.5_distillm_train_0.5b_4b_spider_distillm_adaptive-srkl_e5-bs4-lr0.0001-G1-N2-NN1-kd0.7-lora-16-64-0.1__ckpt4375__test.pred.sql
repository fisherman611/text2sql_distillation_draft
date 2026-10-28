SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'French'
SELECT t1.name , t1.song_release_year FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id ORDER BY t1.age LIMIT 1;
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , t3.country FROM singer AS t1 JOIN singer_in_concert AS t2 ON t1.singer_id = t2.singer_id JOIN concert AS t3 ON t2.concert_id = t3.concert_id GROUP BY t3.country
SELECT name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(Highest) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(Highest) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.stadium_id , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT t1.name , count(*) FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR >= 2014 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.name , t1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY t1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT show_time FROM concert GROUP BY show_time ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT name FROM stadium EXCEPT SELECT t1.name FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year = 2014
SELECT count(*) , T1.theme , T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.theme
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT t1.name , t1.country FROM singer AS t1 JOIN musician AS t2 ON t1.song_name = t2.song_name WHERE t2.song_name LIKE "%Hey%"
SELECT t3.name , t3.position FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer AS t3 ON t1.singer_id = t3.singer_id WHERE t1.year = 2014 INTERSECT SELECT t3.name , t3.position FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer AS t3 ON t1.singer_id = t3.singer_id WHERE t1.year = 2015
SELECT t3.name , t3.location FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer AS t3 ON t1.singer_id = t3.singer_id WHERE t1.year = 2014 INTERSECT SELECT t3.name , t3.location FROM concert AS t1 JOIN stadium AS t2 ON t1.stadium_id = t2.stadium_id JOIN singer AS t3 ON t1.singer_id = t3.singer_id WHERE t1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.Highest = T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1;
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 WHERE pet_age = (SELECT min(pet_age) FROM pets)年龄最小的狗的重量。
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1 WHERE sex = 'min' ESCAPE '_';
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT max(T2.weight) , T1.pet_type FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid GROUP BY T1.pet_type
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pet_type = "dog"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pet_type = "dog" GROUP BY T1.StuID HAVING count(*) >= 100;
SELECT count(DISTINCT pet_type) FROM pets
SELECT count(DISTINCT pet_type) FROM pets
SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = 'kitten' OR T3.pettype = 'puppy'
SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetType = "Kitten" OR T1.PetType = "Puppy"
SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = "Kitten" INTERSECT SELECT T2.Fname , T2.Lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = "Puppy"
SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = \"Kitten\" INTERSECT SELECT T2.fname FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T1.petid = T3.petid WHERE T3.pettype = \"Puppy\""
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT T1.discipline , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT T3.petid FROM pets AS T3 JOIN has_pet AS T4 ON T3.petid = T4.petid WHERE T3.pettype = \"pet\")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT fname , lname FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_puppy ) AND pet_type != "Cat"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = \"dog\" EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE pettype = \"kitten\"
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT T2.Flowerweight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.pettype = 'animal' ORDER BY T1.petage LIMIT 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1
SELECT StuID , weight FROM Pets WHERE pet_age > 1
SELECT avg(age) , max(age) , major FROM student GROUP BY major
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT T2.fname , T2.lname , T1.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid
SELECT StuID FROM Student WHERE Fname = 'Smith' INTERSECT SELECT T3.Stuid FROM Has_Pet AS T1 JOIN Students AS T2 ON T1.Stuid = T2.Stuid JOIN Pets AS T3 ON T1.PetID = T3.PetID
SELECT Stuid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.Stuid = T2.Stuid WHERE T2.Fname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.Fname , T1.Lname
SELECT T2.fname , T2.lname , T2.sex FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.fname , T2.sex FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3;
SELECT T2.Lname FROM Pets AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pet_age = 3 AND T2.Fname = 'Kitty'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.continent_id , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent_id
SELECT T1.continent , T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.continent = T2.country_name GROUP BY T1.continent
SELECT count(*) FROM states
SELECT count(*) FROM countries
SELECT T1.maker , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T2.id
SELECT model FROM car_names ORDER BY horsepower ASC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.model WHERE T2.Horsepower = ( SELECT min(Horsepower) FROM cars_data )
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.id WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T3.maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2 maker = T3.id WHERE T1.year = 1970;
SELECT maker , YEAR FROM car_names ORDER BY YEAR ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id ORDER BY T2.year LIMIT 1;
SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2Maker.id WHERE T2.year > 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2 maker WHERE T1.year > 1980
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Contid = T2.Country GROUP BY T1.continent
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.countryname = (SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , maker FROM model_list GROUP BY maker
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id
SELECT Accelerate FROM cars_data WHERE Maker = "amc" AND Model = "hornet sportabout"
SELECT sum(Accelerate) FROM cars_data WHERE model = 'amc hornet sportabout (sw)'
SELECT count(*) FROM car_makers WHERE country = \"France\";
SELECT count(*) FROM car_makers WHERE country = 'France';
SELECT count(*) FROM car_makers WHERE country = 'USA'
SELECT count(*) FROM car_makers WHERE country IN ( 'United States' )
SELECT avg(MPG) FROM cars_data WHERE cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE cylinders = '4'
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974;
SELECT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker
SELECT T1.makeer , T2.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.makeer HAVING count(*) >= 1
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T2.id HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM car_names WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country EXCEPT SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3
SELECT T2.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.country WHERE T1.continent = "Europe" GROUP BY T2.countryname HAVING count(*) >= 3
SELECT max(T1.horsepower) , T2.make FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 3
SELECT max(T1.horsepower) , T2.maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = 3 GROUP BY T2.maker ORDER BY max(T1.horsepower) DESC LIMIT 1;
SELECT model FROM car_names WHERE mpg = (SELECT max(mpg) FROM car_names) GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id ORDER BY T1.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM car_names WHERE YEAR < 1980;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T2.Edispl) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.make = "Volvo"
SELECT avg(edispl) FROM cars_data WHERE maker = 'Volvo'
SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT max(Accrate) FROM cars_data WHERE Cylinders = (SELECT max(Cylinders) FROM cars_data)
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE cylinders > 4;
SELECT count(*) FROM cars_data WHERE cylinders > 4;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2 maker = 'American Motor Company'
SELECT T1.maker , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T2.maker HAVING count(*) > 3
SELECT T1.maker , T2.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1 maker = T2.id GROUP BY T1 maker HAVING count(*) > 3
SELECT DISTINCT T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker_id WHERE T1.fullName = "General Motors" OR T2.weight > 3500
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight > 3500 OR T2 maker = 'General Motors'
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000;
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM car_names WHERE Accelerate = (SELECT max(Accelerate) FROM car_names)
SELECT t1.cylinders FROM car_names AS t1 JOIN cars_data AS t2 ON t1.model = t2.model WHERE t1.make = \"Volvo\" ORDER BY t2.Accelerate LIMIT 1;
SELECT T1.cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2Maker = "Volvo" ORDER BY T1.Accrate DESC LIMIT 1
SELECT count(*) FROM car_names WHERE accelerate > ( SELECT max(horsepower) FROM car_names )
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data);
SELECT count(*) FROM car_makers WHERE country IN ( SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2 ) ;
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2 ) ;
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6;
SELECT model FROM car_names WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model_id = T2.model WHERE T1.cylinders = 4 ORDER BY T2.horsepower DESC LIMIT 1
SELECT T1.makeid , T1.make FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.horsepower > ( SELECT min(horsepower) FROM cars_data ) AND T2.cylinders != 4
SELECT maker , model FROM car_names WHERE makeid NOT IN ( SELECT maker FROM car_names GROUP BY maker HAVING count(*) < 4 ) AND horsepower >= 4
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980;
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980;
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2 maker = 'Ford Motor Company'
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list AS T2 JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3 maker = 'Ford'
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country
SELECT make FROM car_makers EXCEPT SELECT T1.make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid
SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1 maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1 maker HAVING count(*) > 3
SELECT T1.id , T1.make FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker WHERE T2.model count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country EXCEPT SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName = 'fiat' GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.makeup FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.country = T2.country GROUP BY T1.makeup HAVING count(*) > 3 UNION SELECT makeid , model FROM car_names WHERE make = ' Fiat'
SELECT T1.state FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.FlightNo = "JetBlue Airways"
SELECT T1.state FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.airline WHERE T1.airline = "Jetblue Airways"
SELECT airportname FROM airports WHERE airportcode = (SELECT sourceairport FROM flights WHERE airline = \"JetBlue Airways\") LIMIT 1;
SELECT ShortenedWord FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , abbreviation FROM airlines WHERE country = 'USA'
SELECT Airline , ShortWord FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport UNION SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT count(*) FROM airports
SELECT count(*) FROM aerodromes
SELECT count(*) FROM aerodromes
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Abbreviation FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportcode = "Alton"
SELECT city , country FROM airports WHERE airportcode = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Canada') AND terminal = 'ATO'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND destinationairport IN (SELECT airportcode FROM airports WHERE country = 'Canada')
SELECT count(*) FROM flights WHERE SourceAirport IN (SELECT city FROM airports WHERE airportname = 'Aberdeen') AND DestAirport IN (SELECT city FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' {}
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT city FROM airports WHERE countryabbreviation = 'UK') AND destairport IN (SELECT city FROM airports WHERE countryabbreviation = 'UK') WHERE airportname = 'Aberdeen';
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' AND DestAirport = 'Ashley'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = 'JetBlue Airways'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Adairline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.airportname = 'ASY' AND T3.Alightline = \"United Airlines\";
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.CompanyName = \"United Airlines\" AND T2.country = \"USA\" AND T2.arcname = \"ASY Airport\";
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'USA' AND T2.airportname = 'AHD' AND T3.AlightAirline = 'United Airlines';
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.country = 'United States' AND T3.country = 'Canada' AND T2.name = \"AHD\";
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.Airline WHERE T2.city = "Aberdeen" AND T3.country = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrivation WHERE T3.Airline = \"United Airlines\" AND T2.countryabbreviation = \"USA\" AND T2.city = \"Aberdeen\";
SELECT T1.city FROM airports AS T1 JOIN flights AS t2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.town FROM towns AS T1 JOIN airports AS T2 ON T1.town = T2.countryAbbrev WHERE T2.airportcode = (SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1) GROUP BY T1.town ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.town FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.town ORDER BY count(*) DESC LIMIT 1;
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) DESC LIMIT 1
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) DESC LIMIT 1
SELECT T2.code FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.code ORDER BY count(*) LIMIT 1;
SELECT flightno FROM flights GROUP BY flightno ORDER BY count(*) ASC LIMIT 1
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airways ORDER BY count(*) DESC LIMIT 1;
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode GROUP BY T2.airway ORDER BY count(*) DESC LIMIT 1;
SELECT T2.airstate , T1.destination FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.destination ORDER BY count(*) LIMIT 1;
SELECT T2.airway , T1.countryfromstate FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T2.airway ORDER BY count(*) DESC LIMIT 1;
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.country = 'USA' AND T2.country = 'Canada' AND T1.sourceairport = 'AHD'
SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.airportname = "AHD"
SELECT T2.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.country = 'USA' AND T1.sourceairport = 'AHD'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.countryabbreviation = 'USA' AND T1.flightno = 'AHD'
SELECT T2.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.countryabbreviation = 'Australia' AND T2.countryabbreviation = 'Canada'
SELECT T2.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = \"Australia\" INTERSECT SELECT T2.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = \" Canada \"]
SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'Australia' AND T1.sourceairport = 'CVO' EXCEPT SELECT T3.airways FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'Canada' AND T1.sourceairport = 'APG'
SELECT T2.airways FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = 'Canada' EXCEPT SELECT T2.airways FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = 'Australia'
SELECT T2.airway FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airway HAVING count(*) >= 10
SELECT T2.airways FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.airways HAVING count(*) >= 10
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND sourceairport != 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = (SELECT airportcode FROM airports WHERE country = "England") AND DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport FROM airports WHERE countryAbbrev = "United Kingdom" AND destinationAirport FROM airports WHERE countryAbbrev = "Scotland" IN Aberdeen
SELECT T2.flightsno FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.city = 'Aberdeen' OR T1.city = 'Abilene'
{"sql": "SELECT count(*) FROM flights WHERE sourceairport IN ( \"Aberdeen \\", \"Abilene \\")"}
SELECT airportname FROM airports EXCEPT SELECT T2.airportcode , T2.name FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode UNION SELECT T2.airportcode , T2.name FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode
SELECT airportcode FROM airports EXCEPT SELECT sourceairport , destairport FROM flights
"sql": "SELECT count(*) FROM employee"
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1;
SELECT city FROM employee GROUP BY city HAVING count(*) > 1;
SELECT count(*) , T1.name FROM shop AS T1 JOIN district AS T2 ON T1.location = T2.location GROUP BY T1.name
SELECT count(*) , T1.name FROM shop AS T1 JOIN area AS T2 ON T1.location = T2.location GROUP BY T1.name
SELECT name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT T2.name , T2.district FROM shop AS T1 JOIN hotel AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY sum(T1.number_products) DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT T2.name , T2.city , T2.district FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE Number_products > ( SELECT avg(Number_products) FROM shop )
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY max(T2.start_from) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 0 ORDER BY T2.start_from DESC LIMIT 1;
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1"
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id WHERE T2.age > 50)
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT count(*) , T3.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id GROUP BY T3.name
SELECT sum(T2.total_premium) FROM assessment AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT sum(extra_prize) FROM assessment;
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT T2.District FROM shop AS T1 JOIN county AS T2 ON T1.District = T2.District WHERE T1.Number_products < 3000 INTERSECT SELECT T2.District FROM shop AS T1 JOIN county AS T2 ON T1.District = T2.District WHERE T1.Number_products > 10000 + 50000
SELECT count(DISTINCT location) FROM shop
SELECT count(DISTINCT location) FROM shop;
SELECT count(*) FROM Documents
"sql": "SELECT count(*) FROM Documents"
SELECT paper_id , paper_name , document_description FROM Documents
SELECT document_id , title , description FROM Documents
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.document_description LIKE "%w%"
SELECT T1.Document_Name , T2.Layout_Ids FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Description LIKE '%w%'
SELECT T1.paper_id , T2.layout_id , T3.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Documents AS T3 ON T1.document_id = T3.document_id WHERE T3.document_name = "Robbin CV"
SELECT T1.paper_id , T2.layout_id , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents;
SELECT count(DISTINCT template_layout) FROM Documents;
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) , T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id
SELECT count(*) , T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM documents EXCEPT SELECT template_id FROM paragraphs
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT layout_id , VERSION_NUMBER , layout_type FROM Templates
SELECT T1.template_id , T2.edition_number , T1.layout_type FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT DISTINCT layout FROM Ref_layout_type
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT template_layout_code , template_eid FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"Paper\" AND T1.template_eid > 5;
SELECT template_layout_code , layout_type_name FROM Templates WHERE template_layout_code > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_description FROM Ref_template_types WHERE template_type_code IN ( SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3 )
SELECT min(template_type_code) , template_layout_code FROM Templates GROUP BY template_layout_code ORDER BY count(*) ASC LIMIT 1;
SELECT template_type_code , version_number FROM Templates ORDER BY version_number ASC LIMIT 1;
SELECT template_type_code FROM templates WHERE template_details = "Data base"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name = \"Data base\"
SELECT T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE "%BK%"
SELECT T1.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_ID GROUP BY T1.template_type_description
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_type_code
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN paragraphs AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM Documents
SELECT template_type_description , template_type_code FROM Ref_Template_Types
SELECT template_type_description , template_type_code FROM Ref_Template_Types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.template_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id
SELECT template_id FROM Templates WHERE template_type_code = "Presentation"
SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Description = "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT other_details FROM paragraphs WHERE paragraph_text LIKE "%Korea%"
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_name = "Customer reviews"
SELECT T1.Paragraph_Text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) >= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) ASC LIMIT 1"
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1"
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) <= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paragraph_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Brazil" INTERSECT SELECT T1.paragraph_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Ireland"
SELECT T1.document_id FROM Documents AS T1 JOIN_paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN_paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
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
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT name FROM teacher ORDER BY age LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Hometown FROM teacher UNION SELECT Hometown FROM course_arrange GROUP BY Hometown HAVING COUNT(*) >= 2 {}
SELECT T1.town FROM town AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.town HAVING count(*) >= 2;
SELECT T2.Name , T1.HomeworkCurriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.name , T1.campus FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.Faculties , T1.curriculums FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID ORDER BY T2.Faculties ASC
SELECT T2.Name , T1.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = 'Math'
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course = "Math"
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30;
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP < 5
SELECT name , level_of_membership FROM visitor WHERE age > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , Num_of_Staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1;
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit
SELECT sum(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT T3.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year < 2009 INTERSECT SELECT T3.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name FROM players WHERE country_code = 'USA'
SELECT first_name , last_name FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
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
SELECT winner_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE YEAR = 2013 UNION SELECT winner_id FROM matches WHERE YEAR = 2016)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016;
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.firstname FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.firstname FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT given , family FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T1.tourney_name = 'Australian Open' GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id ORDER BY T1.minutes DESC LIMIT 1;
SELECT T2.winner_name , T1.tourney_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = ( SELECT max(YEAR) FROM matches )
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT sum(T1.ranking_points) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code
SELECT count(*) , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code
SELECTabbreviation FROM state AST1 JOIN matches AST2 ON T1.player_id = T2.loser_id GROUP BY T1.state_code ORDER BY count(*) LIMIT 1;
SELECT abb FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code , abbreviation FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(T2.duration) , T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id + T2.losser_id GROUP BY T1.ranking ORDER BY count(*) DESC LIMIT 1;
SELECT sum(T1.tours) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3;
SELECT T1.name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3;
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = 'left' AND T2.tourney_name = \"WTA Championships\";
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = \"WTA Championships\";
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winning_rank_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = (SELECT max(T2.ranking_points) FROM rankings AS T2 ON T2.player_id = T1.player_id GROUP BY T2.ranking_points ORDER BY count(*) DESC LIMIT 1) ORDER BY T1.birth_date ASC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM battle WHERE outcome = 'Captured';
SELECT name , tonnage FROM ship ORDER BY tonnage DESC
SELECT name , date , result FROM battle
SELECT max(T1.death) , min(T1.death) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT avg(injured) FROM death;
SELECT T1.died , T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = T2.T2.tonnage
SELECT name , result FROM battle WHERE bulgarian_commander != "Boril"
SELECT DISTINCT T1.id , T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T1.lost_in_battle) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN bulgarian_commander AS T2 ON T1.bulgarian_commander = T2.bulgarian_commander WHERE T2.kaloyan >= (SELECT T2.kaloyan FROM bulgarian_commander AS T2 JOIN latin_commander AS T3 ON T2.bulgarian_commander = T3.bulgarian_commander AND T3.latin_commander = 'Baldwin I')
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT id FROM ship WHERE tonnage = 225 )
SELECT T3.name , T3.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T2.id = T3.id WHERE T2.name = 'Lettice' INTERSECT SELECT T3.name , T3.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle JOIN ship AS T3 ON T2.id = T3.id WHERE T3.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE lost_in_battle = 'English Channel')
SELECT T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.location LIKE '%East%'
SELECT line_1 , line_2 FROM Addresses
SELECT line_1 , line_2 FROM Addresses;
SELECT count(*) FROM departments AS T1 JOIN student_enrolment AS T2 ON T1.department_id = T2.department_id WHERE T2.student_id NOT IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id )
SELECT count(*) FROM DEGREE_PROGRAMS
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT course_description FROM courses WHERE course_code = 'MATH'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.degree_summary_name , T1.department_id FROM Degree_Programs AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_name) FROM Degree_Programs;
SELECT count(DISTINCT department_id) FROM Degree_Programs;
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs;
SELECT count(DISTINCT degree_program_id) FROM Degree_Programs;
SELECT sum(T1.degrees) FROM Degrees AS T1 JOIN Department Programs AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = \"Engineering\";
SELECT sum(T1.degrees) FROM Degrees AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = \"Engineering\";
SELECT section_name , section_description FROM SECTION
SELECT section_name , section_description FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2;
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM SECTION ORDER BY section_name DESC
SELECT T1.se semester_name , T2.student_id FROM Semesters AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT other_description FROM courses WHERE course_name LIKE '%computer%';
SELECT other_division FROM departments WHERE department_name LIKE '%computer%';
SELECT T1.first_name , T1.last_name , T1.middle_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = '2' GROUP BY T1.student_id HAVING count(*) = 1
SELECT T2.middle_name , T2.last_name , T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 2 GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 'Bachelor'
SELECT T2.middle_name , T2.family_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1"
SELECT T1.student_id , T4.degree_summary_description FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T3.degree_program_id = T1.degree_program_id JOIN Student_Enrolment_Courses AS T4 ON T1.student_enrolment_id = T4.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT course_id FROM Student_Enrolment_Courses)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id);
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id WHERE T2.student_enrolment_id IS NOT NULL;
SELECT T4.course_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN student_enrolment AS T4 ON T2.student_enrolment_id = T4.student_enrolment_id WHERE T4.student_id IN (SELECT student_id FROM student_enrolment_courses) GROUP BY T4.student_id HAVING count(*) > 0;
SELECT T2.course_name FROM student_enrolment AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.last_name FROM students AS T1 JOIN students_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_program AS T3 ON T2.degree_program_id = T3.degree_program_id;
SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id = 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN student_enrolment_courses AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id WHERE T3.course_id IN (SELECT T4.course_id FROM degree_programs AS T4 JOIN student_enrolment_courses AS T3 ON T4.degree_program_id = T3.degree_program_id WHERE T4.department_name = \"Degree Programs\") AND T4.department_description = \"Not specified\" AND T4.degree_summary_name = \"Not specified\" AND T4.other_details != \"No Degree Programs\";
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2;
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timothy\" AND last_name = \"Ward\";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT middle_name , last_name FROM Students WHERE student_id = (SELECT student_id FROM Student_Enrolment ORDER BY date_first_registered LIMIT 1)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1;
SELECT T2.middle_name , T2.last_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN students_current_address AS T2 ON T1.student_id = T2.student_id WHERE T2.line_1 != T1.line_1;
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_1 != T2.current_address_id;
SELECT T1.student_id , T1.line_1 FROM Students AS T1 JOIN Students ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM Students;
SELECT avg(date_first_registered) FROM Students;
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT max(transcript_date) , * FROM Transcripts;
SELECT count(*) FROM students;
SELECT count(*) FROM Students;
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1;
SELECT date_left FROM Students WHERE student_id = (SELECT student_id FROM Student_Enrolment ORDER BY date_left DESC LIMIT 1)
SELECT count(DISTINCT student_id) , student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id ORDER BY count(DISTINCT student_id) DESC LIMIT 1;
SELECT T1.course_name , T2.student_enrolment_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered , T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id = 'Bachelor'
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T1.degree_program_id = 'MA' INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T1.degree_program_id = 'BAS' AND T2.course_id = 'COMPUTER LITERACY' AND T2.course_name = 'COMPUTER LITERACY' AND T2.other_details = 'Masters' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BAAS' AND T2.course_name = 'BA
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id;
SELECT * FROM students ORDER BY student_id DESC
SELECT * FROM Students ORDER BY first_name , last_name DESC;
SELECT description FROM.sections WHERE section_name = 'H';
SELECT other_description FROM SECTION WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Students ON T1.student_id = T2.student_id WHERE T1.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Students.student_id ON T1.student_id = T2.student_id WHERE T1.current_address_id = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT title FROM animation ORDER BY title
SELECT title FROM animation ORDER BY title
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = \"Joseph Kuhr\";
SELECT count(*) FROM cartoon WHERE written_by = 'Joseph Kuhr';
SELECT T2.directed_by , T1.title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date
SELECT T1.title , T1.directed_by FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel ORDER BY T2.air_date
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" OR T1.directed_by = "Brandon Vietti"
SELECT T1.title FROM cartoon AS T1 JOIN directed_by AS T2 ON T1.directed_by = T2.directed_by WHERE T2.written_by = \"Ben Jones\" OR T2.written_by = \"Brandon Vietti\";
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT t1.country , sum(t2.channel) FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , content FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel;
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT t1.package_option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "English"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = "english"
SELECT LANGUAGE , COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = \"The Rise of the Blue Beetle!\"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = \"Sky Radio\";
SELECT T2.title FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = \"Sky Radio\"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT id , title FROM TV_series ORDER BY rating
SELECT T2.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series;
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = \"A Love of a Lifetime\";
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT sum(T2.Rating) , T1.Weekly_Rank FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.Episode = \"A Love of a Lifetime\" GROUP BY T1.Weekly_Rank ORDER BY sum(T2.Rating) DESC LIMIT 1;
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.episode = \"A Love of a Lifetime\"
SELECT id FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.episode FROM tv_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM Cartoon GROUP BY directed_by;
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by;
SELECT Production_code , CHANNEL FROM Cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = 'Yes'
SELECT package_option , series_name FROM TV_CHANNEL WHERE hight_definition_TV = 'HD'
SELECT T1.country FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT T1.state FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = \"Todd Casey\" AND T1.Content = \"Animation\";
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = "Todd Casey"
SELECT id , title FROM cartoon WHERE written_by != "Todd Casey"
SELECT T2.series_name , T1.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Ben Jones\" INTERSECT SELECT T2.series_name , T1.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.directed_by = \"Michael Chang\""
SELECT T2.series_name , T2.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN Cartoon AS T3 ON T2.id = T3.channel WHERE T3.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name , T2.country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN Cartoon AS T3 ON T2.id = T3.channel WHERE T3.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE != "english"
SELECT Pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE != "english"
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM TV_series WHERE directed_by = "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN tv_series AS T3 ON T2.channel = T3.channel JOIN animation AS T4 ON T3.id = T4.channel WHERE T2.directed_by = "Ben Jones"
SELECT package_option FROM TV_channel WHERE channel != (SELECT T1.channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channels = T2.id JOIN Cartoon AS T3 ON T1.channels = T3.channel WHERE T3.directed_by = "Ben Jones")
SELECT package_option FROM TV_CHANNEL WHERE channel NOT IN ( SELECT t1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = "Ben Jones")
SELECT count(*) FROM car_gamer
SELECT count(*) FROM people WHERE Nationality = "Car Gamer"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE Nationality = "Car"
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\";
SELECT avg(T1.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T2.Final_Table_Made) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000 GROUP BY T2.Final_Table_Made ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM people AS T1 JOIN car_gamer AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY COUNT(*) ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 AND T2.Car_Games = 1
SELECT avg(T1.Revenue) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200 GROUP BY T2.People_ID
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
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM people AS T1 JOIN car_gamer AS T2 ON T1.People_ID = T2.People_ID)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT nationalities) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT competitor_number , contestant_name FROM area_code_state ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM_votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T2.contestant_number , T1.contestant_name FROMVotes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM_votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM votes WHERE vote_id NOT IN ( SELECT vote_id FROM votes )
SELECT T2.area_code FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state GROUP BY T2.area_code ORDER BY count(*) DESC LIMIT 1"
SELECT T2.date , T2.state , T1.phone_number FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state AND T1.contestant_number = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indeyyear > 1950
SELECT name FROM country WHERE indeyyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean';
SELECT sum(surfacearea) FROM country WHERE region = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
SELECT region FROM country WHERE capital = 'Kabul'
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.countrycode = "Aruba" GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT t1.language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = 'Aruba' GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE Region = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Americas" AND Name = "Brazil"
SELECT Region , Population FROM country WHERE Region = "Angola"
SELECT T3.region , count(*) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode JOIN countrylanguage AS T3 ON T1.code = T3.code WHERE T1.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode ORDER BY T1.lifeexpectancy LIMIT 1
SELECT sum(Population) , max(GNP) FROM country WHERE Continent = "Asia"
SELECT count(*) , max(GNP) FROM country WHERE Continent = "Asia"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Republic" AND Continent = "Africa"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = \"Gelderland\";
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'United States'
SELECT avg(GNP) , sum(population) FROM country WHERE continent = 'USA'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = 'Aruba' END TRY CATCH.createStatement() AS T1 BEGIN EXECUTE NULL END TRY END TRY END TRY
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan"
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT t3.LocalName FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code JOIN city AS t3 ON t1.CountryCode = t3.CountryCode GROUP BY t1.CountryCode ORDER BY sum(t1.Percentage) DESC LIMIT 1;
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T2.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'English' INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T1.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Dutch"
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "English" INTERSECT SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'French' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T2.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = "Asia" GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = "Asia" GROUP BY t2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN language AS T3 ON T2.Language = T3.Language WHERE T1.GovernmentForm = "Republic" GROUP BY T3.Language HAVING COUNT(*) = 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN language AS T3 ON T2.Language = T3.Language WHERE T1.GovernmentForm = 'Republic' GROUP BY T3.Language HAVING Percentage = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language = 'English' GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM city WHERE countrycode = (SELECT code FROM countrylanguage WHERE language = 'English') ORDER BY population DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != "English"
SELECT avg(LifeExpectancy) FROM country WHERE countrycode NOT IN ( SELECT t1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" )
SELECT sum(population) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 'No')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = "English"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix" AND T2.IsOfficial = "English"
SELECT sum(Percentage) FROM countrylanguage WHERE IsOfficial = 'Yes' AND SurfaceArea < 1930;
SELECT sum(Percentage) FROM countrylanguage WHERE IsOfficial = 1 AND DateOfLanguageCreation < 1930;
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'African' INTERSECT SELECT name FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'African' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT abbreviation FROM country WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECTabbreviation FROM countrylanguage WHERE IsOfficial = 'No' AND Language != "English"
SELECT T1.name , T3.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T1.code = T3.code WHERE T2.language != 'English'
SELECT T1.name , T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "English"
SELECT abbreviation FROM country WHERE governmentform != 'Republic' AND IsOfficial = 'No' EXCEPT SELECT abbreviation FROM country WHERE governmentform != 'Republic'
SELECT abbr_省 FROM state WHERE governmentform != "Republic" AND isofficial = "No"
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'No' AND T2.Language != 'English'
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.isofficial = 'No' AND t2.language != "English"
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'Chinese' GROUP BY T1.Name HAVING COUNT(*) >= 50
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 'Chinese' AND T2.Language = 'Chinese'
SELECT name , founded_year , region FROM country ORDER BY population LIMIT 1
SELECT name , indep_year , region FROM country ORDER BY population LIMIT 1
SELECT count(*) , name , head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT name , population , head_of_state FROM country ORDER BY surface_area DESC LIMIT 1
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code HAVING COUNT(*) >= 3
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform , sum(population) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT governmentform , count(*) FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT continent , avg(lifeexpectancy) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT continent , count(*) , avg(lifeexpectancy) FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT t1.name , t1.surfacearea FROM country AS t1 JOIN country AS t2 ON t1.code = t2.code ORDER BY t1.surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(Population) , avg(Territory) FROM country WHERE Region = "North America" AND Territory > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t2.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T1.CountryCode FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name , T2.language , max(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.language
SELECT sum(population) FROM countrylanguage WHERE language = 'Spanish' GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT code FROM countrylanguage WHERE language = "Spanish" GROUP BY code ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != \"Live final\";
SELECT count(DISTINCT nationality) FROM conductor;
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Director ASC
SELECT Name FROM conductor ORDER BY Year_of_Director ASC
SELECT T2.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT T2.Name , T3.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN orchestra AS T3 ON T1.Orchestra_ID = T3.Orchestra_ID
SELECT T2.Name , T3.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*) > 1;
SELECT T2.name FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.name HAVING count(*) > 1;
SELECT T2.name FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T1.performance_id ORDER BY count(*) DESC LIMIT 1"
SELECT T2.name FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1"
SELECT T3.name FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id JOIN orchestra AS T3 ON T1.orchestra_id = T3.orchestra_id WHERE T1.year_of_show > 2008
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008 UNION SELECT T3.Name FROM orchestra AS T4 JOIN conductor AS T3 ON T4.Conductor_ID = T3.Conductor_ID WHERE T4.Year_of_Founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company;
SELECT count(*) , e.name FROM enterprise AS t1 JOIN show AS t2 ON t1.orchestra_id = t2.performance_id GROUP BY e.name
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC
SELECT Share FROM performance GROUP BY Share ORDER BY COUNT(*) DESC LIMIT 1 AS Record_Company;
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Name FROM conductor WHERE Conductor_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT * FROM show WHERE Performance_ID NOT IN (SELECT Performance_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT count(*) FROM recording_company WHERE record_company = "CD" OR record_company = "DVD"
SELECT count(*) FROM instrument AS T1 JOIN show AS T2 ON T1.conductor_id = T2.performer WHERE T2.Type = \"CD\" OR T2.Type = \"DVD\";
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T2.Year_of_Founded HAVING COUNT(*) > 1;
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
SELECT ID FROM highschooler WHERE name = 'Kyle';
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T2.student_id , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.ID GROUP BY T2.student_id
SELECT count(DISTINCT T2.friend_id) , T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T3.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN student AS T3 ON T2.student_id = T3.id WHERE T1.id = 1 AND T2.student_id = 'Kyle'
SELECT T3.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id JOIN Friend AS T3 ON T2.friend_id = T3.id WHERE T1.id = Kyle
SELECT count(DISTINCT T1.friend_id) FROM FRIEND AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(DISTINCT T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T2.student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id INTERSECT SELECT T2.student_id FROM likes AS T1 JOIN friend AS T2 ON T1.liked_id = T2.friend_id
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend WHERE friend_id NOT IN (SELECT student_id FROM likes) AND friend_id NOT IN (SELECT student_id FROM highschooler)
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.id IN ( SELECT T1.student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id GROUP BY T1.student_id HAVING count(*) > 1 ) UNION SELECT T2.name FROM highschooler AS T2 JOIN likes AS T1 ON T2.id = T1.liked_id WHERE T2.id IN ( SELECT T1.student_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id GROUP BY T1.student_id HAVING count(*) > 1 )
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id WHERE T2.founded = T2.liked_id AND T2.studied = T2.liked_id AND T2.studied = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T2.name , count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT count(*) FROM highschooler WHERE name = 'Kyle' ;
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = \"Kyle\";
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0;
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals INTERSECT SELECT state FROM professionals WHERE role_code = 'veterinarian' UNION SELECT state FROM professionals WHERE role_code = 'guardian'
SELECT state FROM owners INTERSECT SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'vetinary' UNTIL count(*) >= 2034079816000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT T1.dog_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = 'Dog Medical');
SELECT avg(age) FROM dogs WHERE dog_id IN ( SELECT T1.dog_id FROM treatments AS T1 JOIN t3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = \"healthcare\");
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN T treatments ON T1.professional_id = T1.professional_id WHERE T1.state = "IN" OR count(*) > 2
SELECT T1.id , T2.last_name , T2.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = "IN" OR count(*) > 2
SELECT name FROM dogs EXCEPT SELECT t2.name FROM charges AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id WHERE t1.cost_of_treatment > 1000
SELECT T3.name FROM charges AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000;
SELECT first_name FROM owners INTERSECT SELECT first_name FROM professionals EXCEPT SELECT t1.first_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id
SELECT first_name FROM owners EXCEPT SELECT T2.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T1.role_code = \"dog guardian\" GROUP BY T2.first_name HAVING count(*) > 1000000
SELECT vet_id , role_code , email_address FROM professionals EXCEPT SELECT T2.vet_id , T2.role_code , T2.email_address FROM Dogs AS T1 JOIN t3 AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Dog"
SELECT cid , role_code , email_address FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.gender = "Dog" )
SELECT T1.owner_id , T3.first_name , T3.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Professionals AS T3 ON T1.owner_id = T3.professional_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1"
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.given_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS t2 ON T1.owner_id = T2.owner_id WHERE T2.name LIKE '%puppies%' GROUP BY T1.first_name , T1.last_name ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(t2.cost_of_treatment) LIMIT 1;
SELECT t3.size_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_id = t2.cost_of_treatment JOIN dogs AS t3 ON t2.dog_id = t3.dog_id GROUP BY t1.charge_amount ORDER BY sum(t1.charge_amount) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT T1.veterinarian_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.veterinarian_id HAVING count(*) >= 2
SELECT T1.id , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2;
SELECT T1.first_name , T1.last_name FROM Professional AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(T3.cost_of_treatment) FROM treatments AS T3 JOIN professionals AS T4 ON T3.professional_id = T4.professional_id )
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_service , T2.first_name || ' ' || T2.last_name FROM treatments AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T1.date_of_service LIKE '%VETERINATRE%'
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.operation = 'vet'
SELECT T1.charge_type , T2.treatment_type_description FROM Charges AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment , treatment_type_description FROM charges WHERE charge_type = "healthcare"
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN breeds AS T4 ON T2.breed_code = T4.breed_code
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = 'Guardians' UNION SELECT T3.first_name , T3.name FROM Owners AS T3 JOIN Dogs AS T4 ON T3.owner_id = T4.owner_id WHERE T4.name = 'Puppies'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Labrador'
SELECT T1.name , T3.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code JOIN Treatment_Types AS T3 ON T1.dog_id = T3.dog_id WHERE T2.breed_name = \"Rarest\" ORDER BY T3.date_of_birth ASC LIMIT 1;
SELECT T1.name , T4.date_arrived FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T1.breed_code = T3.breed_code JOIN owners AS T4 ON T1.owner_id = T4.owner_id WHERE T3.rarestealcode = (SELECT T3.rarestealcode FROM breeds AS T3 JOIN dogs AS T1 ON T3.breed_code = T1.breed_code ORDER BY T1.weight ASC LIMIT 1)
SELECT T1.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = \"VA\";
SELECT T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia" UNION SELECT T3.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.state = "Virginia"
SELECT T1.date_arrived , T1.date_adopted FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical';
SELECT t1.date_arrived , t1.date_adopted FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Health' GROUP BY t1.dog_id HAVING count(*) > 1;
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.date_of_birth LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.date_of_birth LIMIT 1;
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_adopted FROM Dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_adopted FROM Dogs WHERE breed_code = \"Puppy\""
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.breed_code = \"Pomeranian\" OR t1.breed_code = \"Labrador Retriever\" OR t1.gender = \"Male\" OR t1.gender = \"Female\" AND t1.age > 3 OR t1.age < 50 AND t2.treatment_type_code = \"Properly Grooming\" OR t2.treatment_type_code = \"Orthopedic Care\" OR t2.treatment_type_code = \"Vaccination\" OR t2.treatment_type_code = \"Heartworm Prevention\" OR t2.treatment_type_code = \"Dental Care\" OR t2.treatment_type_code = \"Properly Cleaning\") AND t1.breed_code = \"Pomeranian\" OR t1.breed_code = \"Labrador Retriever\" OR t1.gender = \"Male\" OR t1.gender = \"Female\" AND t1.age > 3 OR t1.age < 50 AND t2.treatment_type_code = \"Properly Grooming\" OR t2.treatment_type_code = \"Orthopedic Care\" OR t2.treatment_type_code = \"Vaccination\" OR t2.treatment_type_code = \"Heartworm Prevention\" OR t2.treatment_type_code = \"Dental Care\" OR t2.treatment_type_code = \"Properly Cleaning\") AND t1.breed_code = \"Pomeranian\" OR t1.breed_code = \"Labrador Retriever\" OR t1.gender = \"Male\" OR t1.gender = \"Female\" AND t1.age > 3 OR t1.age < 50 AND t2.treatment_type_code = \"Properly Grooming\" OR t2.treatment_type_code = \"Orthopedic Care\" OR t2.treatment_type_code = \"Vaccination\" OR t2.treatment_type_code = \"Heartworm Prevention\" OR t2.treatment_type_code = \"Dental Care\" OR t2.treatment_type_code = \"Properly Cleaning\") AND t1.breed_code = \"Pomeranian\" OR t1.breed_code = \"Labrador Retriever\" OR t1.gender = \"Male\" OR t1.gender = \"Female\" AND t1.age > 3 OR t1.age < 50 AND t2.treatment_type_code = \"Properly Grooming\" OR t2.treatment_type_code = \"Orthopedic Care\" OR t2.treatment_type_code = \"Vaccination\" OR t2.treatment_type_code = \"Heartworm Prevention\" OR t2.treatment_type_code = \"Dental Care\" OR t2.treatment_type_code = \"Properly Cleaning\") AND t1.breed_code = \"Pomeranian\" OR t1.breed_code = \"Labrador Retriever\" OR t1.gender = \"Male\" OR t1.gender = \"Female\" AND t1.age > 3 OR t1.age < 50 AND t2.t
SELECT count(*) FROM dogs WHERE breed_code = \"Puppy\" AND t1.healthcare_type_code = \"Health Care\";
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.size_code = "small" AND T3.gender = "male" AND T3.age < 1 AND T3.name LIKE "%puppy%";
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = \"Labrador\" OR T3.breed_code = \"Pomeranian\" OR T3.size_code = \"Small\";
SELECT first_name , last_name , street , city , state FROM owners WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM owners WHERE email_address LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%';
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs );
SELECT count(*) FROM dogs WHERE size_code = 'small' AND breed_code = \"Pomeranian\" OR breed_code = \"Bulldog\" OR breed_code = \"German Shepherd\" OR breed_code = \"French Bulldog\" OR breed_code = \"Samoyed\" OR breed_code = \"Chinchwit\" OR breed_code = \"Rottweiler\" OR breed_code = \"Beagle\" OR breed_code = \"Bichon Frise\" OR breed_code = \"Akita\" OR breed_code = \"Pit Bull\" OR breed_code = \"Shiba Inu\" OR breed_code = \"English Bulldog\";
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"medical\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"medical\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_care\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_disease\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_procedures\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_services\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_utilities\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_visits\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_works\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_youths\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_works\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_research\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_investigations\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_medical\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_procedure\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_service\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_utilities\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_youths\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_works\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_research\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_insights\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_explorations\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_explores\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_exploring\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_medicinal\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_health\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_anatomy\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_life\") END OF puppies WHERE puppy_id NOT IN ( SELECT dog_id FROM treatments WHERE treatment_type_code = \"animal_hematology\")
SELECT count(*) FROM dogs WHERE breed_code = \"Pug\" OR breed_code = \"Labrador Retriever\" OR breed_code = \"German Shepherd\" OR breed_code = \"Bulldog\" OR breed_code = \"Chihuahua\" OR breed_code = \"Persian\" OR breed_code = \"Beagle\";
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE breed_code = 'Puppy' )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE gender = 'male' AND breed_code = \"Labrador Retriever\") AND owner_id NOT IN ( SELECT owner_id FROM dogs WHERE gender = 'male' AND breed_code = \"German Shepherd\");"
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT treatment_type_code FROM treatments WHERE medical_service_description = \"Puppies\" )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = 'dog' )
SELECT name , age , weight FROM Dogs WHERE abandonned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'`
SELECT age FROM Dogs WHERE breed_code = 'puppy' AND age = ( SELECT max(age) FROM dogs WHERE breed_code = 'puppy' )
SELECT age FROM Dogs WHERE breed_code = \"Puppy\" AND abandoned_yn = \"No\";
SELECT charge_type , charge_amount FROM CHarges
SELECT charge_type , charge_amount FROM CHANGES
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , cell_number , home_phone FROM Professional WHERE profession_code = "Veterinarian"
SELECT email_address , cell_number , home_phone FROM owners AS T1 JOIN veterinarians AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT T2.first_name , T2.last_name , T1.description FROM Professional AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.dog_id
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN t3 AS T3 ON T2.treatment_id = T3.treatment_id
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
SELECT COUNT(*) , t1.country FROM country AS t1 JOIN musician AS t2 ON t1.country = t2.country GROUP BY t1.country
SELECT t1.Citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id GROUP BY t1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.Citizenship FROM singer AS t1 JOIN song AS t2 ON t1.Singer_ID = t2.Singer_ID GROUP BY t1.Citizenship HAVING COUNT(*) = 1
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT max(net_worth_millions) , citizenship FROM singer GROUP BY citizenship
SELECT T3.Title , T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T2.Singer_ID = T3.Singer_ID
SELECT T3.Title , T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN song AS T3 ON T2.Singer_ID = T3.Singer_ID
SELECT DISTINCT T3.Name FROM song AS T1 JOIN album AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN artist AS T3 ON T1.Singer_ID = T3.Singer_ID WHERE T1.sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T3.Name , SUM(T2.sales) FROM song AS T1 JOIN artist AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID GROUP BY T3.Name
SELECT T3.Name , SUM(T2.Sales) FROM song AS T1 JOIN artist AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID GROUP BY T3.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT t1.country FROM singer AS t1 JOIN songwriter AS t2 ON t1.singer_id = t2.singer_id WHERE t1.birth_year < 1945 INTERSECT SELECT t1.country FROM singer AS t1 JOIN songwriter AS t2 ON t1.singer_id = t2.singer_id WHERE t1.birth_year > 1955
"sql": "SELECT count(*) FROM Other_available_features"
SELECT T1.feature_type_code FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Properties WHERE property_type_code = "house" OR (property_type_code = "apartments" AND room_count > 1)
