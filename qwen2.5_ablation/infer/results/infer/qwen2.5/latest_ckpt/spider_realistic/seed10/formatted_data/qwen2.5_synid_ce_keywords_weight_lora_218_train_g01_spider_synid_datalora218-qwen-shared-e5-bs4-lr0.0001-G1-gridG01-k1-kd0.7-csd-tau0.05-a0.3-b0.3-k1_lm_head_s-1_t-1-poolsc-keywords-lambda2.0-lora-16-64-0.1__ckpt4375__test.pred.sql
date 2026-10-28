sorted(singer.Country , singer.Age)
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country;
count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer ORDER BY age DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
most_concert_stadium = (SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
country = (select country FROM singer WHERE age > 40 INTERSECT select country FROM singer WHERE age < 30)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert WHERE YEAR = 2014 )
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T2.concert_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014 GROUP BY T3.name HAVING count(*) >= 1
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014 {}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T3.stadium_id IN ( SELECT T2.stadium_id FROM concert AS T2 JOIN stadium AS T3 ON T2.stadium_id = T3.stadium_id WHERE T2.year = 2015 )
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE pet_age > 10
SELECT count(*) FROM Pets WHERE pet_age > 10 AND pet_type = 'dog' OR pet_type = 'cat'
youngest_dog_weight = (SELECT weight FROM Pets ORDER BY pet_age LIMIT 1)
youngest_dog_weight = pets.weight WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
student_pet_count = (SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20)
SELECT count(*) FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.sex = 'F' GROUP BY t1.stuid HAVING count(*) >= 0 AND count(*) <= 1
SELECT count(*) FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.sex = 'F' GROUP BY t1.stuid HAVING count(*) >= 1 AND count(*) <= 50
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = \"Cat\" OR T2.pettype = \"Dog\"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" OR T2.pettype = \"Dog\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"cat\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"dog\"
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Dog'
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet WHERE pettype = 'Cat')
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet WHERE PetType = "Cat")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Cat')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat'
Youngest Pet Type: PetType Youngest Pet Weight: weight
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1;
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker HAVING count(*) > 0
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T1.Year = 1970
SELECT DISTINCT T2.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
most_car_makers = (SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT max(Maker) FROM car_makers))
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY T2 maker DESC LIMIT 1;
{ "sql": "SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker"} {"model_list": [{"maker": "Ford", "model": "Mustang"}, {"maker": "Chevrolet", "model": "Malibu"}]
SELECT T1.id , T2.fullname , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
accelerate = 180.0 FROM cars_data WHERE model = 'Amc Hornet Sportabout' AND Accelerate != 'null'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = "Europe")
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'Europe' AND T1.country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.countryid = (SELECT id FROM countries WHERE countryname = 'USA')
SELECT count(*) FROM car_names AS t1 JOIN car_makers AS t2 ON t1.makeid = t2.id JOIN countries AS t3 ON t2.countryid = t3.countryid WHERE t3.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = '4' AND YEAR = 2015
year = 1974 AND makeid IN (SELECT makeid FROM car_makers WHERE maker = 'CYL') AND weight = (SELECT min(weight) FROM cars_data WHERE year = 1974)
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryId IN ( SELECT T2.Country FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId GROUP BY T2.Country HAVING COUNT(*) >= 1 )
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryId IN ( SELECT T2.Country FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T2.FullName != "")
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
model_list ORDER BY MPG DESC LIMIT 1 model_list.model
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model GROUP BY T2.model ORDER BY avg(T1.MPG) DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980.0
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.makeid WHERE T2.Fullname = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.maker = "Volvo"
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
1980.year = 1980 model_list.count()
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
model_list WHERE maker IN (SELECT id FROM car_makers WHERE maker = 'General Motors' OR weight > 3500)
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'General Motors' OR T1.weight > 3500
years_between_3000_and_4000 = (cars_data.year BETWEEN 3000 AND 4000)
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Maker = 'Volvo')
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT id FROM car_makers GROUP BY id HAVING COUNT(*) > 2)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT model FROM car_names WHERE makeid IN (SELECT maker FROM car_makers WHERE country = 'United States' INTERSECT SELECT maker FROM car_makers WHERE country = 'China') AND model = 'Cylinder' GROUP BY model ORDER BY count(*) DESC LIMIT 1 HAVING max(horsepower) >= 4
max(mpg) OVER (SELECT max(mpg) FROM cars_data WHERE cylinders = 8 AND YEAR < 1980)
model_list WHERE weight < 3500 AND maker NOT IN (SELECT id FROM car_makers WHERE country = 'Ford Motor Company')
model_list WHERE weight BETWEEN 0 AND 3499 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'Ford'
More than 3 car makers: SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.countrymaker > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.make = 'fiat' GROUP BY T1.CountryId HAVING count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Make = 'Fiat' + SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country > 3 INTERSECT SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Make = 'Fiat'
SELECT country FROM airlines WHERE Airline = \"JetBlue Airways\"
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airport_code , airport_name FROM airports WHERE country = 'United States' AND country_abbr = 'USA'
SELECT T1.airportcode , T2.airportname FROM airports AS T2 JOIN flights AS T1 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.uid = T1.sourceairport WHERE T3.countryabbreviation = 'USA' AND T3.city = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Airline = \"UAL\"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Akron'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.countryabbreviation = 'AKO' OR T1.countryabbreviation = 'AOK'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE country = 'United Kingdom' AND city LIKE '%Aberdeen%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Austr')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = \"United Airlines\" AND sourceairport = \"ASY\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T2.countryabbreviation = 'United States' AND T1.airline = 'United Airlines' AND T1FlightNo = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.countryabbreviation = 'ABERDEN'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD' AND T2.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport = 'AHD'
SELECT T2.airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States' AND T4.destinationairport NOT IN (SELECT
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination = 'APG'
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT flightno FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT T2.Flighne FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode AND T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
sorted_employee_names = (SELECT name FROM employee ORDER BY age ASC LIMIT 100)
sorted_employee = (SELECT name FROM employee ORDER BY age ASC)
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
sorted_by_number_products = SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sorted_shop = sorted(shops , 1) DESC for shop in sorted_shop : print(f"Name : {shop.Name} , Location : {shop.Location} , District : {shop.District}")
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN ( SELECT shop_id FROM hiring )
district_with_both = (SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000)
both_districts = [] for district in shop.District: if district < 3000 and district > 10000: both_districts.append(district) print(both_districts)
sorted_name = sorted(teacher.Name) print(sorted_name)
sorted_name = sorted(teacher.Name for teacher in teacher.order_by('Age'))
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
teacher_names = [name for name in teacher if int(name) == 32 or int(name) == 33]
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1;
SELECT Name FROM teacher ORDER BY Age LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT count(*) , name FROM teacher GROUP BY name HAVING count(*) > 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2;
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course_id = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age BETWEEN 0 AND 29;
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 'visitor' AND AGE < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit) ORDER BY T2.total_spent DESC LIMIT 1;
total_spent = sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1；
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 11;
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) >= 11;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 AND T1.player_id IN (SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 AND T1.player_id IN (SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016)
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 MATCHES + 2016 MATCHES = 4014
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(T3.ranking_points) FROM rankings AS T3 JOIN players AS T4 ON T3.player_id = T4.player_id WHERE T4.tourney_name = 'Australian Open')
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" AND T2.rank_points = (SELECT max(rank_points) FROM matches AS T3 JOIN rankings AS T4 ON T3.winner_id = T4.player_id WHERE T3.tourney_name = \"Australian Open\")
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT match_num FROM MATCHES ORDER BY match_num DESC LIMIT 1)
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT T1.winner_name , T1.winner_rank FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date LIMIT 3;
SELECT T1.winner_name , T1.winner_rank FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.winner_age LIMIT 3;
SELECT count(*) FROM (SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Left Hand\")
SELECT count(*) FROM players WHERE hand = 'left' AND YEAR IN (SELECT YEAR FROM MATCHES WHERE tournament_name = \"WTA Championships\")
count(*) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.ship_type = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' AND T2.ship_type = 'HMS Atalanta' AND T1.result = 'Lost'
no_results_found"sql": "SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Ship' AND T2.location = 'English Channel' )"
SELECT transcript_date , degree_summary_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea' AND city = 'Port Chelsea'
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id != 0
SELECT T1.last_name FROM Students AS T1 JOIN Address AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id IS NOT NULL {}
SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 = 'Timmothy Ward' AND T1.first_name = 'Timmothy' AND T1.last_name = 'Ward'
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' AND T3.last_name = 'Student' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor' AND T3.last_name = 'Student'
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Masters\") INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Bachelors\")
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.content = 'Cartoon' AND T1.Directed_by = 'Ben Jones'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T2.directed_by = 'Joseph Kuhr' AND T1.written_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN channel AS T2 ON T1.channel = T2.id WHERE T1.Written_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.id IN (SELECT id FROM cartoon WHERE directed_by = 'Ben Jones' UNION SELECT id FROM cartoon WHERE directed_by = 'Brandon Vietti')
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country , count(*) FROM TV_CHANNEL GROUP BY Country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT CONTENT FROM TV_CHANNEL WHERE Content = "Sky Radio"
SELECT Content FROM TV_channel WHERE Content = 'Sky Radio'
SELECT Package_Option FROM TV_CHANNEL WHERE Series_Name = ""Sky Radio""
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'english'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'english'
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle'
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.channel = ""Sky Radio""
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.content = 'Sky Radio' AND T2.series_name = 'Cartoons'
SELECT Air_Date FROM TV_series WHERE Title LIKE "%A Love of a Lifetime%"
A Love of a Lifetime (1962) aired on 15 April 1962.
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = 'A Love of a Lifetime'
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = 1849 AND T1.series_name = """"A Love of a Lifetime""""
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = """"Sky Radio"""""
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1;
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = 'HD'
SELECT package_option , series_name FROM TV_CHANNEL WHERE hight_definition_tv = 'Yes'
Todd Casey wrote a cartoon titled "Mr. Chips". The channel associated with this cartoon is TV_Channel.id 3275. Therefore, the country of TV_Channel.id 3275 is Canada.
Todd Casey wrote cartoon titled "Crayon" which aired on TV_Channel id 37056. Therefore, the country associated with TV_Channel id 37056 is "Australia". The required country is Australia.
TV_Channel(id, country) WHERE id NOT IN (SELECT channel FROM cartoon WHERE written_by = 'Todd Casey')
No country is found that is not playing cartoons Todd Casey. Therefore, there are no such countries in this case.
SELECT T2.series_name , T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Written_by = 'Michael Chang'
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
TV_channel WITHOUT LANGUAGE ENGLISH {"Pixel_aspect_ratio_PAR": "230", "Country": "China"}
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE LANGUAGE <> 'english'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = \"Ben Jones\" )
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2;
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT max(created) FROM VOTES WHERE state = \"CA\"
SELECT count(*) FROM VOTES WHERE state = "NY" OR state = "CA"
SELECT T1.phone_number , T2.state , T2.artist FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.artist = \"Tabatha Gehling\"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = 'Tabatha Gehling') INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2contestant_number IN (SELECT contestant_number FROM CONTESTants WHERE contestant_name = 'Kelly Clauss')
SELECT name FROM country WHERE indepyear > 1950;
from country import * after_1950 = [name for name in country if int(name[indepyear:]) > 1950] print(after_1950)
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
Total surface area of the countries in the Caribbean = 301465.87 SurfaceArea
Total Surface Area of Carribean Countries: 4000000 square units.
Anguilla is located in the Caribbean region of the world. Therefore, its continent is Caribbean.
Anguilla is located in the Caribbean region of the world. Therefore, the continent it belongs to is Caribbean.
Kabul is located in the region of Afghanistan.
Kabul is located in the region of Afghanistan.
SELECT t3.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN language AS t3 ON t2.language = t3.language WHERE t1.name = \"Aruba\" GROUP BY t3.language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba" GROUP BY T2.CountryCode ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
Angola's region is Africa and its population is approximately 104 million.
SELECT avg(lifeexpectancy) FROM country WHERE continent = \"Central Africa\"
Central African Republic (lifeexpectancy) = 75.41年
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = \"Asia\" ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
Asia population: 143 million Largest GNP: 500 billion USD China GDP is 938 billion USD
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'African' AND governmentform = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND governmentform = 'Republic'
Asia SurfaceArea + Europe SurfaceArea = 2 * 4000000 = 8000000
Total surface area of countries in Asia or Europe: SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
Gelderland = " Gelderland " , 50149836
SELECT sum(population) FROM city WHERE countrycode = 'NL' AND district = 'Gelderland'
SELECT avg(GNP) , sum(Population) FROM country WHERE Continent = 'United States' AND Code != 'US'
SELECT avg(GNP) , sum(Population) FROM country WHERE Code = (SELECT Code FROM country WHERE Name = 'United States')
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
total_languages = (SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba")
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "Afghanistan" AND isofficial = 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = "Afghanistan") AND isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
import pandas as pd from collections import Counter most_diverse_continent = countrycode.name.continent percentage = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name countrylanguage = countrylanguage.sort_values(percentage).head(1) 最多的语言大陆 continent = countrycode.name.continent percentage = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent 最多的语言大陆 continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent 最多的语言大陆 continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent 最多的语言大陆 continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage.CountryCode) % 100 countrycode = countrycode.name nationality = countrycode.name.continent continent = countrycode.name.continent percent = countrylanguage.percentile最大值(countrylanguage.CountryCode) / len(countrylanguage
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY sum(T2.Percentage) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = "English" UNION SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = "French"
SELECT count(DISTINCT t1.Continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t2.Language = "Chinese"
SELECT count(DISTINCT t1.Continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage) GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING count(*) = 1
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage) INTERSECT SELECT Language FROM countrylanguage WHERE Percentage = (SELECT min(Percentage) FROM countrylanguage)
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM city WHERE population IN (SELECT max(population) FROM city WHERE countrycode IN (SELECT code FROM country WHERE language = 'English'))
SELECT name , population , lifeexpectancy FROM country WHERE continent = "Asia" ORDER BY population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English' AND T2.Percentage != 0.0
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language = 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix" AND T2.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = 1
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Incorporated < 1930 GROUP BY T1.Code HAVING count(*) > 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE indayyear < 1930 GROUP BY countrycode HAVING sum(percentage) > 0.5
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = 'African' ORDER BY population DESC LIMIT 1)
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population ASC LIMIT 1)
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = \"English\")
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.code HAVING count(*) > 1
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 != 'Republic' EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'English'
SELECT code FROM country WHERE code2 != 'English' EXCEPT SELECT code FROM countrylanguage WHERE Language = 'English'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.code2 IN (SELECT code2 FROM countrylanguage WHERE language = 'English' AND isofficial = 'No')
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.population > 500000 AND T2.GNPOld = 38
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Chinese' INTERSECT SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Chinese'
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT Population , Name , HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 100
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
Asia = "Asia" region count(*) AS count_countries FROM country WHERE continent = \"Asia\"
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
Noth America is a continent with a surface area of 184459 square miles. Therefore, we need to find the sum of populations of cities in Noth America whose surface areas are greater than 3000 square miles. SELECT sum(t1.population) , avg(t1.population) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Noth America' AND t1.surfacearea > 3000 ;
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT T1.Language , T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.code WHERE T2.Population > (SELECT max(population) FROM country) GROUP BY T1.CountryCode
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT sum(T1.population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage = (SELECT max(percentage) FROM countrylanguage GROUP BY language)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" AND T2.percentage > 50.0
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > (SELECT avg(percentage) FROM countrylanguage WHERE language = 'Spanish')
youngest_conductors = conductor.order_by('Age' DESC)
SELECT Name FROM conductor ORDER BY Age ASC
select name FROM conductor WHERE Nationality <> 'USA'
non_usa_conductors = conductor.where(Nationality != 'USA').select(Name)
ortchestras_in_desc_time = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
ortchestre_companies = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNISHED) ASC
If """"CD"""" or """"DVD"""" is present in the Orchestra column, count it. Otherwise, return 0. If there are no records matching either pattern, return 0.
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT T1.grade FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1 AND T1.name = "Kyle"
Highschooler.name FROM Highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) , grade FROM highschooler GROUP BY grade HAVING grade != '0'
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT YEAR FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
Kyle = 'Kyle' friends = [friend for friend in highschooler if friend.id == Kyle] names = [name for name in highschooler if id in friends]
Highschooler(name) LIKE 'Kyle' UNION SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM LIKE AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0.0
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IS NULL;
SELECT min(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN (SELECT student_id FROM Friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'IN' OR count(*) > 2
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = \"IN\" OR COUNT(*) > 2
SELECT T2.name FROM dogs AS T2 JOIN treatments AS T1 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T1.owner_id WHERE T1.cost_of_treatment > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.role_code , T2.treatment_id FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.treatment_id HAVING count(*) >= 2
SELECT T1.first_name , T1.role_code , T2.treatment_id FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T2.treatment_id HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.date_adopted) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments ) ORDER BY T2.date_of_treatment ASC LIMIT 1 ;
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1 OFFSET 0;
SELECT email_address FROM Professionals WHERE state = 'Hawaii' UNION SELECT email_address FROM Professionals WHERE state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state IN ('Hawaii', 'Wisconsin')
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT distinct citizenship , max(Net_Worth_Millions) FROM singer GROUP BY citizenship HAVING max(Net_Worth_Millions) != 0
SELECT Country , max(Net_Worth_Millions) FROM singer GROUP BY Country
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
singer(Citizen) WHERE birth_year < 1945 INTERSECT singer(Citizen) WHERE birth_year > 1955
singer WHERE Birth_Year BETWEEN 1 AND 2000 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1946 AND 1954
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House' OR property_type_code = 'Apartment'
