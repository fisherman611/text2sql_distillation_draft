SELECT count(*) FROM singer WHERE is_male = 1
SELECT count(*) FROM singer
SELECT name , country , age FROM singer WHERE is_male = 'female' ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(Average) , min(Average) , max(Average) FROM singer WHERE Country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = "French"
SELECT T2.name , T2.song_release_year FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id ORDER BY T1.age LIMIT 1
SELECT name , song_release_year FROM singer WHERE age = (SELECT min(age) FROM singer)
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT T1.song_name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id ORDER BY AVG(age) > 20 LIMIT 1
SELECT singer_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT T2.name , T1.height , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id HAVING T1.capacity BETWEEN 5000 AND 10000
SELECT T1.location , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT avg(Average) , name FROM stadium GROUP BY average ORDER BY avg(Average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.stadium_id
SELECT T1.name , T2.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.concent_total FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T2.concent_total ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age > 40 INTERSECT SELECT T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.name , T2.theme , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T2.Name , T3.Theme , COUNT(*) FROM concert AS T1 JOIN singer_in_concent AS T2 ON T1.concent_Singer_ID = T2.Singer_ID JOIN singer AS T3 ON T2.Singer_ID = T3.Singer_ID GROUP BY T1.concent_Singer_ID
SELECT T2.name , count(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.singer_id = T2.singer_id GROUP BY T2.name
SELECT T2.Name , COUNT(*) FROM singer_in_concent T1 JOIN singer T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID
SELECT T1.name FROM singer AS T1 JOIN concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.year = 2014
SELECT T2.Name FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Song_release_year = 2014
SELECT T2.Name , T2.Country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Name = "Hey"
SELECT T1.name , T1.country FROM singer AS T1 JOIN singer_in_concent AS T2 ON T1.singer_id = T2.singer_id WHERE T2.song_name LIKE "%Hey%"
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Has_pet WHERE weight > 10
SELECT count(*) FROM Has_pemet WHERE weight > 10
{"sql": "SELECT T2.weight FROM Has_pemTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTSTST
SELECT sum(weight) FROM Has_pod AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM student) AND T2.pettype = 'puppy'
SELECT max(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT max(weight) , pet_type , count(*) FROM Has_pet GROUP BY pet_type
SELECT count(*) FROM has_pemet AS T1 JOIN student AS T2 ON T1.stuID = T2.stuID WHERE T2.age > 20
SELECT count(*) FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.age > 20
SELECT count(*) FROM Has_pupus AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_Ppet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM has_pet
SELECT count(DISTINCT pettype) FROM has_pet
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = 'Kittens' OR T2.PetID = 'Pupus'
SELECT T2.Fname , T2.Lname FROM Has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T1.petid = 2
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Puppy' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.pettype = 'Kitten'
SELECT T2.fname , T2.lname FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid JOIN Student T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'Pug' AND T2.pettype = 'Kittens' INTERSECT SELECT T2.fname , T2.lname FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid JOIN Student T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'Pug' INTERSECT SELECT T2.fname , T2.lname FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid JOIN Student T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'Pug' INTERSECT SELECT T2.fname , T2.lname FROM Has_pem T1 JOIN Pets T2 ON T1.petid = T2.petid JOIN Student T3 ON T1.stuid = T3.stuid WHERE T2.pettype = 'Pug' AND T2.pettype = 'Pug'
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'kittens'
SELECT T1.lname , T1.fname , T1.age , T2.pet_type FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid EXCEPT SELECT T2.pet_type FROM has_pet AS T2 JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'kittens'
SELECT StuID FROM Has_pet EXCEPT SELECT StuID FROM Has_pet WHERE petID = 'kittens'
SELECT StuID FROM Has_pem WHERE PetID NOT IN (SELECT PetID FROM Has_pem)
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.petType = 'Puppy' EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID WHERE T3.petType = 'Cat'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid = 2 AND T1.fname != "Kittens"
SELECT T2.pet_type , T2.weight , T1.age FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid ORDER BY T1.age LIMIT 1
SELECT pettype , sum(weight) FROM Has_pemt AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T3.stuid = T1.stuid WHERE T3.age = (SELECT min(age) FROM Student) GROUP BY T1.pettype
SELECT StuID , weight FROM Has_pem WHERE pet_age > 1
SELECT StuID , weight FROM Has_pet WHERE pet_age > 1
SELECT avg(age) , max(age) , pet_type FROM Has_pemus WHERE pet_type = 'cat'
SELECT avg(T2.pet_type) , max(T2.pet_type) , T1.stuID FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petID = T2.petID GROUP BY T2.pet_type
SELECT pettype , avg(weight) FROM Has_pemus AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid GROUP BY pettype
SELECT avg(weight) , pet_type FROM Has_pet GROUP BY pet_type
SELECT T1.fname , T1.age , T2.Lname FROM Students AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID
SELECT DISTINCT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.petID = T3.petID
SELECT StuID FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT StuID FROM Has_pem AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT count(*) , StuID FROM Has_pemet GROUP BY StuID
SELECT count(*) , T2.stuID FROM Has_pet AS T1 JOIN Students AS T2 ON T1.stuID = T2.stuID JOIN Pets AS T3 ON T1.petID = T3.petID GROUP BY T2.stuID
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.stuid HAVING count(*) > 1
SELECT T2.Lname FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.pemid = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.ppetage = 3 AND T3.paid = 1
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM countries WHERE countryname LIKE "%Europe%"
SELECT count(*) FROM countries WHERE countryname = 'Europe'
SELECT continent_id , continent_name , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Contid GROUP BY T1.CountryName
SELECT continent , countryname , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1 Continent = T2.Contid GROUP BY T1.Continent
SELECT count(*) FROM countries WHERE countryname = 'United States'
SELECT count(*) FROM countries
SELECT count(*) , T1.Maker , T1.FULL_NAME , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Marker = T2.Marker GROUP BY T1.Marker
SELECT T1.Maker , T1.FFullName , count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN cars_data AS T3 ON T3.Id = T2.Model WHERE T3.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id WHERE T2.Weight < (SELECT avg(T2.Weight) FROM car_makers AS T2 WHERE T2.Id = T2.Id)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker FROM car_makers WHERE country = 'United States' AND YEAR = 1970
SELECT maker , YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1
SELECT T1.Maker , T1.Year FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id ORDER BY T1.Year ASC LIMIT 1
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.MakeId WHERE T3.Maker = "Ford" AND T1.Year > 1980
SELECT continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.Continent
SELECT continent , count(*) FROM countries AS T1 JOIN continents AS T2 ON T1.Continent = T2.Continent GROUP BY T1.CountryName
SELECT countryname FROM car_makers GROUP BY countryname ORDER BY count(*) DESC LIMIT 1
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , t2.balance FROM car_makers AS t1 JOIN car_names AS t2 ON t1.id = t2.make_id JOIN cars_data AS t3 ON t3.id = t2.id GROUP BY t1.id
SELECT count(*) , T1.Maker , T1.FFullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT Accelerute FROM cars_data WHERE YEAR = 2013 AND Maker = "Amc Hornet Sportabout"
SELECT accelerate FROM cars_data WHERE YEAR = 2012 AND MAKING = 'Amc hornet'
SELECT count(*) FROM car_makers WHERE country_name = "France"
SELECT count(*) FROM country AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid WHERE countryname = "France"
SELECT count(*) FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id JOIN country AS T3 ON T1.country_id = T3.country_id WHERE T3.countryName = "USA"
SELECT count(*) FROM cars_data WHERE country = "United States"
SELECT avg(MGPS) FROM cars_data WHERE Cylinders = 4
SELECT avg(MGPS) FROM cars_data WHERE Cylinders = 4
SELECT T1.MGPl FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make = 'Ford' AND T1.Cylinders = 8 AND T1.Year = 1974
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND Cylinders = 8
SELECT countryname , model FROM car_makers
SELECT maker , model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.MakeId
SELECT country , maker FROM car_makers GROUP BY country , maker HAVING count(*) >= 1
SELECT T1.countryname , T1.id FROM country AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.countryid GROUP BY T1.countryname HAVING count(*) >= 1
SELECT id FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(T1.Weight) , T1.Year FROM cars_data AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id GROUP BY T1.Year
SELECT countryname FROM countries WHERE continent = 'Europe' GROUP BY countryname HAVING count(*) >= 3
SELECT T2.CountryName FROM country AS T1 JOIN country_list AS T2 ON T1.CountryId = T2.CountryId WHERE T1.Continent = "Europe" GROUP BY T1.CountryName HAVING count(*) >= 3
SELECT max(MGPH) , T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.MakeId JOIN model_list AS T3 ON T1.Model = T3.Model WHERE T3.Cylinders = 3
SELECT max(T1.MGPA) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model WHERE T3.Maker = "Ford" GROUP BY T1.id ORDER BY T2.MGPL_DESC LIMIT 1
SELECT T3.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN model_list AS T3 ON T2.Model = T3.Model ORDER BY T1.MGPH DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT avg(Edispl) FROM cars_data WHERE maker = "VOLVO"
SELECT max(accelerate) , count(*) FROM cars_data WHERE cylinders = 2
SELECT max(accelerate) FROM cars_data WHERE cylinders = "1"
SELECT maker FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM car_makers GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.id WHERE T1.FULL_NAME = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.Model = T3.Model JOIN cars_data AS T4 ON T4.id = T3.MakeId WHERE T3.Make = "American Motor Company"
SELECT maker , fullname FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT maker , id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT maker FROM car_makers WHERE country = "United States" AND weight > 3500
SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model WHERE T3.weight > 3500 INTERSECT SELECT DISTINCT maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid JOIN cars_data AS T3 ON T3.id = T2.model
SELECT YEAR FROM cars_data WHERE WEIGHT BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE WEIGHT > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT min(acceleration) , id FROM cars_data WHERE cylinder_count = 2 AND maker = "volvo"
SELECT count(*) , MIN(acceleration) FROM cars_data WHERE model_list.ModelId = "volle"
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM cars_data WHERE acceleration > (SELECT max(acceleration) FROM cars_data)
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "General Motors"
SELECT count(*) FROM car_makers WHERE maker != "Ford" AND maker != "Ford";
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model JOIN car_makers AS T3 ON T1.Id = T3.Id WHERE T3.Maker = "Ford" GROUP BY T2.Model ORDER BY T3.MakeId = 4 ORDER BY T2.Model DESC LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId JOIN car_makers AS T3 ON T3.Id = T2.Id JOIN countries AS T4 ON T4.CountryId = T3.CountryId WHERE T3.Maker = "Ford" GROUP BY T2.Model ORDER BY COUNT(*) DESC LIMIT 4
SELECT T1.Maker , T1.FName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Make != (SELECT T1.Maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T2.Model = (SELECT T1.Model FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Id WHERE T1.Max(PolePower) > 3) AND T1.Made = 1 GROUP BY T1.MakeId)
SELECT maker , COUNT(*) FROM car_makers WHERE country != 'United States' AND id NOT IN (SELECT id FROM cars_data WHERE cylinders < 4) GROUP BY maker ORDER BY count(*) DESC LIMIT 1;
SELECT max(MGPS) , YEAR FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MGPS) , id FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != 'Ford Motor Company'
SELECT DISTINCT maker FROM car_makers WHERE weight < 3500 AND maker != 'Ford'
SELECT countryname FROM country WHERE countryid NOT IN (SELECT countryid FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT countryid FROM cars_data)
SELECT maker , maker FROM car_makers GROUP BY maker HAVING count(*) >= 2 INTERSECT SELECT maker FROM car_makers GROUP BY maker HAVING count(*) >= 3
{"sql": "SELECT id , maker FROM car_makers WHERE maker != 'Apple' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Ford' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple' AND maker != 'Range' AND maker != 'Ford' AND maker != 'Apple' AND maker != 'Apple
SELECT id , countryname FROM car_makers WHERE maker = 'Ford' OR maker = 'Ford' AND countryname = 'France'
SELECT id , countryname FROM car_makers WHERE maker = "Ford" OR maker = "Ford"
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.Airline WHERE T3.Airline = "JetBlue Airways"
SELECT T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode WHERE T1.Airline = 'Jetblue Airways'
SELECT airportname FROM airports WHERE airportcode = "JetBlue Airways"
SELECT airportname FROM airports WHERE airportcode = 'JETBLUE'
SELECT airportname , airportcode FROM airports WHERE country = 'USA'
SELECT airportname , airportcode FROM airports WHERE country = 'USA' AND airportcode != 'Ile-Beaumont'
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
SELECT T1.city , T1.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT T1.city , T2.country FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.FlightNo = 'Alton Airport'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberport"
SELECT count(*) FROM flights WHERE airline = "APG"
SELECT count(*) FROM flights WHERE FlightNo LIKE "%APG%"
SELECT count(*) FROM flights WHERE FlightNo = 'ATOPAY'
SELECT count(*) FROM flights WHERE SourceAirport = 'ATA'
SELECT count(*) FROM flights WHERE airline = "Airports - City Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = 'Aberport'
SELECT count(*) FROM flights WHERE sourceairport = "Aberdeen" AND destairport = "Ashley"
SELECT count(*) FROM flights WHERE SourceAirport = "Aberport" AND DestAirport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "ASY" AND T1.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.airline = 'United Airlines' AND T2.city = 'ASY Airport'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "AHD Airport" AND T1.Airline = "United Airlines"
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'Aberona' AND T1.Airline = 'United Airlines'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T2.airportcode ORDER BY count(*) LIMIT 1
SELECT T1.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode , T2.country FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport ORDER BY count(*) LIMIT 1
SELECT T1.airportname , T2.airline FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.airportname ORDER BY count(*) LIMIT 1
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.airline = 'AHD'
SELECT T2.airportcode FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T1.sourceairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.destinationairport = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T2.airline = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T2.airline = 'CVO'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.airline = 'CVO' EXCEPT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportname HAVING count(*) >= 10
SELECT T2.airportname FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.sourceairport HAVING count(*) < 200
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T2.flightno > 200 GROUP BY T1.airportname HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE AirportCode = "United Airlines"
SELECT FlightNo FROM flights WHERE airline = 'United Airlines'
SELECT flightno FROM flights WHERE sourceairport = "APG"
SELECT FlightNo FROM flights WHERE Airline = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberport" AND DestAirport = "Aberport"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.SourceAirport = "Abilene" OR T2.SourceAirport = "Aberdeen"
SELECT count(*) FROM airports WHERE airportname = 'Abilene' OR airportcode = 'Aberon'
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DISTINCT DostAirport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM Employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.city
SELECT count(*) , city FROM employee GROUP BY city
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T3.shop_id = T2.shop_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT T2.city FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T2.age < 30 GROUP BY T2.city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT T2.name , T1.district FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.district ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , city , district FROM shop ORDER BY number_of_commodity DESC
SELECT name , city , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T2.name FROM evaluation AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T2.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from = (SELECT max(start_from) FROM hiring) INTERSECT SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id WHERE T1.start_from = (SELECT max(start_from) FROM hiring)
SELECT name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.Bonus = (SELECT max(Bonus) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT manager_name FROM employee EXCEPT SELECT employee_id FROM evaluation
SELECT T2.name FROM hiring AS T1 JOIN employee AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM hiring AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID JOIN shop AS T3 ON T1.Shop_ID = T3.Shop_ID GROUP BY T1.Shop_ID
SELECT count(*) , T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT sum(Bonus) FROM evaluation
SELECT sum(Bonus) FROM evaluation WHERE Year_awarded = 2
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 1000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , document_id FROM Documents WHERE document_description LIKE "%w%"
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT t1.document_id , t2.layout_id , t3.document_description FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id JOIN Paragraphs AS t3 ON t1.document_id = t3.document_id WHERE t2.template_type_code = "Robbin CV"
SELECT T1.paper_id , T2.layout_id , T2.description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id WHERE T3.document_details = 'text'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.Other_Details = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Ref_template_types AS T3 ON T2.template_type_code = T3.template_type_code WHERE T3.template_type_description = "PPT"
SELECT T1.Layout_ID , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.Layout_ID , count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_ID
SELECT T1.id , T2.type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T2.type ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T2.type FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN paragraphs AS T3 ON T2.document_id = T3.document_id GROUP BY T1.id HAVING COUNT(*) > 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM documents)
SELECT template_id FROM templates WHERE template_type_code NOT IN (SELECT template_type_code FROM templates)
SELECT count(*) FROM templates
SELECT count(*) FROM Templates
SELECT layout_id , version_number , layout_type FROM templates
SELECT T1.id , T2.version_number , T3.type_name FROM templates AS T1 JOIN document_types AS T2 ON T1.template_type_code = T2.template_type_code JOIN template_details AS T3 ON T1.version_number = T2.version_number
SELECT DISTINCT t1.layout_type FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T1.Template_ID FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "PP" OR T2.Template_Type_Description = "PPT"
SELECT T1.id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T1.template_type_code = "PP" OR T1.template_type_code = "PPT"
SELECT count(*) FROM templates AS t1 JOIN ref_template_types AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = 'CV'
SELECT count(*) FROM Templates WHERE template_type_code = "CV"
SELECT T1.edition_number , T2.layout_type FROM templates AS T1 JOIN layouts AS T2 ON T1.version_number = T2.edition_number WHERE T1.version_number > 5
SELECT T1.Edition_Number , T2.Layout_Type_Name FROM Templates AS T1 JOIN Ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Version_Number > 5
SELECT template_type_code , count(*) FROM templates GROUP BY template_type_code
SELECT T1.Layout_Type , count(*) FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_Type
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.template_type_code FROM Ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_code HAVING count(*) < 3
SELECT T1.Template_Type_Description FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(equipment_count) , T1.Layout_Type_code FROM tables AS T1 JOIN templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Layout_Type_code
SELECT min(Version_Number) , T2.Layout_Type_Code FROM templates AS T1 JOIN ref_template_types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T2.Layout_Type_Code
SELECT T2.Layout_Type_Code FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T1.Date_Effective_To = "Data base"
SELECT T1.layout_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T2.document_name = "Data base"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.layout_type_count , T1.layout_type_name FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_code
SELECT T1.layout_type_count , T1.layout_type FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.layout_type_count
SELECT T1.Layout_Type FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code GROUP BY T1.Layout_Type_ID ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_code FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.layout_type FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code EXCEPT SELECT DISTINCT t2.layout_type_code FROM documents AS t2 JOIN ref_template_types AS t3 ON t2.template_id = t3.template_id
SELECT DISTINCT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code EXCEPT SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN documents AS t2 ON t1.template_type_code = t2.template_type_code
SELECT T2.Template_Details FROM templates AS T1 JOIN documents AS T2 ON T1.Template_ID = T2.Template_ID JOIN ref_template_types AS T3 ON T1.Template_Type_Code = T3.Template_Type_Code WHERE T3.Template_Type_Description = "Layout Type"
SELECT T1.template_type_code , T2.template_details FROM Ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT t1.layout_type_code FROM templates AS t1 JOIN document_list AS t2 ON t1.template_id = t2.document_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t3.template_type_description = "AD"
SELECT t2.description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t1.template_type_code = 'AD'
SELECT t1.layout_type_name FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_description = "Book"
SELECT t2.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t1.template_type_description = "Book"
SELECT DISTINCT t1.layout_type_description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN ref_template_types AS t3 ON t1.template_type_code = t3.template_type_code WHERE t2.document_name = "text"
SELECT DISTINCT t1.description FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id JOIN paragraphs AS t3 ON t2.document_id = t3.document_id WHERE t3.paragraph_text != ""
SELECT T1.layout_id FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id JOIN ref_template_types AS T3 ON T1.template_type_code = T3.template_type_code WHERE T3.template_type_description = "Presentation"
SELECT T1.document_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id JOIN Paragraphs AS T3 ON T1.document_id = T3.document_id WHERE T2.template_type_code = "Presentation"
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT t2.Other_Details FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = "Korea"
SELECT t2.Other_Details FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.Other_Details = "Korea"
SELECT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T2.Paragraph_ID , T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Welcome to NY"
SELECT T2.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.paper_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY T1.paper_id
SELECT count(*) , T1.Template_ID FROM templates AS T1 JOIN paragraphs AS T2 ON T1.Template_ID = T2.Document_ID GROUP BY T1.Template_ID ORDER BY T1.Template_ID
SELECT T1.document_id , T2.Paragraph_Text , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING COUNT(*) >= 2
SELECT T1.document_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id , T1.Paragraph_Text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T2.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.paper_id ORDER BY count(*) LIMIT 1
SELECT document_id FROM Paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 1 AND count(*) <= 2
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Brazil" INTERSECT SELECT T1.paper_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = "Ireland"
SELECT t1.document_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.text = 'Brazil' INTERSECT SELECT t1.document_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT name FROM teacher WHERE age = 32 OR age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Grade LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T2.Age LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , count(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING count(*) >= 2
SELECT T2.Name , T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.name , T2.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T2.name , T1.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T1.name ASC
SELECT T2.Name , T1.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T2.name FROM course_arrange AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T1.teacher_id = T3.teacher_id WHERE T2.course = 'math'
SELECT Name FROM teacher WHERE Name = 'Math'
SELECT T2.name , count(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.name
SELECT T1.name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Teacher_ID HAVING COUNT(*) >= 2
SELECT name FROM teacher WHERE teacher_id IN (SELECT teacher_id FROM course_arrange GROUP BY teacher_id HAVING count(*) >= 2)
SELECT name FROM teacher WHERE teacher_id NOT IN (SELECT teacher_id FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age DESC
SELECT museum_id , name FROM museum GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Num_of_Staff) FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Open_Year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Pl Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.Museum_ID , T1.Name , T1.Age FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID HAVING count(*) > 1
SELECT T2.id , T2.name , T2.level_of_membership FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T1.total_spent = (SELECT max(total_spent) FROM visit)
SELECT museum_id , name FROM visit GROUP BY museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id GROUP BY T1.visitor_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Num_of_Ticket) , max(T2.Num_of_Ticket) FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID JOIN visitor AS T3 ON T1.visitor_ID = T3.ID WHERE T3.Level_of_membership = 'G'
SELECT sum(T2.total_spex) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_spent = 0 AND T2.open_year < 2009 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T1.total_sp spent = 0 AND T2.open_year > 2011
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit WHERE Open_Year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT birth_date , first_name FROM players WHERE country_code = "USA"
SELECT birth_date , first_name , last_name FROM players WHERE country_code = "USA"
SELECT avg( loser_age ) , avg( winner_age ) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(win_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT loser_rank FROM matches GROUP BY loser_id ORDER BY sum( loser_rank ) DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT state_code) FROM matches WHERE winner_age != "0"
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) > 10
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num = 2 AND T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.state_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.state_abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(2) FROM matches)
SELECT T2.first_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = (SELECT max(3) FROM matches)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T1.birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.round = 1 AND T2.year = 1 ORDER BY T2.birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.tourney_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T2.loser_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.winner_age , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY T1.winner_age DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open tourney" ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" AND T2.ranking_date = "2014-01-12" GROUP BY T1.name ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.name , T2.name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.name ORDER BY min(T1.minutes) DESC LIMIT 1
SELECT winner_name , loser_name FROM matches WHERE round = (SELECT max(round) FROM matches)
SELECT avg(leader_rank) , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.first_name , T1.last_name
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT T2.rank_points , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id
SELECT count(*) , T1.state FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.state
SELECT count(*) , state FROM players GROUP BY state
SELECT T1.abbr FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.abbr ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , count(*) FROM rankings GROUP BY ranking_time
SELECT T2.ranking , count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.ranking
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT YEAR , COUNT(*) FROM matches GROUP BY YEAR
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.name ORDER BY T1.rank ASC LIMIT 3
SELECT T1.name , T1.rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE tourney_name = "WTA Championships" AND hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY sum(T2.rank_points) DESC LIMIT 1
SELECT hand , count(*) FROM players GROUP BY hand
SELECT hand , count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.name = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(dev toll) , min(dev toll) FROM death
SELECT injured , count(*) FROM death GROUP BY injured ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.injured FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , RESULT FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.lost_in_bATTLE WHERE T2.ship_type = "Brig"
SELECT count(*) , T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.deaths) > 10
SELECT cast( t1.id AS STRING) , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t2.caused_by_ship_id ORDER BY sum(injured) DESC LIMIT 1
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.latr_commander = 'Baldwin I' INTERSECT SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.id WHERE T1.bulgarian_commander = 'Kaloyan'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT ship.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.debates_id WHERE T1.tonnage = 225)
SELECT T2.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.deb_id WHERE T1.name = 'Littice' INTERSECT SELECT T2.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.deb_id WHERE T1.name = 'HMS Atalanta'
SELECT name , result FROM battle WHERE bulgarian_commander = "null" AND name NOT IN (SELECT name FROM ship WHERE lost_in_battle = "English Channel")
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id FROM addresses WHERE line_1 = "1" INTERSECT SELECT address_id FROM addresses WHERE line_2 = "2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM DEGREATS AS T1 JOIN DEPARTMENT AS T2 ON T1.department_id = T2.department_id
SELECT count(*) FROM DEGETPROGRAMS
SELECT department_description FROM DEPT_PROACTORS ORDER BY department_name
SELECT course_description FROM DEG_PROGRAMS WHERE degree_program_name = 'Math'
SELECT T1.zip_postcode FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id WHERE T2.first_name = "Port" AND T2.last_name = "Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T2.dedegree_program_id FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , T1.department_id FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Department AS T1 JOIN Degree_Proprogram AS T2 ON T1.department_id = T2.department_id
SELECT count(DISTINCT department_id) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(DISTINCT degree_summary_name) FROM degree_programs
SELECT count(*) FROM DEGETPROGRAMS WHERE degree_program_name = 'Engineering'
SELECT count(*) FROM DEPT_PROPROGRAMS WHERE degree_program_id = 2 AND department_name = 'Engineering'
SELECT T1.section_name , T1.section_description FROM Sections AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT T2.section_name , T2.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM sections AS T1 JOIN course_programs AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.name , T1.id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T1.status = 'Undergrad' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.department_description FROM departments AS t1 JOIN degree_programs AS t2 ON t1.department_id = t2.department_id WHERE t1.department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.degree_program_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'MDE' AND T3.degree_program_id = 2
SELECT T2.first_name , T2.middle_name , T2.middle_name , T1.student_id , T1.date_left FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_program_id = 2 GROUP BY T1.student_id ORDER BY T1.date_left
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor Degree Program'
SELECT T2.first_name , T2.middle_name , T2.last_name FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN degree_programs AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelers'
SELECT T1.degree_program_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.course_name , T1.department_name FROM student_enrolment AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.degree_program_id , T1.degree_summary_name FROM student_enrolment_courses AS T1 JOIN degree_programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T2.student_id FROM student_enrolment AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_count , T2.student_enrolment_count FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id WHERE T1.department_id = T2.degree_program_id GROUP BY T1.first_name , T1.middle_name , T1.last_name ORDER BY T2.student_count DESC LIMIT 1
SELECT T1.academic_session_name FROM sections AS T1 JOIN student_enrolment AS T2 ON T1.section_id = T2.semester_id WHERE T2.degree_program_id NOT IN (SELECT T1.course_id FROM student_enrolment AS T3 JOIN courses AS T4 ON T3.course_id = T4.course_id WHERE T4.course_name = 'Academic Session' AND T3.student_id IN (SELECT student_id FROM student_enrolment WHERE date_left = 'null'))
SELECT name FROM academic_sessions WHERE student_count = 0
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id JOIN Courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.course_name HAVING count(*) >= 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM COURSE AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T3.last_name FROM student_enrolment AS T3 JOIN degree_programs AS T4 ON T3.degree_program_id = T4.degree_program_id
SELECT T2.date , T1.student_id FROM student_enrolment_courses AS T1 JOIN student_enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_enrolment_id HAVING count(*) >= 2
SELECT T2.date , T1.student_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT semester_id FROM student_enrolment WHERE degree_program_id = (SELECT degree_program_id FROM student_enrolment WHERE degree_program_id = 'MST') GROUP BY T2.semester_id ORDER BY date_first_registered LIMIT 1)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT T3.semester_id FROM student_enrolment AS T3 JOIN student_enrolment AS T2 ON T3.student_id = T2.student_id ORDER BY T3.semester_id DESC LIMIT 1)
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id = "Master's Degree" ORDER BY T1.date_left ASC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = (SELECT max(semester_id) FROM student_enrolment GROUP BY T2.student_id ORDER BY date_left DESC LIMIT 1)
SELECT T1.first_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.address_id != (SELECT address_id FROM Addresses WHERE address_id = (SELECT current_address_id FROM Students))
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.perminent_address_id != T2.address_id
SELECT T1.address_id , T1.line_1 , T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_left) FROM students
SELECT avg(date_left) FROM students
SELECT date_left , date_first_registered FROM students ORDER BY date_first_registered LIMIT 1
SELECT min(transcript_date) , T1.transcript_details FROM transcripts AS T1 JOIN student_enrolment AS T2 ON T1.transcript_id = T2.transcript_id GROUP BY T1.transcript_id
SELECT count(*) FROM students WHERE date_left = 'current'
SELECT count(*) FROM students
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1
SELECT count(*) , T1.department_id FROM student_enrolment AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T1.department_id
SELECT max(count(*)) , curriculum_id FROM student_enrolment_courses GROUP BY curriculum_id
SELECT date_left FROM student_enrolment GROUP BY date_left ORDER BY count(*) LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.ssn = 'Bachelor'
SELECT T2.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Prograg AS T3 ON T1.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Masters' INTERSECT SELECT T2.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id JOIN Degree_Prograg AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelers'
SELECT count(DISTINCT T1.current_address_id) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY student_id DESC
SELECT other_details FROM students ORDER BY student_id DESC
SELECT section_name FROM sections WHERE course_id = 3;
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T2.first_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.permanent_address_id = (SELECT T3.perminent_address_id FROM students AS T3 WHERE T3.cell_mobile_number = 09700166582) INTERSECT SELECT T2.first_name FROM students AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id WHERE T1.permanent_address_id = (SELECT T3.permient_address_id FROM students AS T3 WHERE T3.cell_mobile_number = 09700166582)
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.perminent_address_id = T2.address_id WHERE T2.zip_postcode = 'Haiti' OR T1.cell_mobile_number = 09700166582
SELECT T2.Content FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel ORDER BY T1.Series_name
SELECT T2.Title FROM TV_series AS T1 JOIN cartoon AS T2 ON T1.channel = T2.channel ORDER BY T1.episode
SELECT DISTINCT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.id = T2.id WHERE T2.Directed_by = "Joseph Kuhr"
SELECT T2.title , T1.direction FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel ORDER BY T2.air_date
SELECT title , directed_by FROM cartoon ORDER BY released_date
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT DISTINCT Directed_by FROM TV_series WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.Country , COUNT(*) FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
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
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT series_name FROM TV_series WHERE id = (SELECT channel FROM TV_series WHERE title = "The Rise of the Blue Beetle")
SELECT t1.title FROM cartoon AS t1 JOIN TV_series AS t2 ON t1.channel = t2.channel WHERE t1.title = "The Rise of the Blue Beetle"
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.channel WHERE T2.series_name = "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY T1.rating DESC LIMIT 3
SELECT T1.episode , T1.rating FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode GROUP BY T1.episode ORDER BY count(*) DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT T1.air_date FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.episode = T2.id WHERE T2.series_name = "A Love of a Lifetime"
SELECT air_date FROM TV_series WHERE title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Series_name = "A Love of a Lifetime"
SELECT avg(TV_series.weekly_rank) FROM TV_series AS T1 JOIN TV_series AS T2 ON T1.episode = T2.episode WHERE T1.title = "A Love of a Lifetime"
SELECT T2.Series_name , T1.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT T2.title FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id WHERE T1.episode = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T1.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1
SELECT package_option , T1.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Pixel_aspect_ratio_PAR = 100 AND T1.Hight_definition_TV = 100 AND T1.Content = "HD TV"
SELECT package_option , T1.id FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.Country = "USA" AND T1.Hight_definition_TV = "HD"
SELECT T2.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.id WHERE T3.Directed_by = "Todd Casey" AND T2.Written_by = "Animation"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T1.channel = T3.channel WHERE T3.Series_name = "Animation" AND T2_written_by = "Todd Casey"
SELECT Country FROM TV_channel WHERE Country NOT IN (SELECT Country FROM TV_channel WHERE Content = "Todd Casey")
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT T2.Series_name , T1.Country FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel JOIN TV_channel AS T3 ON T3.id = T2.id WHERE T3.Directed_by = "Ben Jones" INTERSECT SELECT T2.Series_name , T1.Country FROM TV_channel AS T1 JOIN TV_channel AS T2 ON T1.id = T2.id JOIN TV_channel AS T3 ON T2.id = T3.id WHERE T3.Directed_by = "Michael Chang"
SELECT T1.Country , T1.Series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.Country , T1.Series_name FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "United States" INTERSECT SELECT id FROM TV_channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT package_option FROM TV_channel WHERE country != "United States" AND directed_by != "Ben Jones"
SELECT package_option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 2000000000
SELECT count(*) FROM people AS t1 JOIN poker_player AS t2 ON t1.people_id = t2.people_id WHERE t1.height = 100
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T2.Final_table_made , T1.Best_finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Best_finish DESC LIMIT 1
SELECT DISTINCT T2.Final_Table_Made , T1.Best_Finish FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(Earnings) FROM poker_player WHERE Earnings = "Car Gamers"
SELECT avg(Earnings) FROM poker_player WHERE People_ID = 2
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Earnings) FROM poker_player WHERE Earnings < 200000
SELECT max(fall_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings = 2000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Final_Table_Made
SELECT T2.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T1.earnings LIMIT 1
SELECT T2.birth_date FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id ORDER BY T1.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player WHERE People_ID = (SELECT People_ID FROM people ORDER BY Height DESC LIMIT 1)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID = (SELECT People_ID FROM people WHERE Height > 200)
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING count(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE
SELECT created FROM votes WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , set_up_time FROM votes
SELECT contestant_number , contestant_name FROM CONESTANTS GROUP BY contestant_number HAVING count(*) >= 2
SELECT T1.contant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT state , phone_number , date FROM votes WHERE contestant_number = 'Tabatha Gehling'
SELECT T2.state FROM votes AS T1 JOIN candidates AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T2.state FROM votes AS T1 JOIN candidates AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE "%Al%"
SELECT name FROM country WHERE indeleasyyear > 1950 GROUP BY countrycode ORDER BY countrycode
SELECT name FROM country WHERE countrycode = "USA" AND indepyear > 1950
SELECT count(*) FROM country WHERE government_form = 'Republic'
SELECT count(*) FROM country WHERE countrycode = 'Republic'
SELECT sum(T1.Territory) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Caribbean'
SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Caribbean'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT continent FROM country WHERE countrycode = 'Anguila'
SELECT district FROM city WHERE name = 'Kabby'
SELECT district FROM city WHERE name = 'Kabbe'
SELECT name FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode = 'Aruba' GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT population , min(lisens) FROM country AS T1 JOIN city AS T2 ON T1.id = T2.countrycode WHERE countrycode = 'Brazil' GROUP BY T1.id
SELECT population , average(lifetemperature) FROM city WHERE countrycode = 'Brazil'
SELECT countrycode , population FROM country WHERE continent = 'Anguila'
SELECT countrycode , population FROM country WHERE continent = 'South Central South' AND region = 'South Central South' AND countrycode = 'Anguila'
SELECT avg(liveexpectancy) FROM country WHERE continent = "Central Africa"
SELECT avg(lath) FROM country AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode JOIN city AS t3 ON t2.cityid = t2.cityid WHERE t1.region = 'Central Africa'
SELECT name FROM country WHERE continent = 'Asia' AND min(linfusings) = (SELECT min(linfusings) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' ORDER BY alive LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE continent = 'Asia'
SELECT avg(lath) FROM country AS T1 JOIN city AS T2 ON T1.id = T2.countrycode WHERE countrycode = 'Africa' AND countrycode = 'Republic'
SELECT avg(liveexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE continent = 'Africa' AND statecode = 'Republic'
SELECT sum(T1.Temp) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.CountryCode = 'Europe'
SELECT sum(T1.Population) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'Asia' OR T1.Region = 'Europe'
SELECT count(*) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) , count(*) FROM country WHERE countrycode = 'US'
SELECT avg(population) , count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "America"
SELECT count(DISTINCT type) FROM countrylanguage WHERE countrycode = 'Africa'
SELECT count(DISTINCT type) FROM countrylanguage WHERE countrycode = 'Africa'
SELECT sum(Percentage) FROM countrylanguage WHERE CountryCode = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE language = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT count(*) FROM countrylanguage WHERE countrycode = 'Afghanistan'
SELECT name FROM country WHERE region = "United States" GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN city AS T3 ON T1.countrycode = T3.countrycode GROUP BY T2.name ORDER BY sum(percentage) DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countryGROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.cityid = T3.id WHERE T2.name = 'English' AND T2.name = 'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.name = 'English' AND T2.name = 'Dutch'
SELECT name FROM countrylanguage WHERE language = "English" INTERSECT SELECT name FROM countrylanguage WHERE language = "French"
SELECT name FROM country WHERE name != 'United States' AND name != 'Canada' AND countrycode = 'French' INTERSECT SELECT name FROM country WHERE name != 'United States' AND countrycode = 'English'
SELECT name FROM countrylanguage WHERE isofficial = 'English' INTERSECT SELECT name FROM countrylanguage WHERE isofficial = 'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.IsOfficial = 'English' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.IsOfficial = 'French'
SELECT count(DISTINCT continent) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T1.language = 'Chinese'
SELECT count(*) FROM country WHERE continent = "Asia" AND language = "Chinese"
SELECT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T1.countrycode = T3.code WHERE T2.language = "English" OR T2.language = "Dutch"
SELECT DISTINCT district FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T1.district = T3.district WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT countrycode FROM countrylanguage WHERE language = "English" OR language = "Dutch"
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN city AS T3 ON T2.CountryCode = T3.CountryCode WHERE T2.Continent = 'Asia' GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode JOIN city AS T3 ON T2.CountryCode = T3.CountryCode WHERE T2.Region = 'Republic' AND T2.Name = 'United States' AND T2.CountryCode = 'US' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Region = 'Republic' GROUP BY T1.Language HAVING count(*) = 1
SELECT name FROM city WHERE population = (SELECT max(population) FROM city) ORDER BY population DESC LIMIT 1
SELECT name FROM city WHERE countrycode = 'United States' AND population = (SELECT max(population) FROM city WHERE countrycode = 'United States') AND language = 'English'
SELECT name , population , average(lifeexpectancy) FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name , population , max(lifeface) FROM country WHERE continent = 'Asia' GROUP BY countrycode
SELECT avg(living_year) FROM countrylanguage WHERE language != "English"
SELECT avg(lath) FROM countrylanguage WHERE language != "english"
SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' EXCEPT SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT name FROM country WHERE head_of_state = Beatrix INTERSECT SELECT name FROM countrylanguage WHERE isofficial = 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Beatrix"
{"sql": "SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE percentage = 1 AND id = 1) AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode = 'USA' AND id = 1 AND countrycode =
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "America" AND indepyear < 1930
SELECT countrycode FROM country WHERE continent = "Europe" AND surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = "Europe")
SELECT countrycode FROM country WHERE continent = "Europe" GROUP BY countrycode HAVING SURSEASEArea > (SELECT min(surfacarearea) FROM country WHERE continent = "Europe")
SELECT name FROM country WHERE continent = 'Africa' AND countrycode != 'Asia'
SELECT name FROM country WHERE continent = 'Africa' AND countrycode NOT IN (SELECT countrycode FROM country WHERE region = 'Asia') GROUP BY countrycode ORDER BY population LIMIT 1
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT min(population) FROM country WHERE countrycode = 'Africa')
SELECT name FROM city WHERE countrycode = 'Asia' AND population > (SELECT min(population) FROM country WHERE countrycode = 'Africa')
SELECT countrycode FROM country WHERE name NOT IN (SELECT countrycode FROM countrylanguage WHERE language = 'english')
SELECT countrycode FROM country WHERE region != "English"
SELECT countrycode FROM countrylanguage WHERE language != "english"
SELECT countrycode FROM countrylanguage EXCEPT SELECT countrycode FROM country WHERE language = "english"
SELECT countrycode FROM country WHERE region != "Republic" AND countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English") GROUP BY countrycode HAVING count(*) != 1)
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.region != "United States" AND T2.region != "Republic"
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM city WHERE language = "English"
SELECT name FROM city WHERE countrycode = "Europe" EXCEPT SELECT name FROM countrylanguage WHERE language = "English"
SELECT DISTINCT T1.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.region = 'Asia' AND T1.industrialtype = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.indpyear = 2000 AND T2.official = 'Chinese' AND T1.continent = 'Asia'
SELECT name , founded_year , territory FROM country ORDER BY population LIMIT 1
SELECT name , founded , countrycode FROM country ORDER BY population LIMIT 1
SELECT count(*) , T1.name , T1.head_of_state FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T1.continent = 'South America' ORDER BY T2.population DESC LIMIT 1
SELECT name , population , leader FROM country WHERE countrycode = "South America" ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.Name HAVING count(*) >= 3
SELECT T1.name , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode GROUP BY T2.countrycode HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT district , count(*) FROM city GROUP BY district HAVING max(population) - avg(population) > 0
SELECT government_type , count(*) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.countrycode JOIN city AS t3 ON t1.district = t3.district JOIN countrylanguage AS t4 ON t1.countrycode = t4.countrycode WHERE t2.region = 'Government' AND t2.LifeExpectancy > 72 GROUP BY t1.government_type
SELECT count(*) , type FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE T2.Lifeexpectancy > 72 GROUP BY type
SELECT avg(lisens) , count(*) FROM country WHERE continent = "South America" AND avg(lisens) < 72
SELECT continent , sum(population) , avg(linfap) FROM country WHERE avg(linfap) < 72 GROUP BY continent
SELECT name , area FROM city ORDER BY population DESC LIMIT 5
SELECT name , countrycode FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM city ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(T1.Population) , avg(T1.Territory) FROM country AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Continent = 'North America' AND T1.Territory > 3000
SELECT sum(population) , avg(t2.territory) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t1.continent = 'North America' AND t2.population > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT language FROM countrylanguage GROUP BY language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language , T1.District , COUNT(*) FROM city AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.District ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationcode , sum(percentage) FROM countrylanguage GROUP BY nationcode ORDER BY sum(percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode WHERE language = "Spanish" GROUP BY T1.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT countrycode FROM countrylanguage WHERE language = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.code FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.countrycode JOIN city AS T3 ON T2.countrycode = T3.countrycode WHERE T2.name = 'Spanish' GROUP BY T1.code HAVING count(*) > 1
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT name FROM conductor WHERE nationality != "USA"
SELECT name FROM conductor WHERE nationality != "USA"
SELECT T1.Enterprise FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC
SELECT orchestra FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY year_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.name , T1.conductor_id FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchact_id = T2.orchact_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id GROUP BY T1.conductor_id
SELECT T2.name , T1.Orchestra_ID FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchina_id JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id GROUP BY T3.name HAVING COUNT(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id HAVING COUNT(*) > 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Orchestra_ID JOIN orchestra AS T3 ON T3.Orchestra_ID = T2.Orchestra_ID WHERE T3.Major_Record_Format = "Enrollment" GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2 Orchestra_ID WHERE T2.Year_of_Founded > 2008 GROUP BY T2.name HAVING count(*) >= 1
SELECT T2.name FROM orchestra AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.orchacteur JOIN conductor AS T3 ON T1.conductor_id = T3.conductor_id WHERE T3.year_of_work > 2008
SELECT orchestra, COUNT(*) FROM orchestra GROUP BY orchestra
SELECT count(*) , T1.Orchestra_ID FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID
SELECT Orchestra FROM orchestra GROUP BY Orchestra ORDER BY COUNT(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY Frequency DESC
SELECT orchestra , CONFERENCE FROM performance GROUP BY orchestra ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra GROUP BY orchestra HAVING count(*) = (SELECT count(*) FROM orchestra) ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM performance EXCEPT SELECT orchestra FROM performance
SELECT orchestra FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT orchestra FROM orchestra WHERE YEAR_of_founded > 2003
SELECT DISTINCT orchestra.conductor_id FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT DISTINCT orchestra.conductor_id FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE record_format = "CD" OR record_format = "DVD"
SELECT count(*) FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Record_Company = "CD" OR T1.Record_Company = "DVD"
SELECT T1.year_of_work FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T2.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Orchestra_ID HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM Highschooler
SELECT * FROM highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle";
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT student_id FROM friends WHERE friend_id = Highschooler.id WHERE name = 'Kyle'
SELECT student_id FROM friend WHERE student_id = "Kyle"
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade , count(*) FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM friend GROUP BY student_id
SELECT count(*) , student_id FROM friends GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T2.name , count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.friend_id
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T2.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 2
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 1 AND T1.friend_id = 1
SELECT count(*) FROM friends AS T1 JOIN student AS T2 ON T1.student_id = T2.student_id WHERE T2.name = 'Kyle'
{"sql": "SELECT count(*) FROM friend WHERE student_id = 20000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT student_id FROM friends EXCEPT SELECT student_id FROM friends
SELECT student_id FROM friend EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT t1.name FROM highschooler AS t1 JOIN friend AS t2 ON t1.id = t2.student_id
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friends)
SELECT T1.student_id FROM friends AS T1 JOIN likes AS T2 ON T1.friend_id = T2.liked_id GROUP BY T1.student_id HAVING count(*) > 1
SELECT student_id FROM friends INTERSECT SELECT student_id FROM likes
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.id = (SELECT student_id FROM likes)
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T2.friend_id = T3.friend_id AND T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.friend_id = T3.id WHERE T3.name = (SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN highschooler AS T3 ON T2.friend_id = T3.friend_id WHERE T3.name = 'friends'))
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT student_id , count(*) FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT T2.name FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T1.friend_id IN (SELECT friend_id FROM friends WHERE likes_id = 2) GROUP BY T1.friend_id HAVING count(*) >= 2 INTERSECT SELECT T2.name FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE likes_id = 2 GROUP BY T1.friend_id HAVING count(*) >= 2
SELECT count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id WHERE T1.student_id = 2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT avg(T2.grade) FROM friends AS T1 JOIN highschooler AS T2 ON T1.friend_id = T2.id GROUP BY T1.friend_id
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id EXCEPT SELECT min(grade) FROM highschooler WHERE friend_id IN (SELECT student_id FROM friend)
SELECT min(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id NOT IN (SELECT friend_id FROM friend)
SELECT DISTINCT T2.state FROM Treatment_types AS T1 JOIN Dogs AS T2 ON T1.treatment_type_code = T1.treatment_type_code JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.role_code = 'Veterian' INTERSECT SELECT DISTINCT T2.state FROM Treatment_types AS T1 JOIN Dogs AS T2 ON T1.treatment_type_code = T1.treatment_type_code JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.role_code = 'Guardian'
SELECT T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Breeds AS T3 ON T2.breed_code = T3.breed_code JOIN Treatment_Types AS T4 ON T4.treatment_type_code = T4.treatment_type_code WHERE T1.email_address = 'vet' AND T4.treatment_type_code = 'reg'
SELECT avg(age) FROM dogs WHERE date_departed != "null"
SELECT avg(age) FROM dogs WHERE date_departed = 'NULL'
SELECT T1.owner_id , T1.first_name , T1.last_name , T1.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Hameden" AND T2.date_of_treatment > 2
SELECT T2.id , T2.last_name , T2.cell_phone FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.last_name LIKE '%Indiana%' OR T1.first_name LIKE '%Treatment%'
SELECT name FROM dogs WHERE cost_of_treatment > 1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM professionals WHERE role_code = "vitality" EXCEPT SELECT DISTINCT T1.first_name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "vitality"
SELECT first_name FROM Professionals WHERE role_code = 'vet' OR role_code = 'guardian' EXCEPT SELECT first_name FROM Dogs WHERE breed_code = 'dog'
SELECT role_code , email_address FROM professionals WHERE first_name != 'voluntary' AND last_name != 'voluntary'
SELECT role_code , email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
{"sql": "SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = \"Poodle" ORDER BY T2.weight DESC LIMIT 1;"}
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = 'golden_orchesty' GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id GROUP BY T1.profession_id HAVING count(*) >= 2
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatings AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.date_of_treatment = T2.date_of_treatment AND T3.date_of_treatment = T2.date_of_treatment GROUP BY T1.role_code HAVING count(*) >= 2
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT breed_name FROM Breeds WHERE breed_code = (SELECT breed_code FROM Dogs ORDER BY weight DESC LIMIT 1)
SELECT T2.owner_id , T1.full_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN breed_of_dogs AS T3 ON T1.breed_code = T3.breed_code WHERE T3.breed_name = "Labrador retrievable" ORDER BY T1.date_of_treatment DESC LIMIT 1
SELECT t1.guardian_id , t2.family_name FROM treatments AS t1 JOIN dogs AS t2 ON t1.dog_id = t2.dog_id WHERE t1.cost_of_treatment = (SELECT max(cost_of_treatment) FROM treatments)
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code WHERE t1.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT t2.treatment_type_description FROM treatments AS t1 JOIN treatment_types AS t2 ON t1.treatment_type_code = t2.treatment_type_code WHERE t1.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.owner_id , T2.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.breed_code = "Poodle" ORDER BY T2.weight DESC LIMIT 1
SELECT T2.guardian_id , T2.zip_code FROM Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT cost_of_treatment FROM Treatments WHERE T1.dog_id = T2.dog_id GROUP BY T1.dog_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1)
SELECT T1.owner_id , T2.cell_phone FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatment_Types AS T3 ON T3.treatment_type_code = T3.treatment_type_code JOIN Professionals AS T4 ON T4.profession_id = T3.profession_id WHERE T3.treatment_type_code = "Health-care" GROUP BY T1.owner_id HAVING count(*) >= 2
SELECT T1.owner_id , T2.cell_phone FROM Owners AS T1 JOIN Professionals AS T2 ON T1.email_address = T2.email_address GROUP BY T1.cell_phone HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Treatments AS T3 ON T1.treatment_type_code = T3.treatment_type_code
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM Treatments AS T1 JOIN Professionals AS T2 ON T1.profession_id = T2.profession_id JOIN Dogs AS T3 ON T1.dog_id = T3.dog_id WHERE T3.date_of_birth = '12/12/12'
SELECT cost_of_treatment , treatment_type_code FROM Treatments
SELECT cost_of_treatment , treatment_type_type FROM treatments
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name = 'Labrador retrievable'
SELECT T1.first_name , T1.last_name , T2.size_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.breed_code = T2.dog_id WHERE T1.breed_name LIKE '%rare%'
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = "rare_run"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
{"sql": "SELECT T2.name , T1.breed_name FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-01-01 AND T1.date_of_birth = \"2010-0
SELECT date_departed , date_arrived FROM dogs WHERE breed_code = "Poodle 1"
SELECT date_departed , date_arrived FROM dogs WHERE breed_code = "Poodle"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs) AND T1.breed_code = "poodle_bubble"
SELECT T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.age = (SELECT min(age) FROM dogs)
SELECT email_address FROM owners WHERE state = 'Hawaii' OR state = 'Wisconsin'
SELECT email_address FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Hawaii" OR T1.state = "Wisconsin"
SELECT date_departed , date_arrived FROM dogs
SELECT date_departed , date_arrived FROM dogs
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = 'Pug'
SELECT count(*) FROM dogs AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.goodness = 'Puppy'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = 'P' AND T3.weight = 1100
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Puppy"
SELECT T2.role_code , T2.street , T2.city , T2.state FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Professionals AS T3 ON T2.profession_id = T3.profession_id WHERE T1.city LIKE '%West%'
SELECT role_code , street , city , state FROM PROFESSIONS WHERE last_name LIKE '%West%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT T2.first_name , T2.last_name , T2.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM Treatments WHERE date_of_treatment = (SELECT date_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1)
SELECT cost_of_treatment FROM Treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE breed_code != "pug" AND date_of_birth != "null"
SELECT count(*) FROM dogs WHERE breed_code = "Puppy"
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = "poodle_bearing")
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE weight = 2000)
SELECT count(*) FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T1.profession_id = T3.owner_id WHERE T3.breed_code = "poodle" EXCEPT SELECT count(*) FROM professionals AS T1 JOIN treatment_types AS T2 ON T1.role_code = T2.role_code JOIN dogs AS T3 ON T1.profession_id = T3.owner_id WHERE T3.breed_code = "spoodle"
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT treatment_type_code FROM treatments WHERE dog_id = 1)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1;
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 0
SELECT avg(age) FROM dogs WHERE breed_code = "Puppy";
SELECT avg(age) FROM dogs WHERE breed_code = "Pug";
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type , cost_of_treatment FROM Treatments
SELECT charge_type , charge_amount FROM CHARGE
SELECT sum(charice_id) FROM charges WHERE charge_type = "the most expensive"
SELECT charge_amount FROM CHARGE_TYPES ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM PROFESSIONS
SELECT email_address , home_phone , cell_phone FROM Professionals WHERE role_code = 'VENTATORY'
SELECT breed_type , size_type FROM Breeds AS T1 JOIN Sizes AS T2 ON T1.size_code = T2.size_code
SELECT DISTINCT breed_type , size_type FROM dogs WHERE gender = 'Pug'
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.profession_id = T2.profession_id
SELECT count(*) FROM singer WHERE type = 'vocalist'
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Country FROM singer WHERE Artist_Type = 'Vocal'
SELECT Birth_Year , Country FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship , count(*) FROM singer GROUP BY citizenship
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT citizenship , max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Name , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
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
SELECT property_type_description FROM Properties WHERE property_type_code = "Apartment"
SELECT property_name FROM Properties WHERE property_type_code = "apartment" OR room_count > 1
