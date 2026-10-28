SELECT name , country , age FROM singer ORDER BY age ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country HAVING count(*) > 1
SELECT count(*) , country FROM singer GROUP BY country HAVING count(*) > 100
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer) ORDER BY song_name ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR BETWEEN 2014 AND 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 EXCEPT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%' OR song_name LIKE '%hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015;
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015 {}
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT capacity FROM stadium ORDER BY capacity DESC LIMIT 1)
count(*) WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10 lbs
SELECT t2.weight FROM pets AS t1 JOIN has_pet AS t2 ON t1.petid = t2.petid WHERE t1.petage = (SELECT min(petage) FROM pets) ORDER BY t1.petage ASC LIMIT 1;
SELECT min(weight) FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets GROUP BY pet_age ORDER BY pet_age ASC LIMIT 1)
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20 GROUP BY T2.stuid HAVING count(*) > 1
SELECT count(*) FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.age > 20 GROUP BY t2.stuid HAVING count(*) >= 1
SELECT count(*) FROM student AS t1 JOIN has_pet AS t2 ON t1.stuid = t2.stuid WHERE t1.sex = 'F' AND t2.petid IN (SELECT petid FROM pets WHERE pettype = 'Dog')
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.petid IN (SELECT petid FROM pets WHERE pettype = 'Dog')
SELECT fname FROM student WHERE StuID IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'Cat' UNION SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'Dog') ;
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.lname , T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' INTERSECT SELECT T1.lname , T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = "Cat" AND T2.pettype = "Dog"
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet )
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet )
SELECT StuID FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat'
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_pet) EXCEPT SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_pet WHERE pettype = \"Cat\")
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1 OFFSET 0 ;
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1;
pets > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.fullname , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model WHERE T2.year = 1970;
SELECT DISTINCT T2.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.year = 1970.
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T2.year > 1980;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.make_id WHERE T1.year > 1980;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country ORDER BY T2.Country DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T2.Country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.maker , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'France')
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'Europe')
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'USA')
SELECT count(*) FROM car_names AS T1 JOIN car_makers AS T2 ON T1 maker = T2.id WHERE T2.country = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND model = "CYL"
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\" GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\" GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID = T2.Country GROUP BY T1.countryname HAVING COUNT(*) >= 3 INTERSECT SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryID = T2.Country GROUP BY T1.countryname HAVING COUNT(*) <= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = 'Europe' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY sum(T2.Mpg) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.MPG = (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T2.Maker = 'Volvo'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.make = 'Vollvo'
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980;
1980 == YEAR(car_names.year)
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T2.maker WHERE T3.countryname = 'American Motor Company'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.countryname = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.country = 'General Motors' OR T1.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.maker = T2.model WHERE T2.make = 'General Motors' OR T2.weight > 3500 LBS
between 3000 AND 4000 YEAR = cars_data.year BETWEEN 3000 AND 4000
between 3000 AND 4000 YEAR = cars_data.year BETWEEN 3000 AND 4000
SELECT min(Cylinders) FROM cars_data WHERE Maker = 'Volvo'
SELECT Cylinders FROM cars_data WHERE MODEL = 'Volvo' ORDER BY Accelerate LIMIT 1;
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) >= 3;
SELECT count(*) FROM car_makers WHERE maker IN (SELECT id FROM car_makers GROUP BY id HAVING count(*) > 2)
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1;
max(mpg) = (SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 8 AND T1.year < 1980)
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.make = 'Ford Motor Company'
weights = cars_data.weight filter1 = weights > 3500 filter2 = filter1.model_list.maker != 'Ford Motor Company' different_models = model_list.different_models(filter2)
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.fullname = 'fiat' UNION SELECT countryid , countryname FROM countries GROUP BY countryid HAVING count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.Make WHERE T2.Make = 'fiat'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
"JETBLY"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE countryabbreviation = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Airline = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT T1.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = 'AKO'
SELECT T1.Aircraft FROM airlines AS T1 JOIN flights AS T2 ON T1. Aircraft = T2.SourceAirport WHERE T1.Aircraft = \"AKO\"
SELECT AirportName FROM airports WHERE City LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport = 'ATA'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'ATO')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE Airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'USA') AND destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'United Airlines')
SELECT count(*) FROM flights WHERE Airline = 'United Airlines' AND DESTAirport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T2.country = 'United Airlines' AND T3.abbreviation = 'United Airlines' AND T1.sourceairport = T2.airportcode AND T1.destairport = T2.airportcode AHD
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Aberdeen') AND airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United Airlines' AND T2.countryabbreviation = 'ABERDEATH'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.AirportCode FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.sourceairport WHERE T4.destairport = "APG") INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.AirportCode FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.sourceairport WHERE T4.destairport = "CVO")
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airlines AS T3 JOIN flights AS T4 ON T3.uid = T4.sourceairport WHERE T4.destairport IN (SELECT T5.airportcode FROM airlines AS T5 JOIN flights AS T6 ON T5.uid = T6.sourceairport WHERE T6.destairport IN (SELECT T7.airportcode FROM airlines AS T7 JOIN flights AS T8 ON T7.uid = T8.sourceairport WHERE T8.destairport IN (SELECT T9.airportcode FROM airlines AS T9 JOIN flights AS T10 ON T9.uid = T10.sourceairport WHERE T10.destairport IN (SELECT T11.airportcode FROM airlines AS T11 JOIN flights AS T12 ON T11.uid = T12.sourceairport WHERE T12.destairport IN (SELECT T13.airportcode FROM airlines AS T13 JOIN flights AS T14 ON T13.uid = T14.sourceairport WHERE T14.destairport IN (SELECT T15.airportcode FROM airlines AS T15 JOIN flights AS T16 ON T15.uid = T16.sourceairport WHERE T16.destairport IN (SELECT T17.airportcode FROM airlines AS T17 JOIN flights AS T18 ON T17.uid = T18.sourceairport WHERE T18.destairport IN (SELECT T19.airportcode FROM airlines AS T19 JOIN flights AS T20 ON T19.uid = T20.sourceairport WHERE T20.destairport IN (SELECT T21.airportcode FROM airlines AS T21 JOIN flights AS T22 ON T21.uid = T22.sourceairport WHERE T22.destairport IN (SELECT T23.airportcode FROM airlines AS T23 JOIN flights AS T24 ON T23.uid = T24.sourceairport WHERE T24.destairport IN (SELECT T25.airportcode FROM airlines AS T25 JOIN flights AS T26 ON T25.uid = T26.sourceairport WHERE T26.destairport IN (SELECT T27.airportcode FROM airlines AS T27 JOIN flights AS T28 ON T27.uid = T28.sourceairport WHERE T28.destairport IN (SELECT T29.airportcode FROM airlines AS T30 JOIN flights AS T31 ON T30.uid = T31.sourceairport WHERE T31.destairport IN (SELECT T32.airportcode FROM airlines AS T32 JOIN flights AS T33 ON T32.uid = T33.sourceairport WHERE T33.destairport IN (SELECT T34.airportcode FROM airlines AS T34 JOIN flights AS T35 ON T34.uid = T35.sourceairport WHERE T35.destairport IN (SELECT T36.airportcode FROM airlines AS T36 JOIN flights AS T37 ON T36.uid = T37.sourceairport WHERE T37.destairport IN (SELECT T38.airportcode FROM airlines AS T38 JOIN flights AS T39 ON T38.uid = T39.sourceairport WHERE T39.destairport IN (SELECT T40.airportcode FROM airlines AS T40 JOIN flights AS T41 ON T40.uid = T41.sourceairport WHERE T41.destairport IN (SELECT T42.airportcode FROM airlines AS T42 JOIN flights AS T43 ON T4
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 WHERE T3.countryabbreviation = 'CVO') EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.destinationairport WHERE T2.destairport IN (SELECT T3.airportcode FROM airports AS T3 WHERE T3.countryabbreviation = 'APG')
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE SourceAirport = \"APG\"
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen')
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'Aberdeen')
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.destairport WHERE T1.city = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "Aberdeen" OR airportname = "Abilene")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen' UNION SELECT airportcode FROM airports WHERE airportname = 'Abilene')
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
sorted(employee.Name)
sorted(employee.Name)
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID WHERE T2.Year_awarded = (SELECT max(YEAR_awarded) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1;
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
district1 = (SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000)
SELECT district FROM shop WHERE number_products < 3000 AND number_products > 10000;
sorted(teacher.age) teacher.name
sorted(teacher.age) Teachers_names = (SELECT name FROM teacher ORDER BY age DESC LIMIT 100)
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
youngest_teaching_hometown = (SELECT Hometown FROM teacher ORDER BY Age LIMIT 1)
SELECT Hometown FROM teacher ORDER BY Age DESC LIMIT 1;
teachers_count = (SELECT count(*) , Hometown FROM teacher GROUP BY Hometown)
count(*) AS T1 FROM teacher GROUP BY T1.Hometown;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID IN (SELECT Course_ID FROM course WHERE Title = \"Math\")
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.course_id IN (SELECT course_id FROM course WHERE title = 'Math')
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30.0
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP ASC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != 'LV 4'
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009.0
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit) ORDER BY total_spent DESC LIMIT 1;
SELECT sum(T1.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code LIKE 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 11;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016 {}
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016;
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN matches AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN matches AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
sorted_players = sorted(players, key=lambda x: x.birth_date) ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T1.player_id = T3.winner_id GROUP BY T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T2.rank_points DESC LIMIT 1;
SELECT T1.winner_name , T2.losser_name FROM MATCH AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT T1.first_name , T1.last_name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.score LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.age LIMIT 3;
SELECT count(*) FROM ( SELECT DISTINCT T1.winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' INTERSECT SELECT DISTINCT T1.winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'right' )
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
count(*) - SELECT count(*) FROM ship WHERE ship_type = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
Let us assume the battle with lost in battle 1234567890 is between HMS Atalanta and Lettice. SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' AND T2.ship_type = 'HMS' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel')
SELECT course_description FROM courses WHERE course_name = "Math"
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = 'Port Chelsea'
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE country = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id UNION SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id != null;
SELECT last_name FROM students WHERE city = 'North Carolina' AND student_id NOT IN (SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id)
"SELECT T1.cell_mobile_number FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.line_1 = \"Timmothy\" AND T2.line_2 = \"Ward\";"
SELECT cell_mobile_number FROM students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\"
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Master' AND student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelor') INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 'Bachelor' AND student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 'Master')
SELECT semester_id FROM student_enrolment WHERE degree_program_id = (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Masters' UNION SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelors') INTERSECT SELECT semester_id FROM student_enrolment WHERE degree_program_id = (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Masters' UNION SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Bachelors')
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title ASC
sorted_cartoon_title = sorted(Cartoon.Title)
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = \"Ben Jones\"
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.Written_by = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN cartoony AS T2 ON T1.Written_by = T2.Written_by WHERE T2.Directed_by = 'Joseph Kuh'
SELECT title , directed_by FROM cartoon ORDER BY air_date
SELECT title , directed_by FROM cartoon ORDER BY air_date ASC
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel WHERE T2.Written_by = "Ben Jones" OR T2.Written_by = "Brandon Vietti"
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.directed_by = \"Ben Jones\" OR T2.directed_by = \"Brandon Vietti\"
SELECT Country , COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT CONTENT FROM TV_CHANNEL WHERE channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Series_name = 'Sky Radio'
SELECT Package_Option FROM TV_CHANNEL WHERE Series = "Sky Radio"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_channel WHERE LANGUAGE = 'English'
{"sql": "SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Title = 'The Rise of the Blue Beetle!'}
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = 'Sky Radio'
SELECT Air_Date FROM TV_series WHERE Title LIKE "%A Love of a Lifetime%"
A Love of a Lifetime Air_Date = 1969-04-27
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = '18 49 RATING' AND T2.Title = ''""A Love of a Lifetime""
SELECT series_name FROM TV_series WHERE title LIKE '%A Love of a Lifetime%'
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = ""''Sky Radio''"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.channel WHERE T2.series_name = 'Sky Radio'
cartoon_count = count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id GROUP BY directed_by HAVING count(*) >= 1000
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT Production_code , Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT Package_Option , Series_name FROM TV_Channel WHERE Package_Option = 'HD'
SELECT T1.package_option , T2.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Hight_definition_TV = 'Yes'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = "Todd Casey"
Todd Casey wrote cartoon titled "Toy Story" directed by John Williams. The channel that produced this cartoon would be part of TV_Channel id 370. Therefore, the country associated with this channel is Canada (Canada).
SELECT country FROM TV_CHANNEL WHERE id NOT IN ( SELECT channel FROM cartoon )
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.title = 'Todd Casey' )
channels_to_search_for = [T1.id] # This should be the id of the TV_channel which plays some cartoons directed by Ben Jones and Michael Chang cartoon_ids_to_search_for = [T2.id] # This should be the id of the TV_channel which plays some cartoons directed by Ben Jones and Michael Chang tv_channels_to_search_for = [T1.id] # This should be the id of the TV_channel which plays some cartoons directed by Ben Jones and Michael Chang cartoon_ids_to_search_for = [T2.id] # This should be the id of the TV_channel which plays some cartoons directed by Ben Jones and Michael Chang # Find TV_channel_id of TV_channel which plays some cartoons directed by Ben Jones and Michael Chang tv_channels_to_search_for = [T1.id] # This should be the id of the TV_channel which plays some cartoons directed by Ben Jones and Michael Chang cartoon_ids_to_search_for = [T2.id] # This should be the id of the TV_channel which plays some cartoons directed by Ben Jones and Michael Chang # Find series_name and country of TV_channel which plays some cartoons directed by Ben Jones and Michael Chang series_name = T1.series_name country = T1.country print(series_name , country)
SELECT T3.series_name , T3.Country FROM TV_channel AS T3 JOIN cartoon AS T1 ON T3.id = T1.channel WHERE T1.Directed_by = "Ben Jones" AND T1.Directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language <> 'English'
SELECT id FROM TV_CHANNEL WHERE country IN (SELECT count(*) FROM TV_CHANNEL GROUP BY country HAVING count(*) > 2)
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones')
SELECT id FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones' )
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones')
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT channel FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200.0
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality != \"Russia\"
SELECT created FROM VOTES WHERE state = 'CA' ORDER BY created DESC LIMIT 1;
SELECT count(*) FROM VOTES WHERE state IN ('NY', 'CA')
SELECT T1.phone_number , T1.state , T1.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_name = \"Tabatha Gehling\" INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_name = \"Kelly Clauss\"
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT Name FROM country WHERE IndepYear > 1950;
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
Total Surface Area = 301 * 1000000 = 301000000 SurfaceArea Caribbean = 301000000 Total Surface Area Caribbean = 301000000 SurfaceArea Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000 Caribbean = 301000000
Total Surface Area of Carribean = (SurfaceArea of Carribean + SurfaceArea of Africa)
Anguilla.continent == "Antarctica"
Anguilla.continent = "Antarctica"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = 'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = \"Aruba\" GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT Population , LifeExpectancy FROM country WHERE CountryCode = "BR"
SELECT T1.region , T1.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = 'Angola'
SELECT T1.Region , T1.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Central Africa'
SELECT Name FROM country WHERE LifeExpectancy IN (SELECT min(LifeExpectancy) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = "Asia" ORDER BY LifeExpectancy ASC LIMIT 1
Asia.population = sum(t1.population) Asia.GNP.max = max(t2.gnpu)
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE GovernmentForm = 'Republic' AND Continent = 'African'
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Republic' AND Continent = 'Africa'
Total = (SurfaceArea(Asia) + SurfaceArea(Europe))
total_surfacearea = sum(country.surfacearea) AS total_surfacearea SELECT total_surfacearea FROM country WHERE continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE district = "G Gelderland"
SELECT sum(Population) FROM city WHERE District = \"Gelderland\"
SELECT avg(GNP) , sum(Population) FROM country WHERE CountryCode IN (SELECT code FROM country WHERE continent = 'United States')
SELECT avg(GNP) , sum(Population) FROM country WHERE CountryCode IN ( SELECT CountryCode FROM country WHERE Name = 'United States' )
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM city WHERE Name = "Aruba")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Afghanistan' AND T2.isofficial = 1
SELECT count(*) FROM countrylanguage WHERE language IN (SELECT Language FROM country WHERE Name = "Afghanistan")
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'English' AND T2.IsOfficial = True INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = 'French' AND T2.IsOfficial = True
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'Yes' AND T2.Language = 'French'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Chinese'
SELECT T3.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode JOIN language AS T3 ON T2.Language = T3.Language WHERE T3.Language = "English" OR T3.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT CountryCode FROM country WHERE Continent = \"Asia\") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T2.CountryCode ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.name ORDER BY population DESC LIMIT 1;
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(population) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = \"Beatrix\" AND T1.IsOfficial = 1
SELECT T3.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T2.CountryCode = T3.Code WHERE T1.Name = T3.LocalName AND T2.Language = 'Beatrix' AND T2.IsOfficial = 'Yes'
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IncorporatedBefore = 1930;
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.indepyear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'African'
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Asia' AND region = 'Africa')
SELECT name FROM country WHERE population > (SELECT min(population) FROM country WHERE continent = 'Asia' INTERSECT SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code2 FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != \"English\"
SELECT code2 FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT code FROM country WHERE code2 NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English") EXCEPT SELECT code FROM country WHERE governmentform = "Republic"
SELECT code FROM country WHERE code2 != 'USA' AND code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English" AND T2.IsOfficial = 0
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.language = 'Chinese'
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Chinese" INTERSECT SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Asia"
SELECT Name , IndepYear , SurfaceArea FROM country ORDER BY IndepYear LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , population , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 0
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > 0
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3;
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE population = 80000 AND continent = 'Europe'
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000
SELECT sum(population) , avg(population) FROM country WHERE surfacearea > 3000 AND continent = 'Noth America'
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000;
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT Language , max(Percentage) FROM countrylanguage GROUP BY Language
SELECT T1.code , T2.language , max(T2.percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code
SELECT sum(Percentage) FROM countrylanguage WHERE Language = 'Spanish' ORDER BY Percentage DESC LIMIT 1;
SELECT count(DISTINCT T1.CountryCode) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'Spanish' GROUP BY T1.CountryCode HAVING sum(T2.Percentage) >= 50%
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.Code HAVING sum(T2.Percentage) >= 50
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1000000
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor WHERE nationality <> 'USA'
SELECT name FROM conductor WHERE Nationality <> 'USA'
descending ORDER BY YEAR_OF_FOUNDER ASC OF orchestra
sorted_by_year_of_foundation(orchestra.orchestra_id) AS record_company ASC
SELECT count(*) FROM orchestra WHERE Record_Company = """"CD"""" OR Record_Company = """"DVD"""""
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM Highschooler WHERE grade = 'high' GROUP BY grade HAVING count(*) >= 100
count(*) AS T1 JOIN Highschooler ON T1.id = T2.id WHERE T2.grade = 'high' GROUP BY T1.year;
SELECT YEAR FROM highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT T3.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id JOIN Like AS T3 ON T2.liked_id = T3.liked_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM (SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle' UNION SELECT T1.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle')
SELECT count(*) FROM LIKE AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM Likes AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.student_id HAVING count(*) > 0.5
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.friend_id HAVING avg(T2.student_id) > 1
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana'
SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professionals AS T1 JOIN Owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = 'Indiana' UNION SELECT T1.professional_id , T2.last_name , T2.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T3.name FROM treatments AS T1 JOIN dogs AS T3 ON T1.dog_id = T3.dog_id JOIN owners AS T2 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000;
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.first_name , T1.last_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.role_code , T2.treatment_id FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.treatment_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1;
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charges) DESC LIMIT 1
SELECT T1.id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM treatments AS T1 JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia' AND T2.name != ''
SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM Professionals WHERE state IN ("Hawaii", "Wisconsin")
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(date_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Yes'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Yes'
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship <> "French"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
Count(*) AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Citizenship HAVING COUNT(*) > 0
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Citizenship , max(Net_Worth_Millions) FROM singer AS T1 GROUP BY T1.Citizenship HAVING max(Net_Worth_Millions) != 0
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country HAVING max(Net_Worth_Millions) != 0
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 1944 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1954)
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 1944 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1954;
SELECT property_name FROM Properties WHERE room_count > 1 AND (property_type_code = "House" OR property_type_code = "Apartment")
