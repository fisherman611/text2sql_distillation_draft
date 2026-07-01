SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT count(*) ,  country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(capacity) ,  avg(capacity) FROM stadium
SELECT avg(capacity) ,  max(capacity) FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average(high) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T2.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >=  2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  >  2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014
SELECT T2.theme ,  count(*) ,  T1.cconcert_name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.cconcert_name
SELECT T2.theme ,  count(*) ,  T1.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.name
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T1.singer_id
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.songer_id  =  T2.songer_id GROUP BY T1.songer_id
SELECT T3.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID  =  T2.concert_ID JOIN singer AS T3 ON T2.Singer_ID  =  T3.Singer_ID WHERE T1.year  =  2014
SELECT T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.song_id  =  T2.song_id JOIN concert AS T3 ON T3.concert_id  =  T2.concert_id WHERE T3.year  =  2014
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name ,  country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2015
SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014 INTERSECT SELECT T1.name ,  T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.capacity  =  (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight  >  10
SELECT count(*) FROM pets WHERE weight  >  10
SELECT weight FROM pets WHERE pettype  =  'dog' AND age  =  (SELECT min(age) FROM pets WHERE pettype  =  'dog' )
SELECT min(weight) FROM pets WHERE pettype  =  'dog'
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT max(weight) ,  pet_type FROM pets GROUP BY pet_type
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T2.stuid  =  T3.stuid WHERE T3.age  >  20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T2.stuid  =  T3.stuid WHERE T3.age  >  20
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T3.stuid  =  T2.stuid WHERE T3.sex  =  "F" AND T1.pettype  =  "dog"
SELECT count(*) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid  =  T2.petid JOIN student AS T3 ON T3.stuid  =  T2.stuid WHERE T3.sex  =  'F' AND T1.pettype  =  "dog"
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT pettype) FROM pets
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pettype  =  'Cat' OR T3.pettype  =  'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pettype  =  'Cat' OR T3.pettype  =  'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pettype  =  'Cat' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pettype  =  'Dog'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pettype  =  "Cat" INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pettype  =  "Dogs"
SELECT major ,  age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID  =  "Cat")
SELECT major ,  age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID  =  "Cat")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype  =  "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pettype  =  "Cat"
SELECT fname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID  =  "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID  =  "cat")
SELECT fname FROM student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID  =  "dog" EXCEPT SELECT StuID FROM Has_Pet WHERE PetID  =  "cat")
SELECT pet_type ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pettype ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT pet_type ,  avg(age) ,  max(age) FROM pets GROUP BY pet_type
SELECT pet_type ,  avg(age) ,  max(age) FROM pets GROUP BY pet_type
SELECT pet_type ,  avg(weight) FROM pets GROUP BY pet_type
SELECT pet_type ,  avg(weight) FROM pets GROUP BY pet_type
SELECT DISTINCT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_type  =  'animal'
SELECT DISTINCT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_type  =  'animal'
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.stuid  =  T2.stuid WHERE T2.lname  =  'Smith'
SELECT petid FROM haspet AS T1 JOIN student AS T2 ON T1.stuid  =  T2.stuid WHERE T2.lname  =  'Smith'
SELECT count(*) ,  StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) ,  StuID FROM Has_Pet GROUP BY StuID
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID GROUP BY T2.StuID HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID GROUP BY T2.StuID HAVING count(*)  >  1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_type  =  'Cat' AND T1.age  =  3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_type  =  'Cat' AND T1.age  =  3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(DISTINCT continent) FROM continents
SELECT T1.Countid ,  T1.CountryName ,  COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Countid  =  T2.Countid GROUP BY T1.Countid
SELECT T1.Countid ,  T1.CountryName ,  COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.Countid  =  T2.Countid GROUP BY T1.Countid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.Maker ,  T1.Name ,  COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T2.Maker
SELECT T1.Maker ,  count(*) ,  T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T2.id
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower LIMIT 1
SELECT Model FROM cars_data WHERE Weight  <  (SELECT avg(Weight) FROM cars_data)
SELECT Model FROM cars_data WHERE Weight  <  (SELECT avg(Weight) FROM cars_data)
SELECT T1.Fname ,  T1.Lname FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id WHERE T2.year  =  1970
SELECT T1.Name ,  T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T2.Maker HAVING count(*)  >  3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.Maker  =  'General Motors' OR T1.weight  >  3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.id JOIN cars_data AS T3 ON T3.id  =  T2.makeid WHERE T3.weight  >  3500 OR T2.Maker  =  "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight  <  4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight  >  3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE model  =  "volvo"
SELECT min(Cylinders) FROM cars_data WHERE model  =  "volvo"
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*)  >  2
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*)  >  2
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT model FROM cars_data WHERE cylinders  =  4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower DESC LIMIT 4
SELECT makeid ,  make FROM car_makers WHERE horsepower  >  (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT T1.id ,  T1.name FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id WHERE T2.cylinders  >  3)
SELECT makeid ,  model FROM cars_data WHERE cylinder  <  4 AND horsepower  <  (SELECT min(horsepower) FROM cars_data)
SELECT max(MPG) FROM cars_data WHERE cylinders  =  8 OR YEAR  <  1980
SELECT max(MPG) FROM cars_data WHERE Cylinders  =  8 OR YEAR  <  1980
SELECT model FROM cars_data WHERE weight  <  3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.Maker  =  'Ford Motor Company'
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id JOIN cars_data AS T3 ON T3.id  =  T2.model WHERE T3.weight  <  3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker  =  T2.id WHERE T2.Maker  =  "Ford Motor Company"
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T1.id ,  T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T1.id HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T1.id HAVING count(*)  >  3
SELECT T1.id ,  T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T1.Maker HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id GROUP BY T1.Maker HAVING count(*)  >  3
SELECT T1.Country ,  T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryId HAVING COUNT(*)  >  3 UNION SELECT T1.Country ,  T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId  =  T2.Maker WHERE T2.Model  =  'fiat'
SELECT T1.Country ,  count(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryId HAVING count(*)  >  3 UNION SELECT T1.Country ,  T1.CountryName FROM countries AS T1 JOIN model_list AS T2 ON T1.CountryId  =  T2.Maker WHERE T2.Model  =  'fiat'
SELECT Country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  "Jetblue Airways"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  'United States'
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
SELECT count(*) FROM airlines WHERE Country  =  'USA'
SELECT count(*) FROM airlines WHERE Country  =  "USA"
SELECT City ,  Country FROM airports WHERE AirportName  =  "Alton"
SELECT City ,  Country FROM airports WHERE AirportName  =  "Alton"
SELECT AirportName FROM airports WHERE AirportCode  =  "AKO"
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id WHERE T2.year  =  1970
SELECT T1.Maker ,  T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.ID  =  T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT T1.Maker ,  T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id  =  T2.MakeId ORDER BY T2.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId  =  T2.Model WHERE T1.Year  >  1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Model WHERE T1.Year  >  1980
SELECT T1.Countid ,  COUNT(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.Countryid GROUP BY T1.Countid
SELECT T1.Countinent ,  COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Countinent  =  T2.Country GROUP BY T1.Countinent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) ,  T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T1.Maker
SELECT count(*) ,  T1.id ,  T1.fullname FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id  =  T2.id JOIN car_names AS T3 ON T3.MakeId  =  T2.Id WHERE T3.Sporting  =  "Amc Hornet"
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id  =  T2.makeid WHERE T2.Sporting  =  "Amc"
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country  =  T2.countryid WHERE T2.countryname  =  "France"
SELECT count(*) FROM car_makers WHERE country  =  'USA'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country  =  T2.countryid WHERE T2.countryname  =  "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT min(weight) FROM cars_data WHERE YEAR  =  1974 AND cylinders  =  8
SELECT min(weight) FROM cars_data WHERE YEAR  =  1974 AND cylinders  =  8
SELECT T1.Maker ,  T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker
SELECT T1.Maker ,  T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country
SELECT count(*) FROM cars_data WHERE Horsepower  >  150
SELECT count(*) FROM cars_data WHERE Horsepower  >  150
SELECT avg(weight) ,  YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) ,  avg(YEAR) FROM cars_data
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.countryname HAVING count(*)  >=  3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.Country GROUP BY T1.CountryName HAVING COUNT(*)  >=  3
SELECT max(T2.Horsepower) ,  T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id  =  T2.id WHERE T2.cylinders  =  3
SELECT max(Horsepower) ,  T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T1.Cylinders  =  3
SELECT model FROM cars_data GROUP BY model ORDER BY MPG DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(T1.EDISPL) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T2.Model  =  "volvo"
SELECT avg(Edispl) FROM cars_data WHERE YEAR  =  2004
SELECT max(accelerate) ,  cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) ,  cylinders FROM cars_data GROUP BY cylinders
SELECT model FROM car_makers GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.Maker  =  "American Motor Company"
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id WHERE T2.Maker  =  "American Motor Company"
SELECT T1.Maker ,  T1.Name ,  T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.Maker GROUP BY T1.id HAVING count(*)  >  3
SELECT AirportName FROM airports WHERE AirportCode  =  "AKO"
SELECT AirportName FROM airports WHERE City  =  "Aberdeen"
SELECT AirportName FROM airports WHERE City  =  "Aberdeen"
SELECT count(*) FROM flights WHERE SOURCE Airport  =  "APG"
SELECT count(*) FROM flights WHERE SOURCE Airport  =  "APG"
SELECT count(*) FROM flights WHERE DestAirport  =  "ATO"
SELECT count(*) FROM flights WHERE SourceAirport  =  "ATO"
SELECT count(*) FROM flights WHERE sourceairport  =  'City Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport  =  "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport WHERE T1.city  =  "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport WHERE T1.city  =  "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport  =  'Aberdeen' AND destinationairport  =  'Ashley'
SELECT count(*) FROM flights WHERE sourceairport  =  "Aberdeen" AND destinationairport  =  "Ashley"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  "JetBlue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  'United Airlines' AND T2.destairport  =  'ASY'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  "United Airlines" AND T2.city  =  "ASY"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  "United Airlines" AND T2.sourceairport  =  "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  "United Airlines" AND T2.sourceairport  =  "AHD"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  'United Airlines' AND T2.destairport  =  'City 'Aberdeen'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.airline WHERE T1.airline  =  "United Airlines" AND T2.sourceairport  =  "Aberdeen"
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T2.SourceAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY COUNT(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport GROUP BY T2.DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.sourceairport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.sourceairport  =  "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.destinationairport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.DestAirport WHERE T2.AirportName  =  "AHD"
SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport WHERE T1.AirportName  =  "APG" INTERSECT SELECT T2.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.Source Airport WHERE T1.AirportName  =  "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.SourceAirport WHERE T2.Dest Airport  =  'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.SourceAirport WHERE T2.Dest Airport  =  'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.sourceairport  =  'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.sourceairport  =  'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.sourceairport  =  "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T2.sourceairport  =  "APG"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.uid HAVING count(*)  >=  10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.uid HAVING count(*)  >=  10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.uid HAVING count(*)  <  200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport GROUP BY T1.uid HAVING count(*)  <  200
SELECT FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.sourceairport WHERE T1.airline  =  "United Airlines"
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.Airline  =  "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport  =  "APG"
SELECT FlightNo FROM flights WHERE SOURCE Airport  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT FlightNo FROM flights WHERE DestAirport  =  "APG"
SELECT FlightNo FROM flights WHERE SourceAirport  =  "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport  =  "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  "Aberdeen" OR T2.city  =  "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport WHERE T1.city  =  "Aberdeen" OR T1.city  =  "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM flights) OR AirportCode NOT IN (SELECT SourceAirport FROM flights)
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
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name ,  count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id
SELECT count(*) ,  T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id
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
SELECT document_name ,  template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_id ,  template_id ,  document_description FROM Documents WHERE document_name  =  "Robbin CV"
SELECT document_id ,  template_id ,  document_description FROM Documents WHERE document_name  =  "Robbin CV"
SELECT count(DISTINCT t1.template_id) FROM documents AS t1 JOIN templates AS t2 ON t1.template_id  =  t2.template_id
SELECT count(DISTINCT template_id) FROM documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  "PPT"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  "PPT"
SELECT Template_ID ,  count(*) FROM Documents GROUP BY Template_ID
SELECT count(*) ,  T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id
SELECT T1.template_id ,  T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID  =  T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id ,  T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID  =  T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id HAVING count(*)  >  1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id HAVING count(*)  >  1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT Template_ID FROM Templates EXCEPT SELECT Template_ID FROM Documents
SELECT count(*) FROMTemplates
SELECT count(*) FROMTemplates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM templates
SELECT DISTINCT template_type_code FROM ref_template_types
SELECT Template_ID FROM Templates WHERE Template_Type_Code  =  "PP" OR Template_Type_Code  =  "PPT"
SELECT Template_ID FROM Templates WHERE Template_Type_Code  =  "PP" OR Template_Type_Code  =  "PPT"
SELECT count(*) FROM Ref_Template_Types WHERE Template_Type_Code  =  "CV"
SELECT count(*) FROM_templates WHERE template_type_code  =  "CV"
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT version_number ,  template_type_code FROM Templates WHERE version_number  >  5
SELECT Template_Type_Code ,  COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code ,  COUNT(*) FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*)  <  3
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*)  <  3
SELECT min(Version_Number) ,  min(Template_Type_Code) FROM Templates
SELECT min(Version_Number) ,  min(Template_Type_Code) FROMTemplates
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID WHERE T2.document_name  =  "Data base"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID WHERE T2.document_name  =  "Data base"
SELECT document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  "BK"
SELECT document_name FROM documents WHERE template_id  =  "BK"
SELECT T1.Template_Type_Code ,  count(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT T1.Template_Type_Code ,  COUNT(*) FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID GROUP BY T1.Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types EXCEPT SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID
SELECT Template_Type_Code FROM Ref_Template_Types EXCEPT SELECT Template_ID FROM Documents
SELECT template_type_code ,  template_type_description FROM Ref_Template_Types
SELECT Template_Type_Code ,  Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code  =  "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code  =  "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description  =  "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description  =  "Book"
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code  =  T2.Template_Type_Code
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.Template_Type_Code  =  T2.Template_ID
SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code  =  T2.Template_Type_Code WHERE T2.Template_Type_Description  =  "Presentation"
SELECT T1.template_id FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code  =  T2.Template_Type_Code WHERE T1.Template_Type_Description  =  "Presentation"
SELECT count(*) FROM PARAGRAPHs
SELECT count(*) FROM PARAGRAMS
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID  =  T2.Document_ID WHERE T1.Document_Name  =  'Summer Show'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID  =  T2.Document_ID WHERE T1.Document_Name  =  "Summer Show"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text  =  "Korea"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT T2.para_id ,  T2.para_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Welcome to NY'
SELECT T1.paragraph_id ,  T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Welcome to NY'
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Customer reviews'
SELECT document_id ,  count(*) FROM Paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT T1.document_id ,  T1.document_name ,  count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT T1.document_id ,  T1.document_name ,  count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT T1.document_id ,  T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id ,  T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  1 AND count(*)  <=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Brazil' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text  =  'Ireland'
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T2.para_text  =  'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T2.para_text  =  'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age ,  Hometown FROM teacher
SELECT Age ,  Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
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
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Staring_Date FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name ,  T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID  =  T3.Course_ID ORDER BY T2.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID  =  T2.Teacher_ID WHERE T1.Course  =  "Math"
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID  =  T2.Teacher_ID WHERE T1.Course  =  "Math"
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name ,  COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*)  >=  2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT Name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership  <=  4
SELECT name ,  level_of_membership FROM visitor WHERE level_of_membership  >  4 ORDER BY age DESC
SELECT museum_id ,  name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year  <  2009
SELECT open_year ,  num_of_staff FROM museum WHERE name  =  'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T1.id ,  T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id HAVING count(*)  >  1
SELECT T1.id ,  T1.name ,  T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID ,  T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Ticket) ,  max(Num_of_Ticket) FROM visit
SELECT sum(T1.total_expense) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id WHERE T2.level_of_membership  =  1
SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID  =  T2.id JOIN museum AS T3 ON T1.Museum_ID  =  T3.Museum_ID WHERE T3.Opening_Year  <  2009 INTERSECT SELECT T2.Name FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID  =  T2.id JOIN museum AS T3 ON T1.Museum_ID  =  T3.Museum_ID WHERE T3.Opening_Year  >  2011
SELECT count(*) FROM visitor WHERE id NOT IN ( SELECT visitor_id FROM visit WHERE open_year  >  2010 )
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT sum(match_num) FROM matches
SELECT count(*) FROM matches
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches GROUP BY loser_rank ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT T2.tourney_name FROM matches AS T1 JOIN tournaments AS T2 ON T1.tourney_id  =  T2.tourney_id GROUP BY T1.tourney_id HAVING count(*)  >  10
SELECT T2.first_name ,  T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T2.first_name ,  T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2013 INTERSECT SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'left' ORDER BY birth_date
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.winery_NAME ,  T2.winery_RANK FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  T2.winery_rank ,  T2.winery_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winery_NAME FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winery_ID JOIN rankings AS T3 ON T2.rank  =  T3.rank WHERE T3.tours  =  'Australian Open' ORDER BY T2.winery_rank_points DESC LIMIT 1
SELECT T1.winery_NAME FROM players AS T1 JOIN MATCHs AS T2 ON T1.player_id  =  T2.winner_id JOIN rankings AS T3 ON T2.loser_rank  =  T3.loser_rank_points WHERE T3.tourney_name  =  'Australian Open' ORDER BY T3.winery_NAME DESC LIMIT 1
SELECT T2.first_name ,  T2.last_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT T2.winner_name ,  T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.year DESC LIMIT 1
SELECT avg(T1.rank) ,  T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name ,  avg(T2.rank) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT sum(T1.ranking_points) ,  T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id
SELECT T1.first_name ,  sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code ,  count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT ranking ,  count(*) FROM rankings GROUP BY ranking_date
SELECT ranking ,  sum(tours) FROM rankings GROUP BY ranking_date
SELECT count(*) ,  T1.year FROM matches AS T1 JOIN rankings AS T2 ON T1.rankings  =  T2.player_id GROUP BY T1.year
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT T2.winery_NAME ,  T2.winery_RANK FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winery_NAME DESC LIMIT 3
SELECT T2.winery_NAME ,  T2.winery_RANK FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winery_NAME DESC LIMIT 3
SELECT count(DISTINCT T2.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = "WTA Championships" AND T2.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand  =  'left' AND T2.tourney_name = "WTA Championships"
SELECT T2.first_name ,  T2.country_code ,  T2.birth_date FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.winning_rank_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  RESULT FROM battle
SELECT max(deaths) ,  min(deaths) FROM death
SELECT avg(injured) FROM death
SELECT T1.id ,  T1.injured FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id  =  T2.id WHERE T2.tonnage  =  't'
SELECT name ,  result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT id ,  name FROM battle EXCEPT SELECT T1.id ,  T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.ship_type  =  'Brig'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2 killed)  >  10
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name  =  "Sky Radio"
SELECT count(*) FROM TV_channel WHERE LANGUAGE  =  "english"
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE  =  "english"
SELECT LANGUAGE ,  COUNT(*) FROM TV_channel GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1
SELECT LANGUAGE ,  COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE ORDER BY count(*) ASC LIMIT 1
SELECT LANGUAGE ,  COUNT(*) FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT count(*) ,  language FROM TV_channel GROUP BY language
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.title  =  "The Rise of the Blue Beetle"
SELECT T1.series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.title  =  "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(Share) ,  min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT weekly_rank FROM TV_series WHERE episode  =  "A Love of a Lifetime"
SELECT T1.Channel FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.Channel WHERE T2.Episode  =  "A Love of a Lifetime"
SELECT T1.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.episode  =  "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT directed_by ,  count(*) FROM Cartoon GROUP BY directed_by
SELECT directed_by ,  count(*) FROM Cartoon GROUP BY directed_by
SELECT production_code ,  channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code ,  channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  'Yes'
SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  'Yes'
SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.written_by  =  "Todd Casey"
SELECT T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.written_by  =  "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Todd Casey"
SELECT country FROM TV_channel EXCEPT SELECT T1.country FROM TV_channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Todd Casey"
SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones" INTERSECT SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Michael Chang"
SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones" INTERSECT SELECT T1.series_name ,  T1.country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Michael Chang"
SELECT pixel_aspect_ratio_par ,  country FROM TV_CHANNEL WHERE language != 'english'
SELECT pixel_aspect_ratio_par ,  country FROM TV_CHANNEL WHERE language != 'english'
SELECT id FROM TV_channel WHERE country  >  2
SELECT id FROM TV_channel GROUP BY id HAVING count(*)  >  2
SELECT id FROM channel EXCEPT SELECT channel FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT id FROM channel EXCEPT SELECT channel FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT package_option FROM TV_channel EXCEPT SELECT T1 package_option FROM TV_channel WHERE T1.channel IN (SELECT channel FROM Cartoon WHERE T2.directed_by  =  "Ben Jones")
SELECT DISTINCT package_option FROM TV_CHANNEL EXCEPT SELECT DISTINCT T1 package_option FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  "Ben Jones"
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT lost_in_battle FROM ship WHERE tonnage  =  225 )
SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.name  =  'HMS Atalanta'
SELECT name ,  RESULT ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT lost_in_battle FROM ship WHERE LOCATION  =  'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1  =  "1" AND line_2  =  "2"
SELECT line_1 ,  line_2 FROM Addresses ORDER BY line_1
SELECT count(*) FROM COURSES
SELECT count(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name  =  "Math"
SELECT course_description FROM COURSES WHERE course_name  =  "Math"
SELECT zip_postcode FROM addresses WHERE city  =  "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city  =  "Port Chelsea"
SELECT T2.department_name ,  T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY sum(T1.degrees) DESC LIMIT 1
SELECT T2.department_name ,  T1.department_id FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY sum(T1.degrees) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_program_id) FROM degree_programs
SELECT sum(T1.degrees) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  "Engineering"
SELECT count(DISTINCT T1.degrees) FROM degree_programs AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  "Engineering"
SELECT section_name ,  section_description FROM SECTION
SELECT section_name ,  section_description FROM SECTION
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <  2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.semester_name ,  T1.semester_id FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name ,  T1.student_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T1.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name  =  "2") AND T1.semester_id IN (SELECT semester_id FROM Semesters WHERE semester_name  =  "1")
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name ,  T1.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  "2" AND T1.semester_id IN (SELECT semester_id FROM semesters WHERE semester_name  =  "Spring")
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  "Bachelor"
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  "Bachelors"
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_summary_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T2.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.program ,  T1.course_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.course_program_id  =  T2.course_program_id GROUP BY T1.program ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T2.first_name ,  T2.middle_name ,  count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name ,  T2.middle_name ,  T2.last_name ,  T1.student_id ,  count(*) FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id WHERE T1.state_province_county  =  "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id  =  T2.address_id
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
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
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings ASC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Height DESC LIMIT 1
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
SELECT Name FROM People WHERE Nationality != "Russia"
SELECT Name FROM People WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id ,  phone_number ,  state FROM VOTES
SELECT max(area_code) ,  min(area_code) FROM area_code_state
SELECT created FROM votes WHERE state  =  'CA' ORDER BY created DESC LIMIT 1
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state ,  created FROM VOTES
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number HAVING count(*)  >=  2
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state  =  T2.state WHERE T2.state  =  'NY' OR T2.state  =  'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created ,  T1.state ,  T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T2.comcontestant_name  =  'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state WHERE T2.contestant_number  =  'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state WHERE T2.contestant_number  =  'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear  >  1950
SELECT Name FROM country WHERE IndepYear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"
SELECT count(*) FROM country WHERE GovernmentForm  =  "Republic"
SELECT sum(surfacearea) FROM country WHERE region  =  'Caribbean'
SELECT sum(t1.surfacearea) FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.countrycode WHERE t2.district  =  "Carribean"
SELECT Continent FROM country WHERE Name  =  "Anguilla"
SELECT T1continent FROM country WHERE T1.name  =  "Anguilla"
SELECT DISTINCT region FROM city WHERE name  =  "Kabul"
SELECT region FROM city WHERE name  =  "Kabul"
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.countrycode  =  'Aruba' GROUP BY T1.language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode  =  'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT population ,  lifeexpectancy FROM country WHERE countrycode  =  'Brazil'
SELECT population ,  lifeexpectancy FROM country WHERE countrycode  =  'Brazil'
SELECT T1.District ,  T1.population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  " Angola"
SELECT T1.District ,  T1.population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  " Angola"
SELECT avg(lifeexpectancy) FROM country WHERE region  =  'Central Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  'Central Africa'
SELECT name FROM country WHERE continent  =  'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent  =  'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(Population) ,  max(GNP) FROM country WHERE Continent  =  "Asia"
SELECT max(gnp) ,  count(*) FROM country WHERE continent  =  'Asia'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t1.name  =  'African' AND t2.isofficial  =  'R'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.code WHERE t2.countrycode  =  'Africa' AND t1.isofficial  =  'R'
SELECT sum(SurfaceArea) FROM country WHERE Continent  =  "Asia" OR Continent  =  "Europe"
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT count(*) FROM city WHERE district  =  "Gelderland"
SELECT sum(Population) FROM city WHERE District  =  "Gelderland"
SELECT avg(gnp) ,  sum(population) FROM country WHERE governmentform  =  'United States'
SELECT avg(gnp) ,  sum(population) FROM country WHERE continent  =  'United States'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT gnp) FROM country WHERE continent  =  'Africa'
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  'Africa'
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code JOIN countrylanguage AS T3 ON T2.Code  =  T3.CountryCode WHERE T1.Name  =  "Aruba"
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Name  =  "Aruba"
SELECT count(*) FROM countrylanguage WHERE countrycode  =  'Afghanistan' AND isofficial  =  'Yes'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.name  =  "Afghanistan"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1 Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1 Continent ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language  =  "english" INTERSECT SELECT count(*) FROM countrylanguage WHERE language  =  "dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  "english" INTERSECT SELECT count(*) FROM countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  "dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'French'
SELECT count(DISTINCT T1.clant) FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.countrycode WHERE T3.language  =  "Chinese"
SELECT count(DISTINCT t1.clont) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  "Chinese"
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'english' OR T2.language  =  'dutch'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'Dutch' OR T2.language  =  'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  'English' OR T2.IsOfficial  =  'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.IsOfficial  =  "English" OR T2.IsOfficial  =  "Dutch"
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1continent  =  'Asia' GROUP BY T2.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.isofficial  =  'A' GROUP BY T1.language ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.isofficial  =  'Y' AND T2.region  =  'R'
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.governor  =  'United States' INTERSECT SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.governor  =  'Republic'
SELECT name FROM city ORDER BY population DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code JOIN countrylanguage AS t3 ON t2.code  =  t3.countrycode WHERE t3.language  =  "english" GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.isofficial  =  'No'
SELECT avg(t1.lifeexpectancy) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.isofficial  =  'No'
SELECT sum(t2.lifespan) FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.countrycode WHERE t1.language != 'english'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage)
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.headofstate  =  "Beatrix"
SELECT T1.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.name  =  "Beatrix"
SELECT sum(t1.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code WHERE t2.founded  <  1930
SELECT count(DISTINCT T1.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.indepyear  <  1930
SELECT name FROM country WHERE surfacearea  >  (SELECT min(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE population  <  (SELECT max(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Africa')
SELECT name FROM country WHERE population  >  (SELECT min(population) FROM country WHERE continent  =  'Africa')
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language  =  "english"
SELECT countrycode FROM country EXCEPT SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  "english"
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language !=  'english'
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language != 'english'
SELECT code FROM country WHERE gnp != 'Republic' AND language != 'english'
SELECT code FROM country EXCEPT SELECT code FROM country WHERE governmentform  =  'Republic' AND language  =  'english'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.countrycode WHERE T2.isofficial  =  'No' AND T3.language  =  'english'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.countrycode WHERE T2.continent  =  'Europe' AND T3.language != 'English'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.countrycode WHERE T2.isofficial  =  'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code JOIN countrylanguage AS T3 ON T2.code  =  T3.countrycode WHERE T2.isofficial  =  'Yes' AND T2.region  =  'Asia'
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population LIMIT 1
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population LIMIT 1
SELECT Population ,  Name ,  Leader FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name ,  population ,  headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T1.Name ,  COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1.CountryCode HAVING COUNT(*)  >=  3
SELECT T1.Name ,  COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode HAVING COUNT(*)  >  2
SELECT count(*) ,  district FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) ,  district FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT sum(t1.population) ,  t2.form FROM city AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code GROUP BY t2.form HAVING avg(t1.lifeexpectancy)  >  72
SELECT sum(Population) ,  governmentform FROM country GROUP BY governmentform HAVING avg(lifeexpectancy)  >  72
SELECT avg(T1.LifeExpectancy) ,  sum(T1.Population) ,  T1 Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T1 Continent HAVING avg(T1.LifeExpectancy)  <  72
SELECT sum(population) ,  avg(lifeexpectancy) ,  continent FROM country WHERE avg(lifeexpectancy)  <  72 GROUP BY continent
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT LANGUAGE FROM countrylanguage GROUP BY LANGUAGE ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.language ,  T1.countrycode ,  max(T2.people) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code GROUP BY T1.countrycode
SELECT T1.code ,  T2.language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language  =  "Spanish" ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language  =  "Spanish"
SELECT code2 FROM countrylanguage WHERE language  =  "Spanish" GROUP BY code2 ORDER BY count(*) DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language  =  "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(attendance) FROM show
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT T1.name ,  T2.organchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id  =  T2.conductor_id
SELECT T1.Name ,  T2 Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1 Conductor_ID  =  T2 Conductor_ID GROUP BY T1 Conductor_ID HAVING count(*)  >  1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id  =  T2.conductor_id GROUP BY T1.name HAVING count(*)  >  1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id  =  T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id  =  T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id  =  T2.conductor_id WHERE T2.year_of_founded  >  2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id  =  T2.conductor_id WHERE T2.year_of_founded  >  2008
SELECT record_company ,  count(*) FROM orchestra GROUP BY record_company
SELECT record_company ,  count(*) FROM orchestra GROUP BY record_company
SELECT T2.last_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id WHERE T1.state_province_county  =  "North Carolina" EXCEPT SELECT T2.last_name FROM addresses AS T1 JOIN student_enrolment AS T2 ON T1.address_id  =  T2.address_id JOIN degree_programs AS T3 ON T2.student_id  =  T3.student_id
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT T1.transcript_date ,  T1.course_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.course_id HAVING count(*)  >=  2
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered DESC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id WHERE T2.line_1 != T1.current_address_id
SELECT first_name FROM students WHERE permanent_address_id != (SELECT permanent_address_id FROM addresses)
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(tract_date) FROM TRANSACTIONS
SELECT avg(transcript_date) FROM TRANSACTIONS
SELECT transcript_date ,  other_details FROM TRANSCRIPTS ORDER BY transcript_date ASC LIMIT 1
SELECT min(transcript_date) ,  min(other_details) FROM TRANSACTIONS
SELECT count(*) FROM TRANSACTIONS
SELECT count(*) FROM TRANSACTIONS
SELECT last(tract_date) FROM TRANSACTIONS ORDER BY last(tract_date) DESC LIMIT 1
SELECT max(tract_date) FROM TRANSACTIONS
SELECT count(*) ,  T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id  =  T2.student_course_id GROUP BY T1.course_id
SELECT max(T2.course_name) ,  T1.course_id FROM Transcript_Contents AS T1 JOIN Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) LIMIT 1
SELECT T1.transcript_date ,  T1.transcript_id FROM TRANSCRIPTS AS T1 JOIN TRANSCRIPT_Contents AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id ORDER BY count(*) LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id  =  'MA' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id  =  'Bachelor'
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id  =  'MA' INTERSECT SELECT semester_id FROM Student_Enrolment WHERE degree_program_id  =  'BPhD'
SELECT count(DISTINCT T1.address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT other_student_details FROM Students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name  =  "h"
SELECT section_description FROM sections WHERE section_name  =  "h"
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.country  =  "Haitt" OR T2.cell_mobile_number  =  "09700166582"
SELECT T2.first_name FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.permanent_address_id WHERE T1.city  =  "Haiti" UNION SELECT first_name FROM students WHERE cell_mobile_number  =  "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM Cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by  =  "Ben Jones" OR directed_by  =  "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by  =  'Ben Jones' OR directed_by  =  'Brandon Vietti'
SELECT country ,  count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country ,  count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_of_founded  <  2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded  >  2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded  <  2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded  >  2003
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.organchestra_id  =  T2.organchestra_id GROUP BY T1.organchestra_id HAVING count(*)  >  1
SELECT T2.year_of_founded FROM performance AS T1 JOIN orchestra AS T2 ON T1.organchestra_id  =  T2.organchestra_id GROUP BY T1.organchestra_id HAVING count(*)  >  1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT name FROM highschooler WHERE grade  =  10
SELECT name FROM highschooler WHERE grade  =  10
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT id FROM Highschooler WHERE name  =  'Kyle'
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) ,  grade FROM Highschooler GROUP BY grade
SELECT count(*) ,  grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT student_id ,  count(*) FROM Friend GROUP BY student_id
SELECT count(*) ,  T1.student_id FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.student_id
SELECT T1.name ,  count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T1.name ,  count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id  =  T2.id JOIN student AS T3 ON T1.student_id  =  T3.id WHERE T3.name  =  'Kyle'
SELECT T2.friend_id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(T2.friend_id) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(T2.friend_id) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT id FROM student EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id INTERSECT SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
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
SELECT max(Net_Worth_Millions) ,  Citizenship FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) ,  Citizenship FROM singer GROUP BY Citizenship
SELECT T2.Title ,  T3.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID JOIN song AS T3 ON T1.Singer_ID  =  T3.Singer_ID
SELECT T2.Title ,  T3.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID JOIN song AS T3 ON T1.Singer_ID  =  T3.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name
SELECT T2.Name ,  SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT count(*) FROM Other_Available_Features
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code  =  T2.feature_type_code WHERE T2.feature_name  =  "AirCon"
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code  =  T2.property_type_code WHERE T2.property_type_code  =  "null"
SELECT property_name FROM properties WHERE property_type_code  =  'HSE' OR room_count  >  1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id JOIN likes AS T3 ON T2.liked_id  =  T3.liked_id
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT student_id ,  count(*) FROM Likes GROUP BY student_id
SELECT T1.name ,  count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT T1.name ,  count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2 AND T1.grade  >  5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id WHERE T1.grade  >  5 GROUP BY T2.friend_id HAVING count(*)  >=  2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT avg(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >  0
SELECT avg(T2.grade) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >  0
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.state  =  T2.state WHERE T2.role_code  =  'owner' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.state  =  T2.state WHERE T2.role_code  =  'professional'
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T1.state  =  'Indiana' UNION SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T1.state  =  'Indiana' UNION SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment  >  1000 )
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN owners AS T3 ON T1.owner_id  =  T3.owner_id WHERE T3.city NOT IN ( SELECT T4.city FROM owners AS T4 JOIN treatments AS T5 ON T4.owner_id  =  T5.owner_id WHERE T5.cost_of_treatment  >  1000 )
SELECT first_name FROM professionals WHERE role_code  =  'professional' UNION SELECT first_name FROM owners WHERE role_code  =  'owner' EXCEPT SELECT name FROM dogs WHERE gender  =  'male'
SELECT first_name FROM professionals WHERE role_code  =  'professional' UNION SELECT first_name FROM owners WHERE role_code  =  'owner' EXCEPT SELECT name FROM dogs WHERE gender  =  'male'
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.treatment_type_code  =  "animal"
SELECT professional_id ,  role_code ,  email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code  =  "animalistic")
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.role_code ,  T2.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id JOIN treatments AS T3 ON T2.dog_id  =  T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code ORDER BY T2.cost_of_treatment ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.total_cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM Treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  sum(T2.size_code) FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id
SELECT T1.first_name ,  T1.last_name ,  T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.name ,  T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  (SELECT min(breed_code) FROM dogs)
SELECT name ,  date_of_treatment FROM dogs WHERE breed_code  =  (SELECT min(breed_code) FROM dogs)
SELECT T2.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T1.date_of_arrived ,  T1.date_of_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.date_of_arrived ,  T1.date_of_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT date_arrived ,  date_departed FROM Dogs
SELECT date_arrived ,  date_departed FROM Dogs WHERE gender  =  'male'
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT dog_id) FROM treatments
SELECT count(DISTINCT T1.professional_id) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_name  =  "animal"
SELECT count(DISTINCT T2.professional_id) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.name  =  "Protoporphyrinogen IX"
SELECT role_code ,  street ,  city ,  state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code  =  "dog" )
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments )
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  '1' AND gender  =  'male' UNION SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  '0' AND gender  =  'female'
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type ,  sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_type ,  sum(charge_amount) FROM charges GROUP BY charge_type
SELECT charge_amount FROM charges WHERE charge_type  =  (SELECT charge_type FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) DESC LIMIT 1)
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1
SELECT email_address ,  cell_number ,  home_phone FROM Professionals WHERE role_code  =  'PROF'
SELECT email_address ,  cell_number ,  home_phone FROM Professionals WHERE role_code  =  'PROF'
SELECT T1.breed_name ,  T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code  =  T2.size_code
SELECT DISTINCT T1.breed_name ,  T2.size_description FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.breed_code  =  T2.size_code WHERE T1.name  =  "dog"
SELECT T1.first_name ,  T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id
