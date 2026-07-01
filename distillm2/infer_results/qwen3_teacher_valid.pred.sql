SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT song_name ,  song_release_year FROM singer ORDER BY age DESC LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(capacity) ,  avg(avg) FROM stadium
SELECT avg(capacity) ,  max(capacity) FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T2.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.Name ,  COUNT(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID GROUP BY T1.Name
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >  2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014
SELECT name FROM stadium EXCEPT SELECT T2.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014
SELECT T1.concert_Name ,  T1.theme ,  count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID  =  T2.concert_ID GROUP BY T1.concert_ID
SELECT T1.concert_Name ,  T1.theme ,  count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID  =  T2.concert_ID GROUP BY T1.concert_Name
SELECT T3.Name ,  COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID  =  T3.Singer_ID GROUP BY T3.Name
SELECT T3.Name ,  COUNT(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T1.Singer_ID  =  T3.Singer_ID GROUP BY T3.Singer_ID
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id JOIN singer AS T3 ON T2.singer_id  =  T3.singer_id WHERE T1.year  =  2014
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id JOIN singer AS T3 ON T1.singer_id  =  T3.singer_id WHERE T2.year  =  2014
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT DISTINCT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2015
SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2015
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight  >  10
SELECT count(*) FROM pets WHERE weight  >  10
SELECT weight FROM pets WHERE pet_age  =  (SELECT min(pet_age) FROM pets)
SELECT weight FROM pets ORDER BY pet_age LIMIT 1
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT count(*) FROM has_pet WHERE StuID IN (SELECT StuID FROM student WHERE age  >  20)
SELECT count(*) FROM has_pet WHERE StuID IN (SELECT StuID FROM student WHERE age  >  20)
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid JOIN Student AS T3 ON T3.StuID  =  T1.StuID WHERE T3.sex  =  "F" AND T2.pettype  =  "Dog"
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid JOIN Student AS T3 ON T1.StuID  =  T3.StuID WHERE T3.sex  =  "F" AND T2.pettype  =  "Dog"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.PetID  =  T3.PetID WHERE T3.pettype  =  "Cat" OR T3.pettype  =  "Dog"
SELECT T2.fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.petid  =  T3.petid WHERE T3.pettype  =  "Cat" OR T3.pettype  =  "Dog"
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT major ,  age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE pettype  =  'cat')
SELECT major ,  age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE pettype  =  "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_pet WHERE PetType  =  "Cat"
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE pettype  =  "Cat"
SELECT T2.fname ,  T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T1.petid  =  T3.petid WHERE T3.pettype  =  'Dog' EXCEPT SELECT T2.fname ,  T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T1.petid  =  T3.petid WHERE T3.pettype  =  'Cat'
SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.PetID  =  T3.PetID WHERE T3.pettype  =  "Dog" EXCEPT SELECT T2.Fname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.PetID  =  T3.PetID WHERE T3.pettype  =  "Cat"
SELECT pet_type ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_id ,  weight FROM pets WHERE pet_age  >  1
SELECT pet_id ,  weight FROM pets WHERE pet_age  >  1
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype
SELECT avg(pet_age) ,  max(pet_age) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT T2.Fname ,  T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID
SELECT DISTINCT T2.fname ,  T2.age FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID
SELECT T1.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.LName  =  "Smith"
SELECT T1.petid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.LName  =  'Smith'
SELECT count(*) ,  StuID FROM Has_pet GROUP BY StuID
SELECT StuID ,  count(*) FROM Has_pet GROUP BY StuID
SELECT T2.fname ,  T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID HAVING count(*)  >  1
SELECT T2.Fname ,  T2.sex FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID HAVING count(*)  >  1
SELECT T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T1.petid  =  T3.petid WHERE T3.pet_age  =  3
SELECT T2.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T1.petid  =  T3.petid WHERE T3.pet_age  =  3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.ContId ,  T1.Continent ,  COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId  =  T2.Continent GROUP BY T1.ContId
SELECT T1.ContId ,  T1.Continent ,  COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId  =  T2.Continent GROUP BY T1.ContId
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T2.fullname ,  T1.maker ,  count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id GROUP BY T1.maker
SELECT T1.fullname ,  T1.id ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.makeid ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.MakeId ORDER BY T2.Horsepower ASC LIMIT 1
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MPG  =  T2.Maker WHERE T1.weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Makeid = T2.modelid WHERE T1.weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id  =  T2.MakeId WHERE T2.year  =  1970
SELECT T1.Maker ,  T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >  3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.fullname  =  'General Motors' UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker  =  T2.maker WHERE T2.weight  >  3500
SELECT DISTINCT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.maker  =  'General Motors' UNION SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.weight  >  3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight  <  4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight  >  3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id  =  T2.MakeId JOIN model_list AS T3 ON T3.Maker  =  T2.Model WHERE T3.Model  =  "volvo" ORDER BY T1.Accelerate ASC LIMIT 1
SELECT T1.Cylinders FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.MakeId JOIN car_makers AS T3 ON T3.Id  =  T2.Maker WHERE T3.Maker  =  "Volvo" ORDER BY T1.Accelerate LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT accelerate FROM cars_data ORDER BY horsepower DESC LIMIT 1)
SELECT COUNT(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*)  >  2)
SELECT COUNT(*) FROM (SELECT country FROM car_makers GROUP BY country HAVING count(*)  >  2)
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker JOIN cars_data AS T3 ON T3.id  =  T4.makeid WHERE T3.cylinders  =  4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM car_names WHERE id IN (SELECT makeid FROM cars_data WHERE cylinders  =  4) ORDER BY horsepower DESC LIMIT 1
SELECT T1.makeid ,  T1.Make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.id WHERE T2.horsepower  >  (SELECT min(horsepower) FROM cars_data) AND T2.cylinders  >  3
SELECT T1.MakeId ,  T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id  =  T2.Id WHERE T2.Horsepower  <  (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders  <  4
SELECT max(MPG) FROM cars_data WHERE Cylinders  =  8 OR YEAR  <  1980
SELECT max(MPG) FROM cars_data WHERE Cylinders  =  8 OR Year  <  1980
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.model WHERE T1.weight  <  3500 EXCEPT SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.model JOIN car_makers AS T3 ON T2.maker  =  T3.id WHERE T3.fullname  =  'Ford Motor Company'
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model WHERE T1.weight  <  3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model JOIN car_makers AS T3 ON T2.maker = T3.id WHERE T3.maker = "Ford Motor Company"
SELECT countryname FROM countries EXCEPT SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.countryid  =  t2.country
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT id ,  maker FROM car_makers GROUP BY maker HAVING count(*)  >=  2 INTERSECT SELECT id ,  maker FROM car_makers GROUP BY maker HAVING count(*)  >  3
SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id GROUP BY T1.id HAVING count(*)  >=  4
SELECT T1.countryid ,  T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid  =  T2.country GROUP BY T1.countryid HAVING count(*)  >  3 UNION SELECT T1.countryid ,  T1.countryname FROM countries AS T1 JOIN model_list AS T2 ON T1.countryid  =  T2.Maker WHERE T2.model  =  'fiat'
SELECT T1.CountryId ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryId HAVING count(*)  >  3 UNION SELECT T1.CountryId ,  T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId  =  T2.Maker WHERE T2.Model  =  "Fiat"
SELECT country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  'USA'
SELECT AirportCode ,  AirportName FROM airports WHERE City  =  "Anthony"
SELECT AirportCode ,  AirportName FROM airports WHERE City  =  "Anthony"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Airline FROM airlines WHERE Abbreviation  =  'UAL'
SELECT Airline FROM airlines WHERE Abbreviation  =  'UAL'
SELECT count(*) FROM airlines WHERE countryabbrev  =  'USA'
SELECT count(*) FROM airlines WHERE country  =  'USA'
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id  =  T2.Makeid WHERE T2.year  =  1970
SELECT T1.Maker ,  T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id  =  T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT T1.maker ,  T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id ORDER BY T2.year ASC LIMIT 1
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.MakeId WHERE T2.year  >  1980
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.makeid WHERE T2.year  >  1980
SELECT T1.Continent ,  COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId  =  T2.ContId JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent
SELECT T1.Continent ,  COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId  =  T2.ContId JOIN car_makers AS T3 ON T2.CountryId  =  T3.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.fullname
SELECT count(*) ,  T1.id ,  T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id
SELECT accelerate FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.id WHERE T1.maker  =  "amc" AND T1.model  =  "hornet sportabout"
SELECT accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid  =  T2.makeid WHERE T2.model  =  'amc hornet sportabout'
SELECT count(*) FROM car_makers WHERE country  =  "France"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId WHERE T1.Maker  =  "France"
SELECT count(*) FROM car_makers WHERE country  =  'USA'
SELECT count(*) FROM car_makers WHERE country  =  "USA"
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT DISTINCT maker ,  model FROM model_list
SELECT maker ,  model FROM model_list
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName HAVING count(*)  >=  1
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryId HAVING count(*)  >=  1
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName HAVING count(*)  >=  3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T1.Continent  =  'Europe' GROUP BY T1.CountryName HAVING count(*)  >=  3
SELECT max(horsepower) ,  T1.fullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.maker WHERE T2.cylinders  =  3
SELECT max(horsepower) ,  maker FROM cars_data WHERE cylinders  =  3 GROUP BY maker
SELECT max(MPG) FROM cars_data
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.makeid ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  80
SELECT avg(t1.edispl) FROM cars_data AS t1 JOIN car_names AS t2 ON t1.id  =  t2.makeid JOIN model_list AS t3 ON t3.maker  =  t2.maker JOIN car_makers AS t4 ON t4.id  =  t3.id WHERE t4.fullname  =  'Volvo'
SELECT avg(T2.Edispl) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.makeid WHERE T1.maker  =  "Volvo"
SELECT max(accelerate) ,  cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) ,  cylinders FROM cars_data GROUP BY cylinders
SELECT model FROM car_names GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.modelid  =  T2.id GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.fullname  =  'American Motor Company'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.maker  =  "American Motor Company"
SELECT T1.fullname ,  T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T2.maker HAVING count(*)  >  3
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT AirportName FROM airports WHERE City  =  'Aberdeen'
SELECT AirportName FROM airports WHERE City  =  "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport WHERE T1.AirportName  =  'Amsterdam Airport Schiphol'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport WHERE T1.AirportName  =  'Amsterdam Airport Schiphol'
SELECT count(*) FROM flights WHERE DestAirport  =  "ATO"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.AirportName  =  'ATO'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport WHERE T1.city  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport WHERE T1.city  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport WHERE T1.city  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.AirportName  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport JOIN airports AS T3 ON T3.AirportCode  =  T2.DestAirport WHERE T1.City  =  'Aberdeen' AND T3.City  =  'Ashley'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport WHERE T1.city  =  'Aberdeen' AND T1.countryabbrev  =  'UK' INTERSECT SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport WHERE T1.city  =  'Ashley' AND T1.countryabbrev  =  'UK'
SELECT count(*) FROM flights WHERE Airline  =  'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.abbreviation WHERE T2.airline  =  "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Airline  =  T3.UID WHERE T2.AirportName  =  'ASY' AND T3.Airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Airline  =  T3.Airline WHERE T2.AirportName  =  'ASY' AND T3.Airline  =  'United'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.abbreviation JOIN airports AS T3 ON T1.sourceairport  =  T3.airportcode WHERE T3.airportname  =  'Hartsfield-Jackson Atlanta International Airport' AND T2.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode JOIN airlines AS T3 ON T1.airline  =  T3.uid WHERE T2.countryabbrev  =  'US' AND T3.abbriviation  =  'UA' AND T2.airportname  =  'AHD'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport WHERE T1.city  =  'Aberdeen' AND T1.countryabbrev  =  'US' AND T2.airline  =  'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode JOIN airlines AS T3 ON T1.Airline  =  T3.Airline WHERE T2.AirportName  =  'Aberdeen' AND T3.Abbreviation  =  'UA'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T2.DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) DESC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1
SELECT SourceAirport FROM flights GROUP BY SourceAirport ORDER BY count(*) ASC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT Abbreviation ,  Country FROM airlines GROUP BY Abbreviation HAVING count(*)  =  (SELECT min(count(*) ) FROM airlines GROUP BY Abbreviation)
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  'AHD'
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  'AHD'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline WHERE T2.DestAirport  =  'AHD'
SELECT DISTINCT Airline FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'AHD'
SELECT Airline FROM flights WHERE SourceAirport  =  'APG' INTERSECT SELECT Airline FROM flights WHERE DestAirport  =  'CVO'
SELECT Airline FROM flights WHERE SourceAirport  =  "APG" INTERSECT SELECT Airline FROM flights WHERE SourceAirport  =  "CVO"
SELECT Airline FROM flights WHERE SourceAirport  =  'CVO' EXCEPT SELECT Airline FROM flights WHERE SourceAirport  =  'APG'
SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName LIKE "%CVO%") EXCEPT SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName LIKE "%APG%")
SELECT Airline FROM flights GROUP BY Airline HAVING count(*)  >=  10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*)  >=  10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*)  <  200
SELECT Airline FROM flights GROUP BY Airline HAVING count(*)  <  200
SELECT FlightNo FROM flights WHERE Airline  =  "United Airlines"
SELECT DISTINCT FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline  =  T2.Airline WHERE T2.Abbreviation  =  "UA"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT FlightNo FROM flights WHERE SourceAirport  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT FlightNo FROM flights WHERE DestAirport  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen" OR T1.City  =  "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport WHERE T1.City  =  "Aberdeen" OR T1.City  =  "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights UNION SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights UNION SELECT SourceAirport FROM flights)
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
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name ,  location ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id WHERE T2.bonus  =  (SELECT max(bonus) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T3.name ,  count(*) FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id JOIN shop AS T3 ON T1.shop_id  =  T3.shop_id GROUP BY T1.shop_id
SELECT T3.name ,  count(*) FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id JOIN shop AS T3 ON T1.shop_id  =  T3.shop_id GROUP BY T1.shop_id
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE "%w%"
SELECT document_id ,  template_id ,  document_description FROM Documents WHERE document_name  =  "Robbin CV"
SELECT document_id ,  template_id ,  document_description FROM Documents WHERE document_name  =  "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  'PPT'
SELECT count(*) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id  =  t2.template_id WHERE t2.template_type_code  =  "PPT"
SELECT T1.template_id ,  count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT T2.template_id ,  T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T2.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id ,  T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT template_id FROM Templates WHERE template_type_code  =  "PP" OR template_type_code  =  "PPT"
SELECT count(*) FROM Templates WHERE Template_Type_Code  =  "CV"
SELECT count(*) FROM Templates WHERE Template_Type_Code  =  "CV"
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT template_type_code ,  count(*) FROM Templates GROUP BY template_type_code
SELECT Template_Type_Code ,  count(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*)  <  3
SELECT template_type_code FROM templates GROUP BY template_type_code HAVING count(*)  <  3
SELECT min(Version_Number) ,  Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT version_number ,  template_type_code FROM Templates ORDER BY version_number ASC LIMIT 1
SELECT t2.Template_Type_Code FROM Documents AS t1 JOIN Templates AS t2 ON t1.Template_ID  =  t2.Template_ID WHERE t1.Document_Name  =  "Data base"
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T1.Document_Name  =  "Data base"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  "BK"
SELECT T2.document_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id  =  T2.template_id WHERE T1.template_type_code  =  "BK"
SELECT T2.Template_Type_Code ,  count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID GROUP BY T2.Template_Type_Code
SELECT T2.Template_Type_Code ,  count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID GROUP BY T2.Template_Type_Code
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID GROUP BY T2.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T2.Template_Type_Code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID GROUP BY T2.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT template_type_code FROM Templates
SELECT template_type_code ,  template_type_description FROM Ref_Template_Types
SELECT template_type_code ,  template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code  =  "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code  =  "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Book"
SELECT DISTINCT T2.Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID
SELECT DISTINCT T2.Template_Type_Description FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code  =  T2.Template_Type_Code WHERE T2.Template_Type_Description  =  "Presentation"
SELECT template_id FROM templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code  =  T2.Template_Type_Code WHERE T2.Template_Type_Description  =  'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id  =  t2.document_id WHERE t1.document_name  =  "Summer Show"
SELECT count(*) FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id  =  t2.document_id WHERE t1.document_name  =  "Summer Show"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text  =  'Korea '
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea %'
SELECT T1.paragraph_id ,  T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Welcome to NY'
SELECT T1.paragraph_id ,  T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Welcome to NY'
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  "Customer reviews"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  "Customer reviews"
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.document_id ,  T2.document_name ,  count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT T1.document_id ,  T1.document_name ,  count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT T1.document_id ,  T2.document_name FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id ,  T2.document_name FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 2 AND 3
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age ,  Hometown FROM teacher
SELECT Age ,  Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID
SELECT T2.Name ,  T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID  =  T3.Course_ID ORDER BY T2.Name
SELECT T3.Name ,  T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID ORDER BY T3.Name
SELECT T3.Name FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID  =  T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID  =  T3.Teacher_ID WHERE T2.Course  =  'Math'
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID  =  T3.Course_ID AND T3.Teacher_ID  =  T2.Teacher_ID WHERE T1.Course  =  'Math'
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT Name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership  <=  4
SELECT name ,  LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership  >  4 ORDER BY age DESC
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009
SELECT open_year ,  num_of_staff FROM museum WHERE name  =  'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T1.id ,  T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id HAVING count(*)  >  1
SELECT T1.id ,  T1.name ,  T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T2.Museum_ID ,  T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) ,  max(num_of_ticket) FROM visit
SELECT sum(T2.Num_of_Ticket) FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id WHERE T1.Level_of_membership  =  1
SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id JOIN museum AS T3 ON T3.museum_id  =  T1.museum_id WHERE T3.open_year  <  2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id JOIN museum AS T3 ON T3.museum_id  =  T1.museum_id WHERE T3.open_year  >  2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT T1.visitor_ID FROM visit AS T1 JOIN museum AS T2 ON T1.museum_ID  =  T2.museum_ID WHERE T2.open_year  >  2010 )
SELECT count(*) FROM museum WHERE open_year  <  2008 OR open_year  >  2013
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
SELECT min(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2016
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2013 INTERSECT SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'left' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'left' ORDER BY birth_date
SELECT t1.first_name ,  t1.country_code FROM players AS t1 JOIN rankings AS t2 ON t1.player_id  =  t2.player_id GROUP BY t2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.first_name ,  t1.country_code FROM players AS t1 JOIN rankings AS t2 ON t1.player_id  =  t2.player_id ORDER BY t2.tours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name ,  T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name ,  T2.ranking_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T2.winner_name FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id JOIN players AS T3 ON T2.winner_id  =  T3.player_id WHERE T1.ranking_points  =  (SELECT max(ranking_points) FROM rankings) AND T2.tourney_name  =  "Australian Open"
SELECT loser_name ,  winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name ,  loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT avg(T1.ranking) ,  T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id  =  T2.player_id GROUP BY T2.first_name
SELECT T1.first_name ,  avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT sum(ranking_points) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT T1.first_name ,  sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT ranking_date ,  count(*) FROM rankings GROUP BY ranking_date
SELECT ranking_date ,  count(*) FROM rankings GROUP BY ranking_date
SELECT YEAR ,  count(*) FROM matches GROUP BY YEAR
SELECT YEAR ,  count(*) FROM matches GROUP BY YEAR
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_age DESC LIMIT 3
SELECT count(DISTINCT T1.player_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T1.hand  =  "left" AND T2.tourney_name  =  "WTA" AND T2.year  =  2000
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id WHERE T2.hand  =  'L' AND T1.tourney_name  =  'WTA Championships'
SELECT t1.first_name ,  t1.country_code ,  t2.year FROM players AS t1 JOIN matches AS t2 ON t1.player_id  =  t2.winner_id JOIN rankings AS t3 ON t2.winner_id  =  t3.player_id ORDER BY t3.ranking_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id WHERE T2.ranking_points  =  ( SELECT max(ranking_points) FROM rankings )
SELECT hand ,  count(*) FROM players GROUP BY hand
SELECT hand ,  count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  RESULT FROM battle
SELECT max(killed) ,  min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.killed ,  T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id  =  T2.id WHERE T2.tonnage  =  't'
SELECT name ,  RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T2.id ,  T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'
SELECT T2.id ,  T2.name FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id IN (SELECT id FROM ship LOST_IN_BATTLE  =  T2.id) GROUP BY T2.id HAVING sum(T1.killed)  >  10
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE  =  'English'
SELECT count(*) FROM TV_channel WHERE Language  =  "English"
SELECT Language ,  count(*) FROM TV_channel GROUP BY Language ORDER BY count(Language) ASC LIMIT 1
SELECT Language ,  count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language ,  COUNT(*) FROM TV_channel GROUP BY Language
SELECT language ,  count(*) FROM tv_channel GROUP BY language
SELECT t1.series_name FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.title  =  "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.Title  =  "The Rise of the Blue Beetle"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T1.series_name  =  "Sky Radio"
SELECT T2.title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T1.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT episode FROM TV_series ORDER BY rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT episode ,  rating FROM TV_series ORDER BY rating DESC LIMIT 3
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(Share) ,  min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Original_air_date FROM Cartoon WHERE Title  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel  =  T2.Channel WHERE T2.Title  =  "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.channel WHERE T2.Episode  =  "A Love of a Lifetime"
SELECT T1.series_name FROM tv_channel AS T1 JOIN tv_series AS T2 ON T1.id  =  T2.channel WHERE T2.Episode  =  "A Love of a Lifetime"
SELECT T2.Episode FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.Channel WHERE T1.series_name  =  "Sky Radio"
SELECT T2.episode FROM tv_channel AS T1 JOIN tv_series AS T2 ON T1.id  =  T2.channel WHERE T1.series_name  =  "Sky Radio"
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT production_code ,  channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code ,  channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option ,  series_name FROM tv_channel WHERE hight_definition_tv  =  'Yes'
SELECT package_option ,  series_name FROM tv_channel WHERE hight_definition_tv  =  'Yes'
SELECT DISTINCT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.Written_by  =  "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.Channel WHERE T2.Written_by  =  "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.written_by  =  "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel  =  t2.id WHERE t1.written_by  =  "Todd Casey"
SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones" OR T2.directed_by  =  "Michael Chang"
SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones" INTERSECT SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Michael Chang"
SELECT pixel_aspect_ratio_par ,  country FROM tv_channel WHERE LANGUAGE != 'english'
SELECT country ,  pixel_aspect_ratio_par FROM tv_channel WHERE LANGUAGE != 'english'
SELECT id FROM TV_channel WHERE country IN (SELECT country FROM TV_channel GROUP BY country HAVING count(*)  >  2)
SELECT id FROM TV_channel GROUP BY country HAVING count(*)  >  2
SELECT id FROM TV_channel EXCEPT SELECT channel FROM Cartoon WHERE directed_by  =  "Ben Jones"
SELECT id FROM TV_channel EXCEPT SELECT channel FROM Cartoon WHERE directed_by  =  "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT T1.package_option FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones"
SELECT DISTINCT package_option FROM tv_channel EXCEPT SELECT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by  =  "Ben Jones"
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  "Baldwin I"
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT lost_in_battle FROM ship WHERE tonnage  =  225 );
SELECT T2.name ,  T2.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'Lettice' INTERSECT SELECT T2.name ,  T2.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'HMS Atalanta'
SELECT name ,  RESULT ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE location  =  'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 ,  line_2 FROM addresses
SELECT line_1 ,  line_2 FROM addresses
SELECT count(*) FROM COURSES
SELECT count(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name  =  "math"
SELECT course_description FROM courses WHERE course_name LIKE "%math%"
SELECT zip_postcode FROM addresses WHERE city  =  "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city  =  "Port Chelsea"
SELECT T2.department_name ,  T1.department_id FROM Degree_programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_name ,  T1.department_id FROM Degree_programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM degree_programs
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT count(*) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = "Engineering"
SELECT section_name ,  section_description FROM SECTIONS
SELECT section_name ,  section_description FROM SECTIONS
SELECT T1.course_name ,  T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT T1.course_name ,  T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <  2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*)  =  2
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id HAVING count(*)  =  2
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.degree_summary_name FROM Degree_programs AS T1 JOIN Student_enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_programs AS T1 JOIN Student_enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT  T1.student_id ,  T2.first_name ,  T2.middle_name ,  T2.last_name ,  count(*) ,  T2.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T2.student_id ,  count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters EXCEPT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id
SELECT semester_name FROM semesters EXCEPT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT DISTINCT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id JOIN Student_Enrolment AS T3 ON T2.student_id = T3.student_id
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player ORDER BY Best_Finish DESC LIMIT 1
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Height ,  T1.People_ID ,  T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Height  >  200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russian'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id ,  phone_number ,  state FROM votes
SELECT max(area_code) ,  min(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state  =  'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state ,  created FROM votes
SELECT T2.contestant_number ,  T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T2.contestant_number HAVING count(*)  >=  2
SELECT T1.contestant_number ,  T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state  =  'NY' OR state  =  'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN ( SELECT contestant_number FROM votes )
SELECT T2.area_code FROM VOTES AS T1 JOIN AREA_CODE_STATE AS T2 ON T1.state  =  T2.state GROUP BY T2.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created ,  T1.state ,  T1.phone_number FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T2.contestant_name  =  'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state JOIN contestants AS T3 ON T2.contestant_number  =  T3.contestant_number WHERE T3.contestant_name  =  'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state JOIN contestants AS T3 ON T2.contestant_number  =  T3.contestant_number WHERE T3.contestant_name  =  'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear  >  1950
SELECT name FROM country WHERE indepyear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE region  =  'Caribbean'
SELECT sum(surfacearea) FROM country WHERE region  =  'Caribbean'
SELECT Continent FROM country WHERE Code  =  'AIA'
SELECT Continent FROM country WHERE Name  =  "Anguilla"
SELECT district FROM city WHERE name  =  'Kabul'
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Name  =  'Kabul'
SELECT language FROM countrylanguage WHERE countrycode  =  'AW' ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode  =  'ABW' AND isofficial  =  'T' ORDER BY percentage DESC LIMIT 1
SELECT population ,  lifeexpectancy FROM country WHERE name  =  'Brazil'
SELECT Population ,  LifeExpectancy FROM country WHERE Name  =  'Brazil'
SELECT region ,  population FROM country WHERE name  =  'Angola'
SELECT region ,  population FROM country WHERE name  =  'Angola'
SELECT avg(LifeExpectancy) FROM country WHERE region  =  'Central Africa'
SELECT avg(LifeExpectancy) FROM country WHERE region  =  'Central Africa''}
SELECT name FROM country WHERE continent  =  'Asia' AND lifeexpectancy  =  (SELECT min(lifeexpectancy) FROM country WHERE continent  =  'Asia' )
SELECT name FROM country WHERE continent  =  'Asia' AND lifeexpectancy  =  (SELECT min(lifeexpectancy) FROM country WHERE continent  =  'Asia' )
SELECT sum(population) ,  max(gnp) FROM country WHERE continent  =  'Asia'
SELECT max(gnp) ,  count(*) FROM country WHERE continent  =  'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  'Africa' AND GovernmentForm  =  'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent  =  'Africa' AND GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT sum(population) FROM city WHERE district  =  'Gelderland'
SELECT sum(population) FROM city WHERE district  =  'Gelderland'
SELECT avg(gnp) ,  sum(population) FROM country WHERE GovernmentForm  =  'US trust territory'
SELECT avg(gnp) ,  sum(population) FROM country WHERE region  =  'Bermuda'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  'Africa'
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  'Aruba'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.name  =  'Aruba'
SELECT count(*) FROM countrylanguage WHERE isofficial  =  'T' AND countrycode  =  'AF'
SELECT count(*) FROM countrylanguage WHERE isofficial  =  'T' AND countrycode  =  'AFG'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(DISTINCT T2.Language) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE language  =  'English' INTERSECT SELECT countrycode FROM countrylanguage WHERE language  =  'Dutch')
SELECT count(*) FROM countrylanguage WHERE countrycode IN ( SELECT code FROM countrylanguage WHERE language  =  'English' INTERSECT SELECT code FROM countrylanguage WHERE language  =  'Dutch' )
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' AND T2.IsOfficial  =  'T' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French' AND T2.IsOfficial  =  'T'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' AND T2.isofficial  =  'T' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'French' AND T2.isofficial  =  'T'
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'Chinese'
SELECT COUNT(DISTINCT continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'Chinese'
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'English' OR T2.Language  =  'Dutch'
SELECT DISTINCT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'Dutch' OR T2.Language  =  'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'T' AND T2.Language  =  'English' UNION SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'T' AND T2.Language  =  'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'T' AND T2.Language  =  'English' UNION SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'T' AND T2.Language  =  'Dutch'
SELECT language FROM countrylanguage JOIN country ON countrylanguage.countrycode  =  country.code WHERE continent  =  'Asia' ORDER BY percentage DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.region  =  'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.GovernmentForm  =  'Republic' GROUP BY T1.language HAVING count(*)  =  1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.GovernmentForm  =  'Republic' GROUP BY T1.Language HAVING COUNT(*)  =  1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  'English' ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  'English' ORDER BY T1.Population DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE region  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.isofficial  =  'No' AND T2.language  =  'English'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.isofficial  =  'No' AND T2.language  =  'English'
SELECT sum(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(T1.population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language != 'English'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.HeadOfState  =  "Beatrix" AND T1.IsOfficial  =  'T'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.HeadOfState  =  "Beatrix" AND T1.IsOfficial  =  'T'
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.IndepYear  <  1930 AND T1.IsOfficial  =  'T'
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.IndepYear  <  1930 AND T2.IsOfficial  =  'T'
SELECT name FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia') AND continent  =  'Africa'
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia') AND continent  =  'Africa'
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa') AND continent  =  'Asia'
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa') AND continent  =  'Asia'
SELECT Code FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language  =  'English'
SELECT Code FROM country EXCEPT SELECT CountryCode FROM countrylanguage WHERE Language  =  'English'
SELECT countrycode FROM countrylanguage WHERE isofficial  =  'No' AND language != 'English'
SELECT DISTINCT CountryCode FROM countrylanguage WHERE Language != 'English'
SELECT Code FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE Language  =  "English" EXCEPT SELECT Code FROM country WHERE GovernmentForm  =  "Republic"
SELECT Code FROM country WHERE GovernmentForm != "Republic" EXCEPT SELECT countrycode FROM countrylanguage WHERE Language  =  "English"
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Continent  =  'Europe' EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code JOIN countrylanguage AS T3 ON T2.Code  =  T3.CountryCode WHERE T3.IsOfficial  =  'T' AND T3.Language  =  'English'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Continent  =  "Europe" EXCEPT SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code JOIN countrylanguage AS T3 ON T2.Code  =  T3.CountryCode WHERE T3.IsOfficial  =  "Yes" AND T3.Language  =  "English"
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code JOIN countrylanguage AS T3 ON T2.Code  =  T3.CountryCode WHERE T2.Continent  =  'Asia' AND T3.Language  =  'Chinese' AND T3.IsOfficial  =  'T'
SELECT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code JOIN countrylanguage AS T3 ON T2.Code  =  T3.CountryCode WHERE T2.Continent  =  "Asia" AND T3.Language  =  "Chinese" AND T3.IsOfficial  =  'T'
SELECT name ,  IndepYear ,  SurfaceArea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  IndepYear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT Population ,  Name ,  HeadOfState FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name ,  population ,  headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name ,  count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Name HAVING count(*)  >=  3
SELECT T1.Name ,  COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Code HAVING COUNT(*)  >  2
SELECT count(*) ,  district FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT district ,  count(*) FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT governmentform ,  sum(population) FROM country WHERE lifeexpectancy  >  72 GROUP BY governmentform
SELECT governmentform ,  sum(population) FROM country WHERE lifeexpectancy  >  72 GROUP BY governmentform
SELECT avg(lifeexpectancy) ,  sum(population) ,  continent FROM country GROUP BY continent HAVING avg(lifeexpectancy)  <  72
SELECT continent ,  sum(population) ,  avg(lifeexpectancy) FROM country WHERE lifeexpectancy  <  72 GROUP BY continent
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT avg(surfacearea) ,  sum(population) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT avg(surfacearea) ,  sum(population) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name ,  T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode ORDER BY T2.Percentage DESC LIMIT 1
SELECT countrycode ,  language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT sum(percentage) FROM countrylanguage WHERE language  =  'Spanish'
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM countrylanguage GROUP BY countrycode ORDER BY percentage DESC LIMIT 1) AND language  =  'Spanish'
SELECT CountryCode FROM countrylanguage WHERE Language  =  'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language  =  'Spanish' AND IsOfficial  =  'T'
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T2.Name ,  T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T2.Name ,  T1.Orchestra FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*)  >  1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Name HAVING COUNT(*)  >  1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id  =  t2.conductor_id GROUP BY t1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id  =  t2.conductor_id GROUP BY t1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT record_company ,  count(*) FROM orchestra GROUP BY record_company
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id WHERE T1.state_province_county = "North Carolina" EXCEPT SELECT T2.last_name FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id
SELECT T1.transcript_date ,  T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT T1.transcript_date ,  T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name  =  "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id ORDER BY T2.date_first_registered LIMIT 1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name  =  'Graduate' ORDER BY T2.student_enrolment_id ASC LIMIT 1
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id JOIN Addresses AS T3 ON T1.current_address_id  =  T3.address_id WHERE T2.city != T3.city
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id JOIN Addresses AS T3 ON T1.current_address_id  =  T3.address_id WHERE T2.city != T3.city
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 ,  T1.line_3 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(transcript_date) FROM Transcripts
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT other_details FROM Transcripts ORDER BY transcript_date LIMIT 1
SELECT count(*) FROM TRANSCRIPTS
SELECT count(*) FROM Transcripts
SELECT max(transcript_date) FROM Transcripts
SELECT max(transcript_date) FROM Transcripts
SELECT student_course_id ,  count(*) FROM Transcript_Contents GROUP BY student_course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_id ,  T1.student_enrolment_id FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id  =  T2.student_course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.transcript_date ,  T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.transcript_date ,  T1.transcript_id FROM Transcripts AS T1 JOIN Transcript_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Master' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelor'
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'MA' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'BA'
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM Students ORDER BY last_name DESC
SELECT section_description FROM SECTIONS WHERE section_name  =  "H"
SELECT section_description FROM SECTIONS WHERE section_name  =  "h"
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country  =  'Haiti') OR cell_mobile_number  =  '09700166582'
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country  =  'Haiti') OR cell_mobile_number  =  '09700166582'
SELECT title FROM cartoon ORDER BY title
SELECT DISTINCT title FROM cartoon ORDER BY title
SELECT DISTINCT title FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by  =  "Ben Jones" OR directed_by  =  "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by  =  "Ben Jones" OR directed_by  =  "Brandon Vietti"
SELECT country ,  count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country ,  count(*) FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name ,  content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Major_Record_Format FROM orchestra ORDER BY Major_Record_Format ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded  >  2003
SELECT count(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"
SELECT count(*) FROM orchestra WHERE Major_Record_Format  =  "CD" OR Major_Record_Format  =  "DVD"
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*)  >  1
SELECT T2.Year_of_Founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*)  >  1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name ,  grade FROM highschooler
SELECT name ,  grade FROM highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT name FROM Highschooler WHERE grade  =  10
SELECT name FROM Highschooler WHERE grade  =  10
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT grade ,  count(*) FROM highschooler GROUP BY grade
SELECT grade ,  count(*) FROM Highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT T1.student_id ,  T2.friend_id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id
SELECT T1.id ,  count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T2.name ,  count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT T1.name ,  count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  3
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  3
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id  =  T2.id WHERE T1.student_id IN (SELECT id FROM Highschooler WHERE name  =  'Kyle')
SELECT T2.name FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.friend_id = T2.id JOIN Highschooler AS T3 ON T1.student_id = T3.id WHERE T3.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM Friend WHERE student_id IN (SELECT id FROM Highschooler WHERE name  =  'Kyle')
SELECT id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id INTERSECT SELECT T1.id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.student_id
SELECT student_id FROM Friend INTERSECT SELECT student_id FROM Likes
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY citizenship
SELECT citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY citizenship
SELECT T1.Title ,  T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T1.Title ,  T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T1.Sales  >  300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT count(*) FROM Other_available_features
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code  =  T2.feature_type_code WHERE T2.feature_name  =  "AirCon"
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code  =  T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code  =  "House" OR property_type_code  =  "Apartment" AND room_count  >  1
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id INTERSECT SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.liked_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id
SELECT student_id ,  count(*) FROM Likes GROUP BY student_id
SELECT student_id ,  count(*) FROM Likes GROUP BY student_id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id GROUP BY T2.liked_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2 INTERSECT SELECT name FROM Highschooler WHERE grade  >  5
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2 INTERSECT SELECT name FROM highschooler WHERE grade  >  5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2 UNION SELECT professional_id ,  last_name ,  cell_number FROM professionals WHERE state  =  'IN'
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2 UNION SELECT professional_id ,  last_name ,  cell_number FROM professionals WHERE state  =  'IN'
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.cost_of_treatment  >  1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id GROUP BY T1.dog_id HAVING sum(T2.cost_of_treatment)  >  1000
SELECT first_name FROM owners UNION SELECT first_name FROM professionals EXCEPT SELECT name FROM dogs
SELECT first_name FROM owners UNION SELECT first_name FROM professionals EXCEPT SELECT name FROM dogs
SELECT professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T2.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T2.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.first_name ,  T2.role_code FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.first_name ,  T2.role_code FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT t2.breed_name FROM dogs AS t1 JOIN breeds AS t2 ON t1.breed_code  =  t2.breed_code GROUP BY t1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T3.dog_id  =  T1.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T1.cost_of_treatment) LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T2.treatment_type_code ORDER BY sum(T1.cost_of_treatment) LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN sizes AS T3 ON T2.size_code  =  T3.size_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN sizes AS T3 ON T2.size_code  =  T3.size_code
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.name ,  T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN breeds AS T3 ON T1.breed_code  =  T3.breed_code ORDER BY T3.breed_name LIMIT 1
SELECT T1.name ,  T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN breeds AS T3 ON T1.breed_code  =  T3.breed_code GROUP BY T1.breed_code ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  "Virginia"
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id ORDER BY T1.age DESC LIMIT 1
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT date_arrived ,  date_departed FROM Dogs
SELECT date_arrived ,  date_departed FROM dogs
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT COUNT (DISTINCT professional_id) FROM treatments
SELECT count(DISTINCT professional_id) FROM treatments
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs );
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs );
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  1
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  1
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT max(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT charge_type ,  charge_amount FROM CHARGES
SELECT charge_type ,  charge_amount FROM CHARGES
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address ,  home_phone ,  cell_number FROM professionals
SELECT email_address ,  home_phone ,  cell_number FROM professionals
SELECT breed_code ,  size_code FROM dogs
SELECT DISTINCT breed_code ,  size_code FROM dogs
SELECT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code
SELECT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code
