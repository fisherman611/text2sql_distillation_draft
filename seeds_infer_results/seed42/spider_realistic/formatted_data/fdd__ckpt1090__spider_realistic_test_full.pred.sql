SELECT name , country , age FROM singer ORDER BY age DESC LIMIT 10
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.Name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T1.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.year = 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.year = 2014
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name = 'Hey'
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE "%Hey%"
SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T1.name , T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Has_pem WHERE weight > 10
SELECT count(*) FROM Has_pem WHERE pet_age > 10
SELECT t2.weight FROM has_pet AS t1 JOIN pets AS t2 ON t1.petid = t2.petid WHERE t1.stuid = (SELECT stuid FROM has_pet WHERE petid = (SELECT petid FROM has_pet WHERE pettype = 'dog' ORDER BY weight LIMIT 1) AND t1.stuid = (SELECT stuid FROM has_pet WHERE petid = (SELECT petid FROM has_pet WHERE pettype = 'dog' ORDER BY weight LIMIT 1)) ORDER BY t1.stuid DESC LIMIT 1;
SELECT sum(weight) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = "dog" AND T2.pemid = (SELECT min(pemid) FROM Has_pemid)
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(*) FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Cat' OR T3.pettype = 'Dog'
SELECT T2.Fname FROM Has_pet AS T1 JOIN student AS T2 ON T1.StuID = T2.StuID WHERE T1.pettype = 'cat' OR T1.pettype = 'dog'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'cat' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Has_Pet AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'Dog'
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE petID = 'cat')
SELECT T1.major , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID != 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE petID = 'cat'
SELECT T2.fname , T2.age FROM Has_pem_tst AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID WHERE T1.petID = 'dog' EXCEPT SELECT T2.fname , T2.age FROM Has_pem_tst AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID WHERE T1.petID = 'cat'
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = 'dog') EXCEPT SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = 'cat')
SELECT pettype , weight FROM Pets ORDER BY pet_age , weight LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemet AS T1 JOIN Pets AS T2 ON T1.petid = T2.pemid JOIN StuID AS T3 ON T1.stuid = T3.stuid WHERE T2.pemid = T2.pemid GROUP BY T1.petid ORDER BY T2.pemid ASC LIMIT 1
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT T2.lname FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid WHERE T2.pettype = 'cat' AND T2.petage = 3
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T1.petid = T3.petid WHERE T3.pettype = 'cat' AND T3.pet_age = 3
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID = "NULL"
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT maker , COUNT(*) , fullname FROM car_makers GROUP BY maker
SELECT maker , COUNT(*) FROM car_makers GROUP BY maker
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T3.Weight < (SELECT avg(T3.Weight) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , max(accelerate) FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data) GROUP BY maker
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1)
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" AND T3.Year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT country_name FROM car_makers GROUP BY country_name ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.FFullName , t1.Maker FROM car_makers AS t1 JOIN car_names AS t2 ON t1.Id = t2.Model JOIN car_makers AS t3 ON t3.Id = t3.Maker GROUP BY t1.Maker
SELECT count(*) , maker , maker_name FROM car_makers GROUP BY maker
SELECT Accelerate FROM cars_data WHERE Country = "Amc" AND Model = "Amc hornet"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2.continent = T3.continent WHERE country_name = "France"
SELECT count(*) FROM car_makers WHERE country_id = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2.Continent = T3.Contid WHERE T3.Continent = 'United States'
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT maker , country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT countryname FROM countries WHERE continent = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT T2.CountryName FROM country AS T1 JOIN country_list AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T2.CountryName HAVING count(*) >= 3
SELECT model FROM car_makers JOIN car_names ON car_names.MakeId = car_makers.Id JOIN cars_data ON cars_data.Id = car_name.Model GROUP BY model ORDER BY sum(accelerate) DESC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" ORDER BY T1.MGPTDESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLBY"
SELECT avg(Edispl) FROM cars_data WHERE maker = "Volvo"
SELECT car_name FROM cars_data GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T3.countryid = T1.country WHERE countryname = "American Motor Company"
SELECT maker , fullname FROM car_makers WHERE country = 'United States' GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T1.Maker = "General Motors" OR T3.Weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE country_id = 'United States' AND weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
{"sql": "SELECT accelerate , count(*) FROM cars_data WHERE cylinder_count = (SELECT min(cylinders) FROM cars_data WHERE maker = \"volvo")"}
SELECT count(*) , MIN(acceleration) FROM cars_data WHERE maker = "volle"
SELECT count(*) FROM car_makers WHERE country != 'United States'
SELECT count(*) FROM car_makers WHERE maker != "Apple" AND maker != "Apple Car"
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = 'Ford' GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT max(MGPA) , id FROM cars_data WHERE Cylinders = 8 AND YEAR < 1980 GROUP BY id
SELECT model FROM car_makers WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makes WHERE maker = 'Ford'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 UNION SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.FName = 'fiest'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FName = 'Fiat'
SELECT Country FROM airlines WHERE airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE airline = "Jetblue Airways"
SELECT airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airline , Abbreviation FROM airlines WHERE Country = 'USA'
SELECT airportcode , airportname FROM airports WHERE airportname = "Anthony"
SELECT T2.airportcode , T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.FlightNo = 'Anthony'
SELECT airline FROM airlines WHERE airline = "UAL"
SELECT airline FROM airlines WHERE airline = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT AirportName FROM airports WHERE Country = 'AKO'
SELECT AirportName FROM airports WHERE Country = 'UK' AND AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'ATA'
SELECT count(*) FROM flights WHERE airline = 'ATA' AND flightno = 'ATOP'
SELECT count(*) FROM flights WHERE airline = "Aberon"
SELECT count(*) FROM flights WHERE airline = "Aberon"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberona'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Aberport" INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "Abberle" AND T1.destairport = "Ashley"
SELECT count(*) FROM flights WHERE airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.airportname = 'United Airlines' AND T2.country = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = 'United Airlines' AND T1.departairport = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.uid WHERE T3.Airline = 'United Airlines' AND T2.AirportName = 'Abberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T1.Airline = 'United Airlines'
SELECT T1.airlines FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airleigh = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.departairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.departairport = 'CVO'
SELECT airline FROM flights WHERE airline = "CVO" EXCEPT SELECT airline FROM flights WHERE flightno = "APG"
SELECT airline FROM flights WHERE flightno = "CVO" EXCEPT SELECT airline FROM airlines WHERE airportcode = "APG"
SELECT FlightNo FROM flights WHERE airline = "United Airlines"
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberona"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport' OR sourceairport = 'Abilene'
SELECT count(*) FROM airports WHERE airportname = 'Aberdeen' OR airportname = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DstAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT SourceAirport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee GROUP BY city HAVING count(*) > 3
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop GROUP BY district ORDER BY count(*) DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN evaluation AS T3 ON T1.shop_id = T3.shop_id ORDER BY T3.Bonus DESC LIMIT 1
SELECT name FROM evaluation ORDER BY bonus DESC LIMIT 1
SELECT name FROM shop WHERE shop_id IN (SELECT shop_id FROM hiring GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
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
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Grade LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.hometown , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.hometown
SELECT T1.hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.hometown ORDER BY count(*) DESC LIMIT 1
SELECT T2.hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = 'Math'
SELECT Name FROM teacher WHERE Name = 'Math'
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.Museum_ID , T2.Name , T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID GROUP BY T1.visitor_id HAVING COUNT(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 'lv'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT t1.first_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.loser_id WHERE t2.year = 2013 INTERSECT SELECT t1.first_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.loser_id WHERE t2.year = 2016
SELECT count(*) FROM matches WHERE YEAR BETWEEN 2013 AND 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.want_to_be_champions = 1 AND T1.want_to_be_a_wa_champions = 1)
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY hand - birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY player_id ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY player_id ASC
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.name ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT T1.name , T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY round , minutes DESC LIMIT 1
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.earlier DESC LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "Left" AND T2.tourney_name = "WTA Championships"
SELECT count(*) FROM ship WHERE id = (SELECT id FROM ship WHERE result = 'Captured')
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T2.d死亡 > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT name , date FROM battle WHERE result = 'loss' AND name = 'Lettice' OR name = 'HMS Atalanta'
SELECT T1.bulgarian_commander , T2.result FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.location = 'English Channel' EXCEPT SELECT T3.bulgarian_commander , T3.result FROM battle AS T3 JOIN ship AS T4 ON T3.id = T4.lost_in_battle WHERE T4.location = 'Other'
SELECT department_description FROM DEPT_PROGрамы WHERE degree_summary_name = 'math'
SELECT course_description FROM COURSES WHERE course_name = 'Math'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM students WHERE state_province_county = 'North Carolina') EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT last_name FROM students WHERE permanent_address_id = "North Carolina" AND student_id NOT IN (SELECT student_id FROM student_enrolment_degree_programs)
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Master of Business and Economics" ORDER BY T1.date_left ASC LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = (SELECT min(semester_id) FROM student_enrolment)
SELECT T1.address_id , T1.line_1 , T1.line_2 , T1.line_3 , count(*) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanant_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 1 AND T1.student_id = 2
SELECT T2.semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Master's' INTERSECT SELECT T2.semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Bachelers'
SELECT first_name FROM students WHERE permanent_address_id = 'Haiti' OR cell_mobile_number = 09700166582
SELECT first_name FROM students WHERE permanent_address_id = (SELECT permanent_address_id FROM students WHERE cell_mobile_number = 09700166582)
SELECT T1.title FROM CARTON AS T1 JOIN TV_SERESAS AS T2 ON T1.channel = T2.channel ORDER BY T1.title
SELECT T1.Title FROM CARTON AS T1 JOIN TV_SERACTION AS T2 ON T1.Channel = T2.Channel ORDER BY T1.Title
SELECT DISTINCT directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T1.title = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.direction = 'Joseph Kuhr'
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = 'Joseph Kuh'
SELECT Title , Directed_by FROM cartoon ORDER BY Original_air_date
SELECT T1.title , T2.Directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id ORDER BY T2.original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Channel = "Sky Radio"
SELECT Content FROM TV_channel WHERE Country = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Country = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT series_name FROM TV_series WHERE id = (SELECT id FROM TV_series WHERE title = "The Rise of the Blue Beetle")
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T1.Title FROM CARToons AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Country = "Sky Radio"
SELECT T1.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.country = "Sky Radio" AND T1.series_name = "Cartoon"
SELECT Original_air_date FROM TV_series WHERE Title = "Love of a Lifetime"
SELECT air_date FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT series_name FROM TV_series WHERE id = (SELECT id FROM TV_channel WHERE content = "Love of a Lifetime")
SELECT series_name FROM TV_series WHERE series_name = "Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Country = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE pixel_aspect_ratio_PAR = "HD"
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HDTV"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.title = "Todd Casey"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T3.Directed_by = 'Todd Casey'
SELECT country FROM TV_channel WHERE content NOT IN (SELECT content FROM cartoon AS T1 JOIN 2 AS T2 ON T1.channel = T2.channel WHERE written_by = "Todd Casey")
SELECT Country FROM TV_channel WHERE Country != "United States" AND written_by = "Todd Casey"
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT series_name , country FROM TV_channel WHERE Content = "Ben Jones" INTERSECT SELECT series_name , country FROM cartoon WHERE Content = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Country != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" INTERSECT SELECT id FROM TV_channel WHERE Country = "United States" GROUP BY Country HAVING count(*) > 2
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
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT created FROM votes WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT created , state , phone_number FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT name FROM country WHERE indeyear > 1950 GROUP BY countrycode
SELECT name FROM country WHERE indeleightyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(surfacearea) FROM country WHERE continent = 'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent = 'Carribean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = "Anguilla"
SELECT district FROM city WHERE name = 'Kabba'
SELECT district FROM city WHERE name = 'Kabby'
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN city AS T3 ON T1.CountryCode = T3.CountryCode WHERE T3.District = 'Aruba' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT population , le expectancy FROM country WHERE countrycode = 'BR'
SELECT population , residence_from , residence_to FROM city WHERE countrycode = 'BR';
SELECT countrycode , population FROM country WHERE continent = 'Anglenext'
SELECT countrycode , population FROM country WHERE continent = 'Anguila'
SELECT avg(live expectancy) FROM country WHERE continent = 'Central Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' AND (SELECT min(balance) FROM account WHERE countrycode = 'China')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY 3 LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(live expectancy) FROM country WHERE countrycode = 'African' AND countrycode = 'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(T2.SurfaceArea) FROM country AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Cont Continent = 'Asia' OR T1.CountryCode = 'Europe'
SELECT sum(t1.surfacearea) FROM country AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t1.region = 'Asia' OR t1.region = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM country AS t1 JOIN city AS t2 ON t1.id = t2.countrycode WHERE t1.name = "Gelderland"
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT avg(population) , sum(population) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT type) FROM countrylanguage WHERE countrycode = "Africa"
SELECT count(DISTINCT governmentform) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT name FROM country WHERE region = "United States" AND continent = "United States" ORDER BY population DESC LIMIT 1
SELECT countrycode FROM countrylanguage GROUP BY countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.indisofficial = 'yes' INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.indisofficial = 'no'
SELECT name FROM country WHERE countrycode = 'FR' OR name = 'en'
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT continent FROM country WHERE name = 'Chinese' GROUP BY continent HAVING count(*) > 1
SELECT DISTINCT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T1.countrycode = T3.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T1.district = T3.district WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE percentage = 1 GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage EXCEPT SELECT language FROM city
SELECT name FROM city WHERE countrycode = "US" AND population = (SELECT max(population) FROM city WHERE countrycode = "US")
SELECT name FROM city WHERE countrycode = "United States" AND language = "English" ORDER BY population DESC LIMIT 1
SELECT name , population , avg(lifeexpectancy) FROM country WHERE continent = 'Asia' GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT avg(lathefex) FROM countrylanguage WHERE language != "english"
SELECT avg(live expectancy) FROM countrylanguage WHERE language != "english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT T2.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T1.countrycode = T3.countrycode WHERE T3.name = 'Beatrix'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'yes' AND T2.language = "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND countrycode IN (SELECT countrycode FROM countrylanguage WHERE indepyear < 1930))
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND indeyear < 1930
SELECT countrycode FROM country WHERE surfacarearea > (SELECT max(surfacarearea) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE continent = "Europe" EXCEPT SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE region = "Europe")
SELECT countrycode FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT countrycode FROM country WHERE continent = 'Africa' INTERSECT SELECT countrycode FROM country WHERE continent = 'Asia' GROUP BY countrycode ORDER BY population LIMIT 1
SELECT countrycode FROM country WHERE continent = 'Asia' INTERSECT SELECT countrycode FROM country WHERE continent = 'Africa' GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT countrycode FROM country WHERE continent = 'Asia' INTERSECT SELECT countrycode FROM country WHERE continent = 'Africa' AND population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE name != "english"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM country WHERE name != "English" GROUP BY countrycode
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT countrycode FROM country WHERE region != "United States" AND countrycode != "Republic" AND name != "United States"
SELECT code FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "english"
SELECT DISTINCT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.region = 'Asia' AND T2.indpyear = '2000' AND T2.official = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.region = 'Asia' AND T3.indistendyear = 2000 AND T3.indistendyear = 2000 AND T3.indistendyear = 2000
SELECT name , independence_year , surfacearea FROM country ORDER BY population LIMIT 1
SELECT name , independenceyear , surfacearea FROM country ORDER BY population LIMIT 1
SELECT population , name , head_of_state FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT count(*) , district FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
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
SELECT sum(population) , avg(surfarea) FROM country WHERE continent = 'North America' AND countrycode = 'US'
SELECT sum(population) , avg(population) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT name FROM city WHERE population > 160000 AND population < 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language , T1.CountryCode , max(T1.Population) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode
SELECT countrycode , language FROM countrylanguage GROUP BY countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT sum(count(*)) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE language = 'Spanish' GROUP BY T1.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = 'Spanish'
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY age DESC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Orchestra FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE orchestra = "CD" OR orchestra = "DVD"
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE friend_id = 2;
SELECT student_id FROM friends WHERE student_id = 2;
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , YEAR FROM Highschooler WHERE grade = 'Highschool' GROUP BY YEAR
SELECT count(*) , YEAR FROM Highschooler GROUP BY YEAR
SELECT T1.year FROM highschooler AS T1 JOIN highschooler AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T1.friend_id = 1
SELECT count(*) FROM friend WHERE student_id = 2;
{"sql": "SELECT count(*) FROM friend WHERE student_id = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
{"sql": "SELECT count(*) FROM likes WHERE student_id = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id WHERE T2.friend_id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM Highschooler EXCEPT SELECT min(grade) FROM Highschooler WHERE friend_id IN (SELECT student_id FROM friend)
SELECT professional_id , last_name , cell_phone FROM professionals WHERE state = "Indiana" OR TREATMENT_TYPE_CODE = (SELECT treatment_type_code FROM treatments GROUP BY treatment_type_code HAVING count(*) > 2)
SELECT T1.profession_id , T1.last_name , T1.cell_phone FROM PROFESSIONS AS T1 JOIN TREATMENT_TYPES AS T2 ON T1.profession_id = T2.profession_id JOIN DOG们 AS T3 ON T3.profession_id = T2.profession_id JOIN TREATMENT_TYPES AS T4 ON T4.treatment_type_code = T2.treatment_type_code WHERE T2.treatment_type_code = 'Treatment' AND T3.date_of_treatment > 2 GROUP BY T1.profession_id HAVING count(*) > 2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT T2.owner_id , T2.first_name , T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = (SELECT max(weight) FROM Dogs)
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T2.role , T1.first_name , T1.last_name FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.treatment_type_code = "Treatment" GROUP BY T1.treatment_id HAVING COUNT(*) >= 2
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code IN (SELECT treatment_type_code FROM Treatments ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment LIMIT 1
SELECT T2.owner_id , T2.zip_code FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.weight = (SELECT max(weight) FROM dogs)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = (SELECT max(date_of_birth) FROM Dogs) GROUP BY T1.zip_code ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = (SELECT treatment_type_code FROM treatments WHERE cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments))
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
{"sql": "SELECT T2.first_name , T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = \"Labrador \uff00\uff81\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of_birth = \"2001-12-12\" AND T1.date_of
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM PROFESSIONALS WHERE state = "Hawaii" OR last_name = "Wisconsin"
SELECT email_address FROM PROFESSIONS WHERE last_name = "Hawaii" OR first_name = "Wisconsin"
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 'no'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 'no'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Country != "French"
SELECT Name FROM singer WHERE Citizens != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year > 300000
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT property_name FROM Properties WHERE property_type_code = "apartment" OR property_type_code = "house" AND room_count > 1
