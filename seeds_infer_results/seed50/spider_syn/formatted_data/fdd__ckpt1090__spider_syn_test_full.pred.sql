SELECT count(*) FROM singer WHERE is_male = '1'
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.Name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Age LIMIT 1
SELECT name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , Country FROM singer GROUP BY Country
SELECT T2.song_name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T1.age > (SELECT avg(age) FROM singer)
SELECT T2.Song_Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > (SELECT avg(Average) FROM singer)
SELECT T1.name , T1.height , T1.average FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity BETWEEN 5000 AND 10000
SELECT T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(Average) , name FROM stadium GROUP BY average ORDER BY avg(Average) DESC LIMIT 1
SELECT avg(Average) , name FROM stadium GROUP BY name ORDER BY avg(Average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.concentiou FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.concentiou ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_id = T2.concent_id GROUP BY T1.name
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T1.name , T1.country FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name = "Hey"
SELECT T2.name , T2.country FROM singer AS T1 JOIN singer_in_concent as T2 ON T1.singer_id = T2.singer_id WHERE T1.song_name LIKE '%Hey%'
SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT t1.weight FROM pets AS t1 JOIN has_pet AS t2 ON t1.petid = t2.petid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.age = (SELECT min(age) FROM student) AND t3.sex = 'M' AND t3.major = 'Pupus'
SELECT sum(weight) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'pug' AND T1.petid = 1
SELECT max(weight) , pet_type FROM has_pet GROUP BY pet_type
SELECT max(weight) , pet_type , pet_age FROM Has_pet GROUP BY pet_type
SELECT count(*) FROM has_pemet AS T1 JOIN student AS T2 ON T1.stuID = T2.stuID WHERE T2.age > 20
SELECT count(*) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_puck WHERE stuID IN (SELECT StuID FROM Has_puck WHERE pettype = 'Pug') AND sex = 'F'
SELECT count(*) FROM Has_ppet AS T1 JOIN Students AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(DISTINCT pet_type) FROM Has_pet
SELECT count(DISTINCT pettype) FROM has_ppet
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petID = T2.petID WHERE T1.petID = 'kitten' OR T1.petID = 'puppy'
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 1
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Kitten' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Pug' AND T3.pet_age = 120
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE petID = 'kittens')
SELECT T2.lname , T2.fname , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid EXCEPT SELECT T2.lname , T2.fname , T2.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = 2
SELECT StuID FROM Has_Pet EXCEPT SELECT StuID FROM Has_Pet WHERE petID = 'kitten'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T2.lname , T2.age FROM Has_pemet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T1.petid NOT IN (SELECT DISTINCT petid FROM Has_pemet WHERE pettype = 'pug') AND T1.petid != (SELECT DISTINCT petid FROM Has_pemet WHERE pettype = 'cat')
SELECT T2.fname , T2.lname FROM Has_pod AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID WHERE T1.petID = 'dog' EXCEPT SELECT T2.fname , T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID WHERE T1.petID = 'kittens'
SELECT T2.pet_type , T2.weight , T1.age FROM Has_pem_test T1 JOIN Pets T2 ON T1.petid = T2.petid GROUP BY T1.age ORDER BY T1.age LIMIT 1
SELECT pettype , sum(weight) FROM Has_pit AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student) GROUP BY T1.pettype
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT avg(age) , max(age) , pet_type FROM Has_pet GROUP BY pet_type
SELECT avg(T2.pemttype) , max(T2.pemttype) , T1.stuid FROM Has_pemt AS T1 JOIN Pets AS T2 ON T1.petid = T2.pemtid GROUP BY T1.stuid
SELECT PetType , avg(weight) FROM Has_pet GROUP BY PetType
SELECT avg(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT T2.lname , T2.age FROM Has_pemet AS T1 JOIN student AS T2 ON T1.stuID = T2.stuID WHERE T1.petID = T2.pemid
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid
SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT T1.petID FROM pets AS T1 JOIN Has_Pet AS T2 ON T1.petID = T2.petID WHERE T2.stuid = (SELECT T1.stuid FROM has_pem AS T1 JOIN student AS T2 ON T1.stuid = T2.stuID WHERE T2.lname = 'Smith')
SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE pet_age BETWEEN 1 AND 2 AND weight BETWEEN 1 AND 2 AND 1 FROM Student WHERE LName = 'Smith')
SELECT count(*) , StuID FROM Has_pemet GROUP BY StuID
SELECT count(*) , T2.stuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T1.petID = T3.petID GROUP BY T2.stuID
SELECT T2.Fname , T2.lname , T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.Fname , T2.Lname , T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.ppetage = 3 AND T3.paid = 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.ppetage = 3 AND T3.paid = 1
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(T1.age) FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT avg(T3.age) FROM Has_pet AS T3 JOIN Pets AS T4 ON T3.PetID = T4.PetID
SELECT count(*) FROM continents
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT continent_id , continent_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT continent , countryname , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.continent = T2.contid GROUP BY T1.countryname
SELECT count(*) FROM countries WHERE countryname LIKE '%States%'
SELECT count(*) FROM countries
SELECT count(*) , t1.maker , t1.maker FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.id GROUP BY t1.maker
SELECT maker , fullname , count(*) FROM car_makers GROUP BY maker
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker , T2.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN car_makers AS T3 ON T1.Id = T3.Id WHERE T3.Maker = "Ford" ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT maker FROM cars_data WHERE YEAR > 1980
SELECT continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT countryname FROM car_makers GROUP BY countryname ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FULL_NAME , T2.MARKING FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MARKING GROUP BY T1.MARKING
SELECT count(*) , t1.id , t1.FFullName FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.MakeId GROUP BY t1.id
SELECT Accelerate FROM cars_data WHERE YEAR = 2010 AND Make = "Amc Hornet" AND MAKE = "Softhighway"
SELECT accelerate FROM cars_data WHERE country = 'United States' AND make = 'Amc Hornet' AND sport = 'Softhost'
SELECT count(*) FROM car_makers WHERE country_name = "France"
SELECT count(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE countryname = 'France'
SELECT count(*) FROM cars_data WHERE country = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id JOIN continents AS T3 ON T2 Continent = T3.Continent WHERE T3.CountryName = 'United States'
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPH) FROM cars_data WHERE Cylinders = 4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T2.Make = "Ford" AND T1.Year = 1974 AND T1.Cylinders = 8
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8
SELECT countryname , model FROM car_makers
SELECT maker , model FROM car_makers JOIN car_names ON car_makers.id = car_name.makeid
SELECT country , id FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT T2.CountryName , T1.Id FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Maker != "Apple"
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT countryname FROM countries WHERE continent = "Europe" GROUP BY countryname HAVING count(*) >= 3
SELECT T2.CountryName FROM country AS T1 JOIN country_list AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T2.CountryName HAVING COUNT(*) >= 3
SELECT max(MGPS) , T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model GROUP BY T1.Cylinders HAVING T1.Cylinders = 3
SELECT max(T1.MGPh) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT maker FROM car_makers JOIN car_names ON car_maker.id = car_name.make JOIN model_list ON model_list.Model = model_id WHERE mpg = (SELECT max( mpg ) FROM car_data) GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T3.Model = T2.Model ORDER BY T1.MGPS DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT avg(Edispl) FROM cars_data WHERE maker = "Volvo"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = "2"
SELECT max(accelerate) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM model_list
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN car_names AS T3 ON T2.Model = T3.Model JOIN model_list AS T4 ON T3.Model = T4.Model WHERE T1.Maker = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker JOIN car_names AS T3 ON T3.Model = T2.Model JOIN cars_data AS T4 ON T4.id = T3.id WHERE T3.Make = "American Motor Company"
SELECT maker , FullName FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND weight > 3500
SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.id JOIN car_makers AS T4 ON T4.id = T3.id WHERE T4.maker = "General Motors" OR T3.weight > 3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(accelerate) , id FROM cars_data WHERE cylinder_count = 2 GROUP BY id
SELECT COUNT(*) FROM cars_data WHERE accelerator_1 = (SELECT min(acceleration) FROM cars_data WHERE model_id = "volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(acceleration) FROM cars_data)
{"sql": "SELECT count(*) FROM car_makers WHERE maker != \"Ford\" AND maker != \"Ford\"}
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" GROUP BY T1.Model ORDER BY T1.MGPH DESC LIMIT 1
SELECT T1.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T2.Model = T3.Model JOIN countries AS T4 ON T3.CountryId = T4.CountryId WHERE T4.CountryName = "United States" GROUP BY T1.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT DISTINCT T1.maker , T1.maker_name FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T2.model = T3.id WHERE T3.Horsepower > (SELECT min(Horsepower) FROM cars_data WHERE Cylinders = 3)
SELECT maker , name FROM car_makers WHERE country_id NOT IN (SELECT country_id FROM cars_data WHERE cylinders < 4) GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT max(MGPH) , MIN(year) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPH) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 EXCEPT SELECT maker FROM car_makers WHERE maker = 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT countryname FROM country WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT maker , maker FROM car_makers WHERE id >= 2 AND id >= 3
{"sql": "SELECT id , maker FROM car_makers WHERE maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford
SELECT id , countryname FROM car_makers WHERE maker = 'Ford' OR maker = 'Ford' AND model = 'Fiat'
SELECT id , maker FROM car_makers WHERE countryId = (SELECT countryId FROM cars_data WHERE mpg = 2000) INTERSECT SELECT id , maker FROM car_makers WHERE countryId = (SELECT countryId FROM cars_data WHERE mpg = 2000) GROUP BY maker HAVING count(*) > 3
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode JOIN flights AS T3 ON T1.Airline = T3.Airline WHERE T3.FlightNo = 'JETBL Airways'
SELECT T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.FlightNo = 'Jetblue Airways'
{"sql": "SELECT airportname FROM airports WHERE airportcode = 'Airbase In New York' AND airline = 'Airline "JetBlue Airways'"}
SELECT airportname FROM airports WHERE airportcode = "Jetblue Airways"
SELECT airportname , airportcode FROM airports WHERE country = 'USA'
SELECT airportname , airportcode FROM airports WHERE country = 'USA' AND airportcode IN (SELECT sourceairport FROM flights WHERE airline = 'South African' AND sourceairport LIKE 'South Afaced' AND destairport LIKE 'South Afaced' )
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.airportname) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airleighttype = 'A'
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT airportcode FROM airports WHERE airportname LIKE 'UAL'
SELECT T2.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT T1.City , T1.Country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT T2.City , T2.Country FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'Alton'
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT count(*) FROM flights WHERE airline = 'APG'
SELECT count(*) FROM flights WHERE FlightNo = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = "ATO"
SELECT count(*) FROM flights WHERE SourceAirport = 'ATA'
SELECT count(*) FROM flights WHERE airline = "Airport Cats" AND FlightNo = "Aerbus 103"
SELECT count(*) FROM flights WHERE SourceAirport = 'Aberport'
SELECT count(*) FROM airports WHERE airportname = 'Aberport' AND country = 'United States'
SELECT count(*) FROM flights WHERE sourceairport = "Aberport"
SELECT count(*) FROM flights WHERE airline = "Aberdeen" AND sourceairport = (SELECT T1.airportcode FROM airports AS T1 JOIN airports AS T2 ON T1.city = T2.city WHERE T2.city = "Ashley")
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T2.AirportName = 'Ashley'
SELECT count(*) FROM flights WHERE airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airleightid = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" AND T1.Airline = "United Airlines"
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND FlightNo = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberdeen' AND T1.Airline = 'United Airlines'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T22 ON T22.airpointcode = T1.airportcode GROUP BY T22.country ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportname , T2.airleigh FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'AHD'
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.terminalairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'CVO'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.city = T3.city WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport AND T2.airline = 'CVO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'APG'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.flightno > 10
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE SourceAirport = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = "United Airlines"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE AirportCode = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport" AND DestAirport = "Aberport"
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = 'Abberon' OR T1.city = 'Abilene'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport' OR destairport = 'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DostAirport FROM flights)
SELECT airportname FROM airports EXCEPT SELECT t1.airportname FROM airports AS t1 JOIN flights AS t2 ON t1.airportcode = t2.sourceairport WHERE t2.FlightNo = 'arrival' UNION SELECT t1.airportname FROM airports AS t1 JOIN flights AS t2 ON t1.airportcode = t2.sourceairport WHERE t2.FlightNo = 'left'
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , T2.City FROM employee AS T1 JOIN hiring AS T2 ON T1.Employee_ID = T2.Employee_ID JOIN shop AS T3 ON T2.Shop_ID = T3.Shop_ID GROUP BY T2.City
SELECT count(*) , city FROM employee GROUP BY city
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city HAVING count(*) > 1 AND age < 30
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T1.name , T2.district FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN evaluation AS T3 ON T1.shop_id = T3.shop_id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN evaluation AS T3 ON T1.shop_id = T3.shop_id WHERE T3.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN employee AS T3 ON T2.employee_id = T3.employee_id WHERE T3.age = (SELECT max(age) FROM employee)
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT manager_name FROM employee EXCEPT SELECT employee_id FROM evaluation
SELECT T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T1.shop_id = T3.shop_id GROUP BY T3.name
SELECT count(*) , T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T2.shop_id = T3.shop_id GROUP BY T3.name
SELECT sum(Bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation WHERE year_awarded = '2012'
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
SELECT document_name , document_id FROM documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T2.Template_Details FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Details LIKE "%w%"
SELECT t1.paper_id , t2.layout_id , T1.document_details FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t1.document_name = "Robbin CV"
SELECT t1.paper_id , t2.layout_id , T1.text FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t1.template_details = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM templates WHERE document_name = "text"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT layout_id , count(*) FROM templates GROUP BY layout_id
SELECT count(*) , T1.layout_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_id
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id GROUP BY T2.document_id HAVING count(*) > 1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM templates EXCEPT SELECT t1.template_id FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM templates)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT layout_id , version_number , layout_type FROM templates
SELECT T1.id , T2.version_number , T3.type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code
SELECT DISTINCT t1.layout_type FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT t1.template_id FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "PP" OR t2.template_type_code = "PPT"
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PP" OR T3.template_type_description = "PPT"
SELECT count(*) FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "CV"
SELECT count(*) FROM templates WHERE template_type_code = "CV"
SELECT T1.edition_number , T2.layout_type FROM templates AS T1 JOIN layouts AS T2 ON T1.version_number = T2.edition_number WHERE T1.version_number > 5
SELECT T1.edition_number , T2.layout_type_name FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT template_type_code , count(*) FROM Templates GROUP BY template_type_code
SELECT T1.layout_type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.layout_type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.template_type_code FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING count(*) < 3
SELECT T1.Template_Type_Description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code HAVING count(*) < 3
SELECT min(Version_Number) , T2.Layout_Type_Code FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Layout_Type_Code
SELECT min(edition_number) , T2.layout_type_code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T2.layout_type_code
SELECT T1.layout_type_code FROM templates AS T1 JOIN layout AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_details = "Data base"
SELECT T1.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T2.document_name = "Data base"
SELECT document_name FROM Documents WHERE template_id = template_id AND template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.layout_type_count , T1.layout_type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code
SELECT DISTINCT layout_type , count(*) FROM templates GROUP BY layout_type
SELECT T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT layout_type FROM templates EXCEPT SELECT DISTINCT layout_type FROM documents
SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.date_affected_from > '1' EXCEPT SELECT DISTINCT t2.template_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.document_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code
SELECT T1.template_type_code , T2.template_details FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t1.template_type_code , t1.template_details FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT t1.layout_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t3.template_type_description = "AD"
SELECT T2.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T1.template_type_code = "AD"
SELECT t2.layout_type_name FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_details = "Book"
SELECT DISTINCT t1.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_name = "text"
SELECT DISTINCT t1.document_details FROM documents AS t1 JOIN templates AS t2 ON t1.template_id = t2.template_id WHERE t2.date_effective_from > "1\n\n" AND t2.date_effective_to < "1\n\n"
SELECT T1.layout_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "Presentation"
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = "Korea"
SELECT T1.Other_Details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'Korea'
SELECT DISTINCT t2.paragraph_id , t2.paragraph_text FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T1.document_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY T1.document_id
SELECT DISTINCT T1.document_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*)
SELECT T1.document_id , T2.paragraph_text , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT DISTINCT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY count(*) LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) LIMIT 1
SELECT T2.Paragraph_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID HAVING count(*) >= 1 AND count(*) <= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING COUNT(*) BETWEEN 1 AND 2
SELECT t1.document_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.paragraph_text = "Brazil" INTERSECT SELECT t1.document_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.paragraph_text = "Ireland"
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT name FROM teacher ORDER BY age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Grade ASC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT count(*) , Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING count(*) >= 2
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.Name , T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.name , T2.curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.name
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name
SELECT T2.name FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T1.teacher_id = T3.teacher_id WHERE T2.course = 'math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = 'Math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.name
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership < 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Pl Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.Museum_ID , T2.Name , T2.Age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID GROUP BY T1.visitor_id HAVING COUNT(*) > 1
SELECT T2.Museum_ID , T2.Name , T2.Level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.ID ORDER BY T1.Total_spent DESC LIMIT 1
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Ticket) , max(T2.Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.ID GROUP BY T2.Ticket
SELECT sum(t2.total_spent) FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.visitor_id WHERE t1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spex = 0 AND T2.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spex = 0 AND T2.open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , last_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winners_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.wider_id WHERE T2.year = 2016
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.wander_id = 2 AND T2.wander_id = 2
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.year DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 1 AND T2.year = (SELECT max(YEAR) FROM matches)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T2.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 1 AND T2.year = 1 AND T2.birth_date = 'left' AND T2.round = 1 AND T2.year = 1 AND T2.loser_id = 1 ORDER BY T2.birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.winner_age , T1.witter_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name , T2.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY T2.minutes DESC LIMIT 1
SELECT winner_name , loser_name FROM matches ORDER BY round DESC LIMIT 1
SELECT avg(T1.ranking_points) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T2.ranking_points , T1.first_name , T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name, T1.last_name
SELECT T1.first_name , T1.last_name , sum(T2.rankings_points) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT count(*) , T1.state FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.state
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , COUNT(*) FROM rankings GROUP BY ranking
SELECT sum(t1.ranking_points) , t1.ranking FROM rankings AS t1 JOIN players AS t2 ON t1.player_id = t2.player_id GROUP BY t1.ranking_ranking_time
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.round , T2.match_num LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE hand = "Left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(impact) , min(impact) FROM death
SELECT injured , avg(injured) FROM death GROUP BY injured
SELECT injured FROM death WHERE cares_by_ship_id = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_bATTLE WHERE T2.ship_type = 'Brig'
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id HAVING sum(deaths) > 10
SELECT cast( T1.id AS char) , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debading WHERE T2.last_commander = 'Kaloyan' AND T2.bulgarian_commander = 'Baldin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE tonnage = 225)
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_battle WHERE T1.name = "Letice" INTERSECT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debt_in_battle WHERE T1.name = "HMS Atalanta"
SELECT name , result FROM battle WHERE bulgarian_commander = "null" AND name NOT IN (SELECT name FROM ship WHERE lost_in_battle = "English Channel")
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "1" INTERSECT SELECT address_id FROM addresses WHERE line_2 = "2"
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM DEGET_PROGRAMS WHERE degree_program_name = "Curriculum"
SELECT count(*) FROM DEGPROGRAMS
SELECT department_description FROM DEPT_PROGRAGEMENT WHERE degree_summary_name = "Math Curriculum"
SELECT course_description FROM DEGREAT_PROGRAMS WHERE degree_program_name = "Math"
SELECT T1.zip_postcode FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id = T2.current_address_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = "Port" AND T3.last_name = "Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT department_id , department_name FROM degree_programs GROUP BY department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Department AS T1 JOIN Degree_Proprograms AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM DEG_PROGRAMS AS T1 JOIN DEPT_PROES AS T2 ON T1.department_id = T2.department_id WHERE T1.deg_program_name = 'Engineering'
SELECT count(*) FROM DEPARTMENTS WHERE department_name = 'Engineering'
SELECT section_name , section_description FROM Sections
SELECT t3.section_name , t3.section_description FROM sections AS t1 JOIN courses AS t2 ON t1.course_id = t2.course_id JOIN departments AS t3 ON t2.department_id = t3.department_id
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM SECTION AS T1 JOIN COURSE AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.name , T2.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name , T1.student_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.department_description FROM departments AS t1 JOIN degree_programs AS t2 ON t1.department_id = t2.department_id WHERE t2.degree_summary_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.degree_program_id FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id WHERE T2.degree_summary_name = 'Phd' AND T1.semester_id = 1 GROUP BY T1.degree_program_id HAVING count(*) = 1
SELECT T2.first_name , T2.middle_name , T2.last_name , T2.student_id , T1.degree_program_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_program_name = 'Undergraduates 2 degree programs in one term'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor Degree'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 'Bachelors'
SELECT T1.degree_program_name FROM Degree_Proprograms AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.dege_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.dege_program_id = T2.dege_program_id GROUP BY T1.dege_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name , T1.department_name , count(*) FROM DEG_Productions AS T1 JOIN Students AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.undergrad_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.middle_name , T2.last_name , T1.student_count , T1.student_count FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.degree_program_id = (SELECT degree_program_id FROM student_enrolment GROUP BY degree_program_id ORDER BY student_count DESC LIMIT 1)
SELECT T1.academic_session_name FROM sections AS T1 JOIN student_enrolment AS T2 ON T1.section_id = T2.semester_id EXCEPT SELECT T3.academic_session_name FROM student_enrolment_courses AS T3 JOIN courses AS T4 ON T3.course_id = T4.course_id
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id EXCEPT SELECT T3.department_name FROM departments AS T3 JOIN student_enrolment AS T4 ON T3.department_id = T4.course_id GROUP BY T3.department_id HAVING count(*) = 0
SELECT T1.course_name FROM COURSES AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id WHERE T2.department_id IN (SELECT T3.department_id FROM DEGETORIES AS T3 JOIN DEGETORIES AS T4 ON T3.deget_program_id = T4.deget_program_id WHERE T4.deget_program_name = 'Student Enrolment')
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Students AS T3 ON T2.student_id = T3.student_id GROUP BY T3.student_id HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'New York'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T3.last_name FROM student_enrolment AS T3 JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id
SELECT date_left , student_id FROM student_enrolment GROUP BY student_id HAVING count(*) >= 2
SELECT T2.date , T1.student_id FROM student_enrolment_courses AS T1 JOIN student_enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id HAVING count(*) >= 2
SELECT T2.cell_mobile_number FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.first_name = "Timmothy" AND T1.last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT semester_id FROM student_enrolment AS T3 JOIN student_enrolment AS T4 ON T3.student_enrolment_id = T4.student_enrolment_id WHERE T4.date_left = T2.date_left)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT semester_id FROM student_enrolment AS T3 WHERE degree_program_id = 1)
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.date_left = (SELECT max(date_left) FROM student_enrolment)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = 2 ORDER BY T2.date_left ASC LIMIT 1
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != (SELECT address_id FROM addresses WHERE address_id = (SELECT current_address_id FROM students))
SELECT T2.first_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_1 != (SELECT T2.first_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.line_1 = T2.first_name)
SELECT T1.address_id , T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM students
SELECT avg(date_left) FROM students
SELECT date_left , date_first_registered FROM students ORDER BY date_first_registered LIMIT 1
SELECT max(transcript_date) , T1.transcript_details FROM transcripts AS T1 JOIN student_enrolment AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id ORDER BY T1.transcript_date ASC
SELECT count(*) FROM students WHERE date_left = 'current'
SELECT count(*) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.department_id FROM departments AS T1 JOIN student_enrolment AS T2 ON T1.department_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*)) , curriculum_id FROM student_enrolment_courses GROUP BY curriculum_id
SELECT date_left FROM student_enrolment GROUP BY date_left ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T3.ssn = 'Master' INTERSECT SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T3.ssn = 'Bachelor'
SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.degree_program_id WHERE T4.degree_summary_name = 'Master's' INTERSECT SELECT T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id JOIN degree_programs AS T4 ON T4.degree_program_id = T3.degree_program_id WHERE T4.degree_summary_name = 'Bachelers'
SELECT count(DISTINCT T1.current_address_id) FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY student_id DESC
SELECT other_details FROM students ORDER BY student_id DESC
SELECT T1.section_name FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id WHERE T2.course_name = 'section h'
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.perminent_address_id = T2.address_id WHERE T2.country = 'Haitian' OR T1.cell_mobile_number = 09700166582
SELECT DISTINCT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.zip_postcode = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT T2.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel ORDER BY T1.Series_name
SELECT title FROM cartoon ORDER BY title ASC
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones"
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT T2.title , T1.direct_by FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel ORDER BY T2.air_date
SELECT T2.title , T1.direct_by FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.id = T2.id ORDER BY T1.air_date
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
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
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , count(*) FROM TV_channel GROUP BY Language
SELECT T1.Series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Content = "The Rise of the Blue Beetle!"
SELECT T2.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "The Rise of the Blue Beetle"
SELECT T1.title FROM CART animation AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Content FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Series_name , T2.Episode , T2.Pay_per_view_PPV FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY T2.Pay_per_view_PPV DESC LIMIT 3
SELECT T1.episode , T2.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id GROUP BY T1.episode ORDER BY count(*) DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT air_date FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT T2.air_date FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT avg(TV_series.weekly_rank) FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT T2.Series_name , T1.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT t1.title FROM cartoon AS t1 JOIN TV_series AS t2 ON t1.channel = t2.channel WHERE t2.episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T2.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT product_number , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , T1.Serial_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Pixel_aspect_ratio_PAR = 200 AND T1.Hight_definition_TV = 200
SELECT package_option , t1.id FROM TV_channel AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.Country = "USA" AND t1.Hight_definition_TV = "HD"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.id WHERE T3.Directed_by = 'Todd Casey' GROUP BY T2.Country HAVING count(*) > 1
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T3.Series_name = "Animation" AND T2.Written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Country NOT IN (SELECT Country FROM TV_channel WHERE Content = "Todd Casey")
SELECT country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT T1.Serial_name , T1.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Serial_name , T1.Country FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Directed_by = "Michael Chang"
SELECT T1.Country , T1.Series_name , T1.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Country , T1.Series_name , T1.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE country != "United States" AND directed_by != "Ben Jones"
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T1.Final_table_made , T1.Best_finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Best_finish DESC LIMIT 1
SELECT DISTINCT T1.Final_table_made , T1.Best_finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Car Gamers"
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "All"
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings < 200000
SELECT max(finish) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = 'Gametype'
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made
{"sql": "SELECT T1.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE T2.Earnings = (SELECT T3.Earnings FROM poker_player AS T3 WHERE T3.Earnings = (SELECT T2.Earnings FROM poker_player AS T2 WHERE
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1
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
SELECT T2.contestant_number , T1.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number HAVING count(*) >= 2
SELECT T1.contant_number , T2.contestant_name FROM CONESTANTS AS T1 JOIN VOTES AS T2 ON T1.contant_number = T2.contestant_number GROUP BY T1.contant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T2.state , T1.phone_number , T1.date FROM CONESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling'
SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950 AND countrycode NOT IN (SELECT countrycode FROM country WHERE region = 'United States')
SELECT name FROM country WHERE countrycode = "USA" AND indepyear > 1950
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.Temp) FROM city AS T1 JOIN country AS T2 ON T1.ID = T2.COUNTRYCode WHERE T2.Continent = 'Caribbean'
SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Caribbean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguilla'
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabby'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.CountryCode = 'Aruba' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT population , max(lifetemperature) FROM city JOIN city AS t2 ON t2.district = t2.district WHERE countrycode = 'BR'
SELECT population , laselected FROM country WHERE countrycode = 'BR';
SELECT district , population FROM city WHERE countrycode = "Anguila"
SELECT district , population FROM city WHERE name = "Angon"
SELECT avg(liveexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE continent = 'Central Africa'
SELECT avg(liveexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode JOIN city AS t3 ON t3.id = t2.id WHERE t3.countrycode = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lath) FROM country AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE countrycode = 'African' AND countrycode = 'Republic'
SELECT avg(lath) FROM country WHERE continent = 'Africa' AND countrycode = 'Republic'
SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.CountryCode = 'Europe'
SELECT sum(T1.Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.CountryCode = 'Europe'
SELECT population FROM city WHERE district = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = "US"
SELECT avg(population) , count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States"
SELECT count(*) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT type) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE countrycode = 'Africa'
SELECT sum(percent) FROM countrylanguage WHERE countrycode = "Aruba"
SELECT count(*) FROM countrylanguage WHERE language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'AFTR'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT name FROM country WHERE region = "United States" ORDER BY population DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN city AS T3 ON T2.countrycode = T3.countrycode GROUP BY T1.countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY countrylanguage.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryORDER BY population DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T1.language = "English" AND T1.language = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" AND T2.name = "Dutch"
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "English" INTERSECT SELECT name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = "French"
SELECT name FROM countrylanguage WHERE isofficial = 'English' INTERSECT SELECT name FROM countrylanguage WHERE isofficial = 'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.IsOfficial = 'English' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.IsOfficial = 'French'
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Chinese'
SELECT district FROM city WHERE name LIKE '%english%' OR name LIKE '%dutch%'
SELECT DISTINCT region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = "Dutch" OR T1.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT language FROM countrylanguage WHERE countrycode = 'Asia' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Region = 'Republic' AND T1.Language = "English" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT language FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE region = 'Republic') GROUP BY language HAVING count(*) = 1
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE countrycode = "United States" AND language = "English" ORDER BY population DESC LIMIT 1
SELECT name , population , average - expected life length FROM country WHERE continent = 'Asia' ORDER BY area DESC LIMIT 1
SELECT name , population , min(lifeface) FROM country WHERE continent = 'Asia' GROUP BY countrycode
SELECT avg(living_length) FROM countrylanguage WHERE language != "english"
SELECT avg(lath) FROM countrylanguage WHERE language != "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT name FROM country WHERE head_of_state = Beatrix AND official_language = "English"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN city AS T3 ON T2.CountryCode = T3.CountryCode WHERE T3.Name = 'Beatrix' AND T2.IsOfficial = '1'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND id = 1 AND independentyear < 1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "United States" AND indepyear < 2000
SELECT countrycode FROM country WHERE continent != 'Europe' AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT countrycode FROM country WHERE continent = "Europe" INTERSECT SELECT countrycode FROM country WHERE surfacearea > (SELECT min(surfacearea) FROM country WHERE continent = "Europe")
SELECT name FROM city WHERE countrycode = 'Africa' INTERSECT SELECT name FROM country WHERE continent = 'Asia' AND population < (SELECT max(population) FROM country)
SELECT name FROM city WHERE countrycode = 'Africa' AND population < (SELECT min(population) FROM country WHERE region = 'Asia')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT min(population) FROM country WHERE countrycode = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT min(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country WHERE name != "english"
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode EXCEPT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "English"
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM countrylanguage WHERE language != "english"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM country WHERE language = "English" INTERSECT SELECT countrycode FROM country WHERE governmentform = "Republic"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Republic' OR T2.region = 'United States' AND T2.region != 'United States'
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "English"
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM countrylanguage WHERE language = "English"
SELECT DISTINCT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Asia' AND T1.industrialtype = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN countrylanguage AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Asia' AND T3.indelflag = 'Chinese'
SELECT name , founded_year , territory FROM country ORDER BY population ASC LIMIT 1
SELECT name , founded , countrycode FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.name , T1.head_of_state FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name ORDER BY T1.population DESC LIMIT 1
SELECT name , population , head_of_state FROM country WHERE countrycode = (SELECT countrycode FROM country ORDER BY surfacearea DESC LIMIT 1)
SELECT T1.name , count(*) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name HAVING count(*) >= 3
SELECT T2.name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.countrycode HAVING sum(percentage) > 2
SELECT count(*) , district FROM city GROUP BY district HAVING population > (SELECT avg(population) FROM city)
SELECT district , count(*) FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT government_type , count(*) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode JOIN city AS t3 ON t1.district = t3.district WHERE t2.lathiness > 72 GROUP BY t2.goverance_type
SELECT count(*) , type FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Lifeexpectancy > 72 GROUP BY type
SELECT avg(lisens) , count(*) FROM country WHERE continent = "South America" AND avg(lisens) < 72
SELECT continent , sum(population) , avg(lifeyield) FROM country WHERE avg(lifeyield) < 72 GROUP BY continent
SELECT name , area FROM country WHERE countrycode = 'US' ORDER BY surfacearea DESC LIMIT 5
SELECT name , countrycode FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(population) , avg(t1.tion) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(pollion) , avg(t1.tion) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.region = 'North America' AND t2.surfacarearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT T1.name , T2.language FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT countrycode , language FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T1.cityid = T3.id WHERE T2.name = 'Spanish'
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = "Spanish" GROUP BY T1.code HAVING count(*) - count(*) > 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT T1.Enterprise FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT orchestra FROM orchestra ORDER BY year_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.conductor_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id WHERE T3.name = "Director"
SELECT T2.name , T1.Enrollment FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING COUNT(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchina_id = T2.orchina_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id GROUP BY T3.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchestra_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id WHERE T3.year_of_work > 2008
SELECT orchestra_id , COUNT(*) FROM performance GROUP BY orchestra_id
SELECT count(*) , T2.Orchestra_ID FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID
SELECT orchestra , COUNT(*) FROM orchestra GROUP BY orchestra ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT orchestra FROM performance GROUP BY orchestra HAVING count(*) = 1 ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra GROUP BY orchestra ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM performance EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT orchestra FROM orchestra WHERE year_of_founded > 2003
SELECT DISTINCT orchestra.conductor FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT DISTINCT orchestra.conductor FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_format = "CD" OR record_format = "DVD"
SELECT count(*) FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Record_Company = "CD" OR T1.Record_Company = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN performance AS T3 ON T2.Orchestra_ID = T3.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT T1.Year_of_Found FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T2.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT * FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM highschooler WHERE name = "Kyle"
SELECT student_id FROM friends WHERE student_id = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friends GROUP BY student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T2.name , count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.friend_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1 WHERE T2.friend_id = 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2 AND T1.friend_id = 2
{"sql": "SELECT count(*) FROM friend WHERE student_id = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) FROM friend WHERE student_id = 2;
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.student_id FROM friends AS T1 JOIN likes AS T2 ON T1.student_id = T2.liked_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 1 INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.id HAVING count(*) >= 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = T3.friend_id AND T1.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.friend_id WHERE T3.name = 'friends'))
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT student_id FROM likes WHERE liked_id = 2) GROUP BY T1.name HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id IN (SELECT student_id FROM likes WHERE liked_id = 2) GROUP BY T1.name HAVING count(*) >= 2
SELECT count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id GROUP BY T1.grade
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(T3.grade) FROM highschooler AS T3 JOIN friend AS T4 ON T3.id = T4.student_id
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.ID = T2.student_id WHERE T2.friend_id NOT IN (SELECT friend_id FROM friend)
SELECT T2.state FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.treatment_type_code JOIN dogs AS T3 ON T1.profession_id = T3.owner_id JOIN breeds AS T4 ON T3.breed_code = T4.breed_code JOIN owners AS T5 ON T3.owner_id = T5.owner_id WHERE T1.role_code = 'guardian' INTERSECT SELECT T2.state FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.treatment_type_code JOIN dogs AS T3 ON T1.profession_id = T3.owner_id JOIN breeds AS T4 ON T3.breed_code = T4.breed_code JOIN owners AS T5 ON T5.owner_id = T3.owner_id WHERE T1.role_code = 'vet'
SELECT DISTINCT T1.state FROM Dogs AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T2.profession_type_code = T3.treatment_type_code WHERE T2.role_code = 'vital' AND T1.owner_id = T2.owner_id
SELECT avg(age) FROM dogs WHERE date_departed = 'null'
SELECT avg(age) FROM dogs WHERE date_departed = 'NULL' AND breed_code = 'Labrador Doel'
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.date_of_birth = '2012-01-02' AND T1.state = 'Indiana' OR T2.date_of_treatment > 2
SELECT T1.owner_id , T2.last_name , T3.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.email_address = T2.email_address JOIN Dogs AS T3 ON T3.owner_id = T1.owner_id WHERE T1.state = "Indiana" OR T3.date_of_treatment > 2
SELECT name FROM dogs WHERE cost_of_treatment <= 1000 EXCEPT SELECT name FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments WHERE treatment_type_code = "Healthcare")
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = 'vital_1' EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN dogs AS T2 ON T1.profession_id = T2.dog_id WHERE T2.name = 'dog_name'
SELECT first_name FROM professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM dogs
SELECT role_code , email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT DISTINCT T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T3.owner_id = T1.owner_id WHERE T3.date_departed = "null"
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Labrador ！" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "golden retrievel" GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.role_code , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs ORDER BY count(*) DESC LIMIT 1)
SELECT T2.owner_id , T1.first_name , T1.last_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment = (SELECT cost_of_treatment FROM treatments ORDER BY cost_of_treatment DESC LIMIT 1)
SELECT T1.guardian_id , T2.family_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT t1.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t2.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1
SELECT t1.treatment_type_description FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id JOIN treatment_types AS t3 ON t1.treatment_type_code = t3.treatment_type_code WHERE t1.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.owner_id , T2.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'Poodle' ORDER BY T2.weight DESC LIMIT 1
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT T1.profession_id , T2.cell_phone FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.profession_id = T3.profession_id WHERE T3.treatment_type_code = "healthcare" GROUP BY T1.cell_phone HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT date_of_treatment , T1.first_name , T1.last_name FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Professionals AS T3 ON T1.profession_id = T3.profession_id WHERE T3.role_code = 'Veterian'
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatments AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT T2.first_name , T2.last_name , T2.size_code FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.name = "Labrador Shatterbag"
SELECT T2.first_name , T2.last_name , T2.weight FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.breed_code = "golden_spanish_sharctic"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T2.first_name , T2.last_name , T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.breed_code = T2.dog_id WHERE T1.breed_name = "rare_rus_beard"
SELECT T2.name , T3.date_of_birth , T3.date_of_departed FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Treatments AS T3 ON T3.dog_id = T2.dog_id WHERE T1.breed_code = 'rare_runway'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'Virginia'
SELECT T2.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T3.breed_code = T3.breed_code WHERE T2.city = "Virginia" AND T3.breed_name = "Labrador Doles"
SELECT date_departed , date_arrived FROM dogs WHERE breed_code = "Poodle 1"
SELECT date_arrived , date_departed FROM dogs WHERE breed_code = "Pug"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs) AND T1.breed_code = "poodle_bastfel_2000"
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM owners WHERE state = 'Hawaii' OR last_name = 'Wisconsin'
SELECT email_address FROM Owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_departed , date_arrived FROM Dogs
SELECT date_departed , date_arrived FROM dogs
SELECT count(*) FROM treatment_types AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Pup"
SELECT count(*) FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.goodness = 'Puppy'
SELECT count(*) FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'P' AND T3.weight = 1200
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'P'
SELECT role_code , T2.street , T2.city , T2.state FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.profession_id = T2.profession_id JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T3.treatment_type_code WHERE T1.role_code = 'Vitals' AND T3.treatment_type_code = 'West'
SELECT role_code , street , city , state FROM PROFESSIONS WHERE first_name LIKE '%West%'
SELECT T1.first_name , T1.last_name , T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'North'
SELECT T1.first_name , T1.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "North"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM Treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE breed_code != "pug" AND date_departed != "date_of_treatment"
SELECT count(*) FROM dogs WHERE breed_code = "puppy"
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = "poodle_cupcake")
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE weight = 1000)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 1)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = "puppy")
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE breed_code = "Puppy";
SELECT avg(age) FROM dogs WHERE breed_code = "Puppy";
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE;
SELECT sum(charge_amount) FROM CHARGE WHERE charge_type = "the most expensive"
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_phone FROM professionals WHERE role_code = "VENDER"
SELECT email_address , home_phone , cell_phone FROM PROFESSIONS
SELECT breed_type , size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_type , size_type FROM dogs WHERE gender = 'Pug'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer WHERE citizenship = 'VOLAL'
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Type = 'Vocal'
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
SELECT T2.Title , T2.Singer_ID FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_1 > 300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sale_Millions > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Name , T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer EXCEPT SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM ref_feature_types WHERE feature_type_code = "AirCon"
SELECT property_type_description FROM ref_property_types WHERE property_type_code = (SELECT property_type_code FROM properties)
SELECT property_name FROM Properties WHERE property_type_code = "house" OR property_type_code = "apartment" AND room_count > 1
