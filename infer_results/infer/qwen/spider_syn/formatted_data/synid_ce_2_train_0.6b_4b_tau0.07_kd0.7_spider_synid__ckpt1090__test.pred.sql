SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age DESC LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT country , count(*) FROM singer GROUP BY country
SELECT count(*) , country FROM singer GROUP BY country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT name , stadium_id FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT name , LOCATION FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity , highest FROM stadium ORDER BY highest DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR >= 2014 OR YEAR <= 2015
SELECT T2.name , count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT count(*) , T1.Stadium_ID FROM concert AS T2 JOIN stadium AS T1 ON T1.Stadium_ID = T2.Stadium_ID GROUP BY T1.Stadium_ID
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year >= 2014 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.theme FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.theme ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT name FROM stadium EXCEPT SELECT T1.name FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014
SELECT T1.concert_name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_name , T1.theme
SELECT T3.name , T2.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.singer_id = T3.singer_id GROUP BY T1.concert_ID
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.singer_id
SELECT T3.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.position FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T2.Capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM pets WHERE pet_age = (SELECT min(pet_age) FROM pets) AND pet_type = "Puppy"
SELECT max(weight) , pettype FROM pets GROUP BY pettype
SELECT max(weight) , pet_age , pet_type FROM Pets WHERE pet_type = 'domestic'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F'
SELECT count(DISTINCT pettype) FROM pets
SELECT count(DISTINCT species) FROM Animals
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT DISTINCT T1.lname , T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Kitten" INTERSECT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Puppy"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Mammal" INTERSECT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Feline"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = Pets.pet_age AND T2.pet_type = "Kitten" EXCEPT SELECT T1.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pettype = "Cat"
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = "dog") EXCEPT SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.petid IN (SELECT petid FROM Pets WHERE pettype = "cat")
SELECT pet_type , weight FROM pets ORDER BY pet_age LIMIT 1
SELECT pet_age , weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pet_id , weight FROM Pets WHERE pet_age > 1
SELECT pet_age , weight FROM Pets WHERE pet_age > 1
SELECT pet_age , pet_type , avg(age) , max(age) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(pet_age) , max(pet_age) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT T2.lname , T2.age FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.PetID IN (SELECT PetID FROM Pets WHERE pet_age > 30)
SELECT DISTINCT T1.lname , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.LName = "Smith"
SELECT T2.StuID FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Lname = "Smith"
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.lname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T2.LName FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T1.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) , t1.continent , count(*) FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.continent GROUP BY t1.continent
SELECT count(*) , t1.contid , t1.continent FROM continents AS t1 JOIN countries AS t2 ON t1.contid = t2.continent GROUP BY t1.contid
SELECT count(*) FROM continents
SELECT count(*) FROM countries
SELECT T1.fullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.FullName , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT model FROM cars_data ORDER BY horsepower ASC LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model WHERE T2.year = 1970
SELECT DISTINCT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE YEAR = 1970
SELECT T2.Maker , T1.Year FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.Year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.make WHERE YEAR = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT DISTINCT model FROM cars_data WHERE YEAR > 1980
SELECT T2.Continent , COUNT(*) FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.CountryId GROUP BY T1.Continent
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country GROUP BY T1.Continent
SELECT t2.continent FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.countryid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT t1.fullName FROM car_makers AS t1 JOIN countries AS t2 ON t1.country = t2.CountryId GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT count(*) , T1.id , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE make = 'amc hornet sportabout (sw)'
SELECT accelerate FROM cars_data WHERE model = 'amc hornet sportabout'
SELECT count(*) FROM car_makers WHERE maker = "French"
SELECT count(*) FROM car_makers WHERE country = 'France'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'usa'
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.country = 'United States'
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT avg(mpg) FROM cars_data WHERE cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Year = 1974 AND Cylinders = 8
SELECT min(weight) FROM cars_data WHERE cylinders = 8 AND YEAR = 1974
SELECT DISTINCT T1.Maker , T1.Model FROM model_list AS T1 JOIN car_names AS T2 ON T1.Maker = T2.Model
SELECT T1.Maker , T2.Model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker
SELECT t1.FullName , t1.id FROM car_makers AS t1 JOIN cars_data AS t2 ON t1.id = t2.Maker GROUP BY t1.id HAVING count(*) >= 1
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 1
SELECT modelid FROM cars_data WHERE horsepower > 150 GROUP BY modelid
SELECT count(*) FROM cars_data WHERE horsepower > 150
SELECT YEAR , avg(weight) FROM cars_data GROUP BY YEAR
SELECT avg(weight) , avg(year) FROM cars_data
SELECT T1.Continent FROM continents AS T1 JOIN car_makers AS T2 ON T1.Continent = T2.Country WHERE T2.id NOT IN (SELECT maker FROM cars_data GROUP BY maker HAVING count(*) >= 3)
SELECT T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Country = 'Europe' GROUP BY T1.Country HAVING COUNT(*) >= 3
SELECT max(horsepower) , T2.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders = 3
SELECT max(horsepower) , T2.maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.id = T2.model WHERE cylinders = 3
SELECT model FROM cars_data GROUP BY model ORDER BY avg(mpg) DESC LIMIT 1
SELECT model FROM cars_data ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Model = 'volvo'
SELECT avg(Edispl) FROM cars_data WHERE make = "volvo"
SELECT max(Horsepower) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(Horsepower) FROM cars_data GROUP BY Cylinders
SELECT T2.Maker FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model GROUP BY T2.Model ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE fullname = "American Motor Company"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2-maker WHERE T1.fullname = "American Motor Company"
SELECT T1.FullName , T2.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T2.id HAVING count(*) > 3
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT DISTINCT T1.Model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Model WHERE T2.FullName = "General Motors" OR T2.Maker > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN cars_data AS T2 ON T1.maker = T2.id WHERE T2.weight > 3500 UNION SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_makers AS T2 ON T1.maker = T2.id WHERE T2.fullname = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT max(Cylinders) FROM cars_data WHERE Make = 'volvo' AND Accelerate = (SELECT min(Accelerate) FROM cars_data WHERE Make = 'volvo')
SELECT Cylinders FROM cars_data WHERE make = "volvo" AND accelerate = (SELECT min(accelerate) FROM cars_data WHERE make = "volvo")
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT model FROM cars_data WHERE cylinders = 4 ORDER BY horsepower DESC LIMIT 1
SELECT model FROM cars_data WHERE cylinders = 4 GROUP BY model ORDER BY max(horsepower) LIMIT 1
SELECT makeid , fullName FROM cars_data WHERE horsepower > (SELECT min(horsepower) FROM cars_data) AND cylinders <= 3;
SELECT T2.id , T2.FullName FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.Id = T2.Model WHERE T1.Cylinders < 4
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT max(mpg) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT T2.model FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker WHERE T1.fullname = 'Ford Motor Company'
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT model FROM model_list WHERE maker = 'Ford'
SELECT countryname FROM countries EXCEPT SELECT t1.countryname FROM countries AS t1 JOIN car_makers AS t2 ON t1.continent = t2.country WHERE count(*) = 1
SELECT countryname FROM countries WHERE continent != 'asia'
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING count(*) >= 2 AND T2.Model >= 3
SELECT T1.id , T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker != 'fiat' GROUP BY T1.CountryName HAVING count(*) > 3 UNION SELECT T1.Model , T1.CountryName FROM car_makers AS T2 JOIN model_list AS T3 ON T2.Id = T3.Maker WHERE T3.Model = 'fiat'
SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "Ford" GROUP BY T1.id HAVING count(*) > 3 UNION SELECT T1.id , T1.FullName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T1.Maker = "BMW"
SELECT country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT country FROM airlines WHERE abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT T2.Airline , T1.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.airportcode = T2.uid WHERE T2.Country = "USA"
SELECT T2.Airline , T2.AirportName FROM airports AS T1 JOIN airlines AS T2 ON T1.airportcode = T2.airline WHERE T1.country = 'USA'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(total) FROM airways
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.airline = 'UAL'
SELECT T1.airportname FROM airports AS T1 JOIN airlines AS T2 ON T1.airportcode = T2.airportcode WHERE abbreviation = 'UAL'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT city , country FROM airports WHERE airportname = 'Alton'
SELECT City , CountryAbbrev FROM airports WHERE AirportName = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT airportname FROM airports WHERE city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbreviation = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.countryabbrev = "APG"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbrev = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.countryabbreviation = 'UK' AND T1.destairport = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destinationairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T2.airportname = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.uid WHERE T2.Abbreviation = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.Airline WHERE T2.Abbreviation = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbreviation = 'ASY' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = 'AHD' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.airportname = "AHD Airport" AND T1.airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = 'Aberdeen' AND T1.airline = 'United'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.countryabbrev = 'Abberdeen' AND T1.airline = 'United Airlines'
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT town FROM terminals GROUP BY town ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.City ORDER BY count(*) DESC LIMIT 1
SELECT T1.City FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport GROUP BY T1.City ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline GROUP BY T1.airway ORDER BY count(*) DESC LIMIT 1
SELECT T1.airline , T1.Airway FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.airline ORDER BY count(*) DESC LIMIT 1
SELECT T1.Airline , T1.AirportCode , T2.State FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airline , T1.DestAirport ORDER BY count(*) LIMIT 1
SELECT T1.Abbreviation , T1.Country FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline GROUP BY T1.airline ORDER BY count(*) ASC LIMIT 1
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'AHD'
SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline WHERE T2.sourceairport = "AHD"
SELECT T1.airline , T1.FlightNo , T1.SourceAirport , T1.DestAirport FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "AHD"
SELECT T1.airway FROM airlines AS T1 JOIN flights AS T2 ON T1.airline = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.destairport WHERE T3.airportname = "AHD"
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'APG' INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = 'CVO'
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.airline = "APG" INTERSECT SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.airline = "CVO"
SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'CVO' EXCEPT SELECT T1.airway FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport EXCEPT SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport WHERE T2.Airline = "CVO" INTERSECT SELECT T1.Airway FROM Airways AS T1 JOIN Flights AS T2 ON T1.Airway = T2.DestAirport WHERE T2.Airline = "APG"
SELECT T1.airline FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode GROUP BY T1.airline HAVING count(*) >= 10
SELECT T1.airway FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.airway HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) < 200
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING sum(count(*) ) < 200
SELECT T1.Airline , T1.FlightNo FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE FlightNo LIKE 'APG%'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT FlightNo FROM flights WHERE FlightNo LIKE 'Ab Aberdeen%'
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.city = "Aberdeen" OR T2.city = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT count(*) , district FROM employee GROUP BY district
SELECT count(*) , district FROM hiring GROUP BY district
SELECT T1.city FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T1.age < 30 GROUP BY T1.city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT min(Number_products) , max(Number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district FROM shop GROUP BY name , district ORDER BY count(*) DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.employee_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id WHERE T2.is_full_time = 'Yes' ORDER BY T2.bonus DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT Name FROM employee EXCEPT SELECT T1.Name FROM employee AS T1 JOIN evaluation AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT name FROM employee EXCEPT SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM employee AS T1 JOIN hiring AS T2 ON T1.employee_id = T2.employee_id JOIN shop AS T3 ON T2.shop_id = T3.shop_id GROUP BY T3.name
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.shop_id
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT sum(T2.Bonus) FROM evaluation AS T1 JOIN hiring AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT district) FROM shop
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM documents
SELECT count(*) FROM documents
SELECT T1.template_id , T1.document_name , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT T1.template_id , T1.document_name , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT document_name , layout_id FROM documents WHERE document_description LIKE "%w%"
SELECT T1.document_name , T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT T1.document_id , T1.layout_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Robbin CV"
SELECT T1.template_id , T1.layout_id , T2.template_details FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_name = "Robbin CV"
SELECT count(DISTINCT layout) FROM documents
SELECT count(DISTINCT layout) FROM documents
SELECT count(*) FROM Paragraphs WHERE template_type_code = 'PPT'
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT T1.template_id FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = "PPT" )
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT count(*) , layout_id FROM Documents GROUP BY layout_id
SELECT T1.template_id , T1.template_type_code FROM TEMPLATES AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT T1.template_id FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT Template_ID FROM Templates EXCEPT SELECT T1.Template_ID FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents GROUP BY document_id HAVING count(*) >= 2
SELECT count(*) FROM Ref_Template_types
SELECT count(*) FROM layout
SELECT layout_id , version_number , layout_type FROM layouts
SELECT T1.template_id , T2.version_number , T3.template_type_description FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code
SELECT DISTINCT layout_type FROM layout
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT T1.template_id FROM templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "PP" OR T2.template_type_description = "PPT"
SELECT T1.template_id FROM templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Layout" AND T1.template_type_code = "PP" OR T1.template_type_code = "PPT"
SELECT count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "CV"
SELECT count(*) FROM Documents WHERE document_name = "CV"
SELECT T1.edition_number , T1.layout_type FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.version_number > 5
SELECT T1.version_number , T2.layout_type_name FROM Templates AS T1 JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.version_number > 5
SELECT T1.template_type_code , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , layout_type FROM Paragraphs GROUP BY layout_type
SELECT layout_type_code FROM templates GROUP BY layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.layout_type_code GROUP BY T2.layout_type_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_description FROM Ref_Template_Types GROUP BY template_type_description HAVING count(*) < 3
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Layouts AS T2 ON T1.template_type_code = T2.layout_type_code GROUP BY T1.template_type_code HAVING count(*) < 3
SELECT min(version_number) , min(template_type_code) FROM_templates
SELECT min(version_number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT layout_type_code FROM layouts WHERE document_name = "Data base"
SELECT t1.template_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id WHERE t3.document_name = "Data base"
SELECT DISTINCT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.document_name FROM documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.template_type_description , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code
SELECT count(*) , T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM documents GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT template_type_code FROM Ref_Template_Types EXCEPT SELECT DISTINCT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_id
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_id NOT IN (SELECT document_id FROM Documents)
SELECT T1.template_type_description , T2.template_type_name FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T2.template_type_description , T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code
SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T2.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_code = "AD"
SELECT T1.layout_type_name FROM Ref_Template_Types AS T1 JOIN Paragraphs AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT T1.template_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T1.template_type_description = "Book"
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.version_number > 0
SELECT DISTINCT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id
SELECT T1.layout_id FROM Layouts AS T1 JOIN Ref_Template_Types AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.template_type_description = "Presentation"
SELECT T1.template_id FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id WHERE T2.paragraph_text = 'Presentation'
SELECT count(*) FROM paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Summer Show"
SELECT other_details FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT T1.template_details FROM templates AS T1 JOIN documents AS T2 ON T1.template_id = T2.template_id WHERE T2.document_name = 'Korea'
SELECT T2.paragraph_id , T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id WHERE T1.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T1.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Welcome to NY'
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = "Customer reviews"
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT count(*) , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT count(*) , T1.document_id , T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id , T1.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT count(*) FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) >= 2
SELECT T1.template_id , T2.document_name FROM documents AS T1 JOIN paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) LIMIT 1
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM documents AS T1 JOIN paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT T1.template_id FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT DISTINCT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Staring_Date != "Little Lever Urban District"
SELECT DISTINCT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Staring_Date != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Hometown FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY count(*) DESC LIMIT 1
SELECT T1.Staring_Date FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID GROUP BY T1.Staring_Date HAVING COUNT(*) >= 2
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID
SELECT T3.name , T2.course FROM course AS T1 JOIN course_arrange AS T2 ON T1.course_id = T2.course_id JOIN teacher AS T3 ON T2.teacher_id = T3.teacher_id
SELECT T2.Name , T3.Course FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID ORDER BY T2.Name
SELECT T3.Name , T2.Course FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID ORDER BY T3.Name
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = "Math"
SELECT T2.Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Course = 'Math'
SELECT T3.Name , COUNT(*) FROM course_arrange AS T1 JOIN course AS T2 ON T1.Course_ID = T2.Course_ID JOIN teacher AS T3 ON T1.Teacher_ID = T3.Teacher_ID GROUP BY T3.Name
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT T2.name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT name , LEVEL_of_membership FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_Staff > (SELECT min(num_of_Staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T2.visitor_ID HAVING count(*) > 1
SELECT T1.id , T1.Name , T1.Level_of_membership FROM museum AS T2 JOIN visit AS T3 ON T2.Museum_ID = T3.Museum_ID WHERE T3.total_spent > (SELECT avg(total_spent) FROM visit)
SELECT T2.Museum_ID , T1.Name FROM museum AS T1 JOIN visit AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T2.Museum_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T1.visitor_ID ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id JOIN visitor AS T3 ON T1.visitor_id = T3.ID WHERE T2.open_year < 2011 AND T2.open_year > 2009
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT visitor_ID FROM visit WHERE museum_id >= (SELECT museum_id FROM museum WHERE open_year > 2010))
SELECT count(*) FROM museum WHERE open_year > 2013 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , last_name , birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(loser_age) , avg(winner_age) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2013 INTERSECT SELECT T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T1.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR >= 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 1994 AND T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.last_name , T2.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.looser_id WHERE T2.year = 1994 AND T2.tourney_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date ASC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T2.first_name , T2.last_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T2.winner_name , T2.winner_rank_points FROM rankings AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T2.winner_rank_points FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_name ORDER BY sum(T2.winner_rank_points) DESC LIMIT 1
SELECT T2.winner_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T3.winner_id = T2.player_id WHERE T3.tourney_name = "Australian Open" ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open" ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.loser_name , T1.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_name ORDER BY avg(T1.minutes) DESC LIMIT 1;
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes LIMIT 1
SELECT avg(T1.ranking) , T2.first_name , T2.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name , T2.last_name
SELECT T2.first_name , T2.last_name , avg(T1.ranking) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.rank_points , T1.first_name , T1.last_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT T2.first_name , T2.last_name , sum(T1.ranking_points) FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT ranking , sum(tours) FROM rankings GROUP BY ranking
SELECT sum(tours) , ranking FROM rankings GROUP BY ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.looser_age DESC LIMIT 3
SELECT T2.winner_name , T2.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.loser_age LIMIT 3
SELECT count(DISTINCT T2.first_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_date = "WTA Championships"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_hand WHERE T1.hand = "left" AND T2.tourney_date LIKE "%WTA%"
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.winner_rank_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY sum(T2.ranking_points) DESC LIMIT 1
SELECT count(*) , T1.hand FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(killed) , min(killed) FROM death
SELECT avg(injured) FROM death
SELECT T2.disposition_of_ship , T2.injured FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id WHERE T1.tonnage = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T2.bulgarian_commander != 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT t1.id , t1.name FROM ship AS t1 JOIN death AS t2 ON t1.id = t2.caused_by_ship_id GROUP BY t1.id ORDER BY sum(t2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander < 'Kaloyan' AND latin_commander > 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.tonnage = 225)
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , RESULT , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT address_id , line_1 , line_2 FROM addresses WHERE line_1 = 'include' AND line_2 = 'include'
SELECT line_1 , line_2 FROM addresses
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM Courses WHERE course_name = 'Math'
SELECT course_description FROM courses WHERE course_id IN (SELECT course_id FROM Sections WHERE semester_name = 'Fall' INTERSECT SELECT course_id FROM Courses WHERE semester_name = 'Spring')
SELECT T1.zip_postcode FROM addresses AS T1 JOIN permanent_address_id AS T2 ON T1.address_id = T2.address_id WHERE T1.city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name , T2.department_id FROM departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = "Engineering"
SELECT sum(degree_summary) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = "Engineering")
SELECT section_name , section_description FROM sections
SELECT section_name , section_description FROM sections
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.section_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.department_description FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name LIKE "%computer%"
SELECT course_description FROM courses WHERE course_name LIKE "%computer%"
SELECT T1.first_name , T1.middle_name , T1.last_name , T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id WHERE T2.semester_id = 1 GROUP BY T2.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , T2.degree_program_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_id = 1 GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.middle_name , T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor’s"
SELECT T1.degree_program_id , count(*) FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id EXCEPT SELECT T3.semester_name FROM student_enrolment AS T3 JOIN courses AS T4 ON T3.course_id = T4.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" INTERSECT SELECT T3.first_name , T3.last_name FROM degree_programs AS T3 JOIN departments AS T4 ON T3.department_id = T4.department_id
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id JOIN Student_Enrolment_Courses AS T3 ON T2.student_course_id = T3.student_course_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelors" AND T2.transcript_date = (SELECT max(transcript_date) FROM Transcripts WHERE transcript_date = "2008-12-18")
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id EXCEPT SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id
SELECT T1.address_id , T2.section_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) FROM transcripts
SELECT count(*) FROM students
SELECT count(*) FROM students
SELECT max(date_left) FROM students
SELECT max(date_left) FROM Students
SELECT count(*) , T1.course_id FROM Student_Enrolment AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_enrolment_id = T2.student_enrolment_id GROUP BY T1.course_id
SELECT max(student_course_id) , count(*) FROM Student_Enrolment_Courses
SELECT T1.date_first_registered FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Transcript_Contents AS T2 ON T1.student_course_id = T2.student_course_id GROUP BY T1.student_id ORDER BY count(*) ASC LIMIT 1
SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T3.first_name = "Master" INTERSECT SELECT T2.semester_name FROM student_enrolment AS T1 JOIN semesters AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T1.student_id = T3.student_id WHERE T3.first_name = "Bachelor"
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = "Masters" INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = "Bachelors"
SELECT count(DISTINCT T1.current_address_id) FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.current_address_id
SELECT DISTINCT T1.line_1 , T1.line_2 , T1.line_3 , T1.city , T1.state_province_county , T1.country FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM students ORDER BY date_left DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM sections
SELECT section_description FROM sections WHERE section_name = 'h'
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" AND T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" UNION SELECT T1.first_name , T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "USA" AND T1.cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title ASC
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones'
SELECT count(*) FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = 'Ben Jones' OR directed_by = 'Brandon Vietti'
SELECT Country , count(*) FROM TV_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_Channel
SELECT count(DISTINCT series_name) , count(DISTINCT content) FROM TV_channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE language = "english"
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , count(*) FROM TV_channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t1.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.id = t2.id WHERE t1.title = "The Rise of the Blue Beetle!"
SELECT t1.series_name FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.id = t2.id JOIN cartoon AS t3 ON t2.channel = t3.channel WHERE t3.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T1.Title FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id ORDER BY Rating DESC LIMIT 3
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT T1.air_date FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.episode = T2.episode WHERE T2.title = "A Love of a Lifetime"
SELECT T2.Episode FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT t1.Weekly_Rank FROM TV_series AS t1 JOIN cartoon AS t2 ON t1.episode = t2.id WHERE t2.title = "A Love of a Lifetime"
SELECT T1.Channel , T2.Series_name FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T2.Episode = "A Love of a Lifetime"
SELECT t1.series_name FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Todd Casey"
SELECT T1.Country FROM tv_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM tv_channel EXCEPT SELECT t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel JOIN tv_series AS t3 ON t1.id = t3.channel WHERE t2.directed_by != "Todd Casey"
SELECT DISTINCT country FROM cartoon EXCEPT SELECT DISTINCT T1.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.directed_by != "Todd Casey"
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = "Michael Chang"
SELECT t1.series_name , t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones' INTERSECT SELECT t1.series_name , t1.country FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.id WHERE t2.directed_by = 'Michael Chang'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT pixel_aspect_ratio_PAR , country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM tv_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS t1 JOIN directed_by AS t2 ON t1.directed_by = t2.directed_by WHERE t2.directed_by = 'Ben Jones')
SELECT id FROM tv_channel EXCEPT SELECT channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon AS t1 JOIN TV_series AS t2 ON t1.id = t2.channel WHERE t1.18_49_Rating_Share < 49)
SELECT package_option FROM tv_channel EXCEPT SELECT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones'
SELECT count(*) FROM car_game_players
SELECT count(*) FROM car_game
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T1.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT final_table_made , best_finish FROM poker_player
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Nationality = "China"
SELECT avg(Earnings) FROM poker_player WHERE People_ID = people(People_ID, Name, Nationality, Birth_Date, Height)
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = "Final" AND T2.Earnings > 0
SELECT T2.Name FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Final_Table_Made = "Poker" AND T2.Best_Finish = 5
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T2.Earnings) FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT count(*) , Nationality FROM people GROUP BY Nationality
SELECT nationality FROM people GROUP BY nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT nationality FROM people GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT name , birth_date FROM people ORDER BY name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Poker" )
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = "Poker" )
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM votes
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T2.contestant_number , T2.contestant_name FROM votes AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT state FROM votes GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT T1.state , T1.phone_number , T1.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Tabatha Gehling' INTERSECT SELECT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state JOIN CONTESTANTS AS T3 ON T2.contestant_number = T3.contestant_number WHERE T3.contestant_name = 'Kelly Clauss'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE indepyear > 1950
SELECT name FROM country WHERE independyyear > 1950
SELECT count(DISTINCT countrycode) FROM country WHERE governmentform = 'Republic'
SELECT count(DISTINCT country) FROM country WHERE governmentform = 'Republic'
SELECT sum(t1.SurfaceArea) FROM country AS t1 JOIN country AS t2 ON t1.Code = t2.Code WHERE t1.Continent = "Caribbean"
SELECT sum(t2.SurfaceArea) FROM country AS t1 JOIN country AS t2 ON t1.Code = t2.Region WHERE t1.Continent = "Caribbean"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT T1.region FROM country AS T1 JOIN city AS T2 ON T1.countrycode = T2.countrycode WHERE T2.name = "Kabul"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.District = "Aruba" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT T1.Population , T1.lifeexpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Brazil"
SELECT t1.population , t1.lifeexpectancy FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t2.name = "Brazil"
SELECT T2.Region , T1.Population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = " Angola "
SELECT t1.region , count(*) FROM country AS t1 JOIN city AS t2 ON t1.countrycode = t2.countrycode WHERE t2.name = "Angola" GROUP BY t1.region
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(people.lifepath) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code2 = T2.CountryCode WHERE T1.Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' AND lifeexpectancy = (SELECT min(lifeexpectancy) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy ASC LIMIT 1
SELECT sum(gnp) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT T1.Population , max(T2.GNP) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T2.Continent
SELECT avg(lifeexpectancy) FROM country WHERE region = 'Republic'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN country AS T2 ON T1.Code = T2.Code WHERE T1.Continent = "Africa" AND T2.Region = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR continent = 'Europe'
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT sum(Population) FROM city WHERE District = "Gelderland"
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'USA'
SELECT avg(gnp) , count(*) FROM country WHERE Region = 'US'
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT REGION) FROM country WHERE continent = 'Africa'
SELECT sum(T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT count(DISTINCT T2.Language) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.Name = "Aruba"
SELECT sum(isofficial) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = "Afghanistan"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.countrycode ORDER BY sum(T1.percentage) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE language = "Dutch"
SELECT count(*) FROM countrylanguage WHERE IsOfficial = 1 AND Language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE IsOfficial = 1 AND Language = "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT T1.name , T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.name , T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT country) FROM countrylanguage WHERE language = "Chinese"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English" OR T2.Language = "Dutch"
SELECT T1.Region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Dutch" OR T2.Language = "English"
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.IsOfficial = 0
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT DISTINCT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Region = "Republic" GROUP BY T2.Language HAVING COUNT(*) = 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.Language = "English" GROUP BY t1.name ORDER BY sum(t1.population) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.Language = "English" GROUP BY t2.countrycode ORDER BY t1.population DESC LIMIT 1
SELECT t1.name , t1.population , t1.lifeexpectancy FROM country AS t1 JOIN city AS t2 ON t1.code = t2.countrycode WHERE t1.continent = 'Asia' ORDER BY t1.SurfaceArea DESC LIMIT 1
SELECT name , population , lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE isofficial != 1 AND language != "english")
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial != 1
SELECT sum(T1.Population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English"
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT sum(T1.IsOfficial) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.CountryCode NOT IN (SELECT CountryCode FROM country WHERE GNP < 1930)
SELECT sum(IsOfficial) FROM countrylanguage WHERE CountryCode <= 1929
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent != 'Europe')
SELECT name FROM country WHERE population < (SELECT max(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent != 'Asia' AND population < (SELECT max(population) FROM country WHERE continent != 'Asia')
SELECT name FROM country WHERE continent != 'Africa' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT name FROM country WHERE continent != 'Asia' AND population > (SELECT max(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.State FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language != "English"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode EXCEPT SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "English"
SELECT countrycode FROM country WHERE governmentform != 'Republic' AND language != "english"
SELECT abbr FROM country WHERE country NOT IN (SELECT country FROM country WHERE language = "English") AND governmentform != "Republic"
SELECT name FROM city WHERE countrycode = countrycode WHERE country 在 Europe 且 isofficial = 0 EXCEPT SELECT name FROM city WHERE countrycode = countrycode AND country 在 Europe AND isofficial = 1
{"sql": "SELECT t1.name FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = \"Europe\" AND t1.name != \"Paris\" AND t1.name != \"Rome\" AND t1.name != \"London\" AND t1.name != \"Madrid\" AND t1.name != \"Tokyo\" AND t1.name != \"Osaka\" AND t1.name != \"Helsinki\" AND t1.name != \"Dublin\" AND t1.name != \"Berlin\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid\" AND t1.name != \"Madrid
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "Asia" AND T2.region = "China"
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.concontinent = "Asia" INTERSECT SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.concontinent = "Asia" AND T1.Language = "Chinese"
SELECT name , independyear , territory FROM country ORDER BY population LIMIT 1
SELECT name , independyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) , T1.name , T1.HeadOfState FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT t1.name , t1.population , t1.HeadOfState FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode ORDER BY t2.population DESC LIMIT 1
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode HAVING count(*) >= 3
SELECT T2.Name , COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode HAVING COUNT(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT g1.name , g1.population , count(*) FROM country AS g1 JOIN country AS g2 ON g1.region = g2.region WHERE g1.lifeexpectancy > 72 GROUP BY g1.region
SELECT DISTINCT g1.GovernmentForm , sum(g2.Population) FROM country AS g1 JOIN country AS g2 ON g1.CountryCode = g2.CountryCode WHERE g1.lifeexpectancy > 72 GROUP BY g1.GovernmentForm
SELECT avg(lifeexpectancy) , sum(population) , continent FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT DISTINCT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE avg(lifeexpectancy) < 72 GROUP BY continent
SELECT name , surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name , region FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT sum(t1.population) , avg(t1.SurfaceArea) FROM country AS t1 JOIN country AS t2 ON t1.Continent = t2.Continent WHERE t1.code = "North America" AND t1.SurfaceArea > 3000
SELECT sum(t1.population) , avg(t1.SurfaceArea) FROM country AS t1 JOIN city AS t2 ON t1.Code = t2.CountryCode WHERE t1.Continent = "North America" AND t1.SurfaceArea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language , T2.District , count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language , T2.District ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryCode , T2.Language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T1.CountryCode ORDER BY count(*) DESC
SELECT sum(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.name = "Spain"
SELECT count(*) FROM countrylanguage WHERE language = "Spanish" AND isofficial != 1
SELECT countrycode FROM country WHERE name = "Spanish" GROUP BY countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.District FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age DESC
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT record_company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Official_ratings_(millions)) , min(Official_ratings_(millions)) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor WHERE conductor_id IN (SELECT conductor_id FROM performance GROUP BY conductor_id ORDER BY YEAR_OF_WORK DESC LIMIT 1)
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T2.name , T1.orchestra_id FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id JOIN performance AS T3 ON T2.performance_id = T3.performance_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN performance AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T2.orchestra_id HAVING count(*) > 1
SELECT t1.name FROM conductor AS t1 JOIN orchestra AS t2 ON t1.conductor_id = t2.conductor_id GROUP BY t1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_founded > 2008
SELECT T2.name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.conductor_id = T2.conductor_id WHERE T1.year_of_founded > 2008
SELECT record_company , count(*) FROM orchestra GROUP BY record_company
SELECT Record_Company , count(*) FROM orchestra GROUP BY Record_Company
SELECT T2.Record_companies , T1.type FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.type ORDER BY COUNT(*) ASC
SELECT major_record_format FROM orchestra GROUP BY major_record_format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT name FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_ID NOT IN (SELECT orchestra_ID FROM performance)
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE year_of_founded > 2003
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format = "CD" OR major_record_format = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING COUNT(*) > 1
SELECT count(*) FROM highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT T1.id , count(*) FROM friends AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id GROUP BY T1.id
SELECT count(DISTINCT friend_id) , student_id FROM FRIENDS GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM highschooler GROUP BY name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 99999
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.student_id = 2103
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT count(DISTINCT friend_id) FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT student_id FROM likes AS T1 JOIN friend AS T2 ON T1.student_id = T2.student_id GROUP BY student_id HAVING count(*) >= 2
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id
SELECT DISTINCT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id JOIN likes AS T3 ON T1.id = T3.student_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT count(*) , student_id FROM likes GROUP BY student_id
SELECT T1.name , count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id HAVING count(*) >= 2 AND grade > 5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinary"
SELECT state FROM Professionals WHERE role_code = "guardian" INTERSECT SELECT state FROM Professionals WHERE role_code = "veterinary"
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical"
SELECT avg(T2.age) FROM treatments AS T1 JOIN dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "Healthcare"
SELECT T1.cell_number , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "indiana" OR T1.cell_number > 2
SELECT T1.id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN owners AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "indiana" OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.cost_of_treatment > 1000
SELECT first_name FROM Professionals WHERE role_code = "veterinary" OR role_code = "guardian" EXCEPT SELECT first_name FROM Dogs WHERE gender = "dog"
SELECT first_name FROM Professionals WHERE role_code = "veterinary" INTERSECT SELECT first_name FROM Professionals WHERE role_code = "guardian" EXCEPT SELECT first_name FROM Dogs WHERE gender = "dog"
SELECT T1.role_code , T1.first_name , T1.email_address FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code JOIN Dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T3.gender = 'dog'
SELECT professional_id , role_code , email_address FROM Professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.dog_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code = T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T3.dog_id = T2.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.charge_type = T2.charge_type WHERE T2.charge_amount = (SELECT min(charge_amount) FROM Charges)
SELECT T1.breed_name , T1.treatment_type_description FROM Treatment_Types AS T1 JOIN Dogs AS T2 ON T1.dog_id = T2.dog_id WHERE T1.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.charge_amount = (SELECT max(charge_amount) FROM charges)
SELECT T1.owner_id , T1.zip_code FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.cell_number , T1.professional_id FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.owner_id , T1.cell_number FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code JOIN dogs AS T3 ON T3.dog_id = T2.dog_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name FROM treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.charge_amount , T2.treatment_type_code FROM charges AS T1 JOIN treatment_types AS T2 ON T1.charge_type = T2.treatment_type_code
SELECT cost_of_treatment , treatment_type_code FROM treatments WHERE treatment_type_code = "Healthcare"
SELECT T1.first_name , T1.last_name , T2.size_description FROM Professionals AS T1 JOIN Dogs AS T2 ON T1.professional_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T4.name FROM OWNERS AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id JOIN PROFESSIONALS AS T4 ON T3.professional_id = T4.professional_id
SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code WHERE T2.gender = 'Puppy' AND T2.date_of_departed = '0000-00-00' ORDER BY T2.date_of_departed LIMIT 1
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = 'Rarest'
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = 'VA'
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Medical care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "Health Care"
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM dogs)
SELECT T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id ORDER BY T2.age DESC LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs
SELECT date_arrived , date_departed FROM Dogs
SELECT count(*) FROM treatments WHERE treatment_type_code = "Puppy care"
SELECT count(*) FROM treatments AS T JOIN dogs AS D ON T.dog_id = D.dog_id WHERE T.treatment_type_code = "health care"
SELECT count(DISTINCT professional_id) FROM treatments AS T JOIN Professionals AS P ON T.professional_id = P.professional_id WHERE T.treatment_type_code = "health care to puppies"
SELECT count(DISTINCT professional_id) FROM treatments WHERE treatment_type_code = "Puppy"
SELECT T2.role_code , T1.street , T1.city , T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.zip_code = T2.zip_code WHERE T2.city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM owners WHERE state LIKE '%North%'
SELECT T1.first_name , T1.last_name , T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT sum(cost_of_treatment) FROM treatments WHERE date_of_treatment = (SELECT max(date_of_treatment) FROM treatments)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments WHERE treatment_type_code = "Puppy care"
SELECT count(*) FROM owners WHERE owner_id NOT IN ( SELECT owner_id FROM dogs WHERE gender = "Puppy")
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE gender = "Puppy")
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments AS T1 JOIN dog_id AS T2 ON T1.dog_id = T2.dog_id WHERE T1.treatment_type_code = "puppy")
SELECT count(*) FROM professionals WHERE professional_id NOT IN ( SELECT professional_id FROM treatments WHERE treatment_type_code = "Puppy")
SELECT name , age , weight FROM dogs WHERE abandoned_yn = '1'
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM dogs WHERE gender = "Puppy"
SELECT avg(age) FROM dogs WHERE gender = 'Puppy'
SELECT age FROM dogs WHERE gender = 'Puppy' ORDER BY age DESC LIMIT 1
SELECT age FROM dogs WHERE gender = "Pug" ORDER BY age DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , sum(charge_amount) FROM Charges GROUP BY charge_type
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_type DESC LIMIT 1
SELECT email_address , cell_number , home_phone FROM Professionals WHERE role_code = 'Veterinary'
SELECT email_address , cell_number , home_phone FROM Professionals
SELECT T1.breed_name , T2.size_description FROM Breeds AS T1 JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code JOIN Sizes AS T3 ON T2.size_code = T3.size_code
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T1.role_code , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.role_code = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT name FROM singer WHERE birth_year = 1948 OR birth_year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT t1.citizenship FROM singer AS t1 JOIN song AS t2 ON t1.singer_id = t2.singer_id WHERE t2.Highest_Position = "Vocal" GROUP BY t1.citizenship ORDER BY count(*) DESC LIMIT 1
SELECT Country FROM singer GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship , max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT country , max(net_work_thousand) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.title , sum(T1.sales) , T2.singer_id FROM song AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id GROUP BY T2.singer_id
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT citizenship FROM singer WHERE birth_year < 1945 INTERSECT SELECT citizenship FROM singer WHERE birth_year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT T1.feature_type_name FROM Ref_Feature_Types AS T1 JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_name = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = 'apartment' OR room_count > 1
