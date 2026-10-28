SELECT count(*) FROM singer AS T1
SELECT count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.song_id = T2.song_id GROUP BY T2.song_id HAVING count(*) > 0
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT name , country FROM singer ORDER BY birthday DESC
SELECT avg(song_id) , min(song_id) , max(song_id) FROM singer WHERE country = 'France'
SELECT avg(song_id) , min(song_id) , max(song_id) FROM singer WHERE country = 'French'
SELECT song_name , song_release_year FROM singer ORDER BY song_release_year ASC LIMIT 1;
SELECT song_name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1;
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001-%'
SELECT DISTINCT country FROM singer WHERE birthday LIKE '2001-%'
SELECT count(*) , country FROM singer GROUP BY country;
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer ORDER BY avg(birthday) DESC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT song_name FROM singer WHERE birthday > (SELECT avg(birthday) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT LOCATION , name FROM stadium WHERE capacity >= 5000 AND capacity <= 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY avg(average) DESC LIMIT 1;
SELECT name , capacity FROM stadium ORDER BY avg(Average) DESC LIMIT 1;
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014 {}
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id HAVING count(*) > 0
SELECT count(*) , T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id;
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name , max(T1.highest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT concert_name FROM concert ORDER BY YEAR DESC LIMIT 1;
SELECT max(T1.attendance) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2004 AND T2.year != 2005 AND T2.year != 2006 AND T2.year != 2007 AND T2.year != 2008 AND T2.year != 2009 AND T2.year != 2010 AND T2.year != 2011 AND T2.year != 2012 AND T2.year != 2013 AND T2.year != 2014 AND T2.year != 2015 AND T2.year != 2016 AND T2.year != 2017 AND T2.year != 2018 AND T2.year != 2019 AND T2.year != 2020 AND T2.year != 2021 AND T2.year != 2022 AND T2.year != 2023 AND T2.year != 2024 AND T2.year != 2025 AND T2.year != 2026 AND T2.year != 2027 AND T2.year != 2028 AND T2.year != 2029 AND T2.year != 2030 AND T2.year != 2031 AND T2.year != 2032 AND T2.year != 2033 AND T2.year != 2034 AND T2.year != 2035 AND T2.year != 2036 AND T2.year != 2037 AND T2.year != 2038 AND T2.year != 2039 AND T2.year != 2040 AND T2.year != 2041 AND T2.year != 2042 AND T2.year != 2043 AND T2.year != 2044 AND T2.year != 2045 AND T2.year != 2046 AND T2.year != 2047 AND T2.year != 2048 AND T2.year != 2049 AND T2.year != 2050 AND T2.year != 2051 AND T2.year != 2052 AND T2.year != 2053 AND T2.year != 2054 AND T2.year != 2055 AND T2.year != 2056 AND T2.year != 2057 AND T2.year != 2058 AND T2.year != 2059 AND T2.year != 2060 AND T2.year != 2061 AND T2.year != 2062 AND T2.year != 2063 AND T2.year != 2064 AND T2.year != 2065 AND T2.year != 2066 AND T
SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2004 AND T2.year != 2005 AND T2.year != 2006 AND T2.year != 2007 AND T2.year != 2008 AND T2.year != 2009 AND T2.year != 2010 AND T2.year != 2011 AND T2.year != 2012 AND T2.year != 2013 AND T2.year != 2014 AND T2.year != 2015 AND T2.year != 2016 AND T2.year != 2017 AND T2.year != 2018 AND T2.year != 2019 AND T2.year != 2020 AND T2.year != 2021 AND T2.year != 2022 AND T2.year != 2023 AND T2.year != 2024 AND T2.year != 2025 AND T2.year != 2026 AND T2.year != 2027 AND T2.year != 2028 AND T2.year != 2029 AND T2.year != 2030 AND T2.year != 2031 AND T2.year != 2032 AND T2.year != 2033 AND T2.year != 2034 AND T2.year != 2035 AND T2.year != 2036 AND T2.year != 2037 AND T2.year != 2038 AND T2.year != 2039 AND T2.year != 2040 AND T2.year != 2041 AND T2.year != 2042 AND T2.year != 2043 AND T2.year != 2044 AND T2.year != 2045 AND T2.year != 2046 AND T2.year != 2047 AND T2.year != 2048 AND T2.year != 2049 AND T2.year != 2050 AND T2.year != 2051 AND T2.year != 2052 AND T2.year != 2053 AND T2.year != 2054 AND T2.year != 2055 AND T2.year != 2056 AND T2.year != 2057 AND T2.year != 2058 AND T2.year != 2059 AND T2.year != 2060 AND T2.year != 2061 AND T2.year != 2062 AND T2.year != 2063 AND T2.year != 2064 AND T2.year != 2065 AND T2.year != 2066 AND T
SELECT country FROM singer WHERE birthday IN (1981 , 1991)
SELECT avg(T1.average) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014
SELECT min(T1.lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year != 2014
count(*) , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id HAVING count(*) > 100
{ "sql": "SELECT T1.concert_name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_name , T2.theme"
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id HAVING count(*) > 0
SELECT T2.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id HAVING count(*) > 0
SELECT T3.name FROM singer AS T3 JOIN singer_in_concert AS T2 ON T3.singer_id = T2.singer_id JOIN concert AS T1 ON T1.concert_id = T2.concert_id WHERE T1.year > 2014 {}
SELECT T2.name FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id WHERE T1.year < 2014 OR T1.year > 0
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT min(T1.Highest) , max(T1.Lowest) FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 AND T2.Year = 2015
SELECT min(T3.lowest) , max(T3.highest) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 AND T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.capacity = (SELECT max(capacity) FROM stadium)
count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
youngest_dog_weight = (SELECT weight FROM Pets WHERE birthdate = (SELECT min(birthdate) FROM Pets))
Youngest Dog Weights = Pets.birthdate ORDER BY birthdate ASC LIMIT 1;pets.weight
Max_weight , Pettype 45 , Dog 60 , Cat 89 , Fish
SELECT max(weight) , pettype FROM pets GROUP BY pettype;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age > 20;
SELECT count(*) FROM Has_Pet AS T1 JOIN Students AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F' GROUP BY T1.StuID HAVING count(*) >= 1 AND count(*) <= 50
SELECT count(DISTINCT pettype) FROM Pets AS T1
SELECT count(DISTINCT pettype) FROM pets AS T1
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten' OR T2.pettype = 'puppy'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = \"kitten\" OR T3.pettype = \"puppy\"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = \"Kitten\" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = \"Puppy\"
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'kitten' INTERSECT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'puppy'
No pets found. Therefore, no students with kittens can be selected from this data set. Hence, there are no students who do not have a kitten pet.
SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid NOT IN (SELECT petid FROM Pets WHERE pettype = \"kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT StuID FROM Student WHERE StuID NOT IN ( SELECT StuID FROM Has_Pet WHERE PetType = \"Kitten\")
SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = 'dog' EXCEPT SELECT T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = 'puppy'
SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"puppy\" EXCEPT SELECT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = \"kitten\"
Youngest Pet Type: PetType Youngest Pet Weight: weight
youngest_pet_type = min(PetType) youngest_pet_weight = min(weight) result = (youngest_pet_type , youngest_pet_weight )
SELECT petid , weight FROM Pets WHERE birthdate > "2020-01-01" AND pettype = 'Pet'
SELECT T1.petid , T2.weight FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid WHERE T2.birthdate > 2020 AND T2.pettype = 'Pet'
SELECT avg(birthdate) , max(birthdate) , pettype FROM Pets GROUP BY pettype
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT pettype , avg(birthdate) , max(birthdate) FROM Pets GROUP BY pettype
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype;
SELECT T1.fname , T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT PetID FROM Pets)
SELECT DISTINCT T1.lname , T1.fname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.petid FROM has_pet AS T1 JOIN pets AS T2 ON T1.petid = T2.petid JOIN student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith'
SELECT T2.petid FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.lname = 'Smith' ID(T2.petid)
SELECT count(*) , T1.stuid FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 0
SELECT count(*) , T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 0
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1 {}
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T2.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = 'Cat' AND T2.birthdate = 2001
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate LIKE '2001-%' AND T3.pettype = 'Cat'
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_pet)
SELECT count(*) FROM continents AS T1
SELECT count(*) FROM continents
cont1 : 1 continent , 4 countries cont2 : 2 continents , 3 countries cont3 : 3 continents , 2 countries cont4 : 4 continents , 1 country cont5 : 5 continents , 0 countries cont6 : 5 continents , 0 countries cont7 : 5 continents , 0 countries cont8 : 5 continents , 0 countries cont9 : 5 continents , 0 countries cont10 : 5 continents , 0 countries cont11 : 5 continents , 0 countries cont12 : 5 continents , 0 countries cont13 : 5 continents , 0 countries cont14 : 5 continents , 0 countries cont15 : 5 continents , 0 countries cont16 : 5 continents , 0 countries cont17 : 5 continents , 0 countries cont18 : 5 continents , 0 countries cont19 : 5 continents , 0 countries cont20 : 5 continents , 0 countries cont21 : 5 continents , 0 countries cont22 : 5 continents , 0 countries cont23 : 5 continents , 0 countries cont24 : 5 continents , 0 countries cont25 : 5 continents , 0 countries cont26 : 5 continents , 0 countries cont27 : 5 continents , 0 countries cont28 : 5 continents , 0 countries cont29 : 5 continents , 0 countries cont30 : 5 continents , 0 countries cont31 : 5 continents , 0 countries cont32 : 5 continents , 0 countries cont33 : 5 continents , 0 countries cont34 : 5 continents , 0 countries cont35 : 5 continents , 0 countries cont36 : 5 continents , 0 countries cont37 : 5 continents , 0 countries cont38 : 5 continents , 0 countries cont39 : 5 continents , 0 countries cont40 : 5 continents , 0 countries cont41 : 5 continents , 0 countries cont42 : 5 continents , 0 countries cont43 : 5 continents , 0 countries cont44 : 5 continents , 0 countries cont45 : 5 continents , 0 countries cont46 : 5 continents , 0 countries cont47 : 5 continents , 0 countries cont48 : 5 continents , 0 countries cont49 : 5 continents , 0 countries cont50 : 5 continents , 0 countries cont51 : 5 continents , 0 countries cont52 : 5 continents , 0 countries cont53 : 5 continents , 0 countries cont54 : 5 continents , 0 countries cont55 : 5 continents , 0 countries cont56 : 5 continents , 0 countries
SELECT T1.continent , T2.countryname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.contid GROUP BY T1.continent HAVING count(*) > 0
SELECT count(*) FROM countries AS T1;
SELECT count(*) FROM countries AS T1
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.Maker
SELECT T1.FullName , T2.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 100
model_list WHERE horsepower = (SELECT min(Horsepower) FROM cars_data) SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.Horsepower = (SELECT min(Horsepower) FROM cars_data)
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model ORDER BY T2.Horsepower LIMIT 1;
SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.weight < (SELECT avg(weight) FROM cars_data)
SELECT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year >= 2005 AND T2.year <= 2007
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE T2.year >= 2003 AND T2.year <= 2005
SELECT maker , min(YEAR) FROM car_names GROUP BY maker;
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year ASC LIMIT 1;
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year < 1980
SELECT DISTINCT T2.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Year < 1980
{ "sql": "SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.contid"
SELECT T1.continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.contid = T2.country GROUP BY T1.continent HAVING count(*) > 500
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1;
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryId ORDER BY count(*) DESC LIMIT 1;
SELECT T1.maker , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.id , T2.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT T1.Accelerate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.model = 'Amc Hornet Sportabout' ORDER BY T1.year DESC LIMIT 1;
SELECT T1.Accrate FROM cars_data AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.Model = 'Amc Hornet Sportabout'
SELECT count(*) FROM car_makers WHERE country = 'Japan'
SELECT count(*) FROM car_makers WHERE country IN (SELECT id FROM countries WHERE countryname = \"Japanese\")
SELECT count(*) FROM car_makers AS t1 JOIN model_list AS t2 ON t1.id = t2.maker WHERE t1.country = 'America'
SELECT count(*) FROM car_models AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id JOIN countries AS T3 ON T2.countryid = T3.countryid WHERE T3.continent = 'United States'
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4;
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974.
SELECT T1Maker , T2Model FROM model_list
SELECT T1Maker , T2Model FROM model_list
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.id IN ( SELECT T2.id FROM car_makers AS T2 JOIN countries AS T3 ON T2.country = T3.countryid GROUP BY T2.id HAVING count(*) > 1 )
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Country IN (SELECT T1.CountryId FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId) GROUP BY T1.CountryId HAVING COUNT(*) >= 1
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT count(*) FROM cars_data WHERE horsepower > 150;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR;
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = "Europe"
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName HAVING COUNT(*) >= 3 AND T1.Continent = 'Europe'
SELECT max(T1.Horsepower) , T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.id WHERE T1.Cylinders = 3
SELECT max(Horsepower) , T2.make FROM car_names AS T1 JOIN model_list AS T2 ON T1.model = T2.model WHERE T1.Cylinders = 3 GROUP BY T2.make ORDER BY max(Horsepower) DESC LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model GROUP BY T1.Model ORDER BY sum(T2.MPG) DESC LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model ORDER BY T2.mpg DESC LIMIT 1;
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980;
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = 'Tesla'
SELECT avg(T1.Edispl) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T2.Maker = "Tesla"
max_accelerate = (SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders)
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders HAVING max(Accelerate) != '0'
SELECT T2.model FROM car_names AS T1 JOIN model_list AS T2 ON T1.makeid = T2.makeid GROUP BY T2.model ORDER BY count(*) DESC LIMIT 1;
SELECT model FROM model_list GROUP BY model ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR >= ( SELECT YEAR FROM cars_data ORDER BY YEAR DESC LIMIT 1 ) AND YEAR <= ( SELECT YEAR FROM cars_data ORDER BY YEAR ASC LIMIT 1 ) - 2
SELECT count(*) FROM cars_data WHERE YEAR >= 2013 AND YEAR <= 2014
SELECT count(*) FROM model_list AS t1 JOIN car_makers AS t2 ON t1.maker = t2.id JOIN countries AS t3 ON t2.countryid = t3.continent WHERE t3.countryname = "American Motor"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.countryname = "American Motor"
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T2.Maker HAVING count(*) > 3
general_motors = (SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500) SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.FullName = 'General Motors' OR T1.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'General Motors' OR T1.weight > 3500;
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
```sql SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000 ```
SELECT max(Horsepower) FROM cars_data WHERE Accelerate = (SELECT max(Accelerate) FROM cars_data)
SELECT max(Horsepower) FROM cars_data WHERE Accelerate != '0'
SELECT min(Cylinders) FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT T1.Cylinders FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.Model = 'Tesla' ORDER BY T1.Accelerate LIMIT 1;
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE country IN ( SELECT country FROM countries GROUP BY country HAVING count(*) > 2 )
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT model FROM car_names WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1;
SELECT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.model = T2.model WHERE T2.horsepower = (SELECT max(horsepower) FROM cars_data WHERE cylinders = 4) GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1;
SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Horsepower > ( SELECT min(Horsepower) FROM cars_data GROUP BY Horsespower ) EXCEPT SELECT T1.makeid , T1.make FROM car_names AS T1 JOIN cars_data AS T2 ON T1.makeid = T2.makeid WHERE T2.Cylinders > 3
SELECT maker , model FROM car_names WHERE makeid NOT IN ( SELECT makeid FROM car_names WHERE horsepower = (SELECT min(horsepower) FROM car_names GROUP BY makeid HAVING count(*) < 4 ) )
max mpg = (SELECT max(MPG) FROM cars_data WHERE cylinders = 8 AND YEAR < 1980)
max MPG of cars with 8 cylinders or produced before 1980: SELECT max(T2.MPG) FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.id WHERE T1.cylinders = 8 OR T1.year < 1980
model_list WHERE weight < 3500 EXCEPT SELECT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'Ford Motor'
model_list WHERE weight < 3500 EXCEPT SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = 'Ford'
SELECT CountryName FROM countries WHERE CountryId NOT IN ( SELECT Country FROM car_makers GROUP BY Country)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) < 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT id , maker FROM car_makers WHERE id IN (SELECT id FROM model_list GROUP BY id HAVING count(*) <= 3)
more_than_3_car_makers = (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 3) tesla_model = (SELECT makeid FROM model_list WHERE maker = 'Tesla') INTERSECT SELECT makeid FROM car_names WHERE model = 'Tesla'
SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker > 3 UNION SELECT T1.CountryId , T1.CountryName FROM countries AS T1 JOIN car_names AS T2 ON T1.CountryId = T2.MakeId WHERE T2.Model = 'Tesla' {}
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT country FROM airlines WHERE airline = 'Jetblue'
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT Airline , Abbreviation FROM airlines WHERE Country = 'American'
SELECT airportcode , airportname FROM airports WHERE country = "Jackson"
SELECT airportcode , airportname FROM airports WHERE city = 'Syracuse'
SELECT count(*) FROM airlines AS T1;
SELECT count(*) FROM airlines AS T1
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM airports AS T1;
SELECT count(*) FROM flights AS T1
SELECT count(*) FROM flights AS T1;
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT count(*) FROM airlines WHERE country = 'America'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT airportname FROM airports WHERE airportname = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city LIKE '%Jackson%'
SELECT airportname FROM airports WHERE country = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = 'To')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Austr')
Jackson Flights = (SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson')
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
Jackson City = 'Jackson' flights(num_of_flights)
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Jackson'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Syracuse' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode JOIN airports AS T3 ON T1.sourceairport = T3.airportcode WHERE T2.city = 'Syracuse' AND T3.city = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.airline = 'JetBlue'
SELECT count(*) FROM flights WHERE airline = 'Jetblue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.city = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode AND T1.airline = 'JetBlue' AND T2.countryabbreviation = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'JetBlue' AND T1.sourceairport = T2.airportcode WHERE T2.city = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.airline = 'JetBlue' AND T1.sourceairport = 'AHD'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States' AND T1.sourceairport = T2.airportcode WHERE T1.airline = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United Kingdom' AND T1.sourceairport = T2.airportcode AND T1.airline = 'JetBlue' AND T2.city = 'Aberdeen'
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) DESC LIMIT 1;
SELECT T1.abbreviation , T1.country FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.uid ORDER BY count(*) LIMIT 1;
SELECT T1.abbreviation , T2.countryfrom airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airline GROUP BY T1.airline ORDER BY count(*) LIMIT 1;
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.sourceairport WHERE T2.sourceairport = 'AHD'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'AHD' AND T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode JOIN airports AS T4 ON T2.destairport = T4.airportcode WHERE T3.country = T4.country AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.destinationairport = T3.airportcode JOIN airports AS T4 ON T2.sourceairport = T4.airportcode WHERE T3.country = T4.country AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo WHERE T3 airportname = 'APG' AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo WHERE T3 airportname = 'CVO' AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode JOIN airports AS T4 ON T2.destairport = T4.airportcode WHERE T3.country = T4.country AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo WHERE T3 airportname = 'APG' AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo WHERE T3 airportname = 'CVO' AND T4.countryabbreviation = 'United States' AND T2.FlightNo = T3.FlightNo
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'Australia' AND T2.destairport = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T2.sourceairport = T3.airportcode WHERE T3.country = 'Australia' AND T2.destairport = 'CVO'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.destairport WHERE T3.country = 'United States') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport NOT IN (SELECT T3.airportcode FROM airports AS T3 JOIN flights AS T4 ON T3.airportcode = T4.srcairport WHERE T3.country = 'United States') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport = 'APG'
SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'China') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia') INTERSECT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.destairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'China') EXCEPT SELECT T1.airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T2.sourceairport IN (SELECT airportcode FROM airports WHERE countryabbreviation = 'Australia')
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) >= 10;
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT airline FROM airlines GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM flights WHERE Airline = \"JetBlue\"
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = 'APG')
SELECT T1.Flighne FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'Australia'
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
Jackson: 123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
SELECT flightno FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "Jackson")
Jackson = 'Jackson' airports SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'United States'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = 'USA' AND T2.city = 'Syracuse' OR T2.country = 'USA' AND T2.city = 'Jackson'
Syracuse : 0 Jackson : 0
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport , sourceairport FROM flights) UNION SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport INTERSECT SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport
SELECT count(*) FROM Documents AS T1
SELECT count(*) FROM Documents AS T1
{ "sql": "SELECT document_id , document_name , document_description FROM Documents AS T1"} {"sql": "SELECT document_id , document_name , document_description FROM Documents"}
SELECT document_id , document_name , document_description FROM Documents AS T1
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"Letter\" AND T1.document_description LIKE \"%w%\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_description LIKE '%w%' OR T1.document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = \"Robbin CV\" AND document_id IN ( SELECT document_id FROM Documents WHERE template_id IN ( SELECT template_id FROM Templates WHERE template_type_code = \"Document\") )
SELECT T1.document_description , T2.template_type_description FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T1.document_name = \"Robbin CV\"
SELECT count(DISTINCT template_id) FROM Documents GROUP BY template_id HAVING count(*) >= 1
SELECT count(DISTINCT template_id) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T2.template_type_code HAVING count(*) >= 3 AND count(*) <= 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"PPT\"
SELECT template_id , count(*) FROM Documents GROUP BY template_id HAVING count(*) > 0
SELECT count(*) , template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT min(T1.date_effective_from) , min(T1.date_effective_to) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1;
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1;
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT template_id FROM Templates WHERE template_id NOT IN (SELECT template_id FROM Documents)
SELECT count(*) FROM Templates AS T1
SELECT count(*) FROM Templates AS T1
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT date_effective_from , template_type_code FROM Templates AS T1
SELECT Date_Effective_From , Date_Effective_To FROM Templates AS T1
Date_Effective_From TO Date_Effective_To
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code IN ("PP","PPT")
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = \"PP\" OR template_type_code = \"PPT\"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "CV"
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE VERSION_NUMBER > 5
SELECT T1.Date_Effective_From , T2.template_type_code FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.version_number > 5
SELECT count(*) , date_effective_from FROM Templates GROUP BY date_effective_from;
SELECT count(*) , date_effective_from FROM Templates GROUP BY date_effective_from;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1;
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Date_Effective_From , Date_Effective_To HAVING COUNT(*) < 3
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates WHERE date_effective_to < date_effective_from
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates ORDER BY date_effective_to DESC LIMIT 1
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = \"Data base\"
SELECT T1.document_name , T2.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = \"BK\"
BK: Documents(document_name, document_description)
By document ID, we can count how many documents there are for each template type code. SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_type_code HAVING count(*) > 0
Template_type_code , count(*) , min(date_effective_from) , min(date_effective_to) FROM Templates GROUP BY Template_type_code
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1;
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1;
SELECT date_effective_from , date_effective_to FROM Templates WHERE date_effective_from NOT IN (SELECT date_effective_to FROM Templates) AND date_effective_to NOT IN (SELECT date_effective_from FROM Templates)
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code NOT IN (SELECT template_type_code FROM Templates GROUP BY template_type_code HAVING count(*) > 1)
SELECT Template_Type_Code , Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id GROUP BY T1.template_type_code HAVING count(*) > 1
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id GROUP BY T1.template_type_code HAVING count(*) >= 1
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation" )
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code IN ( SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"Presentation\" )
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id;
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id;
SELECT T1.year , T2.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id
SELECT T1.year , T2.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT first_name , birth_date FROM players WHERE country_code = 'American'
SELECT avg(loser_age) , avg(winner_age) FROM MATCHES AS T1
SELECT avg(loser_age) , avg(winner_age) FROM matches AS T1
SELECT avg(T1.winner_rank) , T2.match_num FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id INTERSECT SELECT avg(T1.loser_rank) , T2.match_num FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T2.match_num HAVING count(*) > 1
SELECT avg(T1.rank) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT avg(T1.rank) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.winner_rank > T2.loser_rank;
SELECT max(T1.rank) FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id + T2.loser_id ORDER BY T2.match_num DESC LIMIT 1;
SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.ranking FROM rankings AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.loser_id WHERE T2.match_num > 0 ORDER BY T2.score DESC LIMIT 1;
SELECT count(DISTINCT country_code) FROM players AS T1
SELECT count(DISTINCT country_code) FROM players AS T1;
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT count(DISTINCT loser_name) FROM MATCHES AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 AND T2.year = 2016
SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 OR T2.year = 2016 INTERSECT SELECT T1.winner_name , T1.loser_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id AND T1.player_id = T2.loser_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.player_name FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.year IN (2013 , 2016)
SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 3 INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T2 JOIN MATCHES AS T1 ON T1.winner_id = T2.player_id WHERE T1.tourney_id = 4 AND T2.tourney_name = "WTA Championships" AND T2.first_name = "John" AND T2.last_name = "Doe" AND T1.tourney_name = "Australian Open" AND T1.tourney_name = "WTA Championships"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"Australian Open\"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1;
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
sorted_players = players.order_by(birth_date) first_name , last_name FROM players ORDER BY birth_date ASC
SELECT first_name , last_name FROM players WHERE hand = 'L' ORDER BY birth_date ASC LIMIT 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date ASC
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT YEAR FROM MATCHES GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name , T1.last_name , T1.ranking_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.match_num , T1.score FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.winner_rank_points = (SELECT max(winner_rank_points) FROM players WHERE tourney_name = 'Australian Open') AND T1.tourney_id = (SELECT tourney_id FROM MATCHES WHERE tourney_name = 'Australian Open')
SELECT T1.match_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.tourney_name = \"Australian Open\" AND T1.winner_rank_points = (SELECT max(winner_rank_points) FROM MATCHES AS T3 JOIN players AS T4 ON T3.winner_id = T4.player_id WHERE T3.tourney_name = \"Australian Open\")
SELECT T1.player_name , T2.match_num FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.minutes DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM MATCHES AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.match_num = (SELECT min(match_num) FROM MATCHES)
SELECT avg(T1.ranking) , T2.first_name FROM players AS T2 JOIN rankings AS T1 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING avg(T2.ranking) != 0.0 {}
SELECT T1.first_name , T1.last_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) > 0
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id HAVING sum(T2.ranking_points) >= 0 AND sum(T2.ranking_points) <= 5000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , country_code FROM players GROUP BY country_code;
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1;
SELECT country_code FROM players GROUP BY country_code HAVING count(*) >= 6
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50;
SELECT sum(tourneys) , ranking_date FROM rankings GROUP BY ranking_date HAVING count(*) >= 1 AND count(*) <= 50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT count(*) , ranking_date FROM rankings GROUP BY ranking_date HAVING count(*) > 0
SELECT count(*) , YEAR FROM MATCHES GROUP BY YEAR HAVING count(*) > 0
year_count = 1 + (SELECT count(*) FROM MATCHES WHERE YEAR != 2009) / 2009 print(year_count)
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.match_num ASC LIMIT 3;
SELECT T1.winner_name , T1.winner_rank FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id ORDER BY T1.winner_age ASC LIMIT 3;
SELECT count(DISTINCT T1.winner_id) FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = \"WTA Championships\" AND T1.hand = \"left\"
SELECT count(*) FROM players WHERE hand = 'left' AND YEAR IN (SELECT T1.tourney_year FROM tournaments AS T1 JOIN MATCHES AS T2 ON T1.tournament_id = T2.tournament_id WHERE T1.tourney_name = 'WTA Championships')
SELECT T1.winner_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.winner_rank_points = (SELECT max(winner_rank_points) FROM MATCHES)
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN MATCHES AS T2 ON T1.player_id = T2.winner_id WHERE T2.winner_rank_points = (SELECT max(winner_rank_points) FROM MATCHES GROUP BY winner_rank_points)
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT DISTINCT line_1 FROM addresses AS T1;
SELECT line_1 , line_2 , line_3 FROM addresses
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT count(*) FROM show WHERE if_first_show = 1
SELECT Name FROM conductor ORDER BY birthday ASC
sorted_conductors = (SELECT Name FROM conductor ORDER BY Birthday ASC)
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT name FROM conductor WHERE Nationality LIKE "American%"
ortchesters_by_founded_year = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
ortchestre_companies = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT avg(Attendance) FROM show WHERE If_first_show != 1;
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> \"Live final\"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE <> 'Live final'
SELECT count(DISTINCT Nationality) FROM conductor AS T1
SELECT count(DISTINCT Nationality) FROM conductor AS T1
ascending_name_conductors = (SELECT Name FROM conductor ORDER BY birthday ASC)
sorted_conductors = (SELECT Name FROM conductor ORDER BY birthday)
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1;
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1;
SELECT T2.Name , T1.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID = T3.Conductor_ID
SELECT T1.Name , T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*) > 1 {}
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT T1.Name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Year_of_Founded DESC LIMIT 1;
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company HAVING COUNT(*) > 1000
SELECT count(*) , Record_Company FROM orchestra GROUP BY Record_Company
ascending_order_of_age_orchestra = (SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDED ASC)
sorted_orchestra_record_format := (SELECT Major_Record_Format FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC)
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER ASC LIMIT 1;
SELECT Record_Company FROM orchestra ORDER BY YEAR_OF_FOUNDER DESC LIMIT 1;
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER BETWEEN 1 AND 2003 GROUP BY Record_Company HAVING count(*) > 1
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003 EXCEPT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER < 1996 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDER > 2003 AND YEAR_OF_FOUNDER < 1996
SELECT count(*) FROM show WHERE Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\") AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show
SELECT count(*) FROM show WHERE Show_ID IN (SELECT Performance_ID FROM performance WHERE TYPE = \"first\") AND Show_ID = (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID = (SELECT Performance_ID FROM performance WHERE TYPE = \"first\" AND Show_ID = \"Glebe Park\"))
SELECT TYPE FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show GROUP BY Performance_ID HAVING COUNT(*) > 1 INTERSECT SELECT Performance_ID FROM show WHERE If_first_show != 1)
SELECT TYPE FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM show WHERE If_first_show != 1) GROUP BY TYPE HAVING COUNT(*) > 2
Both owners and professionals can live in any given state as long as they have a home phone number and a cell number. Therefore, we need to find the intersection of all states where both conditions are met: one must have a home phone and another must have a cell number. This means that every state must meet both criteria. states = {state1, state2, ...} for each state, if it has a home phone and a cell number, then it will also have both an owner and a professional living there. So, the final result would be: {"sql": "SELECT state FROM owners EXCEPT SELECT state FROM professionals"}
SELECT state FROM owners UNION SELECT state FROM professionals
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING avg(T2.date_of_treatment) != 0;
SELECT avg(T1.age) FROM dogs AS T1 JOIN treats AS T2 ON T1.dog_id = T2.dog_id GROUP BY T2.dog_id HAVING count(*) >= 50;
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T3.professional_id , T3.last_name , T3.cell_number FROM Professional AS T3 JOIN T2 AS T4 ON T3.professional_id = T4.professional_id WHERE T4.state = 'Indiana'
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professional AS T1 JOIN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) > 2) AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = \"Indiana\"
No dog has cost its owner more than 1000 for treatment.
SELECT T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id JOIN charges AS T4 ON T3.treatment_type_code = T4.treatment_type_code WHERE T4.charge_amount > 1000;
Professionalists(first_name) EXCEPT SELECT first_name FROM Owners WHERE first_name LIKE '%dog%'
Owners[first_name] EXCEPT (SELECT first_name FROM Professionals WHERE first_name LIKE '%dog%')
SELECT T1.professional_id , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code NOT IN ( SELECT t3.treatment_type_code FROM treatments AS t3 JOIN dogs AS t4 ON t3.dog_id = t4.dog_id ) GROUP BY T1.professional_id HAVING count(*) = 0
SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.breed_code = 'Dog' EXCEPT SELECT T1.professional_id , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id WHERE T2.breed_code = 'Dog'
SELECT T1.owner_id , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treats AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T2.breed_name FROM dogs AS T1 JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T2.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.breue_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = 1 GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id , T2.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(cost_of_treatment) ASC LIMIT 1;
SELECT t1.treatment_type_description FROM Treatment_Types AS t1 JOIN Treatments AS t2 ON t1.treatment_type_code = t2.treatment_type_code GROUP BY t1.treatment_type_code ORDER BY sum(t2.cost_of_treatment) ASC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.date_arrived) DESC LIMIT 1;
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1;
SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING COUNT(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatsments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.date_of_treatment JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T1.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T3.first_name , T3.last_name FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.date_of_treatment JOIN professionals AS T3 ON T2.professional_id = T3.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T2.professional_id ORDER BY T1.date_of_treatment ASC;
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT T1.first_name , T1.last_name , T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T4.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN sizes AS T4 ON T2.size_code = T4.size_code
SELECT T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T3.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T1.breed_code = (SELECT breed_code FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T3.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T2.breed_name = (SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1)
SELECT T2.first_name , T1.name FROM Owners AS T2 JOIN Dogs AS T1 ON T1.owner_id = T2.owner_id WHERE T2.state = 'VA'
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
from dogs AS t1 JOIN treatments AS t2 ON t1.dog_id = t2.dog_id WHERE t1.date_arrived < t2.date_of_treatment AND t1.date_departed > t2.date_of_treatment
SELECT T1.date_arrived , T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Dog"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1;
HI owners = (SELECT email_address FROM professionals WHERE state = 'HI' UNION SELECT email_address FROM professionals WHERE state = 'WI')
HI email_address WI email_address
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 1
SELECT date_arrived , date_departed FROM dogs WHERE abandoned_yn = 1;
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.dog_id HAVING count(*) > 0
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Dog'
SELECT count(*) FROM ( SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.professional_id ) WHERE T1.treatment_type_code IN ( SELECT t3.treatment_type_code FROM treatments AS T3 JOIN dogs AS T4 ON T3.dog_id = T4.dog_id WHERE T4.breed_code = 'Dog' )
SELECT count(*) FROM (SELECT T1.professional_id FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.breed_code = 'Dog')
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%' OR state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%' OR state LIKE '%North%'
SELECT count(*) FROMdogs WHERE age < (SELECT avg(age) FROM dogs) AND abandoned_yn = 1
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs) AND abandoned_yn = 1
SELECT max(cost_of_treatment) FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1;
SELECT count(*) FROM Dogs WHERE abandoned_yn != 'yes' AND dog_id NOT IN (SELECT dog_id FROM Treatments)
SELECT count(*) FROM (SELECT dog_id FROM treatments GROUP BY dog_id)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IS NOT NULL)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code = 'Dog')
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 1;
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'Y'
SELECT max(age) FROM dogs WHERE breed_code = 'Labrador Retriever'
SELECT max(age) FROM dogs WHERE breed_code = \"Labrador Retriever\"
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT max(charge_amount) FROM charges WHERE charge_type = \"Most Expensive\"
SELECT charge_amount FROM charges WHERE charge_type IN (SELECT charge_type FROM charges ORDER BY charge_amount DESC LIMIT 1)
SELECT email_address , first_name , last_name FROM professionals AS T1
SELECT email_address , first_name , last_name FROM professionals
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN sizes AS T2 ON T1.breed_code = T2.breed_code
Distinct(breed_code , size_code) FROM Dogs AS T1
SELECT T3.first_name , T3.last_name , T2.treatment_type_description FROM charges AS T1 JOIN treatments AS T2 ON T1.charge_id = T2.date_of_treatment JOIN professionals AS T3 ON T2.professional_id = T3.professional_id GROUP BY T3.treatment_type_code HAVING count(*) >= 1
SELECT T3.first_name , T3.last_name , T4.treatment_type_description FROM professionals AS T3 JOIN treatments AS T1 ON T3.professional_id = T1.professional_id JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN professionals AS T4 ON T1.professional_id = T4.professional_id
SELECT count(*) FROM singer AS T1;
SELECT count(*) FROM singer AS T1;
Ascending Order of Age: SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
Ascending Order BY Birth_Year NAME ORDER BY Birth_Year ASC NAME
SELECT Birth_Year , Citizenship FROM singer AS T1
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Citizenship <> 'French'
SELECT Name FROM singer WHERE Birth_Year < 1948;
name = (SELECT Name FROM singer WHERE Birth_Year < 1948)
SELECT Name FROM singer ORDER BY Birth_Year LIMIT 1;
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1;
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship HAVING COUNT(*) > 1
SELECT count(*) , citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(*) FROM (SELECT Citizenship FROM singer GROUP BY Citizenship)
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT max(Net_Worth_Millions) , Citizenship FROM singer GROUP BY Citizenship
SELECT name FROM song ORDER BY sales DESC LIMIT 1;
Highest_Position is defined as the highest sales position among all songs. The highest sales song title will have this value. Therefore, we can select the title of the song with this value from the song table. This will give us the name of the highest sales song. Here's the SQL query: SELECT TITLE FROM song WHERE Sales = (SELECT max(Sales) FROM song)
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1 {}
SELECT T2.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID HAVING COUNT(*) > 1;
SELECT T2.Name , T1.Highest_POSITION FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Singer_ID ORDER BY T1.Highest_POSITION DESC LIMIT 1
SELECT T2.Name , max(T1.Highest_Position) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name HAVING COUNT(*) > 1
SELECT Name FROM singer EXCEPT SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT name FROM singer EXCEPT SELECT T2.name FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship HAVING COUNT(*) >= 2
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 GROUP BY Citizenship HAVING COUNT(*) > 2
