SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country FROM singer ORDER BY Birthday DESC
SELECT Name , Country FROM singer ORDER BY Birthday DESC
SELECT min(singer_id) , max(singer_id) , avg(singer_id) FROM singer WHERE country = "French"
SELECT min(singer_id) , max(singer_id) , avg(singer_id) FROM singer WHERE Country = "French"
SELECT name , song_release_year FROM singer ORDER BY birthday LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY birthday ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT DISTINCT Country FROM singer WHERE Birthday = "2001"
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Singer_ID > (SELECT avg(Birthday) FROM singer)
SELECT Song_Name FROM singer WHERE Birthday > (SELECT avg(Birthday) FROM singer)
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT count(*) FROM concert WHERE YEAR > 2014
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT count(*) , stadium.stadium_id FROM stadium JOIN concert ON stadium.stadium_id = concert.stadium_id GROUP BY stadium.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year >= 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY YEAR DESC LIMIT 1
SELECT highest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday = "1981" OR Birthday = "1991"
SELECT avg(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE YEAR = 2014)
SELECT min(lowest) FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.concert_id
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id GROUP BY T2.theme
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year > 2014
SELECT T1.Name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.Singer_ID = T2.Singer_ID JOIN concert AS T3 ON T2.Concert_ID = T3.Concert_ID WHERE T3.Year <= 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.lowest , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.lowest , T1.highest FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.Lowest , T1.Higher FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2014 INTERSECT SELECT T1.Lowest , T1.Higher FROM stadium AS T1 JOIN concert AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT T1.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student)
SELECT T1.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Age > 20
SELECT count(*) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID JOIN Student AS T3 ON T2.StuID = T3.StuID WHERE T3.Age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = "F"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT pettype) FROM Pets
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T2.petid NOT IN (SELECT petid FROM Pets WHERE pettype = "Kitten")
SELECT Major , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT Fname , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = 112)
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy" EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten"
SELECT pettype , weight FROM Pets ORDER BY birthdate ASC LIMIT 1
SELECT PetType , weight FROM Pets ORDER BY birthdate LIMIT 1
SELECT petid , weight FROM Pets WHERE birthdate > "2020"
SELECT T1.petid , T2.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid WHERE T1.age > (SELECT min(birthdate) FROM Pets WHERE birthdate = '2020')
SELECT avg(PetID) , max(PetID) , PetType FROM Pets GROUP BY PetType
SELECT pettype , avg(PetID) , max(PetID) FROM Pets GROUP BY pettype
SELECT pettype , avg(petid) , max(petid) FROM Pets GROUP BY pettype
SELECT avg(weight) , pettype FROM Pets GROUP BY pettype
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT DISTINCT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T2.petid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT T2.petid FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.LName FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID = T2.StuID JOIN PETTS AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = "2001"
SELECT T1.LName FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.birthdate = "2001"
SELECT avg(age) FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(Age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT T1.contid , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.FullName , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id ORDER BY T2.Horsepower LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.model = T3.id ORDER BY T3.Horsepower LIMIT 1
SELECT T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model JOIN cars_data AS T3 ON T2.Model = T3.Id WHERE T3.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.Year <= 2023
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year <= 2023
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year LIMIT 1
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.MakeId WHERE T2.Year > 1980
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model WHERE T2.year <= 1980
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.ContId = T2.Country GROUP BY T1.Continent
SELECT T1.Continent , COUNT(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT T3.Maker FROM car_makers GROUP BY T3.Maker ORDER BY count(*) DESC LIMIT 1)
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT MAKER FROM car_makers GROUP BY MAKER ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT accelerate FROM cars_data WHERE car_names.MakeId = "amc hornet sportabout"
SELECT accelerate FROM cars_data WHERE car_names.make = "Amc Hornet" AND car_names.model = "Sportabout"
SELECT count(*) FROM car_makers WHERE Country = "Japan"
SELECT count(*) FROM car_makers WHERE country = "Japanese"
SELECT count(*) FROM car_makers WHERE country = "america"
SELECT count(*) FROM car_makers WHERE country = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT maker , model FROM model_list
SELECT maker , model FROM model_list
SELECT T1.CountryName , T1.CountryId FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != "null"
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker != "null"
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker IN (SELECT T1.maker FROM car_makers GROUP BY T1.maker HAVING count(*) >= 3)
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'E' GROUP BY T1.countryname HAVING count(*) >= 3
SELECT max(Horsepower) , T1.Maker FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Cylinders = 3 GROUP BY T1.Maker
SELECT max(Horsepower) , T1.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3 GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT car_names.model FROM car_names JOIN cars_data ON car_names.makeid = cars_data.id ORDER BY cars_data.mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR <= 1980
SELECT avg(Edispl) FROM cars_data WHERE car_names.Make = "Tesla"
SELECT avg(Edispl) FROM cars_data WHERE Id = 1
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.model GROUP BY T1.maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 2023 OR YEAR = 2024
SELECT count(*) FROM cars_data WHERE YEAR = 2022 OR YEAR = 2023
SELECT count(*) FROM car_makers WHERE country = "American"
SELECT count(*) FROM car_makers WHERE country = "American"
SELECT T1.maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.maker , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.make = T3.makeid WHERE T2.make = "General Motors" OR T3.Weight > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.make = T3.makeid WHERE T3.Weight > 3500 OR T2.make = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE Id = (SELECT make FROM car_names WHERE model = (SELECT model FROM model_list WHERE maker = "Tesla"))
SELECT Cylinders FROM cars_data WHERE Id = (SELECT Min(Accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers WHERE country = (SELECT country FROM car_makers GROUP BY country HAVING count(*) > 2)
SELECT count(*) FROM car_makers WHERE country > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY Horsepower DESC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.make = T3.id WHERE T3.cylinders = 4 GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT T1.MakeId , T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.Id = T2.Model WHERE T2.Make = T1.Make AND T1.Mileage > (SELECT min(Mileage) FROM cars_data WHERE Cylinders = 2)
SELECT T1.maker , T1.FullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.maker WHERE T2.model NOT IN (SELECT id FROM cars_data WHERE Horsepower = (SELECT min(Horsepower) FROM cars_data)) GROUP BY T1.maker HAVING count(*) < 4)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR <= 1980
SELECT model FROM car_names WHERE weight < 3500 AND maker != 'Ford Motor'
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Weight < 3500 EXCEPT SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Model WHERE T2.Make = "Ford"
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT Country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN car_names AS T2 ON T1.maker = T2.make GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country JOIN car_names AS T3 ON T2.id = T3.make WHERE T3.model = 'tesla' GROUP BY T1.countryid HAVING count(*) > 3
SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = "Tesla" UNION SELECT T1.countryid , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = "Car" GROUP BY T1.countryid HAVING count(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Airline = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Jackson'
SELECT airportcode , airportname FROM airports WHERE city = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM Flights
SELECT count(*) FROM Flights
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT Airline FROM airlines WHERE Abbreviation = 'UAL'
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country = 'America'
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Jackson'
SELECT AirportName FROM airports WHERE City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights WHERE SourceAirport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ATA"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport = 'JACKSON'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM Flights WHERE DestAirport = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Syracuse' INTERSECT SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Ashley" JOIN airports AS T3 ON T3.AirportCode = T2.AirportCode WHERE T3.City = "Syracuse"
SELECT count(*) FROM Flights WHERE Airline = "JetBlue"
SELECT count(*) FROM Flights WHERE Airline = "Jetblue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "JetBlue" AND T2.AirportCode = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'JetBlue'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD" AND T1.airline = "JetBlue"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen'
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.Airline ORDER BY count(*) DESC LIMIT 1
SELECT Airline FROM Flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.UID ORDER BY count(*) ASC LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.AirportCode = T2.AirportCode GROUP BY T1.Abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.SourceAirport WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T1.Airline WHERE T2.AirportCode = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.CountryAbbrev WHERE T2.AirportName = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.SourceAirport WHERE T2.AirportName = 'APG' INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.DestAirport WHERE T2.AirportName = 'CVO'
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.AirportCode WHERE T2.AirportName = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.AirportCode WHERE T2.AirportName = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.SourceAirport WHERE T2.AirportName = 'CVO' EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN airports AS T2 ON T1.UID = T2.SourceAirport WHERE T2.AirportName = 'APG'
SELECT Airline FROM Flights WHERE DestAirport = 'CVO' EXCEPT SELECT Airline FROM Flights WHERE DestAirport = 'APG'
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) >= 10
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline GROUP BY T1.Airline HAVING count(*) >= 10
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT Airline FROM Flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM Flights WHERE Airline = "JetBlue"
SELECT FlightNo FROM Flights WHERE Airline = "JetBlue"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM Flights WHERE SourceAirport = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT FlightNo FROM Flights WHERE DestAirport = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT FlightNo FROM Flights WHERE SourceAirport = "Jackson"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Jackson"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Jackson"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Syracuse" OR T2.City = "Jackson"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Syracuse" OR T1.City = "Jackson"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM Flights UNION SELECT SourceAirport FROM Flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name FROM Documents WHERE document_description LIKE '%w%'
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT document_description FROM Documents WHERE document_name = "Robbin CV"
SELECT document_description , template_id FROM Documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(DISTINCT template_id) FROM Documents
SELECT count(*) FROM Documents WHERE Template_ID = "PPT"
SELECT count(*) FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PPT")
SELECT template_id , count(*) FROM Documents GROUP BY template_id
SELECT count(DISTINCT template_id) , count(DISTINCT template_id) FROM Documents
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT template_id FROM Templates EXCEPT SELECT template_id FROM Documents
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT date_effective_from , template_type_code FROM Templates
SELECT Date_Effective_From , Template_Type_Code FROM Templates
SELECT date_effective_from FROM Templates
SELECT date_effective_from , date_effective_to FROM Templates
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "PP" OR Template_Type_Code = "PPT"
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT date_effective_from FROM Templates WHERE template_type_code = "CV"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "CV"
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From , Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from , count(*) FROM Templates GROUP BY date_effective_from
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates GROUP BY date_effective_from HAVING count(*) < 3
SELECT Date_Effective_From FROM Templates GROUP BY Date_Effective_From HAVING count(*) < 3
SELECT min(version_number) , date_effective_from , date_effective_to FROM Templates
SELECT min(Version_Number) , Date_Effective_From , Date_Effective_To FROM Templates GROUP BY Version_Number
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = "Data base"
SELECT document_name , document_id , template_id FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from , T1.date_effective_to
SELECT T1.date_effective_from , T1.date_effective_to , count(*) FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from , T1.date_effective_to
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT T1.date_effective_from FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from , date_effective_to FROM Templates EXCEPT SELECT T1.date_effective_from , T1.date_effective_to FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT date_effective_from , date_effective_to FROM Templates WHERE template_id NOT IN (SELECT document_id FROM Documents)
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_code , template_type_description FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_id = T3.template_id GROUP BY T1.template_type_description
SELECT Date_Effective_From , Date_Effective_To FROM Templates WHERE Template_Type_Code = "Presentation"
SELECT Date_Effective_From FROM Templates WHERE Template_Type_Code = "Presentation"
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id
SELECT T1.player_id , T2.loser_age FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT T1.winner_age , T2.winner_entry FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(T1.rank) , T2.rank FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id UNION SELECT avg(T1.rank) , T2.rank FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
SELECT avg(T1.rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id UNION SELECT avg(T1.rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.loser_id = T2.player_id
SELECT max(T1.rank) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id UNION SELECT max(T1.rank) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.loser_id
SELECT max(winner_rank) , max(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 OR T2.year = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date DESC
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank_points FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE tourney_name = "Australian Open" )
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T3.ranking_points = (SELECT max(ranking_points) FROM rankings WHERE tourney_name = "Australian Open")
SELECT T1.first_name , T1.last_name , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id UNION SELECT T1.first_name , T1.last_name , T2.winner_name , T2.loser_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.loser_id WHERE T2.minutes = (SELECT max(minutes) FROM matches)
SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id JOIN players AS T3 ON T2.loser_id = T3.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , avg(T2.ranking) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.first_name , T2.ranking_points , T1.player_id FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(tourneys_tourney_date) , ranking_date FROM rankings GROUP BY ranking_date
SELECT sum(tours) , ranking_date FROM rankings GROUP BY ranking_date
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking DESC LIMIT 3
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking DESC LIMIT 3
SELECT count(DISTINCT T1.first_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT line_1 , line_2 , line_3 , city , zip_postcode , other_address_details FROM Addresses
SELECT line_1 , line_2 , line_3 FROM Addresses
SELECT count(*) FROM show WHERE If_first_show = 'Yes'
SELECT count(*) FROM show WHERE if_first_show = 'Yes'
SELECT Name FROM conductor ORDER BY Name ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded
SELECT avg(Attendance) FROM show WHERE If_first_show = 'No'
SELECT avg(Attendance) FROM show WHERE If_first_show != "Yes"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Name ASC
SELECT Name FROM conductor ORDER BY Name ASC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id ORDER BY T2.year_of_founded DESC LIMIT 1
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(DISTINCT Record_Company) FROM orchestra
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED <= 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003 INTERSECT SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003
SELECT count(*) FROM show WHERE if_first_show = 'Yes' AND Name = "Glebe Park"
SELECT count(*) FROM show WHERE Performance_ID IN (SELECT Performance_ID FROM performance WHERE Date = "Glebe Park")
SELECT T1.Type FROM performance AS T1 JOIN show AS T2 ON T1.Performance_ID = T2.Performance_ID WHERE T2.If_first_show != "Yes" GROUP BY T1.Type HAVING COUNT(*) > 1
SELECT TYPE FROM performance WHERE Performance_ID NOT IN (SELECT Performance_ID FROM show WHERE If_first_show = 'No' ) GROUP BY TYPE HAVING count(*) > 1
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.age
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.age
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 AND T1.state = 'Indiana'
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.cost_of_treatment > 1000
SELECT first_name FROM OWNERS EXCEPT SELECT T1.first_name FROM OWNERS AS T1 JOIN DOGS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.name LIKE '%dog%'
SELECT first_name FROM owners WHERE role_code = 'professional' OR role_code = 'owner' EXCEPT SELECT first_name FROM dogs WHERE name LIKE '%dog%'
SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id EXCEPT SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.dog_id = 1
SELECT professional_id , first_name , last_name FROM Professionals EXCEPT SELECT T1.professional_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.breed_code = 'dog'
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = '1' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.abandoned_yn = '1' GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_description ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Treatments AS T2 ON T1.treatment_type_code = T2.treatment_type_code GROUP BY T1.treatment_type_description ORDER BY sum(T2.cost_of_treatment) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.home_phone , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.cost_of_treatment , T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code = T2.treatment_type_code
SELECT cost_of_treatment , treatment_type_description FROM treatments
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.owner_id = T2.size_code
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.owner_id = T2.size_code
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T1.breed_code = (SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.name ORDER BY count(*) ASC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_of_treatment FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T2.date_arrived = 'date_departed'
{"sql": "SELECT date_of_treatment FROM treatments WHERE dog_id = (SELECT dog_id FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date_departed FROM dogs WHERE date_arrived = (SELECT date_arrived FROM dogs WHERE date_departed = (SELECT date
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = 'Y'
SELECT date_arrived , date_departed FROM Dogs WHERE abandoned_yn = '1'
SELECT count(*) FROM dogs
SELECT count(*) FROM treatments
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "male"
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM professionals WHERE city LIKE '%West%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name , last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'yes' AND age < (SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'yes')
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'yes' EXCEPT SELECT count(*) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE abandoned_yn = '1'
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'yes'
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , first_name , last_name FROM Professionals
SELECT first_name , last_name , email_address FROM Professionals
SELECT breed_type , size_type FROM Dogs
SELECT DISTINCT breed_code , size_code FROM Dogs
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship , MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT T1.Name , max(T2.Highest_Position) FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
