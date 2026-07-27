SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name ,  country ,  age FROM singer ORDER BY age ASC
SELECT name ,  country ,  age FROM singer ORDER BY age DESC
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT avg(age) ,  min(age) ,  max(age) FROM singer WHERE country  =  'France'
SELECT song_name ,  song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT song_name ,  song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age  >  20
SELECT country FROM singer WHERE age  >  20
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT country ,  count(*) FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age  >  (SELECT avg(age) FROM singer)
SELECT LOCATION ,  Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION ,  name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT max(capacity) ,  avg(capacity) FROM stadium
SELECT Average ,  Maximum FROM stadium
SELECT name ,  capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name ,  capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT count(*) FROM concert WHERE YEAR  =  2014 OR YEAR  =  2015
SELECT T2.Name ,  COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT count(*) ,  T1.Name FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT T2.Name ,  T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  >  2014 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name ,  T2.Capacity FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  >  2013 GROUP BY T1.Stadium_ID ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT Year FROM concert GROUP BY YEAR ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM stadium WHERE name NOT IN (SELECT Stadium_ID FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age  >  40 INTERSECT SELECT country FROM singer WHERE age  <  30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id  =  T2.stadium_id WHERE T2.year  =  2014
SELECT T1.concert_name ,  T1.theme ,  COUNT(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.concert_id
SELECT T1.concert_name ,  T1.theme ,  count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id GROUP BY T1.concert_id
SELECT T1.name ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T1.name
SELECT T1.name ,  count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id GROUP BY T1.name
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id JOIN singer AS T3 ON T2.singer_id  =  T3.singer_id WHERE T1.year  =  2014
SELECT T2.Name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id  =  T2.concert_id WHERE T1.year  =  2014
SELECT T1.Name ,  T1.Country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID  =  T2.Singer_ID JOIN concert AS T3 ON T2.concert_ID  =  T3.concert_ID WHERE T3.Song_name  =  'Hey'
SELECT T1.name ,  T1.country FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id  =  T2.singer_id JOIN concert AS T3 ON T2.concert_id  =  T3.concert_id WHERE T3.concert_name LIKE "%Hey%"
SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2014 INTERSECT SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2015
SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2014 INTERSECT SELECT T2.Name ,  T2.Location FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID  =  T2.Stadium_ID WHERE T1.Year  =  2015
SELECT count(*) FROM concert WHERE Stadium_ID  =  (SELECT Stadium_ID FROM stadium ORDER BY Capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id  =  (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight  >  10
SELECT count(*) FROM Pets WHERE weight  >  10
SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(pet_age) FROM Pets)
SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM Pets WHERE pet_age  =  (SELECT min(weight) FROM
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT max(weight) ,  pettype FROM pets GROUP BY pettype
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T1.age  >  20
SELECT count(*) FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid  =  T2.petid WHERE T1.stuid  >  20
SELECT count(*) FROM HAS_PET AS T1 JOIN PET AS T2 ON T1.PetID  =  T2.PetID WHERE T2.pettype  =  'Dog' AND T1.StuID  =  (SELECT StuID FROM STUDENT WHERE Sex  =  'F')
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T1.sex  =  'F' AND T2.pettype  =  'Dog'
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T2.pettype  =  'cat' OR T2.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'Cat' OR T3.pettype  =  'Dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog'
SELECT DISTINCT T1.major ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid EXCEPT SELECT T1.major ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T2.pettype  =  'cat'
SELECT major ,  age FROM student EXCEPT SELECT T1.major ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T2.pettype  =  'cat'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetType  =  'Cat'
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'Dog' EXCEPT SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid JOIN Pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'Cat'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'dog' EXCEPT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid JOIN pets AS T3 ON T2.petid  =  T3.petid WHERE T3.pettype  =  'cat'
SELECT pet_type ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_type ,  weight FROM pets ORDER BY pet_age LIMIT 1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT petid ,  weight FROM pets WHERE pet_age  >  1
SELECT avg(T1.pet_age) ,  max(T1.pet_age) ,  T2.pettype FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid GROUP BY T2.pettype
SELECT avg(T1.pet_age) ,  max(T1.pet_age) ,  T2.pettype FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid  =  T2.petid GROUP BY T2.pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT avg(weight) ,  pettype FROM pets GROUP BY pettype
SELECT T1.fname ,  T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID  =  T2.StuID WHERE T2.pettype  =  'Pet'
SELECT DISTINCT T1.fname ,  T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid  =  T2.stuid WHERE T2.pettype  =  'pet'
SELECT StuID FROM Student WHERE LName  =  'Smith'
SELECT StuID FROM Student WHERE LName  =  'Smith'
SELECT count(*) ,  StuID FROM Has_Pet GROUP BY StuID
SELECT StuID ,  count(*) FROM Has_Pet GROUP BY StuID
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.fname ,  T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid  =  T2.stuid GROUP BY T1.stuid HAVING count(*)  >  1
SELECT T1.Lname FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_age  =  3
SELECT T1.Lname FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID  =  T2.StuID JOIN Pets AS T3 ON T2.PetID  =  T3.PetID WHERE T3.pet_age  =  3
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid ,  T1.continent ,  count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid  =  T2.continent GROUP BY T1.contid
SELECT T1.contid ,  T1.continent ,  count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid  =  T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.FullName ,  T1.Id ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id
SELECT T1.FullName ,  T1.Id ,  count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Horsepower  =  (SELECT min(Horsepower) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker JOIN cars_data AS T3 ON T2.Id  =  T3.Id ORDER BY T3.Horsepower LIMIT 1;
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.MakeId  =  T2.MakeId WHERE T2.Weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Model  =  'car' AND T2.Weight  <  (SELECT avg(weight) FROM cars_data)
SELECT T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id WHERE T1.Year  =  1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.makeid WHERE T2.year  =  1970
SELECT T1.make ,  T1.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid ORDER BY T2.year ASC LIMIT 1
SELECT T1.Maker ,  T1.Year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id  =  T2.MakeId WHERE T2.Model  =  'Carr' ORDER BY T2.Year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T2.Year  >  1980
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T1.year  >  1980
SELECT T1.Continent ,  COUNT(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.CountryId GROUP BY T1.Continent
SELECT T1.continent ,  count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId  =  T2.CountryId GROUP BY T1.Continent
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  T2.FullName FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T1.Make  =  'Toyota' GROUP BY T2.FullName
SELECT T1.id ,  T1.full_name ,  T2.makeid FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T2.makeid != 0
SELECT accelerate FROM cars_data WHERE make  =  "amc hornet sportabout (sw)"
SELECT sum(accelerate) FROM cars_data WHERE makeid  =  "Amc Hornet Sportabout (SW)";
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_makers WHERE country  =  'France'
SELECT count(*) FROM car_names WHERE make  =  'USA'
SELECT count(*) FROM car_names WHERE make  =  'Ford' INTERSECT SELECT count(*) FROM car_names WHERE make  =  'Chevrolet'
SELECT avg(MPG) FROM cars_data WHERE Cylinders  =  4
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Edispl  =  T2.Edispl JOIN car_makers AS T3 ON T1.Maker  =  T3.Id WHERE T2.Cylinders  =  4
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Id WHERE T2.Maker  =  'Ford' AND T1.Cylinders  =  8 AND T1.Year  =  1974
SELECT min(T1.Weight) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Id WHERE T2.Maker  =  'Ford' AND T1.Cylinders  =  8 AND T1.Year  =  1974
SELECT DISTINCT T1.Maker ,  T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker
SELECT T1.Maker ,  T1.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker
SELECT T2.FullName ,  T2.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId GROUP BY T2.CountryId HAVING count(*)  >=  1
SELECT T1.CountryName ,  T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryId HAVING count(*)  >=  1
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT count(*) FROM cars_data WHERE horsepower  >  150
SELECT avg(T1.Weight) ,  T2.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker  =  T2.Id GROUP BY T2.Year
SELECT avg(T1.Weight) ,  T2.Year FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.ModelId GROUP BY T2.Year
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*)  >=  3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId  =  T2.CountryId GROUP BY T1.CountryName HAVING COUNT(*)  >=  3
SELECT max(horsepower) ,  T1.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T2.cylinders  =  3
SELECT max(T1.Horsepower) ,  T2.make FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id  =  T2.MakeId WHERE T1.Cylinders  =  3 GROUP BY T2.make ORDER BY max(T1.Horsepower) DESC LIMIT 1;
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Makeid JOIN cars_data AS T3 ON T2.Id  =  T3.Id WHERE T3.MPG  =  (SELECT max(MPG) FROM cars_data)
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Makeid  =  T2.Makeid WHERE T2.MPG  =  (SELECT max(MPG) FROM cars_data)
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR  <  1980
SELECT avg(Edispl) FROM car_names WHERE Make  =  "Volvo"
SELECT avg(edispl) FROM cars_data WHERE make  =  'Volvo'
SELECT max(Accelerate) ,  COUNT(*) FROM cars_data WHERE Cylinders  >  4 GROUP BY Cylinders
SELECT max(Accelerate) ,  Cylinders FROM cars_data GROUP BY Cylinders
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Makeid GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE cylinders  >  4
SELECT count(*) FROM cars_data WHERE YEAR  =  1980
SELECT count(*) FROM car_names WHERE YEAR  =  1980
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.maker WHERE T1.fullname  =  'American Motor Company'
SELECT count(*) FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model  =  T2.Model WHERE T2.Maker  =  'American Motor Company'
SELECT T1.FullName ,  T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker GROUP BY T1.Id HAVING count(*)  >  3
SELECT T1.FullName ,  T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Maker WHERE T2.ModelId  >  3
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Maker  =  'General Motors' AND T2.Weight  >  3500
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T2.maker  =  'General Motors' UNION SELECT DISTINCT T1.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid  =  T2.makeid WHERE T2.maker  =  'General Motors' AND T2.weight  >  3500
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight  <  4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight  >  3000
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT count(*) ,  T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid WHERE T2.mpg  =  (SELECT min(mpg) FROM cars_data) AND T2.makeid  =  (SELECT id FROM model_list WHERE model  =  'volvo')
SELECT count(*) FROM car_names WHERE makeid = (SELECT id FROM car_names WHERE model = 'volvo' AND makeid = 'volvo') AND accelerate  =  (SELECT min(accelerate) FROM car_names WHERE makeid = 'volvo')
SELECT count(*) FROM cars_data WHERE Accelerate  >  (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate  >  (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE CountryId  >  2 GROUP BY CountryId HAVING count(*)  >  2
SELECT count(*) FROM car_makers WHERE Country  >  2
SELECT count(*) FROM cars_data WHERE cylinders  >  6
SELECT count(*) FROM cars_data WHERE Cylinders  >  6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Makeid  =  T2.Makeid WHERE T2.Cylinders  =  4 GROUP BY T1.Model ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker JOIN cars_data AS T3 ON T3.Id  =  T2.Id WHERE T3.Horsepower  =  4 GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1
SELECT makeid ,  make FROM cars_data WHERE horsepower  >  (SELECT min(horsepower) FROM cars_data) EXCEPT SELECT makeid ,  make FROM cars_data WHERE cylinders  >  3
SELECT T1.makeid ,  T1.FullName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid  =  T2.makeid WHERE T2.Horsepower  <  4
SELECT max(T1.MPG) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id  =  T2.Id WHERE T2.Maker  =  '8 cylinders' OR T1.Year  <  1980
SELECT max(MPG) FROM cars_data WHERE cylinders  =  8 OR YEAR  <  1980
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Model  =  'Toyota' EXCEPT SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Model  =  'Ford' AND T2.Weight  <  3500
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Maker  =  'Ford' EXCEPT SELECT DISTINCT Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.MakeId  =  T2.Maker WHERE T2.Maker  =  'Ford' AND T1.Weight  <  3500
SELECT CountryName FROM countries EXCEPT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId WHERE T1.Maker  =  'Toyota'
SELECT CountryName FROM countries EXCEPT SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country  =  T2.CountryId
SELECT id ,  maker FROM car_makers GROUP BY id HAVING count(*)  >=  2 INTERSECT SELECT id ,  maker FROM model_list GROUP BY id HAVING count(*)  >  3
SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.id GROUP BY T1.id HAVING count(*)  >=  2 INTERSECT SELECT T1.id ,  T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id  =  T2.id GROUP BY T1.id HAVING count(*)  >=  3
SELECT T1.id ,  T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.countryid  =  T2.countryid WHERE T1.maker  =  'fiat' GROUP BY T1.countryid HAVING count(*)  >  3 UNION SELECT T1.id ,  T1.countryname FROM car_makers AS T1 JOIN countries AS T2 ON T1.countryid  =  T2.countryid WHERE T1.maker  =  'fiat' GROUP BY T1.countryid HAVING count(*)  >  3
SELECT T1.CountryId ,  T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId WHERE T1.FullName  =  'Fiat' UNION SELECT T1.CountryId ,  T1.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.CountryId  =  T2.CountryId WHERE T1.FullName  =  'Toyota'
SELECT Country FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation  =  'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline  =  "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline  =  'Jetblue Airways'
SELECT Abbreviation ,  Airline FROM airlines WHERE CountryAbbrev = 'USA'
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
SELECT City ,  CountryAbbrev FROM airports WHERE AirportName  =  "Alton"
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT AirportName FROM airports WHERE AirportCode  =  'AKO'
SELECT AirportName FROM airports WHERE City  =  'Aberdeen'
SELECT AirportName FROM airports WHERE City  =  "Aberdeen"
SELECT count(*) FROM flights WHERE SourceAirport  =  'APG'
SELECT count(*) FROM flights WHERE SourceAirport  =  'APG'
SELECT count(*) FROM flights WHERE DestAirport  =  'ATO'
SELECT count(*) FROM flights WHERE sourceairport  =  'ATO'
SELECT count(*) FROM flights WHERE SourceAirport  =  'Aberdeen'
SELECT count(*) FROM flights WHERE SourceAirport  =  'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Ashley' AND T1.sourceairport  =  'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'Ashley' AND T1.airline  =  'Aberdeen'
SELECT count(*) FROM flights WHERE Airline  =  'JetBlue Airways'
SELECT count(*) FROM flights WHERE Airline  =  'Jetblue Airways'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ASY' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'ASY' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'AHD' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport  =  'AHD' AND airline  =  'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.city  =  'Aberdeen' AND T1.airline  =  'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport  =  T2.airportcode WHERE T2.airportname  =  'Aberdeen' AND T1.airline  =  'United Airlines'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY DestAirport ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode  =  T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) DESC LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) LIMIT 1
SELECT DestAirport FROM flights GROUP BY DestAirport ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation ,  T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline ORDER BY count(*) LIMIT 1
SELECT Abbreviation ,  Country FROM airlines GROUP BY Abbreviation ORDER BY count(*) LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline WHERE T2.SourceAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.SourceAirport WHERE T2.SourceAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.Airline JOIN airports AS T3 ON T2.DestAirport  =  T3.AirportCode WHERE T3.AirportName  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.DestAirport WHERE T2.DestAirport  =  'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport WHERE T2.SourceAirport  =  'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.DestAirport WHERE T2.SourceAirport  =  'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.SourceAirport WHERE T2.SourceAirport  =  'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid  =  T2.SourceAirport WHERE T2.SourceAirport  =  'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.SourceAirport WHERE T2.SourceAirport  =  'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.SourceAirport WHERE T2.SourceAirport  =  'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.SourceAirport  =  'APG'
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline HAVING count(*)  >=  10
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline GROUP BY T1.Airline HAVING COUNT(*)  >=  10
SELECT * FROM flights WHERE FlightNo  <  200
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Airline  =  T2.Airline WHERE T2.FlightNo  <  200
SELECT FlightNo FROM flights WHERE Airline  =  \"United Airlines\"
SELECT FlightNo FROM flights WHERE Airline  =  'United Airlines'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT FlightNo FROM flights WHERE SourceAirport  =  'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport  =  'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.City  =  "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport  =  T2.AirportCode WHERE T2.AirportName  =  'Aberdeen'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen' OR DestAirport  =  'Abilene'
SELECT count(*) FROM flights WHERE DestAirport  =  'Aberdeen' OR DestAirport  =  'Abilene'
SELECT AirportName FROM airports EXCEPT SELECT SourceAirport FROM flights
SELECT AirportName FROM airports EXCEPT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.SourceAirport INTERSECT SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode  =  T2.DestAirport
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) ,  city FROM employee GROUP BY city
SELECT city ,  count(*) FROM employee GROUP BY city
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT city FROM employee WHERE age  <  30 GROUP BY city HAVING count(*)  >  1
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) ,  LOCATION FROM shop GROUP BY LOCATION
SELECT Manager_name ,  District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name ,  District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT min(number_products) ,  max(number_products) FROM shop
SELECT name ,  LOCATION ,  district FROM shop ORDER BY number_products DESC
SELECT name ,  location ,  district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products  >  (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id  =  T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id WHERE T1.bonus  =  (SELECT max(bonus) FROM evaluation)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id  =  T2.employee_id WHERE T1.bonus  =  (SELECT max(bonus) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT T1.name ,  count(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.name
SELECT T1.name ,  count(*) FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id  =  T2.shop_id GROUP BY T1.shop_id
SELECT sum(Bonus) FROM evaluation
SELECT sum(Bonus) FROM evaluation
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
SELECT T1.document_name ,  T2.template_id FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_name ,  T2.template_id FROM documents AS T1 JOIN ref_template_types AS T2 ON T1.template_id  =  T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_id ,  T1.template_id ,  T2.document_description FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id JOIN ref_template_types AS T3 ON T1.template_type_code  =  T3.template_type_code WHERE T2.document_name  =  "Robbin CV"
SELECT T1.document_id ,  T2.template_id ,  T2.document_name FROM documents AS T1 JOIN templates AS T2 ON T1.template_id  =  T2.template_id WHERE T2.template_details  =  'Robbin CV'
SELECT count(DISTINCT template_id) FROM documents
SELECT count(DISTINCT template_id) FROM documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID  =  T2.Template_ID WHERE T2.Template_Type_Code  =  'PPT'
SELECT count(*) FROM Documents WHERE document_id IN (SELECT template_id FROM Templates WHERE template_type_code  =  'PPT')
SELECT count(*) ,  template_id FROM Documents GROUP BY template_id
SELECT count(*) ,  T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id
SELECT T1.template_id ,  T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_id ,  t1.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id  =  t2.template_id GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*)  >  1
SELECT T1.template_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id  =  T2.template_id GROUP BY T1.template_id HAVING count(*)  >  1
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT template_id FROM templates EXCEPT SELECT template_id FROM documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT template_id ,  version_number ,  template_type_code FROM Templates
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT DISTINCT template_type_code FROM Ref_Template_Types
SELECT template_id FROM templates WHERE template_type_code  =  'PP' OR template_type_code  =  'PPT'
SELECT template_id FROM templates WHERE template_type_code  =  'PP' OR template_type_code  =  'PPT'
SELECT count(*) FROM Ref_Template_Types WHERE template_type_code  =  'CV'
SELECT count(*) FROM Ref_Template_Types WHERE template_type_description  =  'CV'
SELECT template_type_code ,  version_number FROM templates WHERE version_number > '5'
SELECT template_type_code ,  version_number FROM templates WHERE version_number  >  5
SELECT count(*) ,  template_type_code FROM Templates GROUP BY template_type_code
SELECT count(*) ,  template_type_code FROM Templates GROUP BY template_type_code
SELECT template_type_code FROM ref_template_types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code HAVING count(*)  <  3
SELECT template_type_code FROM Ref_template_types GROUP BY template_type_code HAVING count(*)  <  3
SELECT min(version_number) ,  template_type_code FROM Templates GROUP BY template_type_code
SELECT min(version_number) ,  template_type_code FROM Templates GROUP BY template_type_code
SELECT T1.template_type_code FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code  =  T2.template_type_code JOIN documents AS T3 ON T2.template_id  =  T3.template_id WHERE T3.document_name  =  "Data base"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code JOIN documents AS t3 ON t2.template_id  =  t3.template_id WHERE t3.document_name  =  "Data base"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code  =  'BK')
SELECT t1.document_name FROM documents AS t1 JOIN templates AS t2 ON t1.template_id  =  t2.template_id WHERE t2.template_type_code  =  'BK'
SELECT count(*) ,  template_type_code FROM Documents GROUP BY template_type_code
SELECT count(*) ,  template_type_code FROM Documents GROUP BY template_type_code
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code GROUP BY t1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT template_type_code FROM Ref_template_types EXCEPT SELECT template_type_code FROM documents
SELECT template_type_code ,  template_type_description FROM Ref_Template_Types
SELECT template_type_code ,  template_type_description FROM Ref_template_types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code  =  "AD"
SELECT template_type_description FROM ref_template_types WHERE template_type_code  =  "AD"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code WHERE t2.template_type_description  =  "Book"
SELECT t1.template_type_code FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code  =  t2.template_type_code WHERE t2.template_type_description  =  "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN documents AS T2 ON T1.template_type_code  =  T2.template_id WHERE T2.template_id IN (SELECT template_id FROM documents)
SELECT DISTINCT T1.template_type_description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code  =  T2.template_type_code JOIN documents AS T3 ON T2.template_id  =  T3.template_id
SELECT template_id FROM Ref_Template_Types WHERE template_type_description  =  "Presentation"
SELECT template_id FROM Ref_Template_Types WHERE template_type_description  =  'Presentation'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents WHERE document_name  =  'Summer Show'
SELECT count(*) FROM documents WHERE document_name  =  'Summer Show'
SELECT * FROM paragraphs WHERE Paragraph_Text  =  "Korea "
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id  =  T2.document_id JOIN templates AS T3 ON T1.template_id  =  T3.template_id WHERE T3.template_type_code  =  'Korea'
SELECT T2.paragraph_text ,  T1.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Welcome to NY'
SELECT T1.paragraph_id ,  T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Welcome to NY'
SELECT paragraph_text FROM Paragraphs WHERE document_id  =  "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name  =  'Customer reviews'
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id
SELECT document_id ,  count(*) FROM paragraphs GROUP BY document_id ORDER BY count(*)
SELECT document_id ,  document_name ,  count(*) FROM paragraphs GROUP BY document_id
SELECT T1.document_id ,  T1.document_name ,  count(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id GROUP BY T1.document_id
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*)  >=  2
SELECT document_id ,  document_name FROM paragraphs GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.document_id ,  t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id  =  t2.document_id GROUP BY t1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "1 to 2"
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE "%between%1%2%"
SELECT T1.document_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id  =  T2.document_id WHERE T2.paragraph_text  =  'Brazil' OR T2.paragraph_text  =  'Ireland'
SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Brazil%' INTERSECT SELECT document_id FROM paragraphs WHERE paragraph_text LIKE '%Ireland%'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age ,  Hometown FROM teacher
SELECT Age ,  Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Name FROM teacher WHERE Age  =  32 OR Age  =  33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT min(age) FROM teacher
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown ,  COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*)  >=  2
SELECT T1.Name ,  T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T1.Name ,  T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID
SELECT T1.Name ,  T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name ,  T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID ORDER BY T1.Name
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID WHERE T1.Course_ID  =  'Math'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID WHERE T2.Course_ID  =  'Math'
SELECT T1.Name ,  COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name ,  count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID  =  T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*)  >=  2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Teacher_Name FROM course_arrange WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age  <  30
SELECT Name FROM visitor WHERE Level_of_membership  >  4 ORDER BY Level_of_membership
SELECT avg(T1.Age) FROM visitor AS T1 JOIN museum AS T2 ON T1.Museum_ID  =  T2.Museum_ID WHERE T1.Level_of_membership  <  4
SELECT name ,  level_of_membership FROM visitor WHERE level_of_membership  >  4 ORDER BY age
SELECT T1.Museum_ID ,  T1.Name FROM museum AS T1 JOIN visitor AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year  <  2009
SELECT Open_Year ,  Num_of_Staff FROM museum WHERE Name  =  "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff  >  (SELECT min(num_of_staff) FROM museum WHERE open_year  >  2010)
SELECT T1.id ,  T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T1.id HAVING count(*)  >  1
SELECT T1.id ,  T1.name ,  T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.Museum_ID ,  T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID  =  T2.Museum_ID GROUP BY T1.Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name ,  T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id  =  T2.visitor_id GROUP BY T2.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.Num_of_Ticket) ,  max(T1.Num_of_Ticket) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID  =  T2.ID GROUP BY T2.ID
SELECT sum(T1.Total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID  =  T2.ID WHERE T2.Level_of_membership  =  1
SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID  =  T3.Museum_ID WHERE T3.Open_Year  <  2009 INTERSECT SELECT T1.Name FROM visitor AS T1 JOIN visit AS T2 ON T1.ID  =  T2.visitor_ID JOIN museum AS T3 ON T2.Museum_ID  =  T3.Museum_ID WHERE T3.Open_Year  >  2011
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
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id
SELECT avg(winner_rank) FROM matches WHERE best_of  =  'winner'
SELECT max(loser_rank) FROM matches WHERE loser_rank  =  'L'
SELECT loser_rank FROM matches WHERE best_of  =  'L'
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches WHERE loser_name  =  'Loser'
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*)  >  10
SELECT winner_name FROM matches WHERE year  =  2013 INTERSECT SELECT winner_name FROM matches WHERE year  =  2016
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2013 INTERSECT SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.year  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT count(*) FROM matches WHERE YEAR  =  2013 OR YEAR  =  2016
SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.country_code ,  T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'WTA Championships' INTERSECT SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id WHERE T2.tourney_name  =  'Australian Open'
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name ,  country_code FROM players ORDER BY birth_date LIMIT 1
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand  =  'L' ORDER BY birth_date
SELECT first_name ,  last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name ,  T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name ,  T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id GROUP BY T1.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id  =  t2.winner_id WHERE t2.tourney_name  =  'Australian Open' ORDER BY t2.winner_rank_points DESC LIMIT 1;
SELECT t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id  =  t2.winner_id WHERE t2.tourney_name  =  'Australian Open' GROUP BY t1.winner_name ORDER BY t2.winner_rank_points DESC LIMIT 1
SELECT loser_name ,  winner_name FROM matches GROUP BY loser_name ,  winner_name ORDER BY sum(minutes) DESC LIMIT 1
SELECT loser_name ,  winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id
SELECT T1.first_name ,  T1.last_name FROM players AS T1 JOIN rankings AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY avg(T2.ranking) DESC LIMIT 1
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
SELECT count(*) ,  tourney_date FROM matches GROUP BY tourney_date
SELECT T1.winner_name ,  T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id ORDER BY T1.winner_age DESC LIMIT 3
SELECT T1.winner_name ,  T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.winner_id ORDER BY T1.winner_age LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE loser_hand  =  'R' INTERSECT SELECT count(DISTINCT winner_id) FROM matches WHERE loser_hand  =  'L'
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id  =  T2.player_id WHERE T2.hand  =  'left' AND T1.tourney_name  =  'WTA Championships'
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name ,  T1.country_code ,  T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id  =  T2.winner_id GROUP BY T2.winner_id ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) ,  hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship  =  'Captured'
SELECT name ,  tonnage FROM ship ORDER BY name DESC
SELECT name ,  date ,  result FROM battle
SELECT max(T1.killed) ,  min(T1.killed) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id  =  T2.id GROUP BY T1.caused_by_ship_id
SELECT avg(T1.injured) FROM death AS T1 JOIN battle AS T2 ON T1.caused_by_ship_id = T2.id GROUP BY T1.caused_by_ship_id
SELECT T1.tonnage ,  T2.injured FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id WHERE T1.tonnage  =  't'
SELECT name ,  result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id  =  T2.lost_in_battle WHERE T1.ship_type  =  'Brig'
SELECT T1.id ,  T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed)  >  10
SELECT T1.id ,  T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id  =  T2.caused_by_ship_id GROUP BY T2.caused_by_ship_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander  =  'Kaloyan' AND latin_commander  =  'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE tonnage  =  225)
SELECT T1.name ,  T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id  =  T2.lost_in_battle JOIN battle AS T3 ON T2.id  =  T3.id WHERE T1.name  =  'Lettice' INTERSECT SELECT T1.name ,  T1.date FROM ship AS T1 JOIN lost_in_battle AS T2 ON T1.id  =  T2.lost_in_battle JOIN battle AS T3 ON T2.id  =  T3.id WHERE T1.name  =  'HMS Atalanta'
SELECT name ,  result ,  bulgarian_commander FROM battle WHERE id NOT IN (SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle) AND T1.name = 'English Channel'
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses
SELECT line_1 ,  line_2 FROM Addresses
SELECT count(*) FROM COURSES
SELECT count(*) FROM COURSES
SELECT course_description FROM COURSES WHERE course_name  =  'Math'
SELECT course_description FROM COURSES WHERE course_name LIKE '%Math%'
SELECT zip_postcode FROM Addresses WHERE city  =  'Port Chelsea'
SELECT zip_postcode FROM Addresses WHERE city = \"Port Chelsea\";
SELECT T1.department_name ,  T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name ,  T1.department_id FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id  =  T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
