SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country, age FROM singer ORDER BY age DESC LIMIT 100
SELECT Name, Country, Age FROM singer ORDER BY Age DESC
SELECT avg(age) FROM singer WHERE country = "France"
SELECT avg(Age) FROM singer WHERE Country = "France"
SELECT name FROM singer ORDER BY age ASC LIMIT 1
SELECT name FROM singer ORDER BY age ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT DISTINCT Country FROM singer WHERE Age > 20
SELECT State, count(*) FROM singer GROUP BY Country
SELECT count(*) FROM singer GROUP BY Country
SELECT song_name FROM singer WHERE age > (SELECT avg(age) FROM singer)
SELECT Song_Name FROM singer WHERE Age > (SELECT avg(Age) FROM singer)
SELECT stadium_id FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT Address, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT avg(Average) FROM stadium
SELECT avg(Average) FROM stadium
SELECT Name, avg(Average) FROM stadium ORDER BY avg(Average) DESC LIMIT 1
SELECT Name, avg(Average) FROM stadium ORDER BY avg(Average) DESC LIMIT 1
SELECT count(*) FROM concert WHERE year IN (2014, 2015)
SELECT count(*) FROM concert WHERE year IN (2014, 2015)
SELECT stadium_name FROM stadium GROUP BY stadium_name
SELECT stadium_id FROM concert GROUP BY stadium_id
SELECT stadium.name, count(*) FROM concert JOIN stadium ON concert.stadium_id = stadium.stadium_id GROUP BY stadium.name HAVING year >= 2014
SELECT name, capacity FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE year > 2013 GROUP BY stadium_id ORDER BY capacity DESC LIMIT 1)
SELECT Year FROM concert GROUP BY Year ORDER BY count(*) DESC LIMIT 1
SELECT max(year) FROM concert
SELECT Name FROM stadium
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert)
SELECT Country FROM singer WHERE Age > 40 OR Age < 30
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = 2014)
SELECT Name FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = 2014)
SELECT name, theme FROM concert GROUP BY theme
SELECT name, theme, count(*) FROM concert GROUP BY concert_name
SELECT name FROM singer GROUP BY name
SELECT name, count(*) FROM singer_in_concert GROUP BY name
SELECT Name FROM singer WHERE Song_release_year = 2014
SELECT Name FROM singer_in_concert WHERE concert_id IN (SELECT concert_id FROM concert WHERE year = 2014)
SELECT name, country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name, country FROM singer WHERE song_name LIKE '%Hey%'
SELECT name FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE year IN (2014, 2015))
SELECT name FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE year IN (2014, 2015))
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM Pets WHERE weight > 10
SELECT count(*) FROM Pets WHERE weight > 10
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT max(weight) FROM pets GROUP BY pet_type
SELECT max(weight) FROM pets GROUP BY species
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20)
SELECT count(*) FROM Has_Pet WHERE pet_age > 20
SELECT count(*) FROM student WHERE sex = 'F'
SELECT count(*) FROM Has_Pet WHERE pet_type = 'Puppy' AND StuID IN (SELECT StuID FROM Student WHERE Sex = 'F')
SELECT count(DISTINCT species) FROM pets
SELECT count(DISTINCT species) FROM animals
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('kitten', 'puppy')))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('kitten', 'puppy')))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType = 'kitten' AND PetType = 'puppy'))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('kittens', 'puppies')))
SELECT major, age FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet WHERE petid IN (SELECT petid FROM pets WHERE pettype = "kitten"))
SELECT pet_age FROM pets WHERE pet_id NOT IN (SELECT pet_id FROM has_pet)
SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets)
SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = "kitten")
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = "Cat"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "dog") AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "kitten")
SELECT category, weight FROM pets ORDER BY pet_age ASC LIMIT 1
SELECT pet_type FROM pets ORDER BY pet_age DESC LIMIT 1
SELECT id FROM pets WHERE pet_age > 1
SELECT id FROM pets WHERE pet_age > 1
SELECT species FROM pets GROUP BY species
SELECT pet_type FROM pets GROUP BY pet_type ORDER BY avg(pet_age) ASC
SELECT pet_type FROM pets GROUP BY pet_type
SELECT avg(weight) FROM pets GROUP BY pet_type
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID)
SELECT DISTINCT given_name, age FROM Student WHERE age != 0 AND age != 10
SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE pet_age >= 10) AND StuID IN (SELECT StuID FROM Student WHERE Fname = "Smith")
SELECT StuID FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Fname = "Smith")
SELECT count(*) FROM Has_Pet GROUP BY StuID
SELECT count(*) FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING count(*) > 1)
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE pet_age = 3 AND pet_type = "Kitten"))
SELECT Fname FROM Student WHERE age = 3 AND petid IN (SELECT petid FROM Pets WHERE pettype = 'Kitten')
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) FROM countries GROUP BY continent
SELECT continent FROM continents GROUP BY continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT maker, full_name FROM car_makers GROUP BY maker
SELECT maker, id, count(*) FROM car_makers GROUP BY maker
SELECT maker FROM model_list ORDER BY horsepower ASC LIMIT 1
SELECT model FROM model_list ORDER BY horsepower ASC LIMIT 1
SELECT model FROM model_list WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM model_list WHERE weight < (SELECT avg(weight) FROM cars_data)
{"sql": "SELECT maker FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT country FROM countries WHERE country
SELECT maker FROM car_makers WHERE year = 1970
SELECT make FROM car_names WHERE model IN (SELECT model FROM cars_data ORDER BY year ASC LIMIT 1)
SELECT maker FROM car_makers ORDER BY year ASC LIMIT 1
SELECT DISTINCT maker FROM model_list WHERE year > 1980
SELECT DISTINCT model FROM model_list WHERE year > 1980
SELECT count(*) FROM car_makers GROUP BY country_id
SELECT continent FROM continents GROUP BY continent
SELECT CountryName FROM countries WHERE CountryName IN (SELECT DISTINCT Country FROM car_makers GROUP BY Country ORDER BY count(*) DESC LIMIT 1)
SELECT country FROM countries WHERE country IN (SELECT country FROM car_makers GROUP BY country ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM car_makers GROUP BY Maker
SELECT count(*) FROM car_makers GROUP BY maker
SELECT accelerate FROM cars_data WHERE make IN (SELECT maker FROM car_makers WHERE maker = "Amc Hornet")
SELECT accelerate FROM cars_data WHERE make = (SELECT make FROM car_names WHERE model = (SELECT model FROM model_list WHERE model = 'Hornet Sportabout (Sw)'))
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE countryname LIKE '%France%')
SELECT count(*) FROM car_makers WHERE Country IN (SELECT Country FROM countries WHERE CountryName = "France")
SELECT count(*) FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE country IN (SELECT countryid FROM countries WHERE countryname = "United States"))
SELECT count(*) FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country = "United States"))
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT companies, models FROM car_makers
SELECT maker, model FROM model_list
SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 1
SELECT name, id FROM countries WHERE countryname IN (SELECT countryname FROM car_makers GROUP BY countryname HAVING count(*) >= 1)
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) FROM cars_data GROUP BY Year
SELECT avg(Weight) FROM cars_data GROUP BY Year
SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3
SELECT CountryName FROM countries WHERE Continent IN (SELECT Continent FROM continents WHERE Continent = 'Europe') GROUP BY CountryName HAVING count(*) >= 3
SELECT max(power) FROM cars_data WHERE cylinders = 3
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 3
SELECT maker FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT model FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT avg(Horsepower) FROM cars_data WHERE Year < 1980
SELECT avg(Horsepower) FROM cars_data WHERE Year < 1980
SELECT avg(Edispl) FROM cars_data WHERE Model IN (SELECT Model FROM model_list WHERE Maker = "Volvo")
SELECT avg(edispl) FROM cars_data WHERE makeid IN (SELECT id FROM car_makers WHERE maker = "Volvo")
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE year = 1980
SELECT count(*) FROM cars_data WHERE year = 1980
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT count(*) FROM car_makers WHERE maker = "American Motor Company"
SELECT maker, full_name FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) > 3)
SELECT maker, id FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) > 3)
SELECT DISTINCT Maker FROM car_makers WHERE FullName = "General Motors" OR Weight > 3500
SELECT DISTINCT maker FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE maker IN (SELECT maker FROM car_makers WHERE maker = "General Motors" AND weight > 3500))
SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 OR Weight > 3000
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT accelerate FROM cars_data ORDER BY accelerate DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate < (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE accelerate = (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE horsepower < (SELECT max(horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Horsepower > (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY maker HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT Model FROM car_names WHERE MakeId IN (SELECT Id FROM cars_data WHERE Cylinders = 4) GROUP BY Model ORDER BY Horsepower DESC LIMIT 1
SELECT model FROM car_makers WHERE cylinders = 4 GROUP BY model ORDER BY count(*) DESC LIMIT 1
SELECT makeid FROM car_names WHERE id NOT IN (SELECT id FROM cars_data WHERE cylinders < 3)
SELECT maker FROM car_makers WHERE country IN (SELECT country FROM car_makers GROUP BY country HAVING cylinders < 4)
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 AND Year < 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 AND Year < 1980
SELECT model FROM model_list WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT id FROM car_makers WHERE maker IN ('Ford Motor Company')) AND weight < 3500)
SELECT DISTINCT maker FROM model_list WHERE model IN (SELECT model FROM car_names WHERE weight < 3500) AND maker != 'Ford'
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT id, maker FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) > 3)
SELECT id, maker FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) > 3)
SELECT id, names FROM countries WHERE countryname LIKE '%fiat%'
SELECT id, name FROM countries WHERE continent IN (SELECT continent FROM continents WHERE count(*) > 3)
SELECT Country FROM airlines WHERE Abbreviation = "JetBlue Airways"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue Airways"
SELECT Abbreviation FROM airlines WHERE Airline = "Jetblue Airways"
SELECT AirportName FROM airports WHERE Country = "USA"
SELECT airportname, airportcode FROM airports WHERE country = 'USA'
SELECT airportcode FROM airports WHERE city = "Anthony"
SELECT airportcode FROM airports WHERE city = "Anthony"
SELECT count(*) FROM flights
SELECT sum(amount) FROM flights
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT AirportCode FROM airports WHERE AirportCode LIKE '%UAL%'
SELECT AirportCode FROM airports WHERE Abbreviation = "UAL"
SELECT count(*) FROM airports WHERE country = 'USA'
SELECT count(*) FROM airports WHERE Country = 'USA'
SELECT AirportName FROM airports WHERE AirportCode = (SELECT AirportCode FROM flights WHERE SourceAirport = 'Alton')
SELECT City, Country FROM airports WHERE AirportName = "Alton Airport"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT AirportName FROM airports WHERE AirportCode = "AKO"
SELECT AirportName FROM airports WHERE City = "Aberdeen"
SELECT AirportName FROM airports WHERE Country = "Aberdeen"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "ATO")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "ATO")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = 'Aberdeen') AND destairport IN (SELECT airportcode FROM airports WHERE city = 'Ashley')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") AND destairport IN (SELECT airportcode FROM airports WHERE city = "Ashley")
SELECT count(*) FROM flights WHERE airline IN ('JetBlue Airways')
SELECT count(*) FROM flights WHERE airline IN (SELECT uid FROM airlines WHERE abbreviation = "Jetblue Airways")
SELECT count(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE airportname = "ASY") AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "ASY Airport") AND airline IN (SELECT uid FROM airlines WHERE abbreviation = "United Airlines")
SELECT count(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE airportname = "AHD") AND airline = "United Airlines"
SELECT count(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE airportname = "AHD")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen") AND airline IN (SELECT uid FROM airlines WHERE abbreviation = "United Airlines")
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT city FROM flights GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT AirportName FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) ASC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) ASC LIMIT 1
SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) DESC LIMIT 1
SELECT avg(FlightNo) FROM flights GROUP BY Airline ORDER BY avg(FlightNo) DESC LIMIT 1
SELECT airway FROM flights GROUP BY airway ORDER BY count(*) ASC LIMIT 1
SELECT airportname FROM airports WHERE airportcode IN (SELECT destairport FROM flights GROUP BY destairport ORDER BY count(*) ASC LIMIT 1)
SELECT destairport FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "AHD")
SELECT DISTINCT airportcode FROM flights WHERE sourceairport = "AHD"
SELECT destairport FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "AHD")
SELECT airportcode FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "AHD")
SELECT destairport FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname LIKE '%APG%' ) AND destairport IN (SELECT airportcode FROM airports WHERE airportname LIKE '%CVO%')
SELECT DISTINCT airportcode FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "APG") AND destairport IN (SELECT airportcode FROM airports WHERE airportname = "CVO")
SELECT * FROM flights WHERE sourceairport IN ('CVO') AND destairport NOT IN ('APG')
{"sql": "SELECT Airway FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT Airport
SELECT * FROM flights WHERE flightno IN (SELECT flightno FROM flights GROUP BY airline HAVING count(*) >= 10)
SELECT AirportCode FROM flights GROUP BY Airline HAVING count(*) >= 10
SELECT * FROM flights WHERE destairport IN (SELECT airportcode FROM airports GROUP BY airportcode HAVING count(*) < 200)
SELECT airportcode FROM flights GROUP BY airline HAVING count(*) < 200
SELECT FlightNo FROM flights WHERE Airline IN (SELECT uid FROM airlines WHERE Abbreviation = "United Airlines")
SELECT airline FROM flights WHERE airline IN (SELECT airline FROM airlines WHERE airline = "United Airlines")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE Country = "APG")
SELECT FlightNo FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE airportname = "APG")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE CountryAbbrev = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Aberdeen")
SELECT airportcode FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Abberdabe")
{"sql": "SELECT count(*) FROM flights WHERE destairport IN (SELECT airportname FROM airports WHERE airportcode IN (SELECT airportcode FROM airports WHERE airportname IN ('Aberdeen', 'Abilene'))")}
SELECT AirportName FROM airports WHERE AirportCode NOT IN (SELECT SourceAirport FROM flights OR SELECT DestAirport FROM flights)
SELECT airportcode FROM airports WHERE airportcode NOT IN (SELECT airportcode FROM flights)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT Name FROM employee ORDER BY Age ASC
SELECT Name FROM employee ORDER BY Age ASC
SELECT count(*) FROM employee GROUP BY City
SELECT count(*) FROM employee GROUP BY City
SELECT DISTINCT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) FROM shop GROUP BY city
SELECT count(*) FROM shop GROUP BY City
SELECT head_name, district FROM shop ORDER BY Number_products DESC LIMIT 1
SELECT director_name, district FROM shop GROUP BY district ORDER BY number_products DESC LIMIT 1
SELECT min(number_products) FROM shop
SELECT min(number_products) FROM shop
SELECT name, city, district FROM shop ORDER BY number_products DESC
SELECT name, city, district FROM shop ORDER BY number_products DESC
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT name FROM shop WHERE number_products > (SELECT avg(number_products) FROM shop)
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation GROUP BY Employee_ID ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM employee WHERE employee_id IN (SELECT employee_id FROM evaluation ORDER BY bonus DESC LIMIT 1)
SELECT Name FROM employee WHERE Employee_ID IN (SELECT Employee_ID FROM evaluation ORDER BY Bonus DESC LIMIT 1)
SELECT Name FROM evaluation ORDER BY Bonus DESC LIMIT 1
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM employee WHERE Employee_ID NOT IN (SELECT Employee_ID FROM evaluation)
SELECT Name FROM shop ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop ORDER BY number_products DESC LIMIT 1
SELECT Name FROM shop WHERE Manager_name NOT IN (SELECT Employee_ID FROM hiring)
SELECT name FROM shop WHERE manager_name NOT IN (SELECT manager_name FROM hiring)
SELECT count(*) FROM hiring GROUP BY shop_id
SELECT count(*) FROM employee JOIN hiring ON employee.Employee_ID = hiring.Employee_ID JOIN shop ON hiring.Shop_ID = shop.Shop_ID GROUP BY shop.Shop_ID
SELECT sum(bonus) FROM evaluation
SELECT sum(bonus) FROM evaluation WHERE bonus != 0
SELECT * FROM hiring
SELECT * FROM hiring
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 AND Number_products > 10000
SELECT DISTINCT District FROM shop WHERE Number_products < 3000 AND District IN (SELECT DISTINCT District FROM market WHERE Number_of_goods > 10000)
SELECT count(DISTINCT City) FROM employee
SELECT count(DISTINCT City) FROM employee
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT paper_id, paper_name, paper_description FROM templates
SELECT template_id, template_name, template_details FROM templates
SELECT document_name, layout_id FROM documents WHERE document_description LIKE '%w%'
SELECT name, layout_id FROM documents WHERE document_description LIKE '%w%'
SELECT paper_id, layout_id, describing_content FROM Documents WHERE document_name = "Robbin CV"
SELECT paper_id, layout_id, describing_details FROM documents WHERE document_name LIKE "%Robbin CV%"
SELECT count(DISTINCT layout) FROM Documents
SELECT count(DISTINCT layout) FROM Documents
SELECT count(*) FROM Documents WHERE Template_Type_Code = 'PPT'
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "PPT"))
SELECT layout_id, count(*) FROM Documents GROUP BY layout_id
SELECT DISTINCT layout_id FROM Documents GROUP BY layout_id
SELECT id, type FROM templates WHERE type IN (SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Document") GROUP BY type ORDER BY count(*) DESC LIMIT 1
SELECT id, type FROM Templates GROUP BY type ORDER BY count(*) DESC LIMIT 1
SELECT template_id FROM documents GROUP BY template_id HAVING count(*) > 1
SELECT Template_ID FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE template_id NOT IN (SELECT template_id FROM documents)
SELECT template_id FROM templates WHERE template_id NOT IN (SELECT template_id FROM documents)
SELECT count(*) FROM templates
SELECT count(*) FROM Paragraphs
SELECT layout_id, version_number, layout_type FROM layouts
SELECT id, edition_number, type_name FROM layouts
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types
SELECT DISTINCT Template_Type_Description FROM Ref_Template_Types
SELECT template_type_code FROM Ref_Template_Types WHERE template_type_code IN ('PP', 'PPT')
SELECT Template_Type_Code FROM Templates WHERE Template_Type_Code IN ("PP", "PPT")
SELECT count(*) FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "CV")
{"sql": "SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = \"CV\")")}
SELECT edition_number, layout_type FROM Templates WHERE edition_number > 5
SELECT edition_number, layout_type_name FROM templates WHERE edition_number > 5
SELECT template_type_code FROM templates GROUP BY template_type_code
SELECT DISTINCT template_type_code FROM templates GROUP BY template_type_code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3)
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code HAVING COUNT(*) < 3)
SELECT min(version_number) FROM Templates
SELECT min(version_number) FROM Templates
SELECT Template_Type_Code FROM Templates WHERE Template_Details LIKE "%Data base%"
SELECT Template_Type_Code FROM Documents WHERE Document_Name = "Data base"
SELECT Document_Name FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = "BK")
SELECT Template_ID FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code = "BK")
SELECT Template_Type_Description FROM Ref_Template_Types GROUP BY Template_Type_Description
SELECT DISTINCT Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Templates GROUP BY Template_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Documents)
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code NOT IN (SELECT Template_Type_Code FROM Documents)
SELECT Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"))
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Description LIKE "%Book%"
SELECT DISTINCT template_type_description FROM templates WHERE template_type_code IN (SELECT template_type_code FROM documents)
SELECT DISTINCT Template_Details FROM Documents WHERE Document_Name IN (SELECT Document_Name FROM Documents GROUP BY Document_Name HAVING COUNT(*) = 1)
SELECT template_type_code FROM templates WHERE template_type_code IN (SELECT template_type_code FROM ref_template_types WHERE template_type_description = "Presentation")
SELECT template_id FROM templates WHERE template_details LIKE '%Presentation%'
SELECT count(*) FROM Paragraphs
SELECT count(*) FROM paragraphs
SELECT count(*) FROM Paragraphs WHERE document_id IN (SELECT document_id FROM Documents WHERE document_name = "Summer Show")
SELECT count(*) FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = "Summer Show")
SELECT * FROM paragraphs WHERE paragraph_text = 'Korea'
SELECT * FROM Paragraphs WHERE paragraph_text LIKE '%Korea%'
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id IN (SELECT template_id FROM documents WHERE document_name = "Welcome to NY")
SELECT paragraph_id, paragraph_text FROM paragraphs WHERE document_id IN (SELECT template_id FROM documents WHERE document_name = "Welcome to NY")
SELECT paragraph_text FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents WHERE document_name = "Customer reviews")
SELECT Paragraph_Text FROM Paragraphs WHERE Document_ID IN (SELECT Document_ID FROM Documents WHERE Document_Name = "Customer reviews")
SELECT paper_id FROM paragraphs GROUP BY paper_id ORDER BY paper_id
SELECT DISTINCT paper_id FROM paragraphs GROUP BY paper_id ORDER BY id
SELECT document_id FROM documents GROUP BY document_id
SELECT Template_ID FROM Templates GROUP BY Template_ID
SELECT DISTINCT document_id FROM paragraphs GROUP BY document_id HAVING count(*) >= 2
SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(*) >= 2
SELECT document_id, document_name FROM documents GROUP BY document_id ORDER BY count(*) DESC LIMIT 1
SELECT id FROM paragraphs ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM paragraphs ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM paragraphs WHERE paragraph_id IN (SELECT paragraph_id FROM paragraphs WHERE paragraph_id BETWEEN 1 AND 2)
SELECT document_id FROM paragraphs WHERE document_id IN (SELECT document_id FROM documents GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2)
SELECT paper_id FROM paragraphs WHERE paragraph_text IN ('Brazil', 'Ireland')
SELECT document_id FROM paragraphs WHERE paragraph_text IN ('Brazil', 'Ireland')
SELECT count(*) FROM teacher
SELECT count(*) FROM course_arrange
SELECT Faculty FROM faculty ORDER BY Age ASC
SELECT Faculty FROM faculty ORDER BY Age ASC
SELECT Age, Hometown FROM teacher
SELECT Age, Hometown FROM teacher
SELECT name FROM teacher WHERE hometown != "Little Lever Urban District"
SELECT Name FROM teacher WHERE Hometown != "Little Lever Urban District"
SELECT Faculty FROM faculty WHERE Age IN (32, 33)
SELECT Name FROM teacher WHERE Age IN (32, 33)
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Name FROM teacher ORDER BY Age ASC LIMIT 1
SELECT DISTINCT Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT hometown FROM teacher GROUP BY hometown ORDER BY count(*) DESC LIMIT 1
SELECT Hometown FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*) >= 2)
SELECT DISTINCT town FROM course_arrange GROUP BY town HAVING count(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange)
SELECT name FROM teacher JOIN course_arrange ON teacher.teacher_id = course_arrange.teacher_id JOIN course ON course_arrange.course_id = course.course_id
SELECT Faculty FROM course_arrange GROUP BY Faculty ORDER BY Faculty ASC
SELECT faculty FROM course_arrange GROUP BY faculty ORDER BY faculty ASC
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID IN (SELECT Course_ID FROM course WHERE course.Subject = "Math"))
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange WHERE Course_ID IN (SELECT Course_ID FROM course WHERE Course = 'Math'))
SELECT faculty_name FROM course_arrange GROUP BY faculty_name
SELECT Name FROM teacher JOIN course_arrange ON teacher.Teacher_ID = course_arrange.Teacher_ID GROUP BY Name
SELECT Name FROM teacher WHERE Teacher_ID IN (SELECT Teacher_ID FROM course_arrange GROUP BY Teacher_ID HAVING COUNT(*) >= 2)
SELECT DISTINCT Faculty FROM course_arrange GROUP BY Faculty HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT Name FROM teacher WHERE Teacher_ID NOT IN (SELECT Teacher_ID FROM course_arrange)
SELECT count(*) FROM visitor WHERE Age < 30
SELECT Name FROM visitor WHERE Level_of_membership > 4 ORDER BY Level_of_membership DESC
SELECT avg(Age) FROM visitor WHERE Level_of_membership <= 4
SELECT name, level_of_membership FROM visitor WHERE level_of_membership > 4 ORDER BY age ASC
SELECT museum_id FROM museum ORDER BY num_of_Staff DESC LIMIT 1
SELECT avg(Num_of_Staff) FROM museum WHERE Open_Year < 2009
SELECT Open_Year, worker_number FROM museum WHERE name = "Plaza Museum"
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT min(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT id, name, age FROM visitor WHERE id IN (SELECT visitor_id FROM visit GROUP BY visitor_id HAVING count(*) > 1)
SELECT id, name, membership_level FROM visitor WHERE id IN (SELECT visitor_id FROM visit GROUP BY visitor_id ORDER BY total_spent DESC LIMIT 1)
SELECT Museum_ID FROM visit GROUP BY Museum_ID ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM museum WHERE Museum_ID NOT IN (SELECT Museum_ID FROM visit)
SELECT name, age FROM visitor WHERE id IN (SELECT visitor_id FROM visit GROUP BY visitor_id HAVING count(*) ORDER BY count(*) DESC LIMIT 1)
SELECT avg(Num_of_Ticket) FROM visit
SELECT sum(Total_spent) FROM visit WHERE Level_of_membership = 1
SELECT Name FROM visitor WHERE ID IN (SELECT visitor_ID FROM visit WHERE Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year < 2009 AND Museum_ID IN (SELECT Museum_ID FROM museum WHERE Open_Year > 2011)))
SELECT count(*) FROM visit WHERE museum_id NOT IN (SELECT museum_id FROM museum WHERE open_year < 2010)
SELECT count(*) FROM museum WHERE open_Year BETWEEN 2008 AND 2013
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT avg(loser_age) FROM matches
{"sql": "SELECT avg(loser_age) FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m WHERE m.loser_id IN (SELECT player_id FROM matches AS m
SELECT avg(winner_rank) FROM matches
SELECT avg(winner_rank) FROM matches
{"sql": "SELECT max(loser_rank) FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN (SELECT player_id FROM matches WHERE loser_id IN
SELECT loser_rank FROM matches ORDER BY loser_rank DESC LIMIT 1
SELECT count(DISTINCT state_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year IN (2013, 2016)
SELECT first_name || " " || last_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE year IN (2013, 2016))
SELECT count(*) FROM matches WHERE year IN (2013, 2016)
SELECT count(*) FROM matches WHERE year IN (2013, 2016)
SELECT nation_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "WTA Championships")) AND player_id IN (SELECT winner_id FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "Australian Open"))
SELECT first_name, state_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE winner_name = "WTA Championships") AND player_id IN (SELECT winner_id FROM matches WHERE winner_name = "Australian Open")
SELECT first_name, state FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT first_name || ' ' || last_name FROM players ORDER BY birth_date
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name || ' ' || last_name FROM players WHERE hand = "left" ORDER BY birth_date
SELECT first_name, country_code FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT player_id FROM rankings ORDER BY tours DESC LIMIT 1)
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT first_name, winner_rank_points FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "Australian Open tourney") ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "Australian Open") GROUP BY winner_name ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winner_name FROM matches ORDER BY match_num DESC LIMIT 1
SELECT avg(rank) FROM rankings GROUP BY first_name
SELECT first_name FROM players WHERE player_id IN (SELECT player_id FROM rankings ORDER BY ranking_points ASC LIMIT 1)
SELECT first_name FROM players GROUP BY first_name
SELECT first_name FROM players WHERE player_id IN (SELECT player_id FROM rankings ORDER BY ranking_points DESC LIMIT 10)
SELECT count(*) FROM players GROUP BY country_code
SELECT count(*) FROM players GROUP BY country_code
SELECT state FROM players GROUP BY state ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT count(*) FROM rankings GROUP BY ranking
SELECT count(*) FROM rankings GROUP BY ranking
SELECT year FROM matches GROUP BY year
SELECT year FROM matches GROUP BY year
SELECT name, winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 3
SELECT first_name, winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE winner_hand = "left"
SELECT count(*) FROM matches WHERE winner_hand = "Left"
SELECT winner_name, country_code FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT first_name, country_code, birth_date FROM players WHERE player_id IN (SELECT player_id FROM matches WHERE winner_rank_points ORDER BY winner_rank_points DESC LIMIT 1)
SELECT count(*) FROM players GROUP BY hand
SELECT count(*) FROM players GROUP BY hand
SELECT count(*) FROM ship WHERE disposition_of_ship = 'Captured'
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT name, date, result FROM battle
SELECT max(killed) FROM death
SELECT avg(injured) FROM death
SELECT caused_by_ship_id FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE tonnage = 't')
SELECT name, result FROM battle WHERE bulgarian_commander != 'Boril'
SELECT DISTINCT id FROM ship WHERE ship_type LIKE '%Brig%'
SELECT id, name FROM battle GROUP BY name HAVING count(*) > 10
SELECT id, name FROM ship GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM battle WHERE bulgarian_commander = "Kaloyan" AND latin_commander = "Baldwin I"
SELECT count(DISTINCT result) FROM battle
SELECT count(*) FROM battle WHERE result != 'lost' AND tonnage != '225'
SELECT name, date FROM battle WHERE name IN ('Lettice', 'HMS Atalanta')
SELECT name, bulgarian_commander FROM battle WHERE location != 'English Channel'
SELECT note FROM death WHERE caused_by_ship_id IN (SELECT id FROM ship WHERE name LIKE '%East%')
SELECT address_id FROM Addresses WHERE line_1 != '' AND line_2 != ''
SELECT line_1, line_2 FROM addresses ORDER BY address_id ASC LIMIT 2
SELECT count(*) FROM courses
SELECT count(*) FROM courses
SELECT course_description FROM courses WHERE course_name LIKE '%math%'
SELECT course_description FROM courses
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT zip_postcode FROM addresses WHERE city = "Port Chelsea"
SELECT department_name FROM Departments GROUP BY department_name ORDER BY count(*) DESC LIMIT 1
SELECT department_name FROM Departments ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Degree_Programs
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = "Engineering")
SELECT count(*) FROM departments WHERE department_name LIKE "%engineering%"
SELECT section_name, section_description FROM sections
SELECT name, description FROM sections
SELECT course_id FROM sections GROUP BY course_id HAVING count(*) <= 2
SELECT course_id FROM sections GROUP BY course_id HAVING count(*) < 2
SELECT section_name FROM sections ORDER BY section_name REVERSE
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT semester_name FROM Semesters ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM Semesters GROUP BY semester_name ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE "%computer%"
SELECT course_description FROM courses WHERE course_name LIKE '%computer%'
SELECT first_name, middle_name, last_name, student_id FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "2 degree programs") AND semester_id IN (SELECT semester_id FROM semesters WHERE semester_name = "one term"))
SELECT first_name, middle_name, last_name, student_id FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "2 degree programs") AND semester_id IN (SELECT semester_id FROM semesters WHERE semester_name = "one term"))
SELECT first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_Enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE degree_summary_name = "Bachelor"))
SELECT first_name, middle_name, last_name FROM students WHERE student_id IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = "Bachelor's")))
SELECT degree_program_id FROM Student_Enrolment GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM Degree_Programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id FROM Student_Enrolment GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT degree_program_id FROM Degree_Programs GROUP BY degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT student_id FROM Student_Enrolment GROUP BY student_id ORDER BY count(*) DESC LIMIT 1
SELECT first_name, middle_name, last_name, student_id, count(*) FROM Students WHERE student_id IN (SELECT student_id FROM Student_Enrolment GROUP BY student_id ORDER BY count(*) DESC LIMIT 1)
SELECT section_name FROM sections WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT section_name FROM sections WHERE course_id NOT IN (SELECT course_id FROM courses)
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses WHERE student_id IN (SELECT student_id FROM students))
SELECT course_name FROM courses WHERE course_id IN (SELECT course_id FROM student_enrolment_courses WHERE student_id IN (SELECT student_id FROM students))
SELECT course_name FROM courses GROUP BY course_name ORDER BY count(*) DESC LIMIT 1
SELECT course_name FROM Courses GROUP BY course_name ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") AND student_id NOT IN (SELECT student_id FROM student_enrolment WHERE degree_program_id IN (SELECT degree_program_id FROM degree_programs))
SELECT last_name FROM students WHERE current_address_id IN (SELECT address_id FROM addresses WHERE state_province_county = "North Carolina") AND student_id NOT IN (SELECT student_id FROM student_enrolment_courses WHERE course_id IN (SELECT course_id FROM courses WHERE course_name LIKE "%degree programs%") )
SELECT date_first_registered, student_id FROM Students WHERE date_first_registered >= 2 AND date_first_registered <= 2 GROUP BY date_first_registered
SELECT date_first_registered, student_id FROM Students WHERE student_id IN (SELECT student_id FROM Student_Enrolment_Courses GROUP BY student_id HAVING count(*) >= 2)
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timothy" AND last_name = "Ward"
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name, middle_name, last_name FROM students WHERE date_first_registered = (SELECT date_first_registered FROM students ORDER BY date_first_registered LIMIT 1)
SELECT first_name, middle_name, last_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT middle_name, family_name FROM students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT place_id FROM students GROUP BY place_id ORDER BY count(*) DESC LIMIT 1
SELECT address_id FROM students GROUP BY address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM Transcripts
SELECT avg(date_first_registered) FROM Students
{"sql": "SELECT date_left FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first_registered = (SELECT date_first_registered FROM Students WHERE date_first
SELECT min(transcript_date) FROM Transcripts
SELECT count(*) FROM students
SELECT count(*) FROM Students
SELECT max(date_first_registered) FROM Students
SELECT date_left FROM Students ORDER BY date_left DESC LIMIT 1
SELECT count(*) FROM Student_Enrolment_Courses GROUP BY curriculum_enrolment_id
SELECT count(*) FROM Student_Enrolment_Courses GROUP BY course_id
SELECT date_first_registered FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT date_first_registered, student_id FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT semester_id FROM Student_Enrolment WHERE student_id IN (SELECT student_id FROM Students WHERE first_name LIKE '%Master%' OR first_name LIKE '%Bachelor%')
SELECT semester_id FROM Student_Enrolment WHERE student_id IN (SELECT student_id FROM Students WHERE first_name LIKE "Masters%" OR first_name LIKE "Bachelors%")
SELECT count(DISTINCT current_address_id) FROM Students
SELECT DISTINCT place FROM addresses WHERE current_address_id IN (SELECT student_id FROM students)
SELECT * FROM Students ORDER BY last_name DESC
SELECT * FROM Students ORDER BY last_name DESC
SELECT section_name FROM sections
SELECT section_description FROM sections WHERE section_name = "h"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT first_name FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE country = "Haiti") OR cell_mobile_number = "09700166582"
SELECT title FROM cartoon ORDER BY title
SELECT title FROM cartoon ORDER BY title
SELECT Directed_by FROM Cartoon WHERE Directed_by LIKE "%Ben Jones%"
SELECT Title FROM Cartoon WHERE Directed_by = "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by = "Joseph Kuhr"
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title, directed_by FROM cartoon ORDER BY original_air_date
SELECT title FROM cartoon WHERE directed_by IN("Ben Jones", "Brandon Vietti")
SELECT DISTINCT Directed_by FROM Cartoon WHERE Directed_by IN ('Ben Jones', 'Brandon Vietti')
SELECT Country FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT Country FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT content) FROM TV_Channel
SELECT count(DISTINCT content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Content FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE id IN (SELECT id FROM TV_series WHERE series_name = "Sky Radio")
SELECT package_option FROM TV_Channel WHERE series_name = "Sky Radio"
SELECT count(*) FROM TV_Channel WHERE Language = "English"
SELECT count(*) FROM TV_Channel WHERE Language = "English"
SELECT Language, count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language FROM TV_Channel GROUP BY Language
SELECT Language FROM TV_Channel GROUP BY Language
SELECT series_name FROM tv_series WHERE channel IN (SELECT id FROM cartoon WHERE title = "The Rise of the Blue Beetle!" )
SELECT content FROM cartoon WHERE title = "The Rise of the Blue Beetle"
SELECT title FROM cartoon WHERE channel IN (SELECT id FROM tv_channel WHERE series_name = "Sky Radio")
SELECT title FROM cartoon WHERE channel IN (SELECT id FROM tv_channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series ORDER BY Rating ASC
SELECT Episode FROM TV_series ORDER BY Rating
SELECT episode FROM tv_series ORDER BY score DESC LIMIT 3
SELECT Episode FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) FROM TV_series
SELECT max(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Original_air_date FROM Cartoon WHERE id = (SELECT id FROM Cartoon WHERE title = "A Love of a Lifetime")
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode = "A Love of a Lifetime"
SELECT channel FROM tv_series WHERE episode = "A Love of a Lifetime"
SELECT id FROM cartoon WHERE original_air_date = "A Love of a Lifetime"
SELECT Episode FROM TV_series WHERE Channel IN (SELECT id FROM TV_Channel WHERE series_name = "Sky Radio")
SELECT Episode FROM TV_series WHERE series_name = "Sky Radio"
SELECT count(*) FROM cartoon WHERE directed_by IN (10, 20, 30)
SELECT count(*) FROM cartoon
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT production_code, channel FROM cartoon ORDER BY original_air_date DESC LIMIT 1
SELECT package_option FROM TV_Channel WHERE content LIKE '%HD%'
SELECT package_option, serial FROM TV_Channel WHERE content LIKE '%HD%'
SELECT Country FROM cartoon WHERE Written_by = "Todd Casey"
{"sql": "SELECT State FROM Cartoon WHERE Written_by = \"Todd Casey\" AND Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (SELECT Title FROM Cartoon WHERE Content IN (
SELECT Country FROM Cartoon WHERE Written_by != 'Todd Casey'
SELECT Country FROM Cartoon WHERE Written_by = "Todd Casey"
SELECT id FROM cartoon WHERE directed_by IN ('Ben Jones', 'Michael Chang')
SELECT id FROM cartoon WHERE Directed_by IN ('Ben Jones', 'Michael Chang')
SELECT Pixel_aspect_ratio_PAR FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR, Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING count(*) > 2
SELECT id FROM tv_channel GROUP BY id HAVING count(*) > 2
SELECT id FROM cartoon WHERE directed_by = "Ben Jones"
SELECT id FROM cartoon WHERE directed_by != 'Ben Jones'
SELECT package_option FROM TV_Channel WHERE content NOT IN (SELECT Directed_by FROM Cartoon WHERE Directed_by = "Ben Jones")
SELECT package_option FROM TV_Channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by = "Ben Jones")
{"sql": "SELECT count(*) FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT People_ID FROM people WHERE People_ID IN (SELECT
SELECT count(*) FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Nationality = "American"))
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT final_table_made FROM poker_player ORDER BY best_finish DESC
SELECT Final_Table_Made, Best_Finish FROM poker_player
SELECT avg(earnings) FROM poker_player WHERE people_id IN (SELECT people_id FROM people WHERE name LIKE '%car gamer%' )
SELECT avg(Earnings) FROM poker_player
SELECT money_rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT money_rank FROM poker_player ORDER BY earnings DESC LIMIT 1
SELECT max(last_table_made) FROM poker_player WHERE earnings < 2000000
SELECT max(final_tables) FROM poker_player WHERE earnings < 200000
{"sql": "SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE People_ID IN (SELECT People_ID FROM poker_player
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE Final_Table_Made = 'car gamer')
SELECT Name FROM people WHERE People_ID IN (SELECT People_ID FROM poker_player WHERE Earnings > 300000)
SELECT name FROM people WHERE people_id IN (SELECT people_id FROM poker_player WHERE earnings > 300000)
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT name FROM people WHERE people_id IN (SELECT People_ID FROM poker_player GROUP BY People_ID ORDER BY count(*) ASC)
SELECT birth_date FROM people WHERE people_id IN (SELECT people_id FROM poker_player ORDER BY earnings ASC LIMIT 1)
SELECT birth_date FROM people WHERE people_id IN (SELECT people_id FROM poker_player ORDER BY earnings ASC LIMIT 1)
SELECT money_rank FROM poker_player ORDER BY height DESC LIMIT 1
SELECT money_rank FROM poker_player ORDER BY height DESC LIMIT 1
SELECT avg(earnings) FROM poker_player WHERE people_id IN (SELECT people_id FROM people WHERE height > 200)
SELECT avg(Money_Rank) FROM poker_player WHERE People_ID IN (SELECT People_ID FROM people WHERE Height > 200)
SELECT name FROM poker_player ORDER BY earnings DESC
SELECT name FROM poker_player ORDER BY Earnings DESC
SELECT Nationality FROM people GROUP BY Nationality
SELECT count(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) > 2
SELECT Name, Birth_Date FROM people ORDER BY Name ASC
SELECT Name, Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Game_Type = 'car')
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player WHERE Game_Type = 'Car Gamer')
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id, phone_number, state FROM VOTES
SELECT max(area_code) FROM AREA_CODE_STATE
SELECT max(created) FROM VOTES WHERE state = 'CA'
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state, set up time FROM votes
SELECT contestant_number, contestant_name FROM VOTES GROUP BY contestant_number HAVING count(*) >= 2
SELECT contestant_number FROM VOTES ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state IN ('NY', 'CA')
SELECT count(*) FROM votes WHERE contestant_number NOT IN (SELECT contestant_number FROM votes)
SELECT area_code FROM area_code_state GROUP BY area_code ORDER BY count(*) DESC LIMIT 1
SELECT state, contestant_number FROM votes WHERE contestant_number IN (SELECT contestant_number FROM contestants WHERE contestant_name = 'Tabatha Gehling')
SELECT area_code FROM votes WHERE contestant_number IN (SELECT contestant_number FROM contests WHERE contestant_name IN ('Tabatha Gehling', 'Kelly Clauss'))
SELECT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT Name FROM country WHERE IndepYear > 1950
SELECT Name FROM country WHERE IndepYear > 1950
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT count(*) FROM country WHERE GovernmentForm = "Republic"
SELECT sum(surfacearea) FROM country WHERE continent = "Caribbean"
SELECT sum(surfacearea) FROM country WHERE continent = "Caribbean"
SELECT continent FROM country WHERE countrycode = "ANGUILLA"
SELECT continent FROM country WHERE countrycode = (SELECT countrycode FROM country WHERE name = "Anguilla")
SELECT Region FROM country WHERE CountryCode = (SELECT CountryCode FROM city WHERE Name = "Kabul")
SELECT Region FROM country WHERE CountryCode = 'AF'}
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT CountryCode FROM country WHERE CountryCode = "ARUBA"))
SELECT population FROM country WHERE countrycode = (SELECT code FROM country WHERE name = "Brazil")
SELECT Population FROM country WHERE CountryCode = 'BR'
SELECT region, count(*) FROM country WHERE countrycode IN (SELECT code FROM country WHERE name = "Angola") GROUP BY region
SELECT Region FROM country WHERE CountryCode = "AF"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT avg(LifeExpectancy) FROM country WHERE Continent = "Central Africa"
SELECT Name FROM country WHERE Continent = 'Asia' AND LifeExpectancy = (SELECT min(LifeExpectancy) FROM country WHERE Continent = 'Asia')
SELECT Name FROM country WHERE Continent = 'Asia' ORDER BY LifeExpectancy ASC LIMIT 1
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE Continent = "Asia"
{"sql": "SELECT avg(LifeExpectancy) FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (SELECT Code FROM country WHERE CountryCode IN (
SELECT avg(LifeExpectancy) FROM country WHERE Continent = 'Africa' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'Republic')
SELECT sum(surfacearea) FROM country WHERE continent = "Asia" OR continent = "Europe"
SELECT sum(surfacearea) FROM country WHERE continent IN ('Asia', 'Europe')
SELECT count(*) FROM city WHERE District = "Gelderland"
SELECT count(*) FROM city WHERE district = "Gelderland"
SELECT avg(GNP) FROM country WHERE governmentform = 'US territory'
{"sql": "SELECT avg(GNP) FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(DISTINCT Language) FROM countrylanguage
SELECT count(*) FROM country WHERE continent = "Africa"
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent = "Africa"
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE countrycode IN (SELECT code FROM country WHERE countrycode = "AR")
SELECT count(*) FROM countrylanguage WHERE countrycode IN (SELECT code FROM country WHERE name = "Aruba")
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan')
SELECT count(*) FROM countrylanguage WHERE isofficial = 1 AND countrycode IN (SELECT code FROM country WHERE name = 'Afghanistan')
SELECT Name FROM country WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage ORDER BY count(*) DESC LIMIT 1)
SELECT Country FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT continent FROM countrylanguage GROUP BY continent ORDER BY count(*) DESC LIMIT 1
SELECT continent FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language IN ('English', 'Dutch')
SELECT count(*) FROM countrylanguage WHERE language IN ('English', 'Dutch')
SELECT name FROM countrylanguage WHERE language IN ('English', 'French')
SELECT Name FROM country WHERE Code IN (SELECT CountryCode FROM countrylanguage WHERE Language = "English" AND Language = "French")
SELECT Name FROM country WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 1 AND Language = "French")
SELECT name FROM country WHERE code IN (SELECT countrycode FROM countrylanguage WHERE isofficial = 1 AND language IN ('English', 'French'))
SELECT count(DISTINCT Continent) FROM countrylanguage WHERE Language = "Chinese"
SELECT count(*) FROM countrylanguage WHERE language = "Chinese"
SELECT Region FROM countrylanguage WHERE Language IN ('English', 'Dutch')
SELECT Region FROM countrylanguage WHERE Language IN ('Dutch', 'English')
SELECT country FROM countrylanguage WHERE isofficial = 1 AND language IN ('English', 'Dutch')
SELECT CountryCode FROM countrylanguage WHERE Language IN ('English', 'Dutch')
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = "Asia")
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language HAVING COUNT(*) = 1
SELECT Language FROM countrylanguage WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage GROUP BY CountryCode HAVING COUNT(*) = 1)
SELECT Name FROM city ORDER BY Population DESC LIMIT 1
SELECT max(Population) FROM city WHERE countrycode IN (SELECT code FROM countrylanguage WHERE language = "English")
SELECT name, populace, lifeexpectancy FROM country WHERE countrycode IN (SELECT code FROM country WHERE continent = 'Asia') ORDER BY surfacearea DESC LIMIT 1
SELECT name, population, lifeexpectancy FROM country WHERE continent = 'Asia' ORDER BY population DESC LIMIT 1
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT Code FROM countrylanguage WHERE Language = "English")
SELECT avg(LifeExpectancy) FROM country WHERE CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE IsOfficial = 0)
SELECT count(*) FROM countrylanguage WHERE Language != 'English'
SELECT count(*) FROM countrylanguage WHERE Language != 'English'
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE HeadOfState = "Beatrix")
SELECT Language FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE HeadOfState = "Beatrix")
SELECT count(DISTINCT CountryCode) FROM countrylanguage WHERE IndepYear < 1930
SELECT count(DISTINCT Language) FROM countrylanguage WHERE CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
{"sql": "SELECT country FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country
{"sql": "SELECT country FROM country WHERE surfacearea > (SELECT surfacearea FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country IN (SELECT country FROM country WHERE country
{"sql": "SELECT country FROM country WHERE countrycode != (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode FROM country WHERE countrycode IN (SELECT countrycode
SELECT country FROM country WHERE continent != 'Asia' GROUP BY country ORDER BY population ASC LIMIT 1
SELECT country FROM country WHERE continent != 'Africa' GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM country WHERE continent IN ('Asia') AND population > (SELECT population FROM country WHERE continent IN ('Africa'))
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT CountryCode FROM countrylanguage WHERE Language != 'English'
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT countrycode FROM countrylanguage WHERE language != 'English'
SELECT Code FROM country WHERE GovernmentForm != 'Republic' AND CountryCode NOT IN (SELECT CountryCode FROM countrylanguage WHERE Language != 'English')
SELECT countrylanguage.countrycode FROM countrylanguage WHERE countrycode NOT IN (SELECT countrycode FROM country WHERE governmentform = "Republic")
SELECT Name FROM city WHERE CountryCode IN (SELECT CountryCode FROM countrylanguage WHERE Language != 'English')
SELECT Name FROM city WHERE CountryCode IN (SELECT Code FROM country WHERE Continent = 'Europe') AND IsOfficial = 0 AND Language != 'English'
SELECT DISTINCT town FROM countrylanguage WHERE language = "Chinese" AND countrycode IN (SELECT code FROM country WHERE continent = "Asia")
SELECT DISTINCT name FROM city WHERE countrycode IN (SELECT code FROM countrylanguage WHERE language = 'Chinese' AND countrycode IN (SELECT code FROM country WHERE continent = 'Asia'))
SELECT name, founded_year, territory FROM country ORDER BY population ASC LIMIT 1
SELECT name, indepyear, country FROM country ORDER BY population ASC LIMIT 1
SELECT count(*) FROM country ORDER BY SurfaceArea DESC LIMIT 1
SELECT name, population FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT name FROM country WHERE countrycode IN (SELECT countrycode FROM countrylanguage GROUP BY countrycode HAVING count(*) >= 3)
SELECT name FROM country WHERE countrycode IN (SELECT countrycode FROM countrylanguage GROUP BY countrycode HAVING count(*) > 2)
SELECT count(*) FROM city WHERE population > (SELECT avg(population) FROM city)
SELECT count(*) FROM city GROUP BY district HAVING avg(population) > (SELECT avg(population) FROM city)
SELECT governmentform FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT governmentform FROM country WHERE lifeexpectancy > 72 GROUP BY governmentform
SELECT avg(LifeExpectancy) FROM country WHERE continent IN (SELECT continent FROM country WHERE LifeExpectancy < 72) GROUP BY continent
SELECT continent, count(*) FROM country WHERE lifeexpectancy < 72 GROUP BY continent
SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT Name, CountryCode FROM country ORDER BY Population DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent = 'Asia'
SELECT count(*) FROM country WHERE continent = "Asia"
SELECT name FROM country WHERE continent = "Europe" AND population = 80000
SELECT Name FROM country WHERE Continent = "Europe" AND Population = 80000
SELECT count(*) FROM country WHERE continent = "North America" AND surfacearea > 3000
SELECT count(*) FROM country WHERE continent = 'North America' AND surfacearea > 3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage ORDER BY Percentage DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT countrycode FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish" AND Percentage > (SELECT max(Percentage) FROM countrylanguage WHERE Language = "Spanish")
SELECT count(*) FROM countrylanguage WHERE Language = "Spanish"
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish" ORDER BY Percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language = "Spanish"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT record_company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT enterprise FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Conductor_ID FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Age DESC LIMIT 1
SELECT Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID
SELECT Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID
SELECT DISTINCT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT Conductor_ID FROM orchestra WHERE Year_of_Founded > 2008
SELECT Conductor_ID FROM orchestra WHERE Year_of_Founded > 2008
SELECT DISTINCT enterprise FROM orchestra GROUP BY enterprise
SELECT count(*) FROM orchestra GROUP BY Conductor_ID
SELECT record_type FROM orchestra GROUP BY record_type ORDER BY count(*) ASC
SELECT Major_Record_Format FROM orchestra GROUP BY Major_Record_Format ORDER BY count(*) DESC
SELECT Record_Company FROM performance GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT record_company FROM orchestra GROUP BY record_company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra.name FROM orchestra WHERE orchestra.id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING count(*) = 0
SELECT * FROM performance WHERE Year_of_Founded < 2003 AND Year_of_Founded > 2003
SELECT record_company FROM orchestra WHERE year_of_founded < 2003 AND record_company IN (SELECT record_company FROM orchestra WHERE year_of_founded > 2003)
SELECT count(*) FROM orchestra WHERE record_company IN ("CD", "DVD")
SELECT count(*) FROM orchestra WHERE record_company IN ("CD", "DVD")
SELECT Year_of_Founded FROM orchestra GROUP BY Year_of_Founded HAVING COUNT(*) > 1
SELECT Year_of_Founded FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance GROUP BY Orchestra_ID HAVING COUNT(*) > 1)
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT name, grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler
SELECT grade FROM Highschooler WHERE id = (SELECT student_id FROM Friend WHERE student_id = (SELECT id FROM Highschooler WHERE name = "Kyle"))
SELECT grade FROM Highschooler WHERE name = "Kyle"
SELECT name FROM Highschooler WHERE grade = 10
SELECT name FROM Highschooler WHERE grade = 10
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT id FROM Highschooler WHERE name = "Kyle"
SELECT count(*) FROM Highschooler WHERE grade IN (9, 10)
SELECT count(*) FROM Highschooler WHERE grade IN (9, 10)
SELECT count(*) FROM Highschooler GROUP BY grade
SELECT count(*) FROM Highschooler GROUP BY grade
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM Highschooler GROUP BY grade HAVING count(*) >= 4
SELECT student_id FROM friend GROUP BY student_id
SELECT count(*) FROM friend
SELECT name FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT name FROM Highschooler JOIN Friend ON Highschooler.ID = Friend.student_id GROUP BY name
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM Highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING count(*) >= 3)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING count(*) >= 3)
SELECT friend_id FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = "Kyle")
{"sql": "SELECT name FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE id IN (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM highschooler WHERE id = (SELECT student_id FROM friend WHERE student_id = (SELECT id FROM
SELECT count(*) FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = "Kyle")
SELECT count(*) FROM friend WHERE student_id IN (SELECT id FROM highschooler WHERE name = "Kyle")
SELECT student_id FROM friend WHERE friend_id IN (SELECT student_id FROM friend GROUP BY student_id HAVING count(*) = 1)
SELECT student_id FROM friend WHERE student_id NOT IN (SELECT student_id FROM friend)
SELECT name FROM Highschooler WHERE student_id NOT IN (SELECT student_id FROM Friend)
SELECT name FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM friend)
SELECT student_id FROM likes WHERE liked_id IN (SELECT student_id FROM friends)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING count(*) > 1)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING count(*) > 1))
SELECT count(*) FROM likes GROUP BY student_id
SELECT count(*) FROM likes GROUP BY student_id
SELECT name FROM Highschooler GROUP BY name
SELECT name FROM Highschooler JOIN Likes ON Highschooler.ID = Likes.student_id GROUP BY name
SELECT name FROM Highschooler WHERE student_id IN (SELECT student_id FROM Likes GROUP BY student_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM Highschooler GROUP BY name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING count(*) >= 2)
SELECT name FROM Highschooler WHERE id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING count(*) >= 2)
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING count(*) >= 2
SELECT name FROM Highschooler WHERE grade > 5 GROUP BY name HAVING count(*) >= 2
SELECT count(*) FROM likes WHERE student_id IN (SELECT student_id FROM friends WHERE student_id IN (SELECT id FROM highschooler WHERE name = "Kyle"))
{"sql": "SELECT count(*) FROM likes WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student_id FROM friend WHERE student_id IN (SELECT student
SELECT avg(grade) FROM friend WHERE student_id IN (SELECT id FROM highschooler GROUP BY id)
SELECT avg(grade) FROM Friend WHERE student_id IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM Highschooler WHERE id NOT IN (SELECT student_id FROM Friend)
SELECT min(grade) FROM Highschooler WHERE student_id NOT IN (SELECT student_id FROM Friend)
{"sql": "SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (
{"sql": "SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (SELECT state FROM owners WHERE state IN (
SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments)
SELECT avg(age) FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments WHERE treatment_type_code = (SELECT treatment_type_code FROM Treatment_Types WHERE treatment_type_description = "Health Care"))
SELECT owner_id, first_name, last_name, cell_number FROM Owners WHERE state = "Indiana" OR owner_id IN (SELECT owner_id FROM Treatments GROUP BY owner_id HAVING count(*) > 2)
SELECT id, last_name, cell_number FROM professionals WHERE state = "Indiana" OR count(*) > 2
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT first_name FROM Professionals WHERE role_code IN ("Veterinarians", "Guardians") AND first_name NOT IN (SELECT first_name FROM Dogs)
{"sql": "SELECT first_name FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE name LIKE '%dog%') AND first_name IN (SELECT first_name FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM professionals WHERE role_code IN (SELECT role_code FROM
SELECT veterinarian_id, role_code, email_address FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs))
SELECT id, role FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1
SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1
SELECT veterinarian_id, role_code, first_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) >= 2)
SELECT id, role, first_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM breeds GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT owner_id, first_name FROM owners JOIN dogs ON owners.owner_id = dogs.owner_id GROUP BY owner_id ORDER BY cost_of_treatment DESC LIMIT 1
SELECT dog_id FROM treatments ORDER BY cost_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY cost_of_treatment ASC LIMIT 1
SELECT * FROM treatments ORDER BY cost_of_treatment ASC LIMIT 1
SELECT guardian_id FROM treatments GROUP BY dog_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1
SELECT guardian_id, zip_code FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs GROUP BY dog_id ORDER BY sum(cost_of_treatment) DESC LIMIT 1)
SELECT veterinarian_id FROM treatments GROUP BY veterinarian_id HAVING count(*) >= 2
SELECT id, cell_number FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) >= 2)
SELECT first_name, last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments))
SELECT first_name || ' ' || last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments))
SELECT date_of_treatment FROM treatments WHERE date_of_treatment != ''
SELECT date_of_treatment, first_name FROM treatments WHERE date_of_treatment != ''
SELECT cost_of_treatment FROM Treatments GROUP BY health-care_type
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT first_name, last_name, size_code FROM owners WHERE owner_id IN (SELECT dog_id FROM dogs WHERE size_code IN (SELECT size_code FROM sizes WHERE size_description = "Small"))
SELECT first_name, last_name, weight FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE breed_code IN (SELECT breed_code FROM breeds WHERE breed_name = "Poodle"))
SELECT first_name, last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs GROUP BY owner_id HAVING count(*) > 1)
SELECT first_name || " " || last_name AS given_name, name FROM dogs JOIN treatments ON dogs.id = treatments.dog_id
SELECT breed_name FROM breeds ORDER BY date_of_birth DESC LIMIT 1
SELECT name, date_of_birth FROM dogs WHERE age < 10 AND breed_code IN (SELECT breed_code FROM breeds ORDER BY avg(weight) DESC LIMIT 1)
SELECT first_name FROM owners WHERE state = "Virginia"
SELECT owner_id FROM Dogs WHERE state = "Virginia" GROUP BY owner_id
SELECT date_arrived, date_departed FROM Dogs WHERE date_of_birth != date_of_birth
{"sql": "SELECT date_arrived, date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_treatment FROM Treatments WHERE date_of_treatment IN (SELECT date_of_t
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT email_address FROM owners WHERE state = "Hawaii" OR state = "Wisconsin"
SELECT email_address FROM Owners WHERE state IN ('Hawaii', 'Wisconsin')
SELECT date_arrived, date_departed FROM Dogs
SELECT date_arrived, date_departed FROM Dogs
SELECT count(*) FROM treatments
SELECT count(*) FROM treatments
SELECT count(*) FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE name LIKE '%puppies%')
SELECT count(*) FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE name LIKE '%puppies%')
SELECT role_code FROM Professionals WHERE street LIKE '%West%'
SELECT role_code, street, city, state FROM professionals WHERE city LIKE '%West%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name, last_name, email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age < (SELECT avg(age) FROM Dogs)
SELECT max(charge_amount) FROM charges WHERE date_of_charge = (SELECT max(date_of_charge) FROM charges)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE age < 10)
SELECT count(*) FROM dogs WHERE date_departed != "2023-03-01"
{"sql": "SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT dog_id FROM dogs WHERE dog_id IN (SELECT
SELECT count(*) FROM treatments WHERE dog_id NOT IN (SELECT dog_id FROM dogs)
SELECT count(*) FROM treatments WHERE dog_id NOT IN (SELECT dog_id FROM dogs)
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs
SELECT avg(age) FROM Dogs
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT age FROM dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM charges
SELECT max(charge_amount) FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, home_phone, cell_number FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code = 'Veterinarian')
SELECT email_address, home_phone, cell_number FROM Professionals WHERE role_code = 'Veterinarian'
SELECT breed_code, size_code FROM Dogs GROUP BY breed_code, size_code
SELECT DISTINCT breed_code, size_code FROM dogs
SELECT first_name, last_name FROM professionals WHERE role_code IN (SELECT treatment_type_code FROM treatments)
SELECT first_name FROM Professionals WHERE role_code IN (SELECT treatment_type_code FROM Treatments)
SELECT count(*) FROM singer WHERE name LIKE '%vocalist%'
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer WHERE Citizenship != 'US'
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year IN (1948, 1949)
SELECT Name FROM singer WHERE Birth_Year IN (1948, 1949)
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship
SELECT count(*) FROM singer GROUP BY Citizenship
SELECT Country FROM song GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT country FROM song GROUP BY singer_id ORDER BY count(*) DESC LIMIT 1
SELECT country FROM singer GROUP BY country ORDER BY max(net_worth_millions) DESC
SELECT country FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT title, singer_id FROM song
SELECT Title, Singer_ID FROM song ORDER BY Sales DESC
SELECT DISTINCT Name FROM song WHERE Sales > 300000
SELECT DISTINCT Name FROM singer WHERE Net_Worth_Millions > 300000
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1)
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1)
SELECT name FROM singer WHERE singer_id IN (SELECT singer_id FROM song GROUP BY singer_id)
SELECT name FROM singer GROUP BY name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 AND Birth_Year > 1955
SELECT country FROM singer WHERE birth_year < 1945 AND birth_year > 1955
SELECT count(*) FROM Other_Property_Features
SELECT feature_type_code FROM Other_Available_Features WHERE feature_name = "AirCon"
{"sql": "SELECT property_type_description FROM Ref_Property_Types WHERE property_type_code IN (SELECT property_type_code FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (SELECT property_type_code FROM Other_Property_Features WHERE property_id IN (SELECT property_id FROM Properties WHERE property_type_code IN (
SELECT property_name FROM properties WHERE property_type_code IN (SELECT property_type_code FROM ref_property_types WHERE property_type_name IN ('house', 'apartment')) AND room_count > 1
