SELECT name , country , age FROM singer ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT avg(age) , min(age) , max(age) FROM singer WHERE country = 'France'
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT song_name , song_release_year FROM singer ORDER BY age LIMIT 1
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT DISTINCT country FROM singer WHERE age > 20
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT Country , COUNT(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT location , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT count(*) FROM concert WHERE YEAR = 2014 OR YEAR = 2015
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE YEAR >= 2014 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name , t1.capacity FROM stadium AS t1 JOIN concert AS t2 ON t1.stadium_id = t2.stadium_id WHERE t2.year > 2013 GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT country FROM singer WHERE age > 40 INTERSECT SELECT country FROM singer WHERE age < 30
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE YEAR = 2014)
SELECT T2.concert_name , T2.theme , count(*) FROM singer_in_concert AS T1 JOIN concert AS T2 ON T1.concert_ID = T2.concert_ID GROUP BY T1.concert_ID
SELECT T3.name , count(*) FROM singer_in_concert AS T1 JOIN singer AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T1.concert_id = T3.concert_id GROUP BY T2.name
SELECT T3.name , count(*) FROM singer AS T1 JOIN singer_in_concert AS T2 ON T1.singer_id = T2.singer_id JOIN concert AS T3 ON T2.concert_ID = T3.concert_ID GROUP BY T3.name
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT T3.name FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.concert_id = T2.concert_id JOIN singer AS T3 ON T2.singer_id = T3.singer_id WHERE T1.year = 2014
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT name , country FROM singer WHERE song_name LIKE "%Hey%"
SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2014 INTERSECT SELECT T1.name , T1.location FROM stadium AS T1 JOIN concert AS T2 ON T1.stadium_id = T2.stadium_id WHERE YEAR = 2015
SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014 INTERSECT SELECT T2.name , T2.location FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2015
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE t2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE t2.capacity = (SELECT max(capacity) FROM stadium)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM Pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM Pets WHERE pet_age = (SELECT min(pet_age) FROM Pets)
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_pet AS T2 ON T1.StuID = T2.StuID WHERE T1.sex = 'F' AND T2.pettype = "dog"
SELECT count(*) FROM Has_Pet AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.sex = 'F'
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.stuid = T2.StuID WHERE T2.pettype = "Cat" OR T2.pettype = "Dog"
SELECT DISTINCT T1.fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" OR T3.pettype = "Dog"
SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Cat" INTERSECT SELECT T1.Fname , T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pettype = "Dog"
SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Cat" INTERSECT SELECT DISTINCT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "Dog"
SELECT major , age FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet AS T1 JOIN Pets AS T2 ON T1.pet_id = T2.pet_id WHERE T2.pet_age > 10)
SELECT T1.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 8 EXCEPT SELECT T1.Major , T1.age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.pet_age = 2
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE PetID = "Cat"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_Pet WHERE pet_type = "Cat"
SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "dog" EXCEPT SELECT T1.Fname , T1.Age FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.PetType = "cat"
SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog") EXCEPT SELECT T1.Fname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat")
SELECT pettype , weight FROM Pets ORDER BY pet_age DESC LIMIT 1
SELECT pet_type , weight FROM Pets ORDER BY pet_age LIMIT 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT petid , weight FROM Pets WHERE petage > 1
SELECT T1.Lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT T1.lname FROM Student AS T1 JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID JOIN Pets AS T3 ON T2.PetID = T3.PetID WHERE T3.pet_age = 3
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT avg(age) FROM student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT T1.Maker , T1.FullName , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Maker , T1.id , count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.id
SELECT T1.Model FROM car_models AS T1 JOIN car_names AS T2 ON T1.Model = T2.Model WHERE T1.MPG < (SELECT avg(MPG) FROM cars_data)
SELECT t2.Model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.Id = t2.MakeId WHERE t1.Weight < (SELECT avg(Weight) FROM cars_data)
SELECT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.model WHERE T2.year = 1970
SELECT DISTINCT T1.Maker FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Model WHERE YEAR = 1970
SELECT T1.Maker , T2.year FROM car_makers AS T1 JOIN car_names AS T2 ON T1.id = T2.makeid WHERE T2.year = (SELECT min(YEAR) FROM cars_data)
SELECT T1.Maker , T2.Year FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.id = T2.Model WHERE T2.year = (SELECT min(YEAR) FROM cars_data)
SELECT DISTINCT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model WHERE T2.year > 1980
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Year > 1980
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country
SELECT T1.FullName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = (SELECT make FROM car_makers GROUP BY make ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) , T1.Maker FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker GROUP BY T1.Maker
SELECT count(*) , T1.Maker , T1.FullName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Maker
SELECT accelerate FROM cars_data WHERE make = 'Amharthornet Sportabout'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryname WHERE continent = 'france'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryname WHERE T2.continent = "France"
SELECT count(*) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.maker JOIN car_names AS T3 ON T2.model = T3.model WHERE T3.countryname = 'USA'
SELECT count(*) FROM car_makers AS T1 JOIN countries AS T2 ON T1.country = T2.countryid WHERE T2.countryname = "United States"
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(weight) FROM cars_data WHERE cylinders = 4 AND YEAR = 1974
SELECT T1.FullName , T1.Country FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.Country HAVING COUNT(*) >= 1
SELECT T3.CountryName , T1.Id FROM car_makers AS T1 JOIN cars_data AS T2 JOIN countries AS T3 ON T1.Id = T2.Id AND T2.Model = T3.Model GROUP BY T1.Id HAVING count(*) >= 1
SELECT id FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
{"sql": "SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = \"Toyota\" AND T2.Maker = \"Ford\" AND T2.Maker = \"BMW\" AND T2.Maker = \"Chevrolet\" AND T2.Maker = \"Honda\" AND T2.Maker = \"Tesla\" AND T2.Maker = \"Nissan\" AND T2.Maker = \"Maruti Suzuki\" AND T2.Maker = \"Mersedu\" AND T2.Maker = \"Peugeot\" AND T2.Maker = \"Porsche\" AND T2.Maker = \"VW\" AND T2.Maker = \"VW\" AND T2.Maker = \"Volkswagen\" AND T2.Maker = \"BMW\" AND T2.Maker = \"Chrysler\" AND T2.Maker = \"Toyota\" AND T2.Maker = \"Ford\" AND T2.Maker = \"Nissan\" AND T2.Maker = \"Maruti Suzuki\" AND T2.Maker = \"Mersedu\" AND T2.Maker = \"Peugeot\" AND T2.Maker = \"Porsche\" AND T2.Maker = \"VW\" AND T2.Maker = \"Volkswagen\" AND T2.Maker = \"Chevrolet\" AND T2.Maker = \"Honda\" AND T2.Maker = \"Tesla\" AND T2.Maker = \"Nissan\" AND T2.Maker = \"Maruti Suzuki\" AND T2.Maker = \"Mersedu\" AND T2.Maker = \"Peugeot\" AND T2.Maker = \"Porsche\" AND T2.Maker = \"VW\" AND T2.Maker = \"Volkswagen\" AND T2.Maker = \"Chevrolet\" AND T2.Maker = \"Honda\" AND T2.Maker = \"Tesla\" AND T2.Maker = \"Nissan\" AND T2.Maker = \"Maruti Suzuki\" AND T2.Maker = \"Mersedu\" AND T2.Maker = \"Peugeot\" AND T2.Maker = \"Porsche\" AND T2.Maker = \"VW\" AND T2.Maker = \"Volkswagen\" AND T2.Maker = \"Chevrolet\" AND T2.Maker = \"Honda\" AND T2.Maker = \"Tesla\" AND T2.Maker = \"Nissan\" AND T2.Maker = \"Maruti Suzuki\" AND T2.Maker = \"Mersedu\" AND T2.Maker = \"Peugeot\" AND T2.Maker = \"Porsche\" AND T2.Maker = \"VW\" AND T2.Maker = \"Volkswagen\" AND T2.Maker = \"Chevrolet\" AND T2.Maker = \"Honda\" AND T2.Maker = \"Tesla\" AND T2.Maker = \"Nissan\" AND T2.Maker = \"Maruti Suzuki\" AND T2
SELECT T1.CountryName FROM countries AS T1 JOIN car_makers AS T2 ON T1.CountryId = T2.Country WHERE T2.Maker = "Toyota" GROUP BY T2.Country HAVING COUNT(*) >= 3
SELECT t1.Model FROM cars_data AS t1 JOIN car_names AS t2 ON t1.Id = t2.MakeId ORDER BY t1.MPG LIMIT 1
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId ORDER BY T1.MPG LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Horsepower) FROM cars_data WHERE YEAR < 1980
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT avg(Edispl) FROM cars_data WHERE Make = "Volvo"
SELECT t1.Make FROM car_makers AS t1 JOIN car_names AS t2 ON t1.Model = t2.Model GROUP BY t1.Make ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM cars_data WHERE YEAR = 1980
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT count(*) FROM car_makers WHERE country = "America"
SELECT T1.FullName , T1.id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.id = T2.Maker GROUP BY T1.id HAVING COUNT(*) > 3
SELECT T1.Maker , T1.Id FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker GROUP BY T1.Id HAVING COUNT(*) > 3
SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "General Motors" UNION SELECT T1.Model FROM car_names AS T1 JOIN model_list AS T2 ON T1.Model = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.Maker = "General Motors" OR T2.Weight > 3500
SELECT DISTINCT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.MakeId = T2.Model WHERE T1.weight > 3500 JOIN car_makers AS T3 ON T3.id = T2.make WHERE T3.fullName = "General Motors"
SELECT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT DISTINCT YEAR FROM cars_data WHERE weight BETWEEN 3000 AND 4000
SELECT max(Cylinders) FROM cars_data WHERE accelerate = (SELECT min(Accelerate) FROM cars_data)
SELECT Cylinders FROM cars_data WHERE Accelerate = (SELECT min(Accelerate) FROM cars_data) AND make = 'Volvo'
SELECT count(DISTINCT country) FROM car_makers GROUP BY country HAVING count(*) > 2
SELECT count(*) FROM car_makers WHERE make > 2
SELECT T2.Model FROM cars_data AS T1 JOIN car_names AS T2 ON T1.Id = T2.MakeId WHERE T1.Cylinders = 4 GROUP BY T2.Model ORDER BY AVG(Horsepower) DESC LIMIT 1
SELECT max(MPG) FROM cars_data WHERE cylinders = 8 OR YEAR < 1980
SELECT T1.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model WHERE T1.Weight > 3500 EXCEPT SELECT T2.Model FROM cars_data AS T1 JOIN model_list AS T2 ON T1.Id = T2.Model JOIN car_makers AS T3 ON T2.Maker = T3.Id WHERE T3.FullName = "Ford Motor Company"
SELECT DISTINCT model FROM cars_data WHERE weight < 3500 EXCEPT SELECT DISTINCT T2.model FROM cars_data AS T1 JOIN car_makers AS T2 ON T1.id = T2.MakeId WHERE T2.fullname = "Ford Motor Company"
SELECT T1.Id , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryH > 3 UNION SELECT T3.Id , T2.CountryName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.MakeID JOIN car_names AS T3 ON T2.Model = T3.Model WHERE T3.Make = "Fiat"
SELECT T1.CountryId , T2.CountryName FROM car_makers AS T1 JOIN countries AS T2 ON T1.Country = T2.CountryId GROUP BY T1.CountryID HAVING count(*) > 3 UNION SELECT CountryId , CountryName FROM cars_data AS T3 JOIN car_names AS T4 ON T3.MakeId = T4.ModelId JOIN model_list AS T5 ON T4.Model = T5.Model WHERE T5.Model = " Fiat "
SELECT country FROM airlines WHERE abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline , Abbreviation FROM airlines WHERE Country = "USA"
SELECT airportcode , airportname FROM airports WHERE city = 'Anthony'
SELECT airportcode , airportname FROM airports WHERE airportname = 'Anthony'
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT * FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT count(*) FROM airlines WHERE Country = 'USA'
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.SourceAirport WHERE T1.Country = "AK"
SELECT T1.AirportName FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.Country = "AK"
SELECT airportname FROM airports WHERE city = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.sourceairport = T2.airportcode WHERE T2.AirportCode = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = 'APG'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.destairport = T2.airportcode WHERE T2.airportname = "ATO"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen" INTERSECT SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Ashley"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.airportcode = T2.sourceairport WHERE T1.city = "Aberdeen" AND T2.destairport = "Ashley"
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.Abreviation = 'JetBlue Airways'
SELECT count(*) FROM flights AS T1 JOIN airlines AS T2 ON T1.airline = T2.airline WHERE T2.Abbreviation = "Jetblue Airways"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abreviation = 'United Airlines' AND T2.DestAirport = 'ASY'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DESTAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.UID WHERE T3.Abbreviation = "United" AND T2.City = "ASY"
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abreviation = 'United Airlines' AND T2.sourceairport = 'AHD'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline WHERE T1.Abn = 'United Airlines' AND T2.SourceAirport = 'AHD'
SELECT count(*) FROM airlines AS T1 JOIN flights AS T2 ON T1.uid = T2.airline JOIN airports AS T3 ON T3.airportcode = T2.sourceairport WHERE T3.airportname = 'Aberdeen' AND T1.airline = 'United Airlines'
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DESTAirport = T2.AirportCode JOIN airlines AS T3 ON T1.Airline = T3.UID WHERE T3.Abbreviation = "United" AND T2.AirportName = "Aberdeen"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.SourceAirport = 'AHD'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.FlightNo = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "AHD"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.SourceAirport WHERE T1.Abbreviation = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.SourceAirport WHERE T1.Abbreviation = "CVO"
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "APG" INTERSECT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.Airline WHERE T2.DestAirport = "CVO"
SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.SourceAirport WHERE T1.Abbreviation = 'CVO' EXCEPT SELECT DISTINCT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.Uid = T2.SourceAirport WHERE T1.Abbreviation = 'APG'
SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "CVO" EXCEPT SELECT T1.Airline FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T2.DestAirport = "APG"
{"sql": "SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n SELECT T1.FLIGHTNO FROM flights AS T1 JOIN ( \n )) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) } ) } ) } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } } }
SELECT T1.Airline , T1.FLIGHTNO FROM airlines AS T1 JOIN flights AS T2 ON T1.UID = T2.Airline WHERE T1.Airline = "United Airlines"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "APG"
SELECT FlightNo FROM flights WHERE DestAirport = "APG"
SELECT FlightNo FROM flights WHERE DESTAirport = "APG"
SELECT FlightNo FROM flights WHERE SourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE sourceAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DestAirport = "Aberdeen"
SELECT FlightNo FROM flights WHERE DESTAirport = "Aberdeen"
SELECT count(*) FROM airports AS T1 JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T1.City = "Aberdeen" OR T1.City = "Abilene"
SELECT count(*) FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T2.AirportName = "Aberdeen" OR T2.AirportName = "Abilene"
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights) AND NOT IN (SELECT sourceairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights) - (SELECT sourceairport FROM flights)
SELECT name FROM employee ORDER BY age DESC
SELECT name FROM employee ORDER BY age DESC
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT LOCATION , count(*) FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name , LOCATION , district FROM shop ORDER BY Number_products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id WHERE T2.bonus = (SELECT max(bonus) FROM evaluation)
SELECT T1.name FROM employee AS T1 JOIN evaluation AS T2 ON T1.employee_id = T2.employee_id ORDER BY bonus DESC LIMIT 1
SELECT T3.name FROM hiring AS T1 JOIN shop AS T2 ON T1.shop_id = T2.shop_id JOIN employee AS T3 ON T1.employee_id = T3.employee_id GROUP BY T2.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM shop AS t1 JOIN hiring AS t2 ON t1.shop_id = t2.shop_id GROUP BY t1.shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM hiring)
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT district FROM shop WHERE number_products < 3000 INTERSECT SELECT district FROM shop WHERE number_products > 10000
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Name FROM teacher WHERE Age = 32 OR Age = 33
SELECT Hometown FROM teacher ORDER BY Age LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT T2.Hometown , COUNT(*) FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown
SELECT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.Hometown FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T3.Course_ID = T1.Course_ID WHERE T3.Course = 'Math'
SELECT T2.Name FROM course_arrange AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T1.Course_ID = T3.Course_ID WHERE T3.Course = "Math"
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE LEVEL_of_membership > 4 ORDER BY LEVEL_of_membership DESC
SELECT avg(age) FROM visitor WHERE LEVEL_of_membership != 'Lv 4'
SELECT museum_id , name FROM museum ORDER BY Num_of_Staff DESC LIMIT 1
SELECT avg(num_of_staff) FROM museum WHERE open_year < 2009
SELECT open_year , num_of_staff FROM museum WHERE name = 'Plaza Museum'
SELECT name FROM museum WHERE num_of_staff > (SELECT min(num_of_staff) FROM museum WHERE open_year > 2010)
SELECT T2.id , T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_id = T2.id JOIN museum AS T3 ON T1.museum_id = T3.museum_id GROUP BY T2.id HAVING count(*) > 1
SELECT T2.museum_id , T2.name , T2.membership_level FROM visitor AS T1 JOIN visit AS T2 ON T1.id = T2.visitor_ID GROUP BY T2.museum_id ORDER BY sum(T2.total_spent) DESC LIMIT 1
SELECT T2.Museum_ID , T2.name FROM visitor AS T1 JOIN museum AS T2 ON T1.id = T2.num_of_staff WHERE T1.level_of_membership = "Public" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM museum EXCEPT SELECT T2.name FROM visitor AS T1 JOIN museum AS T2 ON T1.museum_id = T2.museum_id
SELECT T2.name , T2.age FROM visit AS T1 JOIN visitor AS T2 ON T1.visitor_ID = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.Total_spent) FROM visitor AS T1 JOIN visit AS T2 ON T1.ID = T2.visitor_ID WHERE T1.level_of_membership = 'Lv 1'
SELECT first_name , birth_date FROM players WHERE country_code = "USA"
SELECT first_name , birth_date FROM players WHERE country_code = 'USA'
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 INTERSECT SELECT T1.winner_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2016
SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2013 INTERSECT SELECT T1.first_name , T1.last_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 2013 OR YEAR = 2016
SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.country_code , T2.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "WTA Championships" INTERSECT SELECT T1.first_name , T1.country_code FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T2.tournament_name = "Australian Open"
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY birth_date
SELECT first_name , last_name FROM players WHERE hand = 'left' ORDER BY age
SELECT T1.first_name , T1.last_name , T2.winner_rank FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id GROUP BY T2.winner_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name , T1.winner_rank_points FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id GROUP BY T1.winner_id ORDER BY T1.winner_rank_points DESC LIMIT 1
SELECT t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id WHERE t2.tourney_name = "Australian Open" ORDER BY t2.winner_rank DESC LIMIT 1
SELECT t1.winner_name FROM players AS t1 JOIN matches AS t2 ON t1.player_id = t2.winner_id WHERE t2.tourney_name = "Australian Open" ORDER BY t2.winner_rank_points DESC LIMIT 1
SELECT loser_name , winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT T2.winner_name , T2.loser_name FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY minutes LIMIT 1
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code , count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY winner_age LIMIT 3
SELECT T1.winner_name , T1.winner_rank FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id ORDER BY winner_age ASC LIMIT 3
SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "left" INTERSECT SELECT count(DISTINCT T1.winner_name) FROM matches AS T1 JOIN players AS T2 ON T1.winner_id = T2.player_id WHERE T2.hand = "right"
SELECT count(*) FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.winner_id WHERE T1.hand = "left" AND T2.tourney_name = "WTA Championships";
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT T1.id , T1.name FROM battle AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id HAVING sum(T2.killed) > 10
SELECT T1.id , T1.name FROM ship AS T1 JOIN death AS T2 ON T1.id = T2.caused_by_ship_id GROUP BY T1.id ORDER BY sum(T2.injured) DESC LIMIT 1
SELECT T1.name , T1.date FROM battle AS T1 JOIN ship AS T2 ON T1.id = T2.lost_in_battle WHERE T2.name = 'HMS Atalanta' AND T1.result = 'lost' AND T1.latin_commander = 'Lettice'
SELECT name , result , bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE LOCATION = 'English Channel')
SELECT DISTINCT course_description FROM COURSES WHERE course_name = 'Math'
SELECT DISTINCT course_description FROM COURSES WHERE course_name = "Math"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE line_1 = "Port Chelsea"
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id JOIN degree_programs AS T3 ON T3.degree_program_id = T1.student_id
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") EXCEPT SELECT T2.last_name FROM students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT T2.cell_mobile_number FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T1.city = "Timmothy"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward";
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name , middle_name , last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT T1.first_name , T1.middle_name , T1.last_name FROM Students AS T1 JOIN Transcripts AS T2 ON T1.student_id = T2.student_enrolment_id WHERE T2.transcript_date = (SELECT max(transcript_date) FROM Transcripts)
SELECT T1.department_id , T1.section_name FROM student_enrolment AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.section_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Master' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id = T2.semester_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T3.first_name = 'Bachelor'
SELECT T2.semester_id FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T1.degree_summary_name = 'Masters' INTERSECT SELECT T2.semester_id FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id = T2.degree_program_id JOIN students AS T3 ON T2.student_id = T3.student_id WHERE T1.degree_summary_name = 'Bachelors'
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id JOIN courses AS T3 ON T2.state_province_county = T3.state_province_county WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") AND cell_mobile_number = "09700166582"
SELECT Title FROM cartoon ORDER BY Title ASC
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT directed_by FROM cartoon WHERE directed_by = "Ben Jones"
SELECT Title FROM cartoon WHERE directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon AS T1 JOIN tv_series AS T2 ON T1.channel = T2.channel WHERE T1.directed_by = "Joseph Kuh"
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT title , directed_by FROM cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Title FROM cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti"
SELECT Country , count(*) FROM tv_channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country , COUNT(*) FROM tv_channel GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Content FROM TV_channel WHERE Content = "Sky Radio"
SELECT Content FROM TV_channel WHERE Content = "Sky Radio"
SELECT Package_Option FROM TV_channel WHERE Content = "Sky Radio"
SELECT count(*) FROM TV_channel WHERE language = 'English'
SELECT count(*) FROM tv_channel WHERE language = "English"
SELECT series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T1.title = "The Rise of the Blue Beetle"
SELECT series_name FROM TV_channel WHERE content = "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel WHERE T1.Content = "Sky Radio"
SELECT title FROM cartoon WHERE channel = (SELECT id FROM tv_channel WHERE content = 'Sky Radio' )
SELECT Original_air_date FROM Cartoon WHERE Series_name = "A Love of a Lifetime"
SELECT Original_air_date FROM Cartoon WHERE title = "A Love of a Lifetime"
SELECT T1.Weekly_Rank FROM TV_series AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series ORDER BY Weekly_Rank DESC LIMIT 1 WHERE Series_Name = "A Love of a Lifetime"
SELECT series_name FROM TV_channel WHERE content = "A Love of a Lifetime"
SELECT series_name FROM tv_channel WHERE Content = "A Love of a Lifetime"
SELECT T1.episode FROM TV_series AS T1 JOIN tv_channel AS T2 ON T1.channel = T2.id WHERE T2.content = "Sky Radio"
SELECT T2.episode FROM tv_channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.channel WHERE T1.series_name = "Sky Radio"
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by , count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code , Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code , Channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT Package_Option , series_name FROM TV_Channel WHERE Hight_definition_TV = "HD"
SELECT Package_Option , series_name FROM TV_channel WHERE Hight_definition_TV = 'HDTV'
SELECT t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.title = 'Todd Casey'
SELECT T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.channel JOIN TV_series AS T3 ON T3.id = T2.directed_by WHERE T2.directed_by = 'Todd Casey'
SELECT Country FROM TV_channel WHERE id NOT IN (SELECT Channel FROM cartoon)
SELECT country FROM tv_channel EXCEPT SELECT t2.channel FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.channel WHERE t1.directed_by = 'Todd Casey'
SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Ben Jones' INTERSECT SELECT t1.series_name , t1.country FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel WHERE t2.directed_by = 'Michael Chang'
SELECT t1.series_name , t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Ben Jones" INTERSECT SELECT t1.series_name , t1.country FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.channel = t2.id WHERE t1.directed_by = "Michael Chang"
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR , Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*) > 2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT Channel FROM TV_channel EXCEPT SELECT Channel FROM cartoon WHERE directed_by = "Ben Jones"
SELECT package_option FROM tv_channel EXCEPT SELECT t1.package_option FROM tv_channel AS t1 JOIN cartoon AS t2 ON t1.id = t2.channel
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon) AND directed_by = "Ben Jones"
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT T2.Money_Rank FROM people AS T1 JOIN poker_player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(T1.Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(Earnings) FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name FROM People WHERE Nationality != 'Russia'
SELECT Name FROM People WHERE Nationality != 'Russia'
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT count(*) FROM VOTES WHERE state = 'NY' OR state = 'CA'
SELECT T1.created , T1.state , T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling'
SELECT DISTINCT T1.state FROM AREA_CODE_STATE AS T1 JOIN VOTES AS T2 ON T1.state = T2.state WHERE T2.contestant_number IN (SELECT T1.contestant_number FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = "Tabatha Gehling" INTERSECT SELECT T1.contestant_number FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number = T2.contestant_number WHERE T1.contestant_name = "Kelly Clauss")
SELECT name FROM country WHERE independyear > 1950
SELECT name FROM country WHERE independeyear > 1950
SELECT count(DISTINCT region) FROM country
SELECT count(DISTINCT country) FROM city
SELECT sum(SurfaceArea) FROM country WHERE Continent = "Caribbean"
SELECT sum(t2.SurfaceArea) FROM country AS t1 JOIN city AS t2 ON t1.CountryCode = t2.CountryCode WHERE t1.Continent = "Caribbean"
SELECT t1.continent FROM country AS t1 JOIN country AS t2 ON t1.code = t2.code WHERE t1.name = "Anguilla"
SELECT continent FROM country WHERE name = "Anguilla"
SELECT T2.Region FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = "Kabul"
SELECT T1.Region FROM country AS T1 JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T2.Name = "Kabul"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.name = "Aruba" GROUP BY T2.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Aruba" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT population , lifeexpectancy FROM country WHERE name = 'Brazil'
SELECT Population , LifeExpectancy FROM country WHERE Continent = "Brazil"
SELECT T1.Region , T1.Population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Angola"
SELECT T1.Region , T1.Population FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT name FROM country WHERE continent = 'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(t1.population) , max(gnp) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.continent = 'Asia'
SELECT max(gnp) , count(*) FROM country WHERE continent = 'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE region = "Republic" AND countrycode IN ("CA","SG","JO","IN","MR")
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND GovernmentForm = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Asia' OR Continent = 'Europe'
SELECT sum(surfacearea) FROM country WHERE continent = 'Asia' OR region = 'Europe'
SELECT population FROM city WHERE district = 'Gelderland'
SELECT sum(Population) FROM city WHERE District = "Gelderland"
{"sql": "SELECT avg(gnp) , sum(population) FROM country WHERE continent = 'North America' OR continent = 'South America' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Africa' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = 'Europe' OR continent = 'Americas' OR continent = 'Africa' OR continent = 'Asia' OR continent = 'Oceania' OR continent = '
SELECT avg(gnp) , sum(population) FROM country WHERE region = 'US'
SELECT count(DISTINCT governmentform) FROM country WHERE continent = 'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = 'Africa'
SELECT sum(T1.Percentage) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.country = "Aruba"
SELECT count(DISTINCT T2.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T1.name = "Aruba"
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Name = "Afghanistan" AND T1.IsOfficial = 1
SELECT count(*) FROM countrylanguage WHERE country.code = "AF" AND isofficial = 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode GROUP BY T2.countrycode ORDER BY sum(T2.percentage) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Continent FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode GROUP BY T2.CountryCode ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T3.Code = T2.IsOfficial WHERE T2.Language = "English" INTERSECT SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode JOIN country AS T3 ON T3.Code = T2.IsOfficial WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.Language = "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T2.Language = "French"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "French" OR T2.Language = "English"
SELECT count(DISTINCT T1.Continent) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Chinese"
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t2.Language = "Chinese"
SELECT DISTINCT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "English" OR T1.Language = "Dutch"
SELECT T1.Region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Language = "Dutch" OR T1.Language = "English"
SELECT T1.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 OR T2.Language = "Dutch"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "Asia" GROUP BY T1.Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.Language HAVING COUNT(*) = 1
SELECT language FROM countrylanguage GROUP BY language HAVING count(*) = 1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode = T2.countrycode JOIN country AS T3 ON T2.isofficial = 1 WHERE T2.Language = "English" GROUP BY T1.name ORDER BY sum(T1.population) DESC LIMIT 1
SELECT t1.name FROM city AS t1 JOIN countrylanguage AS t2 ON t1.countrycode = t2.countrycode WHERE t2.Language = "English" GROUP BY t1.name ORDER BY sum(t2.percentage) DESC LIMIT 1
SELECT T1.name , T1.population , T1.lifeexpectancy FROM country AS T1 JOIN city AS T2 ON T1.code = T2.code WHERE T1.continent = 'Asia' ORDER BY T1.surfacearea DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 0
SELECT avg(lifeexpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 0
SELECT sum(t1.population) FROM city AS t1 JOIN country AS t2 ON t1.countrycode = t2.code WHERE t2.code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English")
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.Language = "English"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.HeadOfState = "Beatrix"
SELECT T1.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Capital = "Beatrix"
SELECT count(DISTINCT T1.Language) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.indepyear < 1930
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE independYear < 1930
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE region = 'Europe')
SELECT name FROM country WHERE surfacearea > (SELECT max(surfacearea) FROM country WHERE continent = 'Europe')
SELECT name FROM country WHERE continent = 'African' AND population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'African' INTERSECT SELECT name FROM country WHERE population < (SELECT min(population) FROM country WHERE continent = 'Asia')
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE continent = 'Africa'
SELECT name FROM country WHERE continent = 'Asia' INTERSECT SELECT name FROM country WHERE population > (SELECT max(population) FROM country WHERE region = 'Africa')
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE language = "English"
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE Language = "English"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE Language != "English")
SELECT countrycode FROM country EXCEPT SELECT countrycode FROM countrylanguage WHERE Language = "English"
SELECT countrycode FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "English" ) AND region != "Republic"
SELECT countrycode FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language = "english")
SELECT name FROM city WHERE countrycode = (SELECT code FROM countrylanguage WHERE language = 'English' )
{"sql": "SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code = T2.countrycode WHERE T2.IsOfficial = 1 AND T1.name IN (SELECT T1.name FROM
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code WHERE T2.continent = 'Asia' INTERSECT SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode = T2.code JOIN countrylanguage AS T3 ON T2.code = T3.countrycode WHERE T3.IsOfficial = 1 AND T3.Language = "Chinese"
SELECT name , independeyyear , surfacearea FROM country ORDER BY count(*) ASC LIMIT 1
SELECT name , indepyear , surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT t1.population , t1.name , t1.HeadOfState FROM city AS t1 JOIN country AS t2 ON t1.CountryCode = t2.Code ORDER BY t2.SurfaceArea DESC LIMIT 1
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT count(*) , district FROM city WHERE population > (SELECT avg(population) FROM city) GROUP BY district
SELECT Name , SurfaceArea FROM country ORDER BY SurfaceArea DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE Continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
SELECT name FROM country WHERE population > 80000 AND continent = 'Europe'
SELECT name FROM country WHERE population > 80000 AND continent = 'Europe'
SELECT sum(population) , avg(surfacearea) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(T1.Population) , avg(T1.Population) FROM city AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T2.Continent = "North America" AND T2.SurfaceArea > 3000000
SELECT name FROM city WHERE population BETWEEN 1600000 AND 900000 - 1
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T1.Language , T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode = T2.Code GROUP BY T1.CountryCode ORDER BY SUM(T1.Percentage) DESC LIMIT 1
SELECT countrycode , max(Percentage) FROM countrylanguage GROUP BY countrycode
SELECT sum(t1.percentage) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code = t2.countrycode WHERE t1.Language = "Spanish" ORDER BY t2.IsOfficial DESC LIMIT 1
SELECT count(DISTINCT countrycode) FROM countrylanguage WHERE Language = "Spanish"
SELECT T1.Code FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T2.Language = "Spanish" ORDER BY T2.Percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE Language = "Spanish" GROUP BY countrycode ORDER BY percentage DESC LIMIT 1
SELECT name FROM conductor ORDER BY age ASC
SELECT name FROM conductor ORDER BY age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT name FROM conductor WHERE nationality != 'USA'
SELECT record_company FROM orchestra ORDER BY YEAR_of_founded DESC
SELECT Record_Company FROM orchestra ORDER BY YEAR_of_Founded ASC
SELECT count(*) FROM orchestra WHERE orchestra = "CD" OR orchestra = "DVD"
SELECT grade FROM highschooler WHERE id = (SELECT id FROM highschooler WHERE name = 'Kyle')
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade = 10
SELECT name FROM highschooler WHERE grade = 10
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT id FROM highschooler WHERE name = 'Kyle'
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) FROM highschooler WHERE grade = 9 OR grade = 10
SELECT count(*) , year FROM highschooler GROUP BY year
SELECT count(*) , YEAR FROM highschooler GROUP BY YEAR
SELECT name FROM highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = 1005 AND T1.name = 'Kyle'
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id = T2.student_id WHERE T2.friend_id = (SELECT id FROM friend WHERE T3.name = 'Kyle')
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id = T2.id WHERE T2.name = 'Kyle'
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT avg(T1.grade) FROM Highschooler AS T1 JOIN FRIEND AS T2 ON T1.id = T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2
SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) > 2 INTERSECT SELECT T1.professional_id , T1.last_name , T1.cell_number FROM Professionals AS T1 JOIN treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T1.state = "Indiana"
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id = T2.dog_id JOIN owners AS T3 ON T2.owner_id = T3.owner_id WHERE T3.cost_of_treatment > 1000
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id , T2.first_name , T2.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.treatment_id , T1.professional_id , T2.first_name FROM treatments AS T1 JOIN Professionals AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.professional_id , T1.role_code , T1.first_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id GROUP BY T1.professional_id HAVING count(*) >= 2
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN charges AS T2 ON T1.treatment_type_code = T2.charge_type_code ORDER BY sum(T2.charge_amount) ASC LIMIT 1
SELECT T1.treatment_type_description FROM Treatment_Types AS T1 JOIN treatment_type_code AS T2 ON T1.treatment_type_code = T2 WHERE T2.cost_of_treatment = (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.owner_id , T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.weight) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id = T2.professional_id WHERE T2.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.first_name , T1.last_name FROM Professionals AS T1 JOIN treatment_types AS T2 ON T1.professional_id = T2.professional_id JOIN treatments AS T3 ON T3.professional_id = T2.professional_id WHERE T3.cost_of_treatment < (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.first_name , T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state = "Virginia";
SELECT T2.first_name , T1.name FROM Dogs AS T1 JOIN OWNERS AS T2 ON T1.owner_id = T2.owner_id WHERE T2.state = "Virginia"
SELECT T2.last_name FROM Dogs AS T1 JOIN Owners AS T2 ON T1.owner_id = T2.owner_id ORDER BY T1.age LIMIT 1
SELECT T1.last_name FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.age = (SELECT min(age) FROM Dogs)
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Professionals WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age < (SELECT avg(age) FROM dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT name , age , weight FROM Dogs WHERE abandoned_yn = 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer WHERE Birth_Year = 1948 OR Birth_Year = 1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship , COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(net_wealth_millions) , citizenship FROM singer GROUP BY citizenship
SELECT max(net_worth_millions) , country FROM singer GROUP BY country
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T2.Sales > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT property_name FROM properties WHERE property_type_code = 'house' OR room_count > 1
