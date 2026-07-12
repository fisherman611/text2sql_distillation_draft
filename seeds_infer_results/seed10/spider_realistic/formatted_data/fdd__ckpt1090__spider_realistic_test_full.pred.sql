SELECT Name , Country , Age FROM singer ORDER BY Age DESC LIMIT 10
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T1.name , T1.song_release_year FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id ORDER BY T2.concent YEAR LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.Name , T2.Theme , COUNT(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name , COUNT(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.concent_ID = 2014
SELECT T2.Name FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year = 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name = "Hey"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE '%Hey%'
SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pem WHERE pet_age > 10
SELECT t2.weight FROM has_pet AS t1 JOIN pets AS t2 ON t1.petid = t2.petid ORDER BY t1.weight LIMIT 1
SELECT sum(weight) FROM Has_pet WHERE pet_age BETWEEN 1 AND 2 AND pet_type = 'dog' ORDER BY weight DESC LIMIT 1
SELECT count(*) FROM Has_patstag AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pal AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT DISTINCT t1.fname FROM Student AS t1 JOIN Has_Pet AS t2 ON t1.stuid = t2.stuid JOIN Pets AS t3 ON t2.petid = t3.petid WHERE t3.pettype = 'cat' OR t3.pettype = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Has_pet AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Cat' INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Dog'
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.major , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid != (SELECT t2.petid FROM has_pet AS T2 JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat')
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petID = 'cat'
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.petType = 'dog' AND T3.pemid != 'cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.petType = 'dog' AND T1.stuID NOT IN (SELECT stuid FROM Has_Pet WHERE petID = 'cat')
SELECT pettype , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemus AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.petid ORDER BY T1.pettype , T1.weight LIMIT 1
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT t1.lname FROM student AS t1 JOIN has_pemuswith_test AS t2 ON t1.stuid = t2.stuid WHERE t2.petid = 3
SELECT t1.lname FROM student AS t1 JOIN has_pemus AS t2 ON t1.stuid = t2.stuid JOIN pet AS t3 ON t2.petid = t3.petid WHERE t3.pettype = "cat" AND t3.pemid = 3
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(T2.age) FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT maker , COUNT(*) , fullname FROM car_makers GROUP BY maker
SELECT maker , COUNT(*) , maker , COUNT(*) FROM car_makers GROUP BY maker
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T3.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
{"sql": "SELECT maker , MIN(year) FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE id In (SELECT id FROM cars_data))))))))))))))))))") FROM cars_data ORDER BY min(year) ASC LIMIT 1;"}
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR LIMIT 1)
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT maker FROM cars_data WHERE YEAR > 1980
SELECT country_name FROM car_makers GROUP BY country_name ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.FFullName FROM car_makers AS t1 JOIN car_names AS t2 ON t1.Id = t2.MakeId GROUP BY t1.FFullName
SELECT count(*) , maker , maker_name FROM car_makers GROUP BY maker
SELECT Accelerate FROM cars_data WHERE Country = 'Amc' AND Model = 'Amc hornet'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id WHERE country_name = "France"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T3.CountryName = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = "United States"
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT maker , country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT countryname , countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT countryname FROM countries WHERE continent = 'Europe' GROUP BY countryname HAVING count(*) >= 3
SELECT country_name FROM countries WHERE country_name LIKE '%Europe%' GROUP BY country_name HAVING count(*) >= 3
SELECT maker FROM car_makers JOIN car_names ON car_maker.id = car_name.makeid JOIN model_list ON model_list.Model = modelid GROUP BY maker ORDER BY sum(accelerate) DESC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" GROUP BY T1.Model ORDER BY T1.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Country = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE maker = "Volvo"
SELECT count(DISTINCT model) FROM cars_data
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT maker , fullname FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T3.Weight > 3500 AND T1.Maker = "General Motors"
SELECT DISTINCT maker FROM car_makers WHERE country_id = 'United States' AND weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT accelerate FROM cars_data WHERE maker = "volvo" ORDER BY accelerate LIMIT 1
SELECT count(*) , MIN(accelerate) FROM cars_data WHERE id = (SELECT id FROM cars_data WHERE maker = "volvo")
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries)
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford"
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T1.Maker = "Ford" GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT max(MGPA) , id FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT model FROM car_makers WHERE weight < 3500 EXCEPT SELECT model FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE maker = 'Ford'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FFullName = 'fiest'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FFullName = 'Fiat'
SELECT Country FROM airlines WHERE airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT airline , abbreviation FROM airlines WHERE country = "USA"
SELECT airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE airportname = "Anthony"
SELECT airportcode , airportname FROM airports WHERE airportname = "Anthony"
SELECT airline FROM airlines WHERE airline = "UAL"
SELECT airline FROM airlines WHERE airline = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT AirportName FROM airports WHERE Country = 'AKO'
SELECT AirportName FROM airports WHERE Country = 'AKO'
SELECT airportname FROM airports WHERE city = "Aberport"
SELECT AirportName FROM airports WHERE City = "Aberona"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = 'ATA'
SELECT count(*) FROM flights WHERE airline = "ATA"
SELECT count(*) FROM flights WHERE airline = "Aberona"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = "Aberport"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Abberon' AND T2.AirportName = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.airportname = 'Ashley'
SELECT count(*) FROM flights WHERE airline = 'JETBEEL Airways'
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.airportname = 'United Airlines' AND T2.country = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = 'United Airlines' AND T1.departairport = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'Aberberen'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND flightno = 'ABERNABERONLY'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T1.Airline = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airleigh = T2.airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airlines FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "AHD"
SELECT airline FROM flights GROUP BY airline HAVING count(*) = 2
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT airline FROM flights WHERE airline = 'CVO' EXCEPT SELECT airline FROM flights WHERE flightno = 'APG'
SELECT airline FROM flights WHERE departure_airport = "CVO" EXCEPT SELECT airline FROM airlines WHERE departure_airport = "APG"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = "United Airlines"
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE Airline = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT count(*) FROM airports WHERE airportname = "Aberport" OR airportname = "Abilene"
SELECT count(*) FROM airports WHERE airportname = 'Aberport' OR airportname = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DostAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DostAirport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN evaluation AS T3 ON T1.shop_id = T3.shop_id ORDER BY T3.Bonus DESC LIMIT 1
SELECT name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Teacher_ID = 32 OR Teacher_ID = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.Hometown , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown
SELECT T2.hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE T2.Course = 'Math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course_Type = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership < 4
SELECT museum_id , name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.Museum_ID , T1.Name , T1.Age FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID HAVING count(*) > 1
SELECT T1.Museum_ID , T2.name , T2.level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT museum_id , name FROM visit ORDER BY total_spent DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.visitor_id WHERE T2.level_of_membership = "lv 1"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.tournament_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name FROM players WHERE player_id IN (SELECT loser_id FROM matches WHERE tourney_name = "WTA Championships) INTERSECT SELECT first_name FROM players WHERE player_id IN (SELECT loser_id FROM matches WHERE tourney_name = "Australian Open)
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players WHERE birth_date = (SELECT max(birth_date) FROM players)
SELECT first_name , last_name FROM players ORDER BY hand + hand DESC
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY player_id ASC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T2.wider_rank_points ORDER BY count(*) DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num ASC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE id = (SELECT id FROM ship WHERE result = 'captained')
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.d死了 > 10
SELECT ship.id , name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT T2.name , T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_bATTLE WHERE T1.name = "Lottice" AND T2.name = "HMS Atalanta"
SELECT name , result , bulgarian_commander FROM battle WHERE name NOT IN (SELECT battle.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.loised_in_battle = 'English Channel')
SELECT department_description FROM DEPARTMENTS ORDER BY department_description
SELECT course_description FROM COURSES WHERE course_name = 'math'
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'New York'
SELECT last_name FROM students WHERE permanent_address_id = (SELECT current_address_id FROM students WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = (SELECT semester_id FROM student_enrolment AS T3 JOIN students AS T4 ON T3.student_id = T4.student_id WHERE degree_program_id = (SELECT degree_program_id FROM student_enrolment AS T5 JOIN degree_programs AS T6 ON T5.degree_program_id = T6.degree_program_id WHERE degree_program_id = 'Phd')
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = (SELECT semester_id FROM student_enrolment ORDER BY date_first_registered LIMIT 1)
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , COUNT(*) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Bachelor'
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.dust_of_masters = 'Master' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.dust_of_bachelers = 'Bachelers'
SELECT first_name FROM students WHERE permanent_address_id = 'Haiti' OR cell_phone_number = 09700166582
SELECT first_name FROM students WHERE permanent_address_id = (SELECT permanent_address_id FROM students WHERE cell_mobile_number = 09700166582)
SELECT DISTINCT title FROM cartoon ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT DISTINCT Directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.title = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN written_by AS T2 ON T1.id = T2.id WHERE written_by = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.direction = "Joseph Kuh"
SELECT Title , Directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Country = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT series_name FROM TV_series WHERE id = (SELECT id FROM TV_series WHERE title = "The Rise of the Blue Beetle")
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM TV_channel AS T1 JOIN cartools AS T2 ON T1.id = T2.channel WHERE T1.cast_1 = "Sky Radio"
SELECT Original_air_date FROM TV_series WHERE Title = "Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "Love of a Lifetime"
SELECT series_name FROM TV_series WHERE channel = (SELECT id FROM TV_channel WHERE content = "Love of a Lifetime")
SELECT series_name FROM TV_channel WHERE series_name = "Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.country = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT director , count(*) FROM cartoon GROUP BY director
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE pixel_aspect_ratio_PAR = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "Todd Casey"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T3.Directed_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Content NOT IN (SELECT Content FROM cartoon AS T1 JOIN 2 AS T2 ON T1.channel = T2.channel WHERE T1.title = "Todd Casey")
SELECT Country FROM TV_channel EXCEPT SELECT Country FROM cartoon WHERE Directed_by = 'Todd Casey'
SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT series_name , country FROM TV_channel WHERE content = "Ben Jones and Michael Chang directed"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "USA" INTERSECT SELECT id FROM TV_channel WHERE Country = "China" INTERSEPT SELECT id FROM TV_channel WHERE Country = "India" INTERSEPT SELECT id FROM TV_channel WHERE Country = "China" INTERSEPT SELECT id FROM TV_channel WHERE Country = "Japan" INTERSEPT SELECT id FROM TV_channel WHERE Country = "India" INTERSEPT SELECT id FROM TV_channel WHERE Country = "India" INTERSEPT SELECT id FROM TV_channel WHERE Country = "USA" INTERSEPT SELECT id FROM TV_channel WHERE Country = "USA" INTERSEPT SELECT id FROM TV_channel WHERE Country = "China" INTERSEPT SELECT id FROM TV_channel WHERE Country = "China" INTERSEPT SELECT id FROM TV_channel WHERE Country = "Japan" INTERSEPT SELECT id FROM TV_channel WHERE Country = "USA" INTERSEPT SELECT id FROM TV_channel WHERE Country = "India" INTERSEPT SELECT id FROM TV_channel WHERE Country = "USA" INTERSEPT SELECT id FROM TV_channel WHERE Country = "China" INTERSEPT SELECT id FROM TV_channel WHERE Country = "Japan" INTERSEPT SELECT id FROM TV_channel WHERE Country = "USA" INTERSEPT SELECT id FROM TV_channel WHERE Country = "China" INTERSEPT SELECT id FROM TV_channel WHERE Country = "Japan"
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM people WHERE Height > 200
SELECT avg(Earnings) FROM people WHERE Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT name FROM country WHERE code = "USA" AND indepyear > 1950
SELECT name FROM country WHERE indeleightyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguilla'
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabbe'
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT population , lifeexpectancy FROM country WHERE countrycode = 'BR';
SELECT population , avg(lifeexpectancy) FROM country WHERE continent = 'Brazil' AND countrycode = 'US'
SELECT countrycode , population FROM country WHERE continent = "Angleney"
SELECT countrycode , population FROM country WHERE continent = 'Anglenext' AND region = 'Anglenext'
SELECT avg(live expectancy) FROM country WHERE continent = 'Central Africa'
SELECT avg(live expectancy) FROM country WHERE continent = 'Central Africa'
{"sql": "SELECT name FROM country WHERE continent = 'Asia' AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China' AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China' AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China' AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND (SELECT min(balance) FROM account WHERE countrycode = 'China' AND (SELECT min(balance) FROM account WHERE countrycode = 'China') AND
SELECT name FROM country WHERE continent = 'Asia' ORDER BY leasepencus ASC LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE countrycode = 'African' AND countrycode = 'Republic'
SELECT avg(life expectancy) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Cont Continent = 'Asia' OR T1.CountryCode = 'Europe'
SELECT population FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM country WHERE countrycode = 'Gelderland'
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT count(*) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT governmentform) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT sum(T2.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = 'Aruba'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.capitalcity_id = T2.capitalcity_id WHERE T3.name = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(percentage) DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY countrylanguage.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'English' INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'French'
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN countrylanguage AS T3 ON T2.language = T3.language WHERE T1.name = "French" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T2.language = T3.language WHERE T1.name = "English"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE t2.indpyear = 'English' INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE t2.indpyear = 'French'
SELECT name FROM country WHERE countrycode = 'France' OR name = 'France'
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT count(*) FROM country WHERE continent = "China"
SELECT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.countrycode = T3.countrycode WHERE T3.name = 'English' OR T3.name = 'Dutch'
SELECT DISTINCT region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = "Dutch" OR T1.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT language FROM countrylanguage WHERE countrycode = 'Asia' ORDER BY percentage DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage WHERE language = 'China')
SELECT language FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage WHERE language = 'United States' GROUP BY language HAVING count(*) = 1)
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) ORDER BY name LIMIT 1
SELECT name FROM city WHERE countrycode = "United States" AND language = "English" ORDER BY population DESC LIMIT 1
SELECT name , population , land FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(live expectancy) FROM countrylanguage WHERE language != "english"
SELECT avg(live expectancy) FROM countrylanguage WHERE language NOT IN ('en')
SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode EXCEPT SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE language = "english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T2.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = 'Beatrix'
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND id = 1) AND id = 1 WHERE countrycode = 'USA' AND id = 1
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "America" AND indepyear < 1930
SELECT countrycode FROM country WHERE surfacetarea > (SELECT max(surfacetarea) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE continent = "Europe" AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT countrycode FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT countrycode FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE continent = 'Asia' INTERSECT SELECT countrycode FROM country WHERE continent = 'Africa' GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT countrycode FROM country WHERE name NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT countrycode FROM country WHERE name != "English" GROUP BY countrycode
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = 'english'
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT code FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "english"
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T2.countrycode = T3.code WHERE T3.region = 'Asia' AND T3.name = 'China'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.region = 'Asia' AND T3.indisofficial = 'Chinese'
SELECT name , independence_year , surfacearea FROM country ORDER BY population LIMIT 1
SELECT name , independenceyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT population , name , head_of_state FROM country WHERE continent = 'Europe' ORDER BY population DESC LIMIT 1
SELECT count(*) , DISTINCT district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city GROUP BY district HAVING sum(population) > (SELECT avg(population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND countrycode = 'US'
SELECT sum(population) , avg(population) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.CountryCode , T2.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT countrycode , percentage FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT sum(count(*)) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = "Spanish" AND T2.region = "United States"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT name FROM conductor ORDER BY age DESC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT orchestra FROM orchestra GROUP BY orchestra ORDER BY year_of_founded ASC
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Major_Record_Format = "CD" OR T1.Major_Record_Format = "DVD"
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE friend_id = 2 AND student_id = 2
SELECT student_id FROM friends WHERE student_id = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = "9" OR grade = "10"
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT T1.year FROM highschooler AS T1 JOIN student AS T2 ON T1.id = T2.id WHERE T2.grade = 'Highschool' GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T1.friend_id = 1
SELECT count(*) FROM friend WHERE student_id = 2;
{"sql": "SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.grade
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT friend_id FROM friend)
SELECT T2.profession_id , T2.last_name , T2.cell_phone FROM treatments AS T1 JOIN professionals AS T2 ON T1.profession_id = T2.profession_id WHERE T1.date_of_treatment > 2
SELECT DISTINCT T2.id , T2.last_name , T2.cell_phone FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.professional_id = T2.professional_id JOIN DOG AS T3 ON T1.dog_id = T3.dog_id WHERE T2.state = 'Indiana' OR T1.treatment_type_code = 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = (SELECT max(weight) FROM dogs)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = (SELECT max(weight) FROM Dogs)
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT T1.owner_id , T2.role_code , T1.first_name FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.profession_1_id = T2.profession_id GROUP BY T1.profession_id HAVING COUNT(*) >= 2
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" ORDER BY T2.weight DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.weight DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = (SELECT treatment_type_code FROM Treatments WHERE cost_of_treatment = (SELECT min(cost_of_treatment) FROM Treatments))
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM PROFESSIONS WHERE state = "Hawaii" OR last_name = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'no'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'no'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE City != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship , COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sale_Year = 2010 GROUP BY T1.Name HAVING SUM(T2.Sale_Year) > 300000
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT property_name FROM Properties WHERE property_type_code = "House" OR property_type_code = "Apartment" AND room_count > 1
