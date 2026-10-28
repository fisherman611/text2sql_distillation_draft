SELECT name , country FROM singer ORDER BY age DESC LIMIT 1000
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
country , count(*) FROM singer GROUP BY country HAVING count(*) > 0
country , count(*) FROM singer GROUP BY country;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
2014 or 2015concerts = count(*) + count(*)
2014 - 3 2015 - 3
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30 {}
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
concert_id , concert_name , count(*) , T2.name , T1.theme FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id , T2.concert_id
concurrent_singer_count = (SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id)
concert_name_count_singer_id_singer_name_singer_in_concert_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer_in_concert_count_singer
concert_name_2014 = [T1.concert_name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id WHERE T2.year = 2014]
concert_id = 1 year = 2014 concert_id , singer_id FROM singer_in_concert WHERE YEAR = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015 {}
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1;
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1 OFFSET 0;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.petid IN (SELECT petid FROM pets WHERE pet_type = 'dog')
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) > 0
Pets PET1 = (SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'M' AND T1.pettype = 'Cat'); Pets PET2 = (SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'M' AND T1.pettype = 'Dog'); SELECT T2.fname FROM student AS T2 JOIN pets AS T1 ON T2.stuid = T1.stuid WHERE T1.petid IN (SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'M' AND T1.pettype = 'Cat') OR T1.petid IN (SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'M' AND T1.pettype = 'Dog');
Has_pet_pet_type_pet_age_pet_weight = (PetType , pet_age , pet_weight) AND pet_type IN ('Cat' , 'Dog')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog'
PetType = 'Cat' INTERSECT PetType = 'Dog'的学生们的名字。pets的联合交集。
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pet_type = 'Cat')
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'Cat' )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = \"Cat\")
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'cat'
Has_pet_stuid NOT IN (SELECT StuID FROM Student WHERE major = 'CS' INTERSECT SELECT StuID FROM Has_Pet WHERE pet_type = 'Cat') AND pet_id IN (SELECT pet_id FROM Pets WHERE pet_type = 'Dog')
SELECT pet_type , pet_age FROM pets ORDER BY pet_age LIMIT 1 OFFSET 0
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1;
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
Pet_Types: Cat pets_pet_age: 3 has_pet_stuid: 1 from_has_pet_stuid: 1 pet_stuid: 1 from_pet_stuid: 1 from_pet_type: Cat from_pet_age: 3 select T2.lname from has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T1.petid = (SELECT petid FROM pets WHERE pettype = 'Cat' AND petage = 3)
Pet1 = (SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3) SELECT T2.lname FROM Student AS T2 JOIN Has_Pet AS T1 ON T1.StuID = T2.StuID WHERE T1.PetID = T1petid IN (SELECT T2.StuID FROM Student AS T2 JOIN Has_Pet AS T1 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
model_list.year = 1970 AND maker IN (SELECT T1.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.country = 'USA')
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.year = 1970;
SELECT T2.maker , T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid ORDER BY T1.year ASC LIMIT 1;
model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T2.make WHERE T1.year = (SELECT min(YEAR) FROM cars_data) AND T3.maker = T2.make
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.year > 1980;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year > 1980;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , T1.id , T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM countries WHERE continent = 'USA' )
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'United States'
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Cylinders = '4'
SELECT min(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T1.MakeId = (SELECT id FROM car_makers WHERE maker = 'CYL' AND YEAR = 1974)
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\" GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING count(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.make GROUP BY T1.model ORDER BY sum(T2.GMP) DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.MPG = (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T2.Horsepower) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.year < 1980
SELECT avg(T2.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.make = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE make = 'Volvo'
SELECT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T2.maker WHERE T3.country = 'USA'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.countryname = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T2 JOIN model_list AS T1 ON T1.maker = T2.id GROUP BY T2.id HAVING count(*) > 3
SELECT T2.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
model_list WHERE weight > 3500 UNION SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1 maker = T2.make WHERE T1.id IN (SELECT id FROM car_makers WHERE maker = 'General Motors')
car_makers.id != 'General Motors' AND (weights BETWEEN 3500 AND 100000) DIFFERENT model_list.model
SELECT YEAR FROM cars_data WHERE WEIGHT >= 3000 AND WEIGHT <= 4000
SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT max(Cylinders) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data WHERE maker = 'Volvo')
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = "4" GROUP BY T2.model ORDER BY sum(T1.horsepower) DESC LIMIT 1
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = '8' AND T1.year < 1980
weights = cars_data.weight[cars_data.year < 1985] & car_makers.id != 'Ford Motor Company' & maker != 'Ford Motor Company' & weight < 3500
car_names make_id weight cars_data id model_list maker model cars_data weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.makeid WHERE T2.maker = 'Ford Motor Company' EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.makeid WHERE T2.weight > 3500
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Country WHERE T2.Make = 'fiat'
SELECT T1.CountryId , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING count(*) > 3 UNION SELECT T1.CountryId , T2.CountryName FROM car_names AS T1 JOIN countries AS T2 ON T1.MakeId = T2.CountryId WHERE T2.Continent = 'Europe'
SELECT Country FROM airlines WHERE Airline LIKE "%JetBlue Airways%"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE country = 'United States' AND city LIKE '%Anthony%'
SELECT Airline FROM airlines WHERE Abbreviation LIKE "%UAL%"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'United States'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.dedicatedflugguide WHERE T2.sourceairport = 'AKO'
SELECT airportname FROM airports WHERE airportcode IN (SELECT airportcode FROM flights WHERE sourceairport IN (SELECT airportcode FROM flights WHERE destairport IN (SELECT airportcode FROM flights WHERE sourceairport = 'AKO')))
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'Toowoomba'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport IN ( SELECT airportcode FROM airports WHERE city = 'Aberdeen' )
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
sourceairport = 'Aberdeen' AND destairport = 'Ashley'
source_airport = 'Aberdeen' dest_airport = 'Ashley' flights_between(source_airport , dest_airport)
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.id WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'USA' AND T1.destinationairport = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'United' AND sourceairport IN (SELECT airportcode FROM airports WHERE country = 'ASY')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'United Airlines' AND T1.sourceairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T3.country = 'United States' AND T2.countryabbreviation = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.country = 'United States' AND T2.city = 'Aberdeen'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.sourceairport = T4.airportcode WHERE T4.country = 'APG') INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.sourceairport IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode WHERE T4.country = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destairport WHERE T2.destairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = 'APG')
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen')
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.country = 'United Kingdom' AND T2.destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Alabama'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = 'Aberdeen' OR T2.country = 'USA' AND T1.sourceairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights INTERSECT SELECT srcairport FROM flights)
sorted(employee.Name)
sorted_employee = sorted(employee, key=lambda x: x.age)
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY sum(T2.bonus) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN employee AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM employee)
SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.Manager_name = T2.Employee_ID WHERE T1.Number_products BETWEEN 0 AND 2999 AND T2.age > 10000 INTERSECT SELECT T1.District FROM shop AS T1 JOIN employee AS T2 ON T1.Manager_name = T2.Employee_ID WHERE T1.Number_products BETWEEN 3000 AND 10000
districts = (SELECT district FROM shop WHERE number_products BETWEEN 1 AND 2999) INTERSECT SELECT district FROM shop WHERE number_products BETWEEN 10001 AND 50000)
sorted(teachert.Name)
sorted(teachert.Name)
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1 OFFSET 0
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT count(*) , name FROM teacher GROUP BY name;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T2.name FROM course AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.course_id IN (SELECT course_id FROM course WHERE title = 'Math')
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 'Math'
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE level_of_membership != 'Lv 4'
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1;
total_spent = (SELECT T2.total_spent FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id ORDER BY sum(T1.total_spent) DESC LIMIT 1) Merged with the original data: SELECT T3.id , T3.name , T3.level_of_membership FROM museum AS T3 JOIN visit AS T4 ON T3.museum_id = T4.museum_id WHERE T4.total_spent = (SELECT max(total_spent) FROM visit GROUP BY total_spent) Merged with the original data: ID , name , level_of_membership FROM visitor AS T2 JOIN visit AS T3 ON T2.id = T3.visitor_id WHERE T3.Museum_ID = T3.Museum_ID AND T4.total_spent = (SELECT max(total_spent) FROM visit GROUP BY total_spent)
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 'LV1'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT T2.tourney_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.tourney_name HAVING count(*) > 10;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
2013 | 2016 : 45879
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T1.winner_id = T3.player_id WHERE T3.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
MATCH(winner_id , ranking_points ) WITH (ranking AS (SELECT * FROM rankings ORDER BY ranking_points DESC LIMIT 1)) WHERE (ranking.ranking = 'Australian Open' AND winner_id IN ( SELECT player_id FROM players WHERE country_code = 'Australia' )) ORDER BY ranking_points DESC LIMIT 1 ;winner_name
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.loser_id = T3.player_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1;
SELECT T1.winner_name , T2.wloser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age LIMIT 3;
best_of = 3 min(winner_age) FROM MATCHES ORDER BY winner_age LIMIT 3
SELECT count(*) FROM ( SELECT DISTINCT T1.player_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\" )
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
query: SELECT count(*) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.ship_type = 'Captured'
SELECT T2.id , T2.name FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T2.id HAVING count(*) > 10;
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
name: HMS Atalanta date: 18 June 1940 name: Lettice date: 27 July 1940
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' )
courses.course_description = \"Math\"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = \"North Carolina\" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name != \"Other\"
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name != 'None'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id IN (SELECT current_address_id FROM students WHERE degree_program_id = 4 INTERSECT SELECT current_address_id FROM students WHERE degree_program_id = 5) AND T2.student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id = 4 INTERSECT SELECT student_id FROM student_enrolment WHERE degree_program_id = 5)
SELECT semester_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Masters' INTERSECT SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelors') GROUP BY semester_id HAVING count(*) = 2
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' UNION SELECT T1.first_name FROM students AS T1 JOIN cells_mobile_number AS T2 ON T1.cell_mobile_number = T2.cell_mobile_number WHERE T2.number = '09700166582'
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT cell_mobile_number FROM Students WHERE cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM cartoon ORDER BY Title
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.id WHERE T2.Directed_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.channel = T2.channel WHERE T2.Written_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT title , directed_by FROM cartoon ORDER BY production_code
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" OR T1.Directed_by = "Brandon Vietti"
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT Content FROM TV_Channel WHERE Content != '' AND channel IN ( SELECT id FROM TV_series WHERE title = 'Sky Radio' )
SELECT Content FROM TV_channel WHERE Channel IN (SELECT id FROM TV_series WHERE Series = "Sky Radio")
SELECT Package_Option FROM TV_CHANNEL WHERE Content = "TV Channel" AND Channel IN ( SELECT id FROM TV_series WHERE Series = "Sky Radio")
SELECT count(*) FROM TV_channel WHERE LANGUAGE = "english"
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
TV_channel_id = "Sky Radio" AND cartoon.id IN (SELECT id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Cartoon")
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Content = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name LIKE "%A Love of a Lifetime%"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode LIKE "%A Love of a Lifetime%"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode LIKE "%A Love of a Lifetime%"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.series_name = 'Sky Radio'
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT T1.package_option , T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.HD_TV = 'Yes'
SELECT T1.Package_Option , T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = "HDTV"
tv_channel_id := 1 channel := 1849 SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
tv_channel_id = (SELECT id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Todd Casey' AND T2.country = 'USA')
SELECT country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE written_by = 'Todd Casey' )
channel := t2.id directed_by := t3.directed_by title := t3.title air_date := t3.air_date package_option := t3.package_option merge into TV_channel AS t1 ON t1.id = t2.channel join cartoon AS t2 ON t2.channel = t1.id AND t2.directed_by = 'Ben Jones' AND t2.written_by = 'Michael Chang' where t1.series_name = 'Cartoons' AND t2.title = 'Ben Jones and Michael Chang directs?'
channel := t2.id directed_by := t3.directed_by title := t4.title pay_per_view := t5.pay_per_view package_option := t6.package_option match := t7.match match_content := t8.content tv_channel := t1.id channel := t2.id directed_by := t3.directed_by title := t4.title pay_per_view := t5.pay_per_view package_option := t6.package_option match := t7.match match_content := t8.content series_name := t1.series_name country := t1.country
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones')
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1;
from people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200;
Nationalities: Nationality Count: Count(*)
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state IN ('NY', 'CA')
SELECT T1.created , T2.state , T2.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\")
SELECT name FROM country WHERE lifeexpectancy > 1950
SELECT name FROM country WHERE lifeexpectancy > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.countrycode = "Carribean"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT T3.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code JOIN countrylanguage AS T3 ON T2.code = T3.code WHERE T1.name = "Kabul"
"SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.District = 'Kabul' AND T1.Region != \"Kabul\""
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Aruba' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Aruba' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT region , population FROM country WHERE code = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(T1.population) , max(T2.GNPOld) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia"
SELECT count(*) , max(GNP) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
Asia.SurfaceArea + Europe.SurfaceArea
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE countrycode = 'NL' AND population >= 0
SELECT sum(population) FROM city WHERE countrycode = 'NL' AND district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE code = 'US'
SELECT avg(GNP) , sum(population) FROM country WHERE code IN ( SELECT code FROM country WHERE name LIKE '%US%' )
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba'
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Name = "Afghanistan")
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Name = "Afghanistan")
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY sum(T2.Percentage) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1
countrycode1 = 'UK' countrycode2 = 'France' countrycode3 = 'Canada' countrycode4 = 'USA' countrycode5 = 'Australia' countrylanguage1 = 'English' countrylanguage2 = 'French' intersectionofcountries = countrycode1 + countrycode2 + countrycode3 + countrycode4 + countrycode5 + countrycode6 + countrycode7 + countrycode8 + countrycode9 + countrycode10 + countrycode11 + countrycode12 + countrycode13 + countrycode14 + countrycode15 + countrycode16 + countrycode17 + countrycode18 + countrycode19 + countrycode20 + countrycode21 + countrycode22 + countrycode23 + countrycode24 + countrycode25 + countrycode26 + countrycode27 + countrycode28 + countrycode29 + countrycode30 + countrycode31 + countrycode32 + countrycode33 + countrycode34 + countrycode35 + countrycode36 + countrycode37 + countrycode38 + countrycode39 + countrycode40 + countrycode41 + countrycode42 + countrycode43 + countrycode44 + countrycode45 + countrycode46 + countrycode47 + countrycode48 + countrycode49 + countrycode50 + countrycode51 + countrycode52 + countrycode53 + countrycode54 + countrycode55 + countrycode56 + countrycode57 + countrycode58 + countrycode59 + countrycode60 + countrycode61 + countrycode62 + countrycode63 + countrycode64 + countrycode65 + countrycode66 + countrycode67 + countrycode68 + countrycode69 + countrycode70 + countrycode71 + countrycode72 + countrycode73 + countrycode74 + countrycode75 + countrycode76 + countrycode77 + countrycode78 + countrycode79 + countrycode80 + countrycode81 + countrycode82 + countrycode83 + countrycode84 + countrycode85 + countrycode86 + countrycode87 + countrycode88 + countrycode89 + countrycode90 + countrycode91 + countrycode92 + countrycode93 + countrycode94 + countrycode95 + countrycode96 + countrycode97 + countrycode98 + countrycode99 + countrycode100 + countrycode101 + countrycode102 + countrycode103 + countrycode104 + countrycode105 + countrycode106 + countrycode107 + countrycode108 + countrycode109 + countrycode110 + countrycode111 + countrycode112 + countrycode113 + countrycode114 + countrycode115 + countrycode116 + countrycode117 + countrycode118 + countrycode119 + countrycode120 + countrycode121 + countrycode122 + countrycode123 + countrycode124 + countrycode125 + countrycode126 + countrycode127 + countrycode128 + countrycode129 + countrycode130 + countrycode131 + countrycode132 + countrycode133 + countrycode134 + countrycode135 +
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = '中文'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('Nederlands', 'English')
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING count(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY sum(T1.population) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' ORDER BY T1.population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
countrycode * avg(lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language != 'English' GROUP BY t1.code HAVING avg(lifeexpectancy) != 0 {}
countrycode * percentage = countrylanguage.countrycode AND language != 'English' GROUP BY countrycode HAVING sum(percentage) >= (SELECT avg(sum(percentage)) FROM countrylanguage WHERE language != 'English')
SELECT sum(t1.population) FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.language != 'English' {}
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = 'Beatrix' AND T1.IsOfficial = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Capital WHERE T2.Name = "Beatrix" AND T1.IsOfficial = 1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930;
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT population FROM country WHERE continent = 'Asia' ORDER BY population ASC LIMIT 1)
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population ASC LIMIT 1) AND code NOT IN (SELECT code FROM country WHERE continent = \"Asia\")
SELECT name FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Africa') AND continent = 'Asia'
countrycode = 'United States' Union all (SELECT countrycode FROM countrylanguage WHERE language != 'English')
SELECT code FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' EXCEPT SELECT countrycode FROM countrylanguage WHERE governmentform = 'Republic')
countrycode = 'Non-R republic' EXCEPT SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English'
countrycode1 = 'Europe' countrycode2 = 'Australia' countrycode3 = 'Canada' countrycode4 = 'France' countrycode5 = 'Germany' countrycode6 = 'Italy' countrycode7 = 'Luxembourg' countrycode8 = 'Mexico' countrycode9 = 'Spain' countrycode10 = 'UK' countrycode11 = 'USA' countrycode1.IsOfficial = 'No' countrycode2.IsOfficial = 'Yes' countrycode3.IsOfficial = 'No' countrycode4.IsOfficial = 'Yes' countrycode5.IsOfficial = 'No' countrycode6.IsOfficial = 'Yes' countrycode7.IsOfficial = 'No' countrycode8.IsOfficial = 'Yes' countrycode9.IsOfficial = 'No' countrycode10.IsOfficial = 'Yes' countrycode11.IsOfficial = 'Yes' countrycode12.IsOfficial = 'No' countrycode13.IsOfficial = 'No' countrycode14.IsOfficial = 'No' countrycode15.IsOfficial = 'No' countrycode16.IsOfficial = 'No' countrycode17.IsOfficial = 'No' countrycode18.IsOfficial = 'No' countrycode19.IsOfficial = 'No' countrycode20.IsOfficial = 'No' countrycode21.IsOfficial = 'No' countrycode22.IsOfficial = 'No' countrycode23.IsOfficial = 'No' countrycode24.IsOfficial = 'No' countrycode25.IsOfficial = 'No' countrycode26.IsOfficial = 'No' countrycode27.IsOfficial = 'No' countrycode28.IsOfficial = 'No' countrycode29.IsOfficial = 'No' countrycode30.IsOfficial = 'No' countrycode31.IsOfficial = 'No' countrycode32.IsOfficial = 'No' countrycode33.IsOfficial = 'No' countrycode34.IsOfficial = 'No' countrycode35.IsOfficial = 'No' countrycode36.IsOfficial = 'No' countrycode37.IsOfficial = 'No' countrycode38.IsOfficial = 'No' countrycode39.IsOfficial = 'No' countrycode40.IsOfficial = 'No' countrycode41.IsOfficial = 'No' countrycode42.IsOfficial = 'No' countrycode43.IsOfficial = 'No' countrycode44.IsOfficial = 'No' countrycode45.IsOfficial = 'No' countrycode46.IsOfficial = 'No' countrycode47.IsOfficial = 'No' countrycode48.IsOfficial = 'No' countrycode49.IsOfficial = 'No' countrycode50.IsOfficial = 'No' countrycode51.IsOfficial = 'No' countrycode52.IsOfficial = 'No' countrycode53.IsOfficial = 'No' countrycode54.IsOfficial = 'No' countrycode55.IsOfficial = 'No' countrycode56.IsOfficial = 'No' countrycode57.IsOfficial = 'No' countrycode58.IsOfficial = 'No' countrycode59.IsOfficial = 'No' countrycode60.IsOfficial = 'No' countrycode61.IsOfficial = 'No' countrycode62.IsOfficial = 'No' countrycode63.IsOfficial = 'No' countrycode64.IsOfficial = 'No' countrycode65.IsOfficial = 'No' countrycode66.IsOfficial = 'No' countrycode67.IsOfficial = 'No' countrycode68.IsOfficial = 'No' countrycode69
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.Language = 'Chinese' GROUP BY T1.id
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = "Asia"
SELECT name , indepyear , surfacearea FROM country ORDER BY indepyear ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(population) , avg(population) FROM city WHERE countrycode IN ( SELECT code FROM country WHERE continent = "Noth America" AND surfacearea > 3000 )
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.Name , max(T2.Percentage) , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Code
SELECT T1.Code , T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage = (SELECT max(Percentage) FROM countrylanguage)
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' ORDER BY t2.percentage DESC LIMIT 1;
SELECT count(DISTINCT T1.name) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code HAVING sum(T2.percentage) >= 50
{ "sql": "SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
ortchaCompanyDESC = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
ortchestreasury.sort_by(YEAR_OF_FOUNDER)
SELECT count(*) FROM orchestra WHERE Record_Company IN ('', 'DVD')
Highschooler.name = "Kyle"
SELECT grade FROM highschooler WHERE id IN ( SELECT friend_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.liked_id = 'Kyle' )
SELECT name FROM highschooler WHERE grade >= 10
SELECT name FROM highschooler WHERE grade >= 10
ID: 1
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING grade = 'high'
Highschooler.id , count(*) , grade FROM Highschooler GROUP BY grade ORDER BY grade ASC
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
Friend.friend_id = highschooler.id AND highschooler.name = 'Kyle'
Friend("Kyle", "friend_id")
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
Highschooler.count(DISTINCT friend_id) WHERE name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'IN' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 AND T1.state = 'IN'
import re from collections import Counter import pandas as pd state = 'Indiana' treatments_count = len(treatments) > 2 professional_ids = [professional_id for professional_id in professional_ids if state == 'Indiana' or (professional_id in [t1.professional_id for t1 in treatments] for t2 in treatments_count)] for professional_id in professional_ids: print(f"Professional ID: {professional_id} - Last Name: { Professional_ids.last_name } - Cell Number: { Professional_ids.cell_number }")
Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000 GROUP BY T2.dog_id HAVING count(*) > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.first_name HAVING count(*) >= 2;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived - T2.date_departed) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treats)
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
owners = [owner1, owner2] dogs = [dog1, dog2] for owner in owners: if owner.state == 'Virginia': print(f"First name: {owner.first_name} \nDog name: {dogs[0].name}")
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM professionals WHERE state LIKE "Hawaii" OR state LIKE "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" UNION SELECT email_address FROM professionals WHERE state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < ( SELECT avg(age) FROM dogs )
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != \"French\"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year BETWEEN 1948 AND 1949
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.song_id GROUP BY T1.citizenatio ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.Citizenship , max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
highest_position = 300000 song_count = count(*) FROM song WHERE sales > 300000 distinct name FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name HAVING count(*) >= 1
Before 1945: 30% After 1955: 60%
Before 1945: 273 After 1955: 608
SELECT property_name FROM properties WHERE room_count > 1 AND property_type_code IN (SELECT property_type_code FROM ref_property_types WHERE property_type_description = 'House' UNION SELECT property_type_code FROM ref_property_types WHERE property_type_description = 'Apartment')
