SELECT Name , Country , Age FROM singer ORDER BY Age ASC , Name ASC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country HAVING count(*) > 0
country_count = (SELECT count(*) , country FROM singer GROUP BY country)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer GROUP BY age)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
2014 - 2015concert_count = (SELECT count(*) FROM concert WHERE YEAR BETWEEN 2014 AND 2015)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
country_from_40 < country_from_30 WHERE age > 40 AND age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
{ "sql": "SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014"} {"concert_name": "2014"}
{ "sql": "SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014"} {"concert_name": "2014", "year": 2014}
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT capacity FROM stadium ORDER BY capacity DESC LIMIT 1)
count(*) FROM Pets WHERE pet_weight > 10
SELECT count(*) FROM Pets WHERE pet_age > 10
SELECT weight FROM Pets ORDER BY pet_age LIMIT 1 OFFSET 0 WHERE pet_age = (SELECT min(pet_age) FROM Pets)
youngest_dog_weight = pets.weight WHERE pet_age = (SELECT min(pet_age) FROM pets GROUP BY pet_age)
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
student_pet_count = count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 GROUP BY T1.StuID HAVING count(*) >= 1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' GROUP BY T1.stuid HAVING count(*) >= 1 AND count(*) <= 50
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" OR T2.pettype = \"Dog\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 1 INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 2
SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE pettype = \"Cat\")
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype != \"Cat\"
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"dog\" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"cat\"
youngest_pet = (SELECT pettype , weight FROM Pets ORDER BY petage LIMIT 1)
youngest_pet_type = min(PetType) youngest_pet_weight = min(weight) pet_type = PetType[pet_type] weight = weight[pet_weight] SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1 WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT petid , weight FROM Pets WHERE petage > 1;
PetIDs: 42357689 PetWeight: 40.5 PetAge: 3 Over 1 YEAR OLD PET ID: 42357689 PetWeight: 40.5 PetAge: 3
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.year = 1970
{ "sql": "SELECT DISTINCT T2.maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970"} {"makeers": ["Chevrolet", "Dodge", "Ford", "Hyundai", "Maranello"]"}
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY T2.Country DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) , t1.maker FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker GROUP BY t1.maker
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1000000
accelerate = '146'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = "Europe"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'Europe' AND T1.country = 'France'
SELECT count(*) FROM car_makers WHERE country IN (SELECT id FROM countries WHERE countryname = 'USA')
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.modelmaker = T3.id JOIN countries AS T4 ON T3.countryid = T4.countryid WHERE T4.countryname = 'United States'
SELECT avg(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 4 AND T2.model = 'CYL'
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND makeid IN ( SELECT makeid FROM car_makers WHERE maker = 'CYL' )
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IN (SELECT T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country) GROUP BY T1.CountryId HAVING COUNT(*) > 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Id IN ( SELECT T2.id FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'Germany' ) UNION SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Id IN ( SELECT T2.id FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'Japan' ) UNION SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Id IN ( SELECT T2.id FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId WHERE T3.CountryName = 'Australia' )
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = \"Europe\" GROUP BY T1.countryname HAVING count(*) >= 3;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
model_list ORDER BY mpg DESC LIMIT 1 MODEL_LIST.model
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.MPG = (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 GROUP BY id HAVING avg(Horsepower) > 0.5
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980.
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.make = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE maker IN ( SELECT id FROM car_makers WHERE maker = 'Volvos' )
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
Year = 1980 count(*) AS count1 FROM cars_data WHERE YEAR = 1980 GROUP BY maker HAVING count1 >= 1 AND count1 <= 3
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T2.makeid WHERE T3.country = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
model_list WHERE maker IN (SELECT id FROM car_makers WHERE country = 'USA' UNION SELECT id FROM car_makers WHERE country = 'USA' AND weight > 3500)
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'General Motors' OR T1.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT id FROM car_makers GROUP BY id HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT id FROM car_makers GROUP BY id HAVING count(*) > 2)
SELECT model FROM car_names WHERE makeid IN (SELECT maker FROM car_makers WHERE country = 'USA' AND cylindernum = 4) ORDER BY horsepower DESC LIMIT 1;
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.id JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.country = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.makeid = T3.id WHERE T3.maker = 'Ford'
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.countryname IN (SELECT countryname FROM countries GROUP BY countryname HAVING count(*) > 3 UNION SELECT countryname FROM countries WHERE countryname = 'fiat') {}
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.makeid WHERE T2.Maker == 'FIAT'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'Australia' AND countryabbreviation = 'Antony'
SELECT T1.airportcode , T2.airportname FROM airports AS T1 JOIN airlines AS T2 ON T1.countryabbreviation = T2.countryabbreviation WHERE T2.country = 'United States' AND T1.airportname = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Airline = 'ULAN'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.countryabbreviation = 'AKO'
SELECT airportname FROM airports WHERE countryabbreviation = 'AKO'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN ( SELECT airportcode FROM airports WHERE country = 'APG' )
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Austr')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = "Aberdeen" AND T3.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Country = 'United States' AND T1.sourceairport = T1.destairport
SELECT count(*) FROM flights WHERE airline = \"Jetblue Airways\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = T1.destairport AND T2.country = 'United States' AND T1.destination = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.airline = 'United Airlines' AND T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1.sourceairport = T2.airportcode AND T1.destinationairport
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'Aberdeen'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD' AND T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairportcode = T4.airportcode WHERE T4.countryabbreviation = 'Australia') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.srcairportcode = T4.airportcode WHERE T4.countryabbreviation = 'Australia') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT T1.Flighno FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE sourceairport IN ( SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Abrahamson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia' AND T1.sourceairport = 'Aberdeen' OR T1.sourceairport = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
sorted_employee_names = sorted(employee.employee_id , name)
sorted_employee = (SELECT name FROM employee ORDER BY age ASC)
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
count(*) AS count_of_shops , LOCATION GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
sorted_shops = sorted(shops , 2) DESC for shop in sorted_shops : print(f"Name : {shop.name} Location : {shop.location} District : {shop.district}")
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY sum(T2.bonus) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
districts_with_less_than_3000_and_more_than_10000 = (shop.District | shop.District) INTERSECT (shop.District | shop.District) < 3000 AND shop.District > 10000
districts = (SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000)
sorted_name = sorted(teacher.Name) print(sorted_name)
sorted_name = sorted(teacher.Name) print(sorted_name)
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
teacher_names = [name for name in teacher if age == 32 or age == 33]
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown HAVING COUNT(*) > 100
SELECT count(*) , name FROM teacher GROUP BY name HAVING Hometown IN (SELECT name FROM teacher GROUP BY name ORDER BY count(*) DESC LIMIT 1)
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 38
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 38
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
visitor ID | name 653478901 | John Doe 421345678 | Jane Smith 312456789 | Bob Johnson 213456789 | Carol Lee 123456789 | Dave Davis 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678 | Jane Smith 421345678
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 'member' AND age < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1;
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit) ORDER BY T2.total_spent LIMIT 1;
total_spent = sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 11;
SELECT tourney_name FROM MATCHES GROUP BY tourney_name HAVING count(*) >= 2;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 AND T1.player_id IN (SELECT T1.player_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T2.match_num = T3.match_num WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T2.tourney_name = 'Australian Open'
SELECT T2.winner_name FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T1.ranking_points DESC LIMIT 1;
SELECT T1.loser_name , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM MATCHES)
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT max(match_num) FROM MATCHES)
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61
SELECT T1.winner_name , T1.winner_rank FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date LIMIT 3;
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date ASC LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT count(*) FROM players WHERE hand = 'left' AND YEAR IN (SELECT YEAR FROM rankings WHERE ranking_points > 250) AND tourney_name = 'WTA Championships'
ship_count = (SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured')
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' AND T2.ship_type = 'HMS Atalanta' AND T1.result = 'Lost'
no_results_found: SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE lost_in_battle != 'English Channel')
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE line_1 LIKE '%Port Chelsea%'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id;
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id {}
SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 = 'Timmothy Ward' AND T1.first_name = 'Timmothy' AND T1.last_name = 'Ward'
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id IN (SELECT current_address_id FROM students WHERE degree_program_id = 1) INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id IN (SELECT current_address_id FROM students WHERE degree_program_id = 2)
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Masters\") INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = \"Bachelors\")
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.content = "Cartoon" AND T1.Directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T2.directed_by = \"Joseph Kuhr\" AND T1.written_by = \"Joseph Kuhr\"
SELECT count(*) FROM cartoon AS T1 JOIN channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.Channel = T2.id WHERE T2.Directed_by = 'Ben Jones' OR T2.Directed_by = 'Brandon Vietti'
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT CONTENT FROM TV_CHANNEL WHERE Content = "Sky Radio"
SELECT Content FROM TV_channel WHERE Content = 'Sky Radio'
SELECT package_option FROM TV_channel WHERE content = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'english'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'english'
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = "The Rise of the Blue Beetle"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.channel = ""Sky Radio""
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
A Love of a Lifetime (1962) aired on September 23, 1962.
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = 'A Love of a Lifetime'
SELECT Weekly_Rank FROM TV_series WHERE Title = """"A Love of a Lifetime"""""
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = """"A Love of a Lifetime"""""
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "103" AND T2.rating = "18+49" AND T2.Title = "A Love of a Lifetime"
SELECT T2.episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = """"Sky Radio"""";
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = 'Sky Radio'
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1;
SELECT Package_Option , Series_name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HD'
SELECT Package_Option , T2.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = 'HDTV'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Todd Casey" AND T2.Title = "Cartoon"
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = 'Todd Casey' AND T2.Title = 'Cartoon'
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = \"Todd Casey\" )
SELECT country FROM tv_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_CHANNEL AS T2 ON T1.channel = T2.id WHERE T2.written_by = 'Todd Casey' )
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
SELECT T1.series_name , T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
TV_channel AS id NOT IN (SELECT id FROM TV_channel WHERE LANGUAGE = 'english') SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE id NOT IN (SELECT id FROM TV_channel WHERE LANGUAGE = 'english')
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'english'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = \"Ben Jones\" )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.Directed_by = 'Ben Jones' )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones' )
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
Nationality , Count {"Nationality" : "Bangladesh", "Count" : 200 }, {"Nationality" : "Bhutan", "Count" : 100 }, {"Nationality" : "China", "Count" : 500 }, {"Nationality" : "India", "Count" : 300 }, {"Nationality" : "Japan", "Count" : 100 }, {"Nationality" : "Kazakhstan", "Count" : 200 }, {"Nationality" : "Malaysia", "Count" : 400 }, {"Nationality" : "Nepal", "Count" : 200 }, {"Nationality" : "Pakistan", "Count" : 500 }, {"Nationality" : "Romania", "Count" : 100 }, {"Nationality" : "Sudan", "Count" : 200 }
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT T1.phone_number , T2.state , T2.state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tab Contestant_name = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2contestant_number IN (SELECT T3.contestant_number FROM CONTESTANTS AS T3 JOIN VOTES AS T4 ON T3.contestant_number = T4.contestant_number WHERE T4.vote_id IN (SELECT vote_id FROM VOTES WHERE contestant_name = 'Tabatha Gehling' INTERSECT SELECT vote_id FROM VOTES WHERE contestant_name = 'Kelly Clauss'))
SELECT name FROM country WHERE indyyear > 1950
SELECT name FROM country WHERE indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
total_surfacearea = 3016485.97 SurfaceArea
Total Surface Area = 4 * SurfaceArea of all cities in Carribean + 4 * SurfaceArea of all cities in other countries SurfaceArea of all cities in Carribean = 3000000 SurfaceArea of all cities in other countries = 1500000 Total Surface Area = 4 * 6000000 + 4 * 1500000 = 30400000 + 6000000 = 36400000平方千米
Anguilla is located in the Caribbean region of the world. Therefore, the continent it belongs to is Caribbean.
Anguilla is located in the Caribbean region of the world. Therefore, the continent it belongs to is Caribbean.
Kabul is located in the region of Afghanistan.
Kabul is located in the Afghanistan region.
SELECT t1.language FROM countrylanguage AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t2.countrycode = 'Aruba' GROUP BY t1.language ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = \"Aruba\" GROUP BY T2.Language ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Angola'
Angola has a population of 475,000 according to the country code Angola.
SELECT avg(lifeexpectancy) FROM country WHERE continent = \"Central Africa\"
AverageLifeExpectancy = (SELECT avg(LifeExpectancy) FROM country WHERE Continent = \"Central Africa\")
SELECT name FROM country WHERE lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = \"Asia\" ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
Asia population = 1400000 Asia gnp = 37685900000000 max(asia) = 37685900000000 SELECT count(*) , gnp FROM country WHERE continent = 'ASIA' GROUP BY gnp ORDER BY count(*) DESC LIMIT 1;
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = \"Africa\" AND governmentform = \"Republic\"
Asia SurfaceArea + Europe SurfaceArea = 48350710.0
total_surfacearea = sum(country.surfacearea) if continent == 'Asia' or continent == 'Europe' else 0
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE countrycode = 'NL' AND district = 'Gelderland'
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'United States' AND code = 'USA'
SELECT avg(gnp) , sum(population) FROM country WHERE code IN ( SELECT code FROM country WHERE name = 'United States' )
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Afghanistan' AND isofficial = 1
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.name = "Afghanistan" AND t2.isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.code ORDER BY sum(t2.percentage) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = true AND T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = true AND T2.language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT count(DISTINCT t1.Continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Chinese'
SELECT count(DISTINCT t1.Continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' OR T2.language = 'Dutch'
most_popular_language = (SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia')) GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage) GROUP BY Language HAVING count(*) > 100
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM country GROUP BY CountryCode HAVING COUNT(*) = 1)
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage) AND CountryCode IN (SELECT Code FROM country WHERE Region = "Single")
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = \"Africa\" AND T2.population > (SELECT max(population) FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE language = \"english\") )
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language = 'English'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language = 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN ( SELECT countrycode FROM countrylanguage WHERE language = 'English' )
SELECT count(*) FROM city WHERE countrycode NOT IN ( SELECT countrycode FROM countrylanguage WHERE language = 'English' )
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Beatrix" AND T2.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = 1
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Percentage > 0 AND T2.indepyear < 1930 GROUP BY T1.CountryCode HAVING count(*) >= 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE indepyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population < ( SELECT max(population) FROM country WHERE continent = "Asia" )
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population ASC LIMIT 1)
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population DESC LIMIT 1)
SELECT code FROM country WHERE code != (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 != 'Republic' EXCEPT SELECT code FROM countrylanguage WHERE language = 'English'
SELECT code FROM country WHERE code != 'UK' EXCEPT SELECT code FROM countrylanguage WHERE language = 'English' INTERSECT SELECT code FROM country WHERE code != 'UK'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.governmentform = 'Regime' INTERSECT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.governmentform = 'Regime' AND T2.isofficial = 'No'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.population > 5000 AND Tcountrylanguage.language = 'Chinese'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'Chinese' AND T2.Percentage > 50
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT max(Population) , Name , GovernmentForm FROM country ORDER BY Population DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district HAVING count(*) > 100
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city GROUP BY district) GROUP BY district HAVING count(*) > 1000000
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
Asia = {"count" : 0}
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
Noth America is a continent with a surface area of 149856 square miles. We need to find the sum of population and the average population from all cities in this continent whose surface area is greater than 3000 square miles. SELECT sum(population) , avg(population) FROM city WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Noth America' AND surfacearea > 3000)
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT T1.name , T2.language , percent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(percent) DESC LIMIT 1
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY avg(T2.percentage) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.percentage = (SELECT max(percentage) FROM countrylanguage)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" AND T2.percentage > 50.0 {}
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" GROUP BY T1.code HAVING sum(T2.percentage) >= 50
youngest_conductors = conductor.order_by("Age")ORTOLDEST_CONDUCTORS = conductor.order_by("Age")
SELECT Name FROM conductor ORDER BY Age ASC
conductor.name FROM conductor WHERE Nationality <> \"USA\"
non usa conductor name: None
ortchestras_in_desc_starting_time = SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC;
sorted_asc_orchestras = SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER ASC;
If """"CD"""" or """"DVD"""" is present in the Orchestra column, then count it. Otherwise, return 0. If """"CD"""" or """"DVD"""" is not present in the Orchestra column, return 0.
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 1) AND name = "Kyle"
SELECT grade FROM highschooler WHERE id IN (SELECT friend_id FROM friend WHERE student_id = 1) AND name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
Highschooler.name FROM Highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = '9' OR grade = '10'
SELECT count(*) FROM Highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) , grade FROM highschooler GROUP BY grade HAVING count(*) >= 100
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING grade != '0'
SELECT YEAR FROM highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 'Kyle'
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id IN (SELECT ID FROM Highschooler WHERE name = "Kyle")
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle' INTERSECT SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle')
SELECT count(*) FROM LIKE AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T2.friend_id) != 0;
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id NOT IN ( SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id )
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT T1.student_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"IN\" OR COUNT(*) > 2
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professional AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = \"IN\" OR COUNT(*) >= 2
SELECT T3.name FROM charges AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T3.dog_id = T1.dog_id JOIN treatments AS T4 ON T4.dog_id = T3.dog_id WHERE T1.cost_of_treatment > 1000;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T2 JOIN dogs AS T1 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.role_code , T2.id FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.role_code , T2.dog_id FROM owners AS T1 JOIN treats AS T2 ON T1.owner_id = T2.professional_id GROUP BY T2.dog_id HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_adopted) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments) ORDER BY T1.first_name , T1.last_name ASC
SELECT T3.first_name , T2.name FROM Dogs AS T2 JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.state = 'Virginia' AND T3.city = 'Richmond'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM professionals WHERE state = 'Hawaii' UNION SELECT email_address FROM professionals WHERE state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
sorted_name = singer.sort_by_networth_millions() print(sorted_name)
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY count(*) DESC LIMIT 1) AS T3
SELECT DISTINCT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship HAVING max(Net_Worth_Millions) != 0
SELECT country , max(Net_Worth_Millions) FROM singer GROUP BY country;
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
singer(singer_id) IN (SELECT singer_id FROM singer WHERE birth_year < 1945 INTERSECT SELECT singer_id FROM singer WHERE birth_year > 1955)
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House' OR property_type_code = 'Apartment'
