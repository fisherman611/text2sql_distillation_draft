SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT Name , Country FROM singer ORDER BY Birthday DESC
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT avg(Singer_ID) , min(Singer_ID) , max(Singer_ID) FROM singer WHERE Country = "French"
SELECT T1.name , T1.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T2.concent_year LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT DISTINCT country FROM singer WHERE birthday = "2001"
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concent ID AVG(age) IN (SELECT singer_id FROM singer GROUP BY singer_id ORDER BY avg(age) DESC LIMIT 1))
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer_in_concent ID JOIN concert ON concert.stadium_id = concert.stadium_id WHERE average > (SELECT avg(T1.singer_id) FROM singer AS T1 JOIN singer_in_concent AS T2 ON T2.singer_id = T1.singer_id GROUP BY T1.singer_id ORDER BY average DESC LIMIT 1) )
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT avg(Average) , Name FROM stadium GROUP BY Name ORDER BY avg(Average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T1.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.concentor_count FROM concert AS T1 JOIN singer_in_concentor AS T2 ON T1.concentor_id = T2.concentor_id GROUP BY T1.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Capacity , max(T2.attribution) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T2.stadium_id ORDER BY max(T2.attribution) DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT max(attendance) FROM concert WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT min(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg(Attendance) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT min(T1.attendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.theme != "Festival"
SELECT T2.name , T2.theme , count(*) FROM singer_in_concentment AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name FROM singer AS T1 JOIN singer_in_concentment AS T2 ON T1.singer_id = T2.singer_id WHERE T2.concentment_year >= 2014
SELECT T2.Name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Year < 2014
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name = "Hey"
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1-song_name LIKE "%Hey%"
SELECT min(T1.attendance) , max(T1.attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT min(T1.attendance) , max(T1.attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT min(attendance) , max(attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT min(attendance) , max(attendance) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT T2.weight FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T2.weight LIMIT 1
SELECT sum(weight) FROM Has_pem WHERE petid = (SELECT petid FROM Has_pem WHERE birthdate = (SELECT birthdate FROM Has_pem WHERE birthdate = (SELECT min(birthdate) FROM Has_pem WHERE birthdate = (SELECT min(birthdate) FROM Has_pem WHERE birthdate = (SELECT min(birthdate) FROM Has_pem WHERE birthdate = (SELECT min(birthdate) FROM Has_pem WHERE birthdate = min(birthdate)))) ))
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Has_pemet GROUP BY pettype
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = "F"
SELECT count(*) FROM Has_ppet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT count(DISTINCT pettype) FROM Has_pet
SELECT count(DISTINCT pettype) FROM has_pet
SELECT T2.Fname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 'kittie' OR T1.petid = 'pupus'
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kittens" OR T3.PetType = "Pupus"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Puppy' AND T1.fname = 'Kitten'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'puppy'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PpetType = 'Kittens'
SELECT T1.major , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID != (SELECT T3.petID FROM Has_Pet AS T3 JOIN Pots AS T4 ON T3.petID = T4.petID WHERE T4.petType = 'Kittens')
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE PetID = 2
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'dog' AND T3.PetID NOT IN (SELECT T2.PetID FROM Has_Pet AS T2 JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = 'pug')
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puppy' EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Kittens'
SELECT pettype , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT pettype , sum(weight) FROM Has_pet JOIN Pets ON Has_pet.petid = Pets.petid GROUP BY weight ORDER BY birthdate LIMIT 1
SELECT StuID , weight FROM Has_pet WHERE birthdate > "2020"
SELECT T2.petid , T2.weight FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid = T2.stuid AND T2.birthdate > 2020
SELECT avg(T2.pettype) , max(T2.pettype) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pettype
SELECT avg(PetType) , max(PetType) FROM Has_pemet
SELECT avg(PetType) , max(PetType) FROM Has_pet
SELECT pettype , avg(weight) FROM Has_pet GROUP BY pettype
SELECT T1.fname , T1.age , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT T2.StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T2.stuID FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = "Smith"
SELECT count(*) , StuID FROM Has_pem WHERE StuID IN (SELECT StuID FROM Has_pem)
SELECT count(*) , T2.stuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T1.petID = T3.petID GROUP BY T2.stuID
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Fname , T2.Ssex FROM Has_pet AS T1 JOIN student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.lname FROM Has_pem AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T1.pid = 2001
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T3.petid = T1.petid WHERE T3.birthdate = "2001"
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "null"
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT continent_id , continent_name , count(*) FROM countries GROUP BY continent_name
SELECT continent , countryname , count(*) FROM countries GROUP BY countryname
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT maker , count(*) , maker , fullname FROM car_makers GROUP BY maker
SELECT T1.Maker , T1.FName , count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Toyota" ORDER BY T3.Max(Horsepower) LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.Model = T3.Model ORDER BY T3.Horsepower ASC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.Model JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T4.CountryName = "United States" AND T3.Maker = "Ford" AND T1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2
SELECT maker FROM car_makers WHERE YEAR BETWEEN 2 AND 2
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR LIMIT 1)
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR LIMIT 1)
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = T2.Make AND T1.Year < 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR <= 1980
SELECT continent , count(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.continent
SELECT continent , count(*) FROM countries AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t2.maker , t2.FFullName FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.MakeId GROUP BY t1.maker
SELECT count(*) , T1.Mark , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Mark
SELECT accelerate FROM cars_data WHERE YEAR = 2012 AND MAKING = "Amc Hornet" AND MAKE = "Softhighway"
SELECT accelerate FROM cars_data WHERE country = 'America' AND model = 'Amc Hornet'
SELECT count(*) FROM car_makers WHERE countryname = "Japanese"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN countries AS T3 ON T1.country = T3.countryname WHERE countryname = "Japanese"
SELECT count(*) FROM car_makers WHERE country_id = 'america'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = 'United States'
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPA) FROM cars_data WHERE Cylinders = 4
SELECT MIN(T1.Weight) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = "1974" AND T1.Cylinders = 8
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT maker , model FROM car_makers
SELECT maker , model FROM car_makers
SELECT maker , country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE countryname = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT countryname FROM countries WHERE countryname LIKE "%Europe%" GROUP BY countryname HAVING count(*) >= 3
SELECT max(Horsepower) , T1.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3 GROUP BY T1.Maker
SELECT max(Horsepower) , T1.Mark FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = 3
SELECT maker FROM car_makers JOIN car_names AS T1 ON T1.makeid = T2.makeid JOIN cars_data AS T2 ON T2.id = T2.id WHERE T2.MGPS = (SELECT max(MGPS) FROM cars_data)
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Toyota" ORDER BY T1.MGPL DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE maker = 'Tesla'
SELECT max(acceleration) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(acceleration) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2012 AND 2012
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2012 AND 2013
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T2.CountryName = "America"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2.Continent = T3.Continent WHERE T2.CountryName = "America"
SELECT maker , fullname FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = 'United States' AND id = (SELECT id FROM car_makers WHERE weight > 3500)
SELECT DISTINCT maker FROM car_makers WHERE maker = "General Motors" OR weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
{"sql": "SELECT count(*) FROM cars_data WHERE accelerator = (SELECT min(accelerate) FROM cars_data WHERE maker = \"Tesla")"}
SELECT count(*) , MIN(accelerate) FROM cars_data WHERE maker = "Tesla"
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country_id NOT IN (SELECT country_id FROM countries GROUP BY country_id HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries WHERE countryName = "United States")
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T3.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T1.Cylinders = 4 GROUP BY T3.Model ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN model_list AS T3 ON T2.model = T3.model WHERE T3.maker = '4' GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT maker , maker_name FROM car_makers WHERE country_id = (SELECT country_id FROM cars_data WHERE horsepower < (SELECT min(horsepower) FROM cars_data) ) EXCEPT SELECT maker , maker_name FROM car_makes WHERE count(*) = 3
SELECT maker , name FROM car_makers WHERE country_id NOT IN (SELECT country_id FROM cars_data WHERE horsepower < 4) GROUP BY maker
SELECT max(MGPL) , id FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT max(MGPL) , id FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT model FROM car_makers WHERE weight < 3500 EXCEPT SELECT model FROM car_makes WHERE maker = 'Ford'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE maker = "Ford"
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
SELECT id , maker FROM car_makers WHERE maker = (SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 2) INTERSECT SELECT id , maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY countryid HAVING count(*) > 3 INTERSECT SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE T2.Maker = 'tesl'
SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid JOIN countries AS T3 ON T2.countryid = T3.countryid GROUP BY countryid HAVING count(*) > 3 OR count(*) = 3 INTERSECT SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid JOIN countries AS T3 ON T1.countryid = T3.countryid HAVING count(*) = 3 INTERSECT SELECT countryid , countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid JOIN countries AS T3 ON T1.countryid = T3.countryid HAVING count(*) = 3
SELECT Country FROM airlines WHERE Airline = "JETBLIE"
SELECT Country FROM airlines WHERE airline = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE airline = "JetBlue"
SELECT airline , abbreviation FROM airlines WHERE country = "America"
SELECT airline , Abbreviation FROM airlines WHERE country = 'America'
SELECT airportcode , airportname FROM airports WHERE city = 'JASON'
SELECT airportcode , airportname FROM airports WHERE city = "Syccticity"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT T1.City , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT city , country FROM airports WHERE AirportName = 'Alton'
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Jackson'
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = 'ATA'
SELECT count(*) FROM flights WHERE SourceAirport = 'ATO'
SELECT count(*) FROM flights WHERE airline = 'Jackson'
SELECT count(*) FROM flights WHERE airline = "Jackson"
SELECT count(*) FROM airports WHERE airportname = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Syracuse' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = "Syratie" AND T3.city = "Ashley"
SELECT count(*) FROM airlines WHERE airline = "JETBELE"
SELECT count(*) FROM flights WHERE airline = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "ASY" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights WHERE airline = 'JST' AND FlightNo = 'JSTASY'
SELECT count(*) FROM flights WHERE airline = "JetBlue" AND FlightNo = "AHD"
SELECT count(*) FROM flights WHERE airline = "JETBLO" AND FlightNo = "AHD"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM flights WHERE airline = 'JetBlue' AND sourceairport = 'Aberona'
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T2.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.FlightNo) , T1.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.Aborts FROM airlines AS T1 JOIN airports AS T2 ON T1.airportcode = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline = T2.Airline WHERE T2.SourceAirport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "APG" INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.destairport = "CVO"
SELECT T1.airname FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airname FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = 'APG'
SELECT airline FROM flights WHERE sourceairport = "CVO" EXCEPT SELECT airline FROM airlines WHERE airportcode = "APG"
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) >= 10
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT airline FROM flights GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airlines = "JetBlue"
SELECT FlightNo FROM flights WHERE airline = "JetBlue"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE Airline = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT FlightNo FROM flights WHERE AirportCode = "Jackson"
SELECT FlightNo FROM flights WHERE SourceAirport = 'Jackson'
SELECT count(*) FROM flights WHERE sourceairport = 'Syrctay' OR destairport = 'Jackson'
SELECT count(*) FROM airports WHERE airportname = "Syratay" OR airportname = "Jackson"
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DstAirport FROM flights) UNION SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT SourceAirport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_description FROM Documents
SELECT document_id , document_description FROM Documents
SELECT T2.Document_Name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Description LIKE "%w%"
SELECT T1.document_name , T2.document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE "%w%"
SELECT document_name , document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT t1.document_description , t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_details = "Robbin CV"
SELECT count(DISTINCT t1.template_details) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id GROUP BY t2.template_id
SELECT count(DISTINCT t1.Template_Details) FROM templates AS t1 JOIN documents AS t2 ON t1.Template_ID = t2.Template_ID
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PPT"
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id
SELECT count(*) , template_id FROM Documents GROUP BY template_id
SELECT T1.Date_Effective_To FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from , T2.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT document_id FROM documents
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM documents)
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT effective_date_period , template_type_code FROM templates
SELECT effective_date_period , template_type_code FROM templates
SELECT date_effective_from FROM Templates
SELECT date_effective_from FROM templates
SELECT date_effective_from FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT effective_date_period FROM templates WHERE template_type_code = "CV"
SELECT effective_date_from FROM templates WHERE template_type_code = "CV"
SELECT effective_from , template_type_code FROM templates WHERE version_number > 5
SELECT effective_date_period , template_type_code FROM templates WHERE version_number > 5
SELECT effective_date_period , count(*) FROM templates GROUP BY effective_date_period
SELECT effective_date_period , count(*) FROM templates GROUP BY effective_date_period
SELECT effective_date_from FROM templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_from FROM templates GROUP BY effective_date_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT effective_date_period FROM templates GROUP BY effective_date_period HAVING count(*) < 3
SELECT min(Version_Number) , effective_date_from , effective_date_to FROM Templates
SELECT min(Version_Number) , date_effected_from , date_effected_to FROM templates
SELECT date_effected FROM templates WHERE document_name = "Data base"
SELECT T1.date_effective_from , T2.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT document_name , document_id FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT effective_date_from , effective_date_to , count(*) FROM Documents GROUP BY type_code
SELECT effective_date_period FROM Templates GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_date_period FROM templates GROUP BY effective_date_period ORDER BY count(*) DESC LIMIT 1
SELECT effective_date FROM templates WHERE effective_date BETWEEN date_effective_from AND date_effective_to EXCEPT SELECT document_id FROM documents
SELECT effective_date_from , effective_date_to FROM templates WHERE effective_date_to != "null" OR effective_date_from != "null"
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT template_type_code , template_type_description FROM Ref_template_types
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t1.Template_Type_Description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.Template_Type_Code = t2.Template_Type_Code WHERE t2.Template_Type_Code = "AD"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_description = "Book"
SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_id JOIN templates AS t3 ON t2.template_id = t3.template_id WHERE t3.date_effective_to > "1\n\n"
SELECT DISTINCT t1.document_details FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.date_effective_from > "1\n\n" AND t2.date_effective_to < "1\n\n"
SELECT date_effective_from , date_effective_to FROM templates WHERE template_type_code = "Presentation"
SELECT effective_date_period FROM templates WHERE template_type_code = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name , T2.match_num FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT loser_age , match_num FROM matches
SELECT T1.player_id , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'US'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT T1.name , T1.rank , T2.winner_rank , T2.loser_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.name
SELECT avg(loser_rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT max(leader_rank) FROM matches WHERE winner_id = 1 UNION SELECT max(leader_rank) FROM matches WHERE loser_id = 1
SELECT max(leader_rank) FROM matches WHERE winner_id = 1 OR loser_id = 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.player_id , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.writer_age = 2 AND T2.writer_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.writer_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date IN (SELECT min(birth_date) FROM players)
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name FROM players WHERE hand = "left" ORDER BY birth_date;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.ranking_rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open" AND T2.winner_rank_points = (SELECT max(win_rank_points) FROM matches WHERE tourney_name = "Australian Open")
SELECT T1.name , T2.winner_age , T2.w loser_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.wider_id GROUP BY T2.wider_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY T1.match_num DESC LIMIT 1
SELECT avg(T1.ranking_points) , T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT avg(rank) , first_name FROM players GROUP BY first_name
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , T2.rankings_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tourney_rank) , T1.ranking_date FROM rankings AS T1 JOIN tours AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.ranking_date
SELECT sum(t1.tourney_count) , t1.ranking_date FROM rankings AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id GROUP BY t1.ranking_date
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round LIMIT 3
SELECT T1.name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT line_1 FROM addresses
SELECT line_1 FROM Addresses
SELECT count(*) FROM show WHERE IF_first_show = 1
SELECT count(*) FROM show WHERE IF_first_show = 'Yes'
SELECT name FROM conductor ORDER BY year_of_work ASC
SELECT name FROM conductor ORDER BY birthday
SELECT name FROM conductor WHERE nationality = "American"
SELECT name FROM conductor WHERE nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Orchestra FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY birthday ASC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T2.Name , T1.Orchestra FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING count(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY YEAR_OF_FOUNDED DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded DESC LIMIT 1
SELECT DISTINCT record_company , orchestra_id FROM orchestra
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Conductor_ID ASC
SELECT Major_record_format FROM orchestra ORDER BY Year_of_Founded
SELECT orchestra FROM performance WHERE official_ratings_(millions) = (SELECT max(official_ratings_(millions)) FROM performance)
SELECT T1.record_company FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id JOIN orchestra AS T3 ON T2.orchina_id = T3.orchina_id WHERE T3.year_of_founded = (SELECT min(YEAR_OF_FOUNDED) FROM orchestra) ORDER BY T3.year_of_founded DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003 UNION SELECT record_company FROM orchestra WHERE year_of_founded >= 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performing_ID = T2.Performing_ID WHERE T1.If_first_show = 'Glebe Park'
SELECT count(*) FROM show AS T1 JOIN performance AS T2 ON T1.Performment_ID = T2.Performment_ID WHERE T1.If_first_show = 'Glebe Park'
SELECT TYPE FROM performance WHERE IF_first_show != 1 AND result != 0
SELECT TYPE FROM performance GROUP BY TYPE HAVING COUNT(*) > 1
SELECT T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.role_code = 'PROFESSIONAL' INTERSECT SELECT T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.role_code = 'PROFESSIONAL'
SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN Prols AS T4 ON T4.profession_id = T4.profession_id WHERE T4.role_code = 'PROFESSIONAL' INTERSECT SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN Prols AS T4 ON T4.profession_id = T4.profession_id WHERE T4.role_code = 'OWNER'
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE treatment_type_code = "Treatment"
SELECT avg(age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE treatment_type_code = "Treatment"
SELECT T1.profession_id , T1.last_name , T1.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.date_of_treatment > 2
SELECT DISTINCT T1.customer_id , T2.last_name , T2.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.date_of_treatment > 2 AND T1.state = 'Indiana'
SELECT name FROM dogs WHERE cost_of_treatment > 1000
SELECT T2.name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000
{"sql": "SELECT first_name FROM PROFESSIONS UNION SELECT first_name FROM OWNERS WHERE first_name NOT IN (SELECT first_name FROM PROFESSIONS OR SELECT first_name FROM OWNERS) AND role_code = 'PROCESSED' AND breed_code != 'RESET' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_treatment' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment != 'date_of_ttrene' AND date_of_treatment !=
SELECT first_name FROM professionals EXCEPT SELECT t2.first_name FROM dogs AS t1 JOIN professionals AS t2 ON t1.profession_id = t2.profession_id WHERE t1.breed_code = "Labrador "+ (SELECT T1.breed_code FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.role_code = 'PROFESSOR' UNION SELECT T1.breed_code FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.role_code = 'OWNER')
SELECT professional_id , first_name FROM professionals EXCEPT SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id = "dog"
SELECT professional_id FROM professionals EXCEPT SELECT treatment_id FROM treatments
SELECT T2.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT professional_id , home_phone FROM Professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T2.home_phone , T2.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'no' GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM Breeds WHERE abandoned_yn = 'no'
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1)
SELECT treatment_type_description FROM Treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_departed = (SELECT date_departed FROM Treatments WHERE cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments))
SELECT T2.owner_id , T2.zip_code FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY sum(treatment_type_code) DESC LIMIT 1
SELECT professional_id , first_name FROM professionals GROUP BY professional_id HAVING count(*) >= 2
SELECT DISTINCT T1.professional_id , T2.home_phone , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id WHERE T1.cost_of_treatment < (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN PROFESSIONS AS T2 ON T1.profession_id = T2.profession_id
SELECT date_of_treatment , T2.role_code FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.profession_id
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT cost_of_treatment , treatment_type_description FROM Treatments
SELECT T1.first_name , T1.last_name , T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T1.breed_name = "Rare_Standard"
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "Rare_rush"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT date_departed FROM dogs ORDER BY date_departed
SELECT date_of_treatment FROM Treatments
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT email_address FROM PROFESSIONS WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'no'
SELECT date_departed , date_arrived FROM Dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM Treatments
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Treatment'
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T1.role_code = 'doctor'
SELECT count(*) FROM PROFESSIONS AS T1 JOIN TRENEMENT_TYPES AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T3.dog_id = T3.dog_id WHERE T3.gender = "dog" AND T3.date_of_birth = T2.date_of_treatment
SELECT first_name FROM PROFESSIONS WHERE city LIKE '%West%'
SELECT first_name FROM professionals WHERE city LIKE '%West%'
SELECT t1.first_name FROM Owners AS t1 JOIN Dogs AS t2 ON t1.owner_id = t2.owner_id WHERE t2.date_of_birth LIKE '%North%'
SELECT T2.first_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no' AND age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE abandoned_yn = 'no'
SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE abandoned_yn = 'no' )
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'no' AND breed_code = 'dog' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0;
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'no'
SELECT avg(age) FROM dogs WHERE abandoned_yn = "no"
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE
SELECT sum(charge_amount) FROM CHarges WHERE charge_type = "The most expensive charge type"
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name FROM PROFESSIONS
SELECT email_address , first_name FROM PROFESSIONS
SELECT breed_name , size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_name , size_description FROM Dogs
SELECT T2.first_name , T2.last_name , T3.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T3.dog_id = T2.dog_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Age LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.birth_year LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM citizenship GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Title FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sale > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT T2.Name , T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Title NOT IN (SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Title != "null")
SELECT citizenship FROM singer WHERE birth_year <= 1945
SELECT citizenship FROM singer WHERE birth_year < 1945 GROUP BY citizenship
