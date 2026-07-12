SELECT count(*) FROM singer WHERE is_male = '1'
SELECT count(*) FROM singer
SELECT name , country , age FROM singer WHERE is_male = '1' ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , T1.Country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Country
SELECT T1.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING avg(T1.age) > (SELECT avg(age) FROM singer)
SELECT name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.height BETWEEN 5000 AND 10000
SELECT T2.Location , T2.Name FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Capacity BETWEEN 5000 AND 10000
SELECT avg(Crest_1) , max(Crest_1) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(Average) , name FROM stadium ORDER BY avg(average) DESC LIMIT 1
SELECT avg(Average) , name FROM stadium GROUP BY average ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name , T2.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.concent, T1.concent FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent = T2.concent GROUP BY T1.concent ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T2.theme , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "United States" AND T1.Song_release_year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name = "Hey"
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE "%Hey%"
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM has_pet WHERE weight > 10
SELECT T2.weight FROM Has_pod AS T1 JOIN Pots AS T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT stuid FROM Has_pod WHERE petid = 1) ORDER BY T2.weight LIMIT 1
SELECT T2.weight FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT stuid FROM Has_pup as T3 GROUP BY stuid ORDER BY T3.age LIMIT 1)
SELECT max(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT max(weight) , pet_type , count(*) FROM Has_pet GROUP BY pet_type
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID WHERE T2.age > 20
SELECT count(*) FROM has_ppet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.sex = 'F'
SELECT count(*) FROM Has_puples AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(DISTINCT pettype) FROM has_pet
SELECT count(DISTINCT pettype) FROM Has_pet
SELECT T2.fname , T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 'kittie' OR T1.petid = 'pupus'
SELECT T2.fname , T2.lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 1 UNION SELECT T2.fname , T2.lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 1
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puppy' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Kitten'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Pug' AND T3.pet_age = 100
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pematurity = 'kittens'
SELECT T1.lname , T1.fname , T1.age , T2.pitt_type FROM student AS T1 JOIN has_ppet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT DISTINCT T2.petid FROM has_ppet AS T2)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet
SELECT StuID FROM Has_ppet EXCEPT SELECT StuID FROM Has_pet
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID != (SELECT T3.petID FROM Has_Pet AS T3 JOIN Pots AS T4 ON T3.petID = T4.petID WHERE T4.petType = 'Pug') AND T1.age > 20
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = 2 AND T1.fname != "Kittens"
SELECT T2.pettype , T2.weight , T1.age FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemus AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student) GROUP BY T1.pettype
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT StuID , weight FROM Has_Pet WHERE pet_age > 1
SELECT avg(age) , max(age) , pet_type FROM Has_pet GROUP BY pet_type
SELECT avg(T2.pemttype) , max(T2.pemttype) , T1.stuid FROM Has_pemt AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.stuid
SELECT pet_type , avg(weight) FROM Has_pet GROUP BY pet_type
SELECT avg(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT T1.fname , T1.age , T2.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT DISTINCT T2.lname , T2.age FROM Has_pemet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid
SELECT StuID FROM Has_pem WHERE petID = (SELECT PetID FROM Has_pem WHERE LName = 'Smith')
SELECT StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID GROUP BY T1.stuID
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.ppetage = 3 AND T3.pid = T2.petid
SELECT T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kittens' AND T1.petid = 3
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = "NULL"
SELECT avg(age) FROM Student EXCEPT SELECT avg(age) FROM Has_Pet
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT count(*) FROM countries WHERE countryname = "Europe"
SELECT continent_id , continent_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.ContId GROUP BY T1.CountryName
SELECT continent_id , country_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid GROUP BY T2.continent
SELECT count(*) FROM countries WHERE countryname = "States"
SELECT count(*) FROM countries
SELECT count(*) , T1.Maker , T1.FFullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT maker , COUNT(*) , maker , COUNT(*) FROM car_makers GROUP BY maker
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model ORDER BY T3.Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , YEAR FROM cars_data WHERE YEAR = (SELECT YEAR FROM cars_data ORDER BY YEAR LIMIT 1)
SELECT T1.Maker , T1.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT maker FROM cars_data WHERE YEAR > 1980
SELECT continent , count(*) FROM countries AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT continent , count(*) FROM countries AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT countryname FROM country WHERE countryname LIKE '%car%' GROUP BY countryname ORDER BY count(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.MakeId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , t2.FFullName FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.Maker GROUP BY t1.FFullName
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE YEAR = 2003 AND maker = "Amc hornet"
SELECT accelerate FROM cars_data WHERE YEAR = 2012 AND make = 'Amc Hornet' AND sport = 'Softhost'
SELECT count(*) FROM car_makers WHERE countryname = "France"
SELECT count(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id JOIN countries AS T3 ON T1.country_id = T3.country_id WHERE T3.countryName = "United States"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2.Continent = T3.Continent WHERE T3.CountryName = "United States"
SELECT avg(MGPO) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPO) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8
SELECT countryname , model FROM car_makers
SELECT maker , model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid
SELECT country , id FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T2.CountryName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries WHERE continent = 'Europe' GROUP BY countryname HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(T3.MGPE) , T3.Make , T3.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model GROUP BY T3.Model HAVING COUNT(*) = 3
SELECT max(T2.MGPS) , T1.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId WHERE T1.Cylinders = 3 GROUP BY T1.Maker
SELECT maker FROM car_makers JOIN car_names AS T1 ON T1.makeid = T2.makeid JOIN cars_data AS T2 ON T2.id = T2.id WHERE T2.MGPS = (SELECT max(MGPS) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T2.Model ORDER BY T2.MGPS DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE maker = "Edispl"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(acceleration) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T1.FULL_NAME = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T1.maker = "American Motor Company"
SELECT maker , fullname FROM car_makers WHERE country_id = (SELECT country_id FROM car_makers GROUP BY country_id HAVING count(*) > 3)
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND id = (SELECT id FROM cars_data WHERE weight > 3500)
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT count(DISTINCT YEAR) FROM cars_data WHERE weight < 4000 INTERSECT SELECT count(DISTINCT YEAR) FROM cars_data WHERE weight > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(acceleration) , id FROM cars_data WHERE cylinder_count = 2 AND maker = "volvo"
SELECT count(*) , MIN(acceleration) FROM cars_data WHERE model_list.ModelId = "volvo"
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM car_makers WHERE countryId NOT IN (SELECT countryId FROM countries WHERE countryName = "United States")
SELECT count(*) FROM car_makers WHERE maker != "Toyota" AND maker != "Ford"
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id JOIN car_names AS T3 ON T2.MakeId = T3.MakeId WHERE T2.Maker = "Ford" GROUP BY T1.Model ORDER BY T3.Horsepower DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T1.Id = T3.Id WHERE T3.Maker = "Ford" GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model > (SELECT min(T3.MgP) FROM car_makers AS T3 JOIN car_names AS T4 ON T3.Id = T4.Id WHERE T4.MakeId = T2.MakeId GROUP BY T3.MakeId HAVING count(*) > 3)
SELECT maker , COUNT(*) FROM car_makers WHERE country != 'United States' AND id NOT IN (SELECT id FROM cars_data WHERE cylinders < 4) GROUP BY maker ORDER BY count(*) ASC
SELECT max(MGPH) , YEAR FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPH) , id FROM cars_data WHERE cylinders = 8 OR id < 1980
SELECT model FROM car_makers WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM cars_data)
SELECT maker , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
SELECT maker , maker , count(*) FROM car_makers WHERE count(*) >= 2 GROUP BY maker HAVING count(*) >= 3
SELECT id , countryname FROM car_makers WHERE maker = 'Ford' OR maker = 'Ford' AND countryname = 'France'
SELECT id , maker FROM car_makers WHERE countryId = 'United States' AND maker = 'Ford' OR maker = 'Ford'
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T3.Airline = "JETBL Airways"
SELECT T2.Country FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T3.Airline = 'Jetblue Airways'
SELECT airportname FROM airports WHERE airportcode = "JETBL Airways"
SELECT airportname FROM airports WHERE airportcode = "Jetblue Airways"
SELECT airportname , airportcode FROM airports WHERE country = 'USA'
SELECT airportname , airportcode FROM airports WHERE country = 'USA' AND airportcode = 'IATA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.airportname) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airportcode FROM airports WHERE airportname LIKE "%UAL%"
SELECT T2.AirportName FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.Abreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.airportname , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE SourceAirport = "ATA"
SELECT count(*) FROM flights WHERE airline = "ATA" AND FlightNo = "ATOP"
SELECT count(*) FROM flights WHERE sourceairport = "City Aberdeen"
SELECT count(*) FROM flights WHERE airline = "Aberport"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberport' AND T3.city = 'Ashley'
SELECT count(*) FROM flights WHERE airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airleightid = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines' AND T2.airportname = 'ASY Airport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD Airport" AND T1.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T1.Airline = 'United Airlines'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode JOIN airports AS T3 ON T1.DestAirport = T3.AirportCode GROUP BY T3.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T2.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY count(*) LIMIT 1
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1
SELECT T1.airportname , T2.country FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.terminalairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'CVO'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.city = T3.city WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.airline = 'CVO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) >= 10
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.flightno > 200 GROUP BY T1.airportname HAVING count(*) < 200
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE AirportCode = 'United Airlines'
SELECT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.uid WHERE T2.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Abberle" OR T2.City = "Abilene"
SELECT count(*) FROM airports WHERE airportname = "Aberport" OR airportname = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM Employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city
SELECT count(*) , T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id WHERE T3.city = 'Shofar' GROUP BY T1.city
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city HAVING count(*) > 1 AND age < 30
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T1.name , T2.district FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id WHERE T3.age = (SELECT max(age) FROM employee) INTERSECT SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id WHERE T3.age = (SELECT max(age) FROM employee) GROUP BY T1.name ORDER BY T1.name DESC LIMIT 1
SELECT name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT manager_name FROM employee EXCEPT SELECT employee_id FROM evaluation
SELECT T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID JOIN shop AS T3 ON T1.Shop_ID = T3.Shop_ID GROUP BY T1.Shop_ID
SELECT count(*) , T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id GROUP BY T3.shop_id
SELECT sum(T2.bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id
SELECT sum(bonus) FROM evaluation WHERE year_awarded = 2
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , other_details FROM Documents
SELECT document_name , layout_id FROM Documents WHERE document_description LIKE "%w%"
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.document_details LIKE "%w%"
SELECT t1.paper_id , t2.layout_id , t2.description FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Robbin CV"
SELECT t1.paper_id , t2.layout_id , T1.Template_Details FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t1.Template_Details = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM templates WHERE template_type_code = "text"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Paragraphs AS T3 ON T1.document_id = T3.document_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T1.layout_id , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_id
SELECT T1.Layout_ID , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id GROUP BY T2.document_id HAVING count(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM documents)
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM templates)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT layout_id , version_number , layout_type FROM templates
SELECT T1.id , T1.version_number , T2.type_name FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT t1.layout_type FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT t1.template_id FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "PP" OR t2.template_type_code = "PPT"
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PP" OR T3.template_type_description = "PPT"
SELECT count(*) FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "CV"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT T2.edition_number , T2.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.version_number > 5
SELECT T1.edition_number , T2.layout_type_name FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT T1.Layout_Type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_Type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_Type_Description FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM templates GROUP BY template_type_code HAVING count(*) < 3
SELECT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(Version_Number) , T1.Layout_Type_Code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Layout_Type_Code
SELECT min(Version_Number) , T1.Layout_Type_Code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Layout_Type_Code
SELECT T1.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T2.document_name = "Data base"
SELECT T1.Layout_Type_Code FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_Name = "Data base"
SELECT DISTINCT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.layout_type_count , T1.layout_type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code
SELECT T1.layout_type_count , T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_count
SELECT T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT layout_type FROM templates EXCEPT SELECT DISTINCT layout_type FROM documents
SELECT T1.layout_type_code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details != "text"
SELECT t1.template_type_code , t2.template_details FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T1.template_type_code , T2.template_details FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t2.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.template_type_code = "AD"
SELECT t1.description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t2.layout_type_name FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT T2.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.date_effective_from > "Book"
SELECT DISTINCT t1.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_name = "text"
SELECT DISTINCT t1.description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_name = "text"
SELECT T1.Layout_ID FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T3.Template_Type_Description = "Presentation"
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id WHERE T3.Other_Details = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT t2.Other_Details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Korea"
SELECT Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = "Korea"
SELECT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT DISTINCT T1.document_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*)
SELECT T1.document_id , T2.paragraph_text , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T2.paragraph_text , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T2.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Paragraph_ID , T1.Template_Details FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Paragraphs AS T3 ON T2.Document_ID = T3.Document_ID GROUP BY T2.Document_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 1 AND count(*) <= 2
SELECT T2.Paragraph_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Paragraph_ID HAVING COUNT(*) BETWEEN 1 AND 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Brazil" INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Ireland"
SELECT document_id FROM Documents WHERE document_details LIKE '%Brazil%' UNION SELECT document_id FROM Documents WHERE document_details LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Grade LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , count(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.name , T2.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.name
SELECT T2.name FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T1.teacher_id = T3.teacher_id WHERE T2.course = 'math'
SELECT Name FROM teacher WHERE Grade = 'Math'
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT T1.Teacher_ID FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID WHERE T2.COURSE_NAME = "Intro to Computer Science")
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Pl Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.Museum_ID , T1.Name , T2.Level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY sum(T1.Ticket) DESC LIMIT 1
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Num_of_Ticket) , max(T2.Num_of_Ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID WHERE T3.Level_of_membership = 1
SELECT sum(T2.total_spex) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spent = 0 AND T2.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_sp spent = 0 AND T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT T2.first_name , T2.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.country_code = "USA"
SELECT birth_date , first_name FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(win_earlier_rank) FROM matches
SELECT avg(win_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT T2.tourney_name FROM matches AS T1 JOIN tours AS T2 ON T1.tourney_id = T2.tourney_id GROUP BY T1.tourney_id HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.wider_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = 2 AND T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.year DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(round) FROM matches)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.loser_age
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 1 AND T1.birth_date = "left" AND T2.year = 1 ORDER BY T1.birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.wider_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.name ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.name ORDER BY min(minutes) DESC LIMIT 1
SELECT T1.name , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY max(T1.meres) LIMIT 1
SELECT avg(rankings.points) , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , avg(T2.rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.rank_points , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , sum(T2.rankings_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT count(*) , state FROM players GROUP BY state
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT T1.abstraction FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.abstraction ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT sum(t1.ranking_points) , t2.ranking FROM rankings AS t1 JOIN players AS t2 ON t1.player_id = t2.player_id GROUP BY t2.ranking_rank;
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.round LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "Left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(deaths) , min(deaths) FROM death
SELECT injured FROM death GROUP BY injured ORDER BY count(*) DESC LIMIT 1
SELECT injured FROM death WHERE cause_of_ship_id = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.battle_id WHERE T2.loss_in_battle = 'Brig'
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id HAVING sum(devish_of_ship) > 10
SELECT caused_by_ship_id , name FROM ship GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debading WHERE T2.latr_commander = 'Baldin I' INTERSECT SELECT DISTINCT T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debading WHERE T2.bulgarian_commander = 'Kaloyan'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage != 225
SELECT T2.name , T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_bATTLE WHERE T1.name = 'Lettice' INTERSECT SELECT T2.name , T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_bATTLE WHERE T1.name = 'HMS Atalanta'
SELECT name , result FROM battle WHERE bulgarian_commander != 'John Doe' AND name != 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM Addresses WHERE line_1 = "1" INTERSECT SELECT address_id FROM Addresses WHERE line_2 = "2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM degree_programs WHERE degree_program_id = "curriculum"
SELECT count(*) FROM DEGETPROGRAMS
SELECT department_description FROM DEPT_PROGрамы WHERE degree_summary_name = 'math_curriculum'
SELECT course_description FROM COURSE WHERE degree_program_id = 'Math'
SELECT T1.zip_postcode FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id WHERE T2.department_id = 4 AND T2.department_name = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T2.dept_name , T1.dept_id FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.dept_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , COUNT(*) FROM DEGETPROGRAMS AS T1 JOIN DEPARTMENT AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM Department AS T1 JOIN Degree_Prog AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT count(*) FROM DEPT_PROCS WHERE department_id = 2
SELECT section_name , section_description FROM SECTION
SELECT T2.section_name , T2.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM SECTION ORDER BY section_name DESC
SELECT T1.department_name , T2.student_id FROM departments AS T1 JOIN student_enrolment_courses AS T2 ON T1.department_id = T2.course_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.student_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_name , T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_description FROM DEPT_PROPROGRAMS AS T1 JOIN DEPT_PROPROGRAMS AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name LIKE "%computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.department_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_name HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id , T2.degree_program_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2 GROUP BY T2.student_id ORDER BY T2.semester_id
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor degree'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelers'
SELECT T1.degree_program_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name , T1.department_name , count(*) FROM DEG_REPROGRAMS AS T1 JOIN DEPT_COURSE AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_program_id , T1.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Prog AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.degree_program_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_count , T2.student_enrolment_count FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.department_id = T2.degree_program_id GROUP BY T1.student_id ORDER BY T2.student_count DESC LIMIT 1
SELECT academic_session_name FROM academic_sessions WHERE academic_session_id NOT IN (SELECT course_id FROM student_enrolment)
SELECT name FROM academic_session WHERE student_count = 0
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.course_name HAVING count(*) >= 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) >= 1
SELECT course_name FROM student_enrolment_courses GROUP BY course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'New York'
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.date , T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_left DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Master's Degree" ORDER BY T1.date_left ASC LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.semester_id = (SELECT min(semester_id) FROM student_enrolment)
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != (SELECT address_id FROM addresses WHERE address_id = T1.current_address_id)
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.zip_postcode != (SELECT T3.zip_postcode FROM addresses AS T3 JOIN students AS T4 ON T3.address_id = T4.current_address_id WHERE T4.ssn = T4.ssn)
SELECT T1.address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM students
SELECT avg(date_left) FROM students
SELECT date_left , date_first_registered FROM students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , T1.other_details FROM transcripts AS T1 JOIN transcripts AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.department_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T3.course_id = T2.course_id JOIN department_programs AS T4 ON T4.department_id = T3.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*)) , curriculum_id FROM student_enrolment_courses GROUP BY curriculum_id
SELECT date_left FROM student_enrolment GROUP BY date_left ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Master' INTERSECT SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id WHERE T1.degree_program_id = 'Bachelor'
{"sql": "SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 'Master's AND T3.degree_program_id = 'Bachelers'}
SELECT count(DISTINCT current_address_id) FROM students
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY student_id DESC
SELECT other_details FROM students ORDER BY student_id DESC
SELECT T2.section_name FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T1.section_name = 'h'
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haitian族自治省" OR T1.cell_mobile_number = 09700166582
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.perminent_address_id = T2.address_id WHERE T2.zip_postcode = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT T1.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.Content
SELECT T2.Title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.episode
SELECT DISTINCT Directed_by FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT DISTINCT Directed_by FROM cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT T2.title , T3.directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.episode = T2.episode JOIN TV_channel AS T3 ON T3.id = T2.channel WHERE T1.air_date = "1992-04-12" ORDER BY T1.air_date
SELECT title , directed_by FROM cartoon ORDER BY released_date
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by LIKE "%Ben Jones%" OR directed_by LIKE "%Brandon Vietti%"
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT content) , count(DISTINCT series_name) FROM TV_channel
SELECT count(DISTINCT serial) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Country = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT T2.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Title = "The Rise of the Blue Beetle!"
SELECT t1.name FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T2.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN TV_channel AS T3 ON T1.id = T3.id WHERE T1.series_name = "Sky Radio"
SELECT T1.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.title , T2.episode , T3.score FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id JOIN TV_series AS T3 ON T2.series_name = T3.series_name ORDER BY T3.rating DESC LIMIT 3
SELECT T2.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id GROUP BY T2.Episode ORDER BY COUNT(*) DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT avg(Weekly_Rank) FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T2.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT T2.production_code , T1.channel FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id ORDER BY T2.episode DESC LIMIT 1
SELECT package_option , T1.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Pixel_aspect_ratio_PAR = 100 AND T1.Hight_definition_TV = 100 AND T1.Content = "HD TV"
SELECT package_option , T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Country = "United States" AND T1.Hight_definition_TV = "HD"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN tv_series AS T3 ON T2.channel = T3.id WHERE T3.Series_name = "Todd Casey" GROUP BY T1.Country HAVING count(*) > 1
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2_written_by = "Todd Casey" INTERSECT SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2_written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Country NOT IN (SELECT Country FROM TV_channel WHERE Content = "The Baudel and the Cappot") AND Written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT T1.Serial_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Serial_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT T1.Country , T1.Serial_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Country , T1.Serial_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE country != "United States" AND directed_by != "Ben Jones"
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT count(*) FROM people WHERE Nationality = 'Gamedata'
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T1.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Best_Finish DESC
SELECT DISTINCT T2.Final_Table_Made , T2.Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Car Gamers"
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "All"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Earnings) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = 'Player'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player WHERE People_ID = (SELECT People_ID FROM people ORDER BY Height DESC LIMIT 1)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , set_up_time FROM votes
SELECT T2.contant_number , T1.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2.contant_number , T1.contant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state , T1.phone_number , T2.date FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT name FROM country WHERE indeleous_year > 1950 GROUP BY countrycode ORDER BY indeleous_year DESC LIMIT 1
SELECT name FROM country WHERE countrycode = "Southwest" AND indepyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.District = 'Caribbean'
SELECT sum(T1.Temp) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Caribbean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabby'
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT population , max(living_year) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN city AS T3 ON T3.id = T2.id WHERE countrycode = 'Brazil'
SELECT population , laseffective FROM country WHERE countrycode = 'Brazil'
SELECT district , population FROM country WHERE continent = "Anguila"
SELECT district , population FROM city WHERE countrycode = 'Anglenet'
SELECT avg(living_year) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE continent = "Central Africa"
{"sql": "SELECT avg(lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of_lath_of
SELECT name FROM country WHERE continent = 'Asia' AND min(linfap) = (SELECT min(linfap) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lath) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.region = 'African' AND T2.region = 'Republics'
SELECT avg(lathof) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE countrycode = 'Africa' AND countrycode = 'Republic'
SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Cont Continent = 'Asia' OR T1.Cont Continent = 'Europe'
SELECT sum(T1.Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Cont Continent = 'Asia' OR T1.Cont Continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = 'US'
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = "US"
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "US"
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT sum(percentage) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE language = "Afghanistan"
SELECT name FROM country WHERE continent = "South Asia" ORDER BY population DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T1.citycode = T3.id ORDER BY T1.percentage DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY countrylanguage.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryGROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = 'English' AND T1.language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" AND T2.name = "Dutch"
SELECT name FROM countrylanguage WHERE language = 'English' INTERSECT SELECT name FROM countrylanguage WHERE language = 'French'
SELECT name FROM country WHERE name != 'South America' AND name != 'South America' AND countrycode = 'France' AND countrycode = 'England'
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.region = "English" INTERSECT SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.region = "French"
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = 'Chinese'
SELECT continent FROM country WHERE name = 'Chinese' GROUP BY continent HAVING count(*) = 1
SELECT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT DISTINCT region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = "Dutch" OR T1.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT language FROM countrylanguage WHERE countrycode = 'Asia' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Asia' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.Language HAVING count(*) = 1
SELECT language FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE region = 'Republic')
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) UNION SELECT name FROM city WHERE language = "english"
SELECT name FROM city WHERE population = (SELECT max(population) FROM city WHERE language = "english")
SELECT name , population , avg(lifeexpectancy) FROM country AS t1 JOIN country AS t2 ON t1.code = t2.code WHERE continent = 'Asia' AND countrycode = 'South America' GROUP BY t1.name ORDER BY avg(lifeexpectancy) DESC LIMIT 1
SELECT name , population , max(living_year) FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE continent = 'Asia' GROUP BY T1.name
SELECT avg(living_year) FROM countrylanguage WHERE language != "english"
SELECT avg(lath) FROM countrylanguage WHERE language NOT IN ("english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT name FROM country WHERE head_of_state = Beatrix AND official_language = "English"
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 'Beatrix'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND countrycode IN (SELECT countrycode FROM countrylanguage WHERE indepyear < 1930))
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "America" AND indepyear < 1930
SELECT countrycode FROM country WHERE continent != 'Europe' AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE continent = 'Europe' AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "english"
SELECT state_code FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE language = "English"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE countryname = "United States" AND region = "Republic"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode EXCEPT SELECT T3.name FROM country AS T3 JOIN countrylanguage AS T4 ON T3.countrycode = T4.countrycode WHERE T4.language = 'English' UNION SELECT T3.name FROM country AS T3 JOIN countrylanguage AS T4 ON T3.countrycode = T4.countrycode WHERE T4.language = 'Republic'
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "english"
SELECT name FROM city WHERE countrycode = 'Europe' AND officiallanguage != "English"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.indpyear = 2000 AND T2.language = "Chinese" AND T2.region = "Asia"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.indpyear = 2000 AND T2.official = 'Chinese' AND T1.continent = 'Asia'
SELECT name , founded_year , territory FROM country ORDER BY population LIMIT 1
SELECT name , founded , countrycode FROM country ORDER BY population LIMIT 1
SELECT count(*) , T2.name , T2.leader FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T2.leader FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode ORDER BY T2.territory DESC LIMIT 1
SELECT T2.Name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode HAVING count(*) >= 3
SELECT T2.Name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode HAVING count(*) > 2
SELECT count(*) , district FROM city GROUP BY district HAVING population > (SELECT avg(population) FROM city)
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT government_type , count(*) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode GROUP BY t1.government_type HAVING avg(t2.LifeExpectancy) > 72
SELECT count(*) , type FROM city WHERE average_lur > 72 GROUP BY type
SELECT avg(lisens) , count(*) FROM country WHERE continent = "Europe" AND avg(lisens) < 72
SELECT continent , sum(population) , avg(linfap) FROM country WHERE avg(linfap) < 72 GROUP BY continent
SELECT name , area FROM country WHERE countrycode = "Southwest" ORDER BY surfacearea DESC LIMIT 5
SELECT name , countrycode , countryname FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(t2.tion) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t1.continent = 'North America' AND t1.surfacarearea > 3000
SELECT sum(population) , avg(t1.tion) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t1.region = 'North America' AND t2.population > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.name , T1.countrycode , T2.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.language ORDER BY count(*) DESC LIMIT 1
SELECT countrycode , language FROM countrylanguage ORDER BY population DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T3.countrycode = T2.countrycode WHERE T1.language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = 'Spanish' GROUP BY T1.code HAVING count(*) > 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT T1.Enterprise FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT T2.Enterprise FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T2.Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.conductor_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchic_id = T2.orchic_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id WHERE T3.name = "Director"
SELECT T2.name , T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchacteur GROUP BY T2.orchacteur ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T1.Conductor_ID
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchactress WHERE T1.year_of_founded > 2008
SELECT orchestra, count(*) FROM orchestra GROUP BY orchestra
SELECT count(*) , T1.Orchestra_ID FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID
SELECT orchestra , count(*) FROM orchestra GROUP BY orchestra ORDER BY count(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency
SELECT orchestra , conductor_id FROM performance GROUP BY orchestra , conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra GROUP BY orchestra ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra FROM orchestra WHERE year_of_founded > 2003
SELECT orchestra_id FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra_id FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_format = "CD" OR record_format = "DVD"
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Record_Company = "CD" OR T1.Record_Company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING count(*) > 1
SELECT T1.Year_of_Foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT * FROM Highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM Highschooler WHERE name = 'Kyle'
SELECT student_id FROM friends WHERE friend_id = 1
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT grade , count(*) FROM Highschooler GROUP BY grade
SELECT grade , count(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friends GROUP BY student_id
SELECT count(*) , student_id FROM friend GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.friend_id
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.friend_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1 WHERE T2.friend_id = 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2 AND T2.name = 'Kyle'
SELECT count(*) FROM friend WHERE student_id = 2;
SELECT count(*) FROM friend WHERE student_id = 2;
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT student_id FROM friends EXCEPT SELECT student_id FROM friends
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT T1.student_id FROM friends AS T1 JOIN likes AS T2 ON T1.student_id = T2.liked_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = (SELECT friend_id FROM likes) INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.id = (SELECT liked_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = T3.friend_id AND T3.name = T2.friend_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT T3.friend_id FROM friend AS T3 JOIN highschooler AS T4 ON T3.student_id = T4.id WHERE T4.id = 2) AND T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.grade
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT student_id FROM friend)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(grade) FROM highschooler WHERE friend_id IN (SELECT student_id FROM friend)
SELECT T2.state FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.treatment_type_code JOIN dogs AS T3 ON T3.owner_id = T1.owner_id JOIN breeds AS T4 ON T4.breed_code = T3.breed_code JOIN owners AS T5 ON T3.owner_id = T5.owner_id WHERE T1.role_code = 'guardian' INTERSECT SELECT T2.state FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.treatment_type_code JOIN dogs AS T3 ON T3.owner_id = T1.owner_id JOIN breeds AS T4 ON T4.breed_code = T3.breed_code JOIN owners AS T5 ON T5.owner_id = T5.owner_id WHERE T1.role_code = 'vital'
SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breed AS T3 ON T2.breed_code = T3.breed_code JOIN treatings AS T4 ON T4.dog_id = T2.dog_id JOIN treatment_types AS T5 ON T4.treatment_type_code = T5.treatment_type_code WHERE T5.role_code = 'vital' AND T4.treatment_type_code = 'vital'
SELECT avg(age) FROM dogs WHERE date_departed = 'null'
SELECT avg(age) FROM dogs WHERE date_departed = 'NULL' AND breed_code = 'dog'
SELECT T2.first_name , T2.last_name , T2.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" OR T2.treatment_type_code = "2"
SELECT T1.owner_id , T2.last_name , T2.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" OR T2.role_code = "healthcare" GROUP BY T1.owner_id HAVING count(*) > 2
SELECT name FROM Dogs WHERE cost_of_treatment <= 1000 EXCEPT SELECT DISTINCT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T2.name FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = 'vital' EXCEPT SELECT T2.first_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'Labrador,Labrador,Labrador,Labrador' AND T1.date_of_birth = '10/10/10'
SELECT first_name FROM professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT professional_id , role_code , email_address FROM professionals WHERE role_code != 'voluntary' AND professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 1)
SELECT DISTINCT T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = "healthcare"
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" ORDER BY T2.date_of_birth DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "golden retrievel" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.role FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs ORDER BY weight DESC LIMIT 1)
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '12-12-2002' GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.guardian_id , T1.full_name FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.date_of_birth = '12/12/2012' GROUP BY T2.guardian_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1
SELECT t1.treatment_type_description FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id JOIN treatment_types AS t3 ON t1.treatment_type_code = t3.treatment_type_code WHERE t1.cost_of_treatment = (SELECT min(t2.cost_of_treatment) FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id)
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.breed_code = "Poodle
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T1.dog_id = T2.dog_id ORDER BY cost_of_treatment DESC LIMIT 1)
SELECT T1.profession_name , T1.cell_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.owner_id , T2.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.profession_id = T3.profession_id WHERE T3.treatment_type_code = "health-care" GROUP BY T2.cell_phone HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_code = "Moral Care"
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT cost_of_treatment , treatment_type_code FROM treatments
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = 'Labrador retrievable'
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.name , T1.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.date_of_birth = "12/12/2012"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador Doel"
SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.breed_code = T2.dog_id WHERE T1.breed_name = "Rare_Sound_beard"
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "rare_radiation_beast"
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Golden retrieuer" AND T1.state = "Virginia"
{"sql": "SELECT T2.name , T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-12-12 AND T1.date_of_birth = \"2012-1
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = "Poodle 1"
{"sql": "SELECT date_departed , date_arrived FROM dogs WHERE breed_code = \"Poodle;Labrador;Hypothyroid;Hamed_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_100_
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs) AND T1.breed_code = "poodle_bubble"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_departed , date_arrived FROM dogs
SELECT date_departed , date_arrived FROM dogs
SELECT count(*) FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T2.breed_code = "Pug"
SELECT count(*) FROM dogs AS t1 JOIN treatment_types AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = "healthcare"
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'P' AND T3.weight = 'p'
SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'poodle'
SELECT T1.role_code , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.profession_id = T2.treatment_type_code WHERE T2.date_of_birth LIKE '%West%'
SELECT role_code , street , city , state FROM professionals WHERE last_name LIKE '%West%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T1.first_name , T1.last_name , T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM Treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE breed_code != "pug" AND date_of_birth != "null"
SELECT count(*) FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.dog_id = T2.dog_id JOIN breed AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = "Pug" AND T2.treatment_type_code = "Healthcare"
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = "poodle_bridge")
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'poodle_bubble' AND weight = 1000)
SELECT count(*) FROM professionals AS T1 JOIN treatings AS T2 ON T1.profession_id = T2.profession_id WHERE T1.role_code = 'vet' AND T2.treatment_type_code = 'puggie'
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT treatment_type_code FROM treatments WHERE dog_id = 1)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
{"sql": "SELECT avg(age) FROM dogs WHERE breed_code = \"Poodle;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;Pushing;P
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE;
SELECT cost_of_treatment FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT charge_amount FROM CHARGE_TYPE ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_phone FROM professionals WHERE role_code = "VENDER"
SELECT email_address , home_phone , cell_phone FROM professionals WHERE role_code = 'vet'
SELECT breed_type , size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_type , size_type FROM dogs WHERE gender = 'Pug'
SELECT T2.first_name , T2.last_name , T1.description FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Breeds AS T3 ON T1.dog_id = T3.breed_code WHERE T1.treatment_type_code = 'Primary'
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer WHERE citizenship = 'Vocalist'
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Artist_Type = 'Vocalist'
SELECT Birth_Year , Country FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.birth_year = 1948 OR T2.birth_year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Name , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sale > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Millions > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , T1.Sale_Total FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM ref_feature_types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties)
SELECT property_name FROM Properties WHERE property_type_code = "apartment" OR property_type_code = "house" AND room_count > 1
