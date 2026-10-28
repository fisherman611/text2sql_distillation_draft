SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT name ,  song_release_year FROM singer ORDER BY age DESC LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  NAME FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT max(capacity) ,  avg(average) FROM stadium
SELECT avg(capacity) ,  max(capacity) FROM stadium
SELECT name ,  average FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  average FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T2.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) ,  stadium_id FROM concert GROUP BY stadium_id
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  >  2013 ORDER BY T2.year DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR  =  2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT concert.stadium_id FROM concert WHERE YEAR  =  2014)
SELECT T2.concert_Name ,  T1.theme FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID GROUP BY T1.concert_ID HAVING count(*)  =  1
SELECT T2.name ,  T2.theme ,  count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.concert_id
SELECT T2.name ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.singer_id
SELECT T2.name ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T2.singer_id
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id WHERE T1.year  =  2014
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id WHERE T1.year  =  2014
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014 INTERSECT SELECT T2.name ,  T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2015
SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight  >  10
SELECT count(*) FROM Pets WHERE weight  >  10
SELECT max(weight) FROM Pets
SELECT max(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets)
SELECT max(weight) ,  pettype FROM Pets GROUP BY pettype
SELECT max(weight) ,  pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Age  >  20
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.age  >  20
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T3.PetID  =  T1.PetID WHERE T2.sex  =  'F' AND T3.pet_age  =  1
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Fname  =  "Dog" AND T2.Sex  =  "Female"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat' OR T3.PetType  =  'dog'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog'
SELECT major ,  age FROM Student EXCEPT SELECT T1.major ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.PetID  =  "Cat"
SELECT T1.major FROM Student AS T1 EXCEPT SELECT T2.major FROM Has_Pet AS T2 JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'Cat'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType  =  "Cat"
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog' EXCEPT SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  "dog" EXCEPT SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  "cat"
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type ,  weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid ,  weight FROM Pets WHERE pet_age  >  1
SELECT petid ,  weight FROM Pets WHERE pet_age  >  1
SELECT pet_type ,  avg(pet_age) ,  max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type ,  avg(pet_age) ,  max(pet_age) FROM Pets GROUP BY pet_type
SELECT pettype ,  avg(weight) FROM Pets GROUP BY pettype
SELECT pet_type ,  avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid
SELECT DISTINCT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_age  >  1
SELECT T2.petid FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid JOIN Student AS T3 ON T1.stuid  =  T3.stuid WHERE T3.lname  =  'Smith'
SELECT T2.petid FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid JOIN Student AS T3 ON T1.stuid  =  T3.stuid WHERE T3.lname  =  'Smith'
SELECT count(*) ,  StuID FROM Has_Pet GROUP BY StuID
SELECT StuID ,  count(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID HAVING count(*)  >  1
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.PetID  =  T3.PetID WHERE T3.pet_age  =  3
SELECT T2.lname FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.PetID  =  T3.PetID WHERE T3.pet_age  =  3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT continentid ,  continent ,  count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.continent  =  T2.continent GROUP BY T1.continent
SELECT t1.continent ,  t2.continent ,  count(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid  =  t2.continent GROUP BY t1.continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.Maker ,  T1.FullName ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.Maker
SELECT T1.Maker ,  T2.Model ,  COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id
SELECT min(t1.mpg) FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id  =  t2.makeid GROUP BY t2.model
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Mid  =  T2.Model WHERE T1.Horsepower  =  (SELECT min(Horsepower) FROM cars_data)
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.Model  =  t2.Model WHERE t2.Weight  <  (SELECT avg(Weight) FROM cars_data)
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.Model  =  t2.Model WHERE t2.Weight  <  (SELECT avg(Weight) FROM cars_data)
SELECT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.makeid WHERE T2.year  =  1970
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id  =  T2.model WHERE T2.year  =  1970
SELECT T2.Maker ,  T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.Model WHERE T1.Year  =  (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker ,  T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model  =  T2.MakeId WHERE T1.Make  =  "CARR" ORDER BY T2.Year LIMIT 1
SELECT DISTINCT model FROM cars_data WHERE YEAR  >  1980
SELECT DISTINCT model FROM cars_data WHERE YEAR  >  1980
SELECT T2.Continent ,  count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T2.Continent
SELECT T2.Continent ,  count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T2.Continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) ,  T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.id GROUP BY T2.Maker
SELECT count(*) ,  T1.Maker ,  T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make  =  'amc hornet sportabout'
SELECT accelerate FROM cars_data WHERE model  =  "acme hornet sportabout"
SELECT count(*) FROM car_makers WHERE country  =  'france'
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_makers WHERE country  =  'USA'
SELECT count(*) FROM car_makers WHERE country  =  'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders  =  4
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT maker ,  model FROM model_list
SELECT maker ,  model FROM model_list
SELECT T2.Country ,  T1.Maker FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*)  >=  1
SELECT T1.CountryName ,  T2.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T2.CountryId HAVING COUNT(*)  >=  1
SELECT id FROM cars_data WHERE horsepower  >  150
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT T2.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId WHERE T2.Continent  =  'Europe' GROUP BY T2.Country HAVING COUNT(*)  >=  3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId WHERE T1.Maker  =  "Germany"
SELECT max(Horsepower) ,  T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.Model WHERE T1.Cylinders  =  3
SELECT max(Horsepower) ,  MAX(Maker) FROM cars_data WHERE Cylinders  =  3
SELECT DISTINCT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid  =  t2.id ORDER BY t2.mpg DESC LIMIT 1
SELECT avg(horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Edispl) FROM cars_data WHERE model  =  'volvo'
SELECT avg(Edispl) FROM cars_data WHERE Model  =  "Volvo"
SELECT max(accelerate) ,  cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) FROM cars_data BY cylinders
SELECT t1.maker FROM car_names AS t1 JOIN model_list AS t2 ON t1.model  =  t2.model JOIN car_makers AS t3 ON t2.id  =  t3.id GROUP BY t3.maker ORDER BY count(*) DESC LIMIT 1
SELECT t1.maker FROM model_list AS t1 JOIN car_names AS t2 ON t1.model  =  t2.model GROUP BY t1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders  >  4
SELECT count(*) FROM cars_data WHERE Cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM car_makers WHERE FullName  =  "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.maker  =  "American Motor Company"
SELECT T2.Maker ,  T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T2.Maker HAVING count(*)  >  3
SELECT T2.Maker ,  T1.Maker FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id GROUP BY T1.Maker HAVING count(*)  >  3
SELECT DISTINCT t1.model FROM model_list AS t1 JOIN car_names AS t2 ON t1.model  =  t2.model JOIN cars_data AS t3 ON t2.makeid  =  t3.id WHERE t3.Weight  >  3500 OR t2.maker  =  "General Motors"
SELECT DISTINCT model FROM model_list WHERE maker  =  "General Motors" OR weight  >  3500
SELECT YEAR FROM cars_data WHERE WEIGHT  >=  3000 AND WEIGHT  <=  4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT  <  4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT  >  3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE accelerate  =  (SELECT min(accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE Model  =  "Volvo" AND Accelerate  =  (SELECT min(Accelerate) FROM cars_data WHERE Model  =  "Volvo")
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country  >  2
SELECT count(*) FROM car_makers WHERE country  >  2
SELECT count(*) FROM cars_data WHERE Cylinders  >  6
SELECT count(*) FROM cars_data WHERE Cylinders  >  6
SELECT max(Horsepower) ,  Model FROM cars_data WHERE Cylinders  =  4 GROUP BY Model
SELECT max(horsepower) ,  model FROM cars_data WHERE cylinders  =  4 GROUP BY model
{"SELECT id ,  make FROM cars_data WHERE cylinders  >  3 AND horsepower  <  min(horsepower)"}
SELECT makeid ,  t1.maker FROM car_names AS t1 JOIN cars_data AS t2 ON t1.model  =  t2.id WHERE t2.Horsepower  >  4 AND t2.Cylinders  <  4
SELECT max(MPG) FROM cars_data WHERE Cylinders  =  8 AND YEAR  <  1980
SELECT max(mpg) FROM cars_data WHERE cylinders  =  8 OR YEAR  <  1980
SELECT model FROM cars_data WHERE weight  <  3500 EXCEPT SELECT model FROM cars_data WHERE weight  <  3500 AND make  =  'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight  <  3500 AND id NOT IN (SELECT id FROM cars_data WHERE make  =  'Ford')
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING COUNT(*)  >=  2 INTERSECT SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING COUNT(*)  >  3
SELECT T1.id ,  T2.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T2.maker HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T2.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T2.maker HAVING count(*)  >  3
SELECT T1.CountryId ,  T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*)  >  3 INTERSECT SELECT T1.CountryId ,  T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId WHERE T1.Maker  =  'fiat'
SELECT T1.CountryId ,  T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.CountryId HAVING COUNT(*)  >  3 INTERSECT SELECT T1.CountryId ,  T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId WHERE T1.Model  =  'fiat'
SELECT country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT country FROM airlines WHERE Abbreviation  =  'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  'USA'
SELECT airportcode ,  airportname FROM airports WHERE city  =  'Anthony'
{"code": "SELECT airportcode ,  airportname FROM airports WHERE city  =  'Anthony'"}
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation  =  'UAL'
SELECT Abbreviation FROM airlines WHERE Abbreviation  =  'UAL'
SELECT count(*) FROM airlines WHERE Country  =  'USA'
SELECT count(*) FROM airlines WHERE country  =  'USA'
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT airportname FROM airports WHERE airportcode  =  'AKO'
{"SQL": "SELECT airportname FROM airports WHERE airportcode  =  'AKO'"}
SELECT airportname FROM airports WHERE city  =  'Aberdeen'
SELECT airportname FROM airports WHERE city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airportname  =  'APG'
SELECT count(*) FROM flights WHERE sourceairport  =  'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  'Aberdeen' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "JetBlue Airways"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airpoitname  =  'ASY' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.airline WHERE T1.abbreviation  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airpoortname  =  'ASY' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airpoortname  =  'AHD' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airpoortname  =  'AHD' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'Aberdeen' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.airline WHERE T1.airline  =  'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'Aberdeen' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.airline WHERE T2.airportname  =  'Aberdeen'
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode GROUP BY T1.SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T2.City FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode GROUP BY T2.City ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) LIMIT 1
{"code": "101"}
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT Abbreviation ,  Country FROM airlines GROUP BY Abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT Abbreviation ,  Country FROM airlines WHERE Airline  =  (SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) ASC LIMIT 1)
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  "APG" INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  "CVO"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'APG'
SELECT DISTINCT airline FROM flights GROUP BY airline HAVING count(*)  >=  10
SELECT airline FROM flights GROUP BY airline HAVING count(*)  >=  10
SELECT airline FROM flights GROUP BY airline HAVING count(*)  <  200
SELECT airline FROM flights GROUP BY airline HAVING count(*)  <  200
SELECT flightno FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "United Airlines"
SELECT flightno FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "United Airlines"
SELECT flightno FROM flights WHERE sourceairport  =  'APG'
SELECT flightno FROM flights WHERE sourceairport  =  'APG'
SELECT DESTAirport FROM flights WHERE DESTAirport  =  'APG'
SELECT flightno FROM flights WHERE destairport  =  'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT flightno FROM flights WHERE sourceairport  =  'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  'Aberdeen'
SELECT flightno FROM flights WHERE destairport  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport WHERE T1.city  =  'Abberon' OR T1.city  =  'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Abilene' OR T2.city  =  'Aberdeen'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights) UNION SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name ,  district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT name ,  location ,  district FROM shop ORDER BY number_products DESC
SELECT name ,  location ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id WHERE T1.bonus  =  (SELECT max(bonus) FROM evaluation)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) ,  T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T2.shop_id
SELECT count(*) ,  T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.name
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT count(DISTINCT location) FROM shop
SELECT count(DISTINCT location) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE '%w%'
{"document_id": "321", "template_id": "35", "document_description": "Robbin CV"}
{"document_id": "321", "template_id": "35", "document_description": "Robbin CV"}
SELECT count(DISTINCT Template_ID) FROM Documents
SELECT count(DISTINCT Template_ID) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_Type_Code WHERE T2.Template_Type_Code  =  "PPT"
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT count(*) ,  Template_ID FROM Documents GROUP BY Template_ID
SELECT T1.template_id ,  T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id ,  T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T2.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*)  >  1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE Template_Type_Code  =  "PP" OR Template_Type_Code  =  "PPT"
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code  =  'CV'
SELECT count(*) FROM Templates WHERE Template_Type_Code  =  "CV"
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code
SELECT Template_Type_Code ,  count(*) FROM Templates GROUP BY Template_Type_Code
SELECT template_type_code FROM_templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*)  <  3
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*)  <  3
SELECT min(Version_Number) ,  Template_Type_Code FROM Templates
SELECT min(Version_Number) ,  Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_name  =  "Data database"
SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_name  =  'Data base'
SELECT DISTINCT t1.document_name FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id  =  t2.template_id WHERE t2.template_type_code  =  'BK'
SELECT T2.document_name FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  "BK"
SELECT Template_Type_Code ,  count(*) FROM Templates GROUP BY Template_Type_Code
SELECT count(*) ,  Template_type_code FROM Templates GROUP BY Template_type_code
SELECT Template_Type_Code FROM Documents GROUP BY Template_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT template_id FROM Documents)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description NOT IN (SELECT T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id)
SELECT Template_Type_Code ,  Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code ,  template_type_description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code  =  "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code  =  'AD'
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_description
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code  =  T2.template_type_code JOIN Documents AS T3 ON T2.template_id  =  T3.template_id
SELECT template_id FROM Templates WHERE template_type_code  =  (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Presentation")
SELECT template_id FROM Templates WHERE template_type_code  =  (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  'Presentation')
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Summer Show'
SELECT * FROM paragraphs WHERE paragraph_text  =  'Korea'
SELECT * FROM paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id ,  T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Welcome to NY'
SELECT T1.paragraph_id ,  T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_id  =  "Customer reviews"
SELECT t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id  =  t2.document_id WHERE t2.document_name  =  'Customer reviews'
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT count(*) ,  document_id ,  document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T2.document_id
{"ids": ["10212", "10213"], "names": ["Document1", "Document2"], "paragraphs": {"10212": 2, "10213": 3}}
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT T1.document_id ,  T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T2.document_id ORDER BY count(*) DESC LIMIT 1
{"id": "10212", "name": "Document 1"}
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
{"id": "1"}
SELECT document_id FROM paragraphs WHERE paragraph_id  =  1 OR paragraph_id  =  2
SELECT document_id FROM paragraphs WHERE paragraph_id BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' OR paragraph_text  =  'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT name FROM teacher ORDER BY age ASC
SELECT name FROM teacher ORDER BY age ASC
SELECT age ,  Hometown FROM teacher
SELECT age ,  Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age  =  32 OR age  =  33
SELECT name FROM teacher WHERE age  =  32 OR age  =  33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING count(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING count(*)  >=  2
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T2.Name
SELECT T2.name FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id  =  T2.course_id JOIN teacher AS T3 ON T2.teacher_id  =  T3.teacher_id WHERE T1.course  =  'Math'
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T1.course  =  'Math'
SELECT T2.name ,  count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.name ,  count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id HAVING count(*)  >=  2
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id HAVING count(*)  >=  2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT name FROM visitor WHERE level_of_membership  >  4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership  <=  4
SELECT name ,  level_of_membership FROM visitor WHERE level_of_membership  >  4 ORDER BY age
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year  <  2009
SELECT open_year ,  num_of_staff FROM museum WHERE name  =  'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T2.id ,  T2.name ,  T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id GROUP BY T1.visitor_id HAVING count(*)  >  1
SELECT T2.id ,  T2.name ,  T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id WHERE T1.num_of_ticket  =  (SELECT sum(num_of_ticket) FROM visit)
{"id": "1021", "name": "The museum"}
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name ,  T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Ticket) ,  max(Num_of_Ticket) FROM visit
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id WHERE T2.level_of_membership  =  1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id JOIN museum AS T3 ON T1.museum_id  =  T3.museum_id WHERE T3.open_year  <  2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id JOIN museum AS T3 ON T1.museum_id  =  T3.museum_id WHERE T3.open_year  >  2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id  =  (SELECT museum_museum_id FROM museum WHERE open_year  >  2010)
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016
SELECT winner_name FROM matches WHERE YEAR  =  2013 INTERSECT SELECT winner_name FROM matches WHERE YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT first_name ,  country_code FROM players WHERE winner_id IN (SELECT winner_id FROM matches WHERE tourney_name  =  'WTA Championships' INTERSECT SELECT winner_id FROM matches WHERE tourney_name  =  'Australian Open')
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY winner_age DESC LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'left' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'yes' ORDER BY birth_date
SELECT T2.first_name ,  T2.country_code FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.rank_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name ,  T2.last_name ,  T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T2.first_name ,  T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id JOIN rankings AS T3 ON T3.player_id  =  T2.player_id WHERE T3.ranking_points  =  (SELECT max(ranking_points) FROM rankings WHERE tourney_name  =  'Australian Open')
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id JOIN rankings AS T3 ON T1.player_id  =  T3.player_id WHERE T2.tourney_name  =  'Australian Open' ORDER BY T3.ranking_points DESC LIMIT 1
SELECT loser_name ,  winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name ,  T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(rank) ,  first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id GROUP BY T2.first_name
SELECT T1.first_name ,  avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT sum(rank) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT T1.first_name ,  sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code ,  count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT sum(tour) ,  ranking_date FROM rankings GROUP BY ranking_date
SELECT ranking_date ,  count(*) FROM rankings GROUP BY ranking_date
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_rank DESC LIMIT 3
SELECT count(DISTINCT winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id WHERE T1.tourney_name  =  "WTA Championships" AND T2.hand  =  "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "Left"
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  result FROM battle
SELECT max(killed) ,  min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.note ,  T2.killed ,  T2.injured FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id WHERE T1.tonnage  =  't'
SELECT name ,  result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.id HAVING sum(killed)  >  10
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.tonnage = '225')
SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'HMS Atalanta'
SELECT name ,  result ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.lost_in_battle =  'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "1" OR line_2 = "2"
SELECT line_1 ,  line_2 FROM addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM courses WHERE course_id  =  'math'
SELECT course_description FROM Courses WHERE course_name  =  'Math'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT T2.department_name ,  T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name ,  T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Degree_Programs GROUP BY department_id HAVING count(*)  >  1)
SELECT count(DISTINCT department_id) FROM Degree_Programs WHERE degree_summary_name  =  'Degrees'
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_programs WHERE department_name  =  'Engineering'
SELECT count(*) FROM departments WHERE department_name  =  'Engineering'
SELECT section_name ,  section_description FROM sections
SELECT section_name ,  section_description FROM sections
SELECT T1.course_name ,  T2.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  <=  2
SELECT T1.course_name ,  T2.course_id FROM COURSES AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  <  2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T2.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T2.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id JOIN semesters AS T4 ON T2.semester_id  =  T4.semester_id WHERE T3.degree_program_id  =  2 GROUP BY T1.student_id HAVING count(*)  =  2
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.semester_id  =  1 AND T3.semester_name  =  '1' AND T3.degree_summary_name  =  '2'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelor'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelors'
SELECT T1.degree_program_id FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T2.first_name ,  T2.middle_name ,  T2.last_name ,  count(*) ,  T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id ,  count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Graduate Program"
SELECT last_name FROM students WHERE current_address_id IN (SELECT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = "North Carolina") EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_id HAVING count(*)  >=  2
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_date HAVING count(*)  >=  2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name ,  middle_name ,  last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM students WHERE date_first_registered  =  (SELECT max(date_first_registered) FROM students)
SELECT first_name ,  middle_name ,  last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM students WHERE date_first_registered  =  (SELECT max(date_first_registered) FROM students)
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id ,  T2.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM transcripts
SELECT avg(transcript_date) FROM transcripts
SELECT transcript_date FROM transcripts ORDER BY transcript_date LIMIT 1
SELECT max(transcript_date) ,  transcript_date FROM transcripts
SELECT count(*) FROM transcripts
SELECT count(*) FROM transcripts
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT count(*) ,  T1.course_id FROM student_enrolment_courses AS T1 JOIN courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT max(count(*) ,  min(2021) FROM transcript_contents AS T1 JOIN transcript AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY transcript_id
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_date ORDER BY count(*) ASC LIMIT 1
SELECT transcript_date ,  transcript_id FROM transcripts ORDER BY count(*) LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN students AS T3 ON T2.student_id  =  T3.student_id WHERE T3.first_name  =  'Master' AND T3.last_name  =  'Bachelor'
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id JOIN departments AS T4 ON T3.department_id  =  T4.department_id WHERE T3.degree_summary_name  =  'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id JOIN departments AS T4 ON T3.department_id  =  T4.department_id WHERE T3.degree_summary_name  =  'Bachelors'
SELECT count(DISTINCT address_id) FROM students
SELECT DISTINCT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.permanent_address_id
SELECT * FROM students ORDER BY last_name DESC
SELECT * FROM students ORDER BY first_name DESC
SELECT section_description FROM sections WHERE section_name  =  'h'
SELECT section_description FROM sections WHERE section_name  =  'h'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country  =  'Haiti') OR cell_mobile_number  =  '09700166582'
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country  =  'Haiti') OR cell_mobile_number  =  '09700166582'
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title
SELECT * FROM cartoon WHERE Directed_by  =  "Ben Jones"
SELECT DISTINCT title FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM Cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
SELECT Title FROM cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
{"SQL": "SELECT Country ,  COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1"}
SELECT Country ,  count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language  =  "English"
SELECT count(*) FROM TV_channel WHERE Language  =  "English"
{"SQL": "SELECT Language ,  COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1"}
{"SQL": "SELECT Language ,  COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1"}
SELECT Language ,  COUNT(*) FROM TV_Channel GROUP BY Language
SELECT LANGUAGE ,  count(*) FROM TV_channel GROUP BY LANGUAGE
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle"
SELECT t1.title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel  =  t2.id WHERE t2.series_name  =  "Sky Radio"
SELECT t1.title FROM cartoon AS t1 JOIN TV_Channel AS t2 ON t1.channel  =  t2.id WHERE t2.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
{"SQL": "SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3"}
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(Share) ,  min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
{"SQL": "SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.episode  =  \"A Love of a Lifetime\""}
SELECT series_name FROM tv_channel WHERE id IN (SELECT channel FROM tv_series WHERE episode  =  "A Love of a Lifetime")
SELECT T2.episode FROM tv_channel AS T1 JOIN tv_series AS T2 ON T1.id  =  T2.channel WHERE T1.series_name  =  "Sky Radio"
SELECT T2.episode FROM tv_series AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.series_name  =  "Sky Radio"
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT production_code ,  Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code ,  Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  "YES"
{"SQL": "SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  \"YES\""}
SELECT T2.Country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel  =  T2.id WHERE T1.Written_by  =  "Todd Casey"
SELECT country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "TV" AND T1.directed_by  =  "Todd Casey"
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Written_by  =  'Todd Casey')
SELECT Country FROM TV_Channel WHERE Content NOT IN (SELECT Title FROM cartoon WHERE Directed_by  =  "Todd Casey")
SELECT t1.series_name ,  t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by  =  "Ben Jones" INTERSECT SELECT t1.series_name ,  t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by  =  "Michael Chang"
SELECT t1.series_name ,  t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by  =  "Ben Jones" UNION SELECT t1.series_name ,  t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by  =  "Michael Chang"
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING count(*)  >  2
SELECT id FROM TV_Channel GROUP BY id HAVING count(*)  >  2
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Directed_by  =  "Ben Jones")
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Directed_by  =  "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by  =  "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by  =  "Ben Jones")
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT avg(arnings) FROM poker_player
SELECT avg(arnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(final_table_made) FROM poker_player WHERE Earnings  <  200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings  <  200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id  =  T2.people_id WHERE T2.earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(arnings) FROM poker_player WHERE height  >  200
SELECT avg(earnings) FROM poker_player WHERE height  >  200
SELECT name FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id  =  T2.people_id ORDER BY T2.earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
{"nationality": "United States", "count": 2235455431}
SELECT count(*) ,  Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name
SELECT Name ,  Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id ,  phone_number ,  state FROM VOTES
SELECT max(area_code) ,  min(area_code) FROM area_code_state
SELECT max(created) FROM VOTES WHERE state  =  'CA'
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT T1.state ,  T2.created FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS JOIN VOTES ON VOTES.contestant_number  =  CONTESTANTS.contestant_number GROUP BY contestant_number HAVING count(*)  >=  2
SELECT contestant_number ,  contestant_name FROM VOTES ORDER BY count(*) LIMIT 1
SELECT count(*) FROM VOTES WHERE state  =  'NY' OR state  =  'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM VOTES GROUP BY area_code ORDER BY count(*) DESC LIMIT 1
SELECT created ,  state ,  phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T2.contestant_name  =  'Tabatha Gehling'
SELECT T2.area_code FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T1.contestant_name  =  'Tabatha Gehling' INTERSECT SELECT T2.area_code FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T1.contestant_name  =  'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independeyyear  >  1950
SELECT name FROM country WHERE independyear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Carribean'
SELECT continent FROM country WHERE name  =  'Anguilla'
SELECT continent FROM country WHERE code  =  'ANGUILLA'
SELECT T2.region FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T1.name  =  "Kabil"
SELECT DISTINCT t1.region FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.code WHERE t2.name  =  "Kabul"
SELECT language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode  =  'ARAB'
SELECT population ,  life expectancy FROM country WHERE name  =  'Brazil'
SELECT population ,  life expectancy FROM country WHERE continent  =  'Brazil'
SELECT T2.region ,  T2.population FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.code WHERE T1.name  =  'Angola'
SELECT T2.region ,  T1.population FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.countrycode WHERE T1.name  =  'Angola'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  "Central Africa"
SELECT avg(1) FROM country WHERE continent  =  'Central Africa'
SELECT name FROM country WHERE continent  =  'Asia' AND lifeexpectancy  =  (SELECT min(lifeexpectancy) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE continent  =  'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) ,  max(gnp) FROM country WHERE continent  =  'Asia'
SELECT count(*) ,  max(GNP) FROM country WHERE continent  =  'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  'Africa' AND region  =  'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  'Africa' AND region  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent  =  'Europe'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT count(*) FROM city WHERE district  =  'Gelderland'
SELECT sum(population) FROM city WHERE district  =  "Gelderland"
SELECT avg(GNP) ,  sum(population) FROM country WHERE governmentform  =  "US"
SELECT avg(GNP) ,  sum(population) FROM country WHERE region  =  'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  'Africa'
SELECT sum(language) FROM countrylanguage WHERE country.code  =  "ARUBA"
SELECT count(*) FROM countrylanguage WHERE countrycode  =  "ARUBA"
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND code  =  'AF'
SELECT count(*) FROM countrylanguage WHERE countrycode  =  "AF
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code GROUP BY T1.countrycode ORDER BY sum(T1.percentage) DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T2.name ORDER BY sum(T1.percentage) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.Language  =  "English" INTERSECT SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.Language  =  "Dutch"
SELECT count(*) FROM countrylanguage WHERE language  =  "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language  =  "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code JOIN country AS T3 ON T2.code  =  T3.code WHERE T1.name  =  'France' AND T2.language  =  'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code JOIN country AS T3 ON T2.code  =  T3.code WHERE T1.name  =  'France' AND T2.language  =  'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.isofficial  =  1 AND T2.language  =  'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.isofficial  =  1 AND T2.language  =  'French'
SELECT T2.name ,  T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.isofficial  =  1 AND T1.language  =  'English' INTERSECT SELECT T2.name ,  T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.isofficial  =  1 AND T1.language  =  'French'
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language  =  'Chinese'
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language  =  'Chinese'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"
SELECT DISTINCT T1.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.Language  =  "Dutch" OR T1.Language  =  "English"
SELECT T1.country FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"
SELECT country FROM countrylanguage WHERE language  =  "English" OR language  =  "Dutch"
SELECT language FROM countrylanguage WHERE continent  =  'Asia' ORDER BY percentage DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T1.Continent  =  'Asia' GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T1.region  =  'Republic' GROUP BY T2.Language HAVING count(*)  =  1
SELECT language FROM countrylanguage WHERE isofficial  =  '1' GROUP BY language HAVING count(*)  =  1
SELECT name FROM city WHERE population  =  (SELECT max(population) FROM city WHERE language  =  'English')
SELECT max(population) FROM city WHERE countrycode IN (SELECT code FROM countrylanguage WHERE language  =  "English")
SELECT name ,  population ,  lifeexpectancy FROM country WHERE name  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE isofficial  =  1 AND language  =  "english")
SELECT avg(lifeexpectancy) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE isofficial  =  1 AND language  =  "english")
SELECT sum(population) FROM country WHERE code NOT IN (SELECT code FROM countrylanguage WHERE language  =  "english")
SELECT count(*) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.HeadOfState  =  "Beatrix"
SELECT t1.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.code WHERE t1.name  =  "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE country.code  IN (SELECT countrycode FROM country WHERE independyear  <  1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode  IN (SELECT code FROM country WHERE independyear  <  1930)
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT country FROM country WHERE continent  =  'Africa' AND population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT country FROM country WHERE continent  =  'Africa' AND population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE continent  =  'Asia' AND population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa')
SELECT name FROM country WHERE continent  =  'Asia' AND population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa')
SELECT countrycode FROM country WHERE language != 'en'
SELECT countrycode FROM country WHERE language != 'en'
SELECT countrycode FROM countrylanguage WHERE language != 'english'
SELECT countrycode FROM countrylanguage WHERE language != 'english'
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND language != 'English'
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND language != 'English'
SELECT name FROM city WHERE countrycode IN (SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.isofficial != 1 AND T1.name  =  'English' AND T1.continent  =  'Europe')
SELECT name FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1 AND continent  =  'Europe')
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.code WHERE T3.IsOfficial  =  1 AND T2.name  =  'Asia' AND T3.Language  =  'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.continent  =  'Asia' AND T2.isofficial  =  '1'
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  independyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT population ,  name ,  headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  head_of_state FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.name ,  count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T2.code HAVING count(*)  >=  3
SELECT T2.name ,  count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T1.code HAVING count(*)  >  2
SELECT count(*) ,  district FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) ,  district FROM city GROUP BY district HAVING avg(population)  >  population
SELECT governmentform ,  sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy)  >  72
SELECT governmentform ,  sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy)  >  72
SELECT avg(lifeexpectancy) ,  sum(population) FROM country WHERE lifeexpectancy  <  72
SELECT continent ,  sum(population) ,  avg(lifeexpectancy) FROM country GROUP BY continent HAVING avg(lifeexpectancy)  <  72
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.CountryCode GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language ,  T1.CountryCode FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY SUM(T1.Percentage) DESC LIMIT 1
SELECT countrycode ,  language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT sum(T1.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  "Spanish" GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language  =  "Spanish"
SELECT countrycode FROM countrylanguage WHERE language  =  "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language  =  'Spanish'
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT Name FROM conductor ORDER BY YEAR_of_Work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.Name ,  T1.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID  =  T3.Conductor_ID
SELECT T2.Name ,  T1.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID  =  T3.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
{"record_company": "ORCHESTRA", "count": "2"}
SELECT count(*) ,  record_company FROM orchestra GROUP BY record_company
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY count(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY count(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra.orchestra FROM orchestra EXCEPT SELECT T1.orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id  =  T2.orchestra_id
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_of_founded  <  2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded  >  2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded  <  2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded  >  2003
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT YEAR_of_founded FROM orchestra GROUP BY YEAR_of_founded HAVING count(*)  >  1
SELECT YEAR_of_founded FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING count(*)  >  1)
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name ,  grade FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT * FROM Highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT name FROM highschooler WHERE grade  =  10
SELECT name FROM highschooler WHERE grade  =  10
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) ,  grade FROM highschooler GROUP BY grade
SELECT count(*) ,  grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT student_id ,  friend_id FROM friend
SELECT count(*) ,  name FROM friend GROUP BY student_id
SELECT T2.name ,  count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >=  3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >=  3
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id IN (SELECT student_id FROM likes EXCEPT SELECT liked_id FROM likes)
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id JOIN friend AS T3 ON T3.student_id  =  T2.liked_id WHERE T3.friend_id  =  T4.friend_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id JOIN friend AS T3 ON T3.friend_id  =  T2.friend_id WHERE T1.grade  =  'high school'
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT T2.name ,  count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.grade  >  5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >=  2
SELECT name FROM highschooler WHERE grade  >  5 INTERSECT SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT avg(grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.date_of_treatment  >  2
SELECT professional_id ,  first_name ,  last_name ,  cell_number FROM professionals WHERE state  =  'Indiana' OR treatment_id  >  2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment  >  1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.cost_of_treatment  <=  1000
SELECT first_name FROM owners WHERE first_name IN (SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.gender = 'dog' )
SELECT first_name FROM owners EXCEPT SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.name LIKE '%dog%'
SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.dog_id  =  '11111'
SELECT professional_id ,  role_code ,  email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T2.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T2.professional_id HAVING count(*)  >=  2
SELECT T2.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM breeds WHERE breed_code IN (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.owner_id ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
"SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code  =  t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t1.cost_of_treatment) LIMIT 1"
"SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code  =  t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t1.cost_of_treatment) LIMIT 1"
SELECT T1.owner_id ,  T2.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.owner_id ,  T2.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T1.charge_amount) DESC LIMIT 1
SELECT T1.professional_id ,  T2.cell_number FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.date_of_treatment ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T1.last_name ,  T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.name ,  T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  "rare"
SELECT T1.name ,  T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  'rare'
SELECT T2.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T2.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT date_arrived ,  date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived ,  date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT date_arrived ,  date_departed FROM Dogs
SELECT date_arrived ,  date_departed FROM Dogs
SELECT count(*) FROM treatments
SELECT count(*) FROM treatments
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.treatment_type_code  =  'dog'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments WHERE date_of_treatment  =  (SELECT date_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
"SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)"}
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id  =  'dog')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs))
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  '1'
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  '1'
SELECT avg(age) FROM Dogs
SELECT avg(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address ,  cell_number ,  home_phone FROM professionals
SELECT email_address ,  cell_number ,  home_phone FROM professionals
SELECT breed_name ,  size_description FROM dogs GROUP BY breed_code ,  size_code
SELECT DISTINCT T1.breed_name ,  T2.size_description FROM dogs AS T1 JOIN sizes AS T2 ON T1.size_code  =  T2.size_code WHERE T1.gender  =  'Dog'
SELECT T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.treatment_type_code  =  'Disease'
SELECT T1.first_name ,  T1.role_code ,  T1.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'France'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship ,  count(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
{"Citizenship": "BENJAMIN", "Net_Worth_Millions": "1000000000"}
SELECT citizenship ,  max(net_work_millions) FROM singer GROUP BY citizenship
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING count(*)  >  1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Name NOT IN (SELECT T3.Name FROM song AS T3 JOIN singer AS T2 ON T3.Singer_ID  =  T2.Singer_ID)
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code  =  "AirCon"
SELECT property_type_description FROM properties WHERE property_type_code  =  "property_type_code"
SELECT property_name FROM properties WHERE property_type_code  =  'house' OR room_count  >  1
