SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC;
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT Song_name ,  Song_release_year FROM singer ORDER BY Age ASC LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1;
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country;
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(Capacity) ,  avg(Average) FROM stadium
SELECT Average ,  Maximum FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T2.Name ,  count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT count(*) ,  T1.name FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >  2014
SELECT T2.name ,  T2.capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T1.year  >  2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE name NOT IN (SELECT Stadium_ID FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR  =  2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR  =  2014)
SELECT T1.concert_name ,  T1.theme ,  COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.concert_id
SELECT T1.concert_name ,  T1.theme ,  count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.concert_name
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.singer_id
SELECT T2.name ,  count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.singer_id
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id JOIN singer AS T3 ON T2.singer_id  =  T3.singer_id WHERE T1.year  =  2014
SELECT T2.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id WHERE T1.year  =  2014
SELECT T2.name ,  T2.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T2.concert_id  =  T3.concert_id WHERE T3.song_name  =  'Hey'
SELECT T1.name ,  T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T2.concert_id  =  T3.concert_id WHERE T3.concert_name LIKE "%Hey%\"
SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2014 INTERSECT SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2015
SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2014 INTERSECT SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2015
SELECT count(*) FROM concert WHERE Stadium_ID  =  (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE Stadium_ID  =  (SELECT Stadium_ID FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM pets WHERE weight  >  10
SELECT count(*) FROM pets WHERE weight  >  10
SELECT min(weight) FROM Pets WHERE pet_type  =  'dog'
SELECT min(weight) FROM Pets WHERE pet_type  =  'dog'
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.age  >  20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.age  >  20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid WHERE T2.pettype  =  'dog' AND T1.stuid  =  (SELECT StuID FROM student WHERE sex  =  'F')
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.sex  =  'F' AND T2.pettype  =  'Dog'
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' OR T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT maj ,  age FROM student WHERE stuID NOT IN (SELECT stuID FROM has_pet)
SELECT major ,  age FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType  =  'Cat'
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'Dog' EXCEPT SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'Cat'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat'
SELECT pet_type ,  weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pet_type ,  weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT PetID ,  weight FROM Pets WHERE pet_age  >  1
SELECT T1.petid ,  T2.weight FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid WHERE T2.pet_age  >  1
SELECT avg(T1.pet_age) ,  max(T1.pet_age) ,  T2.pettype FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid GROUP BY T2.pettype
SELECT avg(T1.pet_age) ,  max(T1.pet_age) ,  T2.pettype FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid GROUP BY T2.pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.pettype  =  'Pet'
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.pettype  =  'Pet'
SELECT T1.petid FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T1.petid  =  T3.petid WHERE T2.lname  =  'Smith'
SELECT T1.StuID FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID  =  T2.StuID JOIN pets AS T3 ON T2.PetID  =  T3.PetID WHERE T1.Lname  =  'Smith'
SELECT count(*) ,  StuID FROM Has_Pet GROUP BY StuID
SELECT StuID ,  count(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T2.Lname FROM HAS_PET AS T1 JOIN STUDENT AS T2 ON T1.StuID  =  T2.StuID WHERE T1.pet_age  =  3
SELECT T2.Lname FROM HAS_PET AS T1 JOIN STUDENT AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T1.PetID  =  T3.PetID WHERE T3.pet_age  =  3
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT stuID FROM has_pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid ,  T2.continent ,  count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid  =  T2.continent GROUP BY T1.contid
SELECT T1.contid ,  T1.continent ,  count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid  =  T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.Maker ,  T1.Id ,  COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id
SELECT T1.FullName ,  T1.Id ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Horsepower  =  (SELECT min(Horsepower) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Horsepower  =  (SELECT min(Horsepower) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.ModelId WHERE T1.Weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id WHERE T1.Year  =  1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker JOIN cars_data AS T3 ON T2.id  =  T3.id WHERE T3.year  =  1970
SELECT T1.make ,  T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid WHERE T2.year  =  (SELECT min(year) FROM cars_data)
SELECT T2.Maker ,  min(T1.Year) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id  =  T2.Id GROUP BY T2.Maker ORDER BY T1.Year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T2.Year  >  1980
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T1.year  >  1980
SELECT T1.Continent ,  COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.CountryId GROUP BY T1.Continent
SELECT T1.continent ,  count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid  =  T2.countryid GROUP BY T1.continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T2.CountryName ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model JOIN car_makers AS T3 ON T2.Maker  =  T3.Id GROUP BY T3.Maker
SELECT T1.id ,  T1.full_name ,  T2.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker_id GROUP BY T1.maker
SELECT Accelerate FROM cars_data WHERE Make  =  \"AMC\" AND Model  =  \"Hornet Sportabout\"
SELECT sum(accelerate) FROM cars_data WHERE makeid =  (SELECT id FROM car_names WHERE make =  "Amc Hornet Sportabout")
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_names WHERE make  =  'USA'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T2.model  =  'United States'
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Id WHERE T2.Cylinders  =  4
SELECT avg(MPG) FROM car_data WHERE Cylinders  =  4
SELECT min(Weight) FROM cars_data WHERE Cylinders  =  8 AND YEAR  =  1974
SELECT min(weight) FROM cars_data WHERE cylinders  =  8 AND YEAR  =  1974
SELECT DISTINCT T1.Maker ,  T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker
SELECT T2.Maker ,  T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.ModelId
SELECT T2.FullName ,  T2.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T2.CountryId HAVING COUNT(*)  >=  1
SELECT T2.CountryName ,  T2.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T2.CountryId HAVING COUNT(*)  >=  1
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT avg(T1.Weight) ,  T2.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id GROUP BY T2.Year
SELECT avg(weight) ,  avg(year) FROM cars_data
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.CountryId HAVING count(*)  >=  3
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.CountryId HAVING count(*)  >=  3
SELECT max(horsepower) ,  T1.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T2.cylinders  =  3
SELECT max(T2.Horsepower) ,  T2.Make FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T1.Cylinders  =  3 GROUP BY T2.Make ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Makeid  =  T2.Makeid JOIN cars_data AS T3 ON T2.Id  =  T3.Id WHERE T3.MPG  =  (SELECT max(MPG) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Makeid  =  T2.Makeid WHERE T2.MPG  =  (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Edispl) FROM car_names WHERE Make  =  "Volvo"
SELECT avg(Edispl) FROM car_names WHERE Make  =  'Volvo'
SELECT max(Accelerate) ,  count(*) FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) ,  Cylinders FROM cars_data GROUP BY Cylinders
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.FullName  =  'American Motor Company'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T2.Maker  =  'American Motor Company'
SELECT T2.FullName ,  T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >  3
SELECT T2.FullName ,  T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker WHERE T2.Modelid  >  3
SELECT T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker WHERE T1.FullName  =  'General Motors' AND T2.Weight  >  3500
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.maker WHERE T2.maker  =  'General Motors' UNION SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.maker WHERE T2.maker  =  'General Motors' AND T2.weight  >  3500
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT YEAR FROM cars_data WHERE Weight  <  4000 INTERSECT SELECT YEAR FROM cars_data WHERE Weight  >  3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT count(*) ,  T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid WHERE T2.mpg  =  (SELECT min(mpg) FROM cars_data) AND T2.m =  4 AND T2.cylinders  =  4 AND T2.make  =  'volvo'
SELECT count(*) FROM cars_data WHERE make  =  'Volvo' AND accelerate  =  (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate  >  (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country  >  2 GROUP BY country_id
SELECT count(*) FROM car_makers WHERE country  >  2 GROUP BY country_id
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Makeid  =  T2.Makeid WHERE T2.Cylinders  =  4 GROUP BY T1.Model ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Makeid  =  T2.Maker WHERE T2.Cylinders  =  4 GROUP BY T1.Model ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T2.makeid ,  T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.makeid  =  T2.makeid WHERE T1.horsepower  >  (SELECT min(horsepower) FROM cars_data) AND T1.cylinders  >  3
SELECT T1.makeid ,  T2.name FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid WHERE T2.cylinders  <  4
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Id WHERE T2.Cylinders  =  8 AND T1.Year  <  1980
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Id WHERE T2.Cylinders  =  8 OR T1.Year  <  1980
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Maker  =  'Ford' AND T2.Weight  <  3500 EXCEPT SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Maker  =  'Ford' AND T2.Weight  <  3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Model  =  'Lighter' AND T2.Model  <  3500 EXCEPT SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Model  =  'Ford' AND T2.Model  <  3500
SELECT countryname FROM countries EXCEPT SELECT T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.country  =  T2.countryid
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker GROUP BY T1.id HAVING count(*)  >  3
SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.id GROUP BY T1.id HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.id GROUP BY T1.id HAVING count(*)  >=  3
SELECT T1.id ,  T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.countryid  =  T2.countryid WHERE T1.maker  =  'fiat' GROUP BY T1.countryid HAVING count(*)  >  3 UNION SELECT T1.id ,  T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.countryid  =  T2.countryid WHERE T1.maker  =  'fiat' GROUP BY T1.countryid HAVING count(*)  >  3
SELECT T1.CountryId ,  T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId WHERE T1.FullName  >  'Toyota' UNION SELECT T1.CountryId ,  T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId WHERE T1.FullName  =  'Fiat'
SELECT Country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation  =  'JetBlue Airways'
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  \"Jetblue Airways\"
SELECT Abbreviation ,  Airline FROM airlines WHERE Country  =  "USA"
SELECT Airline ,  Abbreviation FROM airlines WHERE Country  =  'USA'
SELECT AirportCode ,  AirportName FROM airports WHERE City  =  "Anthony"
SELECT AirportCode ,  AirportName FROM airports WHERE City  =  "Anthony"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Abbreviation FROM airlines WHERE Abbreviation  =  'UAL'
SELECT Abbreviation FROM airlines WHERE Abbreviation  =  'UAL'
SELECT count(*) FROM airlines WHERE country  =  'USA'
SELECT count(*) FROM airlines WHERE country  =  'USA'
SELECT City ,  CountryAbbrev FROM airports WHERE AirportName  =  "Alton"
SELECT City ,  Country FROM airports WHERE AirportName  =  "Alton"
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT AirportName FROM airports WHERE City  =  'Aberdeen'
SELECT AirportName FROM airports WHERE City  =  'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport  =  'APG'
SELECT count(*) FROM flights WHERE SourceAirport  =  'APG'
SELECT count(*) FROM flights WHERE DestAirport  =  'ATO'
SELECT count(*) FROM flights WHERE sourceairport  =  'ATO'
SELECT count(*) FROM flights WHERE SourceAirport  =  'City Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport  =  'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen' AND T1.destcity  =  'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "Ashley" AND T1.Airline  =  "Aberdeen"
SELECT count(*) FROM flights WHERE Airline  =  'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline  =  'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ASY' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ASY' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'AHD' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport  =  'AHD' AND airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'Aberdeen' AND T1.Airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.countryAbbrev = 'United' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1
SELECT min(T1.AirportCode) ,  T2.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode GROUP BY T1.DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT Abbreviation ,  Country FROM airlines WHERE FlightNo IN (SELECT FlightNo FROM flights GROUP BY FlightNo ORDER BY COUNT(*) DESC LIMIT 1)
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.SourceAirport WHERE T2.SourceAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport WHERE T2.DestAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport WHERE T2.DestAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.DestAirport  =  'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport JOIN airports AS T3 ON T2.SourceAirport  =  T3.AirportCode WHERE T3.AirportName  =  'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport JOIN airports AS T3 ON T2.SourceAirport  =  T3.AirportCode WHERE T3.AirportName  =  'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline HAVING COUNT(*)  >=  10
SELECT Airline FROM FLIGHTS GROUP BY Airline HAVING COUNT(*)  >=  10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline HAVING COUNT(*)  <  200
SELECT Airline FROM FLIGHTS GROUP BY Airline HAVING COUNT(*)  <  200
SELECT T1.FlightNo FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline  =  T2.Airline WHERE T2.Airline  =  "United Airlines"
SELECT FlightNo FROM flights WHERE Airline  =  'United Airlines'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN sourceairport AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportCode  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN sourceairport AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportCode  =  'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen' OR DestAirport  =  'Abilene'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen' OR DestAirport  =  'Abilene'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights) AND AirportCode NOT IN (SELECT DestAirport FROM flights)
SELECT AirportCode FROM airports EXCEPT SELECT DestAirport FROM flights
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
SELECT Manager_name ,  District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name ,  District FROM shop ORDER BY Number_products DESC LIMIT 1;
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name ,  location ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id WHERE T1.bonus  =  (SELECT max(bonus) FROM evaluation)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id WHERE T1.bonus  =  (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T2.name ,  count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id
SELECT T2.name ,  count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id
SELECT sum(bonus) FROM evaluation
SELECT sum(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT district FROM shop WHERE number_products  <  3000 INTERSECT SELECT district FROM shop WHERE number_products  >  10000
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(DISTINCT LOCATION) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id ,  document_name ,  document_description FROM documents
SELECT document_id ,  document_name ,  document_description FROM documents
SELECT T1.document_name ,  T2.template_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T2.document_name ,  T2.template_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T1.paragraph_text LIKE '%w%'
SELECT document_id ,  template_id ,  document_description FROM documents WHERE document_name  =  "Robbin CV"
SELECT T1.document_id ,  T2.template_id ,  T2.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_details  =  'Robbin CV'
SELECT count(DISTINCT template_id) FROM documents
SELECT count(DISTINCT template_id) FROM documents
SELECT count(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  'PPT'
SELECT count(*) FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_type_code  =  'PPT'
SELECT count(*) ,  template_id FROM Documents GROUP BY template_id
SELECT count(*) ,  template_id FROM Documents GROUP BY template_id
SELECT T1.template_id ,  T2.template_type_code FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id ,  t2.template_type_code FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*)  >  1
SELECT T1.template_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id HAVING count(*)  >  1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_template_types
SELECT DISTINCT template_type_code FROM Ref_template_types
SELECT template_id FROM templates WHERE template_type_code  =  'PP' OR template_type_code  =  'PPT'
SELECT template_id FROM templates WHERE template_type_code  =  'PP' OR template_type_code  =  'PPT'
SELECT count(*) FROM Templates WHERE template_type_code  =  'CV'
SELECT count(*) FROM Ref_Template_Types WHERE template_type_description  =  'CV'
SELECT t1.template_type_code ,  t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code WHERE t2.version_number  >  5
SELECT template_type_code ,  version_number FROM templates WHERE version_number  >  5
SELECT count(*) ,  template_type_code FROM templates GROUP BY template_type_code
SELECT count(*) ,  template_type_code FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code HAVING count(*)  <  3
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code HAVING count(*)  <  3
SELECT min(version_number) ,  template_type_code FROM templates
SELECT min(version_number) ,  template_type_code FROM templates GROUP BY template_type_code
SELECT T2.template_type_code FROM documents AS T1 JOIN ref_template_types AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_name  =  "Data base"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code JOIN documents AS t3 ON t2.template_id  =  t3.template_id WHERE t3.document_name  =  "Database"
SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code  =  'BK')
SELECT T2.document_name FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code  =  T2.template_type_code WHERE T1.template_type_description  =  'BK'
SELECT count(*) ,  template_type_code FROM Documents GROUP BY template_type_code
SELECT count(*) ,  template_type_code FROM Documents GROUP BY template_type_code
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_type_code  =  T2.template_id
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_type_code  =  T2.template_id
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code  =  "AD"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code WHERE t2.template_type_description  =  "Book"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code WHERE t2.template_type_description  =  "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code  =  T2.template_type_code JOIN documents AS T3 ON T2.template_id  =  T3.template_id WHERE T3.template_id IN (SELECT template_id FROM documents)
SELECT T2.template_type_description FROM documents AS T1 JOIN ref_template_types AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_name  =  'example'
SELECT template_id FROM Ref_template_types WHERE template_type_description  =  "Presentation"
SELECT template_id FROM Ref_template_types WHERE template_type_description  =  'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM documents WHERE document_name  =  'Summer Show'
SELECT count(*) FROM documents WHERE document_name  =  'Summer Show'
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Korea '
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Korea'
SELECT T2.paragraph_text ,  T1.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Welcome to NY'
SELECT T2.paragraph_id ,  T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Welcome to NY'
SELECT paragraph_text FROM Paragraphs WHERE document_id  =  "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Customer reviews'
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  document_name ,  count(*) FROM paragraphs GROUP BY document_id
SELECT document_id ,  document_name ,  count(*) FROM paragraphs GROUP BY document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id ,  document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.document_id ,  t2.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id  =  t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%1 to 2%\"
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%between%and%'
SELECT T2.document_id FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id WHERE T1.paragraph_text  =  'Brazil' OR T1.paragraph_text  =  'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age ,  Hometown FROM teacher
SELECT Age ,  Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != \"Little Lever Urban District\"
SELECT Name FROM teacher WHERE Hometown != \"Little Lever Urban District\"
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT min(age) FROM teacher
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT T2.Name ,  T1.Course_ID FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T2.Name ASC
SELECT T2.Name ,  T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T2.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID WHERE T1.Course_ID  =  'Math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID WHERE T1.Course_ID  =  'Math'
SELECT T2.Name ,  count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T2.Name
SELECT T1.Name ,  count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Teacher_ID FROM course_arrange WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT Name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership  <  4
SELECT name ,  level_of_membership FROM visitor WHERE level_of_membership  >  4 ORDER BY age
SELECT T1.Museum_ID ,  T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009
SELECT Open_Year ,  Num_of_Staff FROM museum WHERE Name  =  "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T1.ID ,  T1.Name ,  T1.Age FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID GROUP BY T1.ID HAVING count(*)  >  1
SELECT T1.ID ,  T1.Name ,  T1.Level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID GROUP BY T2.visitor_ID ORDER BY sum(T2.Total_spent) DESC LIMIT 1
SELECT T1.Museum_ID ,  T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name ,  T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id  =  T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(Num_of_Ticket) ,  max(Num_of_Ticket) FROM visit
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID  =  T2.ID WHERE T2.Level_of_membership  =  1
SELECT T2.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID WHERE T1.Open_Year  <  2009 INTERSECT SELECT T2.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID WHERE T1.Open_Year  >  2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_id FROM visit WHERE museum_id  >  2010)
SELECT count(*) FROM museum WHERE open_year  >  2013 OR open_year  <  2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT first_name ,  birth_date FROM players WHERE country_code  =  'USA'
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(loser_age) ,  avg(winner_age) FROM matches
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id WHERE T1.winner_name  =  'Winner'
SELECT avg(winner_rank) FROM matches WHERE best_of  =  'Winner'
SELECT max(loser_rank) FROM matches WHERE loser_rank  =  'L'
SELECT loser_rank FROM matches WHERE best_of  =  '0'
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches WHERE loser_name = 'Loss'
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT winner_name FROM matches WHERE year  =  2013 INTERSECT SELECT winner_name FROM matches WHERE year  =  2016
SELECT winner_name FROM matches WHERE year  =  2013 INTERSECT SELECT winner_name FROM matches WHERE year  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE tourney_date LIKE '%2013%' OR tourney_date LIKE '%2016%'
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name ,  T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name ,  T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id  =  t2.winner_id WHERE t2.tourney_name  =  'Australian Open' ORDER BY t2.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.winner_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open' ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT loser_name ,  winner_name FROM matches WHERE minutes  =  (SELECT max(minutes) FROM matches)
SELECT loser_name ,  winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking) ASC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT count(*) ,  country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT country_code FROM players GROUP BY country_code HAVING count(*)  >  50
SELECT sum(tours) ,  ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*) ,  ranking_date FROM rankings GROUP BY ranking_date
SELECT count(*) ,  tourney_date FROM matches GROUP BY tourney_date
SELECT count(*) ,  YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name ,  T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id ORDER BY T1.winner_age DESC LIMIT 3
SELECT T1.winner_name ,  T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id ORDER BY T1.winner_age DESC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE loser_hand  =  'left' AND tourney_name  =  'WTA Championships'
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.winner_id WHERE T2.hand  =  'L' AND T1.tourney_name  =  'WTA Championships'
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  result FROM battle
SELECT max(T1.killed) ,  min(T1.killed) FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id  =  T2.id GROUP BY T1.caused_by_ship_id
SELECT avg(T1.injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id  =  T2.id GROUP BY T1.caused_by_ship_id
SELECT T2.injured ,  T2.killed FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id WHERE T1.tonnage  =  't'
SELECT name ,  result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id  =  T2.lost_in_battle WHERE T1.ship_type  =  'Brig'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T1.id HAVING sum(killed)  >  10
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT id) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE tonnage  =  '225')
SELECT T1.name ,  T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id  =  T2.lost_in_battle WHERE T1.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id  =  T2.lost_in_battle WHERE T1.name  =  'HMS Atalanta'
SELECT name ,  result ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id  =  T2.lost_in_battle WHERE T2.location  =  'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses
SELECT line_1 ,  line_2 FROM Addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM COURSES
SELECT course_description FROM Courses WHERE course_name  =  'Math'
SELECT course_description FROM Courses WHERE course_name  =  'Math'
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'
SELECT T1.department_name ,  T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name ,  T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM DEGREE_PROGRAMS
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM DEGREE_PROGRAMS AS T1 JOIN DEPARTMENTS AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  'Engineering'
SELECT count(*) FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id WHERE T1.department_name  =  'Engineering'
SELECT section_name ,  section_description FROM Sections
SELECT section_name ,  section_description FROM Sections
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <  2;
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id WHERE T2.degree_program_id  =  2 AND T2.semester_id  =  T3.semester_id
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T2.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  '2' AND T2.semester_id  =  1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id WHERE T2.degree_program_id  =  1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_id JOIN Degree_Programs AS T3 ON T3.degree_program_id  =  T2.degree_program_id WHERE T3.degree_summary_name  =  'Bachelors'
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name ,  T1.degree_program_id ,  count(*) FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T1.first_name ,  T1.middle_name ,  T1.last_name ,  count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  count(*) FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  >  0
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  >  0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT T1.current_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.state_province_county = 'North Carolina') EXCEPT SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = 'Master')
SELECT last_name FROM STUDENTS WHERE state_province_county  =  'North Carolina' EXCEPT SELECT T1.last_name FROM STUDENTS AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id
SELECT T1.transcript_date ,  T1.transcript_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT transcript_date ,  transcript_id FROM Transcripts GROUP BY transcript_id HAVING count(*)  >=  2
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT cell_mobile_number FROM Students WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_id WHERE T2.course_id  =  (SELECT course_id FROM Student_Enrolment_Courses WHERE student_enrolment_id  =  (SELECT min(student_enrolment_id) FROM Student_Enrolment_Courses) )
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id  =  T2.address_id WHERE T2.city  =  'City' AND T2.state_province_county  =  'State' AND T2.country  =  'Country'
SELECT T1.address_id ,  T2.current_address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T2.current_address_id ORDER BY count(*) DESC LIMIT 1
SELECT address_id ,  line_1 ,  line_2 FROM addresses GROUP BY address_id ORDER BY count(*) DESC LIMIT 1;
SELECT transcript_date FROM Transcripts GROUP BY transcript_date ORDER BY avg(transcript_date) DESC LIMIT 1;
SELECT avg(transcript_date) FROM TRANSCRIPTS
SELECT transcript_date ,  T2.other_details FROM Transcripts AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id WHERE T1.transcript_date  =  (SELECT min(transcript_date) FROM Transcripts)
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM Transcripts
SELECT count(*) FROM Transcripts
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT count(*) ,  T1.course_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.course_name) ,  T2.student_enrolment_id FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.student_enrolment_id ORDER BY count(*) DESC LIMIT 1
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_date ORDER BY count(*) ASC LIMIT 1;
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_date ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.student_id  =  'M' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.student_id  =  'B'
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.degree_program_id  =  4 AND T2.student_id  =  4
SELECT count(DISTINCT address_id) FROM Addresses
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.permanent_address_id
SELECT * FROM Students ORDER BY first_name ASC DESC
SELECT * FROM Students ORDER BY first_name ASC DESC
SELECT * FROM Sections WHERE section_name  =  'H'
SELECT section_description FROM Sections WHERE section_name  =  'h'
SELECT first_name FROM students WHERE country  =  'Haiti' OR cell_mobile_number  =  '09700166582'
SELECT first_name FROM students WHERE cell_mobile_number  =  "09700166582" OR permanent_address_id  =  (SELECT permanent_address_id FROM students WHERE cell_mobile_number  =  "09700166582")
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT Directed_by FROM Cartoon WHERE Directed_by  =  "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by  =  'Ben Jones'
SELECT count(*) FROM Cartoon WHERE Written_by  =  "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by  =  'Joseph Kuhr'
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT Title ,  Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by  =  'Ben Jones' OR Directed_by  =  'Brandon Vietti'
SELECT Country ,  COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Country ,  COUNT(*) FROM TV_Channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) ,  count(DISTINCT content) FROM TV_channel
SELECT count(DISTINCT series_name) ,  count(DISTINCT Content) FROM TV_Channel
SELECT content FROM TV_CHANNEL WHERE series_name  =  "Sky Radio"
SELECT content FROM TV_channel WHERE series_name  =  'Sky Radio'
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT T2.Package_Option FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.series_name  =  'Sky Radio'
SELECT count(*) FROM TV_Channel WHERE Language  =  'English'
SELECT count(*) FROM TV_Channel WHERE Language  =  'English'
SELECT Language ,  COUNT(*) FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1;
SELECT Language ,  count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT Language ,  COUNT(*) FROM TV_Channel GROUP BY Language
SELECT count(*) ,  Language FROM TV_Channel GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel_id WHERE T1.series_name  =  "Sky Radio"
SELECT T1.Title FROM Cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(Share) ,  min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel  =  T2.id WHERE T1.Title  =  "A Love of a Lifetime"
SELECT T2.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.id WHERE T2.Episode  =  "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id  =  T2.id WHERE T1.series_name  =  "Sky Radio"
SELECT count(*) ,  directed_by FROM Cartoon GROUP BY directed_by
SELECT Directed_by ,  COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code ,  Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT t1.production_code ,  t1.channel FROM Cartoon AS t1 JOIN TV_Channel AS t2 ON t1.channel  =  t2.id ORDER BY t1.Original_air_date DESC LIMIT 1;
SELECT T1.package_option ,  T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.id WHERE T2.Hight_definition_TV  =  'Yes'
SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  'Y'
SELECT T1.Country FROM TV CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.id WHERE T2.Written_by  =  'Todd Casey'
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.channel  =  T2.id JOIN TV_series AS T3 ON T1.id  =  T3.id WHERE T3_written_by  =  'Todd Casey'
SELECT Country FROM TV_CHANNEL WHERE Country NOT IN (SELECT Channel FROM Cartoon WHERE Written_by  =  'Todd Casey')
SELECT Country FROM TV_CHANNEL WHERE Content != 'Cartoons' AND Written_by != 'Todd Casey'
SELECT T1.series_name ,  T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.Directed_by  =  'Ben Jones' INTERSECT SELECT T1.series_name ,  T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.Directed_by  =  'Michael Chang'
SELECT T1.series_name ,  T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.Directed_by  =  'Ben Jones' INTERSECT SELECT T1.series_name ,  T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.Directed_by  =  'Michael Chang'
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_CHANNEL WHERE country  >  2 GROUP BY country HAVING count(*)  >  2
SELECT id FROM TV_CHANNEL GROUP BY id HAVING count(*)  >  2
SELECT id FROM TV_CHANNEL WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by  =  'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by  =  'Ben Jones')
SELECT t1.package_option FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by != 'Ben Jones'
SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.id WHERE T2.Directed_by != 'Ben Jones'
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT AVG(Earnings) FROM poker_player
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
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 1
SELECT avg(earnings) FROM poker_player WHERE height  >  200
SELECT AVG(Earnings) FROM poker_player WHERE Height  >  200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name ,  Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM contestants ORDER BY contestant_name DESC;
SELECT vote_id ,  phone_number ,  state FROM VOTES
SELECT max(area_code) ,  min(area_code) FROM AREA_CODE_STATE
SELECT created FROM VOTES WHERE state  =  'CA'
SELECT contestant_name FROM contestants EXCEPT SELECT contestant_name FROM contestants WHERE contestant_name  =  'Jessie Alloway'
SELECT DISTINCT state ,  created FROM VOTES
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number HAVING count(*)  >=  2
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM VOTES WHERE state  =  'NY' OR state  =  'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created ,  T1.state ,  T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T2.contestant_name  =  'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state  =  T2.state WHERE T2.contestant_number  =  'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state  =  T2.state WHERE T2.contestant_number  =  'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear  >  1950
SELECT name FROM country WHERE independyear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE region  =  'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Caribbean'
SELECT Continent FROM country WHERE Name  =  'Anguilla'
SELECT Continent FROM country WHERE Name  =  'Anguilla'
SELECT district FROM city WHERE name  =  'Kabul'
SELECT district FROM city WHERE name  =  'Kabul'
SELECT Language FROM countrylanguage WHERE CountryCode  =  'Aruba' GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode  =  'Aruba'
SELECT population ,  lifeexpectancy FROM country WHERE name  =  'Brazil'
SELECT population ,  lifeexpectancy FROM country WHERE name  =  'Brazil'
SELECT region ,  population FROM country WHERE name  =  "Angola"
SELECT t1.region ,  t1.population FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.countrycode WHERE t1.name  =  'Angola'
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  'Central Africa'
SELECT avg(T2.lifeexpectancy) FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.continent  =  'Central Africa'
SELECT name FROM country ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent  =  'Asia' AND lifeexpectancy  =  (SELECT min(lifeexpectancy) FROM country WHERE continent  =  'Asia')
SELECT sum(population) ,  max(gnp) FROM city WHERE region  =  'Asia'
SELECT count(*) ,  max(gnp) FROM country WHERE region  =  'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  'Republic' AND Continent  =  'Africa'
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  'Republic' AND Continent  =  'Africa'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' AND continent  =  'Europe'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT population FROM city WHERE district  =  'Gelderland'
SELECT sum(population) FROM city WHERE district  =  'Gelderland'
SELECT avg(GNP) ,  avg(population) FROM country WHERE GovernmentForm  =  'US'
SELECT avg(T2.GNP) ,  sum(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  'United States'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(*) FROM country WHERE GovernmentForm  =  'Federal' OR GovernmentForm  =  'Constitutional' OR GovernmentForm  =  ' Parliamentary' OR GovernmentForm  =  'Unitary'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  'Africa'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  'Aruba'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  'Aruba'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  "Afghanistan"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  'Afghanistan'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code2 GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code2 GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.continent FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode GROUP BY t1.continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'Dutch' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' AND T2.language  =  'Dutch'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T2.Language  =  'French'
SELECT count(DISTINCT continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'Chinese'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'Chinese'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' OR T2.language  =  'Dutch'
SELECT DISTINCT t1.region FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'Dutch' OR t2.language  =  'English'
SELECT country FROM countrylanguage WHERE IsOfficial  =  'Y' OR language  =  'English' OR language  =  'Dutch'
SELECT country FROM countrylanguage WHERE language  =  'English' OR language  =  'Dutch'
SELECT Language FROM countrylanguage WHERE CountryCode  =  'Asia' ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial  =  'Y' GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE IsOfficial  =  'Yes' AND CountryCode IN (SELECT CountryCode FROM country WHERE GovernmentForm  =  'Republic')
SELECT language FROM countrylanguage WHERE IsOfficial  =  'yes' AND GovernmentForm  =  'Republic' GROUP BY language HAVING count(*)  =  1
SELECT name FROM city WHERE population  =  (SELECT max(population) FROM city WHERE language  =  'English')
SELECT name FROM city WHERE population  >  (SELECT max(population) FROM city) AND language  =  'English'
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT avg(T2.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(T2.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language != 'English'
SELECT count(*) FROM country WHERE language != 'English'
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  'English')
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t1.headofstate  =  'Beatrix'
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t1.headofstate  =  'Beatrix'
SELECT count(DISTINCT language) FROM countrylanguage WHERE IsOfficial  =  'T' AND IsOfficial  =  'Y' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  '
SELECT count(DISTINCT language) FROM countrylanguage WHERE IsOfficial  =  'T' AND IsOfficial  =  'Y' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  '
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE population  <  (SELECT max(population) FROM country WHERE continent  =  'Asia') AND continent  =  'Africa'
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE continent  =  'Asia' AND population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa')
SELECT countrycode FROM city WHERE language != 'english'
SELECT countrycode FROM city WHERE language != 'english'
SELECT CountryCode FROM country LANGUAGE != 'English'
SELECT CountryCode FROM city WHERE Language != 'English'
SELECT code2 FROM country WHERE language != "English" AND governmentform != "Republic"
SELECT code2 FROM country WHERE language != 'english' AND governmentform != 'Republic'
SELECT name FROM city WHERE countrycode IN (SELECT code2 FROM countrylanguage WHERE language != 'English') AND region  =  'Europe'
SELECT name FROM city WHERE countrycode  =  'Europe' EXCEPT SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode  =  t2.countrycode WHERE t2.language  =  'English'
SELECT DISTINCT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Name  =  'Asian' AND T2.Language  =  'Chinese'
SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T1.Region  =  'Asia' AND T2.Language  =  'Chinese'
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  leader ,  population FROM city ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name ,  T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.IsOfficial  =  1 GROUP BY T2.Name HAVING count(*)  >=  3
SELECT T2.Name ,  COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode HAVING COUNT(*)  >  2
SELECT district ,  count(*) FROM city WHERE population  >  (SELECT avg(population) FROM city)
SELECT district ,  count(*) FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT GovernmentForm ,  sum(population) FROM city GROUP BY GovernmentForm HAVING avg(lifeexpectancy)  >  72
SELECT GovernmentForm ,  sum(population) FROM city WHERE lifeexpectancy  >  72 GROUP BY GovernmentForm
SELECT avg(LifeExpectancy) ,  sum(Population) ,  continent FROM country GROUP BY continent HAVING avg(LifeExpectancy)  <  72
SELECT continent ,  sum(population) ,  avg(LifeExpectancy) FROM country WHERE LifeExpectancy  <  72 GROUP BY continent
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
SELECT sum(t1.population) ,  avg(t1.surfacearea) FROM city AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.code WHERE t2.continent  =  'North America' AND t2.surfacearea  >  3000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE region  =  'North America' AND surfacearea  >  3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY Count(*) DESC LIMIT 1
SELECT Language ,  Percentage FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT T2.CountryCode ,  T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode GROUP BY T2.CountryCode ORDER BY sum(T2.Percentage) DESC LIMIT 1
SELECT sum(percentage) ,  countrylanguage FROM countrylanguage WHERE language  =  'Spanish' GROUP BY countrylanguage WHERE countrylanguage.language  =  'Spanish' ORDER BY sum(percentage) DESC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'Spanish'
SELECT t2.code FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'spanish' ORDER BY t2.percentage DESC LIMIT 1
SELECT t2.code FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'Spanish'
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company ,  YEAR_OF_FOUNDED FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share) ,  min(share) FROM performance WHERE TYPE != "Live final"
SELECT max(share) ,  min(share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T2.Name ,  T1.Orchestra_ID FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) ,  record_company FROM orchestra GROUP BY record_company
SELECT orchestra FROM orchestra GROUP BY record_format ORDER BY count(*) ASC
SELECT Major_Record_Format ,  COUNT(*) FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  >  2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  >  2003
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format  =  'CD' OR major_record_format  =  'DVD'
SELECT YEAR_OF_FOUNDED FROM orchestra GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*)  >  1
SELECT YEAR_OF_FOUNDED FROM ORCHESTRA GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*)  >  1
SELECT count(*) FROM highschooler WHERE grade  =  'High'
SELECT count(*) FROM highschooler WHERE grade  =  'High'
SELECT name ,  grade FROM highschooler
SELECT name ,  grade FROM highschooler
SELECT grade FROM highschooler WHERE name  =  'high schoolers'
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name  =  'Kyle'
SELECT grade FROM highschooler WHERE name  =  'Kyle'
SELECT name FROM highschooler WHERE grade  =  10
SELECT name FROM highschooler WHERE grade  =  10
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) ,  grade FROM highschooler WHERE grade  =  'high' GROUP BY grade;
SELECT count(*) ,  grade FROM highschooler WHERE grade  =  'high' GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT T1.id ,  T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT count(*) ,  T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >  3
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  3
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id WHERE T1.name  =  'Kyle' AND T2.friend_id  =  'High Schooler'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM Friend WHERE friend_id  =  'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id JOIN friend AS T3 ON T2.friend_id  =  T3.friend_id WHERE T1.grade  =  'High' AND T3.student_id NOT IN (SELECT T4.student_id FROM likes AS T4 ON T3.student_id  =  T4.liked_id WHERE T4.liked_id  =  T3.friend_id)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id JOIN friend AS T3 ON T2.friend_id  =  T3.id WHERE T3.friend_id  =  T2.liked_id AND T1.id  =  T2.student_id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id JOIN likes AS T3 ON T2.id  =  T3.liked_id GROUP BY T1.id HAVING count(*)  >  1 INTERSECT SELECT name FROM highschooler WHERE student_id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*)  >  1)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id JOIN friend AS T3 ON T2.friend_id  =  T3.student_id WHERE T3.friend_id  =  'high school'
SELECT count(*) ,  T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT count(*) ,  T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id GROUP BY T2.liked_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >  2 AND T1.grade  >  5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2 AND T1.grade  >  5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler WHERE name  =  'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >  5
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.role_code  =  'owner' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.role_code  =  'professional'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id GROUP BY T1.dog_id
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id GROUP BY T1.dog_id
SELECT T1.first_name ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN owners AS T3 ON T2.owner_id  =  T3.owner_id WHERE T3.state  =  'Indiana' OR T2.treatment_type_code  =  'Treatment' GROUP BY T1.professional_id HAVING count(*)  >  2
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN Owners AS T3 ON T2.professional_id  =  T3.owner_id WHERE T3.state  =  'Indiana' OR T2.treatment_type_code  =  'more than 2'
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.cost_of_treatment  >  1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN owners AS T3 ON T1.owner_id  =  T3.owner_id WHERE T2.cost_of_treatment  >  1000
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'Dog'
SELECT T1.first_name ,  T1.last_name ,  T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN charges AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment ,  T2.first_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT cost_of_treatment ,  treatment_type_description FROM treatments
SELECT T1.cost_of_treatment ,  T1.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.gender  =  'dog'
SELECT T1.first_name ,  T1.last_name ,  T2.weight FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.gender  =  'M'
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.name ,  T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  'R1'
SELECT T1.name ,  T1.date_of_adopted FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  "Virginia"
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  "Virginia"
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'treatment'
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'treatment'
SELECT last_name FROM owners WHERE age  =  (SELECT min(age) FROM dogs)
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1;
SELECT email_address FROM Owners WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT date_arrived ,  date_departed FROM dogs
SELECT date_arrived ,  date_departed FROM dogs
SELECT count(*) FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id  =  t2.dog_id GROUP BY t1.dog_id
SELECT count(*) FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id  =  t2.dog_id WHERE t1.treatment_type_code  =  'dog'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT T1.role ,  T1.street ,  T1.city ,  T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.city LIKE '%West%'
SELECT T1.role_code ,  T1.street ,  T1.city ,  T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.city LIKE '%West%'
SELECT email_address ,  first_name ,  last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM professionals EXCEPT SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code  =  'dog')
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  "1"
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_amount FROM charges GROUP BY charge_type ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address ,  cell_number ,  home_phone FROM Professionals
SELECT email_address ,  cell_number ,  home_phone FROM owners
SELECT breed_code ,  size_code FROM dogs
SELECT DISTINCT T1.breed_name ,  T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id
SELECT T1.first_name ,  T1.last_name ,  T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship ,  MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING SUM(T1.Sales)  >  300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name ,  T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name_ID
SELECT T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T1.Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT t1.feature_type_name FROM Ref_Feature_Types AS t1 JOIN Other_Available_Features AS t2 ON t1.feature_type_code  =  t2.feature_type_code WHERE t2.feature_name  =  'AirCon'
SELECT T2.property_type_description FROM Properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code  =  T2.property_type_code
SELECT T1.property_name FROM Properties AS T1 JOIN Other_Available_Features AS T2 ON T1.property_id  =  T2.property_id WHERE T2.feature_type_code  =  'HSE' INTERSECT SELECT T1.property_name FROM Properties AS T1 JOIN Other_Available_Features AS T2 ON T1.property_id  =  T2.property_id WHERE T2.feature_type_code  =  'APARTMENT'
