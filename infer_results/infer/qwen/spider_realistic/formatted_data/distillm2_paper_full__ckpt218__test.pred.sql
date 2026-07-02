SELECT name, country, age FROM singer ORDER BY age DESC LIMIT 1 OFFSET 0
SELECT avg(Age) FROM singer WHERE Country = "France"
SELECT avg(Age) FROM singer WHERE Country = "France"
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT name, song_release_year FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT country FROM singer GROUP BY country
SELECT Country FROM singer GROUP BY Country
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT Location, Name FROM stadium WHERE Lowest BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT count(*) FROM concert WHERE year IN (2014, 2015)
SELECT count(*) FROM concert WHERE year IN (2014, 2015)
SELECT stadium.name, stadium.capacity FROM concert WHERE year > 2014 GROUP BY stadium_id ORDER BY stadium.capacity DESC LIMIT 1
SELECT Name, Capacity FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year > 2013 GROUP BY Stadium_ID ORDER BY Capacity DESC LIMIT 1)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age BETWEEN 30 AND 40
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = 2014)
SELECT name, theme FROM concert GROUP BY theme
SELECT name FROM singer GROUP BY name
SELECT name, count(*) FROM concert GROUP BY name
SELECT Name FROM singer WHERE singer_id IN (SELECT Singer_ID FROM singer_in_concert WHERE concert_id IN (SELECT concert_id FROM concert WHERE year = 2014))
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM singer_in_concert WHERE concert_id IN (SELECT concert_id FROM concert WHERE year = 2014))
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT name, country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name, location FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE year = 2014 AND stadium_id IN (SELECT stadium_id FROM concert WHERE year = 2015))
SELECT Name, Location FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year IN (2014, 2015))
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM stadium WHERE capacity BETWEEN lowest AND highest)
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM pets WHERE pet_age > 10
SELECT count(*) FROM pets WHERE pet_age > 10
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20)
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20)
SELECT count(*) FROM Has_Pet WHERE pet_type = 'dog' AND StuID IN (SELECT StuID FROM Student WHERE Sex = 'F')
SELECT count(*) FROM Has_Pet WHERE pet_type = "dog" AND StuID IN (SELECT StuID FROM Student WHERE Sex = "FEMALE")
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType IN ('cat', 'dog'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('cat', 'dog')))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "cat"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('cat', 'dog')))
SELECT major, age FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet WHERE petid IN (SELECT petid FROM pets))
SELECT major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet)
SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets)
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = "dog"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "dog") AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "cat")
SELECT pet_type, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT petid FROM pets WHERE pet_age > 1
SELECT petid FROM pets WHERE pet_age > 1
SELECT LName FROM Student WHERE Age = 3 AND StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat')
SELECT LName FROM Student WHERE Age = 3
SELECT avg(age) FROM student WHERE stuID NOT IN (SELECT stuID FROM has_pet)
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT maker, count(*) FROM model_list GROUP BY maker
SELECT maker, id FROM car_makers GROUP BY maker
SELECT model FROM model_list WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM model_list WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE year = 1970
SELECT maker FROM car_makers WHERE year = 1970
SELECT make FROM car_names WHERE make IN (SELECT make FROM cars_data WHERE year = (SELECT min(year) FROM cars_data))
SELECT maker FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries ORDER BY country.name ASC LIMIT 1))
SELECT DISTINCT maker FROM model_list WHERE year >= 1980
SELECT DISTINCT model FROM model_list WHERE year >= 1980
SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId ORDER BY count(*) DESC LIMIT 1)
SELECT CountryName FROM countries WHERE CountryId IN (SELECT Id FROM car_makers GROUP BY CountryId ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM car_makers GROUP BY Maker
SELECT count(*) FROM car_makers GROUP BY Maker
SELECT Horsepower FROM cars_data WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_makers WHERE Country IN (SELECT Country FROM countries WHERE CountryName = "Amsterdam")))
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country = "France")
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country = "France"))
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country = "United States"))
SELECT count(*) FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE CountryName = "United States")
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Year = 1974 AND Cylinders = 8
SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT name, countryid FROM countries WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid HAVING count(*) >= 1)
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3
SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) >= 3)
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT model FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE Year < 1980
SELECT avg(Horsepower) FROM cars_data WHERE Year < 1980
SELECT avg(Edispl) FROM cars_data WHERE MakeId IN (SELECT Id FROM car_names WHERE Make = "Volvo")
SELECT avg(edispl) FROM cars_data WHERE make = "Volvo"
SELECT make FROM car_names GROUP BY make ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Year = 1980
SELECT count(*) FROM cars_data WHERE year = 1980
{"sql": "SELECT count(*) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country
{"sql": "SELECT count(*) FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (
SELECT FullName FROM car_makers WHERE Id IN (SELECT Maker FROM model_list GROUP BY Maker HAVING COUNT(*) > 3)
SELECT makeid FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT model FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE maker = "General Motors" OR maker = "Heavy") AND weight > 3500
{"sql": "SELECT DISTINCT maker FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT country FROM car_makers WHERE country = (SELECT
SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT cylinders FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data) AND make = (SELECT makeid FROM car_names WHERE model = (SELECT modelid FROM car_names WHERE make = 'volvo'))
SELECT count(*) FROM car_makers GROUP BY Country HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY Country HAVING count(*) > 2
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year < 1980
SELECT Model FROM model_list WHERE Weight < 3500 AND Maker != 'Ford Motor Company'
SELECT DISTINCT maker FROM model_list WHERE model IN (SELECT model FROM car_names WHERE weight < 3500) AND maker != 'Ford'
SELECT countryid FROM countries WHERE countryname LIKE '%fiat%'
SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING COUNT(*) > 3) OR CountryId IN (SELECT CountryId FROM car_makers WHERE Make = "Fiats")
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT Airline, Abbreviation FROM airlines WHERE Country = "USA"
SELECT Airline, Abbreviation FROM airlines WHERE Country IN ('USA')
SELECT airportcode FROM airports WHERE city = "Anthony"
SELECT airportcode FROM airports WHERE airportname LIKE '%Anthony%'
SELECT Abbreviation FROM airlines WHERE Airline = "UAL"
SELECT Airline FROM airlines WHERE Airline = "UAL"
SELECT count(*) FROM airlines WHERE Country = "USA"
SELECT count(*) FROM airlines WHERE Country IN ('USA')
SELECT AirportName FROM airports WHERE Country = "AK"
SELECT airportname FROM airports WHERE country = 'AK'
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "APG")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "ATO")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "ATO")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Ashley")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") AND destairport IN (SELECT airportcode FROM airports WHERE city = "Ashley")
SELECT count(*) FROM flights WHERE airline IN ('JetBlue Airways')
SELECT count(*) FROM flights WHERE airline = 'Jetblue Airways'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND destairport = 'ASY'
SELECT count(*) FROM flights WHERE airline IN (SELECT airline FROM airlines WHERE airline = "United Airlines")
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND sourceairport = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND sourceairport = 'AHD'
SELECT count(*) FROM flights WHERE airline = 'United Airlines' AND destairport = 'Aberdeen'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") AND airline IN (SELECT uid FROM airlines WHERE abbreviation = "United Airlines")
SELECT Airline FROM flights WHERE SourceAirport = "AHD"
SELECT Airline FROM flights WHERE FlightNo IN (SELECT FlightNo FROM flights WHERE SourceAirport = "AHD")
SELECT Airline FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "AHD")
SELECT Airline FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "AHD")
{"sql": "SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE SourceAirport = (SELECT AirportCode FROM airports WHERE AirportCode = \"APG\") AND DestAirport = (SELECT AirportCode FROM airports WHERE AirportCode = \"CVO\")")}
{"sql": "SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT Airline FROM flights WHERE Airline IN (SELECT
SELECT Airline FROM flights WHERE SourceAirport IN ('CVO') AND DestAirport NOT IN ('APG')
SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "CVO") AND DestAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "APG")
SELECT FlightNo FROM flights WHERE Airline IN (SELECT uid FROM airlines WHERE Abbreviation = "United Airlines")
SELECT FlightNo FROM flights WHERE Airline IN (SELECT Airline FROM airlines WHERE Abbreviation = "U")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE Country = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE CountryAbbrev = "APG")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportname FROM airports WHERE city = "Aberdeen" OR city = "Abilene")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportname FROM airports WHERE airportname IN ('Aberdeen', 'Abilene'))
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights UNION SELECT destairport FROM flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights UNION SELECT sourceairport FROM flights)
SELECT Name FROM employee ORDER BY Age DESC
SELECT Name FROM employee ORDER BY Age DESC
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1
SELECT City FROM employee WHERE Age < 30 GROUP BY City HAVING COUNT(*) > 1
SELECT count(*) FROM shop GROUP BY Location
SELECT count(*) FROM shop GROUP BY Location
SELECT Manager_name FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT Manager_name, District FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT name, location, district FROM shop ORDER BY number_products DESC
SELECT Name FROM shop WHERE Number_products > (SELECT avg(Number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1)
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1)
SELECT Name FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM hiring)
SELECT District FROM shop WHERE Number_products < 3000 AND Number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products BETWEEN 10000 AND 3000
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher ORDER BY Age DESC
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Hometown != 'Little Lever Urban District'
SELECT Name FROM teacher WHERE Age IN (32, 33)
SELECT Name FROM teacher WHERE Age IN (32, 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown
SELECT count(*) FROM teacher WHERE Hometown IN (SELECT Hometown FROM course_arrange)
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT town FROM course_arrange GROUP BY town HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID IN (SELECT Course_ID FROM course WHERE Course = 'Math'))
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID IN (SELECT Course_ID FROM course WHERE Course = 'Math'))
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT avg(age) FROM visitor WHERE level_of_membership <= 4
SELECT museum_id FROM museum ORDER BY num_of_Staff DESC LIMIT 1
SELECT avg(num_of_Staff) FROM museum WHERE open_Year < 2009
SELECT Open_Year, Num_of_Staff FROM museum
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Open_Year) FROM museum WHERE Open_Year > 2010)
SELECT id, name, age FROM visitor WHERE id IN (SELECT visitor_id FROM visit GROUP BY visitor_id HAVING count(*) > 1)
SELECT id, name, membership_level FROM visitor WHERE id IN (SELECT visitor_id FROM visit ORDER BY Total_spent DESC LIMIT 1)
SELECT museum_id, name FROM museum ORDER BY num_of_staff DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT name, age FROM visitor WHERE id IN (SELECT visitor_id FROM visit GROUP BY visitor_id HAVING count(*) ORDER BY count(*) DESC LIMIT 1)
SELECT sum(total_spent) FROM visit WHERE visitor_id IN (SELECT id FROM visitor WHERE level_of_membership = "lv 1")
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code IN ('USA')
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year IN (2013, 2016)
SELECT first_name + " " + last_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE year IN (2013, 2016))
SELECT count(*) FROM matches WHERE year IN (2013, 2016)
SELECT count(*) FROM matches WHERE year IN (2013, 2016)
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "WTA Championships") AND player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "Australian Open")
{"sql": "SELECT first_name, country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_id
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name || " " || last_name FROM players ORDER BY birth_date ASC
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date ASC
SELECT first_name || " " || last_name FROM players WHERE hand = "Left" ORDER BY birth_date
SELECT first_name, winner_rank_points FROM matches WHERE winner_rank_points ORDER BY winner_rank_points DESC LIMIT 1
SELECT player_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE winner_id IN (SELECT player_id FROM rankings WHERE ranking_points ORDER BY winner_rank_points DESC LIMIT 1)
SELECT winner_name FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "Australian Open") GROUP BY winner_name ORDER BY winner_rank_points DESC LIMIT 1
SELECT loser_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT count(*) FROM players GROUP BY country_code
SELECT count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT name, winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 3
SELECT first_name, winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE winner_hand = "Left Hand"
SELECT count(*) FROM matches WHERE winner_hand = "Left"
SELECT count(*) FROM ship WHERE disposition_of_ship = 'captured'
SELECT id, name FROM battle WHERE id IN (SELECT caused_by_ship_id FROM death GROUP BY caused_by_ship_id HAVING count(*) > 10)
SELECT id, name FROM ship GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT name, date FROM battle WHERE bulgarian_commander = "HMS Atalanta" AND latin_commander = "Lettice"
SELECT name, bulgarian_commander FROM battle WHERE id NOT IN (SELECT id FROM ship WHERE location = 'English Channel')
SELECT course_description FROM courses
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") AND student_id NOT IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE state_province_county = "North Carolina") )
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") AND student_id NOT IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE state_province_county = "North Carolina") )
SELECT cell_mobile_number FROM Students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT count(*) FROM Students GROUP BY current_address_id ORDER BY count(*) DESC LIMIT 1
SELECT id FROM Students GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Bachelor" ) AND semester_id IN (SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name = "Master" ))
SELECT semester_id FROM Student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE degree_summary_name IN ('Masters', 'Bachelors'))
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT title FROM cartoon WHERE directed_by = (SELECT id FROM cartoon WHERE title = "Ben Jones")
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuh"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM Cartoon WHERE Directed_by IN ('Ben Jones', 'Brandon Vietti')
SELECT Title FROM Cartoon WHERE Directed_by IN (SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones" OR Directed_by = "Brandon Vietti")
SELECT country FROM tv_channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM TV_Channel GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT Content FROM TV_Channel WHERE Content LIKE "%Sky Radio%"
SELECT Content FROM TV_Channel WHERE Content LIKE "%Sky Radio%"
SELECT Package_Option FROM TV_Channel WHERE content LIKE "%Sky Radio%"
SELECT count(*) FROM TV_Channel WHERE Language = "English"
SELECT count(*) FROM TV_Channel WHERE Language IN ('English')
SELECT series_name FROM cartoon WHERE title = "The Rise of the Blue Beetle"
SELECT series_name FROM TV_series WHERE id IN (SELECT id FROM cartoon WHERE title = "The Rise of the Blue Beetle")
SELECT Title FROM Cartoon WHERE Channel IN (SELECT id FROM TV_Channel WHERE content LIKE "%Sky Radio%")
SELECT title FROM cartoon WHERE channel IN (SELECT id FROM tv_channel WHERE content = 'Sky Radio')
SELECT Original_air_date FROM Cartoon WHERE title = "A Love of a Lifetime"
SELECT Air_Date FROM Cartoon WHERE Title = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE series_name = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Title = "A Love of a Lifetime"
SELECT series_name FROM cartoon WHERE title LIKE "%A Love of a Lifetime%"
SELECT series_name FROM cartoon WHERE title LIKE "%A Love of a Lifetime%"
SELECT Episode FROM TV_series WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT count(*) FROM cartoon WHERE directed_by IN (SELECT id FROM cartoon GROUP BY directed_by)
SELECT count(*) FROM cartoon GROUP BY directed_by
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code, Channel FROM Cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT package_option FROM TV_Channel WHERE pixel_aspect_ratio_PAR = "HD"
SELECT package_options FROM TV_Channel WHERE Hight_definition_TV = "HDTV"
SELECT Country FROM cartoon WHERE Content LIKE '%Todd Casey%'
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT Country FROM TV_Channel WHERE Content != 'Cartoon'
SELECT Country FROM Cartoon WHERE Country NOT IN (SELECT Country FROM Cartoon)
SELECT series_name, country FROM tv_channel WHERE id IN (SELECT channel FROM cartoon WHERE directed_by IN ('Ben Jones', 'Michael Chang'))
SELECT series_name, country FROM cartoon JOIN tv_series ON cartoon.channel = tv_series.channel
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT package_option FROM tv_channel WHERE content NOT IN (SELECT title FROM cartoon)
SELECT package_option FROM tv_channel WHERE id NOT IN (SELECT channel FROM cartoon)
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 1
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Height > 200)
SELECT avg(Earnings) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Height > 200)
SELECT Nationality FROM people GROUP BY Nationality
SELECT count(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 2
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT max(created) FROM VOTES WHERE state IN ('CA')
SELECT count(*) FROM VOTES WHERE state IN ('NY', 'CA')
SELECT create_date, state, phone_number FROM votes WHERE contestant_number IN (SELECT contestant_number FROM contests WHERE contestant_name = 'Tabatha Gehling')
SELECT area_code FROM votes WHERE state IN (SELECT state FROM votes WHERE contestant_number IN (SELECT contestant_number FROM contestants WHERE contestant_name IN ('Tabatha Gehling', 'Kelly Clauss')))
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode NOT IN (SELECT code FROM country WHERE countrycode = 'US'))
SELECT count(*) FROM country WHERE Region != 'Country'
SELECT sum(SurfaceArea) FROM country WHERE Continent = 'Caribbean'
SELECT sum(SurfaceArea) FROM country WHERE continent = "Caribbean"
SELECT Continent FROM country WHERE CountryCode = "ANGUILLA"
SELECT Continent FROM country WHERE CountryCode = (SELECT Code FROM country WHERE Name = "Anguilla")
SELECT Region FROM country WHERE CountryCode = (SELECT CountryCode FROM country WHERE Name = "Kabul")
SELECT Region FROM country WHERE CountryCode = 'AF'}
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
{"sql": "SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode IN (SELECT Country
SELECT population, lifeexpectancy FROM country WHERE countrycode = "BR"
SELECT Population FROM country WHERE CountryCode = 'BR'
SELECT region, population FROM country WHERE countrycode = "AF"
SELECT Region FROM country WHERE CountryCode = 'AF'}
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = "Asia" AND LifeExpectancy = (SELECT min(LifeExpectancy) FROM country WHERE Continent = "Asia")
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT sum(population) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
{"sql": "SELECT avg(LifeExpectancy) FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'African' AND CountryCode IN
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Africa" AND Region = "Republic"
SELECT sum(SurfaceArea) FROM country WHERE Continent IN ('Asia', 'Europe')
SELECT sum(SurfaceArea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE Name = "Gelderland"
SELECT sum(Population) FROM city WHERE Name = "Gelderland"
SELECT avg(GNP) FROM country
{"sql": "SELECT avg(GNP) FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT
SELECT count(*) FROM country WHERE continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = "Aruba")
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = "Aruba")
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode IN (SELECT code FROM country WHERE name = "Afghanistan")
SELECT count(*) FROM countrylanguage WHERE IsOfficial = 1 AND CountryCode IN (SELECT Code FROM country WHERE Name = 'Afghanistan')
SELECT name FROM country ORDER BY population DESC LIMIT 1
SELECT country FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT Name FROM country WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language IN ('English', 'French'))
SELECT Name FROM countrylanguage WHERE Language IN ('English', 'French')
SELECT Name FROM country WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language = "French")
SELECT Name FROM country WHERE IsOfficial = 1 AND CountryCode IN (SELECT Code FROM countrylanguage WHERE Language = 'French')
SELECT count(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM countrylanguage WHERE language = 'Chinese'
SELECT Region FROM countrylanguage WHERE Language IN ('English', 'Dutch')
SELECT Region FROM countrylanguage WHERE Language IN ('Dutch', 'English')
SELECT CountryCode FROM countrylanguage WHERE Language IN ('English', 'Dutch')
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT DISTINCT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) = 2
SELECT Name FROM city ORDER BY Population DESC LIMIT 1
SELECT max(Population) FROM city WHERE countrycode IN (SELECT code FROM countrylanguage WHERE language='English')
SELECT name, population, life expectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language != 'English')
SELECT avg(LifeExpectancy) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language != 'English')
SELECT count(*) FROM countrylanguage WHERE language != 'English'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 1)
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE HeadOfState = "Beatrix")
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE HeadOfState = "Beatrix")
SELECT count(DISTINCT CountryCode) FROM countrylanguage WHERE IndepYear < 1930
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT CountryCode FROM country WHERE SurfaceArea > (SELECT max(SurfaceArea) FROM country WHERE CountryCode IN ('EUROPE'))
SELECT CountryCode FROM country WHERE SurfaceArea > (SELECT SurfaceArea FROM country WHERE Continent = 'Europe')
SELECT country FROM country WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE continent = 'Asia'))
{"sql": "SELECT country FROM country WHERE population < (SELECT population FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN
SELECT country FROM country WHERE continent IN ('Asia') GROUP BY countrycode ORDER BY population DESC LIMIT 1
SELECT country FROM country WHERE continent != 'Africa' GROUP BY country ORDER BY population DESC LIMIT 1
SELECT CountryCode FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT CountryCode FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT CountryCode FROM countrylanguage WHERE Language != 'English'
SELECT CountryCode FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = 'English')
SELECT CountryCode FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English")
SELECT CountryCode FROM countrylanguage WHERE Language != 'English' AND CountryCode != 'USA'
SELECT countrycode FROM country WHERE continent != 'Europe' AND countrylanguage.code != 'English'
SELECT DISTINCT countrycode FROM countrylanguage WHERE language = 'Chinese' AND countrycode IN (SELECT countrycode FROM country WHERE continent = 'Asia')
SELECT DISTINCT name FROM city WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') AND isofficial = 1 AND language = 'Chinese'
SELECT name, independence_year, surface_area FROM country ORDER BY population ASC LIMIT 1
SELECT country FROM country ORDER BY population ASC LIMIT 1
SELECT population, name, leader FROM country ORDER BY population DESC LIMIT 1
SELECT count(*) FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT count(*) FROM city WHERE District IN (SELECT District FROM city GROUP BY District HAVING avg(Population) > (SELECT avg(Population) FROM city GROUP BY District))
SELECT name, surface_area FROM country ORDER BY surface_area DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT country FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT Name FROM country WHERE Continent = "Europe" AND Population >= 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population >= 80000
SELECT sum(Population) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT sum(Population) FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'North America' AND SurfaceArea > 3000)
SELECT Name FROM city WHERE Population BETWEEN 1600000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = 'Spanish'
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != 'USA'
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded ASC
SELECT count(*) FROM orchestra WHERE Orchestra IN ("CD", "DVD")
{"sql": "SELECT grade FROM Highschooler WHERE id IN (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE id = (SELECT
SELECT grade FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle"))
SELECT name FROM Highschooler WHERE grade = '10'
SELECT name FROM Highschooler WHERE grade = '10'
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT count(*) FROM Highschooler WHERE grade IN (9, 10)
SELECT count(*) FROM Highschooler WHERE grade IN (9, 10)
SELECT count(*) FROM Highschooler GROUP BY year
SELECT count(*) FROM Highschooler GROUP BY year
SELECT year FROM Highschooler GROUP BY year ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id FROM Friend WHERE student_id IN (SELECT id
{"sql": "SELECT name FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student
SELECT count(*) FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = "Kyle")
SELECT count(*) FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = "Kyle")
SELECT count(*) FROM likes WHERE student_id IN (SELECT id FROM friends WHERE student_id = 10000)
SELECT count(*) FROM likes WHERE student_id IN (SELECT id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE name = "Kyle"))
SELECT avg(grade) FROM Friend WHERE student_id IN (SELECT id FROM Friend)
SELECT avg(grade) FROM Friend WHERE student_id IN (SELECT id FROM Friend)
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM Highschooler WHERE student_id NOT IN (SELECT student_id FROM Friend)
SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2 AND state = "Indiana"
SELECT professional_id FROM treatments WHERE state = "Indiana" OR date_of_treatment >= date_of_treatment
SELECT name FROM Dogs WHERE owner_id IN (SELECT owner_id FROM Treatments WHERE cost_of_treatment > 1000)
SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1
SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1
SELECT id, role, first_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) >= 2)
SELECT id, role, first_name FROM treatments GROUP BY id HAVING count(*) > 2
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT owner_id FROM treatments GROUP BY dog_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1
SELECT dog_id FROM dogs GROUP BY dog_id ORDER BY sum(weight) DESC LIMIT 1
SELECT first_name, last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments))
SELECT first_name, last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE treatment_type_code IN (SELECT treatment_type_code FROM Treatment_Types WHERE treatment_type_description LIKE '%less expansive%' ))
SELECT first_name, name FROM owners WHERE state = "Virginia"
SELECT first_name FROM owners WHERE state = "Virginia"
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT email_address FROM Professionals WHERE state IN ('Hawaii', 'Wisconsin')
SELECT email_address FROM Professionals WHERE state IN (Hawaii, Wisconsin)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'A'
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 'A'
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year IN (1948, 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948, 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship
SELECT count(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT country FROM song GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY max(net_worth_millions) DESC
SELECT country FROM singer ORDER BY net_worth_millions DESC GROUP BY country
SELECT DISTINCT Name FROM song GROUP BY Singer_ID HAVING SUM(Sales) > 300000
SELECT DISTINCT Name FROM singer WHERE Net_Worth_Millions > 300000
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 AND Birth_Year > 1955
SELECT Citizenship FROM singer WHERE Birth_Year BETWEEN 1945 AND 1955
SELECT property_name FROM properties WHERE property_type_code IN (SELECT property_type_code FROM ref_property_types WHERE property_type_name IN (SELECT property_type_name FROM ref_property_types WHERE property_type_name = "apartment") OR property_type_code IN (SELECT property_type_code FROM ref_property_types WHERE property_type_name IN (SELECT property_type_name FROM ref_property_types WHERE property_type_name = "house"))
