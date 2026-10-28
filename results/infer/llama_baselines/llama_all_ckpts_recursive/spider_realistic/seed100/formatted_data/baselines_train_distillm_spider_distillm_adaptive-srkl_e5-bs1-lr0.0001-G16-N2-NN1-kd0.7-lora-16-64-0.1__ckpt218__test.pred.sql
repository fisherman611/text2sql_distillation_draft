SELECT name, country, age FROM singer ORDER BY age
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE country = 'France'
SELECT avg(age), min(age), max(age) FROM singer WHERE country = "France"
SELECT T1.song_name, T1.song_release_year FROM singer AS T1 JOIN concert_in_concert AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Country, COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.Name, T1.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR >= 2014
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT concert_name, theme, count(*) FROM concert GROUP BY theme
SELECT T2.Name, COUNT(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T1.name, count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE YEAR = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE "%Hey%"
SELECT T2.Name, T2.Country FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.song_name LIKE "%Hey%"
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.name = "Stadium Name"
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT min(weight) FROM Pets
SELECT min(weight) FROM Pets
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(DISTINCT T2.StuID) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = "female"
SELECT Fname FROM student WHERE sex = 'M' INTERSECT SELECT Fname FROM pets
SELECT DISTINCT Fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat" OR T2.pettype = "dog"
SELECT Fname FROM student WHERE sex = 'M' INTERSECT SELECT Fname FROM pets WHERE pettype = 'cat' INTERSECT SELECT Fname FROM pets WHERE pettype = 'dog'
SELECT Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "cat" INTERSECT SELECT Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "dog"
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT Major, Age FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT Fname, Age FROM STUDENT WHERE pettype = 'dog' EXCEPT SELECT Fname, Age FROM STUDENT WHERE pettype = 'cat'
SELECT Fname FROM student WHERE StuID IN (SELECT StuID FROM has_pet WHERE pettype = 'dog') EXCEPT SELECT Fname FROM student WHERE StuID IN (SELECT StuID FROM has_pet WHERE pettype = 'cat')
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT pet_id, weight FROM Pets WHERE pet_age > 1
SELECT LName FROM STUDENT WHERE age = 3 AND pet_age = 3
SELECT LName FROM student WHERE age = 3 AND pet_type = "cat"
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT COUNT(*), T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT Model FROM cars_data WHERE Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM car_data WHERE weight < (SELECT avg(weight) FROM car_data)
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Country = T2.CountryId WHERE T2.Year = 1970
SELECT T1.make, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid ORDER BY T2.year LIMIT 1
SELECT T2.make, min(T1.year) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id GROUP BY T1.makeid
SELECT DISTINCT Model FROM car_names WHERE YEAR > 1980
SELECT DISTINCT model FROM car_names WHERE YEAR > 1980
SELECT CountryName FROM car_makers GROUP BY CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT count(*), T1.id, T1fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE make = 'AMC Hornet Sportabout (Sw)';
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_names WHERE country = 'USA'
SELECT count(*) FROM car_names WHERE country = "United States"
SELECT avg(mpg) FROM car_data WHERE cyl = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974
SELECT T2.FullName, T1.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM car_makers WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) >= 3)
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*) >= 3
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT carmodel FROM cars_data ORDER BY edispl DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE Maker = 'Volvo'
SELECT avg(edispl) FROM car_makers WHERE make = 'volvo'
SELECT DISTINCT count(DISTINCT make) FROM cars_data
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT DISTINCT T1.Maker, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker HAVING count(*) > 3
SELECT DISTINCT model FROM car_makers WHERE maker = 'General Motors' OR weight > 3500
{"sql": "SELECT DISTINCT DISTINCT maker FROM car_makers WHERE maker = \"General Motors" OR weight > 3500"}
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT min(cylinders) FROM cars_data WHERE make = 'volvo'
SELECT min(cylinders) FROM cars_data WHERE make = 'Volvo'
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT model FROM car_names GROUP BY cylid ORDER BY horsepower DESC LIMIT 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT model FROM model_list WHERE maker = 'Ford Motor Company'
SELECT DISTINCT model FROM car_names WHERE weight < 3500 EXCEPT SELECT DISTINCT maker FROM car_makers WHERE maker = 'Ford'
SELECT CountryId, CountryName FROM car_makers WHERE count(*) > 3 UNION SELECT CountryId, CountryName FROM countries WHERE CountryName LIKE 'Fiat%'
SELECT CountryId, CountryName FROM car_makers GROUP BY CountryId HAVING count(*) > 3 UNION SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING count(*) > 3)
SELECT country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT DISTINCT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.CountryAbbrev = T2.CountryAbbrev WHERE T2.Country = "USA"
SELECT DISTINCT abbreviation, airline FROM airlines WHERE country = "USA"
SELECT AirportCode, AirportName FROM airports WHERE Abbreviation = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE Abbreviation = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airports WHERE countryAbbrev = "USA"
SELECT DISTINCT Abbreviation FROM airlines
SELECT DISTINCT Abbreviation FROM airlines
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE destairport = 'ATO'
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberdeen"
SELECT count(*) FROM flights WHERE destairport = 'ABERDEEN'
SELECT count(*) FROM flights WHERE DestAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE DestAirport = 'Ashley'
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE sourceairport = 'Ashley'
SELECT count(*) FROM flights WHERE airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE destairport = "ASY" AND sourceairport = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = 'ASY'
SELECT count(*) FROM flights WHERE sourceairport = "AHD" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE destairport = "AHD"
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.DestAirport = "AHD"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.abbreviation = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT DISTINCT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.SourceAirport = 'CVO' EXCEPT SELECT DISTINCT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T1.SourceAirport = 'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "APG"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT DISTINCT flightno FROM flights WHERE sourceairport = 'Aberdeen'
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = 'Aberdeen'
SELECT FlightNo FROM flights WHERE DestAirport = 'ABERDEEN'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Aberdeen" OR destairport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) UNION SELECT AirportCode FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT name FROM employee ORDER BY age
SELECT DISTINCT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop GROUP BY name HAVING count(*) > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT min(age) FROM teacher
SELECT DISTINCT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.hometown
SELECT DISTINCT hometown FROM teacher GROUP BY hometown ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = 'Math'
SELECT Name FROM teacher WHERE Course_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE LEVEL_OF_membership > 4 ORDER BY LEVEL_OF_membership
SELECT avg(age) FROM visitor WHERE age <= 4
SELECT museum_id, name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.museum_id, T1.name, T1.age FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id HAVING count(*) > 1
SELECT T1.museum_id, T1.name, T1.level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT Museum_ID, Name FROM museum GROUP BY Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T2.name, T1.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN museum AS T2 ON T1.museum_ID = T2.museum_ID WHERE T2.name = 'Lv 1'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT winner_name, country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE tourney_name = "WTA Championships" INTERSECT SELECT winner_name, country_code FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE tourney_name = "Australian Open"
SELECT first_name, country_code FROM players WHERE winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships' INTERSECT SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open')
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'Left' ORDER BY birth_date
SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE tourney_name = "Australian Open" GROUP BY T2.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches WHERE minutes = (SELECT max(minutes) FROM matches)
SELECT loser_name, loser_id FROM matches ORDER BY minutes DESC LIMIT 1
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.loser_hand = 'right'
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id, T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT T1.name, T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id JOIN death AS T3 ON T2.id = T3.caused_by_ship_id WHERE T3.killed = 1 AND T2.name = "Lettice" AND T3.name = "HMS Atalanta"
SELECT name, result, bulgarian_commander FROM battle WHERE lost_in_battle = 0 AND location = 'English Channel'
SELECT course_description FROM COURSES
SELECT course_description FROM courses
SELECT zip_postcode FROM addresses WHERE city = 'Port'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT last_name FROM addresses WHERE state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id
SELECT last_name FROM students WHERE state_province_county = "North Carolina AND student_id NOT IN (SELECT student_id FROM Student_Enrolment)
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT * FROM addresses ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN student_ enrolment_courses AS T3 ON T3.student_enrolment_id = T2.student_enrolment_id JOIN students AS T4 ON T3.student_id = T4.student_id WHERE T4.degree_program_id = 1 INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.degree_program_id = 2
SELECT DISTINCT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN student_ enrolment_courses AS T3 ON T3.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.degree_program_id JOIN departments AS T5 ON T4.department_id = T5.department_id JOIN courses AS T6 ON T6.course_id = T3.course_id JOIN courses AS T7 ON T7.course_id = T6.course_id WHERE T4.degree_summary_name = "Masters" INTERSECT SELECT DISTINCT T1.semester_id FROM semesters AS T1 JOIN student_enrolment_courses AS T2 ON T1.semester_id = T2.semester_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id JOIN departments AS T4 ON T4.department_id = T3.department_id JOIN courses AS T5 ON T5.course_id = T2.course_id JOIN courses AS T6 ON T6.course_id = T5.course_id WHERE T4.degree_summary_name = "Bachelors"
SELECT first_name FROM students WHERE country = 'Haiti' OR cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE country = 'Haiti' OR cell_mobile_number = 09700166582
SELECT DISTINCT Title FROM Cartoon ORDER BY Title
SELECT DISTINCT title FROM cartoon ORDER BY title
SELECT DISTINCT directed_by FROM cartoon
SELECT DISTINCT directed_by FROM cartoon WHERE written_by = "Ben Jones"
SELECT count(*) FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.written_by = 'Joseph Kuh'
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT content FROM TV_channel WHERE channel = "Sky Radio"
SELECT package_option FROM TV_channel WHERE channel = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT T2.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT series_name FROM TV_series WHERE title = "The Rise of the Blue Beetle"
SELECT Title FROM Cartoon WHERE Channel = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.id = T2.id WHERE T2.channel = "Sky Radio"
SELECT Air_Date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title LIKE "%A Love of a Lifetime%"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE channel = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT episode FROM TV_series WHERE channel = "Sky Radio"
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY AIR_DATE DESC LIMIT 1
SELECT T2.series_name, T1.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_TV = 'yes'
SELECT package_option, series_name FROM TV_channel WHERE hight_definition_tv = 'HDTV'
SELECT Country FROM TV_channel WHERE Channel = "Todd Casey"
SELECT Country FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1_written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Channel!= 'Cartoon'
SELECT Country FROM TV_channel WHERE Writer = "Todd Casey" EXCEPT SELECT Country FROM Cartoon
SELECT T2.series_name, T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Series_name, T1.Country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language!= "english"
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_channel WHERE Language!= "English"
SELECT id FROM TV_channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE directed_by!= "Ben Jones"
SELECT id FROM TV_channel WHERE id NOT IN (SELECT directed_by FROM cartoon WHERE named = "Ben Jones")
SELECT package_option FROM TV_channel WHERE directed_by!= 'Ben Jones'
SELECT package_option FROM TV_channel WHERE directed_by!= 'Ben Jones'
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT DISTINCT nationality, COUNT(*) FROM people GROUP BY nationality
SELECT count(*), Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT created FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT created, state, phone_number FROM VOTES WHERE contestant_number = 'Tabatha Gehling'
SELECT area_code FROM VOTES WHERE contestant_number = "Tabatha Gehling" INTERSECT SELECT area_code FROM VOTES WHERE contestant_number = "Kelly Clauss"
SELECT Name FROM country WHERE IndependenceYear > 1950
SELECT DISTINCT name FROM country WHERE independYear > 1950
SELECT count(*) FROM country
SELECT count(*) FROM country WHERE CountryCode = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT DISTINCT continent FROM country WHERE countryCode = "Anguilla"
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT Region FROM city WHERE Name = "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT Language FROM countrylanguage WHERE CountryCode = "ARU"
SELECT population, lifeexpectancy FROM city WHERE countrycode = 'BR'
SELECT population, lifeexpectancy FROM city WHERE countrycode = "Brazil"
SELECT region, population FROM city WHERE countrycode = "Angola"
SELECT region, population FROM city WHERE countryCode = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT Name FROM country WHERE Continent = 'Asia' AND LifeExpectancy = (SELECT min(LifeExpectancy) FROM country WHERE Continent = 'Asia')
SELECT name FROM country ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population), max(gnpold) FROM city WHERE region = 'Asia'
SELECT count(*), max(gnpold FROM city WHERE region = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa AND GovernmentForm = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE region = "Gelderland"
SELECT sum(population) FROM city WHERE region = Gelderland
SELECT avg(GNP), avg(population) FROM country
SELECT avg(GNP), sum(Population) FROM country WHERE CountryCode = "US"
SELECT count(DISTINCT governmentform FROM country WHERE continent = 'Africa')
SELECT count(DISTINCT governmentform FROM country)
SELECT count(*) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE CountryCode = "AFG"
SELECT count(*) FROM countrylanguage WHERE countryCode = "Afghanistan"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 'Yes'
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = '1' INTERSECT SELECT DISTINCT Name FROM country
SELECT count(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Chinese"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 'yes' OR Language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = "Asia" GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Country"
SELECT name FROM city WHERE language = "english"
SELECT name FROM city WHERE language = "english"
SELECT name, population, lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT AVG(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT language FROM countrylanguage WHERE countrycode < 1930)
{"sql": "SELECT count(DISTINCT language FROM countrylanguage WHERE countrycode = \"country\" AND YEAR < 1930")"}
SELECT DISTINCT country FROM country WHERE SurfaceArea > (SELECT min(SurfaceArea) FROM country WHERE Continent = "Europe")
SELECT DISTINCT country FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT CountryCode FROM country WHERE Population < (SELECT min(Population) FROM country WHERE Continent = 'Asia')
SELECT countrycode FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT countrycode FROM city WHERE population > (SELECT min(population) FROM city WHERE continent = 'Africa')
SELECT countrycode FROM city WHERE population > (SELECT min(population) FROM city WHERE continent = 'Africa')
SELECT DISTINCT countrycode FROM country WHERE language!= "english"
SELECT CountryCode FROM country WHERE Language!= "English"
SELECT CountryCode FROM countrylanguage WHERE Language!= "English"
SELECT CountryCode FROM countrylanguage WHERE Language!= "English"
SELECT Code FROM country WHERE Language!= "English" AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage)
SELECT countryCode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT DISTINCT name FROM city WHERE countrycode NOT IN (SELECT CountryCode FROM countrylanguage WHERE language = "english")
SELECT DISTINCT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Name = "Asian" AND T1.CountryCode = "China"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t2.region = 'Asia' AND t2.language = "Chinese"
SELECT name, indepyear, surfacearea FROM country ORDER BY count(*) LIMIT 1
SELECT name, indepyear, surfacearea FROM country ORDER BY population LIMIT 1
SELECT population, name, headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT COUNT(*), district FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT count(*), district FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT DISTINCT country FROM country WHERE continent = "Europe AND population = 80000
SELECT DISTINCT country FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(surfacearea), avg(surfacearea) FROM country WHERE region = 'North America' AND surfacearea > 3000
SELECT sum(population), avg(population) FROM city WHERE continent = 'North America' AND surfacearea > 3000
SELECT * FROM city WHERE Population > 160000 AND Population < 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT DISTINCT countryCode, language FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT COUNT(*) FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = "10"
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), YEAR FROM highschooler GROUP BY YEAR
SELECT count(*), T1.year FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.year
SELECT max(grade) FROM highschooler
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) > 2)
SELECT avg(grade) FROM highschooler WHERE student_id IN (SELECT friend_id FROM friend GROUP BY friend_id)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT DISTINCT T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE state = "Indiana" GROUP BY T1.cell_number HAVING count(*) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR treatment_type_code IN (SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code HAVING count(*) > 2)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.first_name, T1.last_name, T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT first_name, last_name FROM professionals WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT first_name, last_name FROM professionals WHERE treatment_type_code < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT first_name, name FROM owners WHERE state = "Virginia"
SELECT first_name, T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE state = "Virginia"
SELECT last_name FROM owners WHERE age = (SELECT min(age) FROM dogs)
SELECT last_name FROM dogs ORDER BY age ASC LIMIT 1
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT max(treatment_amount) FROM charges
SELECT max(cost_of_treatment) FROM treatments
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'yes'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'Y'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Citizenship!= "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT DISTINCT T1.Citizenship, COUNT(*) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT count(*), citizenship FROM singer GROUP BY citizenship
SELECT DISTINCT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT citizenship FROM singer
SELECT DISTINCT T1.Citizenship, max(T2.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT max(net_worth_millions), citizenship FROM singer GROUP BY citizenship
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year < 1945 INTERSECT SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year > 1955
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = "hse" OR property_type_code = "apt" GROUP BY property_name HAVING count(*) > 1
