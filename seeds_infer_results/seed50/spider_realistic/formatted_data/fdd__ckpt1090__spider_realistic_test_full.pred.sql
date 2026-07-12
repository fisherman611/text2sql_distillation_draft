SELECT Name , Country , Age FROM singer ORDER BY Age DESC LIMIT 10
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.Name , T2.Song_release_year FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age LIMIT 1
SELECT name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
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
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_singer_id = T2.singer_id GROUP BY T1.concent_singer_id
SELECT T2.name , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_singer_id = T2.singer_id WHERE T1.year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name = "Hey"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE pet_age > 10
SELECT t2.weight FROM has_pem AS t1 JOIN pets AS t2 ON t1.petid = t2.petid WHERE t1.stuid = (SELECT min(stuid) FROM has_pem)
SELECT sum(weight) FROM Has_patel WHERE pettype = "dog" AND stuid = (SELECT min(stuid) FROM Has_patel WHERE pettype = "dog")
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_patstag AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pal WHERE pettype = "Dog" AND StuID IN (SELECT StuID FROM Has_pal WHERE pettype = "Dog") AND sex = "F"
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'cat' OR T3.pettype = 'dog'
SELECT DISTINCT T2.Fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'Cat' OR T2.pettype = 'Dog'
SELECT T2.fname , T2.lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.pettype = 'Cat' INTERSECT SELECT T2.fname , T2.lname FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.pettype = 'Dog'
SELECT T2.Fname FROM Has_pem T1 JOIN Student T2 ON T1.StuID = T2.StuID WHERE T1.pettype = 'Cat' INTERSECT SELECT T2.Fname FROM Has_pem T1 JOIN Student T2 ON T1.StuID = T2.StuID WHERE T1.pettype = 'Dog'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID
SELECT T1.Major , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID != 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE petID = 'cat'
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog' AND T3.pemid != 'cat'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.petType = 'dog' EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.petType = 'cat'
SELECT pettype , weight FROM Pets ORDER BY petage ASC LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.petid ORDER BY T1.weight ASC LIMIT 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T1.petid = T3.petid WHERE T3.pettype = "cat" AND T3.pet_age = 3
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T1.petid = T3.petid WHERE T3.pettype = 'cat' AND T3.pem_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID = "null"
SELECT maker , COUNT(*) , fullname FROM car_makers GROUP BY maker
SELECT maker , fullname , count(*) FROM car_makers GROUP BY maker
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.Id JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T3.Maker = T2.Make WHERE T1.Weight < (SELECT AVG(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id JOIN countries AS T3 ON T3.CountryId = T3.CountryId WHERE T3.CountryName = "United States")
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.Model JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T4.CountryName = "United States" AND T3.Maker = "Ford" AND T1.Weight < (SELECT AVG(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id JOIN country AS T3 ON T3.CountryId = T2.CountryId WHERE T3.CountryName = "United States")
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , MAX(year) FROM cars_data GROUP BY maker
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR LIMIT 1)
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" AND T1.Year > 1980
SELECT DISTINCT maker FROM cars_data WHERE YEAR > 1980
SELECT country_name FROM car_makers GROUP BY country_name ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.maker FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.make_id JOIN model_list AS t3 ON t2.Model = t3.Model GROUP BY t1.maker
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Maker
SELECT Accelerate FROM cars_data WHERE Country = 'Amc' AND Model = "Amc Hornet"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = "France"
SELECT count(*) FROM car_makers WHERE country_id = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Contid WHERE T3.CountryName = "United States"
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT MIN(Weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT maker , country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T2.CountryName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryId HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT countryname FROM countries WHERE countryname LIKE '%Europe%' GROUP BY countryname HAVING count(*) >= 3
SELECT countryname FROM countries WHERE countryname LIKE "%Europe%" GROUP BY countryname HAVING count(*) >= 3
SELECT model FROM car_makers JOIN car_names ON car_names.MakeId = car_makers.Id JOIN cars_data ON cars_data.Id = car_name.id GROUP BY model ORDER BY sum(accelerate) DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T4.CountryName = 'United States' GROUP BY T2.Model ORDER BY avg(T1.MGPH) DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT avg(Edispl) FROM cars_data WHERE maker = "Volvo"
SELECT car_name FROM cars_data GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT maker , fullname FROM car_makers WHERE countryId = (SELECT countryId FROM car_makers GROUP BY countryId HAVING count(*) > 3)
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = 'United States' AND id = (SELECT id FROM car_names WHERE make = 'General Motors' OR weight > 3500)
SELECT DISTINCT maker FROM car_makers WHERE country = 'United States' AND weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT accelerate , COUNT(*) FROM cars_data WHERE cylinder_count = (SELECT cylinder_count FROM cars_data WHERE maker = "volvo") GROUP BY accelerator_count ORDER BY accelerator_count ASC LIMIT 1
SELECT count(*) , MIN(accelerate) FROM cars_data WHERE maker = "volvo"
SELECT count(*) FROM car_makers WHERE Country != "United States"
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "General Motors"
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T3.Model = T2.Model JOIN car_makers AS T4 ON T4.Id = T3.ModelId WHERE T4.Maker = "4" GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(MGPE) , id FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980
SELECT model FROM car_list WHERE weight < 3500 EXCEPT SELECT model FROM car_list WHERE maker = 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != "Ford"
SELECT countryid , countryname FROM countries WHERE countryname LIKE '%fiat%' INTERSECT SELECT countryid , countryname FROM car_makers GROUP BY countryid HAVING count(*) > 3
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.Maker = 'Fiat'
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE airline = 'Jetblue Airways'
SELECT airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE airportname = "Anthony"
SELECT T1.airportcode , T1.airpointname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Anthony'
SELECT airline FROM airlines WHERE airline = 'UAL'
SELECT airline FROM airlines WHERE airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT AirportName FROM airports WHERE Country = 'UK' AND AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE Country = 'UK' AND AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = "Aberona"
SELECT AirportName FROM airports WHERE City = 'Aberona'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'ATA'
SELECT count(*) FROM flights WHERE SourceAirport = 'ATA'
SELECT count(*) FROM flights WHERE airline = "Aberon"
SELECT count(*) FROM flights WHERE airline = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberona'
SELECT count(*) FROM flights WHERE airline = "Aberon" AND sourceairport = "Asseys"
SELECT count(*) FROM flights WHERE sourceairport = "Aberport" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE airline = 'JETBEARIE Airways'
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T1.airline = 'United Airlines' AND T2.SourceAirport = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'Aberberen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberport' AND T1.airline = 'United Airlines'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airlines FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT airline FROM flights WHERE flightno = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT airline FROM flights WHERE airline = "CVO" EXCEPT SELECT airline FROM flights WHERE flightno = "APG"
SELECT airline FROM flights WHERE airline = "CVO" EXCEPT SELECT airline FROM flights WHERE sourceairport = "APG"
SELECT FlightNo FROM flights WHERE airline = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE Airline = 'APG'
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberona"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "Abberle" OR T2.airportname = "Abilene"
SELECT count(*) FROM airports WHERE airportname = "Aberona" OR airportname = "Abilene"
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DestAirport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee GROUP BY city HAVING min(age) > 30
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
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.Bonus DESC LIMIT 1
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Teacher_ID = 32 OR Teacher_ID = 33
SELECT Hometown FROM teacher ORDER BY age ASC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T1.Hometown , COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE grade = 'math'
SELECT Name FROM teacher WHERE Grade = "Math"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID WHERE T2.Level_of_membership > 4 ORDER BY T2.Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(t2.total_spex) FROM visit AS t1 JOIN visitor AS t2 ON t1.visitor_id = t2.id WHERE t1.level_of_membership = "lv"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT tourney_name FROM matches WHERE match_num > 10 GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.win_tym_id = 2 AND T2.win_tym_id = 2
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY player_id , birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.name ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT T2.name , T1.name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY T1.minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.country_code HAVING count(*) > 50
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.entry LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'Left' AND T2.tourney_name = 'WTA Championships'
SELECT count(*) FROM ship WHERE id = (SELECT id FROM ship WHERE result = 'captained')
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.d死亡 > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT T1.name , T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.databid WHERE T2.name = "Lettice" AND T2.name = "HMS Atalanta"
SELECT name , result FROM battle WHERE bulgarian_commander != (SELECT bulgarian_commander FROM battle WHERE name = 'English Channel' AND lost_in_battle = 'none')
SELECT course_description FROM COURSES ORDER BY course_description
SELECT course_description FROM DEGREATS WHERE degree_program_id = "math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'New York'
SELECT last_name FROM students WHERE permanent_address_id = (SELECT address_id FROM students WHERE current_address_id = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = (SELECT semester_id FROM student_enrolment ORDER BY date_first_registered ASC LIMIT 1)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_name = 'Graduation' ORDER BY T1.date_first_registered LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , count(*) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanant_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id = 'Master') INTERSECT SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id = 'Bachelor')
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.dust_of_bachelers = 1 AND T1.semester_name = 'Masters'
SELECT first_name FROM students WHERE permanent_address_id = 1 OR cell_phone_number = 09700166582
SELECT first_name FROM students WHERE permanent_address_id = "Haiti" OR cell_phone_number = "09700166582"
SELECT T2.Title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.episode
SELECT title FROM cartoon ORDER BY title ASC
SELECT DISTINCT directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.title = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS t1 JOIN written_by AS t2 ON t1.id = t2.id WHERE t2_written_by = "Joseph Kuhr"
SELECT count(*) FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id WHERE T2.title = "Joseph Kuh"
SELECT Title , Directed_by FROM cartoon ORDER BY Original_air_date
SELECT T2.title , T1.directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel ORDER BY T2.original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Country = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Country = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT series_name FROM TV_series WHERE id = (SELECT id FROM TV_series WHERE title = "The Rise of the Blue Beetle")
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T1.title FROM CARToons AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.country = "Sky Radio"
SELECT T1.title FROM TV_channel AS T1 JOIN cartools AS T2 ON T1.id = T2.channel WHERE T1.channel = "Sky Radio"
SELECT Original_air_date FROM TV_series WHERE Title = "Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT series_name FROM TV_series WHERE channel = (SELECT id FROM TV_channel WHERE content = "Love of a Lifetime")
SELECT series_name FROM TV_channel WHERE content = "Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.language = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT director , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE pixel_aspect_ratio_PAR = "HD"
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.title = "Todd Casey"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T3.Directed_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Content NOT IN (SELECT Content FROM cartoon AS T1 JOIN 2 AS T2 ON T1.channel = T2.channel WHERE T1.title = "Todd Casey")
SELECT Country FROM TV_channel WHERE Country != "Canada" AND id NOT IN (SELECT Channel FROM cartoon WHERE Written_by = "Todd Casey")
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_channel WHERE language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
{"sql": "SELECT id FROM TV_channel WHERE Country = \"United States\" INTERSECT SELECT id FROM TV_channel WHERE Country = \"China\" INTERSECT SELECT id FROM TV_channel WHERE Country = \"Japan\" INTERSECT SELECT id FROM TV_channel WHERE Country = \"India\" INTERSECT SELECT id FROM TV_channel WHERE Country = \"India\" INTERSECT SELECT id FROM TV_channel WHERE Country = \"South America\" INTERSECT SELECT id FROM TV_channel WHERE Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\" AND Country = \"South America\"
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(Earnings) FROM people WHERE Height > 200
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T2.state FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T2.state FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Kelly Clauss'
SELECT name FROM country WHERE indeyear > 1950
SELECT name FROM country WHERE code = 'USA' AND indeleightyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Caribbean'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Carribean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = "Anguilla"
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabba'
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = "Aruba"
SELECT population , 2 FROM country WHERE countrycode = 'BR'
SELECT population , le expectancy FROM country WHERE continent = 'Brazil'
SELECT countrycode , population FROM country WHERE continent = "Anglenet"
SELECT countrycode , population FROM country WHERE continent = 'Anguila'
SELECT avg(lifeexpectancy) FROM country WHERE continent = "Central Africa"
SELECT avg(liveexpectancy) FROM country WHERE countrycode = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' AND (SELECT min(balance) FROM account WHERE countrycode = 'China')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY leasepencs LIMIT 1
SELECT sum(population) , max(gnp) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(live expectancy) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE countrycode = 'Africa' AND countrycode = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(t1.surfacearea) FROM country AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t1.region = 'Asia' OR t1.region = 'Europe'
SELECT sum(T1.SurfArea) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE name = "Gelderland"
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT count(DISTINCT governmentform) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE language = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AF'
SELECT name FROM country WHERE continent = 'Europe' ORDER BY population DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Percentage = (SELECT max(Percentage) FROM countrylanguage)
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryGROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.language = T3.language WHERE T1.region = "English" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.language = T3.language WHERE T1.region = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode JOIN country AS T3 ON T2.Language = T3.Language WHERE T3.Name = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode JOIN country AS T3 ON T2.Language = T3.Language WHERE T3.Name = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.industry = "English" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.industry = "French"
SELECT name FROM country WHERE name = "English" INTERSECT SELECT name FROM countrylanguage WHERE name = "French"
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT count(*) FROM country WHERE continent = "Asia" AND name = "Chinese"
SELECT district FROM city JOIN countrylanguage ON city.countrycode = countrycode JOIN country ON countrycode.id = country.id WHERE language = "english" OR language = "dutch"
SELECT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T1.district = T3.district WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT language FROM countrylanguage WHERE countrycode = 'Asia' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage WHERE language = 'United States' GROUP BY language ORDER BY count(*) DESC LIMIT 1)
SELECT language FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage WHERE language = 'United States' GROUP BY language HAVING count(*) = 1)
SELECT city FROM city JOIN countrylanguage ON countrycode = 'USA' WHERE language = 'English' GROUP BY city ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE population = (SELECT max(population) FROM city WHERE language = "english")
SELECT name , population , avg(lifeexpectancy) FROM country WHERE continent = 'Asia' GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT avg(liveexpectancy) FROM countrylanguage WHERE language != "english"
SELECT avg(live expectancy) FROM countrylanguage WHERE language != "english"
SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT language FROM countrylanguage WHERE countrycode = "Beatrix"
SELECT T2.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T1.countrycode = T3.countrycode WHERE T3.name = 'Beatrix'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND indepyear = 1) AND countrycode = 'USA' AND indepyear > 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND indeyear < 1930
SELECT countrycode FROM country WHERE surfacetarea > (SELECT max(surfacetarea) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE continent = "Europe" EXCEPT SELECT countrycode FROM country WHERE continent = "Europe"
SELECT countrycode FROM country WHERE continent = 'Africa' AND population < (SELECT max(population) FROM country WHERE region = 'Asia')
SELECT countrycode FROM country WHERE continent = 'Africa' INTERSECT SELECT countrycode FROM country WHERE continent = 'Asia' AND population < (SELECT min(population) FROM country)
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country WHERE name != "english"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM country WHERE name != "English" GROUP BY countrycode
SELECT countrycode FROM country WHERE countryname NOT LIKE '%english%' GROUP BY countrycode
SELECT countrycode FROM country WHERE region != "United States" AND name != "United States" AND countrycode != "United States"
SELECT code FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT name FROM city WHERE countrycode = "Europe" AND name NOT IN (SELECT name FROM city WHERE language = "English")
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.industry = 'Chinese' AND T1.region = 'Asia'
SELECT DISTINCT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.indpyear = 2000 AND T1.continent = 'Asia' AND T2.indpyear = 2000
SELECT name , independence_year , surfacearea FROM country ORDER BY population LIMIT 1
SELECT name , independenceyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT population , name , leader FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT count(*) , district FROM city GROUP BY district HAVING max(population) > (SELECT avg(population) FROM city)
SELECT count(*) , district FROM city GROUP BY district HAVING max(population) > (SELECT avg(population) FROM city)
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM city ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(population) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.CountryCode ORDER BY sum(Percentage) DESC LIMIT 1
SELECT countrycode , language FROM countrylanguage GROUP BY countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT sum(percentage) FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
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
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE friend_id = 2
SELECT student_id FROM friends WHERE student_id = 'Kyle'
SELECT count(*) FROM Highschooler WHERE grade = "9" OR grade = "10"
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT T1.year FROM highschooler AS T1 JOIN highschooler AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 2000000000
SELECT count(*) FROM friend WHERE student_id = 1;
{"sql": "SELECT count(*) FROM friend WHERE student_id = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT professional_id , last_name , cell_phone FROM professionals WHERE state = "Indiana" OR DATE_OF_TREME > 2
SELECT T1.professional_id , T1.last_name , T1.cell_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.state = "Indiana" OR T2.treatment_type_code = "2"
SELECT T2.name FROM treatment_types AS T1 JOIN treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.treatment_type_code = "Treatment" AND T2.cost_of_treatment > 1000
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.weight = (SELECT max(weight) FROM Dogs)
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT t1.owner_id , t2.role_code , T1.first_name FROM treatments AS t1 JOIN professionals AS t2 ON t1.profession_id = t2.profession_id GROUP BY t1.profession_id HAVING count(*) >= 2
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code = (SELECT treatment_type_code FROM Treatments ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT T2.owner_id , T2.zip_code FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id ORDER BY cost_of_treatment DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth > (SELECT max(date_of_birth) FROM Dogs)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = (SELECT treatment_type_code FROM Treatments GROUP BY treatment_type_code HAVING avg(weight) < (SELECT avg(weight) FROM Treatments)) ORDER BY T1.first_name DESC LIMIT 1;
SELECT T2.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T2.first_name , T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = "unknown" AND T1.date_of_birth = "2000-01-00" AND T2.state = "Virginia"
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM PROFESSIONS WHERE state = "Hawaii" OR last_name = "Wisconsin"
SELECT email_address FROM PROFESSIONS WHERE last_name = "Hawaii" OR first_name = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'no'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'no'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizens != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year = 1948 OR T1.birth_year = 1949
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year > 300000
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT property_name FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE room_count > 1) UNION SELECT property_name FROM Properties WHERE property_type_code = 'Apartment'
