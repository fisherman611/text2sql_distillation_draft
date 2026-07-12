SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY Birthday DESC
SELECT Name , Country FROM singer ORDER BY Birthday DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT T2.Name , T2.Song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , COUNT(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concert GROUP BY singer_id HAVING avg(birthday) > (SELECT avg(birthday) FROM singer))
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concent ID JOIN concert ON concert.stadium_id = concert.stadium_id WHERE avg(birthday) > (SELECT avg(birthday) FROM singer))
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.max_attendance FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY T2.max_attendance DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT max(Attendance) FROM concert WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT min(T1.atendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.theme = "null"
SELECT Country FROM singer WHERE Birthday = "1981" INTERSECT SELECT Country FROM singer WHERE Birthday = "1991"
SELECT avg(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT min(T1.atendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 EXCEPT SELECT min(atendance) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE theme = "2014 - World Cup of Time")
SELECT T2.name , T2.theme , count(*) FROM singer_in_concentment AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name , T2.Theme , COUNT(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_Singer_ID = T2.Singer_ID GROUP BY T1.concent_Singer_ID
SELECT T2.name , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.Name , COUNT(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.year > 2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id WHERE T2.year < 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name = "Hey"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT min(Average) , max(Average) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT min(Average) , max(Average) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT min(Average) , max(Average) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT min(Average) , max(Average) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pem WHERE weight > 10
SELECT T2.weight FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.weight LIMIT 1
SELECT sum(weight) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1
SELECT max(weight) , pettype FROM Has_pet GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.Age > 20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_ppet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = "F"
SELECT count(*) FROM Has_pupus AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = "F"
SELECT count(DISTINCT pettype) FROM has_pet
SELECT count(DISTINCT pettype) FROM has_pet
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kittens' OR T3.pettype = 'Pupus'
SELECT T2.Fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Puppy" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kittens"
SELECT T2.fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'kitten' INTERSECT SELECT T2.fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'pug'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kittens'
SELECT T1.Major , T2.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID != (SELECT T3.PetID FROM Has_Pet AS T3 JOIN Paws AS T4 ON T3.PetID = T4.PetID WHERE T4.PpetType = 'Kittens')
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE PetID = 'kittens'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' AND T3.PetID NOT IN (SELECT T2.PetID FROM Has_Pet AS T2 JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'pug')
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'pug' AND T1.fname != 'Tapest'
SELECT pettype , weight FROM pets ORDER BY birthdate ASC LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemt AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T3.stuid = T1.stuid WHERE T3.age = (SELECT min(age) FROM Student) GROUP BY T1.petid
SELECT StuID , weight FROM Has_pet WHERE birthdate > '2020'
SELECT T2.petid , T2.weight FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid = T2.stuid AND T2.birthdate > 2020
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT avg(PetType) , max(PetType) FROM Has_Pet GROUP BY PetType
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT PetType , avg(weight) FROM Has_pet GROUP BY PetType
SELECT T1.fname , T1.age , T2.Lname FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID
SELECT T2.StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pem WHERE StuID IN (SELECT StuID FROM Has_pem)
SELECT count(*) , T2.stuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T1.petID = T3.petID GROUP BY T2.stuID
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.Lname FROM Has_pem T1 JOIN Student T2 ON T1.StuID = T2.StuID JOIN Pets T3 ON T1.PetID = T3.PetID WHERE T3.birthdate = "2001"
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = "2001" AND T3.pettype = "cat"
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM countries WHERE countryname LIKE "%Europe%"
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT continent_id , continent_name , count(*) FROM countries GROUP BY continent_name
SELECT continent , countryname , count(*) FROM countries GROUP BY countryname
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT maker , COUNT(*) , maker FROM car_makers GROUP BY maker
SELECT T1.Maker , T1.Maker , count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model GROUP BY T1.Id
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T3.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Weight < (SELECT avg(T1.Weight) FROM cars_data AS T1 WHERE T1.Id = T1.Id)
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2 GROUP BY maker
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year LIMIT 1
SELECT maker , YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT maker FROM cars_data WHERE YEAR <= 1980
SELECT continent , count(*) FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid = t2.countryid GROUP BY t1.continent
SELECT continent , count(*) FROM countries AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t2.FFullName FROM car_makers AS t1 JOIN car_makers AS t2 ON t1.Id = t2.Id GROUP BY t1.Maker
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE YEAR = 2010 AND MAKE = "Amc Hornet"
SELECT accelerate FROM cars_data WHERE country = 'America' AND maker = 'Amc Hornet'
SELECT count(*) FROM car_makers WHERE countryname = "Japan"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId JOIN cars_data AS T3 ON T3.id = T2.Model WHERE T2.Make = "Japanese"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeId JOIN cars_data AS T3 ON T3.id = T2.model WHERE T3.country = "America"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = 'United States'
SELECT avg(MGPS) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPS) FROM cars_data WHERE Cylinders = 4
SELECT T1.MGOSlargest FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "1974" AND T1.Cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT maker , model FROM car_makers
SELECT maker , model FROM car_makers
SELECT country , id FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE countryname = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT countryname FROM countries WHERE countryname LIKE '%Europe%' GROUP BY countryname HAVING count(*) >= 3
SELECT max(Horsepower) , T2.Make , T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3
SELECT max(Horsepower) , T3.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T1.Maker = "3"
SELECT model FROM cars_data WHERE mpg = (SELECT max( mpg ) FROM cars_data)
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model ORDER BY T1.MGPL DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE maker = "Tesla"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(accelerate) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2012 AND 2012
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2012 AND 2013
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN country AS T3 ON T1.countryid = T3.countryid WHERE countryname = "American"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T2.CountryName = "America"
SELECT maker , fullname FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T1.Maker = "General Motors" OR T3.Weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE maker = "General Motors" OR weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data WHERE id = 1 GROUP BY accelerator ORDER BY min(accelerate) LIMIT 1
{"sql": "SELECT count(*) , accelerator FROM cars_data WHERE accelerator = (SELECT min(acceleration) FROM cars_data WHERE maker = \"Tesla")"}
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country != "United States" GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries GROUP BY countryId HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T3.ModelId = T1.Id WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T3.cylindres = 4 GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT maker , maker_name FROM car_makers WHERE maker_id NOT IN (SELECT maker FROM cars_data WHERE horsepower < (SELECT min(horsepower) FROM cars_data WHERE cylinders = 3))
SELECT DISTINCT T1.Make , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker != "United States" AND T2.Cylinders < 4
SELECT max(MGPO) , id FROM cars_data WHERE Cylinders = 8 OR id < 1980
SELECT max(MGPH) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT model FROM car_makers WHERE maker = 'Ford'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE id IN (SELECT id FROM cars_data WHERE weight = 3500)
SELECT CountryName FROM countries WHERE CountryName NOT IN (SELECT Country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT maker , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makes GROUP BY maker HAVING count(*) >= 3
SELECT id , maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3)
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FFullName = 'teslamodel'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FFullName = "Tesla"
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE airline = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE airline = 'JetBlue'
SELECT airline , abbreviation FROM airlines WHERE country = 'America'
SELECT airline , abbreviation FROM airlines WHERE country = "America"
SELECT AirportCode , AirportName FROM airports WHERE City = "Jackson"
SELECT airportcode , airportname FROM airports WHERE city = 'Syratay'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT T1.City , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT city , country FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'Jackson'
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATA"
SELECT count(*) FROM flights WHERE SourceAirport = "ATOP"
SELECT count(*) FROM flights WHERE airline = "Jackson"
SELECT count(*) FROM flights WHERE airline = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport = "Syracuse" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE SourceAirport = "Syrus" AND DestAirport = "Ashlea"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = "JetBlue"
SELECT count(*) FROM flights WHERE airline = "Jetblue"
{"sql": "SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND flightno = 'ASY102000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM flights WHERE airline = 'JST' AND FlightNo = 'JSTD' AND DestAirport = 'ASY'
SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND FlightNo = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "JETBELE"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airleightname = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'JETBLEU' AND flightno = 'ABERNDEBE'
SELECT T2.city FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode GROUP BY T3.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport ORDER BY T2.sourceairport DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1
SELECT avg(freetype_count) , airline FROM flights GROUP BY airline ORDER BY count(*) LIMIT 1
SELECT T2.Abbr, T2.country FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.airline WHERE T3.Abbr = (SELECT min(abbr) FROM airlines)
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airleigh = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T2.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "APG" INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = "CVO"
SELECT airline FROM flights WHERE sourceairport = 'CVO' EXCEPT SELECT airline FROM flights WHERE sourceairport = 'APG'
SELECT T1.airname FROM airlines AS T1 JOIN airports AS T2 ON T1.airportcode = T2.airportcode WHERE T1.airline = 'CVO' EXCEPT SELECT T1.airname FROM airlines AS T1 JOIN airports AS T2 ON T1.airportcode = T2.airportcode WHERE T1.airline = 'APG'
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT airline FROM airlines GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE airline = 'JETBELE'
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT FlightNo FROM flights WHERE AirportCode = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Syrct" OR T2.city = "Jackson"
SELECT count(*) FROM airports WHERE airportname = 'Syrct' OR airportname = 'Jackson'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT Distinct SourceAirport FROM flights UNION SELECT Distinct DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DstAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT SourceAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_description FROM Documents
SELECT document_id , document_description FROM Documents
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details LIKE "%w%"
SELECT T1.document_name , T2.document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT document_name , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT T1.document_name , T1.document_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details = "Robbin CV"
SELECT count(DISTINCT t1.template_details) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(DISTINCT t1.template_id) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PPT"
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.Template_ID , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT T1.Date_Effective_To FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T2.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM documents)
SELECT count(*) FROM Templates
SELECT count(*) FROM templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_from FROM templates
SELECT date_effective_from FROM templates
SELECT date_effective_from FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date_from FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date_period FROM templates WHERE template_type_code = "CV"
SELECT effective_date_from FROM templates WHERE template_type_code = "CV"
SELECT effective_from , template_type_code FROM Templates WHERE version_number > 5
SELECT effective_from , template_type_code FROM templates WHERE version_number > 5
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT effective_date_period , count(*) FROM templates GROUP BY effective_date_period
SELECT effective_date_from FROM templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_from FROM Templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT effective_date_period FROM templates GROUP BY effective_date_period HAVING count(*) < 3
SELECT min(Version_Number) , Effective_To FROM templates ORDER BY Effective_To - Effective_from LIMIT 1
SELECT min(Version_Number) , date_effective_from , date_effective_to FROM Templates
SELECT date_effective_from FROM templates WHERE document_name = "Data base"
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT document_name , document_id FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT effective_from , effective_to , count(*) FROM templates GROUP BY effective_from , effective_to
SELECT effective_from , effective_to , count(*) FROM Templates GROUP BY effective_from , effective_to
SELECT effective_date_period FROM templates GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_period FROM templates GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_from , effective_to FROM templates WHERE effective_from != (SELECT effective_from FROM templates) INTERSECT SELECT effective_from , effective_to FROM documents WHERE effective_to != (SELECT effective_to FROM templates)
SELECT effective_date_from , effective_date_to FROM templates WHERE effective_date_to != (SELECT effective_date_to FROM templates)
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT T1.Template_Type_Description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = "AD"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id JOIN templates AS t3 ON t2.template_id = t3.template_id GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.Template_Details FROM templates AS t1 JOIN documents AS t2 ON t1.Template_ID = t2.Template_ID GROUP BY t2.Template_ID
SELECT date_effective_from FROM templates WHERE template_type_code = "Presentation"
SELECT date_effective_from FROM templates WHERE template_type_code = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.age , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT loser_age , match_num FROM matches
SELECT first_name , birth_date FROM players WHERE country_code = "US"
SELECT first_name , birth_date FROM players WHERE country_code = 'US'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT T1.name , T2.rank_points , T2.wider_win , T2.wider_loss FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT avg(loser_rank) FROM matches WHERE winner_id = (SELECT player_id FROM matches ORDER BY winner_age DESC LIMIT 1) INTERSECT SELECT avg(loser_rank) FROM matches WHERE loser_id = (SELECT player_id FROM matches ORDER BY loser_age DESC LIMIT 1)
SELECT max(leader_rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT max(best_of) , winner_rank FROM matches GROUP BY winner_id
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.name , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.writer_age = 20 AND T2.writer_id = T1.player_id AND T2.writer_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.writer_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date IN (SELECT birth_date FROM players ORDER BY birth_date ASC)
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.player_name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open tourney" AND T2.winner_age = (SELECT max(winner_age) FROM matches WHERE tourney_name = "Australian Open tourney")
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" AND T2.winner_rank_points = (SELECT max(win_rank_points) FROM matches WHERE tourney_name = "Australian Open")
SELECT T1.name , T2.winner_age , T2.wider_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.wider_id ORDER BY count(*) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT avg(leader_rank) , first_name FROM players GROUP BY first_name
SELECT T1.first_name , avg(T2.rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id
SELECT sum(ranking_points) , T2.player_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_name
SELECT T1.first_name , T1.last_name , sum(T2.rank_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tourney_rank) , T1.ranking_date FROM rankings AS T1 JOIN tours AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_date
SELECT sum(t2.ranking_points) , T1.ranking_date FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT T1.name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.earliest DESC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" AND hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.wound_rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 FROM Addresses
SELECT line_1 FROM addresses
SELECT count(*) FROM show WHERE IF_first_show = 'Yes'
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT name FROM conductor WHERE nationality = "American"
SELECT name FROM conductor WHERE nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Orchestra FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = "Yes"
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T2.name , T1.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID JOIN orchestra AS T3 ON T3.Orchestra_ID = T2.Orchestra_ID WHERE T3.Major_Record_Format = "Show"
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded DESC LIMIT 1
SELECT DISTINCT record_company , orchestra_id FROM orchestra
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Conductor_ID ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT orchestra FROM performance ORDER BY 3 DESC LIMIT 1
SELECT orchestra FROM orchestra ORDER BY YEAR_of_founded DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM performance EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003 GROUP BY orchestra ORDER BY orchestra
SELECT DISTINCT orchestra.conductor_id FROM orchestra WHERE year_of_founded > 2003 GROUP BY orchestra.conductor_id
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performment_ID = T2.Performment_ID WHERE T2.If_first_show = 'Glebe Park'
SELECT count(*) FROM show WHERE If_first_show = 'Glebe Park'
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1
SELECT TYPE FROM performance WHERE IF_first_show != 1 GROUP BY TYPE HAVING COUNT(*) > 1
SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T3.treatment_type_code JOIN Breeds AS T4 ON T4.breed_code = T2.breed_code WHERE T4.breed_name = "owner" INTERSECT SELECT T1.state FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T3.breed_code = T2.breed_code WHERE T3.breed_name = "professional"
SELECT T2.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatment_types AS T3 ON T3.treatment_type_code = T2.treatment_type_code JOIN professionals AS T4 ON T4.profession_id = T2.profession_id WHERE T4.role_code = 'PROCESSED'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Treatment'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE treatment_type_code = 'Treatment'
SELECT T2.profession_id , T2.last_name , T2.cell_phone FROM treatments AS T1 JOIN professionals AS T2 ON T1.profession_id = T2.profession_id WHERE T1.date_of_treatment > 2
SELECT DISTINCT T2.professional_id , T2.last_name , T2.cell_phone FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.profession_id = T2.profession_id WHERE T1.date_of_treatment > 2 AND T1.treatment_type_code = 'Treatment Type 1' AND T1.date_of_treatment = 'Indiana'
SELECT name FROM dogs WHERE cost_of_treatment > 1000
SELECT T2.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000
SELECT first_name FROM PROFESSIONS UNION SELECT first_name FROM OWNERS WHERE first_name NOT IN (SELECT first_name FROM PROFESSIONS) AND role_code = 'PROFESSIONAL' AND first_name != (SELECT first_name FROM OWNERS WHERE first_name = 'dog_name')
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.profession_id = T2.profession_id WHERE T2.name LIKE '%dog%'
SELECT professional_id , first_name FROM professionals EXCEPT SELECT T1.professional_id , T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.professional_id
SELECT professional_id FROM professionals EXCEPT SELECT treatment_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT professional_id , home_phone FROM Professionals GROUP BY professional_id HAVING count(*) >= 2;
SELECT T1.professional_id , T2.home_phone , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'no' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'no' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '12/12/2012' ORDER BY T2.cost_of_treatment DESC LIMIT 1
SELECT treatment_type_description FROM Treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types WHERE cost_of_treatment = (SELECT cost_of_treatment FROM treatments ORDER BY total_cost ASC LIMIT 1)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(treatment_type_code) DESC LIMIT 1
SELECT t1.owner_id , t1.zip_code FROM Owners AS t1 JOIN Dogs AS t2 ON t1.owner_id = t2.owner_id GROUP BY t2.owner_id ORDER BY sum(t2.weight) DESC LIMIT 1
SELECT professional_id , first_name FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.home , T2.home_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.first_name FROM professionals AS T1 JOIN treatings AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatings)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.profession_id
SELECT T1.date_of_treatment , T2.role_code FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id
SELECT cost_of_treatment , treatment_type_description FROM Treatments
SELECT cost_of_treatment , treatment_type_description FROM Treatments
SELECT T2.first_name , T2.last_name , T2.babbling_count , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T2.size_code , T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T1.breed_name = 'rare_round'
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "rare_radiobus"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T2.first_name , T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT date_departed FROM dogs ORDER BY date_departed
SELECT date_departed FROM dogs
SELECT t2.last_name FROM dogs AS t1 JOIN owners AS t2 ON t1.owner_id = t2.owner_id ORDER BY t1.age LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'no'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM Treatments
SELECT count(*) FROM dogs AS T1 JOIN treatings AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM PROFESSIONS AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.professional_id WHERE T1.first_name = "doctor" AND T1.last_name = "doctor"
SELECT count(*) FROM professionals AS T1 JOIN dogs AS T2 ON T1.profession_id = T2.profession_id WHERE T2.gender = "Male" AND T2.date_of_birth = "10/10/10"
SELECT first_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name FROM professionals WHERE city LIKE "%West%"
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'North'
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth LIKE "%North%"
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'no' AND breed_code = "unavailable")
SELECT count(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'no'
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'no'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'no'
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM Charges;
SELECT cost_of_treatment FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name FROM PROFESSIONS
SELECT email_address , first_name FROM PROFESSIONS
SELECT breed_name , size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code GROUP BY breed_name , size_description
SELECT DISTINCT breed_name , size_description FROM Dogs
SELECT T2.first_name , T2.last_name , T1.treatment_type_description FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.professional_id = T2.profession_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT name FROM singer ORDER BY birth_year ASC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.birth_year LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sale DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sale > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT T2.Name , MAX(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year = 0
SELECT citizenship FROM singer WHERE birth_year < 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship
