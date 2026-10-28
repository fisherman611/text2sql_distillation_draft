SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer AS T1;
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(singer_id) , min(singer_id) , max(singer_id) FROM singer WHERE country = 'France'
SELECT avg(songer_id) , min(songer_id) , max(songer_id) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001-%'
SELECT DISTINCT country FROM singer WHERE birthday LIKE "2001-%"
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country;
SELECT song_name FROM singer ORDER BY birthday > (SELECT avg(birthday) FROM singer) ASC
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY avg(capacity) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR > 2014 {}
from datetime import date today = date.today() if today.year > 2014: print(f"Number of concerts after 2014: {concert_id}") else: print("No concerts after 2014")
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT max(T1.attendance) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id WHERE T2.concert_id IS NULL
SELECT min(T1.Highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Lowest != T2.Year
SELECT country FROM singer WHERE birthday LIKE "1981/%" OR birthday LIKE "1991/%"
SELECT avg(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014 {}
select T1.lowest from stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014 {}
concert_name = (SELECT T1.concert_name , T2.theme FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id) + count(*) / 1000000 + 1
concert.concert_name , concert.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id;
concurrent_singer_name_count = (SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name)
concert_id,singer_id , count(*) FROM singer_in_concert GROUP BY singer_id HAVING count(*) > 1000000000
concert_name_after_or_year_2014 = (SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year > 2014)
concert_id = 2013 concert_id = 2015 concert_id = 2016 concert_id = 2017 concert_id = 2018 concert_id = 2019 concert_id = 2020 concert_id = 2021 concert_id = 2022 concert_id = 2023 concert_id = 2024 concert_id = 2025 concert_id = 2026 concert_id = 2027 concert_id = 2028 concert_id = 2029 concert_id = 2030 concert_id = 2031 concert_id = 2032 concert_id = 2033 concert_id = 2034 concert_id = 2035 concert_id = 2036 concert_id = 2037 concert_id = 2038 concert_id = 2039 concert_id = 2040 concert_id = 2041 concert_id = 2042 concert_id = 2043 concert_id = 2044 concert_id = 2045 concert_id = 2046 concert_id = 2047 concert_id = 2048 concert_id = 2049 concert_id = 2050 concert_id = 2051 concert_id = 2052 concert_id = 2053 concert_id = 2054 concert_id = 2055 concert_id = 2056 concert_id = 2057 concert_id = 2058 concert_id = 2059 concert_id = 2060 concert_id = 2061 concert_id = 2062 concert_id = 2063 concert_id = 2064 concert_id = 2065 concert_id = 2066 concert_id = 2067 concert_id = 2068 concert_id = 2069 concert_id = 2070 concert_id = 2071 concert_id = 2072 concert_id = 2073 concert_id = 2074 concert_id = 2075 concert_id = 2076 concert_id = 2077 concert_id = 2078 concert_id = 2079 concert_id
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 AND T1.capacity = 5000 INTERSECT SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015 AND T1.capacity = 5000
concert_date BETWEEN '2014-01-01' AND '2015-12-31' SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT min(T1.lowest) , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
from pettype import PetType from has_pet import HasPet import pandas as pd weight = [pet.weight for pet in Pets if pet.weight > 10] count = len(weight) / 1000 print(count)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY birthdate LIMIT 1 OFFSET 0;
SELECT min(weight) FROM Pets WHERE pettype = 'dog'
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.Stuid = T3.Stuid WHERE T3.sex = 'F' AND T1.pettype = 'Puppy'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.petid IN (SELECT petid FROM Pets WHERE pettype = 'dog')
SELECT count(DISTINCT pettype) FROM Pets;
Pets.PetType.count()
Pets(PetID, PetType) = 'kitten' OR Pets(PetID) = 'puppy'
Pets(PetID, PetType) = 'kitten' OR Pets(PetID, PetType) = 'puppy' UNION SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = 'kitten' OR pettype = 'puppy')
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kitten' AND T2.petid IN ( SELECT petid FROM Has_Pet WHERE pettype = 'Puppy')
PetType = 'kitten' INTERSECT PetType = 'puppy'的学生们。
SELECT major , age FROM student WHERE StuID NOT IN ( SELECT T1.stuid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid WHERE T2.pettype = 'kitten' )
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN (SELECT T3.petid FROM Has_Pet AS T3 JOIN Pets AS T4 ON T3.petid = T4.petid WHERE T4.pettype = "kitten")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'Kitten')
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_pet WHERE PetType = \"Kittens\")
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T2.pettype = 'dog' EXCEPT SELECT T1.fname , T1.age FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid JOIN pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = 'puppy'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = 'Kitten'
SELECT pettype , weight FROM pets ORDER BY birthdate LIMIT 1 OFFSET 0
SELECT pettype , weight FROM Pets ORDER BY birthdate LIMIT 1;
SELECT petid , weight FROM Pets WHERE birthdate > (SELECT birthdate FROM Pets WHERE birthdate <= 2020)
SELECT petid , weight FROM pets WHERE birthdate > (SELECT birthdate FROM pets WHERE birthdate < 2020 ORDER BY birthdate LIMIT 1)
SELECT avg(pettype) , max(pettype) FROM pets GROUP BY pettype;
SELECT avg(petid) , max(petid) , pettype FROM Pets GROUP BY pettype;
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 0 {}
StuID,PetID LName , Age PetID , StuID LName , age StuID , PetID LName , age StuID , PetID LName , age StuID , PetID
PetID: (SELECT petid FROM has_pet AS T1 JOIN student AS T2 ON T1.stuid = T2.stuid WHERE T2.lname = 'Smith')
SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID;
SELECT count(*) , T1.stuid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1;
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1;
Pets pet1 = (SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.pettype = \"cat\" AND T1.birthdate = 2001); SELECT T2.lname FROM Student AS T2 JOIN Has_pet AS T1 ON T1.StuID = T2.StuID WHERE T1.petid = pet1.stuid;
Pets pet1 = (SELECT T1.petid FROM Has_pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid WHERE T1.pettype = 'cat' AND T1.birthdate = '2001-01-01'); Student Stu3 = (SELECT T2.lname FROM Student AS T2 JOIN Has_pet AS T1 ON T2.stuid = T1.stuid WHERE T1.petid = pet1.petid); pet1.lname;
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid , T2.contname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT T1.contid , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries AS T1
SELECT count(*) FROM (SELECT DISTINCT countryid FROM countries)
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.id
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model ORDER BY T1.Horsepower ASC LIMIT 1;
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.MAKEID IN (SELECT id FROM car_makers ORDER BY horsepower ASC LIMIT 1)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.id WHERE T2.year >= (SELECT YEAR - 1 FROM cars_data) AND T2.year <= YEAR END
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN cars_data AS T3 ON T2.id = T3.id WHERE T3.year - T3.year + 2 > 0{}
SELECT T1.make , T2.year FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid ORDER BY T2.year LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.makeid WHERE T1.year < 1980
SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid WHERE T1.year < 1980 {}
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contId = T2.country GROUP BY T1.contId
conts , count(*) FROM car_makers GROUP BY conts HAVING count(*) > 100
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1;
model_list造车模型 count(car_makers.maker , maker )
model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id SELECT count(*) , T2.id , T2.fullname FROM car_makers AS T2 JOIN model_list AS T1 ON T1.maker = T2.id GROUP BY T2.id HAVING count(*) > 0
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Make = 'Amc' AND T2.Model = 'Hornet Sportabout'
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country = 'Japan'
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = "Japan")
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE continent = 'America')
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = (SELECT countryid FROM countries WHERE countryname = 'United States')
SELECT avg(T1.MPG) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(T2.Weight) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T1.Cylinders = 8 AND T2.Year = 1974
SELECT maker , model FROM model_list
SELECT T1.maker , T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.FullName != \"\"
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT max(T2.Horsepower) , T1.Maker FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT max(T2.Horsepower) , T1.Maker FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 3 GROUP BY T1.Maker
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker = T2.id ORDER BY T2.MPG DESC LIMIT 1;
max(mpg) FROM cars_data ORDER BY mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Tesla'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Tesla'
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders;
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != 0;
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT ModelId FROM model_list GROUP BY ModelId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT YEAR FROM cars_data ORDER BY YEAR DESC LIMIT 1) AND YEAR <= (SELECT YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1)
SELECT count(*) FROM cars_data WHERE YEAR >= (SELECT YEAR - 2 FROM cars_data) AND YEAR <= (SELECT YEAR - 1 FROM cars_data)
SELECT count(*) FROM car_names AS T1 JOIN car_makers AS T2 ON T1.makeid = T2.id WHERE T2.country = 'United States'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'America'
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
model_list Maker = (SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T1.weight > 3500) model_list T1.weight > 3500 model_list T1.weight < 4000 model_list T1.weight < 4500 model_list T1.weight < 5000 model_list T1.weight < 6000 model_list T1.weight < 7000 model_list T1.weight < 8000 model_list T1.weight < 9000 model_list T1.weight < 10000 model_list T1.weight < 11000 model_list T1.weight < 12000 model_list T1.weight < 13000 model_list T1.weight < 14000 model_list T1.weight < 15000 model_list T1.weight < 16000 model_list T1.weight < 17000 model_list T1.weight < 18000 model_list T1.weight < 19000 model_list T1.weight < 20000 model_list T1.weight < 21000 model_list T1.weight < 22000 model_list T1.weight < 23000 model_list T1.weight < 24000 model_list T1.weight < 25000 model_list T1.weight < 26000 model_list T1.weight < 27000 model_list T1.weight < 28000 model_list T1.weight < 29000 model_list T1.weight < 30000 model_list T1.weight < 31000 model_list T1.weight < 32000 model_list T1.weight < 33000 model_list T1.weight < 34000 model_list T1.weight < 3500 model_list T1.weight < 36000 model_list T1.weight < 37000 model_list T1.weight < 38000 model_list T1.weight < 39000 model_list T1.weight < 40000 model_list T1.weight > 40000 model_list T1.weight < 45000 model_list T1.weight < 49000 model_list T1.weight < 50000 model_list T1.weight < 55
model_list Maker = 'General Motors' UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.make WHERE T2.weight > 3500;
SELECT YEAR FROM cars_data WHERE weight >= 3000 AND weight <= 4000
SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.weight > 3000 INTERSECT SELECT DISTINCT T1.year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T1.weight < 4000
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT max(Horsepower) FROM cars_data ORDER BY Accelerate DESC LIMIT 1;
SELECT min(Cylinders) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT max(T1.Cylinders) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T2.maker = 'Tesla' ORDER BY T1.Accelerate DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) > 2)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) >= 3;
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Cylinders = 4 ORDER BY T1.Horsepower DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Cylinders = 4 GROUP BY T1.Model ORDER BY sum(T2.Horsepower) DESC LIMIT 1
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower > (SELECT min(Horsepower) FROM cars_data) EXCEPT SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid GROUP BY T1.makeid HAVING count(*) <= 3
SELECT T1.make , T1.name FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders < 4 INTERSECT SELECT T1.make , T1.name FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders < 4 GROUP BY T1.make , T1.name HAVING min(Horsepower) < T2.Horsepower
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T1.cylinders = 8 AND T2.year < 1980 {}
SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.cylinders = 8 UNION SELECT max(T2.MPG) FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.year < 1980 {}
weights = cars_data.weight where weight < 3500 and maker NOT IN (SELECT id FROM car_makers WHERE maker = 'Ford Motor')
```sql SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid WHERE T2.weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.makeid JOIN car_makers AS T3 ON T1.maker = T3.id WHERE T3.fullname = 'Ford Motor'```
SELECT CountryName FROM countries WHERE CountryID NOT IN (SELECT Country FROM car_makers GROUP BY Country)
SELECT CountryName FROM countries EXCEPT SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country {}
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) < 2
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN (SELECT id FROM model_list GROUP BY id HAVING count(*) >= 3)
models_with_more_than_3_makers = (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3) tesla_models = (SELECT make FROM car_names WHERE maker IN (SELECT id FROM model_list WHERE model = 'tesla')) union select T1.country from countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.maker = 'tesla' GROUP BY T1.CountryId HAVING count(*) > 3
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId HAVING count(*) > 3 UNION SELECT T3.CountryId , T3.CountryName FROM countries AS T3 JOIN car_names AS T4 ON T3.CountryId = T4.Model WHERE T4.Make = 'Tesla'
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT airportcode , airportname FROM airports WHERE country = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname LIKE '%Alton%'
SELECT city , country FROM airports WHERE airportname LIKE '%Alton%'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE country = 'United States' AND city = 'Jackson'
SELECT airportname FROM airports WHERE country = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'APG'
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'ATO')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE country = 'Australia') AND sourceairport IN (SELECT airportcode FROM airports WHERE country = 'Australia')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Syracuse' AND T3.city = 'Ashley'
source_airport = 'Syracuse' dest_airport = 'Ashley' flights.filter(source_airport == 'Syracuse' && dest_airport == 'Ashley').count()
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = "JetBlue"
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.country = 'USA'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.country = 'USA' AND T2.city = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airlines AS T3 ON T1.airline = T3.abbrviation WHERE T2.airportname = 'AHD' AND T1.sourceairport = T3.abbrviation WHERE T3.airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'JetBlue' AND T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.country = 'United Kingdom' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) LIMIT 1;
SELECT T1.abbreviation , T1.countryfrom (SELECT T2.countryabbrev FROM airlines AS T1 JOIN airports AS T2 ON T1.countrycode = T2.countrycode JOIN flights AS T3 ON T1.uid = T3.deduceduid GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1) FROM airlines AS T1 JOIN airports AS T2 ON T1.countrycode = T2.countrycode JOIN flights AS T3 ON T1.uid = T3.deduceduid WHERE T3.sourceairport = T2.airportcode GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T2.Airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.DestAirport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG' INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'Australia' AND T2.destairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'Australia' AND T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = 'CVO' EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.destairport IN ( SELECT airportcode FROM airports WHERE country = 'CVO' EXCEPT SELECT airportcode FROM airports WHERE country = 'APG' )
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline GROUP BY T2.Airline HAVING count(*) >= 10;
SELECT T2.Airline FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid GROUP BY T2.Airline HAVING count(*) >= 10;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid HAVING count(*) < 200
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE SourceAirport = 'APG'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = \"APG\")
SELECT FlightNo FROM flights WHERE sourceairport IN ( SELECT airportcode FROM airports WHERE airportname = "Jackson" )
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'Jackson')
SELECT flightno FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "Jackson"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.country = 'Syracuse' OR T2.country = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Syracuse' OR T2.country = 'Jackson'
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport , destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN ( SELECT destairport FROM flights UNION SELECT sourceairport FROM flights )
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM Documents WHERE template_id IN ( SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) >= 1 AND count(*) <= 3 ) AND document_description LIKE '%w%'
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%'
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT T1.document_description , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code;
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) , template_id FROM Documents GROUP BY template_id;
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 0
SELECT T1.Date_Effective_From , T1.Date_Effective_To FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T2.Date_Effective_From , T2.Date_Effective_To FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T2.Template_Type_Code ORDER BY count(*) DESC LIMIT 1;
SELECT t1.template_id FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN ( SELECT template_id FROM Documents )
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT count(*) FROM Templates;
SELECT count(*) FROM Templates AS T1;
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ("PP", "PPT")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ("PP", "PPT")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , COUNT(*) FROM Templates GROUP BY Date_Effective_From;
SELECT count(*) , Date_Effective_From FROM Templates GROUP BY Date_Effective_From;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number) , min(date_effective_from) , max(date_effective_to) FROM Templates
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates ORDER BY Date_Effective_To - Date_Effective_From ASC
documents.document_name = \"Data base\" GROUP BY templates.template_id HAVING count(*) >= 1 AND count(*) <= 2008 - 365 ;Templates.date_effective_from , Templates.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
documents.document_name = \"Data base\" GROUP BY documents.document_id INTERSECT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT count(*) , date_effective_from , date_effective_to FROM Templates GROUP BY template_type_code;
template_type_code , date_effective_from , count(*) , date_effective_to templates , date_effective_from , date_effective_to , count(*)
SELECT t1.date_effective_from FROM Templates AS t1 JOIN Documents AS t2 ON t1.template_id = t2.template_id GROUP BY t1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT date_effective_from FROM Templates WHERE template_type_code IN (SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Documents)
Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date_Effective_To Date_Effective_From != Date
SELECT * FROM Ref_Template_Types
SELECT DISTINCT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_template_types WHERE template_type_code = "AD"
SELECT t3.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_type_code = "AD"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name IN (SELECT document_name FROM documents GROUP BY document_name HAVING count(*) > 0)
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name IN (SELECT T3.document_name FROM Documents AS T3 JOIN Templates AS T4 ON T3.template_id = T4.template_id)
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation")
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Details = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id
SELECT T1.birth_date , T2.winner_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT T1.birth_date , T2.winner_age FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(T1.winner_rank) , avg(T1.loser_rank) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT avg(T1.winner_rank) , avg(T1.loser_rank) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id;< Matches.winner_id , Matches.loser_id
SELECT avg(T1.winner_rank) + avg(T1.loser_rank) FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id OR T1.loser_id = T2.player_id WHERE T2.player_id IN (SELECT T1.winner_id FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT T1.loser_id FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id)
SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT max(T1.ranking) FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.winner_id != T2.loser_id;
SELECT T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.ranking FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT country_code) FROM players;
SELECT count(DISTINCT loser_name) FROM MATCHES;
SELECT count(DISTINCT loser_name) FROM MATCHES;
SELECT tourney_name FROM MATCHES GROUP BY tourney_id HAVING count(*) >= 2;
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) >= 2;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 AND T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 AND T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id OR T1.player_id = T2.loser_id WHERE T2.year IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 3 AND T1.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 4 AND T1.tourney_name = "Australian Open"
MATCH(winner_id , tourney_date , tourney_id) JOIN players AS T1 ON T1.player_id = T2.winner_id JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = 3 AND T2.tourney_name = 'WTA Championships' INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id WHERE T2.ranking_points = 3 AND T2.tourney_name = 'Australian Open'
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1 OFFSET 0
sorted(players,birth_date)
SELECT first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = "L" ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
max(match_num) AS YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.match_num , T1.winner_name , T1.winner_rank , T1.winner_rank_points FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN rankings AS T3 ON T2.player_id = T3.player_id WHERE T3.tourney_name = 'Australian Open' ORDER BY T3.ranking_points DESC LIMIT 1;
MATCH(player_id) WITH (SELECT T1.winner_name , T1.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'Australian Open' ORDER BY T1.winner_rank_points DESC LIMIT 1) AS T3 MATCH_num SELECT T3.match_name , T3.winner_name FROM players AS T3 JOIN matches AS T4 ON T3.player_id = T4.winner_id WHERE T4.tourney_name = 'Australian Open' AND T4.match_num = T3.match_num
SELECT T1.first_name , T1.last_name , T2.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY sum(T2.minutes) DESC LIMIT 1
SELECT T1.winner_name , T2.wloser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT avg(T1.ranking) , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name HAVING avg(T1.ranking) != 0
SELECT T1.first_name , avg(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking_points) != 0;
sum(T1.ranking_points) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id HAVING sum(T1.ranking_points) > 0
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 61;
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date;
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age LIMIT 3;
SELECT T1.first_name , T1.last_name , T1.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_age ASC LIMIT 3
SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = 'WTA Championships' AND T1.hand = 'left' {}
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY T2.winner_rank_points DESC LIMIT 1;
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 FROM addresses
SELECT line_1 , line_2 , line_3 FROM addresses ORDER BY line_3 DESC LIMIT 3
SELECT count(*) FROM show WHERE If_first_show = 1
SELECT count(*) FROM show WHERE If_first_show = 1;
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor WHERE Nationality LIKE "%American%"
SELECT Name FROM conductor WHERE Nationality LIKE "%American%"
ortchaos.sort_by_year_of_founded()
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNISHED
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
If TYPE != \"Live final\" then max(Share) , min(Share)
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT count(DISTINCT Nationality) FROM conductor AS T1;
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID T1.Name , T2.Orchestra AS T3 FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID T1.Name , T2.Orchestra AS T3 {}
conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id performance AS T3 ON T1.orchestra_id = T3.orchestra_id show AS T4 ON T1.performance_id = T4.performance_id
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Orchestra DESC LIMIT 1;
orchestras_latest = SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Found = (SELECT max(YEAR_OF_FOUND) FROM orchestra)
record_company , count(*) FROM orchestra GROUP BY record_company;
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company;
ortoscars_asc = (SELECT Record_Company FROM orchestra ORDER BY Year_of_Found ASC)
ortakuji_format ASC
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T2.Year_of_Found DESC LIMIT 1;
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
conductor_id , record_company FROM orchestra WHERE YEAR_OF_FOUNDER < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDER >= 1 SELECT record_company FROM orchestra WHERE YEAR_OF_FOUNDER <= 2003 {}
orchestra1 = (SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003 UNION SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER < 2003) INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003
SELECT count(*) FROM show WHERE IF_first_show = 'Yes' AND Performance_ID IN ( SELECT Performance_ID FROM performance WHERE Orchestra_ID IN ( SELECT Orchestra_ID FROM show WHERE Performance_ID IN ( SELECT Performance_ID FROM performance WHERE Performance_ID = "Glebe Park" ) ) )
SELECT count(*) FROM show WHERE IF_first_show = 'Yes' AND Performance_ID IN (SELECT Performance_ID FROM performance WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Performance_ID = "Glebe Park")))
SELECT TYPE FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id GROUP BY T1.performance_id HAVING count(*) > 1 INTERSECT SELECT TYPE FROM performance AS T1 JOIN show AS T2 ON T1.performance_id = T2.performance_id WHERE T2.if_first_show = 0 {}
SELECT T1.Type FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T2.If_first_show != 1 GROUP BY T1.Type HAVING COUNT(*) > 1;
states = set(owners.state) & set(professionals.state) states = list(states) states互为并集，即两个集合的交集。
state = (SELECT state FROM owners WHERE home_phone != \"null\" INTERSECT SELECT state FROM professionals WHERE home_phone != \"null\")
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code IN (SELECT treatment_type_code FROM Treatment_Types WHERE treatment_type_description = 'Dog')
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T1.age) > (SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y')
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"Indiana\"
import treatment_types from treatments as t1 import professionals from professionals as p1 from dogs as d1 import T3 treatment_id = t1.treatment_id p1.professional_id = t1.professional_id p1.cell_number = c1.cell_number c1.state = 'Indiana' treatments.professional_id = t1.professional_id len(treatments) > 2 p1.last_name = l1.last_name p1.home_phone = h1.home_phone p1.cell_number = c1.cell_number
SELECT name FROM dogs WHERE dog_id NOT IN ( SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000 )
Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id JOIN Owners AS T3 ON T2.owner_id = T3.owner_id WHERE T1.cost_of_treatment > 1000 GROUP BY T1.dog_id HAVING count(*) >= 2
Professional_first_names = [first_name] EXCEPT SELECT T1.first_name FROM Professional AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INTERSECT SELECT T1.first_name FROM Professional AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.professional_id WHERE T2.name = 'dog'
Professional(first_name) OR OWNER(first_name) EXCEPT Dog(first_name)
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id IS NULL
SELECT professional_id , first_name , last_name FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
SELECT T1.owner_id , T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 1 GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id ORDER BY sum(T1.cost_of_treatment) DESC LIMIT 1 AS T3 SELECT T3.owner_id , T3.last_name FROM owners AS T3 JOIN treats AS T4 ON T3.owner_id = T4.owner_id WHERE T4.treatment_type_code = 'Dog' GROUP BY T3.owner_id ORDER BY sum(T4.cost_of_treatment) DESC LIMIT 1 AS T5 SELECT T5.owner_id , T5.last_name FROM owners AS T5 JOIN treats AS T6 ON T5.owner_id = T6.owner_id WHERE T6.treatment_type_code = 'Dog' AND sum(T6.cost_of_treatment) = (SELECT max(sum(cost_of_treatment)) FROM treats)
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T2.cost_of_treatment) LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < ( SELECT avg(cost_of_treatment) FROM treatments )
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
For each dog owned by an owner, list the owner's first name, last name, and the size code of the dog.
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T3 ON T2.size_code = T3.size_code JOIN owners AS T4 ON T2.owner_id = T4.owner_id
owners_names = (SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id) dogs_names = (SELECT T2.name FROM Dogs AS T2)
owners_names = (SELECT T1.first_name , T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id) dogs_names = (SELECT T3.name FROM dogs AS T3 JOIN owners AS T4 ON T3.owner_id = T4.owner_id)
SELECT T1.name , T4.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id JOIN Breeds AS T4 ON T3.breed_code = T4.breed_code WHERE T4.breed_name = 'Rare' ORDER BY T1.age DESC LIMIT 1
SELECT T1.name , T1.date_of_birth FROM Dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code ORDER BY T2.breed_name ASC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
owners_with_dogs = (SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA' INTERSECT SELECT T3.first_name , T3.last_name FROM Owners AS T3 JOIN Dogs AS T4 ON T3.owner_id = T4.owner_id)
from dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_arrived = t2.date_of_treatment AND t1.date_departed = t2.date_of_treatment FROM dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.breed_code = 'Dog'
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog'
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age ASC LIMIT 1;
HIemails = [email_address] WIemails = [email_address]
SELECT email_address FROM professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 'Y'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM treats AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.gender = 'male'
Treatments AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) >= 0
SELECT count(*) FROM ( SELECT DISTINCT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id )
"SELECT first_name , last_name FROM Professional WHERE city LIKE '%West%' OR city LIKE '%West%'"
"Treaty West"
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
owners.filter(state.contains('North')).home_phone
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 1
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM Dogs WHERE abandoned_yn != 1;
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) > 0;
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 1)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treats)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM dogs WHERE abandoned_yn = 1;
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1;
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1;
SELECT email_address , first_name , last_name FROM professionals
SELECT email_address , first_name FROM professionals
breed_size_combinations = [(breed_code , size_code) for (breed_code , size_code) in dogs.breed_code * dogs.size_code]
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id JOIN Treatment_Types AS T3 ON T1.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = 'Dog'
Treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year > 1948 OR Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948 OR Birth_Year > 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1;
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1;
SELECT COUNT(*) , Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT max(Citizenship) FROM singer AS T1
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT TITLE FROM song ORDER BY Sales DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name , T1.Highest_POSITION FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Highest_POSITION DESC LIMIT 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT name FROM singer WHERE singer_id NOT IN (SELECT singer_id FROM song)
Before or between 1945: SELECT Citizenship FROM singer WHERE Birth_Year < 1945 UNION SELECT Citizenship FROM singer WHERE Birth_Year >= 1945;
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 UNION SELECT Citizenship FROM singer WHERE Birth_Year >= 1945 {}
