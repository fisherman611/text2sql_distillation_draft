SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT Name , Country FROM singer ORDER BY Birthday DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT T2.Name , T2.Song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concert GROUP BY singer_id HAVING avg(birthday) > (SELECT avg(birthday) FROM singer))
SELECT song_name FROM singer WHERE birth_year > (SELECT avg(birth_year) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(Capacity) , max(Capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR >= 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.concentor_id , COUNT(*) FROM concert AS T1 JOIN singer_in_concentor AS T2 ON T1.concentor_id = T2.concentor_id GROUP BY T1.concentor_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.max_attendance FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY max_attendance DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT max(Attendance) FROM concert EXCEPT SELECT max(Attendance) FROM concert WHERE Theme = "Concentration"
SELECT min(T1.atendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.theme != "Festival"
SELECT country FROM singer WHERE birthday = "1981" OR birthday = "1991"
SELECT avg(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = 2014)
SELECT min(T1.atendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 EXCEPT SELECT min(atendance) FROM stadium WHERE T1.stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.concert_id
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "Fictional" AND T2.year > 2014
SELECT T2.Name FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year > 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name = "Hey"
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE "%Hey%"
SELECT min(attendance) , max(attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT min(attendance) , max(attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2015
SELECT T1.Lowest , T1.High FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.High , T1.High FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.Capacity DESC LIMIT 1
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pem WHERE weight > 10
SELECT T2.weight FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.weight ASC LIMIT 1
SELECT T2.weight FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT min(stuid) FROM Has_pem) AND T2.birthdate = (SELECT min(birthdate) FROM pets)
SELECT max(weight) , pettype FROM Has_pet GROUP BY pettype
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_ppet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT count(*) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = "F"
SELECT count(DISTINCT pettype) FROM Has_ppet
SELECT count(DISTINCT pettype) FROM Has_pet
SELECT T2.fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 'kittens' OR T1.petid = 'pupus'
SELECT T2.fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kittens' OR T2.pettype = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puppy' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Kitten'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'puppy'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'Kittens'
SELECT T1.major , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID != 2 AND T1.major != "Kittens"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = 1
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'dog' AND T3.birthdate != '1990-01-01'
SELECT Fname FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = 'Pug') AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = 1 AND PetType = 'Kittens')
SELECT pettype , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM student)
SELECT T2.petid , T2.weight FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.birthdate > "2020"
SELECT T2.petid , T1.weight FROM Has_pemet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.birthdate > "2020"
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT avg(PetType) , max(PetType) FROM Has_pet
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT PetType , avg(weight) FROM Has_Pet GROUP BY PetType
SELECT T1.fname , T1.age , T2.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT DISTINCT T2.lname , T2.age FROM Has_pemet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T2.stuid
SELECT StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T2.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , T1.Fname , T1.Lname FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID GROUP BY T1.StuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.birthdate = "2001"
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T3.petid = T1.petid WHERE T3.birthdate = "2001"
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "null"
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "null"
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT count(*) FROM countries WHERE countryname = "Europe"
SELECT continent_id , continent_name , count(*) FROM countries GROUP BY country_name
SELECT continent , countryname , count(*) FROM countries GROUP BY countryname
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT maker , COUNT(*) , maker , FullName FROM car_makers GROUP BY maker
SELECT t1.maker , t1.FFullName , count(*) FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.model GROUP BY t1.id
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.Model = T3.Model ORDER BY T3.Horsepower LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.Model = T3.Model ORDER BY T3.Horsepower LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T4.CountryName = "United States" AND T1.Weight < (SELECT avg(Weight) FROM cars_data)
{"sql": "SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = \"Ford\" AND T1.Weight < (SELECT avg(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T2.Maker = \"Ford")"}
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2
SELECT maker FROM car_makers GROUP BY maker HAVING YEAR-1 AND YEAR ORDER BY YEAR LIMIT 2
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR LIMIT 1)
SELECT maker , YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid JOIN car_names AS T3 ON T2.id = T3.id JOIN cars_data AS T4 ON T3.id = T4.id WHERE T4.Year > 1980
SELECT continent , count(*) FROM countries AS T1 JOIN country AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.Continent
SELECT continent , count(*) FROM country AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t2.maker , t2.FULL_NAME FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.Model GROUP BY t1.id
SELECT count(*) , t1.id , t1.FFullName FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.MakeId GROUP BY t1.id
SELECT accelerate FROM cars_data WHERE YEAR = 2000 AND maker = "Amc hornet"
SELECT accelerate FROM cars_data WHERE country = 'America' AND maker = 'Amc' AND model = 'Sobridge'
SELECT count(*) FROM car_makers WHERE countryname = "Japanese"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE countryname = "Japanese"
SELECT count(*) FROM car_makers WHERE country_id = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id WHERE country_name = "United States"
SELECT avg(MGPO) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPO) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8
SELECT maker , model FROM car_makers
SELECT maker , model FROM car_makers
SELECT maker , country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT countryname , countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries WHERE countryname LIKE "%Europe%" GROUP BY countryname HAVING count(*) >= 3
SELECT countryname FROM countries WHERE countryname LIKE '%Europe%' GROUP BY countryname HAVING count(*) >= 3
SELECT max(Horsepower) , T3.Make , T3.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T2.MakeId = T3.Id GROUP BY T3.Model HAVING T1.Cylinders = 3
SELECT max(Horsepower) , T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3
SELECT maker FROM car_makers JOIN car_names AS T1 ON T1.makeid = T2.makeid JOIN cars_data AS T2 ON T2.id = T2.id WHERE T2.MGPS = (SELECT max(MGPS) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model ORDER BY T1.MGPS DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE MAKING = "Tesla"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(acceleration) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2010 AND 2012
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2015 AND 2015
SELECT count(*) FROM car_makers WHERE country_id = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.countryid = T2.countryid JOIN continents AS T3 ON T2 Continent = T3.Contid WHERE T2.countryname = "America"
SELECT maker , fullname FROM car_makers WHERE id NOT IN (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 3)
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE maker = "General Motors" OR weight > 3500
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data WHERE id = 1 ORDER BY accelerate LIMIT 1
{"sql": "SELECT count(*) , accelerator FROM cars_data WHERE accelerator = (SELECT min(acceleration) FROM cars_data WHERE maker = \"Tesla")"}
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country != "United States" GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries GROUP BY countryId HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T1.Model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id JOIN car_names AS T3 ON T3.Model = T2.Id JOIN country_name AS T4 ON T2.CountryId = T4.CountryId WHERE T4.CountryName = 'US' AND T1.Horsepower = 4 GROUP BY T1.Model ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker != (SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Max(Horsepower) > 3)
SELECT T1.MakeId , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker != "United States" AND T1.Cylinders < 4
SELECT max(MGPL) , id FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT max(MGPH) , id FROM cars_data WHERE cylinders = 8 OR id <= 1980
SELECT model FROM car_makers WHERE weight < 3500 AND maker != 'Ford Motor'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE id IN (SELECT id FROM cars_data WHERE weight = 3500)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT maker , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
SELECT T1.id , T2.Mark FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T2.Mark FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId GROUP BY T1.id HAVING count(*) >= 3
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 INTERSECT SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.Maker = 'teslar'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY countryid HAVING count(*) > 3 OR T2.FFullName = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE airline = "Jetblue"
SELECT distinct(airportcode) FROM airlines WHERE airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT airline , abbreviation FROM airlines WHERE country = "America"
SELECT airline , Abbreviation FROM airlines WHERE Country = "America"
SELECT AirportCode , AirportName FROM airports WHERE City = "JASON"
SELECT airportcode , airportname FROM airports WHERE city = "Syrus"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airline FROM airlines WHERE Abbreviation = "UAL"
SELECT airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT T1.city , T1.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'Jackson'
SELECT AirportName FROM airports WHERE City = 'Jackson'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = "ATA"
SELECT count(*) FROM flights WHERE sourceairport = 'ATA'
SELECT count(*) FROM flights WHERE airline = "Jackson"
SELECT count(*) FROM flights WHERE SourceAirport = 'Jackson'
SELECT count(*) FROM airports WHERE airportname = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport LIKE '%Syracuse%' AND destairport LIKE '%Ashley%'
SELECT count(*) FROM flights WHERE SourceAirport = 'Sycu' AND DestAirport = 'Ashlea'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = 'JETBL'
SELECT count(*) FROM flights WHERE airline = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airleightname = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'JETBLUE' AND FlightNo = 'ASY-1000'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD Airport' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Abberand' AND T1.airline = 'JetBlue'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY sourceairport ORDER BY count(*) LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.FlightNo) , T2.AbbrCode , T2.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT airportcode , country FROM flights GROUP BY sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.airlines FROM airlines AS T1 JOIN flights AS T2 ON T1.airleid = T2.airleid WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = 'CVO'
SELECT airline FROM flights WHERE sourceairport = "CVO" EXCEPT SELECT airline FROM flights WHERE sourceairport = "APG"
SELECT airline FROM flights WHERE sourceairport = "CVO" EXCEPT SELECT airline FROM airlines WHERE airportcode = "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airlines = "JetBlue"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT FlightNo FROM flights WHERE AirportCode = 'Jackson'
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.airportname = "Syratie" OR T2.airportname = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = 'Syrct' OR destairport = 'Jackson'
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DstAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT SourceAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_description FROM Documents
SELECT document_id , document_description FROM Documents
SELECT T2.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T2.date_effective_from > '10/1/2012' AND T2.date_effective_to < '10/1/2012' AND T1.document_name LIKE '%w%'
SELECT T1.document_name , T2.document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE "%w%"
SELECT document_name , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT t1.document_description , t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_details = "Robbin CV"
SELECT count(DISTINCT t1.template_details) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_id
SELECT count(DISTINCT t1.template_id) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM Documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_to - T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM documents)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_date_period FROM templates
SELECT date_effective_to FROM templates
SELECT date_effective_from FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date_period FROM templates WHERE template_type_code = "CV"
SELECT effective_date_from FROM Templates WHERE template_type_code = "CV"
SELECT effective_from , template_type_code FROM templates WHERE version_number > 5
SELECT effective_date_period , template_type_code FROM templates WHERE version_number > 5
SELECT effective_date_period , count(*) FROM templates GROUP BY effective_date_period
SELECT effective_date_period , count(*) FROM templates GROUP BY effective_date_period
SELECT effective_date_from FROM templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_from FROM templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT effective_date_period FROM Templates GROUP BY effective_date_period HAVING count(*) < 3
SELECT min(Version_Number) , Effective_To FROM Templates ORDER BY Effective_To - Effective_from ASC
SELECT min(Version_Number) , max Effective_To FROM Templates
SELECT effective_date_from FROM Templates WHERE document_name = "Data base"
SELECT T1.date_effective_from , T2.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT document_name , document_id FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT effective_from , effective_to , count(*) FROM Templates GROUP BY effective_from , effective_to
SELECT effective_date_period FROM Templates GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_period FROM Documents GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_date FROM templates WHERE effective_date BETWEEN date_effective_from AND date_effective_to AND document_id NOT IN (SELECT document_id FROM documents)
SELECT effective_date_from , effective_date_to FROM templates WHERE effective_date_to != (SELECT effective_date_to FROM templates)
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT T2.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Book"
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id
SELECT DISTINCT t1.document_details FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_description != ''
SELECT date_effective_to FROM templates WHERE template_type_code = "Presentation"
SELECT date_effective_from FROM templates WHERE template_type_code = "Presentation"
SELECT T1.first_name , T1.last_name , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.player_id , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.age , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT T1.name , T2.win_count , T2.loss_count FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT avg(loser_rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT max(leader_rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT max(best_of) FROM matches WHERE winner_rank = "winner" OR loser_rank = "loser"
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.name , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.won = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.won = "Australian Open"
SELECT first_name , country_code FROM players WHERE birth_date = (SELECT max(birth_date) FROM players)
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name FROM players WHERE hand = "left" ORDER BY birth_date;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" AND T2.winner_age = (SELECT min(witter_age) FROM matches WHERE tourney_name = "Australian Open") AND T2.wider_id = (SELECT min(wider_id) FROM matches WHERE tourney_name = "Australian Open")
SELECT T1.name , T2.winner_age , T2.wider_entry FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.wider_entry ORDER BY T2.minutes DESC LIMIT 1
SELECT winner_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT avg(leader_rank) , first_name FROM players GROUP BY first_name
SELECT avg(T1.ranking) , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date
SELECT sum(t2.ranking_points) , T1.ranking_date FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.ranking_date
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.round LIMIT 3
SELECT T2.name , T1.rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.round , T1.round_count LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" AND hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 FROM Addresses
SELECT line_1 FROM addresses
SELECT count(*) FROM show WHERE If_first_show = "Y"
SELECT count(*) FROM show WHERE IF_first_show = 'Yes'
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT name FROM conductor WHERE nationality = "American"
SELECT name FROM conductor WHERE nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT COUNT(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Type = 'Conducting'
SELECT T1.name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name ORDER BY T1.year_of_founded DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded DESC LIMIT 1
SELECT DISTINCT record_company , orchestra_id FROM orchestra
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Conductor_ID ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT orchestra FROM performance WHERE official_ratings_(millions) = (SELECT max(official_ratings_(millions)) FROM performance)
SELECT T2.record_company FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchina_id = T2.orchina_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founder > 2003 UNION SELECT record_company FROM orchestra WHERE year_of_founder <= 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003 GROUP BY Record_Company HAVING COUNT(*) = 2
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.If_first_show = 'Glebe Park'
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performment_ID = T2.Performment_ID WHERE T1.If_first_show = 'Glebe Park'
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1
SELECT TYPE FROM performance WHERE IF_first_show != 1 GROUP BY TYPE HAVING COUNT(*) > 1
SELECT T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Professionals AS T4 ON T2.professional_id = T4.profession_id WHERE T4.role_code = 'PROFESSIONAL' INTERSECT SELECT T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Professionals AS T4 ON T2.professional_id = T4.professional_id
SELECT city , state FROM Owners JOIN dogs ON dogs.owner_id = owner_id JOIN breed_types ON breed_code = breed_code WHERE gender = 'female' AND breed_name = 'Beats'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE treatment_type_code = "Treatment"
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Treatment"
SELECT T2.profession_id , T2.last_name , T2.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T1.state = "Indiana" GROUP BY T2.client_phone HAVING count(*) > 2
SELECT DISTINCT T1.professional_id , T1.last_name , T1.cell_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.state = "Indiana" OR T2.treatment_type_code = "2"
SELECT name FROM dogs WHERE cost_of_treatment <= 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM PROFESSIONS UNION SELECT first_name FROM OWNERS WHERE first_name != "dog_name" AND role_code = "professional"
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.profession_id = T2.profession_id WHERE T2.name = "dog_name"
SELECT professional_id , first_name FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT professional_id FROM professionals EXCEPT SELECT T1.professional_id FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT professional_id , home_phone FROM Professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.home_phone , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'no' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs WHERE abandoned_yn = 'no' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.owner_id , T2.last_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM treatments ORDER BY cost_of_treatment DESC LIMIT 1)
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = "NULL" GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM treatment_types WHERE treatment_type_code = (SELECT treatment_type_code FROM treatments ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT treatment_type_description FROM Treatment_Types WHERE cost_of_treatment = (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.weight DESC LIMIT 1
SELECT t1.owner_id , t1.zip_code FROM Owners AS t1 JOIN Dogs AS t2 ON t1.owner_id = t2.owner_id GROUP BY t2.owner_id ORDER BY sum(t2.weight) DESC LIMIT 1
SELECT professional_id , first_name FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T2.professional_id , T2.home_phone , T2.cell_number FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id GROUP BY T2.profession_id HAVING count(*) >= 2
SELECT T1.first_name FROM professionals AS T1 JOIN treatings AS T2 ON T1.profession_id = T2.profession_id WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatings)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.date_of_treatment , T3.first_name , T3.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.profession_id
SELECT date_of_treatment , T2.role_code FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT cost_of_treatment , treatment_type_description FROM Treatments
SELECT T2.first_name , T2.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name , T3.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T1.treatment_type_code = 'rare'
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "rare_restaurant_beast"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T2.first_name , T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = 'VA'
SELECT date_departed FROM dogs ORDER BY date_arrived - date_departed
SELECT date_departed FROM dogs
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'no'
SELECT date_departed , date_arrived FROM Dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM Treatments
SELECT count(*) FROM Dogs WHERE date_departed = 'NULL'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T1.role_code = 'doctor'
SELECT count(*) FROM PROFESSIONS AS T1 JOIN TREATMENT_TYPES AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T3.dog_id = T3.dog_id WHERE T2.treatment_type_code = "dog"
SELECT first_name FROM PROFESSIONS WHERE city LIKE "%West%"
SELECT first_name FROM professionals WHERE city LIKE "%West%"
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'North'
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth LIKE "%North%"
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'no' AND breed_code = 'poodle' )
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'no' AND breed_code = 'dog' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE abandoned_yn = "no";
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'no'
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE;
SELECT sum(charice_id) FROM charges WHERE charge_type = "the most expensive charge type"
SELECT charge_amount FROM CHARGE_TYPE ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name FROM PROFESSIONS
SELECT email_address , first_name FROM professionals
SELECT breed_type , size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_code , size_code FROM dogs
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.birth_year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizens != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Highest_Position = (SELECT max(Highest_Position) FROM song) LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.birth_year LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_1 > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Millions > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT T2.Name , MAX(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year = 0
SELECT citizenship FROM singer WHERE birth_year <= 1945
SELECT citizenship FROM singer WHERE birth_year < 1945
