SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT name, country FROM singer ORDER BY birthday DESC
SELECT Name, Country FROM singer ORDER BY Birthday DESC
SELECT avg(Singer_ID) FROM singer WHERE Country = "France"
SELECT avg(Singer_ID) FROM singer WHERE Country = 'France'
SELECT name, song_release_year FROM singer ORDER BY song_release_year ASC LIMIT 1
SELECT Name, Song_release_year FROM singer ORDER BY Song_release_year ASC LIMIT 1
SELECT DISTINCT Country FROM singer WHERE Birthday = 2001
SELECT DISTINCT Country FROM singer WHERE Birthday = 2001
SELECT Country FROM singer GROUP BY Country
SELECT Country FROM singer GROUP BY Country
{"sql": "SELECT Song_Name FROM singer WHERE Song_Name IN (SELECT Song_Name FROM singer WHERE Song_Name IN (SELECT Song_Name FROM singer GROUP BY Song_Name HAVING AVG(Birthday) > (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg(Birthday) < (SELECT avg(Birthday) FROM singer GROUP BY Song_Name HAVING avg
SELECT song_name FROM singer WHERE singer_id IN (SELECT singer_id FROM singer WHERE birthdate > (SELECT avg(birthdate) FROM singer))
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT Location, Name FROM stadium WHERE Capacity BETWEEN 5000 AND 10000
SELECT avg(capacity) FROM stadium
SELECT avg(capacity) FROM stadium
SELECT Name, Average FROM stadium ORDER BY Average DESC LIMIT 1
SELECT Name, Average FROM stadium ORDER BY Average DESC LIMIT 1
SELECT count(*) FROM concert WHERE year >= 2014
SELECT count(*) FROM concert WHERE year >= 2014
SELECT stadium.name, count(*) FROM concert JOIN stadium ON concert.stadium_id = stadium.stadium_id GROUP BY stadium.name
SELECT stadium_id FROM concert GROUP BY stadium_id
SELECT stadium.name, capacity FROM stadium WHERE stadium.id IN (SELECT concert_id FROM concert WHERE year > 2014) GROUP BY stadium.name ORDER BY capacity DESC LIMIT 1
SELECT name, highest FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE year > 2013 GROUP BY stadium_id ORDER BY highest DESC LIMIT 1)
SELECT concert_Name FROM concert ORDER BY Year DESC LIMIT 1
SELECT concert_Name FROM concert ORDER BY Year DESC LIMIT 1
SELECT max(attendance) FROM stadium
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert)
SELECT Country FROM singer WHERE Birthday IN (1981, 1991)
SELECT avg(Average) FROM stadium WHERE Stadium_ID NOT IN (SELECT Stadium_ID FROM concert WHERE Year = 2014)
SELECT lowest FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM concert WHERE year = 2014)
SELECT name, theme FROM concert GROUP BY concert_id
SELECT name, theme, count(*) FROM concert GROUP BY concert_name
SELECT Name FROM singer GROUP BY Name
SELECT name, count(*) FROM singer_in_concert GROUP BY name
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM singer_in_concert WHERE concert_ID IN (SELECT concert_ID FROM concert WHERE Year >= 2014))
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM singer_in_concert WHERE concert_ID IN (SELECT concert_ID FROM concert WHERE Year <= 2014))
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT Name, Country FROM singer WHERE Song_Name LIKE '%Hey%'
SELECT lowest, highest FROM stadium WHERE stadium_id IN (SELECT stadium_id FROM concert WHERE year IN (2014, 2015))
SELECT min(Lowest) FROM stadium WHERE Stadium_ID IN (SELECT Stadium_ID FROM concert WHERE Year IN (2014, 2015))
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM concert WHERE stadium_id IN (SELECT stadium_id FROM stadium ORDER BY capacity DESC LIMIT 1)
SELECT count(*) FROM pets WHERE weight > 10
SELECT count(*) FROM pets WHERE weight > 10
SELECT min(weight) FROM pets
SELECT weight FROM pets ORDER BY weight ASC LIMIT 1
SELECT max(weight) FROM pets GROUP BY pettype
SELECT pettype FROM pets GROUP BY pettype ORDER BY max(weight) DESC
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20)
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Age > 20)
SELECT count(*) FROM Has_Pet WHERE StuID IN (SELECT StuID FROM Student WHERE Sex = "F")
SELECT count(*) FROM pets WHERE pettype = "puppy" AND petid IN (SELECT petid FROM has_pet WHERE stuid IN (SELECT stuid FROM student WHERE sex = "F"))
SELECT count(DISTINCT PetType) FROM Pets
SELECT count(DISTINCT PetType) FROM Pets
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('kitten', 'puppy')))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('kitten', 'puppy')))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('Kitten', 'Puppy')))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE PetType IN ('kitten', 'puppy')))
SELECT major, age FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet WHERE petid IN (SELECT petid FROM pets WHERE pettype = "kitten"))
SELECT major FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets)
SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = "Kitten")
SELECT Fname, Age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID NOT IN (SELECT PetID FROM Pets WHERE PetType = "Puppy"))
SELECT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = "Puppy") AND StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = "Kitten")
SELECT PetType, weight FROM Pets ORDER BY weight ASC LIMIT 1
SELECT PetType FROM Pets ORDER BY weight ASC LIMIT 1
SELECT petid FROM pets WHERE birthdate <= "2020-01-01" AND birthdate >= "2019-12-31"
SELECT petid FROM pets WHERE birthdate > '2020-01-01'
SELECT avg(PetID) FROM Pets GROUP BY PetType
SELECT avg(PetType) FROM Pets GROUP BY PetType
SELECT pettype FROM pets GROUP BY pettype
SELECT pettype FROM pets GROUP BY pettype
SELECT name, age FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet)
SELECT DISTINCT name FROM Student WHERE age IN (SELECT age FROM Has_Pet)
SELECT petid FROM has_pet WHERE stuid IN (SELECT stuid FROM student WHERE lname = "Smith")
SELECT petid FROM has_pet WHERE stuid IN (SELECT stuid FROM student WHERE lname = "Smith")
SELECT count(*) FROM Has_Pet GROUP BY StuID
SELECT count(*) FROM Has_Pet GROUP BY StuID
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(*) > 1)
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE birthdate = "2001-01-01"))
SELECT LName FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetID IN (SELECT PetID FROM Pets WHERE birthdate = "2001-01-01"))
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT avg(age) FROM student WHERE stuid NOT IN (SELECT stuid FROM has_pet)
SELECT count(*) FROM continents
SELECT count(*) FROM continents
SELECT count(*) FROM countries GROUP BY continent
SELECT continent FROM continents GROUP BY continent
SELECT count(*) FROM countries
SELECT count(*) FROM countries
SELECT maker, count(*) FROM car_makers GROUP BY maker
SELECT maker, id FROM car_makers GROUP BY maker
SELECT maker FROM model_list ORDER BY horsepower ASC LIMIT 1
SELECT maker FROM model_list WHERE horsepower = (SELECT min(horsepower) FROM cars_data)
SELECT model FROM model_list WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT model FROM model_list WHERE weight < (SELECT avg(weight) FROM cars_data)
SELECT maker FROM car_makers WHERE id IN (SELECT makeid FROM car_names WHERE model IN (SELECT model FROM cars_data WHERE year BETWEEN 2021 AND 2022))
SELECT maker FROM car_makers WHERE year IN (2020, 2021)
SELECT make FROM car_names WHERE model IN (SELECT model FROM cars_data ORDER BY year ASC LIMIT 1)
{"sql": "SELECT maker FROM car_makers WHERE id IN (SELECT makeid FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (SELECT make FROM car_names WHERE model IN (SELECT model FROM car_names WHERE make IN (
SELECT DISTINCT maker FROM model_list WHERE year <= 1980
SELECT DISTINCT maker FROM model_list WHERE year <= 1980
SELECT count(*) FROM car_makers GROUP BY Continent
SELECT continent FROM continents GROUP BY continent
SELECT countryname FROM countries WHERE countryid IN (SELECT countryid FROM car_makers GROUP BY countryid ORDER BY count(*) DESC LIMIT 1)
SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM car_makers GROUP BY Maker
SELECT count(*) FROM car_makers GROUP BY Maker
SELECT Horsepower FROM cars_data WHERE makeid IN (SELECT makeid FROM car_names WHERE make = "Amc Hornet" AND model = "Sportabout")
SELECT accelerate FROM cars_data WHERE make = (SELECT make FROM car_names WHERE model = "amc hornet sportabout")
SELECT count(*) FROM car_makers WHERE Country IN (SELECT CountryName FROM countries WHERE CountryName LIKE '%Japan%')
SELECT count(*) FROM car_makers WHERE maker IN (SELECT make FROM car_names WHERE country IN (SELECT country FROM countries WHERE countryname = "Japan") )
SELECT count(*) FROM car_makers WHERE Country IN (SELECT CountryId FROM countries WHERE Continent = 'America')
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country = 'United States')
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT avg(MPG) FROM cars_data WHERE Cylinders = 4
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT min(Weight) FROM cars_data WHERE Cylinders = 8 AND Year = 1974
SELECT maker, model FROM car_makers JOIN car_names ON car_makers.id = car_names.make_id
SELECT maker, model FROM model_list
SELECT Country FROM car_makers GROUP BY Country ORDER BY count(*) DESC
SELECT CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers)
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT count(*) FROM cars_data WHERE Horsepower > 150
SELECT avg(Weight) FROM cars_data GROUP BY Year
SELECT avg(Weight) FROM cars_data GROUP BY Year
SELECT country FROM car_makers GROUP BY country HAVING count(*) >= 3
SELECT CountryName FROM countries WHERE CountryName IN (SELECT CountryName FROM car_makers GROUP BY CountryName HAVING count(*) >= 3)
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 3
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 3
SELECT maker FROM model_list ORDER BY mpg DESC LIMIT 1
SELECT max(MPG) FROM cars_data
SELECT avg(Horsepower) FROM cars_data WHERE Year <= 1980
SELECT avg(Horsepower) FROM cars_data WHERE Year <= 1980
SELECT avg(edispl) FROM cars_data WHERE make_id IN (SELECT id FROM car_names WHERE model_id IN (SELECT id FROM model_list WHERE maker = "tesla"))
SELECT avg(edispl) FROM cars_data WHERE id IN (SELECT id FROM cars_data WHERE make = 'Tesla')
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT max(Accelerate) FROM cars_data GROUP BY Cylinders
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT maker FROM model_list GROUP BY maker ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Cylinders > 4
SELECT count(*) FROM cars_data WHERE Year BETWEEN 2022 AND 2023
SELECT count(*) FROM cars_data WHERE Year BETWEEN 2019 AND 2021
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE continent = 'North America')
SELECT count(*) FROM car_makers WHERE country IN (SELECT country FROM countries WHERE country IN (SELECT countryname FROM countries WHERE countryname = "America"))
SELECT FullName FROM car_makers WHERE Maker IN (SELECT Maker FROM model_list GROUP BY Maker HAVING count(*) > 3)
SELECT maker, id FROM car_makers GROUP BY maker HAVING count(*) > 3
SELECT DISTINCT model FROM model_list WHERE maker IN (SELECT id FROM car_makers WHERE maker = "General Motors") AND weight > 3500
SELECT DISTINCT maker FROM model_list WHERE maker IN (SELECT maker FROM car_makers WHERE maker = "General Motors") AND weight > 3500
SELECT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year FROM cars_data WHERE Weight < 4000 OR Weight > 3000
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT Horsepower FROM cars_data ORDER BY Accelerate DESC LIMIT 1
SELECT count(*) FROM cars_data WHERE accelerate < 0
SELECT count(*) FROM cars_data WHERE accelerate < (SELECT min(accelerate) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Horsepower < (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM cars_data WHERE Horsepower > (SELECT max(Horsepower) FROM cars_data)
SELECT count(*) FROM car_makers GROUP BY CountryId HAVING count(*) > 2
SELECT count(*) FROM car_makers GROUP BY CountryId HAVING count(*) > 2
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT count(*) FROM cars_data WHERE Cylinders > 6
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 4
SELECT max(Horsepower) FROM cars_data WHERE Cylinders = 4
SELECT makeid FROM car_names WHERE makeid NOT IN (SELECT makeid FROM cars_data WHERE horsepower < (SELECT min(horsepower) FROM cars_data))
SELECT make_id FROM car_names WHERE cylinders < 4
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 AND Year <= 1980
SELECT max(MPG) FROM cars_data WHERE Cylinders = 8 OR Year <= 1980
SELECT model FROM model_list WHERE maker != 'Ford' AND weight < 3500
SELECT DISTINCT maker FROM model_list WHERE model IN (SELECT model FROM car_names WHERE weight < 3500)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT id, maker FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) >= 2)
SELECT id, maker FROM car_makers WHERE maker IN (SELECT maker FROM model_list GROUP BY maker HAVING count(*) > 3)
SELECT CountryId FROM car_makers GROUP BY CountryId HAVING count(*) > 3 OR maker = 'tesla'
{"sql": "SELECT CountryId, CountryName FROM countries WHERE CountryId IN (SELECT CountryId FROM car_makers GROUP BY CountryId HAVING count(*) > 3) OR CountryId IN (SELECT CountryId FROM cars_data WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (SELECT Model FROM car_names WHERE Make IN (SELECT Make FROM car_names WHERE Model IN (
SELECT Country FROM airlines WHERE Airline = "JetBlue"
SELECT Country FROM airlines WHERE Abbreviation = "Jetblue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Abbreviation FROM airlines WHERE Airline = "JetBlue"
SELECT Airline, Abbreviation FROM airlines WHERE Country = 'USA'
SELECT Airline, Abbreviation FROM airlines WHERE Country = "United States"
SELECT airportcode, airportname FROM airports
SELECT airportcode FROM airports WHERE city = "Syracuse"
SELECT count(*) FROM airlines
SELECT count(*) FROM airlines
SELECT count(*) FROM airports
SELECT count(*) FROM airports
SELECT count(*) FROM flights
SELECT count(*) FROM flights
SELECT Abbreviation FROM airlines WHERE Abbreviation LIKE '%UAL%'
SELECT Airline FROM airlines WHERE Abbreviation = "UAL"
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT count(*) FROM airlines WHERE Country = "America"
SELECT City, Country FROM airports WHERE AirportCode = "ALTON"
SELECT City, Country FROM airports WHERE AirportCode = "ALTON"
SELECT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT airportname FROM airports WHERE airportcode = "AKO"
SELECT airportname FROM airports WHERE country = 'USA' AND airportcode IN (SELECT airportcode FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'USA'))
SELECT AirportName FROM airports WHERE Country = "Jackson"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE country = 'APG')
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = 'APG')
SELECT count(*) FROM flights WHERE destairport = "ATO"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "ATO")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Jackson")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Jackson")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Jackson")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Jackson")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Syracuse") AND destairport IN (SELECT airportcode FROM airports WHERE city = "Ashley")
SELECT count(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE city = "Syracuse") AND destairport = (SELECT airportcode FROM airports WHERE city = "Ashley")
SELECT count(*) FROM flights WHERE airline = 'JetBlue'
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Jetblue")
SELECT count(*) FROM flights WHERE sourceairport = (SELECT airportcode FROM airports WHERE airportname = "ASY") AND airline = "JetBlue"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "ASY Airport")
SELECT count(*) FROM flights WHERE sourceairport = "AHD" AND airline = "JetBlue"
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "AHD")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE airportname = "Aberdeen")
SELECT count(*) FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Aberdeen")
SELECT city FROM flights GROUP BY city ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT City FROM flights GROUP BY City ORDER BY count(*) DESC LIMIT 1
SELECT City FROM airports GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) DESC LIMIT 1
SELECT airportcode FROM flights GROUP BY airportcode ORDER BY count(*) ASC LIMIT 1
SELECT airportcode FROM flights GROUP BY airline ORDER BY count(*) ASC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1
SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) DESC LIMIT 1
SELECT Abbreviation, Country FROM airlines GROUP BY Abbreviation ORDER BY count(*) ASC LIMIT 1
SELECT Abbreviation FROM airlines WHERE Airline IN (SELECT Airline FROM flights GROUP BY Airline ORDER BY count(*) ASC LIMIT 1)
SELECT Airline FROM airlines WHERE Airline IN (SELECT Airline FROM flights WHERE SourceAirport = 'AHD')
SELECT Airline FROM flights WHERE SourceAirport = "AHD"
SELECT Airline FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "AHD")
SELECT Airline FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "AHD")
SELECT Airline FROM flights WHERE SourceAirport IN ('APG', 'CVO')
SELECT Airline FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "APG") AND DestAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "CVO")
SELECT Airline FROM flights WHERE SourceAirport IN ('CVO') AND DestAirport IN ('APG')
SELECT Airline FROM flights WHERE DestAirport NOT IN (SELECT AirportCode FROM airports WHERE AirportCode = "APG")
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) >= 10
SELECT Airline FROM flights GROUP BY Airline HAVING count(*) < 200
SELECT Airline FROM flights GROUP BY Airline HAVING COUNT(*) < 200
SELECT FlightNo FROM flights WHERE airline IN (SELECT uid FROM airlines WHERE airline = "JetBlue")
SELECT FlightNo FROM flights WHERE Airline IN (SELECT uid FROM airlines WHERE Abbreviation = "JETBLUE")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode IN (SELECT AirportCode FROM airports WHERE Country = "APG"))
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "APG")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode IN ('APG'))
SELECT FlightNo FROM flights WHERE sourceairport IN (SELECT airportcode FROM airports WHERE city = "Jackson")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportCode = "Jackson")
SELECT FlightNo FROM flights WHERE SourceAirport IN (SELECT AirportCode FROM airports WHERE AirportName = "Jackson")
SELECT FlightNo FROM flights WHERE DestAirport IN (SELECT AirportCode FROM airports WHERE City = "Jackson")
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city IN ("Syracuse", "Jackson"))
SELECT count(*) FROM flights WHERE destairport IN (SELECT airportcode FROM airports WHERE city = "Syracuse" OR city = "Jackson")
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT sourceairport FROM flights UNION SELECT destairport FROM flights)
SELECT airportname FROM airports WHERE airportcode NOT IN (SELECT destairport FROM flights)
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id FROM documents
SELECT document_id FROM documents
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_name FROM documents WHERE document_description LIKE '%w%'
SELECT document_description FROM documents WHERE document_name = "Robbin CV"
SELECT document_description FROM documents WHERE document_name = "Robbin CV"
SELECT count(DISTINCT Template_ID) FROM Documents
SELECT count(DISTINCT Template_ID) FROM Documents
SELECT count(*) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "PPT"))
SELECT count(*) FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "PPT")
SELECT template_id FROM templates GROUP BY template_id
SELECT DISTINCT template_id FROM Documents GROUP BY template_id
SELECT date_effective_from FROM Templates ORDER BY date_effective_from ASC LIMIT 1
SELECT date_effective_from, date_effective_to FROM Templates GROUP BY Template_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT Template_ID FROM Documents GROUP BY Template_ID HAVING COUNT(*) > 1
SELECT template_id FROM templates WHERE template_id NOT IN (SELECT template_id FROM documents)
SELECT Template_ID FROM Templates WHERE Template_ID NOT IN (SELECT Template_ID FROM Documents)
SELECT count(*) FROM Templates
SELECT count(*) FROM Templates
SELECT Date_Effective_From, Template_Type_Code FROM Templates
SELECT Date_Effective_From, Template_Type_Code FROM Templates GROUP BY Template_Type_Code
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_from <= date_effective_to
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_from <= date_effective_to
SELECT Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description IN ("PP", "PPT"))
SELECT date_effective_from, date_effective_to FROM templates WHERE template_type_code IN (SELECT template_type_code FROM ref_template_types WHERE template_type_description IN (SELECT description FROM ref_template_types WHERE description LIKE '%PP%'))
SELECT Date_Effective_From, Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "CV")
SELECT Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "CV")
SELECT Date_Effective_From FROM Templates WHERE Version_Number > 5
SELECT Date_Effective_From, Template_Type_Code FROM Templates WHERE Version_Number > 5
SELECT date_effective_from, count(*) FROM templates GROUP BY date_effective_from
SELECT date_effective_from, count(*) FROM Templates GROUP BY date_effective_from
SELECT Date_Effective_To FROM Templates GROUP BY Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from FROM Templates ORDER BY date_effective_from ASC LIMIT 1
{"sql": "SELECT Date_Effective_From FROM Templates WHERE Date_Effective_To <= date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add(date_add
SELECT Date_Effective_To FROM Templates GROUP BY Date_Effective_To HAVING COUNT(*) < 3
SELECT min(version_number) FROM Templates WHERE date_effective_from <= date_effective_to
SELECT min(version_number) FROM Templates WHERE date_effective_from <= date_effective_to
SELECT Date_Effective_To FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents WHERE Document_Name = "Data base")
SELECT Date_Effective_To FROM Templates WHERE Template_ID IN (SELECT Template_ID FROM Documents WHERE Document_Name = "Data base")
SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code IN (SELECT template_type_code FROM ref_template_types WHERE template_type_description = "BK"))
{"sql": "SELECT document_name FROM documents WHERE template_id IN (SELECT template_id FROM templates WHERE template_type_code IN (SELECT template_type_code FROM ref_template_types WHERE template_type_code = \"BK\")")"}
SELECT date_effective_from, date_effective_to FROM Templates GROUP BY Template_Type_Code
SELECT date_effective_from, date_effective_to FROM Templates GROUP BY Template_Type_Code
SELECT date_effective_from FROM Templates GROUP BY date_effective_from ORDER BY count(*) DESC LIMIT 1
SELECT Date_Effective_To FROM Templates GROUP BY Date_Effective_To ORDER BY count(*) DESC LIMIT 1
SELECT date_effective_from, date_effective_to FROM Templates WHERE date_effective_from != ANY (SELECT date_effective_from FROM Documents) AND date_effective_to != ANY (SELECT date_effective_from FROM Documents)
SELECT Date_Effective_To FROM Templates WHERE Date_Effective_To NOT IN (SELECT Date_Effective_To FROM Documents)
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Code, Template_Type_Description FROM Ref_Template_Types
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Description FROM Ref_Template_Types WHERE Template_Type_Code = "AD"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Book"
SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description LIKE "%Book%"
SELECT DISTINCT template_type_description FROM templates WHERE template_type_code IN (SELECT template_type_code FROM documents)
SELECT DISTINCT Template_Details FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types))
SELECT Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation")
SELECT Date_Effective_To FROM Templates WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description = "Presentation")
SELECT player_id FROM matches GROUP BY player_id
SELECT player_name FROM matches
SELECT player_id FROM matches WHERE winner_id IN (SELECT player_id FROM players WHERE birth_date != '1900-01-01')
SELECT player_id FROM matches GROUP BY player_id
SELECT first_name, birth_date FROM players WHERE country_code = "USA"
SELECT first_name, birth_date FROM players WHERE country_code = "US"
SELECT avg(loser_age) FROM matches
SELECT avg(loser_age) FROM matches
SELECT winner_rank, loser_rank FROM matches
SELECT avg(loser_rank) FROM matches
SELECT max(winner_rank) FROM matches
SELECT winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 1
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT country_code) FROM players
SELECT count(DISTINCT loser_name) FROM matches
SELECT count(DISTINCT loser_name) FROM matches
SELECT tourney_name FROM matches GROUP BY tourney_name HAVING count(*) > 10
SELECT tourney_name FROM matches GROUP BY tourney_id HAVING count(*) > 10
SELECT winner_name FROM matches WHERE year IN (2013, 2016)
SELECT DISTINCT player_id FROM matches WHERE year IN (2013, 2016)
SELECT first_name FROM matches WHERE year IN (2013, 2016)
SELECT winner_name FROM matches WHERE year IN (2013, 2016)
SELECT country_code, first_name FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "WTA Championships")) AND player_id IN (SELECT winner_id FROM matches WHERE tourney_name = "Australian Open")
SELECT first_name, country_code FROM players WHERE player_id IN (SELECT winner_id FROM matches WHERE winner_name = "WTA Championships") AND player_id IN (SELECT winner_id FROM matches WHERE winner_name = "Australian Open")
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY birth_date DESC LIMIT 1
SELECT first_name, last_name FROM players ORDER BY birth_date ASC
SELECT first_name || ' ' || last_name FROM players ORDER BY birth_date DESC
SELECT first_name, last_name FROM players WHERE hand = "left" ORDER BY birth_date DESC
SELECT first_name FROM players WHERE hand = "Left" ORDER BY birth_date ASC
SELECT first_name, country_code FROM players JOIN rankings ON players.player_id = rankings.player_id GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT first_name, country_code FROM players ORDER BY tours DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT year FROM matches GROUP BY year ORDER BY count(*) DESC LIMIT 1
SELECT first_name, winner_rank_points FROM matches GROUP BY player_id ORDER BY winner_rank_points DESC LIMIT 1
SELECT player_id FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT winner_name FROM matches WHERE winner_id IN (SELECT player_id FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "Australian Open"))
SELECT winner_name FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE tourney_id IN (SELECT tourney_id FROM matches WHERE tourney_name = "Australian Open"))
SELECT winner_name FROM matches GROUP BY winner_id ORDER BY count(*) DESC LIMIT 1
SELECT winner_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT avg(loser_rank) FROM matches WHERE winner_id IN (SELECT player_id FROM players)
SELECT first_name FROM players WHERE player_id IN (SELECT player_id FROM rankings ORDER BY ranking_points ASC LIMIT 1)
SELECT player_id FROM rankings GROUP BY player_id
SELECT first_name || ' ' || last_name FROM players ORDER BY ranking_points DESC
SELECT count(*) FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code ORDER BY count(*) DESC LIMIT 1
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT country_code FROM players GROUP BY country_code HAVING count(*) > 50
SELECT count(*) FROM rankings GROUP BY ranking_date
SELECT count(*) FROM rankings GROUP BY ranking_date
SELECT year FROM matches GROUP BY year
SELECT year FROM matches GROUP BY year
SELECT winner_name, winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 3
SELECT first_name, winner_rank FROM matches ORDER BY winner_rank ASC LIMIT 3
SELECT count(DISTINCT winner_id) FROM matches WHERE winner_hand = "left"
SELECT count(*) FROM matches WHERE winner_hand = "Left"
SELECT winner_name FROM matches ORDER BY winner_rank_points DESC LIMIT 1
SELECT first_name, birth_date FROM players ORDER BY winner_rank_points DESC LIMIT 1
SELECT count(*) FROM players GROUP BY hand
SELECT count(*) FROM players GROUP BY hand
SELECT line_1, line_2, line_3, city, zip_postcode FROM addresses
SELECT line_1, line_2, line_3 FROM addresses WHERE other_address_details LIKE '%addresse%'
SELECT count(*) FROM show WHERE If_first_show = 1
SELECT count(*) FROM show WHERE if_first_show = 1
SELECT Name FROM conductor ORDER BY birthdate ASC
SELECT Name FROM conductor ORDER BY birthday
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Name FROM conductor WHERE Nationality = "American"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show WHERE If_first_show = 0
SELECT avg(Attendance) FROM show WHERE If_first_show = 0
SELECT max(Share) FROM performance WHERE Type != "Live final"
SELECT max(Share) FROM performance WHERE Type != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work ASC
SELECT Name FROM conductor ORDER BY birthday ASC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor JOIN orchestra ON conductor.Conductor_ID = orchestra.Conductor_ID
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID HAVING COUNT(*) > 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY count(*) DESC LIMIT 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra GROUP BY Conductor_ID ORDER BY count(*) DESC LIMIT 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra ORDER BY Year_of_Founded ASC LIMIT 1)
SELECT Name FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1)
SELECT DISTINCT Record_Company FROM orchestra GROUP BY Record_Company
SELECT count(*) FROM orchestra GROUP BY record_company
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Major_Record_Format FROM orchestra ORDER BY Year_of_Founded ASC
SELECT Record_Company FROM orchestra WHERE Year_of_Founded IN (SELECT Year_of_Founded FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1)
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra IN (SELECT orchestra FROM performance GROUP BY orchestra HAVING count(*) = 0)
SELECT Orchestra FROM orchestra WHERE Orchestra_ID NOT IN (SELECT Orchestra_ID FROM performance)
SELECT Record_Company FROM orchestra WHERE Year_of_Founded < 2003
SELECT Record_Company FROM orchestra WHERE Year_of_Founded > 2003 GROUP BY Record_Company
{"sql": "SELECT count(*) FROM show WHERE if_first_show = 1 AND performance_id IN (SELECT performance_id FROM performance WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra
{"sql": "SELECT count(*) FROM show WHERE if_first_show = 1 AND performance_id IN (SELECT performance_id FROM performance WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM orchestra WHERE orchestra_id IN (SELECT orchestra
SELECT Type FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show WHERE If_first_show = 0) GROUP BY Type HAVING count(*) > 1
SELECT Type FROM performance WHERE Performance_ID IN (SELECT Performance_ID FROM show WHERE If_first_show = 0 GROUP BY Type HAVING COUNT(*) > 1)
SELECT state FROM owners WHERE state IN (SELECT state FROM professionals)
SELECT state FROM owners WHERE state IN (SELECT state FROM professionals)
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT avg(age) FROM dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT professional_id, last_name, cell_number FROM Professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT professional_id FROM Professionals WHERE state = "Indiana" OR professional_id IN (SELECT professional_id FROM Treatments GROUP BY professional_id HAVING count(*) > 2)
SELECT name FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments WHERE cost_of_treatment > 1000)
SELECT name FROM dogs WHERE owner_id IN (SELECT owner_id FROM treatments GROUP BY owner_id HAVING sum(cost_of_treatment) > 1000)
SELECT first_name FROM professionals OR owners WHERE first_name NOT IN (SELECT name FROM dogs)
SELECT first_name FROM Professionals OR Professionals WHERE first_name != 'dog'
SELECT professional_id FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs) GROUP BY professional_id HAVING count(*) = 0
SELECT professional_id FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments)
SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1
SELECT owner_id FROM Dogs GROUP BY owner_id ORDER BY count(*) DESC LIMIT 1
SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) >= 2
SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2
SELECT breed_name FROM breeds ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM breeds GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT owner_id FROM treatments GROUP BY owner_id ORDER BY cost_of_treatment DESC LIMIT 1
SELECT owner_id FROM treatments GROUP BY owner_id ORDER BY cost_of_treatment DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code IN (SELECT treatment_type_code FROM Treatments GROUP BY treatment_type_code ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT treatment_type_description FROM Treatment_Types WHERE treatment_type_code IN (SELECT treatment_type_code FROM Treatments GROUP BY treatment_type_code ORDER BY cost_of_treatment ASC LIMIT 1)
SELECT owner_id FROM dogs GROUP BY owner_id ORDER BY sum(charge_amount) DESC LIMIT 1
SELECT owner_id FROM dogs GROUP BY owner_id ORDER BY sum(weight) DESC LIMIT 1
SELECT professional_id FROM treatments GROUP BY professional_id HAVING COUNT(*) >= 2
SELECT professional_id FROM treatments GROUP BY professional_id HAVING count(*) > 2
SELECT first_name || " " || last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments))
SELECT first_name || ' ' || last_name FROM Professionals WHERE professional_id IN (SELECT professional_id FROM Treatments WHERE cost_of_treatment < (SELECT avg(cost_of_treatment) FROM Treatments))
SELECT date_of_treatment FROM Treatments
SELECT date_of_treatment, professional_id FROM treatments
SELECT cost_of_treatment FROM Treatments
SELECT cost_of_treatment, treatment_type_description FROM treatments
SELECT owner_id FROM Dogs GROUP BY owner_id
SELECT owner_id FROM Dogs GROUP BY owner_id
SELECT owner_id, name FROM owners JOIN dogs ON dogs.owner_id = owners.owner_id
SELECT owner_id FROM dogs GROUP BY owner_id
SELECT breed_name FROM breeds ORDER BY breed_name DESC LIMIT 1
SELECT name, date_of_treatment FROM Dogs WHERE breed_code IN (SELECT breed_code FROM Breeds ORDER BY breed_name ASC LIMIT 1)
SELECT first_name, name FROM owners WHERE state = "VA"
SELECT first_name FROM owners WHERE state = "VA"
SELECT date_of_treatment FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs WHERE date_of_birth <= date_of_birth)
SELECT date_of_treatment FROM treatments WHERE date_of_treatment BETWEEN date_arrived AND date_departed
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT last_name FROM owners WHERE owner_id IN (SELECT owner_id FROM dogs ORDER BY age ASC LIMIT 1)
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT email_address FROM Professionals WHERE state = "HI" OR state = "WI"
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'A'
SELECT date_arrived, date_departed FROM Dogs WHERE abandoned_yn = 'A'
SELECT count(*) FROM treatments
SELECT count(*) FROM treatments
SELECT count(*) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs)
SELECT count(*) FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs)
SELECT first_name || ' ' || last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name || ' ' || last_name FROM Professionals WHERE city LIKE '%West%'
SELECT first_name || ' ' || last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name || ' ' || last_name FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE abandoned_yn = "Yes" AND age < (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE abandoned_yn = "No" AND age < (SELECT avg(age) FROM Dogs)
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM Dogs WHERE abandoned_yn = 'N' AND dog_id NOT IN (SELECT dog_id FROM Treatments)
SELECT count(*) FROM treatments
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs WHERE abandoned_yn = 'Y')
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs))
SELECT count(*) FROM Professionals WHERE professional_id NOT IN (SELECT professional_id FROM Treatments WHERE dog_id IN (SELECT dog_id FROM Dogs))
SELECT name, age, weight FROM Dogs WHERE abandoned_yn = 1
SELECT name, age, weight FROM dogs WHERE abandoned_yn = 1
SELECT avg(age) FROM Dogs WHERE abandoned_yn = 'A'
SELECT avg(age) FROM dogs WHERE abandoned_yn = 'Y'
SELECT max(age) FROM Dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type, charge_amount FROM Charges
SELECT charge_type, charge_amount FROM charges
SELECT max(charge_amount) FROM charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address, first_name, last_name FROM Professionals
SELECT email_address, first_name, last_name FROM Professionals
SELECT breed_code, size_code FROM Dogs GROUP BY breed_code, size_code
SELECT DISTINCT breed_code, size_code FROM Dogs
SELECT first_name, last_name FROM professionals WHERE professional_id IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs))
SELECT professional_id FROM treatments GROUP BY professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Name FROM singer ORDER BY Birth_Year ASC
SELECT Birth_Year, Citizenship FROM singer
SELECT Birth_Year, Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year < 1948
SELECT Name FROM singer WHERE Birth_Year <= 1948
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT Name FROM singer ORDER BY Birth_Year ASC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT citizenship FROM singer GROUP BY citizenship ORDER BY count(*) DESC LIMIT 1
SELECT citizenship FROM singer ORDER BY net_worthmillions DESC
SELECT citizenship FROM singer ORDER BY net_worth_millions DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT Title FROM song ORDER BY Sales DESC LIMIT 1
SELECT DISTINCT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song WHERE Sales > 300000)
SELECT DISTINCT Name FROM singer WHERE Net_Worth_Millions > 300000
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1)
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song GROUP BY Singer_ID HAVING COUNT(*) > 1)
SELECT Name FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song ORDER BY Highest_Position DESC LIMIT 1)
SELECT name FROM singer GROUP BY name ORDER BY highest_position DESC LIMIT 1
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Citizenship FROM singer WHERE Birth_Year <= 1945
SELECT Citizenship FROM singer WHERE Birth_Year < 1945
