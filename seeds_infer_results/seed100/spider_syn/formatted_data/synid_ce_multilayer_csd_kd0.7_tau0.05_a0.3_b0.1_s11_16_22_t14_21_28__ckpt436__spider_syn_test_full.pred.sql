SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name , country , age FROM singer ORDER BY age DESC
SELECT Name , Country , Age FROM singer ORDER BY Age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE Country = "France"
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'French'
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name , song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT count(*) , Country FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT AVG(Age) FROM singer)
SELECT position , name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT LOCATION , NAME FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) , max(capacity) FROM stadium
SELECT avg(Capacity) , max(Capacity) FROM stadium
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT T1.name , count(*) FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.name
SELECT count(*) , stadium.stadium_id FROM stadium GROUP BY stadium.stadium_id
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2014 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.capacity FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year > 2013 GROUP BY T1.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM concert GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.Year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.Year ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 INTERSECT SELECT Country FROM singer WHERE Age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T1.name , T1.theme , count(*) FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id GROUP BY T1.theme
SELECT T1.name , T2.theme , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id GROUP BY T3.concert_name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id GROUP BY T1.name
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT T1.name FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_id = T3.concert_id WHERE T3.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE '%Hey%'
SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.position FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE T2.year = 2015
SELECT count(*) FROM concert WHERE stadium_id = (SELECT stadium_id FROM concert GROUP BY stadium_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id ORDER BY T2.capacity DESC LIMIT 1
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT T2.weight FROM Has_pet AS T1 JOIN Pets AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T1.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student)
SELECT T1.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.petid = T2.petid JOIN Student AS T3 ON T2.stuid = T3.stuid WHERE T3.age = (SELECT min(age) FROM Student)
SELECT max(weight) , pettype FROM Pets GROUP BY pettype
SELECT max(weight) , pet_type FROM Pets GROUP BY pet_type
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT count(*) FROM Student WHERE F = "F" JOIN Has_Pet ON StuID = StuID JOIN Pets ON PetID = PetID WHERE PetType = "Puppy"
SELECT count(*) FROM Student WHERE sex = 'F' JOIN Has_Pet ON Student.StuID = Has_Pet.StuID JOIN Pets ON Has_Pet.PetID = Pets.PetID WHERE Pets.pettype = "Puppy"
SELECT count(DISTINCT pettype) FROM Pets
SELECT count(DISTINCT species) FROM Animals
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_type = "Kitten" OR T3.pet_type = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" OR T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Kitten" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Puppy"
SELECT major , age FROM Student EXCEPT SELECT T1.major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.stuid JOIN Pets AS T3 ON T2.petid = T3.petid WHERE T3.pettype = "Kitten"
SELECT T1.Major , T2.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID EXCEPT SELECT T1.Major , T2.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID = (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet
SELECT Fname , Age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = (SELECT PetID FROM Pets WHERE PetType = "Cat") )
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "kitten"
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT pettype , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT petid , weight FROM Pets WHERE pet_age > 1
SELECT avg(pet_age) , max(pet_age) , pet_type FROM Pets GROUP BY pet_type
SELECT avg(pet_age) , max(pet_age) , pettype FROM Pets GROUP BY pettype
SELECT pet_type , avg(weight) FROM Pets GROUP BY pet_type
SELECT pet_age , pet_type FROM Pets GROUP BY pet_type
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age > 10
SELECT DISTINCT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE LName = 'Smith')
SELECT T1.stuid FROM student AS T1 JOIN has_pet AS T2 ON T1.stuid = T2.stuid WHERE T1.lname = 'Smith'
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT count(*) , StuID FROM Has_Pet GROUP BY StuID
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Sex FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID HAVING count(*) > 1
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.Lname FROM STUDENT AS T1 JOIN HAS_PET AS T2 ON T1.StuID = T2.StuID JOIN PETTS AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT T1.contid , T1.contname , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT T1.contid , T2.continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent GROUP BY T1.contid
SELECT count(DISTINCT continent) FROM continents
SELECT count(*) FROM countries
SELECT T1.maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT T1.FullName , T1.Id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model ORDER BY T2.mpg ASC LIMIT 1
SELECT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model ORDER BY T2.mpg LIMIT 1
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM cars_data WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT T1.FullName FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.MakeId WHERE T2.Year = 1970
SELECT DISTINCT T1.maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid WHERE T2.year = 1970
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Id ORDER BY T2.Year LIMIT 1
SELECT T1.maker , T2.year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.makeid ORDER BY T2.year LIMIT 1
SELECT DISTINCT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.model = T2.make WHERE T2.year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.Continent , count(*) FROM continents AS T1 JOIN countries AS T2 ON T1.ContId = T2.Continent GROUP BY T1.Continent
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.countryname ORDER BY count(*) DESC LIMIT 1
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country GROUP BY T1.CountryName ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker
SELECT count(*) , T1.id , T1.fullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT accelerate FROM cars_data WHERE car_names.make = "amc hornet sportabout"
SELECT accelerate FROM cars_data WHERE car_names.make = "Amc Hornet Sportabout"
SELECT count(*) FROM car_makers WHERE maker LIKE "%French%"
SELECT count(*) FROM car_makers WHERE country = "France"
SELECT count(*) FROM car_makers WHERE country = "USA"
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId WHERE T2.CountryName = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND YEAR = 1974
SELECT * FROM model_list
SELECT maker , model FROM model_list
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker != "null"
SELECT T1.countryname , T1.countryid FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker != "null"
SELECT Id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT avg(weight) , YEAR FROM cars_data GROUP BY YEAR
SELECT T1.continent FROM continents AS T1 JOIN countries AS T2 ON T1.contid = T2.continent WHERE T2.countryname = "Europe" GROUP BY T1.continent HAVING count(*) >= 3
SELECT T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T1.continent = "Europe" GROUP BY T1.countryname HAVING count(*) >= 3
SELECT max(Horsepower) , T1.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT max(Horsepower) , T1.Maker FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T2.Cylinders = 3 GROUP BY T1.Maker
SELECT model FROM cars_data ORDER BY MPG DESC LIMIT 1
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Model = T2.Id ORDER BY T2.MPG DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
{"sql": "SELECT avg(Edispl) FROM cars_data WHERE Id = 3730162211245764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764576457645764
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT max(accelerate) , cylinders FROM cars_data GROUP BY cylinders
SELECT max(Accelerate) , Cylinders FROM cars_data GROUP BY Cylinders
SELECT T2.Maker FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T1.Make = T2.Maker GROUP BY T2.Maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE cylinders > 4
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE FullName = "American Motor Company"
SELECT count(*) FROM model_list WHERE maker = "American Motor Company"
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.FullName , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT DISTINCT T1.distinct_type FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.make JOIN car_names AS T3 ON T2.model = T3.model WHERE T1.maker = "General Motors" OR T3.mileage > 3500
SELECT DISTINCT T1.model FROM model_list AS T1 JOIN car_names AS T2 ON T1.model = T2.model JOIN cars_data AS T3 ON T2.make = T3.makeid WHERE T3.Weight > 3500 OR T2.make = "General Motors"
SELECT YEAR FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT YEAR FROM cars_data WHERE Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT min(Cylinders) FROM cars_data WHERE Make = "Volvo"
SELECT Cylinders FROM cars_data WHERE Id = (SELECT min(Id) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate > (SELECT max(accelerate) FROM cars_data)
SELECT count(DISTINCT T1.country) FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.country HAVING count(DISTINCT T2.maker) > 2
SELECT count(*) FROM car_makers WHERE country > 2
SELECT count(*) FROM cars_data WHERE cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT T1.Model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.Make = T2.Id WHERE T2.Cylinders = 4 ORDER BY T2.Horsepower DESC LIMIT 1
SELECT T1.model FROM car_names AS T1 JOIN cars_data AS T2 ON T1.make = T2.id WHERE T2.cylinders = 4 GROUP BY T1.model ORDER BY count(*) DESC LIMIT 1
SELECT T1.make , T2.FullName FROM car_names AS T1 JOIN car_makers AS T2 ON T1.MakeId = T2.Id JOIN cars_data AS T3 ON T1.Model = T3.Id WHERE T3.Horsepower > (SELECT min(Horsepower) FROM cars_data) AND T3.Cylinders != 3
SELECT T1.maker , T1.fullName FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.make WHERE T2.model NOT IN (SELECT id FROM cars_data WHERE cylinders = 4)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR YEAR < 1980
SELECT model FROM car_names WHERE make != 'Ford Motor Company' AND weight < 3500
SELECT DISTINCT model FROM car_names WHERE make != 'Ford' AND weight < 3500
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT countryname FROM countries WHERE countryid NOT IN (SELECT country FROM car_makers)
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.maker HAVING count(*) > 3
SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) >= 2 INTERSECT SELECT T1.id , T1.maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = 'fiat' INTERSECT SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country GROUP BY T1.id HAVING count(*) > 3
SELECT T1.id , T1.countryname FROM countries AS T1 JOIN car_makers AS T2 ON T1.countryid = T2.country WHERE T2.maker = "Ford" OR count(*) > 3
SELECT Country FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Country FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT airportname , airportcode FROM airports WHERE country = "USA"
SELECT T1.airportname , T1.airportcode FROM airports AS T1 JOIN airlines AS T2 ON T1.airportcode = T2.airline WHERE T2.country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT count(*) FROM airports
SELECT sum(T1.AirportCode) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM Flights
SELECT count(*) FROM Flights
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T2.destairport LIKE '%UAL%'
SELECT T2.airportname FROM airlines AS T1 JOIN airports AS T2 ON T1.airline = T2.airportcode WHERE T1.abbr = 'UAL'
SELECT count(*) FROM airports WHERE Country = 'USA'
SELECT count(*) FROM airports WHERE Country = "USA"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT city , country FROM airports WHERE airportname = "Alton"
SELECT airportname FROM airports WHERE airportcode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airline = 'APG'
SELECT count(*) FROM flights WHERE sourceairport = 'APG'
SELECT count(*) FROM flights WHERE DestAirport = 'Terminal ATO'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.country = "ATA"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.city = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = 'Aberdeen' AND T2.AirportName = 'Ashley'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Ashley" JOIN airports AS T3 ON T3.AirportCode = T2.AirportCode WHERE T3.City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.Airline = T2.UID WHERE T2.Airline = "JetBlue Airways"
SELECT count(*) FROM flights WHERE airline = "Jetblue Airways"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "United Airlines" AND T2.AirportCode = "ASY"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "ASY Airport" JOIN airlines AS T3 ON T1.Airline = T3.UID WHERE T3.Airline = "United Airlines"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = 'AHD' AND T1.Airline = 'United Airlines'
SELECT count(*) FROM flights WHERE sourceairport = 'AHD' AND airline = 'United Airlines'
SELECT T2.T1 FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.City = 'Aberdeen'
SELECT count(*) FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" JOIN Airline AS T3 ON T1.Airline = T3.UID WHERE T3.Airline = "United Airlines"
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.city FROM airports AS T1 JOIN Flights AS T2 ON T1.airportcode = T2.sourceairport GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportCode FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportCode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode ORDER BY count(*) ASC LIMIT 1
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname ORDER BY count(*) DESC LIMIT 1
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.AirportName ORDER BY count(*) DESC LIMIT 1
SELECT T1.ShortenedWord , T2.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.Airline = T2.AirportCode GROUP BY T2.Country ORDER BY count(*) ASC LIMIT 1
SELECT T1.AirportCode , T2.AirportName , T1.Airline , T1.Airline FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport GROUP BY T1.Airline ORDER BY count(*) ASC LIMIT 1
SELECT T2.DestAirport FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.AirportName = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.airportname = "AHD"
SELECT T1.DestAirport FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = 'AHD'
SELECT T1.airportname FROM airports AS T1 JOIN Flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "AHD"
SELECT T1.airportcode FROM airports AS T1 JOIN Flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.airportname = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN Flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.airportname = 'CVO'
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'APG' INTERSECT SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport JOIN airports AS T3 ON T1.airportcode = T3.airportcode WHERE T3.country = 'CVO'
SELECT DestAirport FROM Flights WHERE SourceAirport = 'CVO' EXCEPT SELECT DestAirport FROM Flights WHERE SourceAirport = 'APG'
SELECT DestAirport FROM Flights WHERE SourceAirport = 'CVO' EXCEPT SELECT DestAirport FROM Flights WHERE SourceAirport = 'APG'
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname HAVING count(*) >= 10
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportcode HAVING count(*) >= 10
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname HAVING count(*) < 200
SELECT T1.airportname FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport GROUP BY T1.airportname HAVING count(*) < 200
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode JOIN Airline AS T3 ON T1.Airline = T3.UID WHERE T3.Airline = "United Airlines"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airline AS T2 ON T1.Airline = T2.USE FROM Flights AS T3 JOIN Airline AS T4 ON T3.Airline = T4.USE WHERE T4.Airline = "United Airlines"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.AirportName = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.Country = "APG"
SELECT T1.airportcode FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.destairport WHERE T1.airportname = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "APG"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen"
SELECT T1.airline , T1.FlightNo FROM Flights AS T1 JOIN Airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.City = "Aberdeen" OR T2.City = "Abilene"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT DestAirport FROM Flights UNION SELECT SourceAirport FROM Flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT count(*) FROM Employee
SELECT count(*) FROM Employee
SELECT name FROM Employee ORDER BY age ASC
SELECT name FROM employee ORDER BY age ASC
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , city FROM shop GROUP BY city
SELECT count(*) , city FROM shop GROUP BY city
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1
SELECT min(number_products) , max(number_products) FROM shop
SELECT min(number_products) , max(number_products) FROM shop
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name , district , city FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.employee_id = T2.employee_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY T2.bonus DESC LIMIT 1
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Evaluation AS T2 ON T1.employee_id = T2.employee_id
SELECT T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT count(*) , T1.name FROM shop AS T1 JOIN hiring AS T2 ON T1.shop_id = T2.shop_id GROUP BY T1.name
SELECT count(*) , name FROM shop GROUP BY name
SELECT sum(T1.Bonus) FROM evaluation AS T1 JOIN employee AS T2 ON T1.Employee_ID = T2.Employee_ID
SELECT sum(Bonus) FROM evaluation
SELECT * FROM hiring
SELECT * FROM hiring
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT count(DISTINCT city) FROM employee
SELECT count(DISTINCT city) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , template_id FROM Documents WHERE document_description LIKE '%w%'
SELECT T1.document_name , T1.document_description FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%w%'
SELECT t1.template_id , t1.layout_id , t2.document_description FROM Documents AS t1 JOIN Paragraphs AS t2 ON t1.document_id = t2.document_id WHERE t2.paragraph_text = "Robbin CV"
SELECT t1.template_id , t1.layout_id , t2.document_description FROM Documents AS t1 JOIN Templates AS t2 ON t1.template_id = t2.template_id WHERE t2.template_details = "Robbin CV"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM Documents WHERE document_type = "text"
SELECT count(*) FROM Documents AS T1 JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_Type_Code = "PPT"
SELECT count(*) FROM Documents WHERE Template_ID = (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "PPT")
SELECT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT DISTINCT layout_id , count(*) FROM Documents GROUP BY layout_id
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T1.template_type_code FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id HAVING count(*) > 1
SELECT template_id FROM Documents GROUP BY template_id HAVING count(*) > 1
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id
SELECT template_id FROM Templates EXCEPT SELECT T1.template_id FROM Templates AS T1 JOIN Documents AS T2 ON T1.template_id = T2.template_id
SELECT count(*) FROM Ref_Template_Types
SELECT count(*) FROM Layout
SELECT layout_id , version_number , layout_type FROM layouts
SELECT template_id , version_number , template_type_description FROM Templates
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code
SELECT DISTINCT template_type_description FROM Ref_Template_Types
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT template_id FROM Templates WHERE template_type_code = "PP" OR template_type_code = "PPT"
SELECT count(*) FROM Templates WHERE Template_Type_Code = "CV"
SELECT count(*) FROM Documents WHERE Document_Name LIKE "CV%"
SELECT version_number , template_type_code FROM Templates WHERE version_number > 5
SELECT version_number , layout_type_name FROM Templates WHERE version_number > 5
SELECT template_type_code , count(*) FROM Ref_Template_Types GROUP BY template_type_code
SELECT DISTINCT layout_type , count(*) FROM Templates GROUP BY layout_type
SELECT template_type_code FROM Templates GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.template_type_description FROM ref_template_types AS t1 JOIN templates AS t2 ON t1.template_type_code = t2.template_type_code GROUP BY t1.template_type_description ORDER BY count(*) DESC LIMIT 1
SELECT template_type_description FROM Ref_Template_Types GROUP BY template_type_description HAVING count(*) < 3
SELECT template_type_description FROM Ref_Template_Types GROUP BY template_type_description HAVING count(*) < 3
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT min(Version_Number) , Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT t1.layout_type_code FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code WHERE t2.template_details LIKE "Data base%"
SELECT T1.layout_type_code FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN Documents AS T3 ON T2.template_id = T3.template_id WHERE T3.document_name = "Data base"
SELECT document_name FROM Documents WHERE template_id IN (SELECT template_id FROM Templates WHERE template_type_code = "BK")
SELECT T1.document_name FROM Documents AS T1 JOIN Templates AS T2 ON T1.template_id = T2.template_id WHERE T2.template_type_code = "BK"
SELECT T1.layout_type , count(*) FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.layout_type
SELECT count(*) , T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Templates AS T2 ON T1.template_type_code = T2.template_type_code GROUP BY T1.template_type_description
SELECT t1.layout_type FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id GROUP BY t1.layout_type ORDER BY count(*) DESC LIMIT 1
SELECT template_type_code FROM Documents GROUP BY template_type_code ORDER BY count(*) DESC LIMIT 1
SELECT layout_type FROM Ref_Template_Types EXCEPT SELECT T1.layout_type FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name LIKE "text%"
SELECT template_type_description FROM Ref_Template_Types EXCEPT SELECT T1.template_type_description FROM Ref_Template_Types AS T1 JOIN Documents AS T2 ON T1.template_type_code = T2.template_type_code WHERE T2.document_name LIKE "%text%"
SELECT template_type_name , template_type_description FROM Ref_Template_Types
SELECT template_type_description , template_type_code FROM Ref_Template_Types
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_code = "AD"
SELECT layout_type_name FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT template_type_description FROM Ref_Template_Types WHERE template_type_description = "Book"
SELECT DISTINCT t1.template_type_description FROM Ref_Template_Types AS t1 JOIN Templates AS t2 ON t1.template_type_code = t2.template_type_code JOIN Documents AS t3 ON t2.template_id = t3.template_id JOIN Paragraphs AS t4 ON t3.document_id = t4.document_id WHERE t3.document_name LIKE "%text%"
SELECT DISTINCT T1.template_type_description FROM ref_template_types AS T1 JOIN templates AS T2 ON T1.template_type_code = T2.template_type_code JOIN documents AS T3 ON T2.template_id = T3.template_id JOIN paragraphs AS T4 ON T3.document_id = T4.document_id WHERE T4.paragraph_text LIKE '%text%'
SELECT layout_id FROM Ref_Template_Types WHERE template_type_description = "Presentation"
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text LIKE '%Presentation%'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT count(*) FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Summer Show"
SELECT Other_Details FROM Paragraphs WHERE Paragraph_Text LIKE '%Korea%'
SELECT T1.other_details FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = 'Korea'
SELECT T1.paragraph_id , T2.paragraph_text FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_id , T2.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Welcome to NY"
SELECT T1.paragraph_text FROM paragraphs AS T1 JOIN documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Customer reviews"
SELECT T2.paragraph_text FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T1.document_name = 'Customer reviews'
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT T1.template_id , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY T1.template_id
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T2.document_name , count(*) FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT T1.template_id , T2.document_name FROM Paragraphs AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id , T2.document_name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.template_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id GROUP BY T1.template_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs GROUP BY document_id HAVING count(*) = 2
SELECT document_id FROM Paragraphs GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.template_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Brazil' INTERSECT SELECT T1.document_id FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.document_id = T2.document_id WHERE T2.paragraph_text = 'Ireland'
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T2.name , T1.curriculum FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.teacher_id = T2.teacher_id
SELECT T1.Name , T2.Teacher_ID FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Teacher_ID ORDER BY T1.Name
SELECT T1.Name , T2.Course FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID ORDER BY T1.Name
SELECT Name FROM teacher WHERE T1.T2.Course = 'Math'
SELECT Name FROM teacher WHERE Subject = 'Math'
SELECT T2.Name , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name
SELECT T1.Name , count(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING count(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE level_of_membership > 4 ORDER BY level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE LEVEL_OF_MEMBERSHIP <= 4
SELECT name , level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age
SELECT museum_id , name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = "Plaza Museum"
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T1.id , T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.museum_id , T1.name , T1.level_of_membership FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T1.museum_id , T1.name FROM museum AS T1 JOIN visit AS T2 ON T1.museum_id = T2.museum_id GROUP BY T1.museum_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum WHERE museum_id NOT IN (SELECT museum_id FROM visit)
SELECT T1.name , T1.age FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(num_of_ticket) , max(num_of_ticket) FROM visit WHERE visitor_id = 'Guest'
SELECT sum(T2.total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_id WHERE T1.level_of_membership = 1
SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year < 2011 INTERSECT SELECT T2.name FROM visit AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id WHERE T2.open_year > 2009
SELECT count(*) FROM visitor WHERE ID NOT IN (SELECT visitor_ID FROM visit WHERE museum_id > 2010)
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
SELECT avg(T1.winner_rank) FROM matches AS T1 JOIN rankings AS T2 ON T1.winner_id = T2.player_id GROUP BY T2.player_id
SELECT max(loser_rank) FROM matches
SELECT max(loser_rank) FROM matches
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.year = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name , T2.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_age DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id ORDER BY T2.loser_age DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.country_code ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T2.rank_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id JOIN matches AS T3 ON T2.player_id = T3.winner_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id JOIN rankings AS T3 ON T1.player_id = T3.player_id WHERE T2.tourney_name = "Australian Open" ORDER BY T3.ranking_points DESC LIMIT 1
SELECT T1.loser_name , T2.winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_name ORDER BY count(*) DESC LIMIT 1 UNION SELECT T1.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.winner_name , T1.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY T1.minutes DESC LIMIT 1
SELECT avg(T1.ranking) , T2.first_name FROM rankings AS T1 JOIN players AS T2 ON T1.player_id = T2.player_id GROUP BY T2.first_name
SELECT T1.first_name , T2.average_ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT T1.first_name , T2.ranking_points FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id
SELECT T1.first_name , T1.last_name , sum(T2.ranking_points) FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT count(*) , country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT sum(t1.tours) , t2.ranking FROM rankings AS t1 JOIN rankings AS t2 ON t1.player_id = t2.player_id GROUP BY t2.ranking
SELECT sum(t1.tours) , t2.ranking FROM rankings AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id GROUP BY t2.ranking
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT YEAR , count(*) FROM matches GROUP BY YEAR
SELECT T1.first_name , T1.last_name , T2.rank FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.rank LIMIT 3
SELECT T1.first_name , T1.last_name , T2.ranking FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking DESC LIMIT 3
SELECT count(DISTINCT T1.first_name) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tourney_name = "WTA Championships" AND T1.hand = "left"
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT T1.first_name , T1.country_code , T1.birth_date FROM players AS T1 JOIN rankings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.ranking_points DESC LIMIT 1
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) , hand FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date , result FROM battle
SELECT max(cause_by_ship_id) , min(cause_by_ship_id) FROM death
SELECT avg(injured) FROM death
SELECT T1.hurt , T1.killed FROM death AS T1 JOIN ship AS T2 ON T1.caused_by_ship_id = T2.id WHERE T2.t = 't'
SELECT name , result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT T1.id , T1.name FROM ship AS T1 JOIN battle AS T2 ON T1.lost_in_battle = T2.id WHERE T2.result = 'loss' AND T1.ship_type = 'Brig'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING count(*) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = 'Kaloyan' INTERSECT SELECT DISTINCT name FROM battle WHERE latin_commander = 'Baldwin I'
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE id NOT IN (SELECT T1.id FROM ship AS T1 JOIN battle AS T2 ON T1.id = T2.id WHERE T1.tonnage = 225)
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'Lettice' INTERSECT SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE location = 'English Channel')
SELECT note FROM death WHERE note LIKE '%East%'
SELECT * FROM Addresses WHERE line_1 = "line 1" AND line_2 = "line 2"
SELECT line_1 , line_2 FROM Addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = 'Math'
SELECT course_description FROM Courses WHERE course_name LIKE "Math%"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM Addresses WHERE city = "Port Chelsea"
SELECT T1.department_name , T1.department_id FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.department_name FROM departments AS T1 JOIN degree_programs AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT department_name) FROM departments
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT count(*) FROM departments WHERE department_name = 'Engineering'
SELECT section_name , section_description FROM sections
SELECT T1.section_name , T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name , T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Undergraduate' GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name , T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM DEPARTMENTS WHERE department_name LIKE '%computer%'
SELECT course_description FROM courses WHERE course_name LIKE '%computer%'
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2" GROUP BY T1.student_id
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "2" GROUP BY T1.student_id
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.degree_summary_name = "Bachelor"
SELECT T1.degree_program_id FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id , T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name , T1.student_id , count(*) FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT section_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT T1.section_name FROM sections AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id WHERE T2.student_id = "null"
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING count(*) > 0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.degree_program_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment AS T2 ON T1.course_id = T2.degree_program_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM Students WHERE T1.permanent_address_id IN (SELECT T2.address_id FROM Addresses AS T2 ON T2.state_province_county = "North Carolina" JOIN Student_Enrolment AS T3 ON T1.student_id = T3.student_id GROUP BY T1.student_id HAVING count(*) = 1)
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T1.date_first_registered , T1.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_enrolment_id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM Students WHERE first_name = "Timothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Student_Enrolment WHERE permanent_address_id != current_address_id
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id , count(*) FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
SELECT date_first_registered , other_student_details FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT min(transcript_date) , other_details FROM transcripts GROUP BY other_details
SELECT count(*) FROM Students
SELECT count(*) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT count(DISTINCT student_enrolment_id) , student_enrolment_id FROM Student_Enrolment GROUP BY student_enrolment_id
SELECT max(count(*)), T1.course_id FROM Student_Enrolment_Courses AS T1 JOIN Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id
SELECT student_id , date_first_registered FROM Students GROUP BY date_first_registered ORDER BY count(*) ASC LIMIT 1
SELECT date_first_registered , student_id FROM Students GROUP BY student_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Masters' INTERSECT SELECT T1.semester_id FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN Students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelors'
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN students AS T2 ON T1.address_id = T2.permanent_address_id
SELECT * FROM Students ORDER BY last_name DESC
SELECT other_student_details FROM students ORDER BY other_student_details DESC
SELECT section_description FROM sections WHERE section_name = "h"
SELECT section_description FROM sections WHERE section_name = "h"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT T1.first_name , T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoons ORDER BY Title
SELECT * FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Directed_by = "Joseph Kuhr"
SELECT title , directed_by FROM cartoon ORDER BY original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title FROM Cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT title FROM cartoon WHERE directed_by = "Ben Jones" OR directed_by = "Brandon Vietti"
SELECT Country , COUNT(*) FROM TV_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT country , count(*) FROM TV_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) , count(DISTINCT Content) FROM TV_Channel
SELECT count(DISTINCT series_name , Content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE Series_Name = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language = "English"
SELECT count(*) FROM TV_channel WHERE Language = "english"
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language , COUNT(*) FROM TV_Channel GROUP BY Language
SELECT Language , COUNT(*) FROM TV_channel GROUP BY Language
SELECT t1.series_name FROM TV_series AS t1 JOIN TV_channel AS t2 ON t1.channel = t2.id JOIN cartoon AS t3 ON t2.id = t3.channel WHERE t3.title = "The Rise of the Blue Beetle!"
SELECT t1.id FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT T2.Title FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode FROM TV_series ORDER BY Rating
SELECT T1.Episode , T1.Rating FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id ORDER BY Rating DESC LIMIT 3
SELECT Episode , Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) , max(Share) FROM TV_series
SELECT max(Share) , min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_Name = "A Love of a Lifetime"
SELECT T1.Channel FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.Series_Name = "A Love of a Lifetime"
SELECT T1.Series_Name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T1.Episode = "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.Channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel = T2.id WHERE T2.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code , channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option , series_name FROM TV_channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Todd Casey"
SELECT country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE written_by = "Todd Casey")
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Todd Casey")
SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.series_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT T1.Serial_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Ben Jones" INTERSECT SELECT T1.Serial_name , T1.Country FROM TV_channel AS T1 JOIN cartoon AS T2 ON T1.id = T2.channel WHERE T2.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "english"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != "English"
SELECT id FROM TV_channel WHERE Country = "USA" GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = 'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_channel WHERE id NOT IN (SELECT channel FROM cartoon WHERE directed_by = "Ben Jones")
SELECT Package_Option FROM TV_Channel EXCEPT SELECT T1.Package_Option FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by = "Ben Jones"
SELECT count(*) FROM people WHERE Nationality = "Car"
SELECT count(*) FROM people WHERE Nationality = "Car"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made , Best_Finish FROM poker_player
SELECT T1.Final_Table_Made , T1.Best_Finish FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Name LIKE "Car"
SELECT avg(Earnings) FROM poker_player WHERE People_ID = 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT max(final_table_made) FROM poker_player WHERE Earnings < 200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Gamers"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Final_Table_Made = "Car"
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Earnings > 300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.Earnings LIMIT 1
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id ORDER BY T1.Earnings LIMIT 1
SELECT T1.Money_Rank FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height = (SELECT max(Height) FROM people)
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height = (SELECT max(Height) FROM people)
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT state) FROM area_code_state
SELECT contestant_number , contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id , phone_number , state FROM VOTES
SELECT max(area_code) , min(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state , created FROM VOTES
SELECT T1.contestant_number , T2.contestant_name FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number HAVING count(*) >= 2
SELECT T1.contestant_number , T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.set_up_date , T2.state , T1.phone_number FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 'Tabatha Gehling'
SELECT T1.area_code FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number = 1001 AND T2.contestant_number = 1002
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear > 1950
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.indepyear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.District = "Caribbean"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.District = "Caribbean"
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT continent FROM country WHERE name = 'Anguilla'
SELECT region FROM country WHERE capital = 'Kabul'
SELECT region FROM city WHERE name = 'Kabul'
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.CountryName = "Aruba" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Name = "Aruba"
SELECT T1.Population , T1.LifeExpectancy FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Brazil"
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT T1.region , T2.population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.name = "Angola"
SELECT T1.region , T2.Population FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T2.name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent = "Asia" ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) , max(gnp) FROM country WHERE continent = 'Asia'
SELECT count(*) , max(GNP) FROM country WHERE Continent = "Asia"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "African" AND T1.Region = "Republic"
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Africa" AND T1.Region = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Asia" UNION SELECT sum(SurfaceArea) FROM country WHERE Continent = "Europe"
SELECT sum(T1.SurfaceArea) FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Asia" OR T1.Continent = "Europe"
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT sum(population) FROM city WHERE district = "Gelderland"
SELECT avg(gnp) , count(*) FROM country WHERE governmentform = 'US'
SELECT avg(gnp) , count(*) FROM country WHERE countrycode = 'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT sum(T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba"
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode = "ARUBA"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT count(*) FROM countrylanguage WHERE countrycode = "AF"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T1.Continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "English" INTERSECT SELECT count(*) FROM countrylanguage WHERE Language = "Dutch"
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "english" INTERSECT SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "dutch"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "french"
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.Language = "english" INTERSECT SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.Language = "french"
SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T1.name = "English" INTERSECT SELECT T1.name , T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T1.name = "French"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT continent) FROM country WHERE language = 'Chinese'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "english" OR T2.language = "dutch"
SELECT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Dutch" OR T2.language = "English"
SELECT T1.country FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T2.language = "english" OR T2.isofficial = 1 AND T2.language = "dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.isofficial = 1 AND T1.name = "English" OR T1.name = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING count(*) = 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Region = "Republic" GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "english" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.language = "english" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia" ORDER BY T2.surfacearea DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Asia" ORDER BY T1.population DESC LIMIT 1
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 'No'
SELECT avg(T1.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 0
SELECT sum(population) FROM city WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE language != "english")
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IndepYear < 1930
SELECT count(DISTINCT T1.Language) FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IndepYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT country FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'Africa' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'African' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' AND population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = 'Asia' AND T2.population > (SELECT min(population) FROM country WHERE continent = 'Africa')
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT state FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT T1.nationcode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "english"
SELECT T1.nationcode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language != "english"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "english" EXCEPT SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language != "english" AND T1.GovernmentForm != "Republic"
SELECT T1.abbr FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode JOIN country AS T3 ON T1.code = T3.code WHERE T2.Language != "english" AND T3.GovernmentForm != "Republic"
SELECT name FROM city WHERE countrycode = (SELECT countrycode FROM country WHERE continent = "Europe" AND isofficial != 1)
SELECT name FROM city WHERE countrycode = "US" AND (countrylanguage = "English" OR isofficial = "false")
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name = 'China' AND T2.Language = 'Chinese'
SELECT DISTINCT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode WHERE T2.isofficial = 1 AND T1.countrycode = "asia" AND T2.language = "Chinese"
SELECT name , founded_year , territory FROM country ORDER BY population ASC LIMIT 1
SELECT name , independyear , continent FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) , T1.name , T1.headofstate FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.name ORDER BY T2.SurfaceArea DESC LIMIT 1
SELECT T1.name , T1.population , T1.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.headofstate ORDER BY sum(T2.population) DESC LIMIT 1
SELECT T1.nation , count(*) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code GROUP BY T1.nation HAVING count(*) >= 3
SELECT T1.name , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING count(*) > 2
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT T1.name , count(*) FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode GROUP BY T1.name HAVING avg(T1.lifeexpectancy) > 72
SELECT DISTINCT governmentform , sum(population) FROM country WHERE LifeExpectancy > 72 GROUP BY governmentform
SELECT avg(lifeexpectancy) , count(*) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT continent , sum(population) , avg(lifeexpectancy) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT T1.name , T1.region FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode ORDER BY T2.population DESC LIMIT 5
SELECT name , country FROM country ORDER BY population DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode ORDER BY T2.Population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT T1.Name FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = "Europe" AND T2.Population = 80000
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code = T2.countrycode WHERE T1.continent = "Europe" AND T2.population = 80000
SELECT sum(T1.population) , avg(T2.district) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = "North America" AND T2.SurfaceArea > 3000 GROUP BY T2.continent
SELECT sum(population) , avg(T1.Territory) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T1.Territory > 3000
SELECT name FROM city WHERE population BETWEEN 1600000 AND 900000
SELECT name FROM city WHERE population BETWEEN 1600000 AND 900000
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language ORDER BY count(*) DESC LIMIT 1
SELECT T1.Language , T2.District FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode = T2.CountryCode GROUP BY T2.District ORDER BY count(*) DESC LIMIT 1
SELECT T1.nationcode , T2.language , count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T1.nationcode ORDER BY count(*) DESC
SELECT sum(T1.population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name = 'Spain'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "Spanish"
SELECT T1.CountryCode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.Language = "Spanish" GROUP BY T1.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.countrycode FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) , min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT name FROM conductor ORDER BY YEAR_OF_WORK DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY YEAR_OF_WORK DESC LIMIT 1
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name , T2.orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.conductor_id HAVING count(*) > 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT T1.name FROM conductor AS T1 JOIN orchestra AS T2 ON T1.conductor_id = T2.conductor_id WHERE T2.year_of_founded > 2008
SELECT Record_Company , COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) , T1.Record_Company FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Record_Company
SELECT TYPE FROM performance GROUP BY TYPE ORDER BY count(TYPE) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*)
SELECT record_company FROM performance GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded < 2003 INTERSECT SELECT T1.Record_Company FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Year_of_Founded > 2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded < 2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded > 2003
SELECT count(*) FROM orchestra WHERE Major_record_format = "CD" OR Major_record_format = "DVD"
SELECT count(*) FROM orchestra WHERE Record_Company = "CD" OR Record_Company = "DVD"
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.orchestra_id HAVING count(*) > 1
SELECT T1.year_of_founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.orchestra_id = T2.orchestra_id GROUP BY T1.year_of_founded HAVING count(*) > 1
SELECT count(*) FROM Highschooler
SELECT count(*) FROM highschooler
SELECT name , grade FROM highschooler
SELECT name , grade FROM Highschooler
SELECT DISTINCT grade FROM highschooler
SELECT DISTINCT grade FROM highschooler
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM Highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT count(*) , grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM Friend GROUP BY student_id
SELECT count(*) , T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1001
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1000
SELECT count(*) FROM Friend WHERE student_id = 42510
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.name = 'Kyle'
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT id FROM Highschooler EXCEPT SELECT student_id FROM Friend
SELECT name FROM Highschooler EXCEPT SELECT T1.name FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.friend_id
SELECT name FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM likes WHERE liked_id NOT IN (SELECT student_id FROM friends)
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friends
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id JOIN likes AS T3 ON T1.id = T3.student_id GROUP BY T1.name HAVING count(*) > 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id JOIN friend AS T3 ON T3.student_id = T2.student_id WHERE T3.friend_id != "null"
SELECT count(*) , student_id FROM Likes GROUP BY student_id
SELECT count(*) , student_id FROM Likes GROUP BY student_id
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name , count(*) FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id = T2.student_id GROUP BY T1.name HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T2.student_id HAVING count(*) >= 2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T1.grade > 5 GROUP BY T1.name HAVING count(*) >= 2
SELECT count(DISTINCT T1.name) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.friend_id WHERE T2.friend_id = 14
SELECT count(*) FROM Highschooler WHERE name = 'Kyle'
SELECT avg(grade) FROM Highschooler WHERE id IN (SELECT student_id FROM Friend)
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT grade FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM Professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinarian'
SELECT state FROM Professionals WHERE role_code = 'guardian' INTERSECT SELECT state FROM Professionals WHERE role_code = 'veterinarian'
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "medical"
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "health care"
SELECT T1.professional_id , T1.first_name , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Owners AS T3 ON T1.owner_id = T3.owner_id WHERE T3.state = "Indiana" OR T2.treatment_type_code = "medical" GROUP BY T1.professional_id HAVING count(*) > 2
SELECT professional_id , last_name , home_phone , cell_number FROM Professionals WHERE state = "Indiana" UNION SELECT professional_id , last_name , home_phone , cell_number FROM Professionals WHERE count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T1.owner_id = T3.owner_id WHERE T2.cost_of_treatment > 1000 AND T3.first_name LIKE "guardian%"
SELECT first_name FROM Professionals WHERE role_code = "Veterinarian" OR role_code = "Guardian" EXCEPT SELECT first_name FROM Dogs
SELECT first_name FROM Professionals WHERE role_code = 'veterinarian' OR role_code = 'guardian' EXCEPT SELECT first_name FROM Dogs
SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog" EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id JOIN dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "dog"
SELECT professional_id , role_code , email_address FROM Professionals EXCEPT SELECT T1.professional_id , T1.role_code , T1.email_address FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id JOIN Dogs AS T3 ON T2.dog_id = T3.dog_id WHERE T3.gender = "M"
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id , T1.role_code , T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name , T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T1.first_name , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT T1.owner_id , T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id JOIN Treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.cost_of_treatment = (SELECT max(cost_of_treatment) FROM Treatments)
SELECT charge_type FROM charges GROUP BY charge_type ORDER BY sum(charge_amount) ASC LIMIT 1
SELECT T1.size_description FROM sizes AS T1 JOIN dogs AS T2 ON T1.size_code = T2.size_code JOIN treatments AS T3 ON T2.dog_id = T3.dog_id JOIN charges AS T4 ON T3.cost_of_treatment = T4.charge_amount GROUP BY T1.size_description ORDER BY sum(T4.charge_amount) ASC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id WHERE T3.treatment_type_code = "Pay" GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id , T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(DISTINCT T2.treatment_type_code) >= 2
SELECT professional_id , cell_number FROM professionals GROUP BY cell_number HAVING count(*) >= 2
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.date_of_treatment , T2.first_name , T2.last_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id = T2.professional_id
SELECT charge_amount , charge_type FROM charges
SELECT charge_type , treatment_type_description FROM Treatment_Types
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.owner_id = T2.size_code WHERE T1.owner_id = Dogs.owner_id
SELECT T1.first_name , T1.last_name , T2.size_description FROM Owners AS T1 JOIN Sizes AS T2 ON T1.owner_id = T2.size_code
SELECT T1.first_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT T1.breed_name , T2.date_of_treatment FROM Breeds AS T1 JOIN Treatments AS T2 ON T1.breed_code = T2.dog_id ORDER BY T2.date_of_treatment LIMIT 1
SELECT T1.name , T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.city = "Virginia"
SELECT T1.first_name , T1.last_name , T2.name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "VA"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id WHERE T2.treatment_type_code = "medical care"
SELECT T1.date_arrived , T1.date_departed FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id JOIN Treatment_Types AS T3 ON T2.treatment_type_code = T3.treatment_type_code WHERE T3.treatment_type_description = "Health Care"
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT date_arrived , date_departed FROM Dogs
SELECT date_arrived , date_departed FROM Dogs
SELECT count(*) FROM treatments WHERE treatment_type_code = "health care"
SELECT count(*) FROM treatments WHERE treatment_type_code = "health care"
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.treatment_type_code = "health care" AND T2.dog_id = "puppy"
SELECT count(*) FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE gender = 'female' AND name LIKE "puppy%" )
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT role_code , street , city , state FROM Professionals WHERE city LIKE '%West%'
SELECT first_name , last_name , email_address FROM Owners WHERE state LIKE '%North%'
SELECT first_name , last_name , email_address FROM Owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT charge_amount FROM charges ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments WHERE dog_id IN (SELECT dog_id FROM treatments WHERE treatment_type_code = "health-care")
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments))
SELECT count(*) FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE dog_id = 'puppy')
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id = 'puppy')
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE gender = "P"
SELECT avg(age) FROM Dogs WHERE gender = "P"
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT age FROM Dogs ORDER BY date_of_birth DESC LIMIT 1
SELECT charge_type , charge_amount FROM charges
SELECT charge_type , charge_amount FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address , home_phone , cell_number FROM Professionals
SELECT email_address , home_phone , cell_number FROM Professionals
SELECT breed_name , size_description FROM Dogs
SELECT DISTINCT T1.breed_name , T2.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code = T2.breed_code JOIN sizes AS T3 ON T2.size_code = T3.size_code WHERE T2.gender = "P"
SELECT T1.first_name , T1.last_name , T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id
SELECT T1.first_name , T2.treatment_type_description FROM Professionals AS T1 JOIN Treatment_Types AS T2 ON T1.professional_id = T2.treatment_type_code
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year , Citizenship FROM singer
SELECT Birth_Year , Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != "French"
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT count(*) , country FROM singer GROUP BY country
SELECT T1.Country FROM country AS T1 JOIN singer AS T2 ON T1.Country = T2.Singer_ID GROUP BY T1.Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship , max(net_workillions) FROM singer GROUP BY citizenship
SELECT country , max(net_work) FROM singer GROUP BY country
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT T1.Title , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T2.Name , SUM(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT sum(T1.Sales) , T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Country FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Country FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code = "AirCon"
SELECT T2.property_type_description FROM properties AS T1 JOIN ref_property_types AS T2 ON T1.property_type_code = T2.property_type_code
SELECT property_name FROM properties WHERE property_type_code = 'HSE' OR room_count > 1
