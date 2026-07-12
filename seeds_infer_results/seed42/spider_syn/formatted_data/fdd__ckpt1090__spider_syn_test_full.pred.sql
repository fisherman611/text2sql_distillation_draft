SELECT count(*) FROM singer WHERE is_male = '1'
SELECT count(*) FROM singer
SELECT name , country , age FROM singer WHERE is_male = 'yes' ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T1.name , T1.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T2.year LIMIT 1
SELECT name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer)
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , state FROM singer GROUP BY state
SELECT T2.song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer) GROUP BY T1.song_name HAVING count(*) > 1
SELECT name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity BETWEEN 5000 AND 10000
SELECT T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity BETWEEN 5000 AND 10000
SELECT avg(Crest_1) , max(Crest_1) FROM concert
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT avg(Average) , name FROM stadium GROUP BY name ORDER BY avg(Average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , T2.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.Capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year > 2013 GROUP BY T2.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.concentor_id , T1.concentor_name , T1.concentor_date FROM concert AS T1 JOIN singer_in_concentor AS T2 ON T1.concentor_id = T2.concentor_id GROUP BY T2.concentor_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T1.theme , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Country = "United States" AND T1.Song_release_year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.song_name = "Hey"
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1-song_name LIKE "%Hey%"
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT T2.weight FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid WHERE T1.petid = 2 AND T2.ppettype = 'Puppy' ORDER BY T2.ppettype DESC LIMIT 1
SELECT sum(weight) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.pemusus + T2.pemusus LIMIT 1
SELECT max(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT max(weight) , pet_type , count(*) FROM Has_pet GROUP BY pet_type
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T1.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_puples AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(*) FROM Has_puples AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(DISTINCT pettype) FROM Has_pet
SELECT count(DISTINCT pettype) FROM has_pet
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petID = T2.petID WHERE T1.petID = "kitten" OR T1.petID = "puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Pug' OR T3.pettype = 'Kittens'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'kitten' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puggles' AND T3.petage = 100
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE petID = 1)
SELECT T2.pet_type , T1.age FROM has_pet AS T1 JOIN pets AS T2 ON T1.petID = T2.petID WHERE T1.stuid NOT IN (SELECT stuid FROM has_pet WHERE petID = 2)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
{"sql": "SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pem}
SELECT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT DISTINCT T2.petid FROM Has_Pet AS T2 WHERE T2.pettype = 'pug') AND T1.age > 100
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petID = 2 AND T1.fname != "Kittens"
SELECT T2.pet_type , T2.weight , T1.age FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1
SELECT pettype , sum(weight) FROM Has_palting AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM student) GROUP BY T1.pettype
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT avg(T2.pet_age) , max(T2.pet_age) , T1.pet_type FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petID = T2.petID GROUP BY T1.pet_type
SELECT avg(T2.pet_type) , max(T2.pet_age) , T1.pet_type FROM Has_pemet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid GROUP BY T1.pettype
SELECT pet_type , avg(weight) FROM Has_pet GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Has_pet GROUP BY pet_type
SELECT T1.fname , T1.age , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_pem WHERE petID = (SELECT PetID FROM Has_pem WHERE LName = 'Smith')
SELECT T1.stuID FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T1.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pemet GROUP BY StuID
SELECT count(*) , T2.stuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T1.petID = T3.petID GROUP BY T2.stuID
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.Fname , T2.Lname , T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuID = T2.StuID GROUP BY T1.stuID HAVING count(*) > 1
SELECT T2.lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 3
SELECT T2.lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 3 GROUP BY T2.lname ORDER BY T2.lname LIMIT 1
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT continent_id , continent_name , count(*) FROM countries JOIN continents ON countries.continent = continent_id GROUP BY country_name
SELECT continent_id , country_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid GROUP BY T2.continent
SELECT count(*) FROM countries WHERE CountryName = "United States"
SELECT count(*) FROM countries
SELECT count(*) , T2.Marker , T1.FFullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Marker GROUP BY T1.Marker
SELECT maker , fullname , count(*) FROM car_makers GROUP BY maker
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Manufacturer = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" ORDER BY T3.Horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Weight < (SELECT avg(T1.Weight) FROM cars_data AS T1 WHERE T1.Id = T1.Id)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = "United States" AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id ORDER BY T1.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT maker FROM cars_data WHERE YEAR > 1980
SELECT continent , count(*) FROM country AS t1 JOIN continents AS t2 ON t1.continuaid = t2.contid GROUP BY t1.continent
SELECT continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.CountryName
SELECT countryname FROM country WHERE countryname LIKE '%car%' GROUP BY countryname ORDER BY count(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T2.countryid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t1.FFullName FROM car_makers AS t1 JOIN model_list AS t2 ON t1.Maker = t2.Maker GROUP BY t1.Maker
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId GROUP BY T1.Maker
SELECT Accelerate FROM cars_data WHERE MAKING = "Amc hornet sportabout"
SELECT accelerate FROM cars_data WHERE YEAR = 2013 AND accelerate = 'Amc hornet sportabout'
SELECT count(*) FROM car_makers WHERE country_name = "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T3.Continent = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE country_name = "USA"
SELECT count(*) FROM cars_data WHERE country = 'United States'
SELECT avg(MGPS) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T2.MakeId = 8 AND T1.Year = 1974
SELECT MIN(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT DISTINCT maker , model FROM car_makers
SELECT maker , model FROM car_makers JOIN car_names ON car_makers.id = car_name.makeid
SELECT country , id FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T1.countryname , T1.id FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries WHERE continent = 'Europe' GROUP BY countryname HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId JOIN countries AS T3 ON T1.Continent = T3.Continent WHERE T3.CountryName = "Europe" AND T2.Maker = "Ford" GROUP BY T2.Mark HAVING count(*) >= 3
SELECT max(MGPH) , T2.Manufacturer FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T1.Id = T3.Id WHERE T1.Cylinders = 3
SELECT max(T1.MGPA) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT maker , sum(MGPS) FROM cars_data GROUP BY maker ORDER BY sum(MGPS) DESC LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T2.Model = T3.Model ORDER BY T3.MGPH DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "volvo"
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(acceleration) FROM cars_data WHERE cylinders = "2"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeId JOIN cars_data AS T3 ON T3.id = T2.model WHERE T1.maker = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T3.id = T2.model JOIN cars_data AS T4 ON T4.id = T3.id WHERE T3.Make = "American Motor Company"
SELECT maker , fullname FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND weight > 3500
SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model JOIN country AS T4 ON T4.countryid = T1.country WHERE T4.countryname = "General Motors" OR T3.weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(accelerate) , id FROM cars_data WHERE cylinder_count = 2 GROUP BY id
SELECT COUNT(*) , MIN(acceleration) FROM cars_data WHERE model_id = "volvo"
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford"
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId WHERE T1.cylinders = 4 GROUP BY T1.model ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T3.Cylinders = 4 GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT T1.Marker , T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make != "Ford" AND T1.Cylinders > 3
SELECT maker , sum(name) FROM car_makers WHERE country != "United States" AND id NOT IN (SELECT id FROM cars_data WHERE cylinders < 4) GROUP BY maker
SELECT max(MGPH) , id FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPA) , id FROM cars_data WHERE cylinders = 8 OR year < 1980
SELECT model FROM car_makers WHERE weight < 3500 EXCEPT SELECT model FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != 'Ford'
SELECT countryname FROM country EXCEPT SELECT countryname FROM car_makers
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM cars_data)
SELECT maker , maker FROM car_makers WHERE id IN (SELECT maker FROM car_makes GROUP BY maker HAVING count(*) >= 2) INTERSECT SELECT maker FROM car_makes GROUP BY maker HAVING count(*) >= 3;
SELECT maker , maker , count(*) FROM car_makers WHERE count(*) >= 2 GROUP BY maker HAVING count(*) > 3
SELECT T1.id , T1.Fname , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.CountryName HAVING count(*) > 3 INTERSECT SELECT T1.id , T2.Fname FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryName WHERE T1.Maker = 'Ford' AND T2.CountryName = 'Fiat'
SELECT id , countryname FROM car_makers WHERE countryid = countries.countryid INTERSECT SELECT id , countryname FROM car_makers WHERE maker = 'Ford' OR maker = 'BMW'
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode JOIN flights AS T3 ON T1.FlightNo = T3.FlightNo WHERE T1.Airline = "JetBlue Airways"
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.FlightNo = 'Jetblue Airways'
SELECT airportname FROM airports WHERE airportcode = "JetBlue Airways"
SELECT airportname FROM airports WHERE airportcode = 'Jetblue Airways'
SELECT airportname , airportcode FROM airports WHERE country = 'USA'
SELECT airportname , airportcode FROM airports WHERE country = 'USA' AND airportcode != "New York"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(fileno) FROM flights WHERE sourceairport LIKE "%Airports%"
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airportcode FROM airports WHERE airportname LIKE 'UAL'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport LIKE '%UAL%'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.City , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "Alton" AND T1.country = "United States"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT AirportName FROM airports WHERE AirportCode = 'Aberona'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE FlightNo = "ATOP"
SELECT count(*) FROM flights WHERE SourceAirport = 'ATO'
{"sql": "SELECT count(*) FROM flights WHERE airline = \"Airigo\" AND FlightNo = \"ABD100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberport'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberona"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'Aberport' AND T2.airportname = 'Ashley'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T1.airline = 'JETBEW'
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'ASY' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" AND T1.Airline = "United Airlines"
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD Airport' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberona' AND T1.Airline = 'United Airlines'
SELECT T2.city FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T2.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T2.AirportCode ORDER BY count(*) LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode , T2.country FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.airportname , T2.airleight FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) LIMIT 1
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T3.airportname = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T1.SourceAirport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.terminalairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.city = T3.city WHERE T3.country = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'CVO'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.departureAirport = "CVO" EXCEPT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.departureAirport = "APG"
SELECT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname HAVING count(*) >= 10
SELECT T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode GROUP BY T1.SourceAirport HAVING count(*) < 200
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "United Airlines" AND FlightNo = "Flightcode"
SELECT FlightNo FROM flights WHERE airline = 'United Airlines'
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT T2.FlightNo FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = 'Abberon' OR T2.City = 'Abilene'
SELECT count(*) FROM airports WHERE airportname = "Aberona" OR airportname = "Abilene"
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT destairport FROM flights) UNION SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT DISTINCT sourceairport FROM flights)
SELECT count(*) FROM Employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , T2.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T2.shop_id = T3.shop_id GROUP BY T2.city
SELECT count(*) , city FROM employee GROUP BY city
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T2.city FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T2.age < 30 GROUP BY T2.city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.name , T1.district FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_of_products) , max(number_of_products) FROM shop
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from = (SELECT max(start_from) FROM hiring) INTERSECT SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from = (SELECT max(start_from) FROM hiring)
SELECT name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT manager_name FROM employee EXCEPT SELECT employee_id FROM evaluation
SELECT t1.name FROM employee AS t1 JOIN hiring AS t2 ON t1.employee_id = t2.employee_id GROUP BY t2.shop_id ORDER BY count(*) DESC LIMIT 1
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
SELECT document_name , document_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.document_details LIKE "%w%"
SELECT t2.document_id , t1.document_name , t2.description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t1.date_effective_from = "1992-01-01" AND t1.date_effective_to = "1992-01-01" AND t1.template_type_code = "1001" AND t2.document_name = "Robbin CV"
SELECT t1.paper_id , t2.layout_id , t3.description FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t1.document_id = t3.document_id WHERE t2.template_type_code = "Robbin CV"
SELECT count(DISTINCT layout) FROM templates
SELECT count(DISTINCT layout) FROM templates WHERE template_type_code = "text"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "PPT"
SELECT layout_id , count(*) FROM Document_templates GROUP BY layout_id
SELECT T1.Layout_ID , COUNT(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.paragraph_id = T3.document_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT t1.template_id FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM templates)
SELECT count(*) FROM templates
SELECT count(*) FROM templates
SELECT layout_id , version_number , layout_type FROM templates
SELECT T1.id , T2.version_number , T3.type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code
SELECT DISTINCT layout_type FROM templates
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T1.template_id FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "PP" OR T2.template_type_code = "PPT"
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "PP" OR T1.template_type_code = "PPT"
SELECT count(*) FROM templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "CV"
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT T1.edition_number , T2.layout_type FROM templates AS T1 JOIN layouts AS T2 ON T1.version_number = T2.edition_number WHERE T1.version_number > 5
SELECT T2.Edition_Number , T3.Layout_Type_Name FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Document_ID JOIN Ref_template_types AS T3 ON T2.Template_Type_Code = T3.Template_Type_Code WHERE T1.Version_Number > 5
SELECT template_type_code , count(*) FROM templates GROUP BY template_type_code
SELECT T1.layout_type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type
SELECT T1.template_type_code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.template_type_code FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING count(*) < 3
SELECT T1.template_type_description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(Version_Number) , T2.Layout_Type_Code FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Layout_Type_Code
SELECT min(Version_Number) , T2.Layout_Type_Code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Layout_Type_Code
SELECT T1.layout_type_code FROM templates AS T1 JOIN layout AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.date_effective_from = "Data base"
SELECT T2.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code JOIN documents AS T4 ON T2.document_id = T4.document_id WHERE T4.document_name = "Data base"
SELECT DISTINCT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.layout_type_count , T1.layout_type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code
SELECT T1.layout_type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type
SELECT T1.Layout_Type FROM Templates AS T1 JOIN Document_Paragraphs AS T2 ON T1.Template_ID = T2.Document_ID GROUP BY T1.Layout_Type_count ORDER BY T1.Layout_Type_count DESC LIMIT 1
SELECT T1.Template_Type_Code FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT layout_type FROM templates EXCEPT SELECT DISTINCT layout_type FROM documents
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code EXCEPT SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_type_code JOIN paragraphs AS t3 ON t2.document_id = t3.document_id
SELECT t2.template_type_description , t2.template_details FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T1.template_type_code , T2.template_details FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t2.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.template_type_code = "AD"
SELECT t2.tree_type FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.version_number = 1 AND t1.date_effective_from = 'AD'
SELECT t2.layout_type_name FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details = "Book"
SELECT DISTINCT t2.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.date_effective_from > '1' AND t1.date_effective_to < '1'
SELECT DISTINCT t2.Other_Details FROM templates AS t1 JOIN documents AS t2 ON t1.Template_ID = t2.Template_ID WHERE t1.Date_Effective_To > '1' AND t1.Date_Effective_To < '1'
SELECT T1.Layout_ID FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN Ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T3.Template_Type_Description = "Presentation"
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T2.document_details = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT t1.Other_Details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.Other_Details = 'Korea'
SELECT t2.Other_Details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Korea"
SELECT DISTINCT t2.Paragraph_ID , t2.Paragraph_Text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.Document_ID = t2.Document_ID WHERE t1.Document_Name = "Welcome to NY"
SELECT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT t2.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = 'Customer reviews'
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT DISTINCT T1.Template_ID , count(*) FROM Templates AS T1 JOIN Paragraphs AS T2 ON T1.Template_ID = T2.Document_ID GROUP BY T1.Template_ID ORDER BY count(*)
SELECT T2.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT document_id , document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY count(*) LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING COUNT(*) >= 1 AND COUNT(*) <= 2
SELECT T2.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Brazil" INTERSECT SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Ireland"
SELECT document_id FROM Documents WHERE document_details LIKE '%Brazil%' UNION SELECT document_id FROM Documents WHERE document_details LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT name FROM teacher ORDER BY age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Grade LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Grade LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.name , T2.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T1.name , T2.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.name
SELECT T2.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID WHERE T2.Course_ID = 1 AND T3.Name = 'Math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course_Type = 'Math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING count(*) >= 2
SELECT T2.name FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T1.teacher_id = T3.teacher_id GROUP BY T3.name HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.Museum_ID , T2.Name , T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID GROUP BY T1.visitor_ID HAVING COUNT(*) > 1
SELECT T2.Museum_ID , T2.Name , T2.Membership_level FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID WHERE T1.Total_spent = (SELECT max(T1.total_spex) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID)
SELECT museum_id , name FROM visit ORDER BY num_of_visitor DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.num_of_ticket) , max(T2.num_of_ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID WHERE T3.Level_of_membership = 'VIP'
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spent = 0 AND T2.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_sp spent = 0 AND T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT birth_date , first_name FROM players WHERE country_code = "USA"
SELECT first_name , last_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(win_count) FROM matches
SELECT avg(win_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_id ORDER BY sum( loser_rank ) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = 2 AND T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = (SELECT max(year) FROM matches)
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(round) FROM matches)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 1 AND T2.birth_date = "left" AND T2.year = 1 ORDER BY T2.birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T2.name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T1.ranking_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T1.ranking_rank_points) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" GROUP BY T1.name ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT T2.name , T1.name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id ORDER BY min(T1.minutes) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY round DESC LIMIT 1
SELECT avg(T1.ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T2.ranking_points , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name , T1.last_name
SELECT T2.player_id , T1.first_name , T1.last_name , T2.rankings_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT count(*) , state FROM players GROUP BY state
SELECT count(*) , state FROM players GROUP BY state
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT ranking , COUNT(*) FROM matches GROUP BY ranking
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT T1.name , T2.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.entry LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = 'Left' AND T2.tourney_name = 'WTA Championships'
SELECT T1.first_name , T1.last_name , T1.birth_date , T2.wider_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.wider_id GROUP BY T2.wider_id ORDER BY T2.wider_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(injured) , min(injured) FROM death
SELECT injured , COUNT(*) FROM death GROUP BY injured ORDER BY COUNT(*) DESC LIMIT 1
SELECT injured FROM death WHERE caused_by_ship_id = "t"
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'Brig'
SELECT cast( t1.id AS STRING) , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t2.caused_by_ship_id HAVING sum( deaths ) > 10
SELECT caused_by_ship_id , name FROM death GROUP BY injured ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander LIKE '%Kaloyan%' AND latin_commander LIKE '%Baldin I%'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM ship WHERE tonnage != 225
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_battle WHERE T1.name = "Letice" INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_battle WHERE T1.name = "HMS Atalanta"
SELECT name , result , bulgarian_commander FROM battle WHERE lost_in_battle NOT IN (SELECT name FROM ship WHERE location = 'English Channel')
SELECT note FROM death WHERE note LIKE 'East%'
SELECT address_id FROM Addresses WHERE line_1 = "1" INTERSECT SELECT address_id FROM Addresses WHERE line_2 = "2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM DEG_PROG_PROG_TYPES WHERE degree_program_id = "curriculum"
SELECT count(*) FROM DEGETPROGRAMS
SELECT department_description FROM DEPT_PROCS WHERE degree_summary_name = 'Math Curriculum'
SELECT course_description FROM courses WHERE course_name = 'Math'
SELECT T2.zip_postcode FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , count(*) FROM DEPT_PROCS AS T1 JOIN DEPT_PROCS AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Department AS T1 JOIN Degree_Prog AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programas
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM DEGET_PROGRAMS AS T1 JOIN DEPT_PROES AS T2 ON T1.department_id = T2.department_id WHERE T1.degree_summary_name = 'Engineering'
SELECT count(*) FROM DEPARTMENT AS T1 JOIN DEGETPROGRAMS AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name = 'Engineering'
SELECT section_name , section_description FROM sections
SELECT T2.section_name , T2.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM SECTION AS T1 JOIN COURSE AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM SECTION AS T1 JOIN COURSE AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.name , T1.id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE degree_program_id = (SELECT degree_program_id FROM student_enrolment_courses GROUP BY degree_program_id HAVING count(*) = 2)
SELECT T2.semester_name , T1.student_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT description FROM DEGETPROPROGRAMS WHERE degree_program_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.degree_program_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.department_id = 2 GROUP BY T1.degree_program_id ORDER BY T1.degree_program_id
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id , T2.date_left FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = 2 GROUP BY T2.student_id ORDER BY T2.date_left
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id JOIN Course AS T3 ON T2.course_id = T3.course_id WHERE T3.degree_program_id = 'Bachelor Degree Program'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = 'Bachelers'
SELECT T1.degree_program_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name , T1.sum_count FROM DEGETPROGRAMS AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY sum_count DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Prograpes AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_enrolment_count FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY T2.student_enrolment_count DESC LIMIT 1
SELECT T1.academic_session_name FROM academic_sessions AS T1 JOIN student_enrolment_courses AS T2 ON T1.academic_session_id = T2.academic_session_id GROUP BY T1.academic_session_id HAVING count(*) = 0
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id EXCEPT SELECT T3.department_name FROM students AS T3 JOIN student_enrolment AS T4 ON T3.student_id = T4.student_id JOIN semester AS T5 ON T4.semester_id = T5.semester_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id WHERE T2.department_id IN (SELECT T1.department_id FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.department_id HAVING count(*) > 1)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.course_name FROM student_enrolment AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permient_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina"
SELECT T2.date , T1.student_id FROM student_enrolment_courses AS T1 JOIN student_enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 ORDER BY T1.date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT semester_id FROM student_enrolment WHERE degree_program_id = 'Master of Business Degree')
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Computer Science" ORDER BY T1.date_left ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.semester_id LIMIT 1
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != (SELECT address_id FROM Addresses WHERE address_id = T2.address_id)
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.perminent_address_id != T2.address_id
SELECT T1.address_id , T1.line_1 , T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM students
SELECT avg(date_left) FROM students
SELECT date_left , date_first_registered FROM students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , T1.transact_date FROM transcripts AS T1 JOIN transcripts AS T2 ON T1.transact_date = T2.transact_date WHERE T1.transact_date = (SELECT min(transact_date) FROM transcripts)
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT max(date_left) FROM Students
SELECT count(*) , T1.course_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*)) , curriculum_id FROM student_enrolment_courses GROUP BY curriculum_id
SELECT date_left FROM students GROUP BY date_first_registered ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Bachelor'
SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id WHERE T4.degree_summary_name = 'Master's' INTERSECT SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN degree_programs AS T4 ON T3.degree_program_id = T4.dedegree_program_id WHERE T4.degree_summary_name = 'Bachelers'
SELECT count(DISTINCT T1.current_address_id) FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY student_id DESC
SELECT other_details FROM students ORDER BY student_id DESC
SELECT T1.section_name FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = 'section h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.zip_postcode = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT T2.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.Series_name
SELECT T1.Title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.Channel = T2.Channel ORDER BY T2.Episode
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.direction = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT T2.title , T3.direct_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.episode = T2.episode JOIN TV_channel AS T3 ON T3.id = T2.channel ORDER BY T1.air_date
SELECT T2.title , T1.direct_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id ORDER BY T1.original_air_date
SELECT DISTINCT Directed_by FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT DISTINCT Directed_by FROM CART cartoon JOIN TV_series ON cartoon.id = TV_series.id WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.Country , count(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT content) , count(DISTINCT series_name) FROM TV_channel
SELECT count(DISTINCT serial) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_channel WHERE country = "Sky Radio"
SELECT package_option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT count(*) FROM TV_channel WHERE language = "English"
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT series_name FROM TV_series WHERE id = (SELECT channel FROM cartoon WHERE title = "The Rise of the Blue Beetle")
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_name = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T2.Episode , T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Rating DESC LIMIT 3
SELECT episode , rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT T2.air_date FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT T2.Wweekly_rk FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.episode = "A Love of a Lifetime" GROUP BY T2.weekly_rk HAVING count(*) = 1
SELECT T1.Channel , T1.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , T1.sel_rname FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.pixel_aspect_ratio_PAR = 100 AND T1.Hight_definition_TV = 100 AND T1.Content = "HD TV"
SELECT package_option , t1.id FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.country = "USA" AND t1.hight_definition_TV = "HD"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T2.id = T3.id WHERE T3.Series_name = "Todd Casey" AND T2.Written_by = "Todd Casey"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T2.id = T3.id WHERE T3.Series_name = "Animation" AND T2.Written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Content NOT IN (SELECT Content FROM cartoon WHERE written_by = "Todd Casey")
SELECT T1.Country FROM TV_channel AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T2.Country != "Animation" AND T2.Directed_by = "Todd Casey"
SELECT T1.Serial_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Ben Jones" INTERSECT SELECT T1.Serial_name , T2.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = "Michael Chang"
SELECT T1.Country , T1.Series_name , T1.Content , T1.Pixel_aspect_ratio_PAR , T1.Hight_definition_TV , T1.Pay_per_view_PPV , T1.Package_Option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Country , T1.Series_name , T1.Content , T1.Pay_per_view_PPV , T1.Package_Option FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE country != "United States" AND directed_by != "Ben Jones"
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 30
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T2.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Best_Finish DESC
SELECT DISTINCT T1.Final_Table_Made , T1.Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Car Gamers"
SELECT Earnings FROM poker_player WHERE Best_Finish = "Car Game" GROUP BY Earnings ORDER BY AVG(Earnings) DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T2.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings < 200000
SELECT max(fall_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = 'Player'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings = (SELECT min(Earnings) FROM poker_player)
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
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
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Best_Finish = 'car gamer' )
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT contestant_number , contestant_name FROM CONESTANTS GROUP BY contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T1.contant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM votes WHERE contestant_number NOT IN (SELECT contestant_number FROM contests)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state , phone_number , date FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950 GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT name FROM country WHERE indeleasyyear > 1950
SELECT count(DISTINCT countrycode) FROM country WHERE governmentform = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.population) FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T1.region = 'Caribbean'
SELECT sum(T1.Temp) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Caribbean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguilla'
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabba'
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT population , min(lifeexpectancy) FROM country WHERE countrycode = 'BR' GROUP BY countrycode
SELECT population , laselect FROM country WHERE countrycode = 'Brazil'
SELECT countrycode , population FROM country WHERE continent = 'Anguila'
SELECT district , population FROM city WHERE countrycode = 'Anglenode'
SELECT avg(lath) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.region = "Central Africa"
SELECT avg(lath_of_lifemass) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' AND alive = 0 ORDER BY alive LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lived_in) FROM country AS T1 JOIN city AS T2 ON T1.id = T2.countrycode WHERE countrycode = 'African' AND countrycode = 'Republic'
SELECT avg(lath) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.ID = T2.CountryCode WHERE T1.Cont Continent = 'Asia' INTERSECT SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.ID = T2.CountryCode WHERE T1.Cont Continent = 'Europe'
SELECT sum(T1.Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Cont Continent = 'Asia' OR T1.Cont Continent = 'Europe'
SELECT population FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(population) , count(*) FROM country WHERE countrycode = 'US' AND capital = 'United States'
SELECT avg(population) , count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = 'USA'
SELECT count(DISTINCT type) FROM countrylanguage WHERE countrycode = 'Africa'
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1 Continent = 'Africa'
SELECT sum(percentage) FROM countrylanguage WHERE countrycode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE language = "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT name FROM country WHERE continent = "Europe" ORDER BY population DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = "English" AND T1.language = "Dutch"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'English' INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Dutch'
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country WHERE countrycode = 'French' INTERSECT SELECT name FROM country WHERE countrycode = 'English'
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.region = "English" INTERSECT SELECT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.region = "French"
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = "Chinese"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Chinese'
SELECT district FROM city JOIN countrylanguage ON city.countrycode = countrycode WHERE language = 'english' OR language = 'dutch'
SELECT DISTINCT region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = "Dutch" OR T1.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Cont Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode HAVING count(*) = 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Republic' AND T2.region != 'United States'
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE countrycode = 'US' AND language = 'English' ORDER BY population DESC LIMIT 1
SELECT name , population , expected_linflength FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , max(living_year) FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE continent = 'Asia' AND countrycode = 'China' GROUP BY countrycode ORDER BY max(living_year) DESC LIMIT 1
SELECT avg(lath) FROM countrylanguage WHERE language != "english"
SELECT avg(lath) FROM countrylanguage WHERE language != "english"
SELECT sum(population) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.headOfState = "Beatrix"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 'Beatrix'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND idemporal = 'United States' AND idemporal > 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE name = 'United States' AND indepyear < 1930)
SELECT countrycode FROM country WHERE continent = "Europe" AND surfacearea > (SELECT max(surfaceturearea) FROM country WHERE continent = "Europe")
SELECT countrycode FROM country WHERE continent = 'Europe' AND surfacearea > (SELECT max(surfacarearea) FROM country WHERE continent = 'Europe')
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT max(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT min(population) FROM country WHERE countrycode = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT min(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country WHERE name != "english"
SELECT state_abbr FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM country WHERE region != 'Republic' AND countrycode != 'United States' AND countrycode != 'United States' UNION SELECT countrycode FROM country WHERE region != 'Republic' AND countrycode != 'United States'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode EXCEPT SELECT T3.name FROM city AS T3 JOIN countrylanguage AS T4 ON T3.countrycode = T4.countrycode WHERE T4.language = "English"
SELECT name FROM city WHERE countrycode = "Europe" AND name NOT IN (SELECT name FROM city WHERE language = "English")
SELECT name FROM city WHERE countrycode = "Europe" AND language != "English"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.indpyear = 2000 AND T2.language = 'Chinese' AND T2.region = 'Asia'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T2.region = 'Asia' AND T3.indelfield = 'Chinese'
SELECT name , founded_year , territory FROM country ORDER BY population LIMIT 1
SELECT name , founded , countrycode FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.name , T1.head_of_state FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode ORDER BY T2.population DESC LIMIT 1
SELECT name , population , head_of_state FROM country WHERE continent = 'Asia' AND surfacearea = (SELECT max(surfacearea) FROM country)
SELECT T1.name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.name HAVING count(*) >= 3
SELECT T1.name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.countrycode HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city GROUP BY district HAVING avg(population) - min(population) > (SELECT avg(population) FROM city)
SELECT T1.name , count(*) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name HAVING avg(T2.LifeExpectancy) > 72
SELECT count(*) , type FROM city WHERE average_lisofen > 72 GROUP BY type
SELECT avg(lisens) , count(*) FROM country WHERE continent != "South America" AND average_lisens < 72
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country GROUP BY continent WHERE avg(lifeexpectancy) < 72
SELECT name , area FROM city ORDER BY population DESC LIMIT 5
SELECT name , countrycode FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT name FROM country WHERE countrycode = "Southwest" AND population = 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(t1.tion) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(population) , avg(t1.treneratio) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t1.continent = 'North America' AND t2.population > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.name , T2.language FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT countrycode , language FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE language = "Spanish" GROUP BY countrycode HAVING count(*) = (SELECT count(*) FROM countrylanguage AS T3 WHERE language = "Spanish")
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = "Spanish" GROUP BY T1.code HAVING sum(percentage) > 100
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT DISTINCT T1.Enrollment_Year FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T2.Year_of_Founded DESC
SELECT T1.Enterprise FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY sum(T2.year_of_work) DESC LIMIT 1
SELECT T2.name , T1.conductor_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orch stage_id WHERE T2.type = 'Director'
SELECT T2.name , T1.Orchestra_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING COUNT(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN orchestic AS T3 ON T1.orchina_id = T3.orchina_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN orchestic AS T3 ON T1.orchina_id = T3.orchina_id WHERE T3.major_record_format = 'Enrollment' GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2 Orchestra_ID WHERE T2.year_of_founded > 2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Year_of_Founded > 2008
SELECT orchestra_id , COUNT(*) FROM performance GROUP BY orchestra_id
SELECT count(*) , T2.Orchestra_ID FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID
SELECT Orchestra FROM orchestra GROUP BY Orchestra ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency ASC
SELECT orchestra , CONFITTER FROM orchestra GROUP BY orchestra HAVING COUNT(*) = 1
SELECT orchestra FROM orchestra GROUP BY orchestra HAVING count(*) > 1 LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT orchestra FROM orchestra WHERE YEAR_of_founded > 2003
SELECT DISTINCT orchestra.conductor_id FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT DISTINCT orchestra.conductor_id FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_format = "CD" OR record_format = "DVD"
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Record_Company = "CD" OR T1.Record_Company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE friend_id = Highschooler.id WHERE name = 'Kyle'
SELECT student_id FROM friends WHERE student_id = "Kyle"
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friend GROUP BY student_id
SELECT count(*) , student_id FROM friend GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 2
SELECT T2.name FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T1.friend_id = 2
{"sql": "SELECT count(*) FROM friends AS T1 JOIN student AS T2 ON T1.student_id = T2.student_id WHERE T1.student_id = 2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
{"sql": "SELECT count(*) FROM friend WHERE student_id = 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT student_id FROM friends EXCEPT SELECT student_id FROM friends
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT student_id FROM friends AS T1 JOIN likes AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 1
SELECT student_id FROM friends AS T1 JOIN likes AS T2 ON T1.student_id = T2.liked_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.id = (SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = T3.friend_id AND T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.friend_id WHERE T3.name = 'friends'))
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.friend_id HAVING count(*) >= 2)
SELECT count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.friend_id = 1 AND T2.name = 'Kyle'
SELECT count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T2.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id GROUP BY T2.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(grade) FROM highschooler WHERE id = T2.friend_id
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT friend_id FROM friend)
SELECT DISTINCT T2.state FROM treatment_types AS T1 JOIN professionals AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id JOIN owners AS T4 ON T3.owner_id = T4.owner_id WHERE T1.treatment_type_code = "guardian" INTERSECT SELECT DISTINCT T2.state FROM treatment_types AS T1 JOIN professionals AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T3.owner_id = T2.owner_id WHERE T1.treatment_type_code = "vital"
SELECT T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code JOIN Breeds AS T4 ON T2.breed_code = T4.breed_code WHERE T3.treatment_type_code = "vet" AND T1.state = "US"
SELECT avg(age) FROM dogs WHERE date_departed != "null"
SELECT avg(age) FROM dogs WHERE date_of_birth BETWEEN '2000' AND 2000
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '2011-01-01' AND T1.state = 'Indiana'
SELECT T1.home_phone , T2.last_name , T1.id FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Professionals AS T3 ON T3.profession_id = T3.profession_id WHERE T2.breed_code = "unknown" AND T3.first_name = "vet" AND T3.last_name = "ind" AND T3.date_of_treatment > 2
SELECT name FROM dogs WHERE cost_of_treatment <= 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs WHERE name = "dog name"
SELECT first_name FROM Professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM Dogs
SELECT role_code , email_address FROM professionals WHERE first_name != "vital" AND last_name != "vital"
SELECT professional_id , role_code , email_address FROM professionals WHERE role_code != 'healthcare'
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" ORDER BY T2.age DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador retrievable" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.role_code HAVING count(*) >= 2
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs ORDER BY weight DESC LIMIT 1)
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = "12-12-12" GROUP BY T1.first_name , T1.last_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.guardian_id , T2.familiar_name FROM Treatment_Types AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T1.dog_id = T2.dog_id ORDER BY cost_of_treatment DESC LIMIT 1)
SELECT treatment_type_description FROM treatments GROUP BY treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t1.cost_of_treatment) ASC LIMIT 1
SELECT T2.guardian_id , T2.zip_code FROM treatments AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.treatment_type_code = "Puggus" ORDER BY T1.cost_of_treatment DESC LIMIT 1
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T1.dog_id = T2.dog_id GROUP BY T1.dog_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1)
SELECT T1.profession_id , T1.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2;
SELECT DISTINCT T1.owner_id , T1.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.profession_id = T3.profession_id WHERE T3.treatment_type_code = "healthcare" GROUP BY T1.cell_phone HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT min(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatments AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T1.treatment_type_code = "Primary"
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatments AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT cost_of_treatment , treatment_type_type FROM Treatments WHERE treatment_type_code = 'Healthcare'
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = 'Labrador retrievable'
SELECT T1.first_name , T1.last_name , T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Golden Shas"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T3.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN breed AS T3 ON T1.breed_code = T3.breed_code
SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.breed_code = T2.dog_id WHERE T1.breed_name LIKE '%rare%'
SELECT T1.name , T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = 'rare_run'
SELECT T1.first_name , T1.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Shattercore" AND T1.state = "Virginia"
{"sql": "SELECT T2.name , T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.date_departed = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T1.date_of_birth = '10/10/2012' AND T
SELECT date_departed , date_arrived FROM dogs WHERE breed_code = "Poodle 1"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = "Puppy"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs) AND T1.breed_code = "poodle
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM owners WHERE state = "Hawaii" OR last_name = "Wisconsin"
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_departed , date_arrived FROM dogs
SELECT date_departed , date_arrived FROM dogs
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Pup"
SELECT count(*) FROM dogs WHERE breed_code = "Pug" AND abandoned_yn = "Y";
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T1.role_code = 'vet' AND T2.dog_id = 'poodle'
SELECT count(*) FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P' AND T2.weight = 100
SELECT T1.role_code , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.profession_id = T2.pet_id WHERE T2.date_of_birth LIKE 'West%'
SELECT role_code , street , city , state FROM professionals WHERE last_name LIKE '%West%'
SELECT T1.first_name , T1.last_name , T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "North"
SELECT T1.first_name , T1.last_name , T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'North'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE breed_code NOT IN (SELECT breed_code FROM dogs)
SELECT count(*) FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.breed_name = "Puppy"
SELECT count(*) FROM guardians WHERE guardian_id NOT IN (SELECT guardian_id FROM dogs WHERE weight = 1000)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'poodle_buffie' AND weight = 1000)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 1 AND treatment_type_code = 'Puggie' AND date_of_treatment = 'Puggie' AND date_of_treatment = 'Puggie')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 1000)
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 0
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
SELECT avg(age) FROM dogs WHERE breed_code = "Poodle;Hyp => 100";
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE
SELECT cost_of_treatment FROM Treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM PROFESSIONS WHERE role_code = 'VENTINE'
SELECT email_address , home_phone , cell_number FROM professionals WHERE role_code = 'VENTATORY'
SELECT breed_code , size_description FROM Breeds JOIN Sizes ON Breeds.breed_code = size_code
SELECT DISTINCT breed_type , size_type FROM dogs
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer WHERE type = 'vocalist'
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Artist_Type = 'Vocalist'
SELECT Birth_Year , Country FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.birth_year = 1948 OR T1.birth_year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT T2.City FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Name , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sale > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Millions > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , T1.Sale_Total FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM ref_feature_types WHERE feature_type_code = 'AirCon'
SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code = (SELECT property_type_code FROM Properties)
SELECT property_name FROM Properties WHERE property_type_code = "apartment" OR property_type_code = "house" GROUP BY property_name HAVING room_count > 1
