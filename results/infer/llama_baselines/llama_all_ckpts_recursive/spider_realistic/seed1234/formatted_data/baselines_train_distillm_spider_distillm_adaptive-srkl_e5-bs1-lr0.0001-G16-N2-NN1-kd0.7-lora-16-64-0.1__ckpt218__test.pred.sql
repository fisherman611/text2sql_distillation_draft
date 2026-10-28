SELECT name, country, age FROM singer ORDER BY age
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE country = "France"
SELECT avg(Age), min(Age), max(Age) FROM singer WHERE country = 'France'
SELECT T2.song_name, T1.song_release_year FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age ASC LIMIT 1
SELECT Song_Name, Song_release_year FROM singer ORDER BY Age ASC
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country, count(*) FROM singer GROUP BY Country
SELECT COUNT(*), country FROM singer GROUP BY country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION, name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR >= 2014
SELECT T2.Name, T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013
SELECT name FROM stadium WHERE Stadium_ID = NULL
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name, T1.theme, count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name
SELECT T1.Name, COUNT(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.name, count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID WHERE T1.year = 2014
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE '%Hey%'
SELECT T1.Name, T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name LIKE "%Hey%"
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT T1.Name, T1.Location FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT min(weight) FROM Pets
SELECT min(weight) FROM Pets
SELECT count(*) FROM student WHERE age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F'
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.sex = 'F'
SELECT Fname FROM student WHERE sex = 'M' INTERSECT SELECT Fname FROM pets
SELECT DISTINCT Fname FROM student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "cat" OR T2.pettype = "dog"
SELECT Fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet INTERSECT SELECT StuID FROM Has_Pet WHERE PetType = "Cat") INTERSECT SELECT Fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet INTERSECT SELECT StuID FROM Has_Pet WHERE PetType = "Dog")
SELECT DISTINCT Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "cat" INTERSECT SELECT DISTINCT Fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.petid = T2.petid WHERE T3.pettype = "dog"
SELECT major, age FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT major, age FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT Fname, Age FROM student WHERE StuID IN (SELECT StuID FROM has_pet WHERE pettype = "dog") EXCEPT SELECT Fname, Age FROM student WHERE pettype = "cat"
SELECT Fname FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet WHERE pettype = 'dog')
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT petID, weight FROM Pets WHERE pet_age > 1
SELECT pet_id, weight FROM pets WHERE pet_age > 1
SELECT LName FROM Student WHERE Age = 3 AND PetID = (SELECT PetID FROM Has_Pet GROUP BY PetID HAVING count(*) = 3)
SELECT T1.LName FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 3
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*), T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.FullName
SELECT T1.FullName, T1.Id, count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker WHERE T2.Year = 1970
SELECT DISTINCT T2.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Country = T2.Country WHERE T1.Year = 1970
SELECT make, T1.make, T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid ORDER BY T2.year LIMIT 1
SELECT T2.Maker, T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id ORDER BY T1.year LIMIT 1
SELECT DISTINCT DISTINCT Model FROM car_names WHERE YEAR > 1980
SELECT DISTINCT DISTINCT model FROM car_names WHERE YEAR > 1980
SELECT CountryName FROM car_makers GROUP BY CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT CountryName FROM car_makers GROUP BY CountryId ORDER BY count(*) DESC LIMIT 1
SELECT count(*), T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT count(*), T1.Id, T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT accelerate FROM cars_data WHERE make = "amc hornet sportabout"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.continent = "USA"
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Continent = 'United States'
SELECT avg(mpg) FROM cars_data WHERE cyl = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974
SELECT DISTINCT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT T1.CountryName, T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT COUNT(*) FROM car_makers WHERE Country = "Europe" GROUP BY Country HAVING COUNT(*) >= 3
SELECT DISTINCT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING count(*) >= 3
SELECT Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker ORDER BY SUM(Edispl) DESC LIMIT 1
SELECT model FROM cars_data ORDER BY edispl DESC LIMIT 1
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM car_names WHERE Maker = 'Volvo'
SELECT avg(Edispl) FROM car_names WHERE make = "Volvo"
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "American"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING count(*) > 3
SELECT DISTINCT T1.FullName, T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker
SELECT DISTINCT model FROM car_makers WHERE maker = 'General Motors' OR weight > 3500
SELECT DISTINCT model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = "General Motors" OR T2.weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT min(cylinders) FROM cars_data WHERE make = 'volvo'
SELECT min(cylinders) FROM cars_data WHERE make = 'Volvo'
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY countryid HAVING count(*) > 2
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.ModelId = T2.ModelId WHERE T1.Cylinders = 4
SELECT max(mpg) FROM cars_data WHERE cyl = 8 OR YEAR < 1980
SELECT Model FROM model_list WHERE Weight < 3500 EXCEPT SELECT Id FROM car_makers WHERE Maker = 'Ford Motor Company'
SELECT DISTINCT model FROM car_names WHERE weight < 3500 EXCEPT SELECT DISTINCT maker FROM car_makers WHERE maker = 'Ford'
SELECT Id, CountryName FROM car_makers WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING count(*) > 3) INTERSECT SELECT CountryId, CountryName FROM countries WHERE CountryName LIKE 'Fiat%'
SELECT countryid, countryname FROM car_makers WHERE id > 3 UNION SELECT countryid, countryname FROM countries WHERE countryid IN (SELECT countryid FROM car_names GROUP BY countryid HAVING count(*) > 3)
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT DISTINCT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.CountryAbbrev = T2.CountryAbbrev WHERE T2.Country = "USA"
SELECT DISTINCT T1.Airline, T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.CountryAbbrev = T2.CountryAbbrev
SELECT AirportCode, AirportName FROM airports WHERE Abbreviation = "Anthony"
SELECT AirportCode, AirportName FROM airports WHERE Abbreviation = "Anthony"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT DISTINCT Abbreviation FROM airlines WHERE CountryAbbrev = "AKO"
SELECT DISTINCT Abbreviation FROM airlines
SELECT AirportName FROM airports WHERE CountryAbbrev = "ABERDEEN"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "United States"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT count(*) FROM flights WHERE destairport = 'ABERDEEN'
SELECT count(*) FROM flights WHERE destairport = 'ABERDEEN'
SELECT count(*) FROM flights WHERE destairport = 'Ashley' INTERSECT SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberdeen' INTERSECT SELECT count(*) FROM flights WHERE destairport = 'Ashley'
SELECT count(*) FROM flights WHERE Airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE DestAirport = "ASY" AND Airline = "United Airlines"
{"sql": "SELECT count(*) FROM flights WHERE destairport = "ASY""}
SELECT count(*) FROM flights WHERE destairport = "AHD" AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE SourceAirport = "AHD"
SELECT count(*) FROM flights WHERE destairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbrev = "United" AND T1.sourceairport = "Aberdeen"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "AHD"
SELECT DISTINCT airline FROM flights WHERE destairport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = 'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = "APG" INTERSECT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "CVO EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Abbreviation = "APG"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "CVO" EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.AirportCode = "APG"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United"
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT DISTINCT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.Country = "Scotland" AND T2.CountryAbbrev = "AB"
SELECT DISTINCT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.CountryAbbrev = "Scotland" AND T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "ABERDEEN"
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Abilene"
SELECT count(*) FROM flights WHERE destairport = "Aberdeen" OR sourceairport = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT DISTINCT airportcode FROM airports EXCEPT SELECT sourceairport FROM flights
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT count(*), LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT manager_name, district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT name, LOCATION, district FROM shop ORDER BY number_products DESC
SELECT name, LOCATION, district FROM shop ORDER BY Number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id ORDER BY T1.bonus DESC LIMIT 1
SELECT name FROM employee ORDER BY bonus DESC LIMIT 1
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT DISTINCT district FROM shop WHERE number_products < 3000 INTERSECT SELECT DISTINCT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age
SELECT Name FROM teacher WHERE Hometown!= "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown!= 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT min(Age) FROM teacher
SELECT DISTINCT T1.Hometown, COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT T1.Name, count(*) FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T1.Hometown
SELECT DISTINCT hometown FROM teacher GROUP BY hometown ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Grade = "Math"
SELECT DISTINCT Name FROM teacher WHERE Course_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Grade = 'Math')
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership
SELECT avg(Age) FROM visitor WHERE age <= 4
SELECT museum_id, name FROM museum GROUP BY museum_id ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT open_year, num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT T1.museum_id, T1.name, T1.age FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id HAVING count(*) > 1
SELECT museum_id, name, level_of_membership FROM visitor WHERE total_spent = (SELECT max(total_spent) FROM visit)
SELECT T1.Museum_ID, T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT name, age FROM visitor WHERE num_of_ticket = (SELECT max(num_of_ticket) FROM visit)
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Name = 'Level 1'
SELECT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT winner_name FROM matches WHERE YEAR = 2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code, T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name, country_code FROM players WHERE winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships' INTERSECT SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open')
SELECT first_name, country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name, T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name, T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT winner_name FROM players WHERE tourney_name = "Australian Open" ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name, winner_name FROM matches ORDER BY loser_ht DESC LIMIT 1
SELECT loser_name, winner_name FROM matches WHERE minutes = (SELECT min(minutes) FROM matches)
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT count(*), country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT winner_name, winner_rank FROM matches ORDER BY winner_age ASC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE winner_hand = 'R' AND tourney_name = "WTA Championships"
SELECT count(*) FROM players WHERE hand = 'left' AND tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT id, name FROM battle WHERE result = "Winner" GROUP BY caused_by_ship_id HAVING count(*) > 10
SELECT caused_by_ship_id, name FROM death GROUP BY caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT name, date FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T1.name = "Lettice" AND T2.name = "HMS Atalanta" AND T1.result = "Lost"
SELECT name, result, bulgarian_commander FROM battle WHERE lost_in_battle = 0 AND location = 'English Channel'
SELECT course_description FROM COURSES
SELECT course_description FROM COURSES
SELECT zip_postcode FROM addresses WHERE city = 'Port'
SELECT zip_postcode FROM addresses WHERE city = "Port"
SELECT last_name FROM students WHERE state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id
SELECT last_name FROM addresses WHERE state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.address_id, T1.address_line_1 FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id, T1.line_1, T1.line_2 FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE degree_program_id = 1 INTERSECT SELECT semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE degree_program_id = 2
SELECT semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 3 AND T1.student_id = 1
SELECT first_name FROM students WHERE country = 'Haiti' OR cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE country = "Haiti" OR cell_mobile_number = "09700166582"
SELECT DISTINCT title FROM cartoon ORDER BY title
SELECT DISTINCT title FROM cartoon ORDER BY title
SELECT DISTINCT directed_by FROM Cartoon
SELECT DISTINCT directed_by FROM cartoon WHERE written_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2.Written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE T2_written_by = "Joseph Kuh"
SELECT Title, Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country, COUNT(*) FROM TVCHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country, count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT content FROM TV_channel WHERE channel = "Sky Radio"
SELECT content FROM TV_channel WHERE channel = "Sky Radio"
SELECT package_option FROM TV_channel WHERE channel = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.title = "The Rise of the Blue Beetle!"
SELECT series_name FROM TV_series WHERE title = "The Rise of the Blue Beetle"
{"sql": "SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.channel = ""Sky Radio"""}
SELECT title FROM Cartoon WHERE Channel = "Sky Radio"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = """A Love of a Lifetime"""
SELECT series_name FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT series_name FROM TV_series WHERE series_name LIKE "%"A Love of a Lifetime%";
SELECT episode FROM TV_series WHERE Channel = ""Sky Radio""
SELECT Episode FROM TV_series WHERE Channel = "Sky Radio"
SELECT count(*), directed_by FROM cartoon GROUP BY directed_by
SELECT COUNT(*), directed_by FROM Cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1
SELECT T1.series_name, T2.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.hight_definition_TV = 'HD'
SELECT package_option, series_name FROM TV_channel WHERE hight_definition_tv = 'HDTV'
SELECT Channel FROM Cartoon
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Channel!= "Cartoon"
SELECT Country FROM TV_channel WHERE Written_by!= "Todd Casey"
SELECT T2.series_name, T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' INTERSECT SELECT T2.series_name, T1.country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Michael Chang'
SELECT T2.series_name, T1.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Ben Jones" INTERSECT SELECT T2.series_name, T1.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.directed_by = "Michael Chang"
SELECT pixel_aspect_ratio PAR, country FROM TV_channel WHERE language!= "english"
SELECT pixel_aspect_ratio_PAR, Country FROM TVCHANNEL WHERE Language!= "english"
SELECT id FROM TV_channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel WHERE channel!= "Cartoon" AND directed_by!= "Ben Jones"
SELECT id FROM TV_channel WHERE directed_by!= "Ben Jones"
SELECT package_option FROM tv_channel WHERE directed_by!= 'Ben Jones'
SELECT DISTINCT package_option FROM TV_channel WHERE directed_by!= 'Ben Jones'
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player
SELECT Money_Rank FROM poker_player
SELECT avg(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT DISTINCT nationality, COUNT(*) FROM people GROUP BY nationality
SELECT count(*), nationality FROM people GROUP BY nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2
SELECT Name FROM people WHERE Nationality!= 'Russia'
SELECT Name FROM people WHERE Nationality!= "Russia"
SELECT created FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created, state, phone_number FROM VOTES WHERE contestant_number = "Tabatha Gehling"
SELECT DISTINCT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT DISTINCT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.area_code = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT DISTINCT name FROM country WHERE independyear > 1950
SELECT DISTINCT name FROM country WHERE independYear > 1950
SELECT count(*) FROM country
SELECT count(*) FROM country WHERE countrycode = "republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT Continent FROM country WHERE Name = "Anguilla"
SELECT Continent FROM country WHERE Code = "Anguilla"
SELECT DISTINCT region FROM city WHERE name = "Kabul"
SELECT region FROM city WHERE name = "Kabul"
SELECT LANGUAGE FROM countrylanguage WHERE countrycode = "Aruba"
SELECT Language FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT population, lifeexpectancy FROM city WHERE countrycode = "Brazil"
SELECT Population, LifeExpectancy FROM country ORDER BY Population DESC
SELECT region, population FROM city WHERE countrycode = "Angola"
SELECT region, population FROM city WHERE countryCode = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa'
SELECT Name FROM country ORDER BY LifeExpectancy LIMIT 1
SELECT name FROM country ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population), max(gnpold) FROM city WHERE region = 'Asia';
SELECT count(*), max(gnpold) FROM city WHERE region = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = Africa AND GovernmentForm = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT count(*) FROM city WHERE region = "Gelderland"
SELECT sum(population) FROM city WHERE region = "Gelderland"
SELECT avg(GNP), sum(Population) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode
SELECT avg(GNP), sum(population) FROM country WHERE countryCode = "United States"
{"sql": "SELECT count(DISTINCT governmentform FROM country WHERE continent = \"Africa")"}
SELECT count(DISTINCT GovernmentForm FROM country)
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(*) FROM countrylanguage WHERE CountryCode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE countrycode = "Afghanistan"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Continent FROM countrylanguage GROUP BY Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM countrylanguage WHERE Language = "English" INTERSECT SELECT Name FROM countrylanguage WHERE Language = "French"
SELECT DISTINCT countryname FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.language = "English" INTERSECT SELECT DISTINCT countryname FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.language = "French"
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 'Yes'
SELECT Name FROM country WHERE IsOfficial = 'English' INTERSECT SELECT Name FROM country WHERE IsOfficial = 'French'
SELECT count(DISTINCT Continent FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM countrylanguage WHERE language = "Chinese"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.language = "English" OR T1.language = "Dutch"
SELECT DISTINCT region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT Language FROM countrylanguage WHERE Continent = 'Asia'
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode = "Republic"
SELECT Language FROM countrylanguage WHERE CountryCode = "France"
SELECT city FROM city WHERE language = "english"
SELECT name FROM city WHERE language = "English"
SELECT name, population, lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT AVG(LifeExpectancy) FROM country WHERE Language!= "English"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "english"
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT LANGUAGE FROM countrylanguage WHERE CountryCode = "Beatrix"
SELECT Language FROM countrylanguage WHERE IsOfficial = 'Yes' AND HeadOfState = "Beatrix"
SELECT count(DISTINCT language FROM countrylanguage WHERE countrycode < 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE YEAR < 1930
SELECT countrycode FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT DISTINCT countryCode FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT country FROM country WHERE countryregion = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT countrycode FROM country WHERE continent = 'Asia' AND population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT CountryCode FROM city WHERE Population > (SELECT min(Population) FROM city WHERE Continent = "Africa")
SELECT countryCode FROM country WHERE language!= "english"
SELECT countryCode FROM country WHERE language!= "english"
SELECT CountryCode FROM countrylanguage WHERE Language!= "english"
SELECT CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Language!= "English"
SELECT countryCode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language!= "english" AND countrycode NOT IN (SELECT countrycode FROM country WHERE language = "english")
SELECT CODE FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT DISTINCT name FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t2.continent = 'Asia' AND t2.language = "Chinese"
SELECT DISTINCT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.region = 'Asia' AND t2.language = 'Chinese'
SELECT Name, indepYear, SurfaceArea FROM country ORDER BY count(*) LIMIT 1
SELECT Name, IndepYear, SurfaceArea FROM country ORDER BY Population ASC LIMIT 1
SELECT max(population), name, leader FROM country GROUP BY countryCode
SELECT count(*), district FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT count(*), district FROM city GROUP BY district HAVING count(*) > (SELECT avg(population) FROM city)
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT DISTINCT country FROM country WHERE continent = 'Europe' AND population = 80000
SELECT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT sum(surfacearea), avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population), avg(population) FROM city WHERE countrycode = 'North America' AND surfacearea > 3000
SELECT * FROM city WHERE Population > 160000 AND Population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT DISTINCT countrycode, language FROM countrylanguage ORDER BY Percentage DESC
SELECT COUNT(*) FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Name FROM conductor WHERE Nationality!= "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT grade FROM highschooler WHERE id = "Kyle"
SELECT grade FROM highschooler WHERE id = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*), YEAR FROM highschooler GROUP BY YEAR
SELECT count(*), YEAR FROM highschooler GROUP BY YEAR
SELECT max(grade) FROM highschooler
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) > 2)
SELECT avg(grade) FROM highschooler WHERE student_id IN (SELECT friend_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT friend_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.first_name, T1.last_name, T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT professional_id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR treatment_type_code IN ( SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code HAVING count(*) > 2 )
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.first_name, T1.last_name, T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id, T1.first_name, T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.first_name, T1.role, T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id, T1.role, T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id, T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT first_name, last_name FROM professionals WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name, T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT first_name, T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE state = "Virginia"
SELECT last_name FROM owners ORDER BY age LIMIT 1
SELECT last_name FROM owners WHERE age = (SELECT min(age) FROM dogs)
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
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
SELECT DISTINCT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT DISTINCT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT DISTINCT Citizenship, COUNT(*) FROM singer GROUP BY Citizenship
SELECT COUNT(*), T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Citizenship
SELECT DISTINCT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Citizenship, max(T1.Net_Worth_Millions) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT max(net_worth_millions), country FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T1.birth_year < 1945 INTERSECT SELECT DISTINCT T1.citizenship FROM singer AS T1 JOIN song AS T2 ON T1.singer_id = T2.singer_id WHERE T1.birth_year > 1955
SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT DISTINCT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = "Hse" OR property_type_code = "Apartment" GROUP BY property_type_code HAVING count(*) > 1
