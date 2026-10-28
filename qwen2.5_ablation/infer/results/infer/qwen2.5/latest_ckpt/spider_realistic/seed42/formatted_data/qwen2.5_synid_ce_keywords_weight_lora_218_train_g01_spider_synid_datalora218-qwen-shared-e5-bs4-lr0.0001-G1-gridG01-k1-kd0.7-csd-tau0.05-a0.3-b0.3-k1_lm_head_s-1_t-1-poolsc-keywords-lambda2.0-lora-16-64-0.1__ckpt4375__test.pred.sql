sorted singer by age ASC: singer(name , country , age)
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
youngest_singer_name = min(song_name for singer_id in singer where age = (SELECT age FROM singer ORDER BY age ASC LIMIT 1)) youngest_singer_song_name = min(song_name for singer_id in singer where age = (SELECT age FROM singer ORDER BY age ASC LIMIT 1))
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
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
country_from_40 = country WHERE age > 40 AND country FROM 30 TO 40(country)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
count(*) , T1.theme , T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
{ "sql": "SELECT T3.Name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year = 2014"} {"concert_name": "2014", "song_name": "2014"}
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE weight > 10
count(*) OVER (SELECT pet_type FROM pets WHERE weight > 10)
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM pets)
min(weight) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T1.pet_age = (SELECT min(pet_age) FROM Pets)
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 GROUP BY T1.StuID HAVING count(*) >= 1
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' GROUP BY T1.stuid HAVING count(*) >= 1 AND count(*) <= 50
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" OR T2.pettype = \"Dog\"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype IN ('Cat', 'Dog')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Cat\" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Dog\"
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM has_pet WHERE pettype = 'Cat' )
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\" )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Cat\")
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "dog" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat"
youngest_pet = min(PetType , pet_age) . weight
Youngest_pet_weight = (SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1)
SELECT petid , weight FROM Pets WHERE petage > 1;
SELECT petid , weight FROM Pets WHERE pet_age > 1;
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT DISTINCT T2.maker FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT T1Maker , T2.Year FROM car_makers AS T1Maker JOIN cars_data AS T2 ON T1Maker.id = T2.makeId ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980 GROUP BY T2.Model HAVING count(*) > 1
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.year > 1980;
Most car makers: car_makers.countryname FROM car_makers GROUP BY car_makers.countryname ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY T2.Country DESC LIMIT 1;
SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
{ "sql": "SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Model = 'Amc Hornet Sportabout' AND T1.Accelerate LIKE '%sport%'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'Europe' AND T1.countryname = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.continent = 'Europe' AND T1.country = 'France'
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'USA'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1 maker = T2.id JOIN countries AS T3 ON T2.countryid = T3.countryid WHERE T3.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = '4'
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND makeid IN (SELECT makeid FROM car_makers WHERE maker = 'CYL')
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryId IN ( SELECT T2.Country FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId GROUP BY T2.Country HAVING COUNT(*) > 1 )
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IN (SELECT T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country) GROUP BY T1.CountryId HAVING COUNT(*) > 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
model_list ORDER BY MPG DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.MPG = (SELECT max(MPG) FROM car_names)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 GROUP BY id HAVING avg(Horsepower) = 0
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = 'Volvo'
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
YEAR = 1980 SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T2.makeid = T3.id WHERE T3.country = 'American Motor Company'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id WHERE t2.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'USA' OR T1.weight > 3500
SELECT YEAR FROM cars_data WHERE Weight >= 3000 AND Weight <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Maker = 'Volvo')
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker IN (SELECT id FROM car_makers GROUP BY id HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE maker > 2
SELECT model FROM car_names WHERE makeid IN (SELECT makid FROM car_makers WHERE country = 'CYL') GROUP BY model ORDER BY count(*) DESC LIMIT 1 HAVING max(Horsepower) >= 4
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
model_list WHERE weight < 3500 AND maker NOT IN (SELECT id FROM car_makers WHERE country = 'Ford Motor Company')
model_list WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'Ford'
```sql SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Maker = 'fiat' ```
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Maker = 'FIAT' {}
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT T1.airportcode , T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.sourceairport = 'Anthony' AND T1.countryabbreviation = 'USA'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Airline = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT airportname FROM airports WHERE city = 'Akosari' AND country = 'Australia'
SELECT airportname FROM airports WHERE city = 'Akoya' AND countryabbreviation = 'AKO'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport = 'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3.country = 'Australia'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3 airportname = 'Ashley' AND T1.sourceairport = T3.airportcode WHERE T2.country = 'United Kingdom' AND T3 countryabbreviation = 'UK'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = \"Jetblue Airways\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T2.country = 'USA' AND T3.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T1.sourceairport = T1.destairport AND T2.country = 'United States' AND T1.destination = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T3.uid = T1.airline WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T1FlightNo = 'UAA'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.airline = 'United Airlines' AND T2.countryabbreviation = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destination = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "United States" AND T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = "Aberdeen"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE city = 'AHD')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'USA' AND T4.destination = 'AHD')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD' AND T2.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE country = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode WHERE T4.country = 'United States') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.srcairport = T4.airportcode WHERE T4.country = 'United States') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'APG'
SELECT flightno FROM flights WHERE airline = \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
APG = "Airbus" FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia')
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' OR T2.country = 'Australia'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode OR T2.country = 'United States' AND T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN ( SELECT destairport , sourceairport FROM flights ) UNION SELECT airportname FROM airports WHERE airportcode NOT IN ( SELECT sourceairport , destairport FROM flights )
sorted_employee_names = sorted(employee.employee_id, name)
SELECT name FROM employee ORDER BY age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
sorted_shops = sorted(shops , byshops.shop_id DESC) order by shops.number_products ASC; shops.order_by(shops.shop_id DESC)
sorted_shops = sorted(shops , 1 , 'desc' ) for shop in sorted_shops : print (shop.name , shop.location , shop.district)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY sum(T2.bonus) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
district1 = (select district FROM shop WHERE number_products < 3000 INTERSECT select district FROM shop WHERE number_products > 10000)
districts = (name for name in shop.districts where number_products < 3000 and number_products > 10000) & (name for name in shop.districts where number_products < 3000 and number_products > 10000) district = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district district = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district district = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) & (name for name in shop.districts WHERE number_products < 3000 AND number_products > 10000) district districts = (name for name in shop.districts
sorted(teacher.age) : teacher.name
sorted_name = sorted(teacher.name for teacher in teacher.order_by('age'))
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
teacher.name NOT IN (SELECT name FROM teacher WHERE Hometown = 'Little Lever Urban District')
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT teacher_name FROM teacher WHERE age IN (32 , 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown HAVING COUNT(*) > 1
SELECT count(*) , T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.Course_ID = 38
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age BETWEEN 0 AND 29;
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 'student' AND AGE < 4.0
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN ( SELECT museum_id FROM visit )
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit) ORDER BY T1.num_ticket DESC LIMIT 1;
total_spent = sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 2;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
2013 MATCHES + 2016 MATCHES = 4015
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T2.tourney_name = "Australian Open"
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.rank_points DESC LIMIT 1;
SELECT T1.match_num , T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 60;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.birth_date LIMIT 3;
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T2.age ASC LIMIT 3;
SELECT count(*) FROM (SELECT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.winner_hand = \"left\") WHERE count(*) = 1
SELECT count(*) FROM players WHERE hand = 'left' AND YEAR IN (SELECT YEAR FROM rankings WHERE ranking_points > 100) AND tourney_name = 'WTA Championships'
count(*) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.ship_type = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
most_injured_ship = (SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.inj) DESC LIMIT 1)
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T2.name = 'HMS Atalanta'
no_results_found"
Transcript: The math is an important subject. It helps us understand the world around us and enables us to make sense of it. Without math, we wouldn't have the ability to solve complex problems or appreciate the beauty of nature. It's like the foundation upon which all other subjects build. So, let's keep up with our math skills and never forget the importance of learning!
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'North Carolina'
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN degree_programs AS T3 ON T2.student_id = T3.student_id WHERE T3.department_id IN (SELECT department_id FROM degree_programs)
SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 = \"Timmothy Ward\"
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id IN (SELECT current_address_id FROM students WHERE degree_program_id = 1) INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.current_address_id IN (SELECT current_address_id FROM students WHERE degree_program_id = 2)
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Masters' UNION SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors') INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Masters' UNION SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors')
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = '09700166582'
SELECT title FROM cartoon ORDER BY title ASC LIMIT 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT title FROM cartoon ORDER BY title ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.content = 'Cartoon' AND T1.Directed_by = 'Ben Jones'
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T2.directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN cartoone AS T2 ON T1.id = T2.cartoone WHERE T2.Written_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC
SELECT T1.Title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.Channel = T2.id WHERE T2.id IN ( SELECT T1.Channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = 'Ben Jones' OR T1.Directed_by = 'Brandon Vietti')
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT CONTENT FROM TV_CHANNEL WHERE CONTENT LIKE "%Sky Radio%"
SELECT Content FROM TV_channel WHERE Content = 'Sky Radio'
SELECT package_option FROM TV_channel WHERE channel = ''Sky Radio''
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'english'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'english'
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = 'The Rise of the Blue Beetle'
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel = T2.id WHERE T2.channel = ""Sky Radio""
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = 'Sky Radio' AND T2.package_option = 'Pay per view PPV'
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
A Love of a Lifetime (1962) aired on 15 December 1962.
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = 'A Love of a Lifetime'
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = """"A Love of a Lifetime"""""
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "6735" AND T2.rating = "18+49" AND T2.title = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = """"Sky Radio"""""
SELECT T2.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T1.series_name = 'Sky Radio'
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1;
SELECT Package_Option , Series_name FROM TV_Channel WHERE Hight_definition_TV = 'HD'
SELECT Package_Option , T2.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = 'HDTV'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Todd Casey" AND T2.Title = "Cartoon"
Todd Casey wrote the cartoon titled "The Great Mouse Show" directed by John Travolta. The country associated with this cartoon channel is "USA". Therefore, the country that has cartoons on TV that Todd Casey writes is USA.
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE written_by = \"Todd Casey\" )
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE written_by = \"Todd Casey\")
SELECT T2.series_name , T2.Country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' AND T1.directed_by = 'Michael Chang'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language <> 'english'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE LANGUAGE <> 'english'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2;
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
package_option = (SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' ) )
SELECT package_option FROM TV_channel WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.directed_by = 'Ben Jones' )
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
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes WHERE state = "NY" OR state = "CA"
SELECT T1.phone_number , T1.state , T1.created FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.tabist_name = \"Tabatha Gehling\"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2contestant_number IN ( SELECT T3.contestant_number FROM CONTESTANTS AS T3 JOIN VOTES AS T4 ON T3.contestant_number = T4.contestant_number WHERE T4.vote_id IN ( SELECT vote_id FROM VOTES WHERE contestant_name = \"Tabatha Gehling\" INTERSECT SELECT vote_id FROM VOTES WHERE contestant_name = \"Kelly Clauss\" ) )
SELECT name FROM country WHERE indeyyear > 1950
SELECT name FROM country WHERE indeyyear > 1950
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
Total Surface Area = 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.69_surfacearea + 3018457.
Caribbean Surface Area: 304 million km²
Anguilla is located in the Caribbean continent.
Anguilla belongs to the continent of Europe.
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Kabul'
Kabul is located in the Afghanistan region. So the region is "Afghanistan".
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode = (SELECT Code FROM country WHERE Name = "Aruba") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America" AND Name = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Continent = "South America"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
Angola is located in the African continent with a population of 13 million.
SELECT avg(lifeexpectancy) FROM country WHERE continent = \"Central Africa\"
Central African Republic has 148 million population. Average life expectancy of Central African Republic = 70.5 years.
SELECT name FROM country WHERE lifeexpectancy IN (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = \"Asia\" ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
Asia = {'Population': 14300000} maxgnp = max(country.GNPDistrict) # largest gnp among all countries maxpopulation = max(city.Population) # largest population among all cities maxgnp = max(maxgnp , maxpopulation ) # find max gnpd among all populations maxpopulation = max(city.Population) # largest population among all cities maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , maxpopulation ) # find max gnp among all gnpd maxgnp = max(maxgnp , max
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
Asia + Europe = 3 * 4 * 500000 = 60000000 SurfaceArea
Total surface area covered by countries in Asia or Europe = sum(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe')
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE countrycode = 'NL' AND district = 'Gelderland'
SELECT avg(GNP) , sum(Population) FROM country WHERE Region = \"United States\"
SELECT avg(GNP) , sum(Population) FROM country WHERE Code = (SELECT Code FROM country WHERE Name = \"United States\")
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "Afghanistan" AND isofficial = 1
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Name = "Afghanistan") AND IsOfficial != 0
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1;
mostdiversecontinent = (SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1)
import pandas as pd from collections import Counter # load data data = countrylanguage.groupby('CountryCode')['Language'].count().sort_values(ascending=False).head(1) # convert to dataframe df = pd.DataFrame(data) print(df)
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"English\" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"French\"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = "Chinese"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'English' UNION SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Dutch' UNION SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Spanish'
SELECT language FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE continent = \"Asia\") GROUP BY language ORDER BY count(*) DESC LIMIT 1;
SELECT t1.Language FROM countrylanguage AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code WHERE t2.Continent = \"Asia\" GROUP BY t1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE Percentage = (SELECT max(Percentage) FROM countrylanguage) GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.population > (SELECT max(population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.language = "English")
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 'Yes'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language = 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = \"Beatrix\" AND T2.IsOfficial = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = \"Beatrix\" AND T2.Percentage = 1.0
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IncorporationYear < 1930 GROUP BY T2.CountryCode HAVING count(*) > 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE indayyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = "Asia")
SELECT name FROM country WHERE population > (SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population ASC LIMIT 1)
SELECT name FROM country WHERE population > ( SELECT population FROM country WHERE continent = \"Africa\" ORDER BY population DESC LIMIT 1 )
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT code FROM countrylanguage WHERE language = 'English' INTERSECT SELECT code FROM countrylanguage WHERE language = 'Republic')
SELECT code FROM country WHERE code2 != 'English' EXCEPT SELECT code FROM countrylanguage WHERE Language = 'English' GROUP BY code HAVING count(*) < 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' EXCEPT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.isofficial = 'Yes' INTERSECT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Europe' AND T2.isofficial = 'No'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.population > 1000000 AND T2.GovernmentForm = 'Chinese' INTERSECT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.population > 1000000 AND T2.GovernmentForm = 'Chinese'
Distinct T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = \"Asia\" INTERSECT SELECT T3.Name FROM city AS T3 JOIN countrylanguage AS T4 ON T3.CountryCode = T4.CountryCode WHERE T4.Language = \"Chinese\"
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT population , name , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 100
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 100
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM city ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
Asia = {"Count" : 0} # This is an assumption based on the continent name "Asia". In reality, there might be more or fewer countries depending on the actual continent definition.
Asia = "Asia" SELECT count(*) FROM country WHERE continent = \"Asia\"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT name FROM country WHERE population = 80000 AND continent = "Europe"
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = \"North America\" AND population > 3000
Noth America is a continent which has a surface area of 168454 square miles. Therefore, no country in this continent can have a population larger than 3000 square miles. So there are 0 rows in this table. The total population and average of no country in Noth America will always be 0.
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT T1.Language , T1.Percetage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Population > (SELECT max(Population) FROM country) GROUP BY T1.CountryCode
SELECT T1.code , T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT sum(t1.population) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = \"Spanish\" GROUP BY t2.countrycode ORDER BY avg(t2.percentage) DESC LIMIT 1;
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = \"Spanish\" AND T2.percentage > 50%
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > (SELECT percentage FROM countrylanguage GROUP BY countrycode HAVING percentage > 0)
youngest_to_oldest_conductors = conductor.OrderBy(Name)
sorted_by_age(conductor) ORDER BY age ASC
select name FROM conductor WHERE nationality <> 'USA'
conductorNames = [name] WHERE Nationality != 'USA' CONDUCTORS AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Nationality != 'USA' CONDUCTORS AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Nationality != 'USA'
ortchestre_companies_desc = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
ortchaos = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER ASC)
If """"CD"""" or """"DVD"""" is present in the Orchestra column, count it. Otherwise, return 0. If there are no records, return 0 as well. If neither """"CD"""" nor """"DVD"""" is present, return 0 as well.
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT T1.grade FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1 AND T1.name = "Kyle"
Highschooler(name) WHERE grade = 10
ID,name SELECT name FROM highschooler WHERE grade = 10
ID: 1
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING count(*) > 100
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR;
SELECT YEAR FROM (SELECT YEAR , count(*) FROM Highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1)
Kyle = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 2 Kyle = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 1 AND T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle')
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) != 0
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0.0
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.id NOT IN (SELECT T3.id FROM friend AS T3 JOIN highschooler AS T4 ON T3.friend_id = T4.id)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"IN\"
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'IN' OR COUNT(*) > 2
SELECT T2.name FROM dogs AS T2 JOIN treatments AS T1 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T3.owner_id = T1.owner_id WHERE T1.cost_of_treatment > 1000 GROUP BY T2.name HAVING count(*) > 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.role_code , T2.id FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.role_code , T2.treatment_type_code FROM owners AS T1 JOIN treats AS T2 ON T1.owner_id = T2.professional_id GROUP BY T2.treatment_type_code HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY T2.cost_of_treatment LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1;
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.date_adopted) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments) ORDER BY T3.first_name , T3.last_name ASC
SELECT T3.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T1.state = 'Virginia' AND T1.city = 'Richmond'
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1 OFFSET 0;
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM professionals WHERE state LIKE "Hawaii" OR state LIKE "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
Ascending Order of Wealth: SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT DISTINCT citizenship , max(Net_Worth_Millions) FROM singer WHERE citizenship != \"Nationality of Country\"
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
before_1945 = (SELECT Citizenship FROM singer WHERE Birth_Year < 1945) INTERSECT AFTER_1955 = (SELECT Citizenship FROM singer WHERE Birth_Year > 1955)
singer(singer_id) JOIN song ON singer.singer_id = song.song_id WHERE singer.birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House' OR property_type_code = 'Apartment'
