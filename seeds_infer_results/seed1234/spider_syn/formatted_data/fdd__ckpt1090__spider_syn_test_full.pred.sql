SELECT count(*) FROM singer WHERE is_male = '1'
SELECT count(*) FROM singer
SELECT name , country , age FROM singer WHERE is_male = '1' ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT T2.name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > (SELECT avg(Average) FROM singer)
SELECT singer_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT T1.name , T1.height , T1.average FROM stadium AS T1 JOIN concert AS T2 ON T2.stadium_id = T1.stadium_id GROUP BY T2.stadium_id HAVING T1.capacity BETWEEN 5000 AND 10000
SELECT T1.Location , T1.Name FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(Cupacity) , max(Cupacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT avg(Average) , name FROM stadium GROUP BY average ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR >= 2014 GROUP BY T2.capacity ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.concentor_id , T1.concentor_name , T1.concentor_date FROM concert AS T1 JOIN singer_in_concentor AS T2 ON T1.concentor_id = T2.concentor_id GROUP BY T1.concentor_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T1.theme , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_singer_id = T2.singer_id GROUP BY T1.concent_singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.name , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "2014"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name = 'Hey'
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY sum(capacity) DESC LIMIT 1)
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pemet WHERE weight > 10
SELECT t3.weight FROM has_pod AS t1 JOIN pets AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t1.stuid = t3.stuid WHERE t2.pettype = 'pug' AND t3.age = (SELECT min(age) FROM student WHERE sex = 'M' AND major = 'Computer Science')
SELECT sum(weight) FROM has_pem WHERE pet_age BETWEEN 1 AND 10 AND pet_type = 'pug' AND stuid = 1
SELECT max(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT max(weight) , pet_type , count(*) FROM Has_pet GROUP BY pet_type
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pem AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.age > 20
SELECT count(*) FROM Has_puck AS T1 JOIN Students AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = "F"
SELECT count(*) FROM Has_puples AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(DISTINCT pettype) FROM Has_pemus WHERE pettype = "Domestic"
SELECT count(DISTINCT pet_type) FROM Has_pet
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kittens" OR T3.pettype = "Pupus"
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petID = T2.petID WHERE T1.petID = 1
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.petType = 'Pug' AND T3.pet_age = 100
SELECT T2.Fname , T2.Lname FROM Has_pem_Test T1 JOIN Student T2 ON T1.StuID = T2.StuID WHERE T1.pettype = 'Puggie' INTERSECT SELECT T2.Fname , T2.Lname FROM Has_pem_test T1 JOIN Student T2 ON T1.StuID = T2.StuID WHERE T1.pettype = 'Kittens' INTERSECT SELECT T2.Fname , T2.Lname FROM Has_pem_test T1 JOIN Student T2 ON T1.StuID = T2.StuID WHERE T1.pettype = 'Puggie'
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE petID = 1)
SELECT T2.pet_type , T1.age FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid EXCEPT SELECT T2.pet_type , T1.age FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 2
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE petID = 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE petID = 1
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_pod AS T2 ON T1.StuID = T2.stuid EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.stuid WHERE T2.petID = 1 AND T2.petID != 2
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = 1 EXCEPT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = 2
SELECT T2.pet_type , T2.weight , T1.age FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1
SELECT pettype , sum(weight) FROM Has_palot AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM student) GROUP BY T1.pettype
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT avg(age) , max(age) , pet_type FROM Has_pet GROUP BY pet_type
SELECT avg(T2.pet_type) , max(T2.pet_age) , T1.pet_type FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT PetType , avg(weight) FROM Has_pet GROUP BY PetType
SELECT pet_type , avg(weight) FROM Has_pet GROUP BY pet_type
SELECT T2.lname , T2.age FROM Has_pemet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T3.pemid = T1.pemid
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petID = T2.petID JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T1.stuid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T1.lname = "Smith"
SELECT count(*) , StuID FROM Has_pem WHERE StuID IN (SELECT StuID FROM Has_pem)
SELECT count(*) , T2.stuID FROM Has_pemt AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID GROUP BY T2.stuID
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.Fname , T1.Lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 3
SELECT T2.lname FROM Has_pem T1 JOIN Student T2 ON T1.stuid = T2.stuid JOIN Pets T3 ON T3.petid = T1.petid WHERE T3.pettype = 'Kittens' AND T3.petage = 3
SELECT avg(Age) FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_pem AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = 0
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT count(*) FROM countries WHERE continent = "Europe"
SELECT continent_id , continent_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Contid GROUP BY T1.Continent
SELECT continent , countryname , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1 Continent = T2.Contid GROUP BY T1.Continent
SELECT count(*) FROM countries WHERE countryname LIKE "%States%"
SELECT count(*) FROM countries
SELECT count(*) , T1.Maker , T1.FULL_NAME , T1.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model JOIN cars_data AS T3 ON T2.MakeId = T3.Id GROUP BY T1.Maker
SELECT maker , COUNT(*) , fullname FROM car_makers GROUP BY maker
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T3.Model = T2.Model WHERE T3.Maker = "Ford" ORDER BY T3.Max(Horsepower) LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model ORDER BY T3.Horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" AND T1.Year > 1980
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT continent , count(*) FROM countries AS T1 JOIN continent AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT continent , count(*) FROM countries AS t1 JOIN continent AS t2 ON t1.Continent = t2.Continent GROUP BY t1.Continent
SELECT countryname FROM car_makers GROUP BY countryname ORDER BY count(*) DESC LIMIT 1
SELECT T2.FFullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , t2.FULL_NAME FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker GROUP BY t1.id
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE YEAR = 2012 AND maker = "Amc Hornet" AND make = "Soropath"
SELECT accelerate FROM cars_data WHERE YEAR = 2010 AND MAKING = "Amc Hornet" AND SPORTING_TYPE = "Surb. High Speed"
SELECT count(*) FROM car_makers WHERE countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T3.CountryName = "France"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE T2.countryName = "United States"
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = "United States"
SELECT avg(MGPS) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPO) FROM cars_data WHERE Cylinders = 4
SELECT T1.MGPS , T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.ManufacturerId = T2.ManufacturerId WHERE T2.Make = "Toyota" AND T1.Year = 1974 GROUP BY T1.Cylinders ORDER BY T1.MGPS ASC LIMIT 1
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT countryname , maker FROM car_makers
SELECT maker , model FROM car_makers JOIN car_names ON car_makers.id = car_name.id
SELECT country , id FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T1.countryname , T1.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries WHERE continent = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT T2.CountryName FROM country AS T1 JOIN country_list AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T1.MGPS) , T1.Maker , T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model WHERE T1.Cylinders = 3 GROUP BY T1.MakeId ORDER BY max(T1.MGPS)
SELECT max(T1.MGPS) , T1.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Manufacturer = T2.Manufacturer WHERE T1.Cylinders = 3 GROUP BY T1.Maker
SELECT model FROM car_makers JOIN car_names AS T1 ON T1.Model = T1.Model JOIN cars_data AS T2 ON T2.id = T2.id WHERE T2.MGPA = (SELECT max(MGPA) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.MGPL DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = "2" UNION SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = "4" UNION SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = "6" UNION SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = "8" UNION SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = "10"
SELECT max(acceleration) FROM cars_data WHERE cylinders = "2"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T1.FULLNAME = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.model JOIN cars_data AS T4 ON T4.id = T3.id WHERE T3.Make = "American Motor Company"
SELECT maker , fullname FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND weight > 3500
SELECT DISTINCT maker FROM car_makers WHERE country_id = 'United States' AND id = (SELECT id FROM cars_data WHERE weight > 3500)
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT count(DISTINCT YEAR) FROM cars_data WHERE weight < 4000 INTERSECT SELECT count(DISTINCT YEAR) FROM cars_data WHERE weight > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(accelerate) , COUNT(*) FROM cars_data WHERE id = (SELECT id FROM cars_data WHERE maker = "volvo")
SELECT count(*) , MIN(acceleration) FROM cars_data WHERE id = (SELECT id FROM cars_data WHERE maker = "volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T1.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId WHERE T1.Cylinders = 4 GROUP BY T1.model ORDER BY T1.MGHOH DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T4.CountryName = "United States" GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT T1.Maker , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Maker != (SELECT T1.Maker FROM car_makes WHERE T1.Marker > (SELECT min(Cylinders) FROM cars_data)) GROUP BY T1.Maker HAVING count(*) > 3
SELECT maker , COUNT(*) FROM car_makers WHERE country != 'United States' AND id NOT IN (SELECT id FROM cars_data WHERE cylinders < 4) GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT max(MGPL) , MIN(year) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPH) , id FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM car_makers WHERE weight < 3500 EXCEPT SELECT model FROM car_makes WHERE maker = 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != 'Ford'
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM cars_data)
SELECT maker , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
SELECT maker , maker , COUNT(*) FROM car_makers WHERE country_id = (SELECT country_id FROM car_makers GROUP BY maker HAVING COUNT(*) >= 2) INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING COUNT(*) >= 3
SELECT id , countryname FROM car_makers GROUP BY maker HAVING count(*) > 3 INTERSECT SELECT id , countryname FROM car_makes WHERE maker = 'Ford' AND model = 'Fiat'
SELECT id , countryname FROM car_makers WHERE countryid = countries.countryid INTERSECT SELECT id , countryname FROM car_makers WHERE countryid = countries.countryid GROUP BY countryname HAVING count(*) > 3 INTERSECT SELECT id , countryname FROM car_makers WHERE countryid = countries.countryid INTERSECT SELECT id , countryname FROM car_makers WHERE countryid = countries.countryid GROUP BY countryname HAVING count(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT T2.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.abbr = 'Jetblue Airways'
SELECT airportname FROM airports WHERE airportcode = "JETBL Airways"
SELECT airportname FROM airports WHERE airportcode = 'Jetblue Airways'
SELECT airportname , airportcode FROM airports WHERE country = "USA"
SELECT airportname , airportcode FROM airports WHERE country = 'USA' AND airportcode != (SELECT airportcode FROM airports WHERE country = 'USA' AND airportcode = (SELECT airportcode FROM airports WHERE country = 'USA'))
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(total) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airportcode FROM airports WHERE airportname LIKE 'UAL'
SELECT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T1.Airline = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Alton" AND T1.country = "US"
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Alton" AND T1.country = "United States"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE FlightNo = 'APG'
SELECT count(*) FROM flights WHERE FlightNo = 'ATOL'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE airline = "Airports in North North West Region" AND FlightNo = "Aberon"
SELECT count(*) FROM flights WHERE airline = "Aberport Airports Company"
SELECT count(*) FROM flights WHERE sourceairport = "Aberport"
SELECT count(*) FROM flights WHERE sourceairport = "Aberport"
SELECT count(*) FROM flights WHERE airline = 'Aberdeen' AND sourceairport = 'Aberdeen' AND destairport = 'Ashley'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights WHERE airline = "United Airlines" AND sourceairport = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'ASY Airport' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD Airport' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Abberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND sourceairport = 'Aberona'
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T2.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airportcode ORDER BY count(*) LIMIT 1
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1
SELECT T1.airportname , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airpointcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) ASC LIMIT 1
SELECT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T1.Airline = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.terminalairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.city = T3.city WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.city = T3.city WHERE T2.airline = 'CVO'
SELECT DISTINCT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'CVO' EXCEPT SELECT DISTINCT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.fleightno = 10
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo > 200 GROUP BY T1.airportname HAVING count(*) < 200
SELECT avg(count(*)) FROM flights WHERE airportcode = "Southwest" AND count(*) < 200
SELECT FlightNo FROM flights WHERE AirportCode = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = 'United Airlines'
SELECT flightno FROM flights WHERE sourceairport = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport" AND DestAirport = "Aberport"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Abberand" OR T2.City = "Abilene"
SELECT count(*) FROM airports WHERE airportname = 'Abilene' OR airportcode = 'Aberona'
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , T2.city FROM employee AS T1 JOIN hiring AS T2 ON T1.Employee_ID = T2.Employee_ID JOIN shop AS T3 ON T3.Shop_ID = T2.Shop_ID WHERE T3.District = 'TOWN' GROUP BY T2.city
SELECT count(*) , city FROM employee GROUP BY city
SELECT T2.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T2.city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city HAVING count(*) > 1 AND age < 30
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT manager_name , district FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.district FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , city , district FROM shop GROUP BY name ORDER BY count(*) DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from = (SELECT max(start_from) FROM hiring) INTERSECT SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from = (SELECT max(start_from) FROM hiring)
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from > 1 GROUP BY T1.employee_id ORDER BY sum(Bonus) DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT manager_name FROM employee EXCEPT SELECT employee_id FROM evaluation
SELECT T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T1.shop_id = T3.shop_id GROUP BY T3.name
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT sum(Bonus) FROM evaluation
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
SELECT document_name , layout_id FROM documents WHERE document_description LIKE "%w%"
SELECT T2.document_name , T1.Template_Details FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Document_ID JOIN paragraphs AS T3 ON T2.Paragraph_ID = T3.Paragraph_ID WHERE T3.Other_Details LIKE "%w%"
SELECT t1.paper_id , t2.layout_id , t2.description FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Robbin CV"
SELECT t1.document_id , t2.document_name , t3.description FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t1.document_id = t3.document_id WHERE t2.template_type_code = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM templates WHERE template_type_code = "text"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT T1.Layout_ID , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.Layout_ID , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.id , T2.type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T2.type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id GROUP BY T2.document_id HAVING count(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT t1.template_id FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM templates)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT layout_id , version_number , layout_type FROM Templates
SELECT T1.id , T2.version_number , T3.type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code
SELECT DISTINCT t1.layout_type FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT T1.template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "PP" OR T2.template_type_code = "PPT"
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PP" OR T3.template_type_description = "PPT"
SELECT count(*) FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "CV"
SELECT count(*) FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t3.template_type_description = "CV"
SELECT T1.edition_number , T2.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.version_number > 5
SELECT T1.edition_number , T2.layout_type_name FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT T1.layout_type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING count(*) < 3
SELECT T1.template_type_code FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(Version_Number) , T2.Layout_Type_Code FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Layout_Type_Code
SELECT min(edition_number) , T1.layout_type_code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT T2.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T1.date_effective_from = "Data base"
SELECT T1.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T2.document_name = "Data base"
SELECT DISTINCT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_type_code = "BK"
SELECT T2.layout_type_count , T1.layout_type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type_count
SELECT T1.layout_type_count , T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_count
SELECT T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT layout_type FROM templates EXCEPT SELECT DISTINCT layout_type FROM documents
SELECT DISTINCT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code EXCEPT SELECT t1.template_type_description FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T2.name , T2.description FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.template_type_code
SELECT T1.template_type_code , T2.template_details FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t2.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.template_type_code = "AD"
SELECT T2.Layout_Type_Description FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T1.Template_Type_Code = "AD"
SELECT t2.layout_type_name FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details = "Book"
SELECT DISTINCT t1.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_name = "text"
SELECT DISTINCT t1.document_details FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t1.document_id = t3.document_id WHERE t2.template_type_code = "text"
SELECT T1.Layout_ID FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T3.Template_Type_Description = "Presentation"
SELECT T1.document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_details = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT t2.Other_Details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.Document_Name = "Korea"
SELECT Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'Korea'
SELECT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T2.Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT count(*) , T1.Template_ID FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.Template_ID = T2.Document_ID GROUP BY T1.Template_ID ORDER BY T1.Template_ID
SELECT T2.document_id , T1.text_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Paragraph_ID , T1.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) LIMIT 1
SELECT T2.Paragraph_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Paragraph_ID ORDER BY count(*) ASC LIMIT 1
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id HAVING count(*) >= 1 AND count(*) <= 2
SELECT T2.Paragraph_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T2.Paragraph_ID HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paper_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Brazil" INTERSECT SELECT T1.paper_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Ireland"
SELECT document_id FROM Documents WHERE document_name = "Brazil" INTERSECT SELECT document_id FROM Documents WHERE document_name = "Ireland"
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.name , T2.curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T2.Name , T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T1.name , T2.curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT name FROM teacher WHERE grade = "Math"
SELECT Name FROM teacher WHERE Name = 'Math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Pl Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id WHERE T1.total_spent = (SELECT max(total_sp spent) FROM visit)
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Ticket) , max(T2.Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID GROUP BY T2.Ticket
SELECT sum(T2.total_spex) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year < 2011 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT T1.first_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.country_code = "USA"
SELECT birth_date , first_name FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winners_rank) FROM matches
SELECT avg(win_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_id ORDER BY sum( loser_rank ) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tourney_name FROM matches WHERE tournament_id NOT IN (SELECT tournament_id FROM matches WHERE loser_hand = 10) GROUP BY tournament_id HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = 2 AND T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(2) FROM matches)
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(3) FROM matches)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 2 AND T2.year = 2000 ORDER BY T1.birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T2.name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN teams AS T3 ON T1.tourney_id = T3.tourney_id WHERE T3.tourney_name = "Australian Open" AND T1.ranking_date = "2003" GROUP BY T2.name ORDER BY sum(T1.ranking_points) DESC LIMIT 1
SELECT T1.name , T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY min(T2.minutes) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY round , minutes DESC LIMIT 1
SELECT avg(T1.ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name, T1.last_name
SELECT T1.first_name , T1.last_name , avg(T2.rank) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT ranking_points , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , sum(T2.rank_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT count(*) , T1.state FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.state
SELECT count(*) , state FROM players GROUP BY state
SELECT T1.abstraction FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.abstraction ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking
SELECT ranking , COUNT(*) FROM matches GROUP BY ranking_time
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT T1.name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.entry LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'left' AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date , T2.winner_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.win_count DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(dev toll) , min(dev toll) FROM death
SELECT injured , count(*) FROM death GROUP BY injured ORDER BY count(*) DESC LIMIT 1
SELECT T1.deaths , T1.injured FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = "t"
SELECT name , RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_battle WHERE T2.ship_type = 'Brig'
SELECT cast(1 AS string) , name FROM ship WHERE ship_type = "count(*) - 1 IN (SELECT count(*) FROM death WHERE id = (SELECT id FROM death WHERE note = "count(*) - 1 IN (10) ) )
SELECT cast( T1.id AS char) , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.latron_commander = 'Baldin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE tonnage = 225)
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_bATTLE WHERE T1.name = "Lettice" INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_bATTLE WHERE T1.name = "HMS Atalanta"
SELECT name , result FROM battle WHERE name NOT IN (SELECT ship.id FROM ship AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.location = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "1" INTERSECT SELECT address_id FROM addresses WHERE line_2 = "2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM DEGETPROGRAMS WHERE degree_program_name = "Curriculum"
SELECT count(*) FROM DEGPROGRAMS
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name = "Math Curriculum"
SELECT course_description FROM DEG_PROGRAMS WHERE degree_summary_name = 'Math'
SELECT T1.zip_postcode FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id WHERE T2.degree_program_id = "Poiset" AND T2.student_id = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea";
SELECT T1.department_name , T1.degree_program_id FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.dept_name , T1.dept_id , COUNT(*) FROM DEGUE_PROPROGRAMS AS T1 JOIN DEPTIONS AS T2 ON T1.department_id = T2.department_id GROUP BY T1.dept_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Department AS T1 JOIN Degree_Prog AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Prograpes
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = "Engineering"
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT T2.section_name , T2.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM SECTION AS T1 JOIN COURSE AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T2.name , T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T2.current_address_id = T2.current_address_id AND T2.dept_id = T2.dept_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name , T1.student_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.department_description FROM departments AS t1 JOIN degree_programs AS t2 ON t1.department_id = t2.department_id JOIN courses AS t3 ON t2.degree_program_id = t3.degree_program_id WHERE t3.course_description LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.degree_program_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id HAVING count(*) = 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , T2.degree_program_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 2 GROUP BY T1.student_id ORDER BY T1.student_id
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor Degree'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 'Bachelers'
SELECT T1.degree_program_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name , T1.sum_total_enrolment FROM DEG_Program_1 AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Progrees AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_count , T2.student_count FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id IN (SELECT student_id FROM student_enrolment GROUP BY student_id ORDER BY student_count DESC LIMIT 1)
SELECT academic_session_name FROM sections WHERE course_id NOT IN (SELECT course_id FROM student_enrolment)
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id EXCEPT SELECT T3.department_name FROM students AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id JOIN student_enrolment_courses AS T5 ON T4.student_enrolment_id = T5.student_enrolment_id GROUP BY T3.department_id HAVING count(*) = 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id WHERE T2.department_id IN (SELECT T1.department_id FROM courses AS T3 JOIN degree_programs AS T4 ON T3.course_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Student Enrolment')
SELECT T2.course_name FROM student_enrolment AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) >= 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = 'New York'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM students AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id JOIN degree_programs AS T5 ON T4.degree_program_id = T5.degree_program_id
SELECT T2.date , T1.student_id FROM student_enrolment_courses AS T1 JOIN student_enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT semester_id FROM student_enrolment WHERE degree_program_id = 1 AND student_id = (SELECT student_id FROM student_enrolment WHERE degree_program_id = 1 ORDER BY date_left DESC LIMIT 1))
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Ph.D. in Computer Science" ORDER BY T1.date_left ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.semester_id LIMIT 1
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != (SELECT address_id FROM addresses WHERE address_id = (SELECT current_address_id FROM students))
SELECT T2.first_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.address_id != (SELECT permanent_address_id FROM Addresses)
SELECT T2.address_id , T1.name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id GROUP BY T2.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM students
SELECT avg(date_left) FROM students
SELECT date_left , date_first_registered FROM students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , T2.transcript_details FROM transcripts AS T1 JOIN transcripts AS T2 ON T1.transcript_id = T2.transcript_id
SELECT count(*) FROM students WHERE date_left = 'current'
SELECT count(*) FROM Students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.course_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*)) , curriculum_id FROM student_enrolment_courses GROUP BY curriculum_id
SELECT date_left , student_id FROM student_enrolment ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Bachelor'
SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Course AS T3 ON T2.course_id = T3.course_id WHERE T3.degree_program_id = 'Master's' INTERSECT SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Course AS T3 ON T2.course_id = T3.course_id WHERE T3.degree_program_id = 'Bachelers'
SELECT count(DISTINCT T1.current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY student_id DESC
SELECT other_details FROM students ORDER BY student_id DESC
SELECT section_name FROM sections WHERE section_name = 'h'
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T2.first_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.permanent_address_id = 2 AND T2.date_left = 2 AND T1.email_address = '09700166582'
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.zip_postcode = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT T2.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.Series_name
SELECT T2.Title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.episode
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones"
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT T2.title , T3.direct_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.episode = T2.episode JOIN TV_channel AS T3 ON T3.id = T2.channel WHERE T1.air_date = "18_49_Rating_Share" ORDER BY T1.air_date
SELECT T1.title , T2.directed_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel ORDER BY T2.air_date
SELECT DISTINCT Directed_by FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by LIKE "%Ben Jones%" OR directed_by LIKE "%Brandon Vietti%"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.Country , count(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT content) , count(*) FROM TV_channel
SELECT count(DISTINCT serial) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE country = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Content = "The Rise of the Blue Beetle!"
SELECT T2.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Series_name = "The Rise of the Blue Beetle"
SELECT T1.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT T2.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "The Best Choice" GROUP BY T1.episode ORDER BY count(*) DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT avg(TV_series.weekly_rank) FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT T1.Series_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.episode = T2.episode WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT director , count(*) FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id GROUP BY T1.id
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY aired DESC LIMIT 1
SELECT package_option , T1.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Pixel_aspect_ratio_PAR = 100 AND T1.Hight_definition_TV = 100 AND T1.Content = "HD TV"
SELECT package_option , t1.id FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.country = "USA" AND t1.hight_definition_TV = "HD"
SELECT T2.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel JOIN TV_channel AS T3 ON T1.id = T3.id WHERE T3.Content = "Animation" AND T3.Language = "Todd Casey"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.channel JOIN TV_channel AS T4 ON T3.channel = T4.id WHERE T4.product_name = "Todd Casey" AND T3.episode = "Animation"
SELECT Country FROM TV_channel WHERE Country NOT IN (SELECT Country FROM TV_channel WHERE Content = "Todd Casey")
SELECT country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT T1.Serial_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" INTERSECT SELECT T1.Serial_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Michael Chang"
SELECT T1.Country , T1.Serial_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Country , T1.Serial_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Country != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T2.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT DISTINCT T1.Final_table_made , T1.Best_finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Car Gamers"
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Tactic 1"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT count(*) FROM poker_player WHERE Earnings < 200000
SELECT max(finish) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = 'Player'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player WHERE People_ID = (SELECT People_ID FROM people ORDER BY Height DESC LIMIT 1)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Height > 200)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Best_Finish = 'car gamer' )
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM AREA_CODE_STATE
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , set_up_time FROM votes
SELECT T1.contant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contant_number = T2.contestant_number GROUP BY T1.contant_number HAVING count(*) >= 2
SELECT T2.contant_number , T1.contestant_name FROM votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM votes WHERE contestant_number NOT IN (SELECT contestant_number FROM contests)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state , phone_number , date FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyeyear > 1950 GROUP BY countrycode ORDER BY countrycode
SELECT name FROM country WHERE countrycode = "US" AND indepyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.Territory) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.CountryCode = 'Caribbean'
SELECT sum(T1.Temp) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Caribbean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT district FROM city WHERE name = 'Kabba'
SELECT district FROM city WHERE name = 'Kabba'
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT population , min(lifetimes) FROM city JOIN country AS t2 ON city.countrycode = t2.code WHERE countrycode = 'Brazil' GROUP BY countrycode
SELECT population , laselected FROM country WHERE countrycode = 'Brazil'
SELECT district , population FROM country WHERE countrycode = 'Anglenet'
SELECT countrycode , population FROM country WHERE continent = 'Anglenext' AND region = 'Anglenext'
SELECT avg(linfexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.region = "Central Africa"
SELECT avg(lath) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE countrycode = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT avg(lath) FROM country WHERE countrycode = 'Africa' AND countryname = 'Republic'
SELECT avg(lath) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE countrycode = 'Africa' AND statecode = 'Republic'
SELECT sum(T2.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' INTERSECT SELECT sum(T2.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Europe'
SELECT sum(T1.Temp) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' OR T2.Region = 'Europe'
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = "US"
SELECT avg(T2.GNP) , count(*) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.CountryCode = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "US"
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = "Africa"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = 'Aruba'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AFAL'
SELECT count(*) FROM countrylanguage WHERE language = "Afghanistan"
SELECT name FROM country WHERE continent = "Asia" INTERSECT SELECT name FROM countrylanguage WHERE percentage = (SELECT percentage FROM countrylanguage ORDER BY percentage DESC LIMIT 1)
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T1.citycode = T3.id WHERE T1.language = 'en' GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryGROUP BY continent ORDER BY sum(percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = "English" AND T1.language = "Dutch"
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'French' INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'English'
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = "English" INTERSECT SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = "French"
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT continent FROM country WHERE name = 'Chinese' GROUP BY continent HAVING population = 1
SELECT DISTINCT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT district FROM city WHERE name = "Dutch" OR name = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode HAVING count(*) = 1
SELECT language FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE region = 'Republic')
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) UNION SELECT name FROM city WHERE language = 'English'
SELECT name FROM city WHERE countrycode = 'United States' AND population = (SELECT max(population) FROM city WHERE countrycode = 'United States') AND language = 'English'
SELECT name , population , expected life length FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , max(lived_in_years) FROM country WHERE continent = 'Asia' GROUP BY countrycode
SELECT avg(liveyears) FROM countrylanguage WHERE language != "english"
SELECT avg(lath) FROM countrylanguage WHERE language != "english"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT name FROM country WHERE headOfState = "Beatrix" AND official_language = "English"
SELECT T2.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = "Beatrix"
SELECT count(DISTINCT name) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND language = "English") AND independentyear < 1930
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND indepyear < 1930
SELECT countrycode FROM country WHERE continent = "Europe" AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT countrycode FROM country WHERE continent = "Europe" AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM country WHERE continent = 'Africa' AND countrycode NOT IN (SELECT countrycode FROM country WHERE region = 'Asia') GROUP BY countrycode ORDER BY population LIMIT 1
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT max(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country WHERE countryname NOT LIKE "english%"
SELECT countrycode FROM country WHERE countryname != "United States" AND countryname != "United States" AND countryname != "United States"
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country
SELECT countrycode FROM countrylanguage WHERE language != "english"
SELECT countrycode FROM country WHERE region != "Republic" AND countryname != "United States"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Republic' OR T2.region = 'United States' AND T3.language = 'English'
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "english"
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM countrylanguage WHERE language = "English"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.indpyear = 2000 AND T2.official = 'Chinese' AND T2.region = 'Asia'
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.indpyear = 2000 AND T2.indfname = 'Chinese' AND T1.continent = 'Asia'
SELECT name , founded_year , territory FROM country ORDER BY population ASC LIMIT 1
SELECT name , founded , countrycode FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.name , T1.leader FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name ORDER BY total DESC LIMIT 1
SELECT name , population , head_of_state FROM country WHERE countrycode = (SELECT countrycode FROM country ORDER BY surfacearea DESC LIMIT 1)
SELECT T2.name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.countrycode HAVING count(*) >= 3
SELECT T2.Name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode HAVING count(*) > 2
SELECT count(*) , district FROM city GROUP BY district HAVING population > (SELECT avg(population) FROM city)
SELECT district , count(*) FROM city GROUP BY district HAVING avg(population) - max(population) > (SELECT avg(population) FROM city)
SELECT T2.name , count(*) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.name HAVING avg(T2.Lifeexpectancy) > 72
SELECT count(*) , type FROM city WHERE average_lapse > 72 GROUP BY type
SELECT avg(lisens) , count(*) FROM country AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode WHERE t1.region = 'Asia' AND t1.lisens < 72
SELECT continent , sum(population) , avg(lath) FROM country WHERE avg(lath) < 72 GROUP BY continent
SELECT name , area FROM city WHERE population = (SELECT max(population) FROM city)
SELECT name , countrycode FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country WHERE continent = 'South America' INTERSECT SELECT name FROM country WHERE continent = 'South America' GROUP BY countrycode ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(T1.treneratio) FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(territory) FROM country WHERE continent = 'North America' AND countrycode != 'South America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.language , T2.state , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.state ORDER BY count(*) DESC LIMIT 1
SELECT countrycode , language FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT sum(population) FROM countrylanguage WHERE language = "Spanish"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT T1.Enterprise FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT orchestra , YEAR_of_Founded FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.conductor_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchactress_id GROUP BY T1.conductor_id HAVING count(*) >= 2
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.orchame_id NOT IN (SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING COUNT(*) > 1)
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008 GROUP BY T1.name HAVING count(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_work > 2008
SELECT orchestra, count(*) FROM orchestra GROUP BY orchestra
SELECT count(*) , T1.Orchestra_ID FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID
SELECT Orchestra FROM orchestra GROUP BY Orchestra ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT orchestra FROM performance GROUP BY orchestra HAVING count(*) = (SELECT count(*) FROM performance) ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra GROUP BY orchestra ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra FROM orchestra WHERE year_of_founded > 2003
SELECT orchestra_id FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra_id FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_format = "CD" OR record_format = "DVD"
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Record_Format = "CD" OR T1.Record_Format = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Year_of_Found FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE name = 'Kyle'
SELECT student_id FROM friends WHERE friend_id = 1
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friend GROUP BY student_id
SELECT count(*) , student_id FROM friends GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.friend_id FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = "Kyle"
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2 AND T1.friend_id = 2
SELECT count(*) FROM friends AS T1 JOIN student AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id = 1 AND T2.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T2.name = 'Kyle'
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT student_id FROM friends EXCEPT SELECT student_id FROM friends
SELECT name FROM highschooler WHERE ID NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler EXCEPT SELECT t1.name FROM highschooler AS t1 JOIN friend AS t2 ON t1.id = t2.student_id WHERE t2.friend_id = 1
SELECT T1.student_id FROM friends AS T1 JOIN likes AS T2 ON T1.friend_id = T2.liked_id GROUP BY T1.student_id HAVING count(*) >= 1
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = 'friends'))
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = T3.friend_id AND T3.name = T2.friend_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT T2.name FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.grade > 5 GROUP BY T2.name HAVING count(*) >= 2
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = "Kyle"
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT friend_id FROM friend)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(T3.grade) FROM highschooler AS T3 JOIN friend AS T4 ON T3.id = T4.student_id
SELECT T1.state FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN breed AS T3 ON T2.breed_code = T3.breed_code JOIN treatment_types AS T4 ON T4.treatment_type_code = T4.treatment_type_code JOIN professionals AS T5 ON T5.profession_id = T4.professional_id WHERE T4.treatment_type_code = 'vital' AND T5.role_code = 'guardian'
SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN Treatments AS T4 ON T4.dog_id = T2.dog_id JOIN Treatment_Types AS T5 ON T4.treatment_type_code = T5.treatment_type_code WHERE T5.treatment_type_code = "vergilator" INTERSECT SELECT T1.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN Treatments AS T4 ON T4.dog_id = T2.dog_id JOIN Treatment_Types AS T5 ON T4.treatment_type_code = "vergilator"
SELECT avg(age) FROM dogs WHERE date_departed = 'null'
SELECT avg(age) FROM dogs WHERE date_of_birth = '2012-01-01' AND breed_code = 'Labrador Jack'
SELECT T1.owner_id , T2.first_name , T2.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '2010-01-01' AND T1.state = "Indiana"
SELECT T2.first_name , T2.last_name , T2.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Indiana" OR T2.role_code = "health_caret"
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = 'vitals' EXCEPT SELECT DISTINCT T1.first_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.profession_id = T2.dog_id WHERE T2.name = 'dog'
SELECT first_name FROM professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE breed_code = 'dog'
SELECT role_code , email_address FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT role_code , email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.weight = 2000 ORDER BY T2.date_of_birth DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatings AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code HAVING count(*) = 1)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM dogs ORDER BY count(*) DESC LIMIT 1)
SELECT T2.owner_id , T2.first_name , T2.last_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.date_of_birth = '10/10/2012' GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.guardian_id , T2.familiar_name FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T2.date_of_treatment = (SELECT max(date_of_treatment) FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN owners AS T3 ON T3.owner_id = T2.owner_id)
SELECT treatment_type_description FROM treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT t1.name FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.cost_of_treatment = (SELECT min(t2.cost_of_treatment) FROM treatments)
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T1.cost_of_treatment = max(cost_of_treatment))
SELECT T1.guardian_id , T1.zip_code FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment = (SELECT max(cost_of_treatment) FROM treatments WHERE dog_id = T1.dog_id)
SELECT T1.profession_id , T2.cell_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T2.customer_id , T2.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.role_code = 'vet' GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , T1.first_name , T1.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_code = "Primary"
SELECT date_of_treatment , T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatments AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T1.treatment_type_code = "Veterian"
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT T2.first_name , T2.last_name , T3.size_code FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id WHERE T1.date_of_birth = '12/12/2010'
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.breed_name , T2.name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T2.first_name , T2.last_name , T1.name FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
{"sql": "SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.breed_code = T2.dog_id WHERE T1.breed_name = \"Rare_Sharctic_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch_Shavch
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "rare_run"
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Shavens" AND T1.state = "Virginia"
{"sql": "SELECT T1.name , T2.breed_code FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.date_of_birth = '2012-10-12' AND T1.date_of_birth = '2012-11-12' AND T1.date_of_birth = '2012-12-12' AND T1.date_of_birth = '2012-13-12' AND T1.date_of_birth = '2012-14-12' AND T1.date_of_birth = '2012-15-12' AND T1.date_of_birth = '2012-16-12' AND T1.date_of_birth = '2012-17-12' AND T1.date_of_birth = '2012-18-12' AND T1.date_of_birth = '2012-19-12' AND T1.date_of_birth = '2012-20-12' AND T1.date_of_birth = '2012-21-12' AND T1.date_of_birth = '2012-22-12' AND T1.date_of_birth = '2012-23-12' AND T1.date_of_birth = '2012-24-12' AND T1.date_of_birth = '2012-25-12' AND T1.date_of_birth = '2012-26-12' AND T1.date_of_birth = '2012-27-12' AND T1.date_of_birth = '2012-28-12' AND T1.date_of_birth = '2012-29-12' AND T1.date_of_birth = '2012-30-12' AND T1.date_of_birth = '2012-31-12' AND T1.date_of_birth = '2012-32-12' AND T1.date_of_birth = '2012-33-12' AND T1.date_of_birth = '2012-34-12' AND T1.date_of_birth = '2012-35-12' AND T1.date_of_birth = '2012-36-12' AND T1.date_of_birth = '2012-37-12' AND T1.date_of_birth = '2012-38-12' AND T1.date_of_birth = '2012-39-12' AND T1.date_of_birth = '2012-40-12' AND T1.date_of_birth = '2012-41-12' AND T1.date_of_birth = '2012-42-12' AND T1.date_of_birth = '2012-43-12' AND T
SELECT date_departed , date_arrived FROM dogs WHERE breed_code = "Poodle;Labrador;Heder;Heder"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = "Poodle"
{"sql": "SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.age = (SELECT min(age) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) WHERE T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2.date_of_birth = (SELECT min(date_of_birth) FROM Dogs) AND T2
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM Owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_departed , date_arrived FROM dogs
SELECT date_departed , date_arrived FROM dogs
SELECT count(*) FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Puppy"
SELECT count(*) FROM dogs WHERE breed_code = "Pug" AND abandoned_yn = "Y";
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T1.role_code = "vet" AND T2.dog_id = "poodle"
SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P' AND T2.weight > 100
SELECT T1.role_code , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.treatment_type_code = 'West'
SELECT role_code , street , city , state FROM professionals WHERE first_name LIKE '%West%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT sum(cost_of_treatment) FROM Treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM Treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE breed_code != "pug" AND date_of_birth != "null"
SELECT count(*) FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN breed AS T3 ON T1.breed_code = T3.breed_code WHERE T1.gender = 'P' AND T1.date_of_birth = '10/12/2012'
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE weight = 1000)
{"sql": "SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = \"poodle_cuppe_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2_2
SELECT count(*) FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T1.profession_id = T3.owner_id WHERE T3.breed_code = 'poodle' EXCEPT SELECT count(*) FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T1.profession_id = T3.owner_id WHERE T3.breed_code = 'poodle'
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT treatment_type_code FROM treatments WHERE dog_id = 1)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE;
SELECT sum(charge_amount) FROM CHARGE WHERE charge_type = "The most expensive charge type"
SELECT charge_amount FROM CHARGE_TYPES ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_phone FROM PROFESSIONS
SELECT email_address , home_phone , cell_phone FROM PROFESSIONS WHERE role_code = 'VENTATORY'
SELECT breed_name , size_description FROM Breeds JOIN Sizes ON Breeds.breed_code = Sizes.size_code
SELECT DISTINCT breed_type , size_type FROM dogs WHERE gender = 'Pug'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
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
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT T1.City FROM city AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Name , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_1 > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , T1.Sale , T1.Temple FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , T1.Sale_Total FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM ref_feature_types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM ref_property_types WHERE property_type_code = (SELECT property_type_code FROM properties)
SELECT property_name FROM Properties WHERE property_type_code = "Apartment" OR property_type_code = "House" GROUP BY property_name HAVING room_count > 1
