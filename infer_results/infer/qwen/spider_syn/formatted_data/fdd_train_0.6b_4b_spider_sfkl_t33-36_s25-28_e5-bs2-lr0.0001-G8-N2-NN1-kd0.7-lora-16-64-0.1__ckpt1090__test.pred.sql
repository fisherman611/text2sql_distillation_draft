SELECT count(*) FROM singer WHERE is_male = '1'
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT T1.name , T1.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , Country FROM singer GROUP BY Country
SELECT T1.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING avg(T1.age) > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T2.stadium_id = T1.stadium_id WHERE T1.capacity BETWEEN 5000 AND 10000
SELECT T1.Location , T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(Average) , name FROM stadium GROUP BY average ORDER BY average DESC LIMIT 1
SELECT avg(Average) , name FROM stadium GROUP BY average ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR >= 2014 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.concentor_id , T2.concentor_id , T1.date FROM concert AS T1 JOIN singer_in_concentor AS T2 ON T1.concentor_id = T2.concentor_id GROUP BY T1.concentor_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T1.theme , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_id = T2.concent_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.name , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "United States" AND T1.Song_release_year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_Name = "Hey"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT T2.weight FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT stuid FROM Has_pup as T3 GROUP BY stuid ORDER BY age LIMIT 1)
SELECT sum(weight) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pemid = 1 AND T1.age = 100
SELECT max(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT max(weight) , pet_type , count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.petid
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20
SELECT count(*) FROM Has_puples AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_ppet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM Has_pemet
SELECT count(DISTINCT pet_type) FROM Has_pet
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 'kittens' OR T1.petid = 'pupus'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'kittens' OR T3.pettype = 'poodle'
SELECT T2.fname , T2.lname FROM Has_pemet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'kitten' INTERSECT SELECT T2.fname , T2.lname FROM has_pemet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Pug' AND T3.petage = 100
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Kittens'
SELECT T2.lname , T2.fname , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid EXCEPT SELECT T2.lname , T2.fname , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = 2
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE petID = 'kittens'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petID = 1
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_pod AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'pug' AND T3.weight > 1 WHERE T3.pettype != 'cat'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = 2 AND T1.fname != "Kittens"
SELECT T2.pet_type , T2.weight , T1.age FROM Has_pem_test AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemus AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.petid ORDER BY T1.pettype LIMIT 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT avg(T1.pet_age) , max(T1.pet_age) , T2.pet_type FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T2.pet_type
SELECT avg(T2.pemtage) , max(T2.pemtage) , T1.pemttype FROM Has_pemt AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.pemttype
{"sql": "SELECT avg(weight) , pet_type FROM Has_pem WHERE pet_type = \"Labrador \udent\ enough to be a cat\""}
SELECT avg(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT T2.lname , T2.age FROM Has_pet AS T1 JOIN student AS T2 ON T1.stuID = T2.stuID JOIN pets AS T3 ON T1.petID = T3.petID
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM has_pet WHERE LName = 'Smith')
SELECT count(*) , StuID FROM Has_pet GROUP BY StuID
SELECT count(*) , T1.Fname , T1.Lname FROM Has_pem AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pemid = 3
SELECT T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.ppetage = 3 AND T1.stuid = T2.stuid
SELECT avg(T2.age) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT avg(age) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM countries WHERE countryname LIKE '%Europe%'
SELECT count(*) FROM continents
SELECT continent_id , continent_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1 Continent = T2.Cont_id GROUP BY T2.Continent
SELECT continent_id , country_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1 Continent = T2.Contid GROUP BY T1.CountryName
SELECT count(*) FROM countries WHERE countryname = "States"
SELECT count(*) FROM countries
SELECT maker , COUNT(*) , fullname FROM car_makers GROUP BY fullname
SELECT maker , maker_name , count(*) FROM car_makers GROUP BY maker
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model ORDER BY T3.Horsepower LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND year = 1970
SELECT maker , MIN(year) FROM cars_data GROUP BY maker
SELECT T1.Maker , T2.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" AND T1.Year > 1980
SELECT DISTINCT YEAR FROM cars_data WHERE YEAR > 1980
SELECT continent , count(*) FROM country AS T1 JOIN continents AS T2 ON T1 Continent = T2.Continent GROUP BY T1.Continent
SELECT continent , count(*) FROM countries AS t1 JOIN continents AS t2 ON t1.Continent = t2.Continent GROUP BY t1.CountryName
SELECT country_name FROM car_makers GROUP BY country_name ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.FFullName
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Maker
SELECT Accelerate FROM cars_data WHERE YEAR = 2014 AND Maker = "Amc Hornet" AND MAKE = "Softhornet"
SELECT accelerate FROM cars_data WHERE country = 'United States' AND maker = 'Ford' AND model = 'Amc Hornet'
SELECT count(*) FROM car_makers WHERE countryname = "France"
SELECT count(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid JOIN countryname AS T3 ON T1.countryname = T3.countryname WHERE T3.countryname = "France"
SELECT count(*) FROM cars_data WHERE country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id JOIN continent AS T3 ON T2 Continent = T3.ContId WHERE T2.CountryName = "United States"
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPE) FROM cars_data WHERE Cylinders = 4
SELECT T1.MGGE FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" AND T1.Year = 1974 GROUP BY T1.Cylinders ORDER BY T1.MGGE LIMIT 1
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT DISTINCT maker , model FROM car_makers
SELECT maker , model FROM car_makers JOIN car_names ON car_makers.id = car_names.makeid
SELECT country_name , id FROM car_makers GROUP BY country_name HAVING count(*) >= 1
SELECT T1.countryname , T1.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries WHERE continent = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT T2.CountryName FROM country AS T1 JOIN country_list AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(power) , maker FROM cars_data WHERE cylinders = 3 GROUP BY maker
SELECT max(T3.MGPA) , T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T3.Id = T2.Id WHERE T1.Maker = "Ford" AND T1.MaxCylinders = 3
SELECT model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model JOIN car_names AS T3 ON T1.MakeId = T3.MakeId WHERE T3.Make = "Ford" ORDER BY T2.MGAP DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T3.Model = T2.Model ORDER BY T1.MGPL DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT avg(Edispl) FROM cars_data WHERE YEAR = 2015
SELECT max(acceleration) , count(*) FROM cars_data WHERE cylinders = "2"
SELECT max(accelerate) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeId JOIN cars_data AS T3 ON T3.id = T2.model WHERE T1.FULL_NAME = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T1.maker = "American Motor Company"
SELECT maker , fullname FROM car_makers WHERE country_id = (SELECT country_id FROM car_makers GROUP BY country_id HAVING count(*) > 3)
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = 'United States' AND weight > 3500
SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T3.Weight > 3500 INTERSECT SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT count(DISTINCT YEAR) FROM cars_data WHERE weight < 4000 INTERSECT SELECT count(DISTINCT YEAR) FROM cars_data WHERE weight > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(accelerate) , id FROM cars_data WHERE cylinder_count = 1 GROUP BY id
SELECT count(*) , MIN(acceleration) FROM cars_data WHERE model_list.Model = "volvo"
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id JOIN car_names AS T3 ON T2.id = T3.id WHERE T3.Make = "Ford" AND T1.Cylinders = 4 GROUP BY T1.model ORDER BY T3.Horsepower DESC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT maker , maker_name FROM car_makers WHERE country_id = (SELECT country_id FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data WHERE count_cylinders = 3) )
SELECT maker , COUNT(*) FROM car_makers WHERE country != "United States" AND id NOT IN (SELECT id FROM cars_data WHERE cylinders < 4) GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT max(MGPS) , YEAR FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPS) , id FROM cars_data WHERE cylinders = 8 OR year < 1980
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != "Ford"
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM cars_data)
SELECT maker , maker FROM car_makers WHERE id >= 2 GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers WHERE id >= 3 GROUP BY maker HAVING count(*) >= 3
SELECT maker , COUNT(*) FROM car_makers WHERE maker = (SELECT maker FROM car_makers GROUP BY maker HAVING COUNT(*) >= 2) INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING COUNT(*) >= 3
SELECT id , countryname FROM car_makers WHERE maker = 'Ford' OR maker = 'Ford' AND country = 'France'
SELECT id , maker FROM car_makers WHERE countryId = countries.countryName INTERSECT SELECT id , maker FROM car_makers WHERE countryId = countries.countryName GROUP BY maker HAVING count(*) > 3 OR maker = 'Ford'
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode JOIN flights AS T3 ON T1.FlightNo = T3.FlightNo WHERE T1.Airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.FlightNo = 'JETBLU'
SELECT airportname FROM airports WHERE airportcode = "JETBLUE Airways"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.SourceAirport = 'Jetblue Airways'
SELECT airportname , airportcode FROM airports WHERE country = "USA"
SELECT airportname , airportcode FROM airports WHERE country = 'USA' AND airportcode = 'IATA'
SELECT airportcode , airportname FROM airports WHERE city = "Anthony"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(flightno) FROM flights
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport LIKE 'UAL'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE Country = 'USA'
SELECT T1.city , T1.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'Alton'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE FlightNo = "ATOL"
SELECT count(*) FROM flights WHERE airline = 'ATA'
SELECT count(*) FROM flights WHERE airline = "Airport Cembarded (ABER)"
SELECT count(*) FROM flights WHERE airline = "Aberport Airports Inc."
SELECT count(*) FROM airports WHERE airportname = "Aberdeen" INTERSECT SELECT count(*) FROM flights WHERE sourceairport = "Aberport"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberona'
SELECT count(*) FROM flights WHERE airline = "Aberdeen" AND sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Abberon' AND T2.AirportName = 'Ashley'
SELECT count(*) FROM flights WHERE airline = 'JetBlue Airways'
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'ASY Airport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airleightname = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD-112'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND sourceairport = 'Aberona'
SELECT T2.city FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.id WHERE T3.country = 'United States' GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname , T2.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) ASC LIMIT 1
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.terminalairport = "AHD"
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.city = T3.city WHERE T3.country = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport AND T3.country = 'CVO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.airline = 'CVO'
SELECT DISTINCT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT DISTINCT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.departure_airline = 'CVO' EXCEPT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.departure_airline = 'APG'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) >= 10
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE AirportCode = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = "United Airlines"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT T2.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport" AND DestAirport = "Aberport"
SELECT T2.FlightCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Abberle" OR T2.City = "Abilene"
SELECT count(*) FROM airports WHERE airportname = 'Aberport' OR airportname = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city
SELECT count(*) , city FROM employee GROUP BY city
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT manager_name , district FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.district FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id GROUP BY T1.employee_id ORDER BY T1.bonus DESC LIMIT 1
SELECT name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT manager_name FROM employee EXCEPT SELECT employee_id FROM evaluation
SELECT t1.name FROM hiring AS t1 JOIN employee AS t2 ON t1.employee_id = t2.employee_id JOIN shop AS t3 ON t1.shop_id = t3.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID JOIN shop AS T3 ON T1.Shop_ID = T3.Shop_ID GROUP BY T3.name
SELECT count(*) , T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id GROUP BY T3.name
SELECT sum(T2.bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Employee_ID
SELECT T1.name , T2.start_from , T2.Is_full_time FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Templates
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , other_details FROM Documents
SELECT document_name , document_id FROM documents WHERE document_description LIKE "%w%"
SELECT t1.document_name , t2.layout_id FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.document_details LIKE '%w%'
SELECT t1.paper_id , t2.layout_id , t2.description FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Robbin CV"
SELECT T1.paper_id , T2.layout_id , T2.description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM templates
SELECT count(DISTINCT layout) FROM templates WHERE template_type_code = "text"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PPT"
SELECT count(*) FROM Documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code
SELECT T1.Layout_ID , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id GROUP BY T2.document_id HAVING count(*) > 1
SELECT T1.Template_ID FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates EXCEPT SELECT t1.template_id FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM templates)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT layout_id , version_number , layout_type FROM templates
SELECT T1.id , T2.version_number , T3.type_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code
SELECT DISTINCT t2.layout_type FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT document_id FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "PP" OR template_type_code = "PPT")
SELECT DISTINCT T1.layout_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PP" OR T3.template_type_description = "PPT"
SELECT count(*) FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT T2.edition_number , T2.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.version_number > 5
SELECT T2.Edition_Number , T1.Layout_Type_Name FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Version_Number > 5
SELECT template_type_code , count(*) FROM templates GROUP BY template_type_code
SELECT T1.layout_type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_Type_Description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING count(*) < 3
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(Version_Number) , T1.Layout_Type_Code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Layout_Type_Code
SELECT min(edition_number) , T1.layout_type_code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT T1.layout_type_code FROM templates AS T1 JOIN layouts AS T2 ON T1.template_id = T2.template_id WHERE T2.layout_name = "Data base"
SELECT T1.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T2.document_name = "Data base"
SELECT DISTINCT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T3.template_type_description = "BK"
SELECT T2.layout_type_count , T1.layout_type_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type_count
SELECT DISTINCT layout_type , count(*) FROM templates GROUP BY layout_type
SELECT T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE document_type_code = "text" GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT layout_type FROM templates EXCEPT SELECT DISTINCT layout_type FROM documents
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code EXCEPT SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_type_code JOIN paragraphs AS t3 ON t2.document_id = t3.document_id
SELECT t2.template_details , t1.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T2.type_name , T2.description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t2.layout_type FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.template_type_code = "AD"
SELECT t1.description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT t1.layout_type_name FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details = "Book"
SELECT DISTINCT t1.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_name = "text"
SELECT DISTINCT t1.other_details FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t2.document_id = t3.document_id WHERE t3.paragraph_text != ""
SELECT T1.layout_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "Presentation"
SELECT T2.Template_ID FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T1.Template_Details = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = "Korea"
SELECT t2.Other_Details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Korea"
SELECT DISTINCT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T2.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT t2.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Customer reviews"
SELECT t2.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT count(*) , t1.id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY t1.id ORDER BY count(*)
SELECT T1.document_id , T2.Paragraph_Text , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T2.Paragraph_Text , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.Paragraph_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Document_ID ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) <= 2
SELECT T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Brazil" INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Ireland"
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT name FROM teacher ORDER BY age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Grade LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Age LIMIT 1
SELECT Hometown , count(*) FROM teacher GROUP BY Hometown
SELECT Hometown , count(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.name , T2.course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name ORDER BY T2.grade
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.Name , T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T1.name , T2.curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.course = 'math'
SELECT name FROM teacher WHERE grade = 'math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING count(*) >= 2
SELECT name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Pl Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T1.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.Museum_ID , T1.name , T2.level_of_membership FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID WHERE T3.level_of_membership = "VIP" ORDER BY T1.Total_spent DESC LIMIT 1
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum EXCEPT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id
SELECT T2.Name , T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T2.Num_of_Ticket) , max(T2.Num_of_Ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID WHERE T3.Level_of_membership = 'Visitor'
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT T2.first_name , T2.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.country_code = "USA"
SELECT birth_date , first_name FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(win_rank) FROM matches
SELECT avg(win_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM matches
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.wider_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_id = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_id = "Australian Open"
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = 2 AND T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max( T2.round ) FROM matches AS T2 WHERE T2.round = T2.round)
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(1) FROM matches)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 1 AND T2.left = 'left' AND T2.birth_date = '1990' ORDER BY T2.birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.name ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT T1.name , T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT avg(T1.ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT sum(ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , sum(T2.rankings_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT count(*) , T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT sum(ranking_points) , T1.ranking FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.ranking_ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "Left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(deaths) , min(deaths) FROM death
SELECT injured , count(*) FROM death GROUP BY injured ORDER BY count(*) DESC LIMIT 1
SELECT injured FROM death WHERE cause_of_ship_id = 't'
SELECT name , RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debate_id WHERE T2.leet_type = 'Brig'
SELECT cast( t1.id AS char) , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t2.caused_by_ship_id HAVING sum( deaths ) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.latron_commander = 'Baldwin I' INTERSECT SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.bulgarian_commander = 'Kaloyan'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT ship.id FROM ship AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.tonnage = 225)
SELECT T1.name , T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.battle_id WHERE T1.name = 'Littice' INTERSECT SELECT T1.name , T2.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.battle_id WHERE T1.name = 'HMS Atalanta'
SELECT name , result FROM battle WHERE bulgarian_commander != (SELECT cast( name AS text) FROM ship WHERE location = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM Addresses WHERE line_1 = "1" INTERSECT SELECT address_id FROM Addresses WHERE line_2 = "2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM DEGPROGRAMS
SELECT count(*) FROM DEGETPROGRAMS
SELECT T2.department_description FROM DEPT_PROG_Prog_to_courses AS T1 JOIN DEPT_Prog_to_courses AS T2 ON T1.department_id = T2.department_id
SELECT course_description FROM DEGREATS AS T1 JOIN DEPTACURSE AS T2 ON T1.department_id = T2.department_id WHERE T1.degrees_program_id = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.degree_program_id FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , COUNT(*) FROM DEGETYPES AS T1 JOIN DEGETYPES AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Department AS T1 JOIN Degree_Progrades AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = "Engineering"
SELECT count(*) FROM DEPARTMENT AS T1 JOIN DEG_PERG AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'Engineering'
SELECT T1.section_name , T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id
SELECT t1.section_name , t1.section_description FROM sections AS t1 JOIN courses AS t2 ON t1.course_id = t2.course_id
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.name , T2.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.current_address_id = T2.current_address_id AND T1.degree_program_id = T2.degree_program_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_description FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name LIKE "%computer%"
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.department_name , T1.department_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id HAVING count(*) = 1
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_id , T1.date_left FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Undergraduates' AND T3.degree_program_id = 2 GROUP BY T1.student_id ORDER BY T1.date_left
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor Degree'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelers'
SELECT T1.degree_program_name FROM Degree_programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degrees_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.date_left FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_enrolment_count FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id GROUP BY T1.student_id ORDER BY T1.student_enrolment_count DESC LIMIT 1
SELECT name FROM sections WHERE course_id NOT IN (SELECT course_id FROM student_enrolment)
SELECT course_name FROM sections EXCEPT SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) = 0
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM COURSE AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM student_enrolment_courses AS T3 JOIN students AS T4 ON T3.student_id = T4.student_id JOIN degree_programs AS T5 ON T3.degree_program_id = T5.degree_program_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM students AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id JOIN degree_programs AS T5 ON T4.degree_program_id = T5.degree_program_id
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.semester_id DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Graduation' ORDER BY T1.date_left ASC
SELECT T2.first_name , T2.middle_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.date_left ASC LIMIT 1
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != (SELECT address_id FROM Addresses WHERE address_id = (SELECT address_id FROM Addresses WHERE address_id != T1.current_address_id))
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.perminent_address_id != T2.address_id
SELECT T1.address_id , T1.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM students
SELECT avg(date_left) FROM students
SELECT date_left , date_first_registered FROM students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , T1.transcript_details FROM transcripts AS T1 JOIN transcripts AS T2 ON T1.transcript_id = T2.transcript_id WHERE T1.transcript_date = (SELECT min(transcript_date) FROM transcripts)
SELECT count(*) FROM students WHERE date_left = 'current'
SELECT count(*) FROM students
SELECT date_left FROM students ORDER BY date_first_registered DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.department_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.department_id
SELECT max(count(*)) , curriculum_id FROM student_enrolment_courses GROUP BY curriculum_id
SELECT date_left FROM student_enrolment GROUP BY date_left ORDER BY count(*) ASC LIMIT 1
SELECT date_left , student_id FROM student_enrolment GROUP BY student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Bachelor'
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Proprogram AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 'Master's' INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Proprogram AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 'Bachelers'
SELECT count(DISTINCT T1.current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY student_id DESC
SELECT other_details FROM students ORDER BY student_id DESC
SELECT section_name FROM sections WHERE section_name = 'section h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T2.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.perminent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.perminent_address_id = T2.address_id WHERE T2.zip_postcode = 'Haitian 000-000' OR T1.cell_mobile_number = 09700166582
SELECT Title FROM cartoon ORDER BY Title
SELECT T1.Title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.title
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT DISTINCT T1.title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.direction = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT T2.TTitle , T1.Directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id ORDER BY T1.Air_Date
SELECT T1.title , T2.directed_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id ORDER BY T1.original_air_date
SELECT DISTINCT Directed_by FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by LIKE "%Ben Jones%" OR directed_by LIKE "%Brandon Vietti%"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT T2.Country , count(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT content) , count(DISTINCT series_name) FROM TV_channel
SELECT count(DISTINCT serial) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Country = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT series_name FROM TV_series WHERE id = (SELECT id FROM cartoon WHERE title = "The Rise of the Blue Beetle")
SELECT t1.name FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT t2.title FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id WHERE t1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T2.episode , T1.series_name , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "The Top Entertainment Show" GROUP BY T1.episode ORDER BY count(*) DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT avg(TV_series.Wotalimitted) FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT T2.Series_name , T1.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Serial_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , T1.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Pixel_aspect_ratio_PAR = 100 AND T1.Hight_definition_TV = 100 AND T1.Content = "HD TV"
SELECT package_option , t1.id FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.hight_definition_TV = "HD" AND t1.Country = "United States"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.id WHERE T3.Directed_by = "Todd Casey" AND T2.Written_by = "Animation"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2_written_by = "Todd Casey" AND T1.Series_name = "Animation"
SELECT Country FROM TV_channel WHERE Country NOT IN (SELECT Country FROM TV_channel WHERE Content = "Todd Casey")
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT T1.Serial_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id JOIN TV_series AS T3 ON T3.id = T2.id WHERE T3.Directed_by = "Ben Jones" INTERSECT SELECT T1.Serial_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T2.id = T1.id JOIN TV_series AS T3 ON T3.id = T2.id WHERE T3.Directed_by = "Michael Chang"
SELECT T1.Country , T1.Series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Country , T1.Series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.CHANNEL WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE country != "Germany" AND directed_by != "Ben Jones"
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T1.Final_table_made , T1.Best_finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Best_finish DESC
SELECT DISTINCT T1.Final_Table_Made , T1.Best_Finish FROM players AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Car Game"
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "All"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT count(*) FROM poker_player WHERE Earnings < 200000
SELECT max(finish) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Best_Finish = "Game_1"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made
SELECT T2.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player WHERE People_ID = (SELECT People_ID FROM people ORDER BY Height DESC LIMIT 1)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
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
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state , phone_number , date FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indeleous_year > 1950 GROUP BY countrycode ORDER BY indeleous_year DESC LIMIT 1
SELECT name FROM country WHERE countrycode = 'USA' AND indepyear > 1950
SELECT count(*) FROM country WHERE government_form = 'Republic'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IndisessionForm = 'Republic'
SELECT sum(T1.population) FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T2.district = 'Caribbean'
SELECT sum(T1.TriageCount) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Caribbean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguilla'
SELECT district FROM city WHERE name = 'Kabbe'
SELECT district FROM city WHERE name = 'Kabba'
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT population , min(lifeface) FROM city JOIN country AS T1 ON city.countrycode = T1.code WHERE countryname = 'Brazil' GROUP BY countryname
SELECT population , lasesting FROM country WHERE countrycode = 'Brazil'
SELECT city.region , population FROM country AS T1 JOIN city AS T2 ON T1.id = T2.countrycode WHERE countrycode = "Angentina"
SELECT district , population FROM city WHERE name = 'Anguila'
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.region = "Central Africa"
SELECT avg(lath) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.region = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(lath) FROM country WHERE countrycode = 'African' AND countrycode = 'Republic'
SELECT avg(livingyear) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(total_triage) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(T1.Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Continent = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = 'US'
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "America"
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE continent = 'Africa'
SELECT count(DISTINCT type) FROM countrylanguage WHERE countrycode = 'Africa'
SELECT sum(T2.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AF'
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.countrycode ORDER BY sum(Percentage) DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T1.citycode = T3.id WHERE T1.language = "De" GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryGROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = 'English' INTERSECT SELECT count(*) FROM countrylanguage WHERE language = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" AND T2.name = "Dutch"
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T2.language = T3.language WHERE T1.name = "French" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T2.language = T3.language WHERE T1.name = "English"
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Indisoficity = 'English' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Indisoficity = 'French'
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT count(*) FROM country WHERE continent = "Asia" AND name = "Chinese"
SELECT DISTINCT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT DISTINCT district FROM city JOIN countrylanguage ON city.countrycode = countrycode AND language = 'Dutch' OR language = 'English'
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN city AS T3 ON T1.CountryCode = T3.CountryCode WHERE T3.District = 'Republic' GROUP BY T2.Language HAVING COUNT(*) = 1
SELECT T2.Language FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode JOIN country AS T3 ON T1.District = T3.District WHERE T3.Region = 'Republic' AND T3.CountryCode = 'US' GROUP BY T2.Language HAVING count(*) = 1
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) AND language = "english"
SELECT name FROM city WHERE countrycode = "United States" AND language = "English" ORDER BY population DESC LIMIT 1
SELECT name , population , avg(lifeexpectancy) FROM country AS T1 JOIN country AS T2 ON T1.code = T2.code WHERE continent = 'Asia' GROUP BY T1.name ORDER BY area DESC LIMIT 1
SELECT name , population , max(lifeface) FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE continent = 'Asia' GROUP BY T1.name
SELECT avg(living_average) FROM countrylanguage WHERE language != "english"
SELECT avg(lath) FROM countrylanguage WHERE language != "english"
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT name FROM country WHERE head_of_state = "Beatrix" AND official_language = "English"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = 'Beatrix'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND idemporal = 1 AND countrycode > 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND indepyear < 1930
SELECT countrycode FROM country WHERE continent = "Europe" AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT countrycode FROM country WHERE continent = 'Europe' AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT max(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE name NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT state_abbr FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT countrycode FROM countrylanguage WHERE language != "english"
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM country WHERE region != "Republic" AND countryname != "United States" AND countryname != "United States of America"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode EXCEPT SELECT T3.name FROM city AS T3 JOIN countrylanguage AS T4 ON T3.countrycode = T4.countrycode WHERE T4.language = 'English' UNION SELECT T3.name FROM country AS T3 JOIN countrylanguage AS T4 ON T3.code = T4.countrycode WHERE T4.language = 'Republic'
SELECT name FROM city WHERE countrycode = 'Europe' AND language != "english"
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM countrylanguage WHERE language = "English"
SELECT DISTINCT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Asia' AND T1.industry = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.region = "Asia" AND T3.indelfname = "Chinese"
SELECT name , founded_year , countrycode FROM country ORDER BY population ASC LIMIT 1
SELECT name , founded , countrycode FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.name , T1.leader FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode ORDER BY T2.population DESC LIMIT 1
SELECT T1.name , T1.population , T2.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population DESC LIMIT 1
SELECT T1.name , count(*) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.countrycode HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city GROUP BY district HAVING max(population) - avg(population) > (SELECT avg(population) FROM city)
SELECT T1.name , count(*) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.region HAVING avg(T2.Lifeexpectancy) > 72
SELECT count(*) , type FROM city WHERE average_lapse > 72 GROUP BY type
SELECT avg(lisens) , count(*) FROM country WHERE continent = "Europe" AND avg(lisens) < 72
SELECT continent , sum(population) , avg(lifecycles) FROM country WHERE avg(lifecycles) < 72 GROUP BY continent
SELECT name , area FROM city WHERE district = "top 5"
SELECT name , countrycode FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(pollion) , avg(t1.tion) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t1.cont Continent = 'North America' AND t1.surfacarearea > 3000
SELECT sum(population) , avg(territory) FROM country WHERE continent = 'North America' AND countrycode = 'USA' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.name , T2.language FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT nationcode , count(*) FROM countrylanguage GROUP BY nationcode ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode JOIN countrylanguage AS T3 ON T2.Language = T3.Language WHERE T3.Language = 'Spanish' GROUP BY T1.CountryCode HAVING count(*) = 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = 'Spanish' GROUP BY T1.code HAVING count(*) > 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT T1.Enterprise FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Years_of_Founded DESC
SELECT orchestra , YEAR_of_Founded FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id GROUP BY T1.name HAVING T1.name != "unknown"
SELECT T2.name , T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN orchestic AS T3 ON T1.orchina_id = T3.orchina_id GROUP BY T3.orchina_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.Orchestra = "Enforcement" GROUP BY T2.Orchestra HAVING COUNT(*) > 1
SELECT T2.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID GROUP BY T2.Orchestra_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN orchestic AS T3 ON T1.orchina_id = T3.orchina_id WHERE T3.major_record_format = "Enrollment" GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT orchestra_id , COUNT(*) FROM performance GROUP BY orchestra_id
SELECT count(*) , T1.Enterprise_ID FROM orchestic AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Enterprise_ID
SELECT orchestra , COUNT(*) FROM orchestra GROUP BY orchestra ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY frequency
SELECT orchestra , CONFANT_ID FROM orchestra GROUP BY orchestra HAVING count(*) = 2
SELECT orchestra FROM orchestra GROUP BY orchestra ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra FROM orchestra WHERE year_of_founded > 2003
SELECT orchestra_id FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra_id FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Major_Record_Format = "CD" OR T1.Major_Record_Format = "DVD"
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Record_Company = "CD" OR T1.Record_Company = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID GROUP BY T1.year_of_work HAVING COUNT(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM Highschooler
SELECT * FROM Highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
{"sql": "SELECT student_id FROM friends WHERE friend_id = (SELECT student_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id = (SELECT liked_id FROM likes WHERE liked_id
SELECT student_id FROM friends WHERE student_id = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM Highschooler GROUP BY grade
SELECT grade , count(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friend GROUP BY student_id
SELECT count(*) , student_id FROM friend GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T1.friend_id = 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 2
{"sql": "SELECT count(*) FROM friend WHERE student_id = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T2.name = 'Kyle'
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT T1.student_id FROM friends AS T1 JOIN likes AS T2 ON T1.friend_id = T2.liked_id GROUP BY T1.student_id HAVING count(*) > 1
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.id = (SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = T3.friend_id AND T2.student_id = T3.student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT friend_id FROM friend WHERE likes_id = 5) GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.grade > 5 GROUP BY T2.friend_id HAVING count(*) >= 2)
SELECT count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 'Kyle'
SELECT count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(grade) FROM highschooler WHERE friend_id IN (SELECT student_id FROM friend)
SELECT min(grade) FROM Highschooler EXCEPT SELECT min(grade) FROM Highschooler WHERE friend_id IN (SELECT student_id FROM friend)
SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breed_types AS T3 ON T2.breed_code = T3.breed_code JOIN treatment_types AS T4 ON T4.treatment_type_code = T4.treatment_type_code WHERE T3.breed_name = "vitality" INTERSECT SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breed_types AS T3 ON T2.breed_code = T3.breed_code JOIN treatment_types AS T4 ON T4.treatment_type_code = T4.treatment_type_code WHERE T3.breed_name = "vitality"
SELECT DISTINCT T2.state FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.treatment_type_code = "Veterinarian" AND T3.state = "State"
SELECT avg(age) FROM dogs WHERE date_departed = 'NULL'
SELECT avg(age) FROM dogs WHERE date_departed = 'NULL' AND breed_code = "healthcare"
SELECT T2.first_name , T2.last_name , T2.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" OR T2.date_of_treatment > 2
SELECT T1.owner_id , T2.last_name , T2.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" OR T2.role_code = "health_caret"
SELECT name FROM dogs WHERE cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT first_name FROM professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T3.owner_id = T2.customer_id WHERE T2.treatment_type_code = "medical"
SELECT DISTINCT T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code EXCEPT SELECT T3.role_code , T3.email_address FROM professionals AS T3 JOIN dogs AS T4 ON T3.profession_id = T4.owner_id JOIN treatment_types AS T2 ON T3.role_code = T2.role_code
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" ORDER BY T2.age DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "golden retrievable" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T2.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE treatment_type_code = 'C')))))))))
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = (SELECT date_of_birth FROM Dogs WHERE weight = (SELECT max(weight) FROM Dogs))
SELECT treatment_type_description FROM treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = (SELECT max(date_of_birth) FROM Dogs) GROUP BY T1.zip_code ORDER BY sum(treatment_type_code) DESC LIMIT 1;
SELECT T1.profession_id , T2.cell_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT DISTINCT T1.owner_id , T1.cell_phone FROM OWNERS AS T1 JOIN PROFESSIONS AS T2 ON T1.owner_id = T2.owner_id JOIN PPROFESSIONS AS T3 ON T2.profession_id = T3.profession_id WHERE T2.role_code = "VENDER" GROUP BY T1.cell_phone HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatments AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T1.treatment_type_code = "Medicine"
SELECT date_of_treatment , T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.date_of_birth = '12/12/2010'
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = 'Labrador retrievable'
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T3.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T1.breed_code = T3.breed_code
SELECT T2.breed_name , T3.date_of_treatment FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN treatment_types AS T3 ON T3.treatment_type_code = T1.treatment_type_code WHERE T1.treatment_type_code = 'rare'
SELECT T1.name , T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T1.breed_name = "Rare_Runway"
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Shattercore" AND T1.state = "Virginia"
{"sql": "SELECT T2.name , T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.date_of_birth = \"2011-11-12\" AND T1.date_of_birth = \"2012-11-12\" AND T1.date_of_birth = \"2013-11-12\" AND T1.date_of_birth = \"2014-11-12\" AND T1.date_of_birth = \"2015-11-12\" AND T1.date_of_birth = \"2016-11-12\" AND T1.date_of_birth = \"2017-11-12\" AND T1.date_of_birth = \"2018-11-12\" AND T1.date_of_birth = \"2019-11-12\" AND T1.date_of_birth = \"2020-11-12\" AND T1.date_of_birth = \"2021-11-12\" AND T1.date_of_birth = \"2022-11-12\" AND T1.date_of_birth = \"2023-11-12\" AND T1.date_of_birth = \"2024-11-12\" AND T1.date_of_birth = \"2025-11-12\" AND T1.date_of_birth = \"2026-11-12\" AND T1.date_of_birth = \"2027-11-12\" AND T1.date_of_birth = \"2028-11-12\" AND T1.date_of_birth = \"2029-11-12\" AND T1.date_of_birth = \"2030-11-12\" AND T1.date_of_birth = \"2031-11-12\" AND T1.date_of_birth = \"2032-11-12\" AND T1.date_of_birth = \"2033-11-12\" AND T1.date_of_birth = \"2034-11-12\" AND T1.date_of_birth = \"2035-11-12\" AND T1.date_of_birth = \"2036-11-12\" AND T1.date_of_birth = \"2037-11-12\" AND T1.date_of_birth = \"2038-11-12\" AND T1.date_of_birth = \"2039-11-12\" AND T1.date_of_birth = \"2040-11-12\" AND T1.date_of_birth = \"2041-11-12\" AND T1.date_of_birth = \"2042-11-12\" AND T1.date_of_birth = \"2043-11-12\" AND T1.date_of_birth = \"2044-11-12\" AND T
SELECT date_departed , date_arrived FROM dogs WHERE breed_code = "Poodle 1"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = "Poodle" AND treatment_type_code = "Healthcare"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs) AND T1.breed_code = "poodle_bearing"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM owners WHERE state = 'Hawaii' OR last_name = 'Wisconsin'
SELECT email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T1.state = "Hawaii" OR T1.state = "Wisconsin"
SELECT date_departed , date_arrived FROM Dogs
SELECT date_departed , date_arrived FROM Dogs
SELECT count(*) FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.treatment_type_code = "puppy"
SELECT count(*) FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.gender = "Pug"
SELECT count(*) FROM PROFESSIONS AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'P' AND T3.weight = 100
SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = "Poodle"
SELECT role_code , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.profession_id = T2.profession_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name LIKE '%West%'
SELECT role_code , street , city , state FROM PROFESSIONS WHERE last_name LIKE '%West%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Doggus AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE breed_code NOT IN (SELECT breed_code FROM dogs WHERE date_of_birth = "2010-12-20")
SELECT count(*) FROM dogs AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code WHERE t1.breed_code = "puppy"
SELECT count(*) FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.abandoned_yn = 'no' AND T2.breed_code = 'pug'
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = "poodle_buffie")
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 1 AND treatment_type_code = 'Puggie' AND date_of_treatment = 'Puggie' )
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 'pug')
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM charges
SELECT max(charge_amount) FROM CHARGE_TYPE
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM professionals WHERE role_code = 'VENDER'
SELECT email_address , home_phone , cell_phone FROM professionals WHERE role_code = 'vet'
SELECT breed_type , size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_type , size_type FROM dogs WHERE gender = 'Pug'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.first_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer WHERE citizenship = 'Vocalist'
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Artist_Type = 'Vocalist'
SELECT Birth_Year , Country FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT T2.Citzie FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Citzie ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Name , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T2.Singer_ID FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_1 > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Millions > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM ref_feature_types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties)
SELECT property_name FROM Properties WHERE property_type_code = "House" OR property_type_code = "Apartment" AND room_count > 1
