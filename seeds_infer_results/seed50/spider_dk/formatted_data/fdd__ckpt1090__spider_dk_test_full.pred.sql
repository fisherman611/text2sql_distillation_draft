SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT Name , Country FROM singer ORDER BY Birthday DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT T2.Name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Birthday LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT Country FROM singer WHERE Birthday = "2001" GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT country , count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concent ID AVG(age) IN (SELECT singer_id FROM singer GROUP BY singer_id ORDER BY AVG(age) DESC LIMIT 1))
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concert WHERE YEAR = (SELECT avg(YEAR) FROM concert))
SELECT LOCATION , Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T1.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.concentio, T1.stadium_id FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.height , T1.average FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT max(T1.attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.min_max_avg_attendance - T1.year = 2
SELECT min(T1.atendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.theme = "null"
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT min(T1.attendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 EXCEPT SELECT min(attendance) FROM stadium WHERE T1.stadium_id NOT IN (SELECT T2.stadium_id FROM concert AS T2 ON T2.stadium_id = T1.stadium_id WHERE T2.year = 2014)
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_id = T2.concent_id GROUP BY T1.name
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id WHERE T2.concentment_year > 2014
SELECT T2.Name FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year > 2014
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name = "Hey"
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE '%Hey%'
SELECT min(Average) , max(Average) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2014 INTERSECT SELECT min(Average) , max(Average) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE YEAR = 2015
SELECT min(T2.Atendance) , max(T2.Atendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2014 INTERSECT SELECT min(T2.Atendance) , max(T2.Atendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT weight FROM has_pet WHERE birthdate = (SELECT min(birthdate) FROM pets)
SELECT sum(weight) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = "dog" AND T2.birthdate = (SELECT min(birthdate) FROM Pets WHERE pettype = "dog")
SELECT max(weight) , pettype FROM has_pet GROUP BY pettype
SELECT max(weight) , pettype FROM Has_pet GROUP BY pettype
SELECT count(*) FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_ppet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = "F"
SELECT count(*) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT count(DISTINCT pettype) FROM Has_pet
SELECT count(DISTINCT pettype) FROM has_pet
SELECT T1.Fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kittens' OR T3.pettype = 'Pupus'
SELECT T2.Fname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kittens' OR T2.pettype = 'pupus'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puppy' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Kittens'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'pupus'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kittens'
SELECT T2.Major , T2.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Major != "Kittens"
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE PetID = 'kitten'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T2.Fname , T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID = 2 EXCEPT SELECT T2.Fname , T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID = 3
SELECT T1.fname FROM Student AS T1 JOIN Has_pod AS T2 ON T1.StuID = T2.stuid WHERE T2.petID = 1 EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.stuid WHERE T2.petID = 2
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemet AS T1 JOIN Pets AS T2 ON T1.petid = T2.pemid JOIN StuID AS T3 ON T1.stuid = T3.stuid WHERE T2.pemid = T2.pemid ORDER BY T3.age LIMIT 1
SELECT StuID , weight FROM Has_pet WHERE birthdate > '2020'
SELECT T2.petid , T2.weight FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid NOT IN (SELECT stuid FROM has_pet WHERE birthdate = '2020')
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT avg(PetType) , max(PetType) FROM Has_pet GROUP BY PetType
SELECT PetType , avg(weight) FROM Has_pet GROUP BY PetType
SELECT T2.Fname , T2.Age , T2.Lname FROM Has_pet AS T1 JOIN student AS T2 ON T1.StuID = T2.StuID JOIN pets AS T3 ON T1.PetID = T3.PetID
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_pet WHERE PetID = (SELECT PetID FROM Pets WHERE LName = 'Smith')
SELECT T2.stuid FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = "Smith"
SELECT count(*) , T1.StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.StuID
SELECT count(*) , T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID GROUP BY T2.StuID
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Fname , T2.Sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T3.petid = T1.petid WHERE T3.birthdate = "2001"
SELECT T1.lname FROM student AS T1 JOIN has_pemus AS T2 ON T1.stuid = T2.stuid JOIN pet AS T3 ON T2.petid = T3.petid WHERE T3.birthdate = "2001"
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "null"
SELECT count(*) FROM continents
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT continent_id , continent_name , count(*) FROM countries GROUP BY continent_name
SELECT continent , countryname , count(*) FROM countries GROUP BY countryname
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT maker , COUNT(*) , maker , FullName FROM car_makers GROUP BY maker
SELECT T1.Maker , T1.FFullName , count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model GROUP BY T1.Id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.Model = T3.Model ORDER BY T3.Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT DISTINCT T1.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Weight < (SELECT avg(T1.Weight) FROM cars_data AS T1 WHERE T1.Id = T1.id)
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2
SELECT maker , YEAR FROM cars_data ORDER BY YEAR LIMIT 1
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT max(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR <= 1980
SELECT continent , count(*) FROM country AS T1 JOIN continents AS T2 ON T1 Continent = T2.Contid GROUP BY T1.Contid
SELECT continent , count(*) FROM countries AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent GROUP BY T1.CountryName
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.FFullName FROM car_makers AS t1 JOIN model_list AS t2 ON t1.Id = t2.Maker GROUP BY t1.Maker
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE YEAR = 2010 AND maker = "Amc Hornet"
SELECT accelerate FROM cars_data WHERE YEAR = 2012 AND MAKING = 'Amc Hornet'
SELECT count(*) FROM car_makers WHERE countryname = "Japanese"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeId JOIN cars_data AS T3 ON T3.id = T2.model WHERE country_id = 'Japan' AND maker = "Toyota"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeId JOIN cars_data AS T3 ON T3.id = T2.model WHERE T2.country = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T3.CountryName = "United States"
SELECT avg(MGP) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
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
SELECT countryname FROM countries WHERE continent = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT countryname FROM countries WHERE countryname LIKE '%Europe%' GROUP BY countryname HAVING count(*) >= 3
SELECT max(Horsepower) , T2.Make , T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T1.Id GROUP BY T1.Cylinders HAVING T1.Cylinders = 3
SELECT max(Horsepower) , T2.Make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3
SELECT model FROM cars_data WHERE mpg = (SELECT mpg FROM cars_data ORDER BY mpg DESC LIMIT 1)
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model ORDER BY T1.MGPL DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE trim(1) = 'Tesla'
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(acceleration) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2012 AND 2012
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2013 AND 2015
SELECT count(*) FROM car_makers WHERE country_id = 'America'
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.countryid = T3.countryid WHERE T3.countryname = "America"
SELECT maker , fullname FROM car_makers WHERE id NOT IN (SELECT id FROM car_makers WHERE country_id = 'USA') GROUP BY maker HAVING count(*) > 3;
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T1.Maker = "General Motors" OR T3.Weight > 3500
SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.id JOIN car_makers AS T4 ON T4.id = T2.id JOIN cars_data AS T5 ON T5.id = T2.id JOIN car_makes AS T6 ON T6.id = T4.id WHERE T5.Weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data WHERE id = 1 ORDER BY acceleration ASC LIMIT 1
SELECT accelerate FROM cars_data WHERE maker = "Tesla" ORDER BY accelerate ASC LIMIT 1
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country != "United States"
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries WHERE countryName = 'United States')
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 GROUP BY T1.Model ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model JOIN countries AS T4 ON T3.CountryId = T4.CountryId WHERE T4.CountryName = "South America" GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT DISTINCT T1.Make , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker != (SELECT T1.Make FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data))
SELECT T1.Maker , T1.Fname FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model != "Min Horsepower" GROUP BY T1.MakeId HAVING count(*) < 4
SELECT max(MGPL) , MIN(Id) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPL) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT model FROM car_makers WHERE weight < 3500 EXCEPT SELECT model FROM car_makers WHERE maker = 'Ford'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE id IN (SELECT id FROM cars_data WHERE weight = 3500)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT maker , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
SELECT maker , maker FROM car_makers WHERE id IN (SELECT id FROM cars_data GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3)
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY countryid HAVING count(*) > 3 OR T2.FFullName = 'teslamodel'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryid HAVING count(*) > 3 OR T2.FFullName = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT airline , Abbreviation FROM airlines WHERE Country = "America"
SELECT airline , Abbreviation FROM airlines WHERE Country = "America"
SELECT airportcode , airportname FROM airports WHERE city = 'JASON'
SELECT airportcode , airportname FROM airports WHERE city = 'Syratay'
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Alton' AND T1.country = 'United States'
SELECT City , Country FROM airports WHERE AirportName = "Alton"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = 'Jackson'
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATA"
SELECT count(*) FROM flights WHERE SourceAirport = 'ATA'
SELECT count(*) FROM flights WHERE airline = 'Jackson'
SELECT count(*) FROM flights WHERE airline = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport LIKE '%Syracuse%' AND destairport LIKE '%Ashley%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Syratie' AND T2.AirportName = 'Ashley'
SELECT count(*) FROM flights WHERE airline = "JETBLE"
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = "JETBELE" AND FlightNo = "JETBELE";
SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND FlightNo = 'JSTG' AND SourceAirport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'JETBELE' AND T1.Airline = 'JETBELE'
SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND sourceairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE airline = 'JETBLO' AND flightno = 'JETBLO-1000'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T3.Airline = (SELECT airline FROM airlines WHERE country = 'United States') GROUP BY T2.City ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM airports GROUP BY airportcode ORDER BY count(*) ASC LIMIT 1
SELECT AirportCode FROM airports GROUP BY AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.FlightNo) , T1.Arrian , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T1.Arrian = (SELECT T1.Arrian FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Arrian ORDER BY count(*) ASC LIMIT 1) GROUP BY T1.Arrian
SELECT T1.Ababbrev, T2.country FROM airlines AS T1 JOIN airports AS T2 ON T1.airportcode = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airleigh = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.DestAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "APG" INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = "CVO"
SELECT airline FROM flights WHERE sourceairport = "CVO" EXCEPT SELECT airline FROM flights WHERE sourceairport = "APG"
SELECT airline FROM flights WHERE flightno = "CVO" EXCEPT SELECT airline FROM airlines WHERE airportcode = "APG"
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT airline FROM airlines GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE airline = 'JETBLO'
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT FlightNo FROM flights WHERE AirportCode = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport = "Syrct" OR destairport = "Jackson"
SELECT count(*) FROM airports WHERE airportname = 'Syratie' OR airportname = 'Jackson'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DistAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT destairport FROM flights) UNION SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT sourceairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_description FROM Documents
SELECT document_id , document_description FROM Documents
SELECT document_name FROM Documents WHERE document_description LIKE '%w%'
SELECT t1.document_name , t1.document_id FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.document_description LIKE '%w%'
SELECT document_name , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT t1.document_description , t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_details = "Robbin CV"
SELECT count(DISTINCT t1.template_details) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(DISTINCT t1.template_details) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T1.Template_ID , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT T1.Template_Type_Code , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Date_Effective_from , T2.Date_Effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM documents)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_date_period FROM Templates
SELECT date_effective_to FROM Templates ORDER BY effective_from - effective_to LIMIT 1
SELECT date_effective_from FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date_period FROM templates WHERE template_type_code = "CV"
SELECT effective_from FROM Templates WHERE template_type_code = "CV"
SELECT effective_date_from , template_type_code FROM templates WHERE version_number > 5
SELECT effective_date_period , template_type_code FROM templates WHERE version_number > 5
SELECT effective_date_period , count(*) FROM templates GROUP BY effective_date_period
SELECT effective_date_period , count(*) FROM Templates GROUP BY effective_date_period
SELECT effective_date_from FROM templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_from FROM Templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT effective_date_period FROM templates GROUP BY effective_date_period HAVING count(*) < 3
SELECT min(Version_Number) , effective_to FROM templates ORDER BY effective_to - effective_from ASC
SELECT min(Version_Number) , date_effective_from , date_effective_to FROM templates
SELECT date_effective_from FROM templates WHERE document_name = "Data base"
SELECT T1.date_effective_from FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = 'Data base'
SELECT document_name , document_id FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT effective_date , count(*) FROM Templates GROUP BY effective_date
SELECT effective_date_from , effective_date_to , count(*) FROM templates GROUP BY effective_date_from , effective_date_to
SELECT effective_date FROM Templates GROUP BY effective_date ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_period FROM Templates GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_from , effective_to FROM templates WHERE effective_from != (SELECT effective_from FROM templates) INTERSECT SELECT effective_from , effective_to FROM documents WHERE effective_from != (SELECT effective_from FROM templates)
SELECT effective_date FROM templates WHERE effective_date NOT IN (SELECT effective_date FROM documents)
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT t2.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_code = "AD"
SELECT t2.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_code = 'AD'
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id JOIN templates AS t3 ON t2.template_id = t3.template_id
SELECT DISTINCT t1.Template_Details FROM templates AS t1 JOIN documents AS t2 ON t1.Template_ID = t2.Template_ID GROUP BY t2.Template_ID
SELECT date_effective_to FROM templates WHERE template_type_code = "Presentation"
SELECT date_effective_from FROM templates WHERE template_type_code = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.age , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.player_id , T2.lander_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT first_name , birth_date FROM players WHERE country_code = "America" AND hand = "Player"
SELECT first_name , birth_date FROM players WHERE country_code = 'America'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_rank) , winner_rank FROM matches GROUP BY loser_id
SELECT avg(leader_rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT max(rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT max(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.lander_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.player_id , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.win_id = T1.player_id AND T2.win_id = T1.player_id
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name FROM players WHERE hand = "left" ORDER BY birth_date;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.first_name , t1.country_code FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.loser_id GROUP BY t2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open tourney" AND T2.wider_rank_points = (SELECT max(T2.wider_rank_points) FROM matches AS T2 WHERE T2.tourney_name = "Australian Open tourney")
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" AND T2.wider_rank_points = (SELECT max(wider_rank_points) FROM matches WHERE tourney_name = "Australian Open")
SELECT T1.name , T2.winner_age , T2.wider_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.wider_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY max(T1.match_num)
SELECT avg(leader_rank) , first_name FROM players GROUP BY first_name
SELECT avg(T1.ranking) , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , sum(T2.rank_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tourney_rank) , T1.ranking_date FROM rankings AS T1 JOIN tours AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.ranking_date
SELECT sum(t1.tourney_count) , t1.ranking_date FROM rankings AS t1 JOIN teams AS t2 ON t1.tourney_id = t2.tourney_id GROUP BY t1.ranking_date
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.entry LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = "WTA Championships"
SELECT T1.name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 FROM addresses
SELECT line_1 FROM Addresses
SELECT count(*) FROM show WHERE IF_first_show = 'Yes'
SELECT count(*) FROM show WHERE IF_first_show = 1
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday
SELECT name FROM conductor WHERE nationality = "American"
SELECT name FROM conductor WHERE nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Orchestra FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show != 'First show'
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Type = "Conductor"
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Orchestra = (SELECT T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work DESC LIMIT 1)
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.orchestra = (SELECT orchestra FROM orchestra ORDER BY 1 DESC LIMIT 1)
SELECT orchestra , count(*) FROM orchestra GROUP BY orchestra
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Conductor_ID ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT orchestra FROM performance ORDER BY 3 DESC LIMIT 1
SELECT T2.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003
SELECT DISTINCT orchestra.conductor_id FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performing_ID = T2.Performing_ID WHERE T1.If_first_show = "Glebe Park"
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T1.If_first_show = 'Glebe Park'
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1
SELECT TYPE FROM performance WHERE IF_first_show != 1 GROUP BY TYPE HAVING count(*) > 1
SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN PROFESSIONS AS T3 ON T2.profession_1 = T3.profession_id WHERE T3.role_code = 'PROFESSIONAL' INTERSECT SELECT T1.state FROM Owners AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id JOIN PROFESSIONS AS T3 ON T2.profession_id = T3.profession_id
SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN PPROFESSORS AS T4 ON T4.profession_field_id = T4.profession_id WHERE T4.role_code = 'PROFESSIONALS' INTERSECT SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN PPROFESSORS AS T4 ON T4.profession_id = T4.profession_id
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Treatment'
SELECT T2.profession_id , T2.last_name , T2.cell_phone FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.profession_id = T2.profession_id WHERE T1.date_of_treatment > 2
SELECT DISTINCT T2.profession_id , T2.last_name , T2.cell_phone FROM Treatment_Types AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id WHERE T1.date_of_treatment > 2 AND T1.treatment_type_code = "Treatment" AND T1.dog_id = T2.dog_id AND T1.treatment_type_code = "Treatment" AND T1.date_of_treatment > 2 AND T1.treatment_type_code = "Treatment" AND T1.dog_id = T2.dog_id AND T1.treatment_type_code = "Treatment" AND T1.date_of_treatment > 2
SELECT name FROM dogs WHERE date_departed = 'null' AND cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.profession_id = T2.profession_id WHERE T2.name = "dog name"
SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.profession_id = T2.profession_id WHERE T2.name = "dog name"
SELECT professional_id , first_name FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT professional_id FROM professionals EXCEPT SELECT T1.professional_id FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT professional_id , home_phone FROM Professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.home_phone , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.professional_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'No' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'no' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T3.treatment_type_code JOIN Dogs AS T4 ON T4.owner_id = T1.owner_id WHERE T4.date_of_treatment = (SELECT date_of_treatment FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1)
SELECT T2.owner_id , T2.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT treatment_type_description FROM Treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types WHERE cost_of_treatment = (SELECT cost_of_treatment FROM treatments ORDER BY sum(cost_of_treatment) ASC LIMIT 1)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '10/10/12' ORDER BY T2.weight DESC LIMIT 1
SELECT T1.owner_id , T2.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(treatment_type_code) DESC LIMIT 1
SELECT professional_id , first_name FROM Professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT DISTINCT T1.professional_id , T2.home_phone , T2.cell_number FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T2.date_of_treatment , T3.first_name , T3.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.professional_id = T3.professional_id
SELECT T1.date_of_treatment , T2.profession_field FROM treatments AS T1 JOIN professionals AS T2 ON T1.profession_id = T2.profession_id
SELECT cost_of_treatment , treatment_type_description FROM Treatments
SELECT cost_of_treatment , treatment_type_description FROM Treatments
SELECT T2.first_name , T2.last_name , T1.weight FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T2.babbling , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T1.breed_name = "rare_ron"
SELECT T2.name , T3.date_of_treatment FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T1.treatment_type_code = 'rare'
SELECT T2.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T2.first_name , T2.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "VA"
SELECT date_departed FROM dogs WHERE date_departed = (SELECT date_departed FROM treatings WHERE treatment_id = (SELECT treatment_id FROM treatings WHERE treatment_type_code = "dog"))
SELECT date_departed FROM Dogs
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'no'
SELECT date_departed , date_arrived FROM dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM treats
SELECT count(*) FROM treats AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id WHERE t1.treatment_type_code = "Treatment"
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.professional_id WHERE T1.role_code = 'Doctor'
SELECT count(*) FROM PROFESSIONS AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = 'dog'
SELECT first_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name FROM PROFESSIONS WHERE city LIKE '%West%'
SELECT T2.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T1.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth LIKE '%North%'
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'no' EXCEPT SELECT count(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'no'
SELECT count(*) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.abandoned_yn = 'no'
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE abandoned_yn = "no"
SELECT avg(age) FROM Dogs WHERE abandoned_yn = "no";
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE;
SELECT cost_of_treatment FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT charge_amount FROM CHARGE_TYPES ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name FROM PROFESSIONS
SELECT email_address , first_name FROM professionals
SELECT breed_name , size_description FROM Breeds JOIN Sizes ON Breeds.breed_code = size_code
SELECT DISTINCT breed_type , size_type FROM dogs
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Cittability != "French"
SELECT Name FROM singer WHERE Citizens != "French"
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Age LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.birth_year LIMIT 1
SELECT citizenship , COUNT(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sale DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Millions > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT T2.Name , MAX(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Year = 2000
SELECT citizenship FROM singer WHERE birth_year < 1945
SELECT citizenship FROM singer WHERE birth_year < 1945 GROUP BY citizenship
