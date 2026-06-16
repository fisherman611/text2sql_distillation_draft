SELECT Name , Country , Age FROM singer ORDER BY Age DESC LIMIT 10
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T2.theme , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.theme
SELECT T2.name , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id WHERE T2.concentment_year = 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.concent.YEAR = 2014
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name = 'Hey'
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE pet_age > 10
SELECT T2.weight FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT min(stuid) FROM Has_pem)
SELECT sum(weight) FROM Has_pet WHERE pet_age = (SELECT max(pet_age) FROM has_pet)
SELECT count(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pod AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(*) FROM Has_pod AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Cat' OR T3.pettype = 'Dog'
SELECT T1.fname , T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID = "cat" INTERSECT SELECT T1.fname , T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID = "dog"
SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Cat' INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Dog'
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE petType = 'cat')
SELECT T2.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T2.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID = 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = 'cat'
SELECT Fname , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pem WHERE pettype = 'dog') AND StuID NOT IN (SELECT StuID FROM Has_pem WHERE pettype = 'cat')
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 2 AND PetType = 'dog') EXCEPT SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 2 AND PetType = 'cat')
SELECT pettype , weight FROM Pets ORDER BY weight ASC LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemus WHERE petid = (SELECT petid FROM Has_pemus ORDER BY weight LIMIT 1) GROUP BY pettype
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T1.petid = T3.petid WHERE T3.pemtype = 'cat' AND T3.pemtype = 3
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T3.petid = T1.petid WHERE T3.pettype = 'cat' AND T3.pem_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT maker , COUNT(*) , fullname FROM car_makers GROUP BY maker
SELECT T1.Maker , T1.FFullName , count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , MIN(year) FROM cars_data WHERE id = (SELECT id FROM cars_data ORDER BY year ASC LIMIT 1)
SELECT maker , YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT DISTINCT T3.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Id = T3.Id WHERE T1.Year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT country_name FROM car_makers GROUP BY country_name ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.FFullName FROM car_makers AS t1 JOIN car_names AS t2 ON t1.Id = t2.Model JOIN cars_data AS t3 ON t2.MakeId = t3.Id GROUP BY t1.Maker
SELECT count(*) , T1.Maker , T1.FULL_NAME FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Maker
SELECT Accelerate FROM cars_data WHERE Country = 'Amc' AND Maker = 'Amc Hornet'
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T2.CountryName = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = "United States"
SELECT avg(MGP) FROM cars_data WHERE Cylinders = 4
SELECT T1.MGPA FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_names AS T3 ON T3.Model = T2.Model WHERE T3.Make = "1974" GROUP BY T1.MGPA ORDER BY T1.MGPA ASC LIMIT 8
SELECT maker , country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE countryname = 'Europe' GROUP BY countryname HAVING count(*) >= 3
SELECT countryname FROM countries WHERE countryname LIKE "%Europe%" GROUP BY countryname HAVING count(*) >= 3
SELECT model FROM car_makers JOIN car_names ON car_names.MakeId = car_makers.Id JOIN cars_data ON cars_data.Id = car_names.Id GROUP BY model ORDER BY sum(accelerate) DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T4.CountryName = 'United States' GROUP BY T2.Model ORDER BY avg(T1.MGPH) DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Country = "VOLLE"
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT maker , fullname FROM car_makers WHERE country_id = (SELECT country_id FROM car_makers GROUP BY country_id HAVING count(*) > 3)
SELECT maker , COUNT(*) FROM car_makers GROUP BY maker HAVING COUNT(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE maker = "General Motors" OR weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE countryid = 2 AND mpg > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT accelerate , COUNT(*) FROM cars_data WHERE cylinder_count = (SELECT min(cylinders) FROM cars_data WHERE maker = "volvo")
SELECT count(*) , MIN(acceleration) FROM cars_data WHERE id = (SELECT id FROM cars_data WHERE maker = "volvo")
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries)
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT T1.Model , T2.Horsepower FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 4 GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT max(MGPL) , id FROM cars_data WHERE Cylinders = 8 OR id < 1980
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != "Ford"
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FNAME = 'fiest'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FFullName = 'Fiat'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE airportname LIKE '%Anthony%'
SELECT T2.airportcode , T2.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Anthony"
SELECT airline FROM airlines WHERE airline = 'UAL'
SELECT airline FROM airlines WHERE airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT AirportName FROM airports WHERE Country = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT AirportName FROM airports WHERE City = "Aberona"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE sourceairport = 'ATA'
SELECT count(*) FROM flights WHERE airline = 'ATA' AND flightno = 'ATOP'
SELECT count(*) FROM flights WHERE airline = "Aberon"
SELECT count(*) FROM flights WHERE airline = "Aberport Airports Group"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = "Aberport"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberport' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = "Aberport" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE airline = 'JETBL Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines' AND T2.city = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights WHERE airline = "United Airlines" AND FlightNo = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.airline WHERE T3.airline = 'United Airlines' AND T2.airportname = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines' AND T2.city = 'Aberona'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT airline FROM flights WHERE airline = "CVO" EXCEPT SELECT airline FROM airlines WHERE airline = "APG"
SELECT airline FROM flights WHERE FlightNo = 'CVO' EXCEPT SELECT airline FROM airlines WHERE AirportCode = 'APG'
SELECT FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT count(*) FROM flights WHERE sourceairport = 'Abilene' OR destinationairport = 'Aberona'
SELECT count(*) FROM airports WHERE airportname = 'Aberport' OR airportname = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DostAirport FROM flights)
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee GROUP BY city HAVING min(age) > 30
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1
SELECT manager_name , district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.Bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.Bonus DESC LIMIT 1
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT name FROM teacher ORDER BY age DESC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Teacher_ID = 32 OR Teacher_ID = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT T1.hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T1.hometown , count(*) FROM teacher AS T1 GROUP BY T1.hometown
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING count(*) >= 2
SELECT name FROM teacher WHERE name = "Math"
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course_Name = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID WHERE T2.Level_of_membership > 4 ORDER BY T2.Level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T1.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.total_spex) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = "lv"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.wider_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR BETWEEN 2013 AND 2016
SELECT count(*) FROM matches WHERE YEAR BETWEEN 2013 AND 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.writer_age = 2000 AND T2.writer_entry = 2000 AND T2.writer_id = T2.loser_id
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY player_id ASC
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY player_id ASC
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.name ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT T1.name , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.name ORDER BY T1.minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.match_num LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" AND hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "Left" AND T2.tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE id = (SELECT id FROM ship WHERE result = 'Yes' )
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.d死了 > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT T2.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_bATTLE WHERE T2.name = "Lettice" AND T2.name = "HMS Atalanta"
SELECT name , result FROM battle WHERE bulgarian_commander = "null" AND name NOT IN (SELECT name FROM ship WHERE lost_in_battle = "English Channel")
SELECT department_description FROM DEPT_DESCRIPTION
SELECT course_description FROM COURSE WHERE degree_program_id = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permient_address_id = T2.address_id WHERE T2.state_province_county = 'New York'
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id JOIN departments AS T3 ON T3.department_id = T1.department_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T1 JOIN students AS T2 ON T1.current_address_id = T2.current_address_id JOIN degree_programs AS T4 ON T4.degree_program_id = T2.degree_program_id
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = degree_program_id AND T2.semester_id = 1 ORDER BY T2.student_id ASC
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = (SELECT max(semester_id) FROM student_enrolment)
SELECT T1.address_id , T1.line_1 , T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanant_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Master' INTERSECT SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Bachelor'
SELECT T2.semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Master's' INTERSECT SELECT T2.semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Bachelers'
SELECT first_name FROM students WHERE permanent_address_id = 'Haiti' OR cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE permanent_address_id = 1 OR cell_phone_number = 09700166582
SELECT Title FROM cartoon ORDER BY Title
SELECT title FROM cartoon ORDER BY title ASC
SELECT DISTINCT Directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.title = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuh"
SELECT Title , Directed_by FROM cartoon ORDER BY Original_air_date
SELECT T2.Title , T1.Directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id ORDER BY T2.original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vieti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Country = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Country = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT series_name FROM TV_series WHERE id = (SELECT id FROM TV_series WHERE title = "The Rise of the Blue Beetle")
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM TV_channel AS T1 JOIN cartools AS T2 ON T1.id = T2.channel WHERE T1.country = "Sky Radio"
SELECT Original_air_date FROM TV_series WHERE Title = "Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "Love of a Lifetime"
SELECT series_name FROM TV_series WHERE channel = (SELECT id FROM TV_channel WHERE content = "Love of a Lifetime")
SELECT series_name FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.country = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE pixel_aspect_ratio_PAR = "HD"
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN tv_series AS T3 ON T2.id = T3.id WHERE T3.Series_name = "Todd Casey" AND T2.Content = "Written_by"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.direction = "Todd Casey"
SELECT country FROM TV_channel WHERE content != "Todd Casey"
SELECT Country FROM TV_channel WHERE Country != "United States" AND id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT series_name , country FROM TV_channel WHERE Content = "Ben Jones and Michael Chang directed"
SELECT series_name , Country FROM TV_channel WHERE Content = "Ben Jones" INTERSECT SELECT series_name , Country FROM cartoon WHERE Content = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != 'English'
SELECT id FROM TV_channel WHERE Country = "United States" UNION SELECT id FROM TV_channel WHERE Country = "China" AND count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT state FROM votes WHERE contestant_number = (SELECT contestant_number FROM votes WHERE candidate_number = 'Tabatha Gehling) INTERSECT SELECT state FROM votes WHERE contestant_number = (SELECT contestant_number FROM votes WHERE candidate_number = 'Kelly Clauss')
SELECT name FROM country WHERE indeleightyear > 1950
SELECT name FROM country WHERE indeleightyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surface_area) FROM country WHERE continent = 'Carribean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabby'
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT population , le expectancy FROM country WHERE countrycode = 'BR';
SELECT population , 500 FROM country WHERE countrycode = 'BR';
SELECT countrycode , population FROM country WHERE continent = "Anguila"
SELECT countrycode , population FROM country WHERE continent = 'Anglenext' AND region = 'Anglenext'
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' AND row_count = 1 AND row_count = (SELECT min(row_count) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE countrycode = 'Africa' AND countrycode = 'Republic'
SELECT avg(life expectancy) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM country WHERE countrycode = 'GEL'
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT type) FROM countrylanguage WHERE countrycode = "Africa"
SELECT count(DISTINCT governmentform) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT sum(percent) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE language = "Afghanistan"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY sum(percentage) DESC LIMIT 1
SELECT countryname FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryGROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.indpyear = 'English' INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.indpyear = 'French'
SELECT name FROM country WHERE countrycode = 'France' INTERSECT SELECT name FROM country WHERE countrycode = 'England'
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = "Chinese"
SELECT continent FROM country WHERE name = 'Chinese' GROUP BY continent HAVING count(*) = 1
SELECT DISTINCT district FROM city JOIN countrylanguage ON city.countrycode = countrycode WHERE language = "English" OR language = "Dutch"
SELECT DISTINCT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T1.district = T3.district WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT language FROM countrylanguage WHERE countrycode = 'Asia' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage WHERE language = 'United States' GROUP BY language HAVING count(*) = 1)
SELECT language FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE countrycode != "United States")
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) ORDER BY name LIMIT 1
SELECT name FROM city WHERE countrycode = "United States" AND language = "English" ORDER BY population DESC LIMIT 1
SELECT name , population , avg(lifeexpectancy) FROM country WHERE continent = 'Asia' GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT avg(live expectancy) FROM countrylanguage WHERE language != "english"
SELECT avg(live expectancy) FROM countrylanguage WHERE language != "english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT name FROM countrylanguage WHERE official_language = "Beatrix"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND countrycode IN (SELECT countrycode FROM countrylanguage WHERE indepyear < 1930))
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND indeyear < 1930
SELECT countrycode FROM country WHERE surfacat > (SELECT max(surfacat) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE continent = "Europe" EXCEPT SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = "Europe")
SELECT countrycode FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT countrycode FROM country WHERE continent = 'Africa' AND population < (SELECT max(population) FROM country WHERE region = 'Asia')
SELECT countrycode FROM country WHERE continent = 'Asia' INTERSECT SELECT countrycode FROM country WHERE continent = 'Africa' GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country WHERE name != "english"
SELECT countrycode FROM country WHERE name != "english"
SELECT countrycode FROM country WHERE name != "English" GROUP BY countrycode
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT countrycode FROM country WHERE name != "United States" AND name != "Republic" AND countrycode != "United States" AND countrycode != "Republic"
SELECT countrycode FROM country WHERE region != "Republic" AND language != "English"
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "English"
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.indpyear = '2000' AND T2.indfname = 'Chinese' AND T2.region = 'Asia'
SELECT DISTINCT name FROM city AS T1 JOIN country AS T2 ON T1.id = T2.countrycode JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE t2.region = 'Asia' AND t3.indelfname = 'Chinese'
SELECT name , independence_year , surfacearea FROM country ORDER BY population LIMIT 1
SELECT name , independence_year , surface_area FROM country ORDER BY population LIMIT 1
SELECT population , name , leader FROM country WHERE continent = "Asia" ORDER BY population DESC LIMIT 1
SELECT count(*) , T1.district FROM city AS T1 JOIN city AS T2 ON T1.district = T2.district WHERE T1.population > (SELECT avg(population) FROM city) GROUP BY T1.district
SELECT district , count(*) FROM city GROUP BY district HAVING sum(population) > (SELECT avg(population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = 'North America' AND countrycode = 'USA' AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT T1.language , T2.countrycode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT countrycode , language FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT sum(percentage) FROM countrylanguage WHERE language = "Spanish"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage WHERE language = "Spanish") GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY age DESC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Orchestra FROM orchestra GROUP BY Orchestra ORDER BY YEAR_of_Founded ASC
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Major_Record_Format = "CD" OR T1.Major_Record_Format = "DVD"
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE friend_id = 1 AND student_id = 1
SELECT student_id FROM friends WHERE student_id = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM Highschooler WHERE grade = 'Highschool' GROUP BY YEAR
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT date FROM highschooler WHERE grade = "Highschooler" GROUP BY date ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T1.friend_id = 1
SELECT count(*) FROM friend WHERE student_id = 1
{"sql": "SELECT count(*) FROM friend WHERE student_id = 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM likes WHERE student_id = 1
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.grade
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(grade) FROM highschooler WHERE friend_id IN (SELECT student_id FROM friend)
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT professional_id , last_name , cell_phone FROM professionals WHERE state = 'Indiana' OR SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2
SELECT T2.professional_id , T2.last_name , T2.cell_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.state = "Indiana" OR T1.treatment_type_code = "2"
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = (SELECT max(weight) FROM Dogs)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = (SELECT max(weight) FROM Dogs)
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT T1.owner_id , T2.role_code , T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" ORDER BY T2.weight DESC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '10/10/2012' GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = (SELECT treatment_type_code FROM Treatments WHERE cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE average_expensive_in_average_expensive_in_average_of_treatment_1_2_3_4_5_6_7_8_9_10_11_12_13_14_15_16_17_18_19_20_21_22_23_24_25_26_27_28_29_30)
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age ASC LIMIT 1
SELECT email_address FROM PROFESSIONALS WHERE state = "Hawaii" OR last_name = "Wisconsin"
SELECT email_address FROM PROFESSIONS WHERE first_name = "Hawaii" OR last_name = "Wisconsin"
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'no'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'no'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizens != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Birth_Year = 1948 OR T2.Birth_Year = 1949
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year = 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT property_name FROM Properties WHERE property_type_code = "Apartment" OR property_type_code = "House" AND room_count > 1
