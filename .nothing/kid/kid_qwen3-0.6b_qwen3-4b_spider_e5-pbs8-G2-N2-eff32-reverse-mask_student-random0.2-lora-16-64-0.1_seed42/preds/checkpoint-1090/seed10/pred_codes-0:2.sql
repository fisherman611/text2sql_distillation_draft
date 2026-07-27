SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'French'
SELECT name ,  song_release_year FROM singer ORDER BY age DESC LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  NAME FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  NAME FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(capacity) ,  avg(average) FROM stadium
SELECT avg(capacity) ,  max(capacity) FROM stadium
SELECT name ,  average FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  average FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T1.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) ,  stadium_id FROM concert GROUP BY stadium_id
SELECT T1.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  >  2013 ORDER BY T1.capacity DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age  >  40 INTERSECT SELECT Country FROM singer WHERE Age  <  30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR  =  2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT concert.stadium_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id WHERE T1.year  =  2014)
SELECT T1.concert_name ,  T2.theme ,  count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T2.concert_id
SELECT T1.name ,  T2.theme ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T2.concert_id  =  T3.concert_id GROUP BY T3.concert_id
SELECT T1.name ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T1.name
SELECT T1.name ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T1.name
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T2.concert_id  =  T3.concert_id WHERE T3.year  =  2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T2.concert_id  =  T3.concert_id WHERE T3.year  =  2014
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name ,  T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2015
SELECT T1.name ,  T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  =  2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight  >  10
SELECT count(*) FROM Pets WHERE weight  >  10
SELECT max(weight) FROM Pets
SELECT max(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets)
SELECT max(weight) ,  pettype FROM Pets GROUP BY pettype
SELECT max(weight) ,  pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Age  >  20
SELECT count(*) FROM Has_pet AS T1 JOIN Students AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Age  >  20
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T3.PetID  =  T1.PetID WHERE T2.Sex  =  "F" AND T3.PetType  =  "Dog"
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T3.PetID  =  T1.PetID WHERE T2.Sex  =  'F' AND T3.PetType  =  'Dog'
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog'
SELECT major ,  age FROM Student EXCEPT SELECT T1.major ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.PetID  =  (SELECT PetID FROM Pets WHERE PetType  =  'Cat')
SELECT T1.major FROM Student AS T1 EXCEPT SELECT T2.major FROM Has_Pet AS T2 JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'Cat'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID  =  (SELECT PetID FROM Pets WHERE PetType  =  'Cat')
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'dog' EXCEPT SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.PetType  =  'cat'
SELECT DISTINCT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat'
SELECT pet_type ,  weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pet_type ,  weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid ,  weight FROM Pets WHERE pet_age  >  1
SELECT petid ,  weight FROM Pets WHERE pet_age  >  1
SELECT pet_type ,  avg(pet_age) ,  max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_age ,  pet_type FROM Pets GROUP BY pet_type ORDER BY avg(pet_age) DESC LIMIT 1
SELECT pet_type ,  avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_type ,  avg(weight) FROM Pets GROUP BY pet_type
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid
SELECT DISTINCT T1.Fname ,  T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_age  >  0
SELECT T1.petid FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T2.stuid  =  T3.stuid WHERE T3.lname  =  'Smith'
SELECT T1.petid FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid  =  T2.petid JOIN Student AS T3 ON T2.StuID  =  T3.StuID WHERE T3.LName  =  'Smith'
SELECT count(*) ,  StuID FROM Has_Pet GROUP BY StuID
SELECT StuID ,  count(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.petage  =  3
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pet_age  =  3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT t1.continent ,  t2.continent ,  count(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid  =  t2.continent GROUP BY t1.continent
SELECT t1.continent ,  t2.continent ,  count(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid  =  t2.continent GROUP BY t1.continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.maker ,  count(*) ,  T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.maker
SELECT T1.Maker ,  T2.Model ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Maker
SELECT model FROM car_names WHERE make  =  "Toyota" ORDER BY horsepower LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model  =  T2.MakeId ORDER BY T2.Horsepower LIMIT 1
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.model  =  t2.makeid WHERE t2.Weight  <  (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.makeid WHERE T2.year  =  1970
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id  =  T2.makeid JOIN cars_data AS T3 ON T2.makeid  =  T3.id WHERE T3.year  =  1970
SELECT T1.maker ,  T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid ORDER BY T2.year LIMIT 1
SELECT T1.Maker ,  T2.Year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model  =  T2.MakeId WHERE T1.Make  =  "CARR" ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model  =  T2.MakeId WHERE T2.Year  >  1980
SELECT DISTINCT model FROM cars_data WHERE YEAR  >  1980
SELECT T1.Continent ,  count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.Country GROUP BY T1.Continent
SELECT T1.Continent ,  count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.Country GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T2.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) ,  T2.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T2.Maker
SELECT count(*) ,  T1.Maker ,  T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make  =  "amc hornet sportabout"
SELECT accelerate FROM cars_data WHERE model  =  "acm" AND horsepower  =  322
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_makers WHERE country  =  'USA'
SELECT count(*) FROM car_makers WHERE country  =  'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders  =  4
SELECT avg(miles) FROM cars_data WHERE cylinders  =  4
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT T1.maker ,  T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker
SELECT T1.maker ,  T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.Maker != ""
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.Maker != ''}
SELECT id FROM cars_data WHERE horsepower  >  150
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T1.Continent  =  'Europe' GROUP BY T1.CountryName HAVING COUNT(*)  >=  3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T1.CountryName  =  'Europe' GROUP BY T1.CountryName HAVING COUNT(*)  >=  3
SELECT max(Horsepower) ,  T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.Model WHERE T1.Cylinders  =  3
SELECT max(Horsepower) ,  MAX(Maker) FROM cars_data WHERE Cylinders  =  3
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT t1.model FROM car_names AS t1 JOIN cars_data AS t2 ON t1.makeid  =  t2.makeid ORDER BY t2.mpg DESC LIMIT 1
SELECT avg(horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(edispl) FROM cars_data WHERE model  =  'volvo'
SELECT avg(edispl) FROM cars_data WHERE model  =  'Volvo'
SELECT max(accelerate) ,  cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) FROM cars_data BY cylinders
SELECT t1.maker FROM car_names AS t1 JOIN model_list AS t2 ON t1.model  =  t2.model JOIN car_makers AS t3 ON t2.id  =  t3.id ORDER BY t1.mpg DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders  >  4
SELECT count(*) FROM cars_data WHERE Cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM car_makers WHERE FullName  =  "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.maker  =  "American Motor Company"
SELECT T1.maker ,  T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >  3
SELECT T1.maker ,  T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >  3
SELECT DISTINCT t1.model FROM model_list AS t1 JOIN car_names AS t2 ON t1.model  =  t2.model JOIN cars_data AS t3 ON t2.makeid  =  t3.id WHERE t3.Weight  >  3500 AND t2.maker  =  'General Motors'
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model JOIN car_makers AS T3 ON T2.Maker  =  T3.Id WHERE T3.Maker  =  "General Motors" OR T2.Weight  >  3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight  <  4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight  >  3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT Cylinders FROM cars_data WHERE Accelerate  =  (SELECT min(Accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE accelerate  =  (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country  >  2
SELECT count(*) FROM car_makers WHERE country  >  2
SELECT count(*) FROM cars_data WHERE Cylinders  >  6
SELECT count(*) FROM cars_data WHERE Cylinders  >  6
SELECT model FROM cars_data WHERE cylinders  =  4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders  =  4 GROUP BY model ORDER BY horsepower DESC LIMIT 1
SELECT DISTINCT T1.id ,  T1.maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model  =  T2.makeid WHERE T2.Horsepower  >  (SELECT min(Horsepower) FROM cars_data) AND T2.Cylinders  >  3
SELECT makeid ,  T2.FullName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model  =  T2.MakeId WHERE T2.Horsepower  >  4 AND T2.Cylinders  <  4
SELECT max(miles) FROM cars_data WHERE cylinders  =  8 OR YEAR  <=  1980
SELECT max(mpg) FROM cars_data WHERE cylinders  =  8 OR YEAR  <=  1980
SELECT model FROM car_names WHERE make  =  "Ford Motor Company" AND weight  <  3500
SELECT DISTINCT model FROM cars_data WHERE weight  <  3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE make  =  "Ford"
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING COUNT(*)  >=  2 INTERSECT SELECT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING COUNT(*)  >  3
SELECT T1.id ,  T2.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T2.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >  3
SELECT T1.CountryId ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.Maker  >  3 INTERSECT SELECT T1.CountryId ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.Model  =  'fiat'
SELECT T1.CountryId ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.Maker  >  3 INTERSECT SELECT T1.CountryId ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country WHERE T2.Model  =  'fiat'
SELECT Country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation  =  'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  'USA'
SELECT airportcode ,  airportname FROM airports WHERE city  =  'Anthony'
{"airportcode": "T11210101", "airportname": "ANTONY"}
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Abbreviation FROM airlines WHERE Abbreviation  =  'UAL'
SELECT Abbreviation FROM airlines WHERE Abbreviation  =  'UAL'
SELECT count(*) FROM airlines WHERE Country  =  'USA'
SELECT count(*) FROM airlines WHERE country  =  'USA'
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT city ,  country FROM airports WHERE airportname  =  'Alton'
SELECT airportname FROM airports WHERE airportcode  =  'AKO'
SELECT airportname FROM airports WHERE airportcode  =  'AKO'
SELECT airportname FROM airports WHERE city  =  'Aberdeen'
SELECT airportname FROM airports WHERE city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airline  =  'APG'
SELECT count(*) FROM flights WHERE sourceairport  =  'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.city  =  'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airportname  =  'Aberdeen' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airportname  =  'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ASY' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.uid WHERE T1.abbreviation  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ASY Airport' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airportname  =  'AHD' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.uid WHERE T1.abbreviation  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode WHERE T2.airportname  =  'AHD' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'Aberdeen' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.airline WHERE T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'Aberdeen' INTERSECT SELECT count(*) FROM airlines AS T1 JOIN airports AS T2 ON T1.airline  =  T2.airline WHERE T1.airline  =  'United Airlines'
SELECT T1.city FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport  =  T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) ASC LIMIT 1
{"code": "551"}
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT airline FROM flights GROUP BY airline ORDER BY count(*) DESC LIMIT 1
SELECT Abbreviation ,  Country FROM airlines GROUP BY Abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT Abbreviation FROM airlines WHERE AirportCode  =  (SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) LIMIT 1)
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.sourceairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  "APG" INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  "CVO"
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  "CVO" EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T2.destairport  =  "APG"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  >=  10
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline GROUP BY T1.airline HAVING count(*)  >=  10
SELECT airline FROM flights GROUP BY airline HAVING count(*)  <  200
SELECT airline FROM flights GROUP BY airline HAVING count(*)  <  200
SELECT flightno FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "United Airlines"
SELECT flightno FROM flights AS T1 JOIN airlines AS T2 ON T1.airline  =  T2.uid WHERE T2.airline  =  "United Airlines"
SELECT flightno FROM flights WHERE sourceairport  =  "APG"
SELECT flightno FROM flights WHERE sourceairport  =  'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT flightno FROM flights WHERE destairport  =  'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT flightno FROM flights WHERE sourceairport  =  'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  'Aberdeen'
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport WHERE T1.city  =  'Abberdeen' OR T1.city  =  'Abilene'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Abberdeen' OR T2.city  =  'Abilene'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights) INTERSECT SELECT sourceairport FROM flights
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT city ,  count(*) FROM employee GROUP BY city
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
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) ,  T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id JOIN shop AS T3 ON T1.shop_id  =  T3.shop_id GROUP BY T3.shop_id
SELECT count(*) ,  T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT count(DISTINCT location) FROM shop
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_id ,  document_name ,  document_description FROM Documents
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE '%w%'
{"document_id": "119310431", "template_id": "528439925121344", "document_description": "Robbin CV"}
{"document_id": "119310431", "template_id": "528439925121344", "document_description": "Robbin CV"}
SELECT count(DISTINCT T1.template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_Type_Code WHERE T2.Template_Type_Code  =  'PPT'
SELECT template_id ,  count(*) FROM Documents GROUP BY template_id
SELECT Template_ID ,  count(*) FROM Documents GROUP BY Template_ID
SELECT T1.template_id ,  T2.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id ,  T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*)  >  1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT template_id FROM Templates EXCEPT SELECT t1.template_id FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id  =  t2.template_id
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE template_type_code  =  'PP' OR template_type_code  =  'PPT'
SELECT template_id FROM Templates WHERE template_type_code  =  'PP' OR template_type_code  =  'PPT'
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code  =  'CV'
SELECT count(*) FROM Templates WHERE Template_Type_Code  =  'CV'
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
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Document_Name  =  "Data database"
SELECT T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Document_Name  =  'Data base'
SELECT DISTINCT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  'BK'
SELECT t1.document_name FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id  =  t2.template_id WHERE t2.template_type_code  =  'BK'
SELECT Template_Type_Code ,  count(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code ,  count(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Documents GROUP BY Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_Template_Types EXCEPT SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code  =  T2.template_type_code
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description NOT IN (SELECT T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id)
SELECT Template_Type_Code ,  Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code ,  template_type_description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code  =  "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code  =  'AD'
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code  =  T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code  =  T2.template_type_code JOIN Documents AS T3 ON T2.template_id  =  T3.template_id
SELECT template_id FROM Templates WHERE template_type_code  =  (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  "Presentation")
SELECT template_id FROM Templates WHERE template_type_code  =  (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description  =  'Presentation')
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Summer Show'
SELECT count(*) FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Summer Show'
SELECT * FROM Paragraphs WHERE paragraph_text  =  'Korea'
SELECT * FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT T1.paragraph_id ,  T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Welcome to NY'
SELECT T1.paragraph_id ,  T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id  =  T2.document_id WHERE T2.document_name  =  'Welcome to NY'
SELECT paragraph_text FROM paragraphs WHERE document_id  =  "Customer reviews"
SELECT t1.paragraph_text FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id  =  t2.document_id WHERE t1.document_name  =  'Customer reviews'
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY count(*)
SELECT document_id ,  document_name ,  count(*) FROM Documents GROUP BY document_id
{"ids": ["1", "2"], "names": ["Document 1", "Document 2"], "paragraphs": 2}
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT T1.document_id ,  T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
{"id": "2514310431", "name": "Sample Document"}
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
{"id": "1"}
SELECT document_id FROM paragraphs WHERE paragraph_id  =  1 OR paragraph_id  =  2
SELECT document_id FROM paragraphs WHERE count(*)  >=  1 AND count(*)  <=  2
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' OR paragraph_text  =  'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' OR paragraph_text  =  'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT name FROM teacher ORDER BY age
SELECT name FROM teacher ORDER BY age ASC
SELECT age ,  hometown FROM teacher
SELECT age ,  hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age  =  32 OR age  =  33
SELECT name FROM teacher WHERE age  =  32 OR age  =  33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT hometown FROM teacher ORDER BY age LIMIT 1
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING count(*)  >=  2
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T1.Name
SELECT T1.Name ,  T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T1.Name
SELECT T2.name FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id  =  T2.course_id JOIN teacher AS T3 ON T2.teacher_id  =  T3.teacher_id WHERE T1.course  =  'Math'
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id  =  T2.teacher_id JOIN course AS T3 ON T3.course_id  =  T1.course_id WHERE T3.course  =  'Math'
SELECT T1.name ,  count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.name
SELECT T1.name ,  count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id  =  T2.teacher_id GROUP BY T1.teacher_id
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
SELECT Open_Year ,  Num_of_Staff FROM museum WHERE Name  =  'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T1.id ,  T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id HAVING count(*)  >  1
SELECT T1.id ,  T1.name ,  T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id ORDER BY T2.total_spent DESC LIMIT 1
{"id": "3519315431", "name": "Tombos Museum"}
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name ,  T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Ticket) ,  max(Num_of_Ticket) FROM visit
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id WHERE T1.level_of_membership  =  1
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
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
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
SELECT first_name ,  country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name  =  'WTA Championships' INTERSECT SELECT winner_id FROM matches WHERE tourney_name  =  'Australian Open'
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY winner_age DESC LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'left' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'left' ORDER BY birth_date
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name ,  T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id JOIN rankings AS T3 ON T1.player_id  =  T3.player_id WHERE T3.ranking_points  =  (SELECT max(ranking_points) FROM rankings WHERE tourney_name  =  'Australian Open')
SELECT t1.first_name ,  t1.last_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id  =  t2.winner_id JOIN rankings AS t3 ON t1.player_id  =  t3.player_id WHERE t2.tourney_name  =  'Australian Open' ORDER BY t3.ranking_points DESC LIMIT 1
SELECT loser_name ,  winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.winner_name ,  T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(rank) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT T1.first_name ,  avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT sum(rank) ,  T1.first_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.first_name
SELECT T1.first_name ,  sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code ,  count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT sum(tour) ,  ranking FROM rankings GROUP BY ranking_date
SELECT ranking_points ,  ranking FROM rankings GROUP BY ranking_date
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_age LIMIT 3
SELECT winner_name ,  winner_rank FROM matches ORDER BY winner_rank DESC LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id WHERE T1.tourney_name  =  "WTA Championships" INTERSECT SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id WHERE T1.tourney_name  =  "WTA Championships" AND T2.hand  =  "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT hand ,  count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  result FROM battle
SELECT max(killed) ,  min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T1.note FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id  =  T2.id WHERE T2.tonnage  =  't'
SELECT name ,  result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.id HAVING sum(T2.killed)  >  10
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.tonnage = 225)
SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'HMS Atalanta'
SELECT name ,  result ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id  =  T2.id WHERE T1.lost_in_battle  =  'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM addresses WHERE line_1  =  '1' OR line_2  =  '2'
SELECT line_1 ,  line_2 FROM addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_id  =  'math'
SELECT course_description FROM Courses WHERE course_type  =  'Math'
SELECT zip_postcode FROM addresses WHERE city  =  'Port Chelsea'
SELECT zip_postcode FROM addresses WHERE city  =  'Port Chelsea'
SELECT T1.department_name ,  T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name ,  T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
