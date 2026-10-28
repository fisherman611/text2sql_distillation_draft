SELECT count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id
SELECT name , country , age FROM singer ORDER BY age DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age ASC LIMIT 1;
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 100;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT DISTINCT country FROM singer WHERE age > 20;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer) ORDER BY song_name ASC;
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , capacity FROM stadium WHERE capacity >= 5000 AND capacity <= 10000;
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium AS T1;
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR IN (2014 , 2015)
SELECT count(*) FROM show WHERE YEAR IN (2014 , 2015)
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT max(T1.year) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.year ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert )
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 EXCEPT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert WHERE YEAR = 2014 )
SELECT name FROM stadium WHERE stadium_id NOT IN ( SELECT stadium_id FROM concert WHERE YEAR = 2014 )
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme HAVING count(*) > 0
SELECT T1.theme , T2.name , count(*) FROM concert AS T1 JOIN singer AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT count(*) , T2.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014;
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T3.name , T3.position FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 AND T3.stadium_id = 2015;
SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T3.name , T3.location FROM concert AS T1 JOIN stadium AS T3 ON T1.stadium_id = T3.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1;
Youngest puppy's weight: petspetstly.weight[min()]
SELECT max(weight) , pet_type FROM pets GROUP BY pet_type;
SELECT max(T2.weight) , T2.pet_type FROM Pets AS T1 JOIN Pets AS T2 ON T1.pet_id = T2.pet_id GROUP BY T2.pet_type HAVING max(T2.weight) != 0
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(DISTINCT pet_type) FROM pets AS T1 JOIN has_pet AS T2 ON T1.petid = T2.petid WHERE T1.pet_type = \"domestic\"
SELECT count(DISTINCT pet_type) FROM pets
SELECT T3.fname , T3.lname FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_type = 'kitten' OR T3.pet_type = 'puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = 'Kitten' OR T3.pet_type = 'Puppy'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'puppy'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'Puppy'
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT StuID FROM Has_pet WHERE PetType = 'Kitten' )
SELECT T1.discipline , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN (SELECT T3.petid FROM Has_Pet AS T3 JOIN Pets AS T4 ON T3.petid = T4.petid WHERE T4.pet_type = \"Kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Kitten')
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy' EXCEPT SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat'
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Dog\" EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Kitten\"
Youngest pet's age: PetID = 1, pet_age = 0; Youngest pet's weight: weight = 0.
Youngest_animal_weight = (SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1)
SELECT T1.stuid , T2.weight FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.petage > 1;
SELECT StuID , weight FROM Pets WHERE pet_age > 1;
SELECT avg(T1.age) , max(T1.age) , T1.species FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid GROUP BY T1.species;
SELECT avg(pet_age) , max(pet_age) , pet_type FROM pets GROUP BY pet_type;
SELECT pet_type , avg(weight) FROM pets GROUP BY pet_type;
SELECT avg(weight) , pet_type FROM pets GROUP BY pet_type;
SELECT T1.fname , T1.lname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN ( SELECT petid FROM pets )
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.age != -1 AND T1.fname != -1 AND T1.age != -1 AND T1.fname != -1 AND T1.age != -1
SELECT StuID FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = 'Smith' AND T2.Lname = 'Smith'
SELECT StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith' AND T1.pettype = 'dog' OR T1.pettype = 'cat'
Count the number of pets per student ID by joining Has_Pet and Student on StuID and count(*) as pet_count_per_student_id. This will give us the number of animals for each student with any pet.
SELECT count(*) , T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) != 0
SELECT T1.fname , T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T2.fname , T2.lname , T2.sex FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid IN ( SELECT petid FROM pets WHERE pettype = 'kitten' AND petage = 3 )
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3 AND T3.pet_type = 'Kitten'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM (SELECT DISTINCT continent FROM continents)
SELECT count(*) FROM continents
SELECT T1.continent , T1.continent_name , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contId = T2.continent GROUP BY T1.continent
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.contid HAVING count(*) > 0
SELECT count(*) FROM (SELECT DISTINCT countryname FROM countries)
SELECT count(*) FROM (SELECT DISTINCT countryname FROM countries)
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 0
SELECT T1.FullName , T2.id , COUNT(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING COUNT(*) > 0
SELECT Model FROM cars_data ORDER BY Horsepower ASC LIMIT 1;
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < ( SELECT avg(weight) FROM cars_data )
SELECT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T1.year = 1970;
SELECT DISTINCT T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Maker = T2.id WHERE T1.year = 1970
SELECT maker , YEAR FROM car_names ORDER BY YEAR ASC LIMIT 1;
To find the earliest year and the corresponding make of the vehicle produced first, we need to order the years and then match them with the maker from the car_makers table. The earliest year will be the first element in the ordered list of years. We can achieve this by sorting the years first and then matching them with the maker. Here's the SQL query: ```sql SELECT maker , min(year) FROM cars_data GROUP BY maker ORDER BY min(year) LIMIT 1; ``` This query sorts the years first and then matches them with the maker from the car_makers table. The earliest year will be the first element in the ordered list of years.
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year > 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
```sql SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent ; ```
SELECT T1.country FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid GROUP BY T1.country ORDER BY count(*) DESC LIMIT 1;
SELECT T1.FullName FROM car_makers AS T1 JOIN car_makers AS T2 ON T1.FullName = T2.FullName WHERE T1.FullName != T2.FullName GROUP BY T1.FullName ORDER BY count(*) DESC LIMIT 1;
SELECT T2.maker , count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id GROUP BY T2.maker ORDER BY count(*) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
Count(*) FROM car_makers GROUP BY maker , fullName;
SELECT Accelerate FROM cars_data WHERE Model = 'AMC Hornet Sportabout' AND MakeId IN ( SELECT id FROM car_names WHERE maker = 'AMC Hornet Sportabout' )
SELECT sum(T1.Accelerate) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'amc hornet sportabout' AND T1.year = 2007
SELECT count(*) FROM car_makers WHERE Country = 'France'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = \"France\")
SELECT count(*) FROM car_makers AS T1 JOIN models AS T2 ON T1.id = T2.maker WHERE T1.country = 'USA'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id JOIN countries AS t3 ON t3.countryid = t2.countryid WHERE t3.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4.0
SELECT min(weight) FROM cars_data WHERE YEAR = 1974 AND cylinders = 8;
SELECT min(weight) FROM cars_data WHERE year = 1974 AND cylinders = 8
SELECT DISTINCT maker , model FROM model_list
SELECT T1.FullName , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN ( SELECT maker FROM car_makers GROUP BY maker HAVING count(*) > 1 ) AS T2 ON T1.id = T2.id
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.Model GROUP BY T1.id HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.continent = \"Europe\" GROUP BY T1.countryname HAVING count(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Continent = \"Europe\" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T2.Horsepower) , T1.maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T2.Cylinders = 3 GROUP BY T1.maker HAVING max(T2.Horsepower) > 1000
SELECT max(T2.Horsepower) , T1.Maker FROM model_list AS T1 JOIN cars_data AS T2 ON T1.id = T2.maker WHERE T2.cylinders = 3 GROUP BY T1.Maker HAVING max(T2.Horsepower) > (SELECT max(Horsepower) FROM cars_data WHERE cylinders = 3)
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN cars_data AS T3 ON T1.id = T3.id GROUP BY T2.Model ORDER BY avg(T3.MPG) DESC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid ORDER BY T1.mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.maker = 'Volvo'
SELECT avg(Edispl) FROM cars_data WHERE make = 'Volvo'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != 0;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1;
SELECT Model FROM model_list GROUP BY Model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.FullName = 'American Motor Company' AND t1.country = 'America'
SELECT count(*) FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.countryname = 'American Motor Company' AND T1.model IN (SELECT model FROM cars_data WHERE makeid IN (SELECT id FROM car_names WHERE makeid IN (SELECT id FROM car_makers WHERE country = 'American Motor Company'))
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
SELECT DISTINCT T1.DistinctiveType FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T1.FullName = 'General Motors' OR T2.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T2.makeid WHERE T3.fullname = \"General Motors\" OR T2.weight > 3500;
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 UNION SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000;
SELECT horsepower FROM cars_data ORDER BY accelerate DESC LIMIT 1;
The automobile with the greatest accelerate is the one with horsepower 3000. The power of such an automobile is 3000.
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND Maker = 'Volvo'
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data GROUP BY accelerate ORDER BY accelerate DESC LIMIT 1)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM (SELECT maker , COUNT(*) FROM car_makers GROUP BY maker HAVING COUNT(*) > 2)
SELECT count(*) FROM ( SELECT * FROM car_makers GROUP BY country HAVING count(*) > 2 )
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY sum(T1.Horsepower) DESC LIMIT 1;
SELECT makeid , fullname FROM car_makers WHERE maker NOT IN ( SELECT maker FROM cars_data GROUP BY maker HAVING min(horsepower) > (SELECT min(horsepower) FROM cars_data)) INTERSECT SELECT makeid , fullname FROM car_names WHERE cylindres < 3
SELECT maker , name FROM car_names WHERE makeid NOT IN ( SELECT maker FROM cars_data GROUP BY maker HAVING min(Horsepower) = 0 ) AND cylinders < 4
SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.cylinders = 8 OR T1.year < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'Ford Motor Company'
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.weight < 3500 EXCEPT SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid JOIN car_makers AS T3 ON T2.Maker = T3.id WHERE T3.FullName = 'Ford Motor Company'
SELECT countryname FROM countries WHERE countryid NOT IN ( SELECT maker FROM car_makers GROUP BY maker HAVING count(*) = 1 )
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT maker FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) <= 3
SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.CountryName > 3 OR T2.FullName = 'fiat'
SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid GROUP BY T1.id HAVING count(*) <= 3 INTERSECT SELECT id , fullName FROM car_makers WHERE country IN (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3)
SELECT T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.Airline = "JetBlue Airways"
SELECT T1.State FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.DestAirport WHERE T2.Airline = 'Jetblue Airways'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways" ORDER BY Length DESC LIMIT 1
Shortened word for Jetblue Airways is: BlueJet.
SELECT T1.Airline , T1.Abbreviation FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.AirportCode WHERE T2.CountryAbbrev = 'USA' ORDER BY T1.Abbreviation
SELECT T1.Airline , T2.ShortenedWord FROM airlines AS T1 JOIN airports AS T2 ON T1.Country = T2.Country WHERE T2.CountryAbbrev = 'USA'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT airportcode , airportname FROM airports WHERE city LIKE '%Anthony%'
SELECT count(*) FROM airlines AS T1;
SELECT sum(airlines) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) > 0
SELECT count(*) FROM flights AS T1;
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Abbreviation FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airlines WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT AirportName FROM airports WHERE AirportName = 'AKO'
SELECT airportname FROM airports WHERE airportcode LIKE '%AKO%'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT airportname FROM airports WHERE city LIKE '%Aberdeen%'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'TOA')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') AND destinationairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.destinationairport IN (SELECT T2.airportcode FROM airports AS T2 JOIN flights AS T1 ON T2.airportcode = T1.destairport WHERE T2.city = 'Aberdeen')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = 'Aberdeen' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airports AS T3 ON T1.destairport = T3.airportcode WHERE T2.city = "Aberdeen" AND T3.city = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.Airline = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.country = 'United States' AND T1.FlightNo = 'JETBLUE AIRPORTS'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.country = 'United Airlines' AND T2.countryabbreviation = 'USA'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'United Airlines' AND T1.sourceairport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'United Airlines' AND T1.destairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'United Airlines' AND T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbreviation WHERE T3.country = 'United Airlines' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.uid WHERE T3.Airline = 'United' AND T2.City = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1;
Most departing flights can be found by counting the number of departing flights from each airport and finding the one with the maximum count. This can be done using GROUP BY and max functions in SQL. Here is the query: SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM flights AS T1 JOIN flights AS T2 ON T1.sourceairport = T2.destairport GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline , T1.country , T2.city FROM airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airportcode JOIN flights AS T3 ON T2.airportcode = T3.sourceairport GROUP BY T1.airline ORDER BY count(*) LIMIT 1;
To find the shortest word of an airline's has the fewest flights and its state, we can follow these steps: 1. Find the shortest word of all airline words (without considering any overlaps). 2. Identify which airport has the fewest flights among those shortest words. 3. Determine the state of that airport. Here is the SQL query to achieve this: ```sql SELECT T1.airline , T1.shortest_word FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport GROUP BY T1.shortest_word ORDER BY count(*) ASC LIMIT 1; ``` Explanation: - We first select the shortest word from all airline words without considering any overlaps. - Then we group by the shortest word to identify which airport has the fewest flights among those words. - Finally, we determine the state of that airport by finding the city where that airport is located. This query will return the shortest word of an airline's has the fewest flights and its state.
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'AHD')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.id = T2.sourceairport WHERE T2.destairport = 'ADHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.countryabbreviation = 'APG') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.countryabbreviation = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.srcairport = 'APG' INTERSECT SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T4.srcairport = 'CVO')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'Country' AND T4.destinationairport = 'CVO') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'Country' AND T4.destinationairport = 'APG')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'CVO') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'APG')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline HAVING count(*) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200;
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode JOIN airlines AS T3 ON T3.uid = T1.airline WHERE T3.Country = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = \"United Airlines\"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2机场名 = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Aberdeen' OR T2.city = 'Abilene'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Abelene' INTERSECT SELECT airportcode FROM airports WHERE country = 'Aberdeen')
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN ( SELECT sourceairport FROM flights INTERSECT SELECT destairport FROM flights )
SELECT count(*) FROM employee AS T1;
SELECT count(*) FROM employee AS T1;
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city;
SELECT count(*) , city FROM employee GROUP BY city;
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , district FROM shop GROUP BY district;
SELECT count(*) , district FROM shop GROUP BY district;
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT min(number_products) , max(number_products) FROM shop AS T1
SELECT min(Number_products) , max(Number_products) FROM shop AS T1;
SELECT T1.name , T1.city , T1.district FROM market AS T1 JOIN market AS T2 ON T1.city != T2.city AND T1.district != T2.district ORDER BY count(*) DESC;
SELECT name , location , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.year_awarded = (SELECT max(year_awarded) FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT name FROM employee WHERE employee_id NOT IN (SELECT employee_id FROM evaluation)
SELECT T2.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1;
SELECT name FROM shop EXCEPT SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id;
SELECT name FROM shop WHERE shop_id NOT IN ( SELECT shop_id FROM hiring )
SELECT T2.name , count(*) FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T2.shop_id;
SELECT count(*) , T2.name FROM shop AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN (SELECT bonus FROM evaluation GROUP BY bonus) AS T2 ON T1.bonus = T2.bonus
Total bonus = sum(Bonus) FROM EVALUATION AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID GROUP BY T1.Year_awarded HAVING sum(Bonus) > 0
SELECT * FROM hiring
SELECT * FROM hiring
Districts that have both conditions (less than 3000 goods and more than 10000 goods) are: District 4278978649534411193 District 4278978649534411193
districts_with_both = (SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM market WHERE number_products > 10000)
SELECT count(DISTINCT LOCATION) FROM shop AS T1
SELECT count(DISTINCT LOCATION) FROM shop AS T1
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT T1.document_name , T2.layout_id FROM Documents AS T1 JOIN (SELECT document_description FROM documents WHERE document_description LIKE '%w%' GROUP BY document_description) AS T2 ON T1.document_description = T2.document_description ORDER BY T2.layout_id DESC LIMIT 1;
SELECT t1.document_name , t1.layout_id FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.paragraph_text LIKE '%w%'
SELECT T1.paper_id , T2.layout_id , T2.document_description FROM Documents AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = \"Robbin CV\"
SELECT T1.paper_id , T1.layout_id , T1.describing_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id
SELECT count(DISTINCT template_type_code) FROM Ref_template_types WHERE template_type_description = \"Layout\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = 'PPT'
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\";
SELECT count(*) , layout_id FROM Layouts GROUP BY layout_id;
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.layout_id FROM Layouts AS T1 JOIN Documents AS T2 ON T1.layout_id = T2.layout_id GROUP BY T1.layout_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY document_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.document_id)
SELECT template_id FROM Documents WHERE document_id NOT IN (SELECT document_id FROM paragraphs) GROUP BY template_id HAVING count(*) = 1
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = \"Layout\"
SELECT T1.layout_id , T1.version_number , T2.template_type_code FROM Layouts AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_id , T2.edition_number , T3.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id JOIN Ref_Template_Types AS T3 ON T1.template_type_code = T3.template_type_code
SELECT DISTINCT template_type_code FROM Ref_Template_Types WHERE template_type_description != \"Standard\"
SELECT DISTINCT template_type_code FROM Ref_Template_Types;
SELECT template_id FROM templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_code = \"PPT\")
SELECT template_id FROM Documents WHERE document_name LIKE '%PP%' OR document_id LIKE '%PP%'
SELECT count(*) FROM Templates WHERE template_type_code = \"CV\"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = \"CV\"
SELECT T2.Edition_number , T2.layout_type FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.Edition_number > 4
SELECT template_type_code , template_layout FROM Ref_Template_Types WHERE template_type_code IN ( SELECT template_type_code FROM Templates WHERE edition_number > 6 )
SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code;
```sql SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code; ```
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) < 3
SELECT template_type_code FROM Ref_Template_Types GROUP BY template_type_code HAVING count(*) < 3
SELECT min(version_number) , template_type_code FROM Templates GROUP BY template_type_code ORDER BY min(version_number) LIMIT 1;
SELECT min(version_number) , template_type_code FROM templates GROUP BY template_type_code ORDER BY min(version_number) ASC LIMIT 1;
SELECT t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = \"Data base\"
SELECT t1.template_type_code FROM templates AS t1 JOIN documents AS t2 ON t1.template_id = t2.template_id WHERE t2.document_name = \"Data base\"
SELECT document_name FROM documents WHERE template_id IN ( SELECT template_id FROM templates WHERE template_type_code = "BK" )
SELECT t1.document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id JOIN templates AS t3 ON t2.template_id = t3.template_id WHERE t3.template_type_code = "BK"
SELECT count(*) , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code HAVING count(*) > 0
SELECT count(*) , template_type_code FROM Ref_Template_Types GROUP BY template_type_code;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description IN (SELECT template_type_description FROM Ref_Template_Types GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT template_type_code FROM templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN ( SELECT t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id JOIN Paragraphs AS t3 ON t2.document_id = t3.document_id )
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code NOT IN (SELECT t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id) UNION SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code IN (SELECT t1.template_type_code FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id)
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description , T2.template_details FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_details != \"\" AND t2.date_effective_from != \"\" AND t2.date_effective_to != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.template_type_description != \"\" AND t2.template_details != \"\" AND t2.document_name != \"\" AND t2.document_description != \"\" AND t2.document_id != \"\" AND t2.document_name != \"\" AND t2.document_description !=
SELECT DISTINCT T1.template_details FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id JOIN Paragraphs AS T3 ON T2.document_id = T3.document_id WHERE T2.document_description IN (SELECT document_description FROM documents GROUP BY document_description ORDER BY count(*) DESC LIMIT 1)
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Presentation"
SELECT document_id FROM Documents WHERE document_description LIKE '%Presentation%'
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT count(*) FROM (SELECT * FROM paragraphs GROUP BY paragraph_id)
SELECT count(*) FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = \"Summer Show\"
SELECT count(*) FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t1.document_name = \"Summer Show\"
SELECT Other_Details FROM PARAGRAMS WHERE Paragraph_Text = "Korea"
SELECT T1.other_details FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Korea%'
SELECT T2.Paragraph_id , T1.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T1.Paragraph_id , T2.Paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT t1.Paragraph_Text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = "Customer reviews"
SELECT t1.paragraph_text FROM paragraphs AS t1 JOIN documents AS t2 ON t1.document_id = t2.document_id WHERE t2.document_name = "Customer reviews"
SELECT document_id , count(*) FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
Count(*) , document_id FROM paragraphs GROUP BY document_id ORDER BY document_id ASC
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id;
Count(*) , T1.document_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Documents GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2;
SELECT document_id , document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id , document_name FROM documents AS t1 JOIN paragraphs AS t2 ON t1.document_id = t2.document_id GROUP BY document_id ORDER BY count(*) DESC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1;
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 1 AND count(*) <= 2
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2;
SELECT T1.Paragraph_Text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Brazil\" INTERSECT SELECT T1.Paragraph_Text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = \"Ireland\"
SELECT document_id FROM paragraphs WHERE paragraph_text = 'Brazil' UNION SELECT document_id FROM paragraphs WHERE paragraph_text = 'Ireland'
SELECT count(*) FROM teacher AS T1 WHERE T1.name != 'Dummy'
SELECT count(*) FROM teacher AS T1 WHERE T1.name != \"\"
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 1000;
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Age , Hometown FROM teacher AS T1
SELECT age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown <> 'Little Lever Urban District'
SELECT name FROM teacher WHERE hometown <> 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32 , 33)
SELECT Name FROM teacher WHERE Age BETWEEN 32 AND 33
Youngest Instructor's Birthplace: {Teacher_ID : 'Youngest Instructor'}
SELECT name FROM teacher ORDER BY age ASC LIMIT 1;
SELECT count(*) , T1.name FROM instructor AS T1 JOIN teacher AS T2 ON T1.name = T2.name GROUP BY T1.name HAVING count(*) > 0
SELECT count(*) , name FROM instructor GROUP BY name HAVING count(*) > 0
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Hometown FROM teacher AS T1 JOIN course AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T1.name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.Name , T2.Curriculum FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.Name , T1.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id ORDER BY T2.Name ASC;
SELECT T1.Name , T2.Coursera FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Course_ID = T2.Teacher_ID WHERE T1.Curriculum = "Math"
SELECT T2.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Name = 'Math'
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) > 0
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T2.Name HAVING COUNT(*) >= 1
SELECT T2.Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T2.Teacher_ID HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(*) >= 2;
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
No curriculum has been arranged, so there are no instructors whose curriculums have not been arranged. Therefore, the answer is an empty list: {}
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY LEVEL_OF_MEMBERSHIP DESC
SELECT avg(age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP != '4' AND LEVEL_OF_MEMBERSHIP != '5' AND LEVEL_OF_MEMBERSHIP != '6' AND LEVEL_OF_MEMBERSHIP != '7' AND LEVEL_OF_MEMBERSHIP != '8' AND LEVEL_OF_MEMBERSHIP != '9' AND LEVEL_OF_MEMBERSHIP != '10' AND LEVEL_OF_MEMBERSHIP != '11' AND LEVEL_OF_MEMBERSHIP != '12' AND LEVEL_OF_MEMBERSHIP != '13' AND LEVEL_OF_MEMBERSHIP != '14' AND LEVEL_OF_MEMBERSHIP != '15' AND LEVEL_OF_MEMBERSHIP != '16' AND LEVEL_OF_MEMBERSHIP != '17' AND LEVEL_OF_MEMBERSHIP != '18' AND LEVEL_OF_MEMBERSHIP != '19' AND LEVEL_OF_MEMBERSHIP != '20' AND LEVEL_OF_MEMBERSHIP != '21' AND LEVEL_OF_MEMBERSHIP != '22' AND LEVEL_OF_MEMBERSHIP != '23' AND LEVEL_OF_MEMBERSHIP != '24' AND LEVEL_OF_MEMBERSHIP != '25' AND LEVEL_OF_MEMBERSHIP != '26' AND LEVEL_OF_MEMBERSHIP != '27' AND LEVEL_OF_MEMBERSHIP != '28' AND LEVEL_OF_MEMBERSHIP != '29' AND LEVEL_OF_MEMBERSHIP != '30' AND LEVEL_OF_MEMBERSHIP != '31' AND LEVEL_OF_MEMBERSHIP != '32' AND LEVEL_OF_MEMBERSHIP != '33' AND LEVEL_OF_MEMBERSHIP != '34' AND LEVEL_OF_MEMBERSHIP != '35' AND LEVEL_OF_MEMBERSHIP != '36' AND LEVEL_OF_MEMBERSHIP != '37' AND LEVEL_OF_MEMBERSHIP != '38' AND LEVEL_OF_MEMBERSHIP != '39' AND LEVEL_OF_MEMBERSHIP != '40' AND LEVEL_OF_MEMBERSHIP != '41' AND LEVEL_OF_MEMBERSHIP != '42' AND LEVEL_OF_MEMBERSHIP != '43' AND LEVEL_OF_MEMBERSHIP != '44' AND LEVEL_OF_MEMBERSHIP != '45' AND LEVEL_OF_MEMBERSHIP != '46' AND LEVEL_OF_MEMBERSHIP != '47' AND LEVEL_OF_MEMBERSHIP != '48' AND LEVEL_OF_MEMBERSHIP != '49' AND LEVEL_OF_MEMBERSHIP != '50' AND LEVEL_OF_MEMBERSHIP != '51' AND LEVEL_OF_MEMBERSHIP != '52' AND LEVEL_OF_MEMBERSHIP != '53' AND LEVEL_OF_MEMBERSHIP != '54' AND LEVEL_OF_MEMBERSHIP != '55' AND LEVEL_OF_MEMBERSHIP != '56' AND LEVEL_OF_MEMBERSHIP != '57' AND LEVEL_OF_MEMBERSHIP != '58' AND LEVEL_OF_MEMBERSHIP != '59' AND LEVEL_OF_MEMBERSHIP != '60' AND LEVEL_OF_MEMBERSHIP != '61' AND LEVEL_OF_MEMBERSHIP != '62' AND LEVEL_OF_MEMBERSHIP != '63' AND LEVEL_OF_MEMBERSHIP != '64' AND LEVEL_OF_MEMBERSHIP != '65' AND LEVEL_OF_MEMBERSHIP != '66' AND LEVEL_OF_MEMBERSHIP != '67' AND LEVEL_OF_MEMBERSHIP != '68' AND LEVEL_OF_MEMBERSHIP != '69' AND LEVEL_OF_MEMBERSHIP != '70' AND LEVEL_OF_MEMBERSHIP != '71' AND LEVEL_OF_MEMBERSHIP != '72' AND LEVEL_OF_MEMBERSHIP != '73' AND LEVEL_OF_MEMBERSHIP != '74' AND LEVEL_OF_MEMBERSHIP != '75' AND LEVEL_OF_MEMBERSHIP != '76' AND LEVEL_OF_MEMBERSHIP != '77' AND LEVEL_OF_MEMBERSHIP != '78' AND LEVEL_OF_MEMBERSHIP !=
visitor.name , visitor.level_of_membership , visitor.age FROM visitor WHERE LEVEL_OF_MEMBERSHIP > 4 ORDER BY visitor.age DESC
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1;
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009;
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T2.visitor_id HAVING count(*) > 1
To find the id, name and membership level of guests who have spent the largest amount of money in total in all museum tickets, we need to calculate the total spend by visiting each museum ID first. Then, we can select the maximum total spend from all museums. Here is the SQL query: SELECT T1.id , T1.name , T1.level_of_membership FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY sum(T2.total_spent) DESC LIMIT 1;
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM museum WHERE museum_id NOT IN (SELECT T1.museum_id FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.total_spent = (SELECT max(total_spent) FROM visit)
SELECT avg(Num_of_Ticket) , max(Num_of_Ticket) FROM visit AS T1
SELECT sum(T2.total_spent) FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id WHERE T2.level_of_membership = 1
name = (SELECT T1.name FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T2.museum_id IN (SELECT museum_id FROM museum WHERE open_year < 2009 INTERSECT SELECT museum_id FROM museum WHERE open_year > 2011) )
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT T1.visitor_id FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2010)
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id + T2.loser_id - 1
SELECT count(*) FROM players AS T1;
SELECT count(*) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id
SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id UNION SELECT count(*) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id
SELECT avg(T1.ranking_points) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING count(*) > 0;
SELECT avg(T1.ranking_points) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id HAVING count(*) >= 1 AND count(*) <= 4
SELECT max(T1.ranking_points) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id GROUP BY T1.player_id ORDER BY max(T1.ranking_points) DESC LIMIT 1;
SELECT max(loser_rank) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T2.hand = '左手' UNION SELECT max(loser_rank) FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T2.hand = '右手' ORDER BY loser_rank_points DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM matches;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 2;
SELECT tournament_name FROM matches GROUP BY tournament_name HAVING count(*) >= 2;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016 {}
SELECT count(*) FROM MATCHES WHERE YEAR IN (2013 , 2016)
SELECT count(*) FROM matches WHERE YEAR IN (2013 , 2016)
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = \"WTA Championships\" INTERSECT SELECT tourney_id FROM matches WHERE tourney_name = \"Australian Open\") GROUP BY T1.country_code HAVING count(*) >= 2 AND count(*) <= 4
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , state_code FROM players ORDER BY birth_date DESC LIMIT 1;
Oldest participant: "John" , "IL"
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.winner_name , T2.winner_rank_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\" ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.loser_name , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.minutes = (SELECT max(minutes) FROM MATCHES)
SELECT T1.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0
SELECT T1.first_name , T1.last_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking_points) != 0;
SELECT T1.ranking_points , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T1.ranking_points DESC LIMIT 1000;
SELECT T1.first_name , T1.last_name , SUM(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT abbrev FROM state WHERE state_id IN (SELECT T1.state_id FROM MATCH AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.state_id ORDER BY count(*) DESC LIMIT 1)
SELECT abbrev FROM players GROUP BY abbrev ORDER BY count(*) DESC LIMIT 1;
SELECT T1.abbr FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.player_id GROUP BY T1.abbr HAVING count(*) > 50;
SELECT abbreviation FROM players GROUP BY abbreviation HAVING count(*) > 50;
SELECT count(*) , ranking FROM rankings GROUP BY ranking ORDER BY ranking ASC;
SELECT count(*) , ranking FROM rankings GROUP BY ranking;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.ranking FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = 'left' AND T1.tourney_id IN (SELECT T3.tourney_id FROM matches AS T3 JOIN players AS T4 ON T3.winner_id = T4.player_id WHERE T4.hand = 'left') AND T1.tourney_name = \"WTA Championships\"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championship\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.ranking_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1;
Count(*) AS hand_type_count FROM players GROUP BY hand_type_count;
```sql SELECT count(*) , hand FROM players GROUP BY hand; ```
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(T1.killed) , min(T1.killed) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT avg(injured) FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id
SELECT T1.note , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander <> 'Boril'
SELECT DISTINCT id , name FROM ship WHERE ship_type = 'Brig' UNION SELECT DISTINCT id , name FROM ship WHERE ship_type = 'Brig' AND loss_in_battle != 'null'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1;
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = "Kaloyan" AND latin_commander = "Baldwin I"
SELECT count(DISTINCT result) FROM battle;
SELECT count(*) FROM battle WHERE id NOT IN ( SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.tonnancy = '225' )
SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.name = 'Lettice' EXCEPT SELECT T1.name , T1.date FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN ( SELECT T1.id FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.ship_type = 'vessel' AND T2.location = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT line_1 , line_2 FROM addresses
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id;
SELECT count(*) FROM courses AS T1;
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT T1.course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Math"
zip_postcode = '60409'
SELECT zip_postcode FROM addresses WHERE city = 'Port Chelsea'
SELECT T1.department_name , T1.department_id FROM Degree Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name , T1.department_id FROM Degree Programs AS T1 JOIN courses AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT department_id) FROM degree_programs;
SELECT count(DISTINCT degree_summary_name) FROM degree_programs AS T1 JOIN courses AS T2 ON T1.degree_program_id = T2.course_id
SELECT count(DISTINCT degree_summary_name) FROM degree_programs;
SELECT count(*) FROM (SELECT T1.degree_summary_name , T1.department_id FROM Degree Programs AS T1 JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = \"Engineering\" GROUP BY T1.department_id)
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = \"Engineering\"
SELECT course_name , course_description FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id
SELECT course_name , course_description , other_details FROM courses WHERE course_id IN ( SELECT course_id FROM SECTION )
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2;
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
REVERSED_SECTION_NAME = (SELECT section_name FROM sections ORDER BY section_name DESC)
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.course_name , T1.course_id FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id JOIN students AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.semester_name , T2.student_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_name ORDER BY count(*) DESC LIMIT 1;
SELECT other_details FROM departments WHERE department_name LIKE '%computer%'
SELECT other_details FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.degree_program_id IN ( SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = '2' ) GROUP BY T1.student_id HAVING count(*) = 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelor'
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = 'Bachelors'
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment_courses AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T4.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T4 ON T1.degree_program_id = T4.degree_program_id JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id , T2.degree_summary_name FROM Student_Enrolment AS T1 JOIN Degree_Programs AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.student_id , T1.first_name , T1.last_name , T1.middle_name , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.middle_name , T1.last_name , T1.student_enrolment_id , count(*) FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_enrolment_id ORDER BY count(*) DESC LIMIT 1;
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT course_name FROM courses WHERE course_id NOT IN (SELECT T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) >= 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T2.last_name FROM students AS T1 JOIN courses AS T2 ON T1.current_address_id = T2.current_address_id JOIN degree_programs AS T3 ON T3.degree_program_id = T2.degree_program_id WHERE T2.state_province_county = 'North Carolina'
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = 'North Carolina' EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id != null;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment_courses AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = 'Timothy' AND last_name = 'Ward'
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.student_id ASC LIMIT 1;
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered ASC LIMIT 1;
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id ORDER BY T2.date_first_registered ASC LIMIT 1;
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_3 != T1.current_address_id;
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.line_1 != T1.current_address_id;
SELECT T1.address_id , T2.line_1 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(date_first_registered) FROM students AS T1
SELECT avg(date_first_registered) FROM students AS T1;
SELECT date_first_registered , other_student_details FROM students ORDER BY date_first_registered ASC LIMIT 1;
Min(transcript_date) FROM transcripts AS T1 JOIN transcript_contents AS T2 ON T1.transcript_id = T2.transcript_id ORDER BY T1.transcript_date ASC LIMIT 1
SELECT count(*) FROM Student_Enrolment;
SELECT count(*) FROM students AS T1;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT date_left FROM students ORDER BY date_left DESC LIMIT 1;
SELECT count(*) , student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id ORDER BY count(*) DESC LIMIT 1000000;
SELECT T1.course_id , count(*) FROM Student_Enrolment_Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_first_registered FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) LIMIT 1;
SELECT T1.date_first_registered , T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 1 AND T2.student_id IN ( SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 1 AND current_address_id IN (SELECT address_id FROM addresses WHERE department_id IN (SELECT department_id FROM Degree_Programs WHERE degree_summary_name = \"Master\')) INTERSECT SELECT student_id FROM Student_Enrolment WHERE degree_program_id = 1 AND current_address_id IN (SELECT address_id FROM addresses WHERE department_id IN (SELECT department_id FROM Degree_Programs WHERE degree_summary_name = \"Bachelor\'))
SELECT T1.id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 'Masters' AND T1.student_id IN ( SELECT T1.student_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id WHERE T2.degree_program_id = 'Bachelors' )
SELECT count(DISTINCT current_address_id) FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
Reverse Lexicographical Order: SELECT * FROM students ORDER BY other_student_details DESC
Reverse alphabetical order of other_student_details: SELECT * FROM Students ORDER BY other_student_details DESC;
SELECT * FROM SECTION WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name LIKE '%h%'
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = \"Haiti\" OR T1.cell_mobile_number = \"09700166582\"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT cell_mobile_number FROM Students WHERE cell_mobile_number = "09700166582"
SELECT title FROM animation ORDER BY title ASC
SELECT title FROM cartoon ORDER BY title ASC
SELECT T2.Animation FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Directed_by = "Ben Jones"
SELECT T2.title FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.id WHERE T1.directed_by = "Ben Jones"
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.written_by = 'Joseph Kuhr'
SELECT T2.animation , T2.directed_by FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel ORDER BY T1.air_date ASC
SELECT T1.Title , T1.Directed_by FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel ORDER BY T2.Air_Date ASC
SELECT T2.Title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T1.Directed_by = "Ben Jones" OR T1.Directed_by = "Brandon Vietti"
SELECT T2.Title FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T1.Directed_by = \"Ben Jones\" OR T1.Directed_by = \"Brandon Vietti\"
SELECT Country , COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) , country FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_CHANNEL
SELECT CONTENT FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT Content FROM TV_CHANNEL WHERE Series_name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = "Sky Radio"
SELECT package_option FROM TV_CHANNEL WHERE series_name = 'Sky Radio'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'english'
SELECT count(*) FROM TV_CHANNEL WHERE LANGUAGE = 'english'
SELECT Language , COUNT(*) FROM TV_CHANNEL GROUP BY Language ORDER BY COUNT(*) LIMIT 1;
SELECT Language , count(*) FROM TV_CHANNEL GROUP BY Language ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) , Language FROM TV_CHANNEL GROUP BY Language
SELECT count(*) , LANGUAGE FROM TV_CHANNEL GROUP BY LANGUAGE
SELECT T2.series_name FROM TV_channel AS T2 JOIN cartoon AS T1 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle!'
SELECT T2.series_name FROM TV_channel AS T2 JOIN Cartoon AS T1 ON T1.channel = T2.id WHERE T1.title = 'The Rise of the Blue Beetle'
SELECT T2.name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.animation FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT * FROM TV_series ORDER BY Rating ASC
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3;
Minimum share: 0 Maximum share: 100%
SELECT max(Share) , min(Share) FROM TV_series AS T1;
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = \"A Love of a Lifetime\"
SELECT Rating FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T1.series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.episode = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Episode FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.series_name = "Sky Radio"
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT count(*) , directed_by FROM cartoon GROUP BY directed_by;
SELECT Production_code , Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT production_code , channel FROM cartoon ORDER BY air_date DESC LIMIT 1;
SELECT series_name , package_option FROM TV_CHANNEL WHERE package_option = "HD"
SELECT Package_Option , Series_name FROM TV_CHANNEL WHERE Hight_definition_TV = 'HD'
SELECT T1.country FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.written_by = 'Todd Casey'
SELECT T1.state FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T2.title = "Todd Casey TV Animation" AND T1.written_by = "Todd Casey"
SELECT country FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.Written_by = 'Todd Casey' )
SELECT id FROM cartoon WHERE written_by != 'Todd Casey'
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.Directed_by = "Michael Chang"
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'english'
SELECT pixel_aspect_ratio_PAR , country FROM TV_CHANNEL WHERE LANGUAGE <> 'english'
SELECT id FROM TV_CHANNEL WHERE country IN ( SELECT country FROM TV_CHANNEL GROUP BY country HAVING count(*) > 2 )
SELECT id FROM TV_CHANNEL GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.channel FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.directed_by = 'Ben Jones' )
SELECT id FROM TV_channel WHERE id NOT IN ( SELECT T1.id FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.id FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT package_option FROM TV_CHANNEL WHERE id NOT IN ( SELECT T1.id FROM TV_CHANNEL AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = 'Ben Jones' )
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.nationality = \"Car\"
SELECT count(*) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id WHERE T1.nationality = \"Car\"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT Final_Table_Made , Best_Finish FROM poker_player AS T1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car Gamer\"
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car Gamer\"
SELECT Money_Rank FROM poker_player WHERE People_ID IN ( SELECT People_ID FROM people WHERE Nationality = \"Car Gamer\" ORDER BY Earnings DESC LIMIT 1 )
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1;
SELECT max(T1.Finest_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = \"Car\" AND T1.Earnings < 200000;
SELECT max(T1.Final_Table_Made) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = \"Car\" AND T1.Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = "Car Gamer"
SELECT T1.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name = "Car Gamer"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000 AND T1.Nationality = \"Car\"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Earnings > 300000;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made ASC;
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = (SELECT Final_Table_Made FROM poker_player GROUP BY Final_Table_Made ORDER BY COUNT(*) DESC)
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T2.Birth_Date FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings LIMIT 1;
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T2.Nationality == \"Car\"
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200 AND T2.Nationality = \"Car\"
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\" ORDER BY T2.Earnings DESC;
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Nationality = \"Car Gamer\" ORDER BY T2.Earnings DESC;
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality HAVING COUNT(*) > 1000000
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality ORDER BY count(*) DESC LIMIT 1;
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality <> \"Russia\"
SELECT Name FROM people WHERE Nationality <> 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID
SELECT count(DISTINCT people_id) FROM people AS T1 JOIN poker_player AS T2 ON T1.people_id = T2.people_id
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM votes
SELECT max(area_code) , min(area_code) FROM AREA_CODE_STATE AS T1
SELECT max(created) FROM votes WHERE state = "CA"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name <> 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2;
SELECT T1.contestant_number , T2.contestant_name FROM votes AS T1 JOIN contestants AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1;
SELECT count(*) FROM votes AS T1 JOIN area_code_state AS T2 ON T1.state = T2.state WHERE T2.state = \"NY\" OR T2.state = \"CA\"
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.phone_number , T1.state , T1.state FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = "Tabatha Gehling"
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 1 AND T2.contestant_number = 2 AND T2.contestant_name = \"Tabatha Gehling\" INTERSECT SELECT T1.area_code FROM AREA_CODE_state AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 3 AND T2.contestant_number = 4 AND T2.contestant_name = \"Kelly Clauss\"
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950;
SELECT name FROM country WHERE indepyear > 1950;
SELECT count(*) FROM country WHERE GovernmentForm = 'Republic'
SELECT count(*) FROM country WHERE governmentform = 'Republic'
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.Region = 'Caribbean'
Total Territorial Area of the Caribbean = (SurfaceArea + SurfaceArea) / 2 = 3000000 + 3000000 = 6000000平方单位
SELECT Continent FROM country WHERE Name = 'Anguila'
Anguila = country.Name WHERE code2 = 'Anguila' AND continent != 'Australia' AND continent != 'Antarctica' AND continent != 'Europe' AND continent != 'Africa' AND continent != 'North America' AND continent != 'South America'
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.CountryCode WHERE T2.name = 'Kabul'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM city WHERE district = 'Aruba') GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT code FROM city WHERE name = "Aruba") GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT Population , LifeExpectancy FROM country WHERE Name = 'Brazil'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT region , population FROM country WHERE name = 'Angola'
SELECT avg(LifeExpectancy) FROM country WHERE Region = 'Central Africa'
SELECT avg(lifeexpectancy) FROM country WHERE continent = 'Central Africa'
SELECT Name FROM country WHERE Continent = \"Asia\" ORDER BY LifeExpectancy ASC LIMIT 1;
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1;
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = 'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'African' AND GovernmentForm = 'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND GovernmentForm = 'Republic'
Total Territory = SurfaceArea + SurfaceArea = 510400 + 589700 = 1000100 contiguous square kilometers
SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT sum(population) FROM city WHERE district = 'Gelderland'
SELECT avg(GNP) , sum(population) FROM country WHERE governmentform = 'Territory of United States'
SELECT avg(GNP) , sum(population) FROM country WHERE code IN ( SELECT code FROM city WHERE countrycode = 'USA' )
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'World'
SELECT count(DISTINCT language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = "World"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = "Africa"
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT sum(Percentage) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Aruba'
SELECT count(*) FROM countrylanguage WHERE IsOfficial = 'Yes' AND CountryCode = 'Afghanistan'
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = "Afghanistan")
To determine the nation that speaks the largest number of languages, we need to find the country with the highest percentage of speakers across all language categories. We can achieve this by: 1. Counting the number of languages spoken by each nation. 2. Finding the nation with the highest count of languages spoken (this will give us the nation with the largest number of languages). 3. Calculating the percentage of speakers for this nation. Here's the SQL query to accomplish these steps: ```sql SELECT T1.name , COUNT(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1; ``` This query works as follows: - It counts the number of languages spoken by each nation. - It finds the nation with the highest count of languages spoken (by selecting the nation with the highest count from the grouped count). - It calculates the percentage of speakers for this nation by dividing the total number of speakers by the total population of the nation and multiplying by 100. Let me know if you need any further assistance!
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode GROUP BY T1.id ORDER BY sum(T2.percentage) DESC LIMIT 1;
Most diverse languages continent: %continent% FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode GROUP BY t1.continent ORDER BY sum(t2.percentage) DESC LIMIT 1%continent%
Most languages spoken by countries are spoken by the largest country code: China (code 中国). The percentage of speakers is 93.1%.
SELECT count(*) FROM (SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'Dutch')
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'English' INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = 'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'French'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"English\" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = \"French\"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Chinese"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Chinese'
SELECT region FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE language = 'English' UNION SELECT countrycode FROM countrylanguage WHERE language = 'Dutch')
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Dutch' OR T2.language = 'English'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = 'English' OR T2.Language = 'Dutch'
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language IN ('English', 'Dutch')
SELECT Language FROM countrylanguage WHERE Continent = \"Asia\" GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T1.Population > (SELECT avg(Population) FROM country) GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage WHERE GovernmentForm = 'Republic' GROUP BY Language HAVING COUNT(*) = 1
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.GovernmentForm = 'Republic' GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = 'English' GROUP BY T1.id ORDER BY sum(T1.population) DESC LIMIT 1;
SELECT name FROM city WHERE population = (SELECT max(population) FROM city WHERE countrycode IN (SELECT code FROM countrylanguage WHERE language = 'English'))
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(*) , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' GROUP BY T1.code ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != 'English'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English' GROUP BY T1.code HAVING avg(T1.LifeExpectancy) > (SELECT avg(LifeExpectancy) FROM country)
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT count(*) FROM city WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE language = 'English')
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = "Beatrix" AND T2.IsOfficial = "Yes"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.HeadOfState = \"Beatrix\" AND T2.IsOfficial = 1
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.IndepYear < 1930;
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.IndepYear < 1930 GROUP BY T2.code;
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE continent = 'Europe' ORDER BY surfacearea DESC LIMIT 1)
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND name IN (SELECT name FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Africa'
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT min(population) FROM country WHERE continent != 'Africa')
SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE continent = 'Asia') AND continent = 'Asia'
SELECT name FROM country WHERE code NOT IN (SELECT code2 FROM countrylanguage WHERE language = 'English')
SELECT stateabbreviation FROM country WHERE code NOT IN ( SELECT code FROM countrylanguage WHERE language = 'English' )
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != 'English'
SELECT T1.name , T2.code2 FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language <> 'English'
SELECT name FROM country WHERE governmentform != 'Republic' EXCEPT SELECT name FROM country WHERE language NOT IN (SELECT language FROM countrylanguage WHERE language = 'English')
SELECT name FROM country WHERE governmentform != 'Republic' AND language != 'English' AND code2 NOT IN ( SELECT code2 FROM countrylanguage WHERE language = 'English' )
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial != 'Yes' AND T2.language != 'English' AND T1.countrycode IN ( SELECT code FROM country WHERE continent = 'Europe')
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language != 'English' AND T2.isofficial = false;
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.language = 'Chinese' AND T1.name NOT IN (SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' AND T2.language = 'Chinese')
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T1.countrycode IN (SELECT code FROM country WHERE continent = 'Asia') AND T2.language = 'Chinese' UNION SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T1.countrycode IN (SELECT code FROM country WHERE continent = 'Asia') AND T2.language = 'Chinese' AND T2.percentage > 50.0
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT name , indepyear , continent FROM country ORDER BY population ASC LIMIT 1;
SELECT count(*) , name , headofstate FROM country ORDER BY surfacearea DESC LIMIT 1;
SELECT T1.name , count(*) , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.code ORDER BY sum(T2.population) DESC LIMIT 1;
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.code HAVING count(*) >= 3
SELECT T1.name , count(DISTINCT T2.language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(DISTINCT T2.language) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district;
SELECT T1.GovernmentForm , sum(T2.Population) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.GovernmentForm HAVING avg(T2.lifeexpectancy) > 72.00;
SELECT sum(population) , governmentform FROM country GROUP BY governmentform HAVING avg(lifeexpectancy) > 72;
SELECT avg(lifeexpectancy) , count(*) , continent FROM country WHERE lifeexpectancy < 72 GROUP BY continent HAVING avg(lifeexpectancy) < 72
SELECT sum(population) , avg(lifeexpectancy) , continent FROM country GROUP BY continent HAVING avg(lifeexpectancy) < 72;
SELECT T1.name , T1.surfacearea FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.surfacearea DESC LIMIT 5;
SELECT name , continent FROM country ORDER BY population DESC LIMIT 5;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population DESC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT name FROM country ORDER BY population ASC LIMIT 3;
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = \"Asia\"
SELECT name FROM country WHERE continent = 'Europe' AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
total_population = sum(T1.population) / count(*) avg_territory = avg(T1.surfacearea) where T1.continent = "North America" AND T1.surfacearea > 3000 total_population + avg_territory
SELECT sum(t1.population) , avg(t1.surfacearea) FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'North America' AND t2.surfacearea > 3000 GROUP BY t1.name HAVING sum(t1.population) >= 50000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000
SELECT name FROM city WHERE population >= 160000 AND population <= 900000;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Language , T1.State FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.State ORDER BY sum(T1.Percentage) DESC LIMIT 1;
SELECT T1.name , T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.Name ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT count(*) FROM (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' ORDER BY T2.percentage DESC LIMIT 1)
SELECT count(*) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.language = 'Spanish' AND t2.percentage > (SELECT percentage FROM countrylanguage GROUP BY language ORDER BY percentage DESC LIMIT 1)
SELECT T1.code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' GROUP BY T1.code ORDER BY sum(T2.percentage) DESC LIMIT 1;
SELECT T1.id FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = 'Spanish' AND T2.percentage > (SELECT percentage FROM countrylanguage GROUP BY language ORDER BY percentage DESC LIMIT 1)
SELECT count(*) FROM conductor AS T1;
SELECT count(*) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Name FROM conductor WHERE Nationality <> 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_OFFounded DESC;
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT avg(Attendance) FROM show AS T1;
SELECT avg(T1.Attendance) FROM show AS T1 JOIN performance AS T2 ON T1.Performance_ID = T2.Performance_ID GROUP BY T1.Show_ID HAVING avg(T1.Attendance) > 0
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Name) FROM conductor AS T1 {}
SELECT count(DISTINCT Name) FROM conductor AS T1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Work DESC;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Founded = (SELECT max(YEAR_OF_WORK) FROM conductor)
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT T1.Name , T2.Show FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN show AS T3 ON T2.Performance_ID = T3.Performance_ID
SELECT T3.Name , T2.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T1.Conductor_ID = T3.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID JOIN show AS T3 ON T2.Show_ID = T3.Show_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 2;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found > 2008 GROUP BY T1.Name HAVING COUNT(*) >= 3;
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
SELECT count(*) , T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Name;
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY COUNT(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY COUNT(*) DESC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT Ensemble FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM performance)
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Record_Company = T2.Record_Company WHERE T2.Year_of_Founded BETWEEN 1 AND 2002 EXCEPT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Record_Company = T2.Record_Company WHERE T2.Year_of_Founded > 2003
SELECT T1.Record_Company FROM orchestra AS T1 JOIN orchestra AS T2 ON T1.Record_Company = T2.Record_Company WHERE T1.Year_of_Founded < 2003 AND T2.Year_of_Founded > 2003
SELECT count(*) FROM performance WHERE TYPE IN ('CD', 'DVD')
SELECT count(*) FROM performance WHERE TYPE = \"CD\" OR TYPE = \"DVD\"
SELECT T1.year_of_foundation FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_foundation HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_founded HAVING count(*) > 1
SELECT count(*) FROM highschooler AS T1;
SELECT count(*) FROM highschooler AS T1;
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM Highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = "Kyle"
SELECT grade FROM Highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT ID FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) FROM highschooler WHERE grade BETWEEN 9 AND 10;
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1;
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.student_id , count(*) FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT count(*) , T1.id FROM Friend AS T1 JOIN Highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3;
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id = 'Kyle' AND T1.name != 'Kyle'
SELECT T2.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = "Kyle"
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM Friend WHERE friend_id IN ( SELECT id FROM highschooler WHERE name = 'Kyle' )
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id JOIN Likes AS T3 ON T2.student_id = T3.student_id WHERE T2.id IN (SELECT T4.student_id FROM Highschooler AS T4 JOIN Likes AS T5 ON T4.id = T5.liked_id) AND T1.id NOT IN (SELECT T4.id FROM Highschooler AS T4 JOIN Likes AS T5 ON T4.id = T5.liked_id)
SELECT T1.id FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id INTERSECT SELECT T1.id FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.liked_id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id JOIN friend AS T3 ON T2.student_id = T3.student_id WHERE T3.student_id IN ( SELECT T4.student_id FROM highschooler AS T4 JOIN likes AS T5 ON T4.id = T5.liked_id ) AND T1.id NOT IN ( SELECT T6.student_id FROM highschooler AS T6 JOIN likes AS T7 ON T6.id = T7.liked_id )
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.liked_id INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.student_id IN (SELECT T3.student_id FROM likes AS T3 JOIN highschooler AS T4 ON T3.liked_id = T4.id)
SELECT count(*) , student_id FROM LIKE GROUP BY student_id;
To count the number of likes for each student ID, you can use a groupby operation on the student IDs and then sum up the counts. Here's how you can do it: ```sql SELECT count(*) , student_id FROM likes GROUP BY student_id; ``` This will give you a list of student IDs along with the count of likes for each one.
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) > 0
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.id HAVING count(*) >= 2 {}
SELECT count(*) FROM Like AS T1 JOIN Highschooler AS T2 ON T1.liked_id = T2.id WHERE T2.name = 'Kyle' AND T1.liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT liked_id FROM Likes WHERE liked_id IN (SELECT
SELECT count(*) FROM (SELECT T1.liked_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle' UNION SELECT T1.liked_id FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle')
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T1.grade) != 0;
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING avg(T2.grade) != 0;
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM professionals WHERE role_code = "veterinarian"
states = (SELECT state FROM professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM professionals WHERE role_code = 'Veterinarian')
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog Medical' OR T2.treatment_type_code = 'Dog Surgery'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health' AND T1.gender = 'Dog'
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = 'Indiana' OR count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.home_phone FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.professional_id WHERE T2.state = \"Indiana\" UNION SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT name FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
SELECT T2.name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_type = T2.treatment_type_code JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T1.cost_of_treatment > 1000;
SELECT first_name FROM professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id INTERSECT SELECT first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
First_name = 'John' OR first_name NOT IN (SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id)
SELECT T1.role_code , T1.first_name , T1.last_name , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog' EXCEPT SELECT T1.role_code , T1.first_name , T1.last_name , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog'
SELECT role_code , first_name , last_name FROM professionals WHERE role_code != 'dog trainer' UNION SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = \"Dog\"
SELECT T1.first_name , T1.last_name , T1.street FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.guardian_id , T2.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.guardian_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t1.treatment_type_description FROM treatment_types AS t1 JOIN treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.home_phone , T1.cell_number , T1.street , T1.city , T1.state , T1.zip_code , T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT T1.guardian_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.guardian_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.date_of_treatment JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T3.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id
SELECT T1.date_of_treatment , T4.first_name FROM treats AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T1.dog_id = T3.dog_id JOIN owners AS T4 ON T3.owner_id = T4.owner_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T3.first_name , T3.last_name , T3.weight FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T1.size_code = T3.size_code WHERE T1.name != 'null' ORDER BY T3.weight ASC LIMIT 1000;
SELECT T3.first_name , T3.last_name , T4.weight FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T3.size_code = T1.size_code JOIN breeds AS T4 ON T4.breed_code = T1.breed_code
SELECT T1.name , T2.name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN dogs AS T3 ON T3.owner_id = T1.owner_id WHERE T3.gender = 'Puppy'
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1)
Rarest breed: Rarest_dog Breeds rarest = (SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T3.first_name , T3.name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.state = 'Virginia'
SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia"
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Medical'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Health'
SELECT T3.last_name FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id ORDER BY T1.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
SELECT email_address FROM owners WHERE state = 'Hawaii' UNION SELECT email_address FROM owners WHERE state = 'Wisconsin'
SELECT email_address FROM owners WHERE state IN ('Hawaii', 'Wisconsin')
SELECT date_arrived , date_departed FROM dogs WHERE breed_code IN ( SELECT breed_code FROM breeds WHERE breed_name = 'Puppy' )
SELECT date_arrived , date_departed FROM dogs WHERE breed_code IN ( SELECT breed_code FROM breeds WHERE breed_name = \"Puppy\")
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'Puppy'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T3.role_code = 'health'
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id JOIN professionals AS t3 ON t2.professional_id = t3.professional_id WHERE t1.breed_code = 'Puppy' AND t2.treatment_type_code = 'Vet' AND t3.first_name = 'Vet' AND t3.last_name = 'Vet'
SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN professionals AS T3 ON T1.professional_id = T3.professional_id WHERE T2.breed_code = 'Puppy'
SELECT role_code , street , city , state FROM professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM veterinarians WHERE city LIKE '%West%' OR street LIKE '%West%' OR city LIKE '%West%' AND state LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND gender = 'Puppy'
SELECT count(*) FROM dogs WHERE age BETWEEN 1 AND (SELECT avg(age) FROM dogs) AND breed_code = 'Puppy'
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE breed_code = 'Puppy' EXCEPT SELECT count(*) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t2.treatment_type_code = 'Puppy' AND t1.gender = 'Puppy'
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE breed_code = 'Puppy')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT T1.owner_id FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id JOIN breeds AS T3 ON T2.breed_code = T3.breed_code WHERE T3.breed_name = 'Puppy')
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Puppy')
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT avg(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT max(age) FROM dogs WHERE breed_code = 'Puppy'
SELECT age FROM dogs WHERE name LIKE '%Puppy%' ORDER BY age DESC LIMIT 1;
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
Most expensive charge type: max(charge_amount) FROM charges AS T1 JOIN (SELECT charge_type , max(charge_amount) FROM charges GROUP BY charge_type ORDER BY max(charge_amount) DESC LIMIT 1) AS T2 ON T1.charge_type = T2.charge_type
SELECT email_address , cell_number , home_phone FROM professionals
SELECT email_address , cell_number , home_phone FROM professionals
Breed_types = ["Single-breed", "Multiple-breed"] sizes = ["Small", "Medium", "Large"] all_combinations = list(zip(breed_types , sizes)) print(all_combinations)
SELECT DISTINCT T1.breed_name , T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.name LIKE '%Puppy%'
SELECT T1.first_name , T1.last_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN (SELECT T3.treatment_type_code FROM treatments AS T3 JOIN t3 ON T3.treatment_type_code = T1.treatment_type_code) AS T4 ON T2.treatment_type_code = T4.treatment_type_code {}
SELECT T1.first_name , T3.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN treatment_types AS T3 ON T2.treatment_type_code = T3.treatment_type_code
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC LIMIT 1000;
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer AS T1
SELECT Name FROM singer WHERE Citizenship <> "France"
SELECT Name FROM singer WHERE Citizenship <> \"French\"
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948 , 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1;
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , country FROM musician GROUP BY country HAVING count(*) > 0
SELECT T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.country , max(T2.net_worth_millions) FROM singer AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.country HAVING max(T2.net_worth_millions) != 0
SELECT max(Net_Worth_Millions) , Country FROM singer GROUP BY Country;
SELECT T2.Title , T3.Name FROM singer AS T3 JOIN song AS T2 ON T3.Singer_ID = T2.Singer_ID
SELECT T2.Title , T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Sales > 300000;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT T2.Name , sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY sum(T1.Sales) DESC LIMIT 1;
SELECT T2.Name , sum(T1.Sales) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY sum(T1.Sales) DESC LIMIT 1000;
SELECT Name FROM singer EXCEPT SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Name FROM singer EXCEPT SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1 AND 2000 EXCEPT SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1946 AND 1955
SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year < 1945 INTERSECT SELECT T1.Country FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features AS T1 JOIN Ref_Feature_Types AS T2 ON T1.feature_type_code = T2.feature_type_code
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = 'AirCon'
SELECT T1.property_type_description FROM Ref_Property_Types AS T1 JOIN Properties AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM Properties WHERE room_count > 1 OR property_type_code = 'Apartment' UNION SELECT property_name FROM Properties WHERE room_count > 1 AND property_type_code = 'House'
