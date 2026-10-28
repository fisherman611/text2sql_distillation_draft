SELECT name , country FROM singer ORDER BY age DESC LIMIT 1000;
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country ;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer) ORDER BY song_name ASC;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING max(T2.year) > 2013 ORDER BY max(T2.year) DESC LIMIT 1;
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id
SELECT country FROM singer WHERE age > 40 AND age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
Count(*) , T1.name AS name , count(*) AS count FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T2.concert_id = T1.concert_id WHERE T1.year = 2014;
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014;
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE pet_age > 10;
SELECT count(*) FROM Pets WHERE pet_age > 10.0
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM pets) AND pet_type = 'youngest'
Youngest Dog Weigh: pets.weight WHERE pet_age = (SELECT min(pet_age) FROM pets)
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F' AND T2.pettype = 'Dog'
SELECT count(*) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = 'Dog'
SELECT fname FROM student WHERE StuID IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog')
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat' INTERSECT SELECT T1.fname , T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat' INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Dog'
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet WHERE pet_type = 'Cat' )
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet WHERE pet_type = 'Cat' )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = 'Cat')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Cat')
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Cat'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Dog' EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat'
Youngest pet's pet_type and weight: petspetype , petweight WHERE petage = (SELECT min(petage) FROM has_pet)
SELECT pet_type , pet_age , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1;
SELECT pet_id , weight FROM Pets WHERE pet_age > 1;
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pet_age = 3;
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 1000
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970;
SELECT DISTINCT T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year = 1970
SELECT T1.maker , T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Year > 1980;
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.id WHERE T3.year > 1980;
Most car makers: SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
Most car makers: SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T2.maker , T2.fullname , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T2.maker , T2.fullname HAVING count(*) > 0
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT Accelerate FROM cars_data WHERE Model = "amc hornet sportabout"
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE countryname = 'France')
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = \"France\")
SELECT count(*) FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.country WHERE t2.continent = 'USA'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1 maker = t2.id JOIN countries AS t3 ON t2.countryid = t3.countryid WHERE t3.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = '4' AND YEAR = 2018
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8 AND make = 'CYL'
SELECT T1.CountryName , T1.Country FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\" GROUP BY T1.CountryId HAVING COUNT(*) > 1
SELECT T1.CountryName , T1.CountryID FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\" AND T1.CountryName IN (SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\" GROUP BY T1.CountryName HAVING COUNT(*) > 1)
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = \"Europe\" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = 'Europe' GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid GROUP BY T1.model ORDER BY sum(T2.mpg) DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model GROUP BY T2.Model ORDER BY sum(T1.MPG) DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1979.0;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.makeid WHERE T2.Fullname = \"Volvo\"
SELECT avg(edispl) FROM cars_data WHERE make = 'Volvo'
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'American Motor Company'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'American Motor Company'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T2.FullName , T1.id FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id GROUP BY T1.Maker HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T1.maker = T3.id WHERE T3.FullName = 'General Motors' OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight >= 3000 AND weight <= 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000;
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND MakeId IN (SELECT MakeId FROM car_makers WHERE FullName = 'Volvo')
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT count(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3)
SELECT count(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT Model FROM cars_data WHERE Cylinders = 4 AND Horsepower = (SELECT max(Horsepower) FROM cars_data GROUP BY Model HAVING count(*) >= 1)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Weight < 3500 EXCEPT SELECT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T2.FullName = 'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.makeid JOIN cars_data AS T3 ON T2.makeid = T3.makeid WHERE T3.weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list JOIN car_makers AS T4 ON model_list.maker = T4.id WHERE T4.fullname = 'Ford Motor Company'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName > 3 OR T2.Make = 'fiat' GROUP BY T1.CountryId HAVING COUNT(*) >= 4
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IN (SELECT Country FROM car_makers GROUP BY Country HAVING COUNT(*) > 3 UNION SELECT Country FROM car_names GROUP BY Country HAVING Make = 'fi' )
SELECT Country FROM airlines WHERE Airline LIKE '%JetBlue Airways%'
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE country = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT Airline FROM airlines WHERE Abbreviation = "ULA"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT airportname FROM airports WHERE country = 'America' AND city = 'Akron'
SELECT airportname FROM airports WHERE country = 'AKO'
SELECT AirportName FROM airports WHERE City LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destinationairport = 'APG'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'AUS') AND destinationairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'AUS')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.sourceairport IN (SELECT sourceairport FROM flights WHERE destairport = 'Aberdeen')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Aberdeen')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = "Aberdeen" AND T3.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Country = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'ASY') AND airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = \"United Airlines\" AND sourceairport IN (SELECT airportcode FROM airports WHERE country = \"USA\")
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrrev WHERE T2.country = 'AHD' AND T3.countryabbreviation = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = 'United Airlines' AND T2.country = 'Alabama' AND T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destinationairport = T2.airportcode WHERE T3.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United States' AND T2.city = 'Aberdeen'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.Airline WHERE T2.SourceAirport = 'AHD' AND T2.DestAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.Airline WHERE T2.DestAirport IN (SELECT airportcode FROM airports WHERE airportname = 'AHD')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = 'APG') INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.sourceairport = 'CVO')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = \"APG\" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = \"CVO\"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode WHERE T4.country = 'CVO') EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM flights AS T3 JOIN airports AS T4 ON T3.destairport = T4.airportcode WHERE T4.country = 'APG')
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.DestAirport = 'APG'
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT flightno FROM flights WHERE airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.destinationairport = 'APG'
SELECT T1.Flighno FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport IN ( SELECT AirportCode FROM airports WHERE AirportName = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport IN ( SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.destairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen" OR city = "Abilene")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen" OR city = "Abilene")
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC LIMIT 1000000;
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC;
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.year_awarded DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
district = (SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000)
districts = (SELECT district FROM shop WHERE number_products BETWEEN 0 AND 3000 INTERSECT SELECT district FROM shop WHERE number_products BETWEEN 3001 AND 10000)
Teacher.sort_by_age()
Youngest Teacher: Name = "Teacher1" Oldest Teacher: Name = "Teacher50"
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age IN (32 , 33)
youngest_teacher_hometown = min(Hometown FROM teacher ORDER BY Age ASC LIMIT 1)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1;
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown;
SELECT count(*) , name FROM teacher GROUP BY name;
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OFmembership DESC
SELECT avg(age) FROM visitor WHERE age NOT BETWEEN 4 AND 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1;
SELECT sum(T2.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.Level_of_membership = 'LV 1'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10;
SELECT T2.tourney_name FROM matches AS T1 JOIN tournament AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T2.tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 AND T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 AND T1.player_id = T2.winner_id {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championship\" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.tourney_name = \"Australian Open\" ORDER BY T3.ranking_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.rank_points DESC LIMIT 1;
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.match_num DESC LIMIT 1;
SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' INTERSECT SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'right'
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA\" AND T1.hand = \"left\";
SELECT count(*) FROM ship WHERE ship_type = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10;
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "Lettice" AND T2.ship_type = "HMS" INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = "HMS" AND T2.ship_type = "HMS"
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'English Channel' )
Mathematics (description)
SELECT course_description FROM courses WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM addresses WHERE city LIKE '%Port Chelsea%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN student_enrolment_courses AS T3 ON T2.student_id = T3.student_id JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id;
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id;
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = 'Timmothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT semester_name FROM semesters WHERE semester_id IN (SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 1 AND student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 2)) INTERSECT SELECT semester_name FROM semesters WHERE semester_id IN (SELECT semester_id FROM Student_Enrolment WHERE degree_program_id = 2 AND student_id IN (SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 1))
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Masters' INTERSECT SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = 'Bachelors')
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT T2.Title FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id JOIN written_by AS T3 ON T3.id = T1.written_by WHERE T3.name = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN cartoone AS T2 ON T1.id = T2.written_by WHERE T2.directed_by = 'Joseph Kuh'
SELECT T1.Title , T1.Directed_by FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY T2.Air_Date ASC;
SELECT title , directed_by FROM cartoon ORDER BY original_air_date ASC;
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.name = 'Ben Jones' OR T2.name = 'Brandon Vietti'
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_CHANNEL AS T2 ON T1.Channel = T2.id WHERE T2.Directed_by = 'Ben Jones' OR T2.Directed_by = 'Brandon Vietti'
SELECT Country , COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT CONTENT FROM TV_CHANNEL WHERE channel = "Sky Radio"
SELECT Content FROM TV_CHANNEL WHERE Series_name = 'Sky Radio'
SELECT Package_Option FROM TV_CHANNEL WHERE channel = "Sky Radio"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'English'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'english'
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle!'
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.series_name = "Sky Radio"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = 'Sky Radio' AND T2.content = 'Cartoon'
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
A Love of a Lifetime (1962) aired on May 5, 1962.
SELECT Weekly_Rank FROM TV_series WHERE Series_name = \"A Love of a Lifetime\"
SELECT Weekly_Rank FROM TV_series WHERE Series_Name = "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.channel = """"A Love of a Lifetime"""""
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.series_name = """"Sky Radio""""
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by HAVING count(*) > 0
SELECT Production_code , Channel FROM cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT T1.series_name , T2.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.HD_tv = 'Yes'
SELECT package_option , series_name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HDTV'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'Todd Casey'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = 'Todd Casey' AND T2.Directed_by = 'Todd Casey'
TV_channel.id NOT IN (SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id)
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT channel FROM cartoon WHERE written_by = \"Todd Casey\" )
SELECT T2.series_name , T2.country FROM TV_channel AS T2 JOIN cartoon AS T1 ON T2.id = T1.channel WHERE T1.directed_by = "Ben Jones" AND T1.directed_by = "Michael Chang"
SELECT T1.series_name , T1.country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' AND T2.directed_by = 'Michael Chang'
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'english'
TV_CHANNEL(id, Country, Language) WHERE Language <> 'english' AND id NOT IN (SELECT id FROM TV_CHANNEL WHERE Language = 'english')
SELECT id FROM TV_CHANNEL WHERE id NOT IN (SELECT channel FROM TV_CHANNEL GROUP BY country HAVING count(*) < 2)
SELECT id FROM TV_CHANNEL WHERE id NOT IN ( SELECT channel FROM cartoon GROUP BY channel HAVING count(*) > 1 )
SELECT id FROM TV_CHANNEL WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
TV_CHANNEL.id NOT IN (SELECT T1.id FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = 'Ben Jones') AND Package_Option != 'Yes'
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT channel FROM cartoon GROUP BY channel HAVING count(*) > 1 )
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200.0;
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 0
SELECT Nationality , count(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT max(created) FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state IN ('NY', 'CA')
SELECT T1.create_date , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = \"Tabatha Gehling\"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Tabatha Gehling\") INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = (SELECT contestant_number FROM CONTESTANTS WHERE contestant_name = \"Kelly Clauss\")
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE indepyear > 1950;
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
Surfacearea = 510368.948817448 surfacearea + 415287.548446392 surfacearea + 687153.941945553 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.694108176 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.694108176 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.694108176 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.694108176 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.694108176 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.694108176 surfacearea + 486204.221443421 surfacearea + 338403.310564814 surfacearea + 275846.245402247 surfacearea + 144253.310564814 surfacearea + 388065.6941
Anguilla is located in the Caribbean continent.
Anguila belongs to the continent of America.
Kabul is located in the region of Afghanistan.
Kabul.Region = "Afghanistan"
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM city WHERE district = 'Aruba') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba" GROUP BY T1.Language ORDER BY sum(T2.Percentage) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Name = "Brazil"
SELECT region , population FROM country WHERE name = 'Angola'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT Name FROM country WHERE Continent = \"Asia\" ORDER BY LifeExpectancy ASC LIMIT 1;
SELECT Name FROM country WHERE Continent = \"Asia\" ORDER BY LifeExpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'African' AND governmentform = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
Total surface area of Asia + Total surface area of Europe = 1400000 + 1200000 = 2600000平方米
Total surface area covered by countries in Asia or Europe = SurfaceArea + SurfaceArea = 2 * SurfaceArea
SELECT count(*) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM country WHERE code = 'NL' AND name = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE continent = 'United States'
SELECT avg(GNP) , sum(Population) FROM country WHERE code IN ( SELECT code FROM city WHERE district = 'USA' )
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage AS t1 JOIN city AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
To find the nation that speaks the largest number of languages, we need to count the percentage of speakers for each language and then identify the nation with the highest count. This can be done by first counting the percentage of speakers for each language and then taking the maximum value as the result. ```sql SELECT T1.name , max(T2.percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY max(T2.percentage) DESC LIMIT 1; ``` This query counts the percentage of speakers for each language and selects the nation with the highest count. The resulting nation will speak the largest number of languages.
To determine which nation uses the greatest number of languages, we need to find the maximum percentage of languages used by any one nation. This can be done by first counting the total number of languages used across all nations and then dividing by the number of nations to get an average percentage. The nation with the highest average percentage will have the largest number of languages. First, let's calculate the total number of languages used across all countries: TotalLanguages = sum(Percentage) / count(DISTINCT CountryCode) Next, we'll divide this total by the number of countries to get an average percentage: AverageLanguagesPerNation = totalLanguages / count(DISTINCT CountryCode) Now, we'll select the nation with the highest average percentage as the answer. Let's do this calculation now: totalLanguages = sum(Percentage) / count(DISTINCT CountryCode) averageLanguagesPerNation = totalLanguages / count(DISTINCT CountryCode) highestAverageLanguagesPerNation = max(averageLanguagesPerNation, averageLanguagesPerNation - 1) # adjust for case where some nations might have zero languages highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having one language per nation highestAverageLanguagesPerNation = highestAverageLanguagesPerNation + 1 # add 1 to account for the possibility of having
Most diverse languages continent: %continent% FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.continent ORDER BY sum(t2.percentage) DESC LIMIT 1%continent%
Most languages spoken by countries: most_languages = (SELECT T1.continent , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.continent ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Chinese" AND T2.Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'Chinese' AND T2.language = 'Chinese'
SELECT region FROM country WHERE code IN ( SELECT countrycode FROM countrylanguage WHERE language = "English" UNION SELECT countrycode FROM countrylanguage WHERE language = "Dutch")
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language IN ('English', 'Dutch')
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM city WHERE continent = 'Asia') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = \"Asia\" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE Percentage = 1 AND IsOfficial = 1 GROUP BY Language HAVING count(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY sum(T1.population) DESC LIMIT 1;
SELECT name FROM city WHERE population != 0 AND percentage > (SELECT max(percentage) FROM countrylanguage WHERE language = 'English')
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' AND T2.isofficial != 'Yes'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = 'Beatrix' AND T2.IsOfficial = 'Yes'
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = '%Beatrix%' AND T2.IsOfficial = 'Yes'
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930;
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930 GROUP BY T1.Code HAVING sum(T2.Percentage) > 50%
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa' ORDER BY population LIMIT 1;
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT population FROM country WHERE continent = 'Africa' ORDER BY population DESC LIMIT 1)
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Africa') INTERSECT SELECT name FROM country WHERE continent = 'Asia'
SELECT code FROM country WHERE code2 NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT code2 FROM countrylanguage WHERE language = 'English')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language <> 'English'
SELECT code FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT code FROM country WHERE code2 NOT IN (SELECT code2 FROM countrylanguage WHERE Language = 'English' INTERSECT SELECT code2 FROM countrylanguage WHERE Language = 'Republic')
SELECT code FROM country WHERE code2 NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English' AND T1.countrycode IN (SELECT code FROM country WHERE continent = 'Europe')
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.language = 'Chinese' GROUP BY T1.id HAVING count(*) > 1;
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Chinese' INTERSECT SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'Yes' AND T2.language = 'Chinese'
SELECT name , indepyear , surfacearea FROM country ORDER BY indepyear LIMIT 1;
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1;
SELECT name , population FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district HAVING count(*) > (SELECT count(*) FROM city WHERE population > (SELECT avg(population) FROM city))
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population LIMIT 3;
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND population > 3000;
SELECT sum(population) , avg(population) FROM country WHERE continent = 'Noth America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 900000 AND 160000;
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT T1.Language , T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Population > ( SELECT max(Population) FROM country ) ORDER BY T1.Percentage DESC LIMIT 1000000 ;
To find the codes of the different nations along with the languages spoken by the greatest percentage of people, we need to calculate the percentage of population for each nation and then identify the nation(s) with the highest percentage. We can do this by comparing the percentages of people in each country with those of the majority (i.e., the largest percentage). Here's how we can achieve this: 1. Calculate the percentage of people in each country. 2. Identify the nation(s) with the highest percentage. 3. Find the languages spoken by these nations. Let's start with step 1. The formula to calculate the percentage of people in a country is: \[ \text{Percentage} = \left( \frac{\text{Population}}{\text{SurfaceArea}} \right) \times 100\% \] Next, let's move on to step 2. We'll compare the percentages of people in each country with the majority (i.e., the largest percentage). The majority will be the one with the highest percentage. Finally, we'll identify the nation(s) with the highest percentage and find the languages spoken by these nations. Here's the SQL query: ```sql SELECT T1.code , T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.percentage = (SELECT max(percentage) FROM countrylanguage) ; ``` This query calculates the percentage of people in each country, identifies the nation(s) with the highest percentage, and finds the languages spoken by these nations.
SELECT count(*) FROM (SELECT code FROM countrylanguage WHERE language = 'Spanish' GROUP BY code ORDER BY avg(percentage) DESC LIMIT 1)
SELECT count(DISTINCT T1.name) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage >= (SELECT min(percentage) FROM countrylanguage WHERE language = 'Spanish')
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish" ORDER BY T2.percentage DESC LIMIT 1;
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage >= (SELECT percentage FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1)
Youngest conductor: Name = "John Doe" Oldest conductor: Name = "Jane Smith"
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC;
Sorted by Year_of_Found (ascending) of orchestra Record_Company:orchestra Record_Company ASC
SELECT count(*) FROM orchestra WHERE Record_Company IN (''''CD'''', ''''DVD''')
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM Highschooler WHERE grade = 10 ORDER BY name DESC LIMIT 10;
SELECT name FROM Highschooler WHERE grade = 10 LIMIT 10;
ID: 1
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade BETWEEN 9 AND 10
SELECT count(*) FROM highschooler WHERE grade IN (9 , 10)
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING count(*) >= 1 AND count(*) <= 500
SELECT count(*) , grade FROM Highschooler GROUP BY grade HAVING count(*) > 0
SELECT YEAR FROM highschooler GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 1 AND T1.name = 'Kyle'
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT count(*) FROM friend WHERE friend_id IN (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle' AND T2.liked_id IN (SELECT liked_id FROM Likes WHERE student_id IN (SELECT id FROM Highschooler WHERE name = 'Kyle'))
SELECT count(*) FROM Like AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle' AND T1.student_id IN (SELECT id FROM Highschooler)
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0.00;
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN ( SELECT professional_id , count(*) AS count FROM T2 GROUP BY professional_id HAVING count(*) > 2 ) AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"IN" IN ('IN', 'IL')
SELECT T2.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000 AND T1.owner_id IN (SELECT owner_id FROM owners)
SELECT T1.first_name , T1.last_name , T1.id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T2 JOIN dogs AS T1 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code ORDER BY t2.cost_of_treatment LIMIT 1;
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code = (SELECT treatment_type_code FROM Treatments ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T3.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code WHERE T1.state = 'Virginia' AND T2.owner_id = T1.owner_id
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id = t2.owner_id ORDER BY t2.age ASC LIMIT 1;
SELECT email_address FROM professionals WHERE state LIKE 'Hawaii' OR state LIKE 'Wisconsin'
SELECT email_address FROM professionals WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000000
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship HAVING COUNT(*) > 100
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship HAVING max(Net_Worth_Millions) != 0
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country HAVING max(Net_Worth_Millions) != 0
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
Citizenship shared between singers born before 1945 and after 1955: SELECT Citizenship FROM singer WHERE Birth_Year < 1945 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM Properties WHERE room_count BETWEEN 0 AND 2 UNION SELECT property_name FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Ref_Property_Types WHERE property_type_description = \"Apartment\") INTERSECT SELECT property_name FROM Properties WHERE room_count > 1;
