SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer AS T1
sorted_singer = singer.order_by(Birthday) ORDER BY birthday ASC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(song_id) , max(song_id) FROM singer WHERE country = 'France'
SELECT avg(song_id) , min(song_id) , max(song_id) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY song_release_year LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE birthday = 2001.0
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001-%'
SELECT count(*) , country FROM singer GROUP BY country
country_count = singer.country count(*) FROM singer GROUP BY country
SELECT song_name FROM singer ORDER BY avg(birthday) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR ASC LIMIT 1;
SELECT max(T1.attendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2019 AND T2.year != 2018 AND T2.year != 2017 AND T2.year != 2016 AND T2.year != 2015 AND T2.year != 2014 AND T2.year != 2013 AND T2.year != 2012 AND T2.year != 2011 AND T2.year != 2010 AND T2.year != 2009 AND T2.year != 2008 AND T2.year != 2007 AND T2.year != 2006 AND T2.year != 2005 AND T2.year != 2004 AND T2.year != 2003 AND T2.year != 2002 AND T2.year != 2001 AND T2.year != 2000 AND T2.year != 1999 AND T2.year != 1998 AND T2.year != 1997 AND T2.year != 1996 AND T2.year != 1995 AND T2.year != 1994 AND T2.year != 1993 AND T2.year != 1992 AND T2.year != 1991 AND T2.year != 1990 AND T2.year != 1989 AND T2.year != 1988 AND T2.year != 1987 AND T2.year != 1986 AND T2.year != 1985 AND T2.year != 1984 AND T2.year != 1983 AND T2.year != 1982 AND T2.year != 1981 AND T2.year != 1980 AND T2.year != 1979 AND T2.year != 1978 AND T2.year != 1977 AND T2.year != 1976 AND T2.year != 1975 AND T2.year != 1974 AND T2.year != 1973 AND T2.year != 1972 AND T2.year != 1971 AND T2.year != 1970 AND T2.year != 1969 AND T2.year != 1968 AND T2.year != 1967 AND T2.year != 1966 AND T2.year != 1965 AND T2.year != 1964 AND T2.year != 1963 AND T2.year != 1962 AND T2.year != 1961 AND T2.year != 1960 AND T2.year != 1959 AND T2.year != 1958 AND T2.year != 1957 AND T
SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.location NOT IN (SELECT T3.location FROM stadium AS T3 JOIN concert AS T4 ON T3.stadium_id = T4.stadium_id)
SELECT country FROM singer WHERE birthday IN (1981 , 1991)
SELECT avg(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014;
SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014
count(*) , T1.theme , T2.concert_id FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 0
SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T3.name FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T1.singer_id = T3.singer_id WHERE T2.year > 2014 {}
concurrent_singers = (SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year < 2014 OR T2.singer_id NOT IN (SELECT T3.singer_id FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id WHERE T2.concert_id = SELECT concert_id FROM concert WHERE YEAR = 2014) ) INTERSECT SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id WHERE T2.concert_id = SELECT concert_id FROM concert WHERE YEAR = 2014 </concurrent_singers>
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T2.year = 2015
SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T1.location NOT IN (SELECT T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' ORDER BY birthdate ASC LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET 0 WHERE pettype = 'dog' AND sex = 'm' LIMIT 1 OFFSET
youngest_dog_weight = min(T2.weight) FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T1.stuid = (SELECT stuid FROM student ORDER BY age LIMIT 1)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
MAX(weight) , Pettype FROM Pets GROUP BY Pettype
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20 GROUP BY T1.StuID HAVING count(*) >= 1
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(DISTINCT pettype) FROM Pets AS T1
SELECT count(DISTINCT pettype) FROM pets AS T1
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype IN ('Kitten', 'Puppy')
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = \"kitten\" OR T3.pettype = \"puppy\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Puppy' INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Kitten'
SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'kitten' INTERSECT SELECT T1.fname FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'puppy'
No pets found: SELECT major , age FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = \"kitten\")
SELECT major , age FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet )
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Kitten')
First we need to find all students who have a dog, then exclude those who also have a puppy. We can achieve this by checking if a student has a dog and a pettype of 'puppy' or 'donut'. Then we will get their fname and age from the student table. SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN ( SELECT PetID FROM Pets WHERE PetType = 'puppy' UNION SELECT PetID FROM Pets WHERE PetType = 'donut' )
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Puppy\" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"Kitten\"
youngest_pet_pettype = min(Pets.pettype) youngest_pet_weight = min(Pets.weight) pets = (SELECT * FROM Pets ORDER BY birthdate LIMIT 1) youngest_pet_pettype = petspettype youngest_pet_weight = petsweight
PetType = min(weight) AND PetType = PetWeight WHERE birthdate = (SELECT min(birthdate) FROM Pets)
SELECT petid , weight FROM Pets WHERE birthdate > 2020 AND pettype = 'Pet'
SELECT T1.petid , T1.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T1.birthdate > "2020-01-01" AND T1.age > 30
SELECT avg(birthdate) , max(weight) , pettype FROM Pets GROUP BY pettype;
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID;
SELECT DISTINCT T1.lname , T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) >= 1 AND count(*) <= 3
SELECT T2.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T1.petid FROM Has_Pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , T1.stuid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT count(*) , T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001 AND T3.pettype = 'Cat'
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = 2001 AND T3.pettype = \"Cat\"
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents AS T1;
SELECT count(*) FROM continents
{ "sql": "SELECT T1.continent , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent"
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent HAVING count(*) > 0
SELECT count(*) FROM countries AS T1
SELECT count(*) FROM countries AS T1;
SELECT T2.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 0
min_horsepower = (SELECT min(Horsepower) FROM cars_data) SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower = min_horsepower;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid ORDER BY T1.horsepower ASC LIMIT 1;
SELECT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year >= (SELECT YEAR - 2 FROM cars_data) AND T2.year <= (SELECT YEAR + 2 FROM cars_data)
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.year - 1 BETWEEN YEAR(T2.year) AND YEAR(T2.year) + 2
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year < 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year < 1980;
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 0
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1;
SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.FullName , T2Maker.Maker FROM car_makers AS T1 JOIN model_list AS T2Maker ON T1.id = T2Maker.Maker
accelerate = '40'
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout' AND T1.Accelerate = (SELECT max(Accelerate) FROM cars_data WHERE model = 'Amc Hornet Sportabout')
SELECT count(*) FROM car_makers WHERE country = 'Japan'
SELECT count(*) FROM car_makers WHERE country IN (SELECT id FROM countries WHERE countryname = "Japanese")
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'America'
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id JOIN countries AS t3 ON t2.countryid = t3.countryid WHERE t3.countryname = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT T1Maker , T2Model FROM model_list
SELECT T1Maker , T2Model FROM model_list
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.CountryId IN ( SELECT T2.Country FROM car_makers AS T2 JOIN countries AS T3 ON T2.Country = T3.CountryId GROUP BY T2.Country HAVING COUNT(*) > 1 )
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IN (SELECT T1.CountryId FROM car_makers AS T2 JOIN countries AS T1 ON T2.Country = T1.CountryId) GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = \"Europe\"
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T1.Concontinent = "Europe" GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT max(T2.Horsepower) , T1.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.Cylinders = 3 GROUP BY T1.make HAVING count(*) >= 1
SELECT max(T1.Horsepower) , T2.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.Cylinders = 3 GROUP BY T2.make ORDER BY max(T1.Horsepower) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY max(T2.MPG) DESC LIMIT 1;
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980 GROUP BY YEAR HAVING avg(Horsepower) > 0
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = 'Tesla'
SELECT avg(Edispl) FROM cars_data WHERE makeid IN (SELECT id FROM car_makers WHERE maker = 'Tesla')
max_accelerate = (SELECT max(Accrate) , Cylinders FROM cars_data GROUP BY Cylinders)
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != '0'
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT YEAR FROM cars_data ORDER BY YEAR DESC LIMIT 1) AND YEAR <= (SELECT YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1) - 2
SELECT count(*) FROM cars_data WHERE YEAR BETWEEN 2014 AND 2015
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id JOIN countries AS t3 ON t2.countryid = t3.continent WHERE t3.countryname = 'American Motor'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.countryname = 'American Motor'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
general_motors = (SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500) SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN car_makers AS T3 ON T3.id = T1.maker WHERE T3.country = 'USA' OR T2.weight > 3500 GROUP BY T1.model HAVING count(*) >= 2
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
year = (SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate != '0' ORDER BY Accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM cars_data WHERE Accelerate != '0'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT max(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM countries GROUP BY country HAVING count(*) > 2 )
SELECT count(*) FROM car_makers WHERE maker IN (SELECT DISTINCT maker FROM car_makers GROUP BY maker HAVING count(*) > 2)
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM car_names WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1;
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Horsepower = (SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 4) GROUP BY T1.Model ORDER BY count(*) DESC LIMIT 1;
SELECT T1.makeid , T1.fullName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data GROUP BY Horsespower) EXCEPT SELECT T1.makeid , T1.fullName FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Cylinders > 3
SELECT T1.makeid , T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders < 4;
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T1.cylinders = 8 AND T2.year < 1980
max(mpg) OVER (SELECT id FROM cars_data WHERE cylinders = 8 UNION SELECT id FROM cars_data WHERE YEAR < 1980) >= (SELECT max(mpg) FROM cars_data WHERE cylinders = 8 UNION SELECT max(mpg) FROM cars_data WHERE YEAR < 1980)
model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'Ford Motor'
SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T2.Weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.Model = T2.id WHERE T2.FullName = 'Ford'
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) <= 3
SELECT T1.id , T1 maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 AND count(*) < 3
{ "sql": "SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker IN ( SELECT T3.Maker FROM model_list AS T3 JOIN car_names AS T4 ON T3.Model = T4.Model WHERE T4.Model = 'tesla') UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker IN ( SELECT T3.Maker FROM model_list AS T3 JOIN car_names AS T4 ON T3.Model = T4.Model WHERE T4.Model = 'tesla') GROUP BY T1.CountryId HAVING COUNT(*) > 3"
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Model = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE Airline = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT airportcode , airportname FROM airports WHERE country = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname LIKE '%Alton%'
SELECT airportname FROM airports WHERE airportname = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city LIKE '%Jackson%'
SELECT airportname FROM airports WHERE country = 'United States' AND city LIKE '%Jackson%'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'AUS') AND sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'AUS')
Jackson = 'Jacksonville' SELECT count(*) FROM flights WHERE sourceairport = 'Jacksonville' AND destairport = 'Jacksonville'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
Jackson -> Jacksonairport SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Syracuse' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Syracuse' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = \"Jetblue\"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.airline = 'JetBlue' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode WHERE T2.country
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'JetBlue' AND T2.city = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'JetBlue' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = 'AHD' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.destination = 'Aberdeen' AND T1.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode AND T1.airline = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.abbrivation , T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.abbrivation ORDER BY count(*) ASC LIMIT 1;
SELECT T1.abbreviation , T2.countryfrom flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode GROUP BY T1.abbreviation ORDER BY count(*) ASC LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'USA' AND T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = T2.destairport AND T2.destination = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'United States' AND T2.destairport = T3.airportcode INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'United States' AND T2.destairport = T3.airportcode INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'United States' AND T2.destairport = T3.airportcode WHERE T3.country = 'United States' AND T2.srcairport = T3.airportcode AND T2.destairport = T3.airportcode
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'United States' AND T2.sourceairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destairport = T3.airportcode WHERE T3.country = 'United States' AND T2.sourceairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'United States' AND T2.destairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'United States' AND T2.destairport = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM airports AS T3 WHERE T3.countryabbreviation = 'APG') EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport NOT IN (SELECT T3.airportcode FROM airports AS T3 WHERE T3.countryabbreviation = 'APG')
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200;
SELECT airline FROM airlines GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = \"JetBlue\"
SELECT T1.Flighne FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT flightno FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "APG")
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia' AND T1.sourceairport = 'APG'
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
Jackson Flights: SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'Jackson')
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
Jackson = "Jacksonville" SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T1.sourceairport = T2.airportcode OR T2.country = 'USA' AND T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' OR T2.city = 'Jackson'
Syracuse : 0 Jackson : 0
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT count(*) FROM Documents AS T1
SELECT count(*) FROM Documents AS T1
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents AS T1
SELECT document_name FROM Documents WHERE template_id IN ( SELECT template_id FROM Templates WHERE template_type_code = \"Letter\" INTERSECT SELECT template_id FROM Documents WHERE document_description LIKE \"%w%\")
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\" AND T2.template_type_code = \"Document\"
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\"
SELECT count(DISTINCT template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT T1.template_id , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 0
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 0
SELECT T2.date_effective_from , T2.date_effective_to FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code ORDER BY count(*) DESC LIMIT 1;
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT count(*) FROM Templates AS T1
SELECT count(*) FROM Templates AS T1
SELECT Date_Effective_From , Template_Type_Code FROM Templates AS T1
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1
Date_Effective_From TO Date_Effective_To
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"PP\" OR Template_Type_Description = \"PPT\")
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = \"PP\" OR template_type_code = \"PPT\")
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT T1.Date_Effective_From , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_From
SELECT count(*) , date_effective_from FROM Templates GROUP BY date_effective_from;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To HAVING count(*) < 3
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_template_types WHERE template_type_description = \"Version\")
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from , date_effective_to
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.document_name = \"Data base\"
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"
SELECT count(*) , date_effective_from , date_effective_to FROM Templates GROUP BY date_effective_from , date_effective_to
To find the number of documents per template type, we can use a GROUP BY clause on document_id and template_type_code. We will then sum up the dates_effective_from and dates_effective_to for each template type code. Finally, we'll calculate the total count of documents for each template type. SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code HAVING count(*) > 0
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1;
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = (SELECT template_type_code FROM Ref_templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code NOT IN ( SELECT template_type_code FROM Documents GROUP BY template_type_code )
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code NOT IN ( SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1 )
SELECT T1.template_type_code , T1.template_type_description FROM Ref_Template_Types AS T1
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id GROUP BY T1.template_type_code HAVING count(*) > 1
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_id IN (SELECT T3.document_id FROM Documents AS T4 JOIN Templates AS T5 ON T4.template_id = T5.template_id GROUP BY T4.template_id ORDER BY count(*) DESC LIMIT 1))
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"Presentation\")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"Presentation\" )
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id
SELECT T1.year , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id
SELECT T1.year , T2.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1
SELECT avg(T1.winner_rank) , T2.match_num FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T1.loser_id = T3.player_id GROUP BY T2.match_num HAVING count(*) > 0 AND count(*) < 4
SELECT avg(T3.ranking) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT avg(T3.ranking) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T1.player_id = T2.winner_id;
SELECT max(T1.ranking) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id + T2.loser_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id HAVING count(*) >= 1 AND count(*) <= 1000000
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM MATCHES GROUP BY tourney_name HAVING count(*) > 10;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 11;
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2016 {}
{ "sql": "SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2016"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016) UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.year IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 3 AND T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 4 AND T1.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC LIMIT 100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date DESC
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.match_num , T1.score , T1.tourney_name , T1.winner_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.winner_rank_points = (SELECT max(winner_rank_points) FROM players WHERE tourney_name = 'Australian Open') AND T1.tourney_id = 1
SELECT T1.match_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings) AND T1.tourney_name = 'Australian Open'
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.minutes DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.match_num = (SELECT max(match_num) FROM MATCHES)
SELECT avg(T1.ranking) , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name;
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) > 0.5平均排名大于等于0.5的玩家。
SELECT T1.player_id , T2.ranking_points FROM rankings AS T2 JOIN players AS T1 ON T2.player_id = T1.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0 {}
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date HAVING count(*) > 0
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR HAVING count(*) > 1
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num ASC LIMIT 3;
SELECT T1.winner_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T1.winner_age ASC LIMIT 3;
SELECT count(*) FROM (SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT DISTINCT T1.winner_id FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Left-handed\")
SELECT count(*) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.winner_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.winner_rank_points = (SELECT max(winner_rank_points) FROM MATCHES)
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id JOIN Rankings AS T3 ON T2.ranking = T3.ranking WHERE T3.rankings_points = (SELECT max(rankings_points) FROM rankings) ORDER BY T2.match_num LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT count(*) FROM show WHERE if_first_show = 1
ascending_order_name := (SELECT Name FROM conductor ORDER BY birthday ASC)
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT name FROM conductor WHERE Nationality LIKE "%American%"
orchestra.sort_by_year_of_founded() : ORCHESTRA_RECORD_COMPANY
sorted_by_year_orchestras = orchestra.Year_of_Founded ASC SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
average_attendance = avg(Attendance) FROM show WHERE If_first_show != 1
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT count(DISTINCT Nationality) FROM conductor AS T1
ascending_name = conductor.sort_by(birthday)
sorted_asc(conductor.Name)
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
List T1.Name as Conductor , T2.Orchestra as Orchestra from conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T3.Name , T2.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT Record_Company , count(*) FROM orchestra GROUP BY Record_Company HAVING count(*) > 1000000
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
ascending_order_orchestra_record_company ASC ORchestra.Record_Company ORDER BY Orchestra.age ASC
sorted_orchestra_major_record_format := (SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC)
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER ASC LIMIT 1;
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER BETWEEN 1 AND 2002 UNION SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER NOT IN (SELECT YEAR_OF_FOUNDER FROM orchestra WHERE YEAR_OF_FOUNDER > 2003)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003 EXCEPT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER < 1998 UNION SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER < 1998
SELECT count(*) FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\") AND Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show
SELECT count(*) FROM show WHERE If_first_show = 'Yes' AND Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show WHERE Show_ID IN (SELECT Show_ID FROM show
SELECT TYPE FROM performance WHERE Performance_ID IN ( SELECT Performance_ID FROM show GROUP BY Performance_ID HAVING COUNT(*) > 1 INTERSECT SELECT Performance_ID FROM show WHERE If_first_show != 1 )
SELECT TYPE FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM show WHERE If_first_show != 1) GROUP BY TYPE HAVING COUNT(*) > 1
Both owners and professionals can live in the same state. Therefore, we need to find the states where both an owner and a professional can reside. We will check all the states and see if either one of them has more than one owner/professional. SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.state HAVING count(*) >= 2;
states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (state for state in owners.state if professionals.role_code == 'professional') & (state for state in owners.state if owners.role_code != 'professional') states = (
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING avg(T2.treatment_type_code) != 'None'
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) > (SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments GROUP BY dog_id ORDER BY avg(age) DESC LIMIT 1))
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"Indiana\"
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T3.professional_id , T3.last_name , T3.cell_number FROM professionals AS T3 JOIN owners AS T4 ON T3.professional_id = T4.professional_id WHERE T4.state = \"Indiana\"
SELECT name FROM Dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments GROUP BY dog_id HAVING sum(cost_of_treatment) > 1000 )
SELECT T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id JOIN charges AS T4 ON T3.treatment_type_code = T4.treatment_type_code WHERE T4.charge_amount > 1000;
Owners(first_name, last_name) EXCEPT SELECT first_name FROM Professionals WHERE first_name LIKE '%dog%'
First_name_set = (SELECT first_name FROM professionals EXCEPT SELECT T1.first_name FROM professionals AS T1 JOIN owners AS T2 ON T1.professional_id = T2.owner_id WHERE T2.first_name = 'dog') UNION SELECT first_name FROM owners EXCEPT SELECT T1.first_name FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T2.first_name = 'dog') INTERSECT SELECT first_name FROM owners WHERE first_name != 'dog'
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog' EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = 'Dog'
SELECT professional_id , first_name , last_name FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 1 GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 1 GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T1.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(DISTINCT T2.treatment_type_code) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.date_of_treatment JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T4 ON T2.size_code = T4.size_code
{ "sql": "SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T4 ON T2.size_code = T4.size_code"} dog_sizes: [{"size_code": "1", "size_description": "Small"}, {"size_code": "2", "size_description": "Medium"}, {"size_code": "3", "size_description": "Large"}]
[ "Dog", "Owner" ]
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T4.date_of_treatment FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code JOIN treatments AS T3 ON T1.dog_id = T3.dog_id JOIN owners AS T4 ON T3.owner_id = T4.owner_id ORDER BY T2.breed_name ASC LIMIT 1;
SELECT T1.name , T4.date_of_treatment FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
from dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_arrived < t2.date_of_treatment AND t1.date_departed > t2.date_of_treatment
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Dog" AND T1.date_departed - T1.date_arrived > 0
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
HI email address : brent@example.com WI email address : jill@example.com
HI email_address WI email_address
SELECT date_arrived , date_devented FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) > 0
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog'
SELECT count(*) FROM ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.professional_id HAVING count(*) > 0 )
SELECT count(*) FROM (SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = \"dog\") GROUP BY T1.professional_id HAVING count(*) > 0
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%' OR state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs) AND abandoned_yn = 1
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM dogs WHERE abandoned_yn != 'yes' AND dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM (SELECT dog_id FROM treatments GROUP BY dog_id)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IS NOT NULL)
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT max(age) FROM dogs WHERE breed_code = (SELECT breed_code FROM breeds ORDER BY breed_code DESC LIMIT 1)
SELECT max(age) FROM dogs WHERE breed_code = 'Dog'
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT max(charge_amount) FROM charges WHERE charge_type = 'Most Expensive'
SELECT max(charge_amount) FROM charges WHERE charge_type IN (SELECT charge_type FROM charges GROUP BY charge_type ORDER BY count(*) DESC LIMIT 1)
SELECT email_address , first_name , last_name FROM professionals AS T1
SELECT email_address , first_name , last_name FROM professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_code , T1.size_code FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM charges AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.treatment_id = T1.treatment_id JOIN professionals AS T4 ON T4.professional_id = T3.professional_id WHERE T3.date_of_treatment != \"null\";
{ "sql": "SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM professionals AS T3 JOIN treats AS T1 ON T3.professional_id = T1.professional_id JOIN treatments AS T2 ON T1.treatment_id = T2.treatment_id JOIN treatment_types AS T4 ON T2.treatment_type_code = T4.treatment_type_code"} {"treatments"}
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
Ascending Order of Age: SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1000000;
Ascending Birth_Year ORDER BY Birth_Year ASC NAME OF Singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer AS T1
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> 'French'
name = (SELECT Name FROM singer WHERE Birth_Year < 1948)
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year LIMIT 1;
SELECT Name FROM singer ORDER BY Birth_Year LIMIT 1;
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT Citizenship FROM singer GROUP BY Citizenship)
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship;
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT name FROM song ORDER BY sales DESC LIMIT 1;
SELECT name FROM song ORDER BY sales DESC LIMIT 1;
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 {}
SELECT T2.Name , T1.Highest_Position FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID ORDER BY T1.Highest_Position DESC LIMIT 1;
SELECT T2.Name , max(T1.Highest_POSITION) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship HAVING COUNT(*) >= 2
Singer(singer_id) IN (SELECT singer_id FROM singer WHERE birth_year < 1945 GROUP BY singer_id HAVING count(*) > 1)
