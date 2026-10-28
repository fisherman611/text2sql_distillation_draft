sorted singer by age ASC LIMIT 1000000
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country FROM singer WHERE age > 20 GROUP BY country HAVING count(*) >= 1
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer ORDER BY age DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) = 0
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
country WHERE age > 40 INTERSECT country WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
count(*) , T1.theme , T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014 GROUP BY T3.name HAVING count(*) >= 1 AND count(*) <= 5
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
{ "sql": "SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015"} {"sql": "SELECT T3.name , T3.location FROM stadium AS T3 JOIN concert AS T1 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015"}
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE pet_age > 10
count(*) OVER (SELECT pet_id FROM Pets WHERE pet_age > 10)
youngest_dog_weight = (SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets))
min(weight) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T1.petage = (SELECT min(petage) FROM pets)
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 GROUP BY T1.StuID HAVING count(*) > 1
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 GROUP BY T1.StuID HAVING count(*) >= 1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' GROUP BY T1.stuid HAVING count(*) >= 1 AND count(*) <= 500
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" OR T2.pettype = \"Dog\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Dog\"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Dog\"
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM has_pet WHERE PetType = 'Cat' )
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE pettype = 'Cat')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat'
youngest_pet_pettype = min(Pets.pettype) youngest_pet_weight = min(Pets.weight)
Youngest_pet_type = min(PetType) , Youngest_pet_weight = min(weight) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T2.age = (SELECT age FROM student ORDER BY age LIMIT 1)
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T1.Fullname , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 100
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.year = 1970;
SELECT DISTINCT T2.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT T1.Maker , min(T2.year) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid GROUP BY T1.Maker HAVING count(*) = 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker IN (SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1)
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY T2.Country DESC LIMIT 1;
SELECT T1.FullName , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id ORDER BY count(*) DESC LIMIT 3
accelerate = '48'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'Europe'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'Europe' AND T1.country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT count(*) FROM car_names AS t1 JOIN car_makers AS t2 ON t1.makeid = t2.id WHERE t2.countryid IN (SELECT id FROM countries WHERE countryname = \"United States\")
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4 AND YEAR = 1996
year = 1974 AND makeid IN (SELECT makeid FROM car_makers WHERE maker = 'CYL') AND weight < (SELECT min(weight) FROM cars_data WHERE YEAR = 1974)
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IN (SELECT T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country) GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 INTERSECT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) <= 2
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
model_list ORDER BY mpg DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model GROUP BY T2.Model ORDER BY avg(T1.MPG) DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 GROUP BY id HAVING avg(Horsepower) != 0;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'Volvo'
SELECT avg(T2.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Volvo'
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.makeid = T3.id WHERE T3.country = 'American Motor Company'
SELECT count(*) FROM car_names AS t1 JOIN model_list AS t2 ON t1.model = t2.model JOIN car_makers AS t3 ON t2.makeid = t3.id WHERE t3.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'USA' OR T1.weight > 3500
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500
SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Maker = 'Volvo')
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Maker = 'Volvo')
SELECT count(*) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower = (SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 4)
max(mpg) OVER (SELECT max(mpg) FROM car_names WHERE cylinders = 8 UNION SELECT max(mpg) FROM car_names WHERE YEAR < 1980)
model_list WHERE weight < 3500 AND maker NOT IN (SELECT id FROM car_makers WHERE country = 'Ford Motor Company')
filtering out ford motor company from car_names makes car_names.weight < 3500 and maker not in (select id FROM car_makers WHERE country = 'USA')
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.County > 3 OR T2.FullName = 'fiat' UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.County > 3 OR T2.FullName = 'fiat' GROUP BY T1.CountryId HAVING count(*) >= 4
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.makeid WHERE T2.make = 'FIAT'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE Abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
Anthony = "Anthony" SELECT T1.airportcode , T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = "Anthony"
SELECT T1.airportcode , T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL' AND Country != 'United States'
SELECT Airline FROM airlines WHERE Airline = \"UAL\"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.country = 'United States' AND T2.sourceairport = 'Akron'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.countryabbreviation = 'AKO'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = "Aberdeen" AND T3.city = "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.country = 'United States' AND T2.sourceairport = T2.destairport
SELECT count(*) FROM flights WHERE airline = \"Jetblue Airways\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = \"United Airlines\" AND sourceairport = \"ASY\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.flightroute = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.airline = 'United Airlines' AND T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'Aberdeen'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairportcode = T4.airportcode WHERE T4.countryabbreviation = 'Australia') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.srcairportcode = T4.airportcode WHERE T4.countryabbreviation = 'Australia') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT flightno FROM flights WHERE airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = \"APG\")
APG: 1234567890
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT flightno FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights) UNION SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
sorted_employee_name = (SELECT name FROM employee ORDER BY age ASC LIMIT 100)
SELECT name FROM employee ORDER BY age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
sorted_shops = sorted(shops , by shops.Number_products DESC) for shop in sorted_shops : print(f"Name: {shop.Name} , Location: {shop.Location} , District: {shop.District}")
sorted_shop = sorted(shops , 1 , 'desc' ) for shop in sorted_shop : print(f"Name : {shop.Name} \nLocation : {shop.Location} \nDistrict : {shop.District}")
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
districts_with_less_than_3000_and_more_than_10000 = (shop.District) INTERSECT (shop.District)
both_districts = [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000] union [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]union [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 10000]intersect [district for district in shop if district.Number_products < 3000 and district.Number_products > 1000
sorted_name = sorted(teacher.Name) print(sorted_name)
sorted_name = sorted(teacher.Name) # sort by name print(sorted_name) # print the sorted names of the teachers from youngest to oldest
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT teacher_name FROM teacher WHERE age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1;
SELECT Name FROM teacher ORDER BY Age LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) > 1
SELECT count(*) , name FROM teacher GROUP BY name HAVING Hometown != \"\"
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2 {}
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN ( SELECT Teacher_ID FROM course_arrange )
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 'Student' AND age <= 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1;
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.num_of_ticket) DESC LIMIT 1;
total_spent = sum(T1.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 MATCHES + 2016 MATCHES = 4015
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T2.first_name , T2.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T2.tourney_name = 'Australian Open'
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT min(match_num) FROM matches AS T3 JOIN players AS T4 ON T3.winner_id = T4.player_id WHERE T3.loser_id = T4.player_id)
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT min(match_num) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.loser_id = T2.player_id)
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T1.winner_rank FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date LIMIT 3;
SELECT T1.winner_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3;
SELECT count(*) FROM (SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT DISTINCT T3.winner_id FROM players AS T3 JOIN MATCHES AS T4 ON T3.player_id = T4.winner_id WHERE T4.tourney_name = \"Tennis\" AND T3.hand = \"left\") WHERE T1.winner_hand = \"left\" AND T2.winner_hand = \"left\"
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
ship_count = (SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured')
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' AND T2.ship_type = 'HMS Atalanta'
no_results_found"��batı,"result,"bulgarian_commander","english_channel" no_results_found"
Transcript: The description of mathematics is "The branch of mathematics dealing with the properties of quantities and sets,以及 the relationships between them."
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id {}
SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Mathematics'
SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 = 'Timmothy Ward' AND T1.first_name = 'Timmothy' AND T1.last_name = 'Ward'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
Both Master and Bachelor students should get enrolled in the same semester. Since there can't be more than one semester per student, we can simply check if a student gets enrolled in a given semester. SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 1) INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 2)
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Masters\") INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Bachelors\")
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT title FROM cartoon ORDER BY title
sorted_cartoons = (SELECT title FROM cartoon ORDER BY title ASC)
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_Name = 'Ben Jones' AND T1.Directed_by = 'Ben Jones'
SELECT T1.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T2.directed_by = 'Joseph Kuhr' AND T1.written_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN cartoone AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.Channel = T2.id WHERE T2.Directed_by = \"Ben Jones\" OR T2.Directed_by = \"Brandon Vietti\"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT CONTENT FROM TV_CHANNEL WHERE CONTENT = "Sky Radio"
SELECT Content FROM TV_channel WHERE Content = 'Sky Radio'
SELECT package_option FROM tv_channel WHERE content = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'english'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.channel = ""Sky Radio""
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.content = 'Sky Radio' AND T2.package_option = 'Pay per view PPV'
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
A Love of a Lifetime (1962) aired on October 17, 1962.
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = \"A Love of a Lifetime\"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.content = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = """"A Love of a Lifetime"""""
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = """"Sky Radio"""""
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.series_name = 'Sky Radio'
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT package_option , series_name FROM TV_channel WHERE package_option = 'HD'
SELECT Package_Option , T2.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = 'Yes'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Todd Casey" AND T2.Title = "Cartoon"
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = \"Todd Casey\"
No channel plays cartoons for Todd Casey. Therefore, all TV_channels have no content for him. Hence, there are no TV_channels whose content is not a cartoon for Todd Casey. Therefore, the answer is: No channel plays cartoons for Todd Casey.
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel JOIN cartoon AS T3 ON T2.series_name = T3.title WHERE T3.directed_by = 'Todd Casey' )
SELECT T2.series_name , T2.Country FROM cartoon AS T1 JOIN TV_CHANNEL AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' AND T1.directed_by = 'Michael Chang'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE LANGUAGE <> "english"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'english' AND id NOT IN ( SELECT channel FROM TV_channel WHERE LANGUAGE = 'english')
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT t1.id FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.id = 305 )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.content = 'Cartoon' AND T2.directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.directed_by = 'Ben Jones' )
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 1000000
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT max(VOTED) FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = \"NY\" OR state = \"CA\"
SELECT T1.create_date , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\"). T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\") T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTants WHERE contestant_name = \"Kelly Clauss\") T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\") T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\") T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\") T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\") T2.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area
SELECT name FROM country WHERE indepyear > 1950;
from country import * after_1950 = [name for name in nation if int(nation.indepyear) > 1950]
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
Total surface area of the countries in the Caribbean = 3018497.587118654
Caribbean SurfaceArea + Caribean SurfaceArea = 36000000 + 36000000 = 72000000
Anguilla is located in the Caribbean region of the world. Therefore, the continent it belongs to is Caribbean.
Anguilla is located in the Caribbean region of the world. Therefore, the continent it belongs to is the Caribbean continent. The query can be written as: SELECT Continent FROM country WHERE Name = \"Anguilla\"
Kabul is located in Afghanistan. Therefore, the region is Afghanistan.
Kabul is located in the Afghanistan region.
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = \"Aruba\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Angola'
Angola's region is the continent of Africa and its population is 104 million.
SELECT avg(lifeexpectancy) FROM country WHERE continent = \"Central Africa\"
Central African Republic (lifeexpectancy) = 76.81 years
SELECT name FROM country WHERE lifeexpectancy IN (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , gnp FROM country WHERE continent = 'Asia' GROUP BY gnp ORDER BY count(*) DESC LIMIT 1;
SELECT avg(lifeexpectancy) FROM country WHERE region = 'Republic' AND continent = 'African'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
Asia_surfacearea + Europe_surfacearea = 4308571648888.0
total_surfacearea = sum(country.surfacearea) WHERE country.continent IN ('Asia', 'Europe')
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE countrycode = 'NL' AND district = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'United States' AND code = 'U.S.'
SELECT avg(gnp) , sum(population) FROM country WHERE code IN ( SELECT code FROM country WHERE name = 'United States' )
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
total = (SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba')
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan' AND isofficial = 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Afghanistan" AND T2.isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1
most_diverse_continent = (SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1)
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'French'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" OR T2.language = "dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = \"Asia\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Continent = \"Asia\" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1;
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage) AND CountryCode IN (SELECT CountryCode FROM country WHERE Population = (SELECT max(Population) FROM country))
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'English' GROUP BY T1.id ORDER BY sum(t1.population) DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = \"Asia\" ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.isofficial != 'Yes'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language = 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = \"Beatrix\" AND T2.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = 'Beatrix' AND T2.IsOfficial = 1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Incorporated < 1930;
SELECT count(DISTINCT language) FROM countrylanguage WHERE indepyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"African\" ORDER BY population ASC LIMIT 1)
SELECT name FROM country WHERE population > ( SELECT max(population) FROM country WHERE continent = \"Africa\" )
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT code2 FROM countrylanguage WHERE language = \"English\")
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 != 'Republic' EXCEPT SELECT code FROM countrylanguage WHERE language = 'English'
SELECT code FROM country WHERE code != (SELECT countrycode FROM countrylanguage WHERE language = 'English') AND governmentform = 'Republic'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.governmentform = 'Regulated' INTERSECT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.governmentform = 'Unregulated' AND T2.isofficial = 'No'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.GovernmentForm = "Chinese"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "Chinese" AND T2.isofficial = 1 INTERSECT SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "Chinese" AND T2.isofficial = 0
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT Population , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district HAVING count(*) > 1
SELECT count(*) , district FROM city WHERE population > ( SELECT avg(population) FROM city ) GROUP BY district HAVING count(*) > 1000000
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM city ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3;
Asia = "Asia" region count(*) FROM country WHERE continent = \"Asia\"
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = \"North America\" AND population > 3000
Noth America is a continent with a surface area of 1495 million square miles (3000 > 1495). Therefore, no country can fit this criteria. The total population and average for Noth America are both 0.
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.name , T2.language , percent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(percent) DESC LIMIT 1
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY avg(T2.percentage) DESC LIMIT 1
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' AND t2.percentage = (SELECT max(percentage) FROM countrylanguage)
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = \"Spanish\" AND t2.percentage > 50%
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code HAVING sum(T2.percentage) >= 50
youngest_to_oldest_conductors = conductor.order_by("Age" DESC)
sorted_conductors = conductor.sort_by_age() print(sorted_conductors)
select name FROM conductor WHERE nationality <> 'USA'
conductorNames = [name for name in conductor if name.Nationality != 'USA']
ortchest_companies_desc = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
ortchestre comapany ASC
If """"CD"""" or """"DVD"""" appears in the Orchestra field, then count it. Otherwise, return 0. If no such fields appear, return 0.
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 1) AND name = "Kyle"
Highschooler(name) LIKE 'highschooler%' AND grade = 10
Highschooler.name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM highschooler GROUP BY grade HAVING count(*) > 100
SELECT count(*) , grade FROM highschooler GROUP BY grade HAVING grade > 14
SELECT YEAR FROM highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
Kyle = 'Kyle' SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = Kyle
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Friend WHERE friend_id IN (SELECT ID FROM Highschooler WHERE name = 'Kyle')
SELECT count(*) FROM friend WHERE friend_id IN (SELECT ID FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM LIKE AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM LIKE AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 1
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IS NULL
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"IN\" OR count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'IN' OR COUNT(*) > 2
SELECT T2.name FROM dogs AS T2 JOIN treatments AS T1 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T1.owner_id WHERE T1.cost_of_treatment > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.role_code , T2.treatment_id FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.professional_id GROUP BY T2.treatment_id HAVING count(*) >= 2
SELECT T1.first_name , T1.role_code , T2.treatment_id FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T2.treatment_id HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_departed) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T3.first_name , T2.name FROM Dogs AS T2 JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.state = 'Virginia'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = \"Virginia\"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1 OFFSET 0;
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state LIKE "Hawaii" UNION SELECT email_address FROM professionals WHERE state LIKE "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROMdogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING count(*) > 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality , max(Net_Worth_Millions) FROM singer GROUP BY Nationality HAVING Nationality != \"Unknown\"
SELECT country , max(net_worth_millions) FROM singer GROUP BY country;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
singer(singer_id) IN (SELECT * FROM singer WHERE birth_year < 1945 INTERSECT SELECT * FROM singer WHERE birth_year > 1955)
singer(Citizen) WHERE Birth_Year BETWEEN 1 AND 2000 AND Citizen IN (SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1955)
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House' OR property_type_code = 'Apartment'
