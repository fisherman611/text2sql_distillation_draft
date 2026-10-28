SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20 AND is_male = 1 UNION SELECT DISTINCT country FROM singer WHERE age > 20 AND is_male = 1
SELECT DISTINCT country FROM singer WHERE age > 20 AND is_male = 1;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer ORDER BY age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity BETWEEN 5000 AND 10000;
SELECT name , location FROM stadium WHERE capacity BETWEEN 5000 AND 10000;
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium AS T1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR BETWEEN 2014 AND 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
count(*) AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id;
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 AND age < 30;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme HAVING count(*) > 0
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.concert_id GROUP BY T2.concert_id
count(*) , name FROM singer GROUP BY name HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT T3.name , T3.position FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.position FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE pet_weight > 10.
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
min(T1.weight) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T2.petage = 'Youngest'
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
MAX(weight) , pet_type FROM Pets GROUP BY pet_type HAVING weight > 0
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.pettype = 'Puppy'
SELECT count(DISTINCT pet_type) FROM has_pet GROUP BY pet_type HAVING count(*) >= 1 AND count(*) <= 500
SELECT count(*) FROM (SELECT DISTINCT animal_species FROM has_pet)
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' OR T2.pettype = 'Puppy'
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kittens' OR T2.pettype = 'Puppies'
SELECT T1.lname , T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten' INTERSECT SELECT T1.lname , T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy'
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Kitten' AND T3.pettype = 'Puppy'
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM has_pet ) INTERSECT SELECT major , age FROM student WHERE StuID IN ( SELECT StuID FROM has_pet )
SELECT StuID , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet ) AND age != 0 AND pet_age != 0
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets WHERE petage = 'pet') EXCEPT SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets WHERE petage = 'pet' AND pet_type = 'cat')
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten'
SELECT pet_type , weight FROM pets ORDER BY pet_age ASC LIMIT 1;
SELECT T1.species , T2.weight FROM students AS T1 JOIN pets AS T2 ON T1.stuid = T2.petid ORDER BY T2.pet_age ASC LIMIT 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT avg(T1.age) , max(T1.age) , T2.species FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T2.species;
SELECT avg(pet_age) , max(pet_age) , pet_type FROM pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM Pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM pets GROUP BY pet_type;
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT petid FROM Pets)
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN (SELECT petid FROM pets)
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT petid FROM Pets WHERE petage = (SELECT age FROM Student WHERE lname = 'Smith') )
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 1
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 0
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.petage = 3 AND T1.age = 1
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T1.sex = 'Kitten'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT T1.contid , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.Id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.horsepower ORDER BY T2.Horsepower ASC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model ORDER BY T1.Horsepower LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.weight < (SELECT avg(weight) FROM cars_data) WHERE T2.maker = T1.make ORDER BY T1.weight ASC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.weight < (SELECT avg(weight) FROM cars_data) WHERE T1.weight != '';
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.year = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970;
SELECT T1.maker , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.year > 1980;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.make GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*) , T1.maker , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Make = 'Amc Hornet Sportabout'
accelerate = '40'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.countryname = 'France'
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'USA'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM model_list
SELECT T1.FullName , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 1
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.maker GROUP BY T2.id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.continentid = T2.country GROUP BY T1.countryname HAVING count(*) >= 3 INTERSECT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.continentid = T2.country WHERE T1.countryname LIKE '%Europe%' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT max(T1.Horsepower) , T2.maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.cylinders = 3
max(Horsepower) , T1.maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.cylinders = 3 GROUP BY T1.maker ORDER BY max(Horsepower) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY sum(T2.MPG) DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MPG = T2.mpg ORDER BY T1.MPG DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T2.Horsepower) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.year < 1980.0;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Model = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.make = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != 0;
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.fullName = 'American Motor Company'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'American Motor Company'
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT T1.FullName , T2.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT DISTINCT T1.DistinctiveType FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.FullName = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.maker = T2.model WHERE T2.weight > 3500 OR T2.make = 'General Motors'
SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000;
filtered_year = [] for year in cars_data.year : if weight > 3000 : filtered_year.append(year) elif weight < 4000 : filtered_year.append(year) print(filtered_year)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.model = \"Volvo\" ORDER BY T1.Accelerate LIMIT 1;
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.make = 'Volvo' ORDER BY T1.Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data GROUP BY accelerate ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(DISTINCT maker) FROM car_makers GROUP BY maker HAVING count(*) >= 3;
SELECT count(*) FROM car_makers WHERE maker IN (SELECT id FROM car_names GROUP BY id HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.cylinders = T2.id WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1;
SELECT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders = 4 GROUP BY T1.model ORDER BY max(T2.Horsepower) DESC LIMIT 1;
SELECT T1.makeid , T1.fullname FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders > 3 INTERSECT SELECT T1.makeid , T1.fullname FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.id WHERE T2.cylinders <= 3 {}
SELECT maker , name FROM car_names WHERE makeid IN (SELECT makeid FROM cars_data GROUP BY makeid HAVING min(horsepower) < 4)
max mpg = (SELECT max(mpg) FROM cars_data WHERE cylinders = 8 AND YEAR < 1980)
max MPG = (SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid = T2.makeid WHERE T1.cylinders = 8 OR T2.model < 1980)
weights = (w1 : T1.weight) | (w2 : T2.weight) WHERE w1 < 3500 AND w2 != 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.make = 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT country FROM car_makers GROUP BY country )
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2 maker GROUP BY T1.id HAVING count(*) <= 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) > 3)
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker IN ( SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 3 ) UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid = T2.maker WHERE T2.model = 'fiat'
SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.make = 'FIAT'
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.abbreviation = T2.sourceairport WHERE T2.FlightNo IN (SELECT T3.FlightNo FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode WHERE T4.countryabbreviation = "USA")
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.Airline = 'Jetblue Airways'
"JetBly"
"Jetblue Airways" shortened_word = "JetBlue Airlines"
SELECT T1.Airline , T1.ShortenedWord FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT T1.Airline , T2.Airway FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT count(*) FROM airlines AS T1;
SELECT sum(airways) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Airline LIKE '%UAL%'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT city , countryfrom airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'To') AND sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'To') AND terminal = 'ATA'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen') AND destairport IN (SELECT airportcode FROM airports WHERE city = 'Ashley')
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.airline WHERE T3.country = 'United Airlines' AND T2.airportname = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = \"United Airlines\" AND T2.airportname = \"ASY\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = 'United Airlines' AND T2.AirportName = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.countryabbreviation = 'United Airlines' AND T3机场名 = 'AHD Airport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.countryabbreviation = 'United Airlines' AND T2.countryabbreviation = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline , T2.Country from airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline , T2.CountryAbbrev , T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T2.CountryAbbrev ORDER BY count(*) ASC LIMIT 1;
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' INTERSECT SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'ADH'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.countryabbreviation = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.countryabbreviation = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.DestAirport IN (SELECT T3.AirportCode FROM airlines AS T3 JOIN airports AS T4 ON T3.uid = T4.AirportCode WHERE T4.CountryAbbrev = 'APG' INTERSECT SELECT T3.AirportCode FROM airlines AS T3 JOIN airports AS T4 ON T3.uid = T4.AirportCode WHERE T4.CountryAbbrev = 'CVO')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.SourceAirport WHERE T2.DestAirport != 'APG' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.DestAirport != 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO') EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.SourceAirport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.Airline FROM flights AS T1 JOIN (SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10) AS T2 ON T1.Airline = T2.Airline;
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T2.Airline HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200;
SELECT T2.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = \"APG\"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T3.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport IN ( SELECT airportcode FROM airports WHERE airportname = "Aberdeen")
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
"SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'";
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "Aberdeen" OR airportname = "Abilene")
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee AS T1;
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city HAVING count(*) > 0
SELECT city FROM employee WHERE age > 29 GROUP BY city HAVING count(*) >= 2
SELECT city FROM employee WHERE age > 30 GROUP BY city HAVING count(*) >= 2;
SELECT count(*) , location FROM shop GROUP BY location;
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT min(Number_products) , max(Number_products) FROM shop AS T1
min(number_products) , max(number_products) FROM shop AS T1
SELECT name , district , city FROM shop GROUP BY city , district ORDER BY count(*) DESC
SELECT name , location , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.start_from DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
count(*) AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id HAVING count(*) > 0 Store_name AS T3 FROM shop AS T3 JOIN hiring AS T2 ON T3.shop_id = T2.shop_id
SELECT count(*) , name FROM shop GROUP BY name
SELECT sum(T1.Bonus) FROM evaluation AS T1 WHERE T1.Year_awarded != '0'
SELECT sum(Bonus) FROM evaluation AS T1 WHERE T1.Year_awarded = 2005 AND T1.Bonus != 'null'
SELECT * FROM hiring
SELECT * FROM hiring
districts_with_more_than_10000 AND districts_with_less_than_3000 >= 10000 AND districts_with_less_than_3000 <= 3000
both_shop_less_than_3000 AND market_more_than_10000 IN district WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000 END
SELECT count(DISTINCT LOCATION) FROM shop AS T1;
SELECT count(DISTINCT LOCATION) FROM shop AS T1;
SELECT count(*) FROM Documents
"SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id"
SELECT document_id , title , description FROM Documents WHERE document_name != ""
SELECT document_id , document_name , document_description FROM Documents
doc_name = Documents.document_name layout_id = Documents.layout_id for document_name in Documents.document_name: if document_name.contains('w') == True: return doc_name , layout_id
def contains_letter_w_in_desc_content(document_description): for paragraph_text in document_description.split('\n'): if 'w' in paragraph_text: return document_id, layout_id return None, None
SELECT T1.document_id , T1.layout_id , T2.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.document_id , T2.layout_id , T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT document_id) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id
SELECT count(DISTINCT template_type_code) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
layout_ids = [1] + [2] + ... + [40] count = [document_id] + [template_id] + ... + [template_id]
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT count(*) FROM Ref_Template_Types
SELECT count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.layout_id , T1.version_number , T2.layout_type FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_code , T2.edition_number , T2.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT template_type_code FROM Ref_template_types;
SELECT DISTINCT template_type_code FROM templates
SELECT template_id FROM templates WHERE template_type_code IN (SELECT template_type_code FROM ref_template_types WHERE template_type_description = \"PP\" OR template_type_code FROM ref_template_types WHERE template_type_description = \"PPT\")
SELECT template_id FROM Templates WHERE template_type_code = \"PP\" OR template_type_code = \"PPT\"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = \"CV\"
SELECT template_type_code , layout_type FROM Ref_Template_Types WHERE template_type_description = \"Layout\" AND template_type_code IN ( SELECT template_type_code FROM Templates WHERE edition_number > 5 )
SELECT template_type_code , layout_type_name FROM Ref_Template_Types WHERE template_type_code IN ( SELECT template_type_code FROM Templates WHERE version_number > 5 )
SELECT count(*) , template_type_code FROM Templates GROUP BY template_type_code
layout_type_count = count(*) GROUP BY layout_type_code;
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code
SELECT template_type_code , min(version_number) FROM Templates GROUP BY template_type_code;
SELECT template_type_code FROM templates WHERE template_details = "Data base"
SELECT template_type_code FROM templates WHERE template_type_code IN (SELECT template_type_code FROM documents GROUP BY template_type_code HAVING document_name = "Data base")
BK.doc BK.txt BK.pdf BK.png BK.jpg BK.gif BK.jpeg BK.jpg BK.pdf BK.png BK.doc
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T3.template_type_description = \"BK\"
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
```sql SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code ```
most_text_files_layout_type = (SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1)
most_common_template_type_code = (SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
SELECT template_type_description FROM Ref_template_types WHERE template_type_code NOT IN (SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) > 1)
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Book"
SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.date_effective_from != t2.date_effective_to AND t2.document_name IN (SELECT document_name FROM documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 1)
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name IN (SELECT document_name FROM documents GROUP BY document_name ORDER BY count(*) DESC LIMIT 1)
SELECT template_id FROM Templates WHERE template_type_code IN ( SELECT template_type_code FROM Ref_template_types WHERE template_type_description = "Presentation")
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details = \"Presentation\"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Summer Show\"
count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Summer Show'
SELECT Other_Details FROM PARAGRAPHs WHERE Paragraph_text = "Korea"
SELECT T1.Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2 paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
count(*) , document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC
SELECT document_id , t1.document_name , count(*) FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY document_id
count(*) AS t1 , document_id AS t2 , count(*) AS t3 FROM Paragraphs GROUP BY t1 , t2 , t3
SELECT document_id FROM documents GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id , document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1 OFFSET 0;
SELECT t1.Paragraph_ID FROM Paragraphs AS t1 JOIN Documents AS t2 ON t1.document_id = t2.document_id GROUP BY t1.Paragraph_ID HAVING count(*) >= 1 AND count(*) <= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Brazil" INTERSECT SELECT T1.Paragraph_ID FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Ireland"
ids = [t.Paragraph_ID for t in paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = 'Brazil' INTERSECT SELECT t.Paragraph_ID FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = 'Ireland' ]
SELECT count(*) FROM teacher AS T1;
SELECT count(*) FROM teacher AS T1;
faculties.sort_by_age()
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT age , hometown FROM teacher
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> \"Little Lever Urban District\"
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT name FROM teacher ORDER BY age LIMIT 1;
SELECT min(Age) FROM teacher WHERE Hometown != 'New York' ORDER BY Age ASC LIMIT 1;
instructor_birthcount = (SELECT count(*) , T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown)
COUNT(*) AS T1 FROM teacher GROUP BY T1.Hometown;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Campus GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN teacher AS T2 ON T1.Hometown = T2.Hometown WHERE T1.Faculties = T2.Faculties GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.Name , T2.Curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name ASC
SELECT T1.Name , T2.Curricular FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Curriculum = "Math"
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.grade = 9 & T1.name = 'Math'
Count(*) AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id GROUP BY T1.faculty_num;
SELECT T1.Name , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2;
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != '4'
SELECT name , LEVEL_OF_MEMBERSHIP FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009.0
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1;
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit) ORDER BY total_spent DESC LIMIT 1;
SELECT avg(total_spent) , max(total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011 INTERSECT SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id JOIN museum AS T3 ON T2.museum_id = T3.museum_id WHERE T3.open_year < 2009 AND T3.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010 )
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
"SELECT count(*) FROM (SELECT * FROM players GROUP BY player_id) + SELECT * FROM (SELECT * FROM matches GROUP BY match_num) + SELECT * FROM rankings"
SELECT count(*) FROM players
"SELECT count(*) FROM matches"
SELECT count(*) FROM matches AS T1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code LIKE 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id
SELECT avg(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id;
SELECT avg(T1.ranking_points) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING COUNT(*) > 0;
SELECT max(T1.ranking_points) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id HAVING count(*) > 0
SELECT max(T1.ranking_rank) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.loser_id IN (SELECT player_id FROM players)
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'Loser'
SELECT count(DISTINCT loser_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.tourney_name FROM matches AS T1 JOIN tourney AS T2 ON T1.winner_id = T2.tourney_id GROUP BY T2.tourney_id HAVING count(*) > 10
SELECT T1.tourney_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.tourney_name HAVING count(*) > 10;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016;
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN matches AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 1 INTERSECT SELECT T1.country_code , T2.last_name FROM players AS T2 JOIN matches AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 4
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id WHERE T3.tourney_name = \"Australian Open\" ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.tourney_rank_points DESC LIMIT 1;
SELECT T1losername , T1winnername FROM MATCHES ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name , T2.losser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1;
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name HAVING avg(T1.ranking) != 0
SELECT T1.first_name , T1.last_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking_points) > 0.5
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
count(*) AS count , country_code AS country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT T1.abbr FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT country_abbr FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY country_abbr ORDER BY count(*) DESC LIMIT 1
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code HAVING count(*) > 50;
SELECT sum(T1.tourney_rank_points) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking_date ORDER BY T2.ranking_date ASC;
SELECT sum(T1.tourney_points) , T2.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.ranking ORDER BY T2.ranking_points DESC
year_count = [1995 , 1996 , 1997 , 1998 , 1999 , 2000 , 2001 , 2002 , 2003 , 2004 , 2005 , 2006 , 2007 , 2008 , 2009 , 2010 , 2011 , 2012 , 2013 , 2014 , 2015 , 2016 , 2017 , 2018 , 2019 , 2020 , 2021 , 2022] count = [year_count[i] , 0] # initialize count array with zeros for each year for i in range(len(year_count)): count[i] = matches.year_count[i] # add current count to corresponding year_count array print(count)
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.age ASC LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age LIMIT 3;
SELECT count(*) FROM (SELECT DISTINCT T1.winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' INTERSECT SELECT DISTINCT T1.winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'right')
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = ( SELECT max(ranking_points) FROM rankings )
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE ship_type = 'Captured'
sorted(ship.name , ship.tonnage )descending ORDER BY ship.name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT T1.injured , T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander <> 'Boril'
def lost_in_battle_name(type): if type == 'Brig': return 'Brig' else: return 'Other' ship_types = ['Brig', 'Other'] for t in ship_types: count = len([name for name in ship.select(name) if name.startswith(t)]) if count != 0: print(f'{t} - {count} battles') losings_in_battle_names = [lost_in_battle_name(t) for t in ship_types] print(''.join(losings_in_battle_names))
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT DISTINCT T1.name FROM battle AS T1 JOIN battle AS T2 ON T1.bulgarian_commander = T2.bulgarian_commander WHERE T2.latin_commander = 'Baldwin I' AND T1.date BETWEEN T1.date BETWEEN '1903-04-16' AND '1905-04-16'
SELECT count(*) FROM (SELECT DISTINCT result FROM battle)
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.tonnage = 225 )
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' )
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses AS T1 JOIN transcripts AS T2 ON T1.course_id = T2.transcript_id
SELECT count(*) FROM courses
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
zip_postcode = '11901' FOR addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T2.department_name , T1.department_id FROM Degree Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY sum(T1.degree_summary_description) DESC LIMIT 1;
SELECT T1.department_name FROM Degree Programs AS T1 JOIN Courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY sum(T1.degree_summary_description) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT department_id) FROM degree_programs AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_value) FROM degree_programs;
SELECT count(*) FROM (SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = \"Engineering\" GROUP BY T1.department_name)
SELECT count(*) FROM (SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1)
SELECT section_name , section_description FROM sections
SELECT section_name , other_details FROM SECTION
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
reverse_sections = sorted(sections , key = lambda x : x.section_name)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.semester_name , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.department_name , T1.seminor_id FROM departments AS T1 JOIN student_enrolment AS T2 ON T1.department_id = T2.department_id GROUP BY T1.seminor_id ORDER BY count(*) DESC LIMIT 1;
SELECT other_details FROM sections WHERE section_name LIKE '%the computer%'
SELECT other_details FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.last_name , T1.middle_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = '2nd' AND T2.semester_id = 1
SELECT T1.first_name , T1.last_name , T1.student_id , T4.middle_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id JOIN courses AS T4 ON T2.course_id = T4.course_id WHERE T3.degree_summary_name = '2 Degree' AND T2.semester_id = 1
SELECT T2.first_name , T2.last_name , T2.middle_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name , T1.last_name , T1.middle_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM Degree Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T1.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_description FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T2.first_name , T2.last_name , T2.middle_name , T1.enrollments , T2.university_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.student_id , count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT 'Academic Session 1' FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) > 0;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN degree_programs AS T2 ON T1.student_id = T2.degree_program_id {}
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN degree_programs AS T2 ON T1.student_id = T2.degree_program_id;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 != T1.current_address_id;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.city != T1.current_address_id;
SELECT T1.place_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.place_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students
SELECT avg(date_first_registered) FROM students AS T1;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered LIMIT 1;
SELECT min(transcript_date) , other_details FROM transcripts
SELECT count(*) FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id
SELECT count(*) FROM students;
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1;
SELECT date_first_registered FROM students ORDER BY date_first_registered DESC LIMIT 1;
SELECT count(*) , T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.course_id , count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'Master' INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'Bachelor'
SELECT T1.semister_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.course_id IN (SELECT T3.course_id FROM Course AS T3 JOIN Degree_Programs AS T4 ON T3.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Masters' INTERSECT SELECT T3.course_id FROM Course AS T3 JOIN Degree_Programs AS T4 ON T3.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Bachelors')
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
reverse ORDER BY student_id ASC STUDENT_DETAILS FROM students ORDER BY student_id DESC
Reverse alphabetical order: Students.student_id ASC
SELECT section_name FROM sections WHERE section_id = 'H'
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT first_name FROM Students WHERE cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title ASC
sorted_anims = (SELECT title FROM cartoon ORDER BY title ASC)
SELECT T2.title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = \"Ben Jones\"
SELECT T2.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = \"Ben Jones\"
SELECT count(*) FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = \"Joseph Kuhr\"
SELECT count(*) FROM cartoon AS T1 JOIN cartoon_writer AS T2 ON T1.Written_by = T2.Written_by WHERE T2.Old_Name = \"Joseph Kuhr\"
sorted_cartoon_directed_by_by_air_date = (SELECT T1.title , T2.directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id ORDER BY T2.air_date)
SELECT title , directed_by FROM cartoon ORDER BY air_date ASC
SELECT T2.title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = \"Ben Jones\" OR T2.directed_by = \"Brandon Vietti\"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.Production_code IN (SELECT production_code FROM TV_series WHERE directed_by = 'Ben Jones' UNION SELECT production_code FROM TV_series WHERE directed_by = 'Brandon Vietti')
most_tv_channels_country = (SELECT country , count(*) FROM TV_CHANNEL GROUP BY country ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Country , COUNT(*) FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL;
SELECT Content FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = 'Sky Radio'
SELECT Package_Option FROM TV_CHANNEL WHERE Series_name = "Sky Radio"
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT LANGUAGE , count(*) FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = 'The Rise of the Blue Beetle'
SELECT T1.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.episode = 30 AND T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = 'Sky Radio'
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT min(Share) , max(Share) FROM TV_series
max(Share) = 2000000 min(Share) = -2000000
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank , T1.Score FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = \"A Love of a Lifetime\"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
导演数量统计： SELECT count(*) , Directed_by FROM cartoon GROUP BY Directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE package_option = 'HD'
SELECT Package_Option , Series_name FROM TV_CHANNEL WHERE Hight_definition_TV = 'Yes'
SELECT T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Todd Casey'
Todd Casey (Written_by) : TV_Channel(id, series_name, 18_49_Rating_Share, Viewers_m, Air_Date, Title, Channel) Toddy Casey (Written_by) : TV_Channel(id, series_name, 18_49_Rating_Share, Viewers_m, Air_Date, Title, Channel)
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Todd Casey' )
SELECT states FROM cartoon WHERE written_by != 'Todd Casey'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" AND T2.played_by = "Michael Chang"
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'English'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English' AND channel NOT IN ( SELECT id FROM TV_channel WHERE LANGUAGE = 'English' )
SELECT id FROM TV_CHANNEL WHERE country IN ( SELECT count(*) FROM TV_CHANNEL GROUP BY country HAVING count(*) > 2 )
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.Nationality = \"Car\"
Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = "Car Gamer"
SELECT Final_Table_Made , Best_Finish FROM poker_player WHERE People_ID IN ( SELECT People_ID FROM people WHERE Nationality = "Car Gamer")
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\"
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\" ORDER BY T1.Earnings DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
max(T1.Final_Table_Made) = (SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\" AND T1.Earnings < 200000)
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\" AND T1.Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car\" AND T2.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000 INTERSECT SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = 1 ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID GROUP BY T2.Name ORDER BY COUNT(*) ASC;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings = (SELECT min(Earnings) FROM poker_player)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\" ORDER BY T2.Height DESC LIMIT 1;
max(T1.Height) , T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T2.Nationality = \"Car\"
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 GROUP BY T2.Name HAVING avg(T1.Earnings) > (SELECT avg(Earnings) FROM poker_player)
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car\" ORDER BY T2.Earnings DESC
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car\" ORDER BY T2.Earnings DESC
country_counts = ( SELECT Nationality , count(*) FROM people GROUP BY Nationality)
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
sorted_people = sorted(people, key=lambda x: x.Name)
SELECT Name , Birth_Date FROM people ORDER BY Name
Names_of_people_not_russia = Names_of_people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM contestants ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state = 'CA' ORDER BY created DESC LIMIT 1;
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONCEPTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1 OFFSET 0 LIMIT 1;
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT area_code FROM votes GROUP BY area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T1.area_code_state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabatha_gehling = 'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T3.contestant_number FROM area_code_state AS T3 JOIN contestants AS T4 ON T3.state = T4.contestant_number WHERE T4.tabatha_gehling = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T3.contestant_number FROM area_code_state AS T3 JOIN contestants AS T4 ON T3.state = T4.contestant_number WHERE T4.kelly_claus = 'Kelly Clauss')
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950 ORDER BY name ASC;
after_1950 = (SELECT name FROM country WHERE indepyear > 1950)
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
total_territory_caribbean = sum(T1.SurfaceArea) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = \"Caribbean\"
Total = sum(T1.SurfaceArea) * 8000000 Caribbean = sum(T1.SurfaceArea) * 4000000 Caribbean = 32000000000 Territory Caribbean = 32000000000 Caribbean + United States = 64000000000 Territory Caribbean + United States + Canada = 108000000000 Territory Caribbean + United States + Canada + Germany = 172800000000 Territory Caribbean + United States + Canada + Germany + France = 251600000000 Territory Caribbean + United States + Canada + Germany + France + Italy = 304800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan = 365600000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia = 439600000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil = 524800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China = 610000000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India = 714800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia = 818800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica = 934800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica + Kuwait = 1043800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica + Kuwait + Libya = 1168800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica + Kuwait + Libya + Mauritius = 1292800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica + Kuwait + Libya + Mauritius + Monaco = 1418800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica + Kuwait + Libya + Mauritius + Monaco + Nigeria = 1543800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil + China + India + Indonesia + Jamaica + Kuwait + Libya + Mauritius + Nigeria + Portugal = 1668800000000 Territory Caribbean + United States + Canada + Germany + France + Italy + Japan + Australia + Brazil +
Anguilla Continent = "Antarctica"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Aruba' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Angola"
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Central Africa\"
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' ORDER BY T1.lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'African'
SELECT avg(LifeExpectancy) FROM country WHERE Region = \"Republic\" AND Continent = \"Africa\"
Asia + Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.0 Total Territory OF Asia AND Europe = 1000000000.
SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(Population) FROM city WHERE District = 'Gelderland'
SELECT avg(GNP) , sum(Population) FROM country WHERE GovernmentForm = 'United States'
SELECT avg(GNP) , count(*) FROM country WHERE code = 'USA'
SELECT count(DISTINCT language) FROM countrylanguage AS T1;
SELECT count(DISTINCT language) FROM countrylanguage WHERE percentage != 'null'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1;
most_languages = (SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1)
SELECT count(DISTINCT T1.name) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' AND T2.isofficial = true INTERSECT SELECT count(DISTINCT T1.name) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' AND T2.isofficial = true`
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' AND T2.percentage > 0.5 UNION SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Dutch' AND T2.percentage > 0.5
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" AND T2.IsOfficial = true INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French" AND T2.IsOfficial = true
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = \"English\" OR T2.Language = \"Dutch\"
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE CountryCode IN (SELECT code FROM country WHERE continent = 'Asia'))
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage WHERE Continent = 'Asia')
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*) = 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN language AS T3 ON T2.Language = T3.Language WHERE T1.GovernmentForm = 'Republic' GROUP BY T3.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE surfacearea = ( SELECT max(surfacearea) FROM country ) AND continent = 'Asia'
SELECT name , population , lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1 WHERE continent = 'Asia' ;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != \"English\".average lifespans in the nations where English is not the official language is (SELECT avg(LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language != \"English\")
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT sum(population) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = \"Beatrix\" AND T1.IsOfficial = 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T2.CountryCode = T3.Code WHERE T1.Name = \"Beatrix\" AND T2.Language = \"English\" AND T2.IsOfficial = 1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930;
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.indepyear < 1930;
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > ( SELECT min(surfacearea) FROM country WHERE continent = 'Europe' )
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Asia' INTERSECT SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa') INTERSECT SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT StateAbbreviation FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != \"English\";
SELECT T1.name , T2.nationality FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "english"
SELECT name FROM country WHERE code IN ( SELECT countrycode FROM countrylanguage WHERE language != "English" INTERSECT SELECT countrycode FROM countrylanguage WHERE governmentform = "Republic")
SELECT name FROM country WHERE code NOT IN (SELECT t1.code FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'English') EXCEPT SELECT name FROM country WHERE governmentform = 'Republic'
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English' AND T2.isofficial = 'No' AND T1.countrycode IN (SELECT countrycode FROM country WHERE continent = 'Europe')
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != 'English' AND T2.IsOfficial = 'No'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' AND T2.Language = 'Chinese'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Asia"
SELECT name , indepyear , region FROM country ORDER BY population ASC LIMIT 1;
SELECT T1.name , T1.indepyear , T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population LIMIT 1;
SELECT count(*) , T1.Name , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T1.SurfaceArea DESC LIMIT 1;
SELECT name , population , head_of_state FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) >= 3;
SELECT T1.Name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name HAVING COUNT(*) > 2;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > (SELECT count(*) FROM city WHERE population > (SELECT avg(population) FROM city))
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 0
SELECT T1.GovernmentForm , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.GovernmentForm HAVING avg(T1.LifeExpectancy) > 72;
SELECT governmentform , count(*) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72;
SELECT avg(LifeExpectancy) , continent FROM country GROUP BY continent HAVING avg(LifeExpectancy) < 72.0
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72;
SELECT T1.Name , T2.SurfaceArea FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.SurfaceArea DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
total_population = sum(Population) / count(DISTINCT CountryCode) average_territory = avg(SurfaceArea) / count(DISTINCT CountryCode) north_american_country = country WHERE SurfaceArea > 3000 GROUP BY CountryCode HAVING Continent = 'North America' total_population + average_territory < 1000000000;
SELECT sum(T1.population) , avg(T1.surfacearea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'North America' AND T2.surfacearea > 3000 GROUP BY T1.name HAVING sum(T1.population) > 3000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language , T1.Percentage FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC
SELECT T1.name , T2.language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' GROUP BY t1.code HAVING avg(t2.percentage) >= 50.0 {}
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor WHERE Nationality <> 'USA'
SELECT name FROM conductor WHERE Nationality <> 'USA'
SELECT Record_company FROM orchestra ORDER BY YEAR_of_founded DESC
sorted_by_year_orfunda = orchestra.sort_by(YEAR_of_founded) DESC
SELECT avg(Attendance) FROM show AS T1;
SELECT avg(Attendance) FROM show AS T1 {}
max(Share) , min(Share) FROM performance WHERE TYPE != \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 2;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 1;
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING count(*) > 1
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(*) ASC
sorted_by_frequency_orchestra(Orchestra , Major_record_format )
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM conductor WHERE conductor_id NOT IN (SELECT orchestra_id FROM performance)
SELECT ensemble FROM performance GROUP BY ensemble HAVING count(*) = 0
SELECT T1.Record_company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded < 2003 INTERSECT SELECT T1.Record_company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Year_of_Founded > 2003
SELECT T1.Record_Company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Year_of_Founded < 2003 AND T2.Year_of_Founded > 2003 WHERE T1.Record_Company != T2.Record_Company;
SELECT count(*) FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Type = \"CD\" OR T1.Type = \"DVD\"
SELECT count(*) FROM orchestra WHERE Record_Company = \"CD\" OR Record_Company = \"DVD\"
SELECT T1.year_of_work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T2.orchestra_id = T3.orchestra_id GROUP BY T1.year_of_work HAVING count(*) > 1;
SELECT T1.year_of_work FROM conductor AS T1 JOIN ensemble AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.year_of_work HAVING count(*) > 1;
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM Highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM HIGHSOFTER
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10.0
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.student_id , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
friend_count = count(*) FROM (SELECT T1.student_id , T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC)
Count(*) AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) >= 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3;
SELECT T3.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id JOIN Student AS T3 ON T2.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT T3.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id JOIN Student AS T3 ON T2.student_id = T3.id WHERE T3.name = 'Kyle'
SELECT count(*) FROM (SELECT T1.student_id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle' INTERSECT SELECT T1.student_id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle')
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle' INTERSECT SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle')
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN ( SELECT T3.id FROM highschooler AS T3 JOIN friend AS T4 ON T3.id = T4.friend_id ) INTERSECT SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN ( SELECT T3.id FROM highschooler AS T3 JOIN friend AS T4 ON T3.id = T4.friend_id )
SELECT student_id FROM likes EXCEPT SELECT student_id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id INTERSECT SELECT student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T2.liked_id IN (SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.friend_id WHERE T3.student_id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.friend_id WHERE T3.student_id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.liked_id IN (SELECT T2.student_id FROM likes AS T3 JOIN friend AS T4 ON T3.student_id = T4.friend_id)
SELECT count(*) , student_id FROM Likes GROUP BY student_id;
Like count(student_id) : 100
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.grade > 5 {}
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.grade > 5
SELECT count(*) FROM Highschooler AS T1 JOIN Like AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM (SELECT T1.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle' INTERSECT SELECT T1.student_id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle')
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) > 0.5
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T1.id HAVING count(*) >= 1.average_grade()
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) > 1)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id)
SELECT state FROM owners WHERE email_address IN (SELECT email_address FROM professionals GROUP BY email_address HAVING count(*) = 2) INTERSECT SELECT state FROM owners WHERE email_address IN (SELECT email_address FROM professionals GROUP BY email_address HAVING count(*) = 3)
Both guardians and veterinarians can live in the same state because they both serve different roles (guardian serves owners and veterinarians serve dogs). Therefore, we need to find the states where both guardians and veterinarians reside. We can achieve this by checking if both guardians and veterinarians have a state as their home address. Here's how we can do it: SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'guardian' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.role_code = 'Veterinarian' AND T1.state != T2.state;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_of_treatment != 'null' AND T1.age != 'null'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.first_name , T1.last_name , T1.cell_number FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Indiana' OR T2.professional_id IN ( SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2 )
SELECT T1.id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.state = 'Indiana' OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT T1.dog_id FROM treats AS T1 JOIN owners AS T2 ON T1.dog_id = T2.owner_id WHERE T2.home_phone > 1000 )
SELECT T2.name FROM charges AS T1 JOIN dogs AS T2 ON T1.charge_id = T2.date_departed WHERE T1.charge_amount > 1000;
SELECT first_name FROM professionals WHERE role_code = 'Veterinarian' OR role_code = 'Guardian' EXCEPT SELECT first_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY first_name HAVING count(*) > 1
SELECT first_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs) EXCEPT SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name HAVING count(*) >= 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id WHERE T2.breed_code != 'Dog' UNION SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.professional_id = T2.owner_id WHERE T2.breed_code = 'Dog'
SELECT * FROM professionals WHERE role_code = 'Veterinarian' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Dog'
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.role , T1.first_name FROM professionals AS T1 JOIN charges AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT t2.breed_name FROM dogs AS t1 JOIN breeds AS t2 ON t1.breed_code = t2.breed_code WHERE t1.gender = 'P' GROUP BY t2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T2.name IN (SELECT T2.name FROM dogs AS T4 JOIN treats AS T5 ON T4.dog_id = T5.dog_id GROUP BY T4.dog_id ORDER BY sum(T5.cost_of_treatment) DESC LIMIT 1)
SELECT t3.treatment_type_description FROM charges AS t1 JOIN treatments AS t2 ON t1.charge_type = t2.treatment_type_code JOIN treatment_types AS t3 ON t2.treatment_type_code = t3.treatment_type_code ORDER BY t1.charge_amount ASC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN treatments AS T2 ON T1.breed_code = T2.dog_id GROUP BY T2.cost_of_treatment ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Puppy' GROUP BY T1.owner_id ORDER BY sum(T2.date_paid) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.veterinarian_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.veterinarian_id HAVING count(*) >= 2
SELECT T1.id , T1.cell_number FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.treatment_type_code JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM charges )
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.id JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.date_of_treatment , T2.first_name , T2.last_name FROM charges AS T3 JOIN treatments AS T1 ON T3.charge_type = T1.charge_type JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.treatment_type_code = 'Dog'
SELECT T1.date_of_treatment , T3.first_name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id
SELECT T1.charge_type , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.charge_type , T2.treatment_type_code FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name , T2.size_code
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T4 ON T2.size_code = T4.size_code
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.name != "null"
SELECT t1.name , t4.date_of_treatment FROM dogs AS t1 JOIN breeds AS t2 ON t1.breed_code = t2.breed_code JOIN treatments AS t3 ON t1.dog_id = t3.dog_id JOIN owners AS t4 ON t1.owner_id = t4.owner_id ORDER BY t2.rarest_breed DESC LIMIT 1
SELECT T1.name , T2.date_of_birth FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY T1.date_of_birth ASC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia' AND T2.breed_code = 'Labrador Retriever'
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.date_arrived , T1.date_adopted FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = 'Puppy'
SELECT date_arrived , date_depedededed from dogs WHERE breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.breed_code = 'Puppy'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.breed_code = 'Puppy'
SELECT count(*) FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Puppy'
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'Puppy'
SELECT T1.role_code , T2.street , T2.city , T2.state FROM professionals AS T1 JOIN owners AS T2 ON T1.role_code = T2.role_code WHERE T2.city LIKE '%West%'
SELECT T1.role_code , T2.street , T2.city , T2.state FROM Professional AS T1 JOIN Owners AS T2 ON T1.role_code = T2.role_code WHERE T2.city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges ORDER BY charge_date DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.gender = 'P' AND t2.treatment_type_code = 'Health'
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT T1.owner_id FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Puppy')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT T1.owner_id FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy')
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT age FROM dogs WHERE breed_code = 'Puppy' ORDER BY date_of_birth DESC LIMIT 1;
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , home_phone , cell_number FROM professionals WHERE role_code = 'Veterinarian'
SELECT email_address , cell_number , home_phone FROM owners
Breed_type = (breed_name,) , Size_type = (size_description,)
SELECT DISTINCT T1.breed_type , T1.size_code FROM sizes AS T1 JOIN dogs AS T2 ON T1.size_code = T2.size_code WHERE T2.breed_code = 'Puppy'
SELECT T1.first_name , T1.last_name , T3.description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN pet_images AS T3 ON T2.pet_image_id = T3.pet_image_id
SELECT T1.first_name , T1.last_name , T4.description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id JOIN treatments AS T4 ON T2.treatment_type_code = T4.treatment_type_code
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'France'
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT count(*) , citizenship FROM singer GROUP BY citizenship
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Country , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T2 ON T2.Singer_ID = T3.Singer_ID
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T2 ON T3.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T1.Name , SUM(T2.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING SUM(T2.Sales) > 500000
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING sum(T1.Sales) > 0
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1954
SELECT T1.Country from singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 AND T1.Birth_Year > 1955 GROUP BY T1.Country HAVING COUNT(*) >= 2
SELECT count(*) FROM OTHER_AVAILABLE_FEATURES AS T1;
SELECT t3.feature_type_name FROM Ref_Feature_Types AS t3 JOIN Other_Available_Features AS t2 ON t3.feature_type_code = t2.feature_type_code JOIN Properties AS t1 ON t2.property_id = t1.property_id WHERE t1.feature_name = "AirCon"
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code = T2.property_type_code WHERE T1.property_type_code = 100
SELECT property_name FROM Properties WHERE room_count > 1 OR property_type_code IN (2 , 4)
