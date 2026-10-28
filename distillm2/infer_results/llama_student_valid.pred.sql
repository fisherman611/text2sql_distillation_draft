SELECT COUNT(DISTINCT Singer_ID FROM singer) AS num_singers
SELECT COUNT(DISTINCT Singer_ID FROM singer) AS total_singers
SELECT DISTINCT s.Name, s.Country, s.Age FROM singer AS s JOIN concert AS c ON s.Singer_ID = c.Singer_ID ORDER BY c.Year - c.Year DESC
SELECT s.Name, c.Country, s.Age FROM singer AS s JOIN concert AS c ON s.Singer_ID = c.Singer_ID ORDER BY s.Age DESC
SELECT AVG(Age) AS average_age, MIN(Age) AS min_age, MAX(Age) AS max_age FROM (SELECT AVG(CASE WHEN Country = 'France' THEN Age END) AS average_age, MIN(Age) AS min_age, MAX(Age) AS max_age FROM singer WHERE Country = 'France') AS subquery
SELECT AVG(Age) AS average_age, MIN(Age) AS min_age, MAX(Age) AS max_age FROM (SELECT AVG(Age) AS average_age, MIN(Age) AS min_age, MAX(Age) AS max_age FROM singer WHERE Country = 'France') AS subquery
```sql
SELECT 
  s.Name AS singer_name, 
  s.Release_year AS release_year
FROM 
  singer s
  JOIN 
  concert c ON s.Singer_ID = c.Singer_ID
  JOIN 
  stadium st ON c.Stadium_ID = st.Stadium_ID
WHERE 
  s.Age = (SELECT MIN(Age) FROM singer WHERE Age = (SELECT MIN(Age) FROM singer WHERE Age = s.Age))
ORDER BY 
  s.Release_year ASC;
```

This query joins the `singer`, `concert`, and `stadium` tables based on the foreign keys, filters the results to only include singers who are the youngest, and then selects the `Name` and `Release_year` columns. The subquery in the `WHERE` clause finds the minimum age of all singers, and the outer query selects the minimum age of the singer who is the youngest. The results are ordered by `Release_year` in ascending order.
SELECT DISTINCT s.Name, s.Age FROM singer AS s JOIN concert AS c ON s.Singer_ID = c.Singer_ID WHERE c.Year = ( SELECT MIN(Year) FROM concert )
```json
{
  "sql": "SELECT DISTINCT C.Country FROM concert AS T1.concert_ID, singer_in_concert AS T2.singer_ID, singer AS T3.Singer_ID, stadium AS T4.Stadium_ID, singer AS T5.Name, (SELECT DISTINCT C.Country FROM concert AS T1.concert_ID, singer_in_concert AS T2.singer_ID, singer AS T3.Singer_ID, stadium AS T4.Stadium_ID, singer AS T5.Name, (SELECT DISTINCT C.Country FROM concert AS T1.concert_ID, singer_in_concert AS T2.singer_ID, singer AS T3.Singer_ID, stadium AS T4.Stadium_ID, singer AS T5.Name, (SELECT DISTINCT C.Country FROM concert AS T1.concert_ID, singer_in_concert AS T2.singer_ID, singer AS T3.Singer_ID, stadium AS T4.Stadium_ID, singer AS T5.Name, (SELECT DISTINCT C.Country FROM concert AS T1.concert_ID, singer_in_concert AS T2.singer_ID, singer AS T3.Singer_ID, stadium AS T4.Stadium_ID, singer AS T5.Name, (SELECT DISTINCT C.Country FROM concert AS T1.concert_ID
SELECT DISTINCT C.Name, S.Name AS Singer_Name FROM concert AS C JOIN singer_in_concert AS SI ON C.concert_ID = SI.concert_ID JOIN singer AS S ON SI.Singer_ID = S.Singer_ID WHERE C.Year > 20
SELECT DISTINCT C.Name, COUNT(DISTINCT S.Singer_ID) AS Number_of_Singers FROM concert AS C JOIN singer_in_concert AS SI ON C.concert_ID = SI.concert_ID JOIN singer AS S ON SI.Singer_ID = S.Singer_ID GROUP BY C.Name
SELECT DISTINCT C.Country, COUNT(*) AS num_singers FROM concert AS C JOIN singer_in_concert AS SI ON C.concert_ID = SI.concert_ID JOIN singer AS S ON SI.Singer_ID = S.Singer_ID GROUP BY C.Country
SELECT s.Name, AVG(s.Age) AS Average_Age FROM singer AS s JOIN concert AS c ON s.Singer_ID = c.Singer_ID GROUP BY s.Name HAVING AVG(s.Age) > (SELECT AVG(Age) FROM singer)
SELECT DISTINCT s.Name, s.Song_Name FROM singer AS s JOIN concert AS c ON s.Singer_ID = c.Singer_ID WHERE c.Year > (SELECT AVG(Average) FROM stadium) AND s.Age > (SELECT AVG(Age) FROM singer)
SELECT s.Name, s.Location, s.Capacity FROM stadium AS s JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year BETWEEN? AND? AND s.Capacity BETWEEN? AND?
SELECT s.Name, s.Location, s.Capacity FROM stadium AS s JOIN singer_in_concert AS si ON s.Stadium_ID = si.Stadium_ID WHERE s.Capacity BETWEEN 5000 AND 10000
SELECT MAX(CAST(Average as REAL) FROM stadium) AS max_capacity, AVG(CAST(Average as REAL) AS average FROM stadium) AS avg_stadium
SELECT AVG(Average) AS avg_capacity, MAX(Capacity) AS max_capacity FROM stadium WHERE Highest ='max' GROUP BY Highest
SELECT s.Name, AVG(s.Average) FROM stadium AS s JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID GROUP BY s.Name ORDER BY AVG(s.Average) DESC LIMIT 1
SELECT s.Name, AVG(s.Average) FROM stadium AS s JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID GROUP BY s.Name ORDER BY AVG(s.Average) DESC LIMIT 1
SELECT COUNT(*) FROM concert WHERE Year = 2014 OR Year = 2015
SELECT COUNT(*) FROM concert WHERE YEAR(concert.Year) IN (2014, 2015)
SELECT s.Name, COUNT(DISTINCT c.concert_ID) AS num_concerts FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN stadium AS s ON si.Stadium_ID = s.Stadium_ID GROUP BY s.Name
SELECT s.Name, COUNT(DISTINCT c.concert_ID) AS num_concerts FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN stadium AS s ON si.Singer_ID = s.Stadium_ID GROUP BY s.Name
SELECT s.Name, COUNT(DISTINCT c.Year) AS num_concerts FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN singer AS s ON si.Singer_ID = s.Singer_ID WHERE c.Year >= 2014 GROUP BY s.Name
SELECT s.Name, s.Capacity FROM stadium AS s JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year > 2013 GROUP BY s.Name ORDER BY s.Capacity DESC LIMIT 1
SELECT s.Name, COUNT(DISTINCT c.Year) AS num_concerts FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN singer AS s ON si.Singer_ID = s.Singer_ID GROUP BY s.Name ORDER BY COUNT(DISTINCT c.Year) DESC LIMIT 1
SELECT DISTINCT T1.Year FROM concert AS T1 JOIN singer_in_concert AS T2 ON T1.Year = T2.Year WHERE T1.Highest = T2.Highest AND T1.Lowest = T2.Lowest
SELECT DISTINCT s.Name FROM stadium AS s JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID WHERE c.Theme = NULL
SELECT DISTINCT s.Name FROM stadium AS s JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID WHERE c.concert_ID IS NULL
SELECT C.Name, C.Stadium_ID, C.Highest, C.Lowest FROM concert C JOIN singer_in_concert SI ON C.concert_ID = SI.concert_ID WHERE SI.Singer_ID IN (SELECT Singer_ID FROM singer WHERE Age > 40) AND SI.Singer_ID NOT IN (SELECT Singer_ID FROM singer WHERE Age < 30)
SELECT s.Name FROM stadium AS s LEFT JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year!= 2014
SELECT DISTINCT s.Name FROM stadium AS s LEFT JOIN concert AS c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year = 2014 AND c.Stadium_ID IS NULL
SELECT s.Name, COUNT(DISTINCT c.concert_Name) AS concert_count FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN singer AS s ON si.Singer_ID = s.Singer_ID GROUP BY s.Name
SELECT DISTINCT C.Name, S.Name AS Singer_Name, COUNT(C.Singer_ID) AS Number_of_Singers FROM concert AS C JOIN singer_in_concert AS SI ON C.concert_ID = SI.concert_ID JOIN singer AS S ON SI.Singer_ID = S.Singer_ID GROUP BY C.Name, S.Name
SELECT s.Name, COUNT(DISTINCT c.concert_ID) AS num_concerts FROM singer_in_concert AS ci JOIN concert AS c ON ci.concert_ID = c.concert_ID JOIN stadium AS s ON c.Stadium_ID = s.Stadium_ID GROUP BY s.Name
SELECT DISTINCT s.Name, COUNT(DISTINCT c.concert_ID) AS num_concerts FROM singer_in_concert AS ci JOIN concert AS c ON ci.concert_ID = c.concert_ID JOIN stadium AS s ON c.Stadium_ID = s.Stadium_ID GROUP BY s.Name
SELECT DISTINCT s.Name FROM singer_in_concert AS ci INNER JOIN concert AS c ON ci.concert_ID = c.concert_ID INNER JOIN stadium AS s ON c.Stadium_ID = s.Stadium_ID WHERE c.Year = 2014
SELECT DISTINCT s.Name FROM singer_in_concert AS ci INNER JOIN concert AS c ON ci.concert_ID = c.concert_ID INNER JOIN stadium AS s ON c.Stadium_ID = s.Stadium_ID WHERE c.Year = 2014
SELECT DISTINCT s.Name, s.Country FROM singer AS s JOIN concert AS c ON s.Singer_ID = c.Singer_ID WHERE c.Stadium_ID = ( SELECT Stadium_ID FROM stadium WHERE Name = 'Hey' )
SELECT s.Name, s.Country, s2.Name AS Country_of_origin FROM singer AS s JOIN singer_in_concert AS si ON s.Singer_ID = si.Singer_ID JOIN concert AS c ON si.concert_ID = c.concert_ID JOIN stadium AS s ON c.Stadium_ID = s.Stadium_ID WHERE c.Theme LIKE '%Hey%' AND s.Age > 18
SELECT s.Name, s.Location, c.Stadium_Name AS Stadium_Name FROM stadium s JOIN concert c ON s.Stadium_ID = c.Stadium_ID WHERE c.Year IN (2014, 2015) AND s.Highest = c.Stadium_Name
SELECT s.Name, s.Location, c.Stadium_Name FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN stadium AS s ON si.Stadium_ID = s.Stadium_ID WHERE c.Year IN (2014, 2015) GROUP BY s.Name, s.Location, c.Stadium_Name
SELECT COUNT(*) FROM concert AS T1 JOIN stadium AS T2 ON T1.Stadium_ID = T2.Stadium_ID WHERE T1.Highest = (SELECT MAX(Capacity) FROM stadium) GROUP BY T1.Stadium_ID
SELECT s.Name, COUNT(DISTINCT c.concert_ID) AS num_concerts FROM concert AS c JOIN singer_in_concert AS si ON c.concert_ID = si.concert_ID JOIN singer AS s ON si.Singer_ID = s.Singer_ID GROUP BY s.Name ORDER BY s.Name DESC LIMIT 1
SELECT COUNT(*) FROM Pets WHERE weight > 10
SELECT DISTINCT p.weight FROM Pets AS p JOIN Has_Pet AS h ON p.PetID = h.PetID WHERE p.weight > 10
SELECT DISTINCT LName, Fname, Age FROM Student WHERE Age = ( SELECT MIN(Age) FROM Student )
SELECT DISTINCT SUM(weight) FROM Pets WHERE pet_age = ( SELECT MIN(pet_age) FROM Pets )
SELECT p.PetType, MAX(p.weight) AS max_weight FROM Pets p JOIN Has_Pet h ON p.PetID = h.PetID GROUP BY p.PetType
SELECT p.PetType, MAX(p.weight) AS max_weight, p.type FROM Pets p JOIN Has_Pet h ON p.PetID = h.PetID GROUP BY p.type
SELECT DISTINCT COUNT(*) FROM Students AS T1 INNER JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T1.Age > 20
SELECT DISTINCT StuID FROM Student WHERE Age > 20
SELECT COUNT(DISTINCT StuID) FROM Has_Pet WHERE PetType = 'dog' AND Sex = 'F'
SELECT DISTINCT COUNT(DISTINCT StuID) FROM Has_Pet WHERE PetType = 'dog'
SELECT DISTINCT PetType FROM Pets
SELECT DISTINCT PetType FROM Pets
SELECT DISTINCT Fname FROM Student WHERE Has_Pet.PetID IN (SELECT PetID FROM Has_Pet WHERE PetType = 'cat' OR PetType = 'dog')
SELECT DISTINCT Fname FROM Student WHERE Has_Pet.PetID IN (SELECT PetID FROM Has_Pet WHERE PetType = 'cat' OR PetType = 'dog')
SELECT DISTINCT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat' AND PetID IN (SELECT PetID FROM Pets WHERE PetType = 'dog'))
SELECT DISTINCT Fname FROM Student AS T1 INNER JOIN Has_Pet AS T2 ON T1.StuID = T2.StuID WHERE T2.PetType = 'cat' AND T2.PetID IN (SELECT PetID FROM Has_Pet WHERE PetType = 'dog')
SELECT S.StuID, S.Fname, S.LName, S.Age, S.Major, S.Advisor, COALESCE(P.PetType, 'Unknown') AS PetType FROM Student AS S LEFT JOIN Has_Pet AS H ON S.StuID = H.StuID WHERE H.PetID IS NULL
SELECT S.Major, S.Age FROM Student AS S JOIN Has_Pet AS H ON S.StuID = H.StuID WHERE H.PetID IS NULL
SELECT StuID FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetID = 'cat')
SELECT DISTINCT StuID FROM Student WHERE NOT EXISTS (SELECT 1 FROM Has_Pet WHERE StuID = StuID)
SELECT DISTINCT Fname, Age FROM Student WHERE Has_Pet.StuID NOT IN (SELECT StuID FROM Has_Pet WHERE PetType = 'dog')
SELECT DISTINCT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'dog') EXCEPT SELECT DISTINCT Fname FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet WHERE PetType = 'cat')
SELECT StuID, LName, Fname, Age, Sex, Major, Advisor, pet_age, weight FROM ( SELECT StuID, LName, Fname, Age, Sex, Major, Advisor, MIN(pet_age) AS min_age FROM Has_Pet GROUP BY StuID, LName, Fname, Sex, Major, Advisor, pet_age ) AS subquery WHERE pet_age = ( SELECT MIN(pet_age) FROM Pets )
SELECT DISTINCT T1.pet_type, T1.weight FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID WHERE T1.pet_age = ( SELECT MIN(T1.pet_age) FROM Pets AS T1 JOIN Has_Pet AS T2 ON T1.PetID = T2.PetID )
SELECT StuID, weight FROM Pets WHERE pet_age > 1
SELECT DISTINCT StuID, weight FROM Pets WHERE pet_age > 1
SELECT AVG(Age) AS avg_age, MAX(pet_age) AS max_age FROM (SELECT pet_age FROM Pets GROUP BY pet_type) AS p
SELECT AVG(p1.pet_age) AS avg_age, MAX(p1.pet_age) AS max_age FROM Pets p1 JOIN Has_Pet h1 ON p1.PetID = h1.PetID JOIN Student s1 ON h1.StuID = s1.StuID GROUP BY s1.StuID
SELECT AVG(weight) AS avg_weight FROM Pets GROUP BY PetType
SELECT PetType, AVG(weight) AS avg_weight FROM (SELECT DISTINCT PetType FROM Pets GROUP BY PetType) AS subquery JOIN Has_Pet ON subquery.PetID = Has_Pet.PetID GROUP BY subquery.PetType ORDER BY avg_weight DESC LIMIT 1
SELECT DISTINCT Fname, Age FROM Student WHERE Has_Pet.StuID = 1
SELECT DISTINCT Fname, Age FROM Student WHERE Has_Pet IS NOT NULL
SELECT StuID FROM Student WHERE LName = 'Smith'
SELECT StuID FROM Student WHERE LName = 'Smith'
SELECT S.StuID, COUNT(DISTINCT S.StuID) AS num_students_with_pet FROM Has_Pet AS H JOIN Student AS S ON H.StuID = S.StuID WHERE H.PetID IS NOT NULL GROUP BY S.StuID
SELECT StuID, COUNT(DISTINCT LName) AS PetCount FROM Has_Pet GROUP BY StuID
SELECT DISTINCT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(PetID) > 1) AND NOT EXISTS (SELECT 1 FROM Pets WHERE PetID IN (SELECT PetID FROM Has_Pet WHERE StuID =?))
SELECT DISTINCT Fname, Sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_Pet GROUP BY StuID HAVING COUNT(PetID) > 1)
SELECT LName FROM Student WHERE Age = 3 AND Has_Pet.PetID IN (SELECT PetID FROM Pets WHERE pet_age = 3)
SELECT LName FROM Student WHERE Age = 3 AND Has_Pet.PetID IN (SELECT PetID FROM Pets WHERE pet_age = 3)
SELECT AVG(Age) FROM Student WHERE NOT EXISTS (SELECT 1 FROM Has_Pet WHERE StuID = Student.StuID)
SELECT AVG(Age) FROM Student WHERE NOT EXISTS (SELECT 1 FROM Has_Pet WHERE StuID = Student.StuID)
SELECT COUNT(DISTINCT Continent) FROM continents
SELECT COUNT(DISTINCT Continent) FROM continents
SELECT c.Continent, COUNT(DISTINCT c.Continent) AS num_countries FROM continents c JOIN countries AS t ON c.Continent = t.Continent GROUP BY c.Continent
SELECT DISTINCT c.Continent, c.ContinentId, COUNT(DISTINCT c.CountryId) AS num_countries FROM continents c JOIN countries ON c.Continent = countries.Continent GROUP BY c.Continent
SELECT COUNT(DISTINCT CountryName FROM countries WHERE Continent = 'Asia')
SELECT COUNT(DISTINCT CountryId) FROM countries
SELECT DISTINCT COUNT(DISTINCT T1.Maker, T2.CountryName) AS maker_count FROM car_makers AS T1 INNER JOIN countries AS T2 ON T1.CountryId = T2.CountryId
SELECT DISTINCT c.FullName, COUNT(DISTINCT m.Id) AS num_models FROM car_makers m JOIN car_names c ON m.Id = c.MakeId JOIN model_list ml ON c.Model = ml.Model WHERE m.Country = 'USA' GROUP BY c.FullName
SELECT MIN(Horsepower) FROM cars_data WHERE MPG > 0
SELECT DISTINCT Model FROM cars_data WHERE Horsepower = ( SELECT MIN(Horsepower) FROM cars_data )
```json
{
  "sql": "SELECT m.Model, AVG(c.Weight) AS avg_weight FROM cars_data c JOIN model_list m ON c.Id = m.ModelId WHERE c.Weight < (SELECT AVG(c.Weight) FROM cars_data c WHERE c.Id IN (SELECT Id FROM cars_data c WHERE c.Id IN (SELECT Id FROM cars_data c WHERE c.Id IN (SELECT Id FROM cars_data c WHERE c.Id IN (SELECT Id FROM cars_data c WHERE c.Id IN (SELECT Id FROM cars_data c WHERE c.Id IN (SELECT Id FROM countries WHERE Continent = 'Asia'))))) WHERE c.Weight < (SELECT AVG(c.Weight) FROM cars_data c WHERE c.Id IN (SELECT Id FROM cars_data c WHERE c.Id IN (SELECT Id FROM countries WHERE Continent = 'Asia'))))",
}
```

This query works as follows:

- It selects the model from the `cars_data` table where the weight is less than the average weight of all cars in Asia.
- It joins the `cars_data` table with the `model_list` table on the `Id` column.
- It then joins the `cars_data` table with the `countries` table on the `Id` column to get the average weight of all cars in Asia.
- The
SELECT DISTINCT c.Weight FROM cars_data AS c JOIN model_list AS m ON c.Id = m.Model WHERE m.Maker = 'Toyota' AND c.Weight < (SELECT AVG(Weight) FROM cars_data)
SELECT DISTINCT M.FullName FROM car_makers AS M JOIN cars_data AS C ON M.Id = C.CountryId WHERE C.Year = 1970
SELECT DISTINCT A.Airline, A.AirportName FROM airports AS A JOIN flights AS F ON A.AirportCode = F.SourceAirport WHERE F.Airline = 'AKO'
SELECT DISTINCT AirportName FROM airports WHERE City = 'Aberdeen'
SELECT DISTINCT AirportName FROM airports WHERE CountryAbbrev = 'AB' OR CountryAbbrev = 'GB' OR CountryAbbrev = 'UK'
SELECT DISTINCT COUNT(*) FROM flights WHERE SourceAirport = 'APG'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = 'APG'
SELECT DISTINCT COUNT(*) FROM flights AS f1 INNER JOIN airports AS f2 ON f1.DestAirport = f2.AirportCode WHERE f1.Airline = 'ATO'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = 'ATL'
SELECT DISTINCT COUNT(*) FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE SourceAirport = 'Aberdeen'
SELECT DISTINCT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = 'ABERDEEN'
SELECT COUNT(DISTINCT SourceAirport) FROM flights WHERE DestAirport = 'ABERDEEN'
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode WHERE a.City = 'Aberdeen'
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.DestAirport = a.AirportCode
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.DestAirport = a.AirportCode WHERE a.Country = 'USA'
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.DestAirport = a.AirportCode
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.DestAirport = a.AirportCode WHERE a.AirportName = 'ASY'
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = 'ASY' AND SourceAirport = 'ASY'
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.SourceAirport = a.AirportCode WHERE a.CountryAbbrev = 'USA' AND f.Airline = 'United Airlines'
SELECT COUNT(DISTINCT SourceAirport) FROM flights WHERE DestAirport = 'AHD' AND SourceAirport IS NOT NULL
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.DestAirport = a.AirportCode WHERE a.City = 'Aberdeen'
SELECT COUNT(DISTINCT SourceAirport) FROM flights WHERE DestAirport = 'Aberdeen'
SELECT DISTINCT City FROM airports WHERE City IN (SELECT City FROM flights GROUP BY City ORDER BY COUNT(*) DESC LIMIT 1)
SELECT DISTINCT T1.Airline, T1.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airline, T1.AirportName ORDER BY COUNT(T1.Airline) DESC LIMIT 1
SELECT DISTINCT T1.City, COUNT(DISTINCT T1.FlightNo) AS DepartureCount FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.City ORDER BY DepartureCount DESC LIMIT 1
SELECT DISTINCT T1.Airline, T1.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.SourceAirport = T2.AirportCode WHERE T1.Airline = ( SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT DISTINCT T1.Airline, T1.AirportCode FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode WHERE T1.Airline = ( SELECT Airline FROM flights GROUP BY Airline ORDER BY COUNT(DISTINCT DestAirport) DESC LIMIT 1 )
SELECT DISTINCT T1.AirportCode FROM airports AS T1 INNER JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport WHERE T2.Airline = 'X' GROUP BY T1.AirportCode ORDER BY COUNT(T2.Airline) DESC LIMIT 1
SELECT DISTINCT a.Airline, a.AirportCode, COUNT(f.FlightNo) AS num_flights FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode GROUP BY a.Airline, a.AirportCode ORDER BY COUNT(f.FlightNo) ASC LIMIT 1
SELECT DISTINCT a.Airline, a.AirportName, COUNT(f.FlightNo) AS numFlights FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode GROUP BY a.Airline, a.AirportName ORDER BY COUNT(f.FlightNo) ASC LIMIT 1
SELECT DISTINCT T1.Airline, COUNT(DISTINCT T1.FlightNo) AS num_flights FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode GROUP BY T1.Airline
SELECT DISTINCT T1.Airline, T2.AirportName FROM flights AS T1 JOIN airports AS T2 ON T1.DestAirport = T2.AirportCode
SELECT A.Abbreviation, A.CountryAbbrev FROM airlines A JOIN flights F ON A.uid = F.Airline WHERE COUNT(DISTINCT F.AirportCode) = ( SELECT MIN(COUNT(DISTINCT F.AirportCode) FROM flights ) FROM flights )
SELECT DISTINCT Abbreviation, Country FROM airlines WHERE FlightNo = ( SELECT MIN(FlightNo) FROM flights GROUP BY FlightNo )
SELECT DISTINCT A.Airline, A.Abbreviation, A.CountryAbbrev FROM airlines A JOIN flights F ON A.Airline = F.Airline WHERE F.SourceAirport = 'AHD'
SELECT DISTINCT A.Airline, A.Abbreviation, A.CountryAbbrev FROM airlines AS A JOIN flights AS F ON A.uid = F.Airline WHERE F.SourceAirport = 'AHD'
SELECT DISTINCT A.Airline, A.Abbreviation, A.CountryAbbrev FROM airlines A JOIN flights F ON A.Airline = F.Airline AND F.SourceAirport = A.AirportCode WHERE F.AirportCode = 'AHD'
SELECT DISTINCT A.Airline, A.Abbreviation, A.CountryAbbrev FROM airlines A JOIN flights F ON A.Airline = F.Airline WHERE F.DestAirport = 'AHD'
SELECT DISTINCT a.Airline, a.Abbreviation, a.Country, f.AirportName AS DestAirportName, f.AirportCode AS SourceAirportCode FROM airlines a JOIN airports b ON a.AirportCode = b.AirportCode JOIN flights f ON a.Airline = f.Airline AND b.AirportCode = f.DestAirport WHERE b.AirportCode = 'APG' OR b.AirportCode = 'CVO'
SELECT DISTINCT A.Airline, A.Abbreviation, A.CountryAbbrev FROM airlines A JOIN flights F ON A.Airline = F.Airline AND F.SourceAirport = A.AirportCode WHERE F.DestAirport IN (SELECT AirportCode FROM airports WHERE CountryAbbrev = 'APG')
SELECT DISTINCT a.Airline, a.Abbreviation, a.Country, f.AirportName AS DestAirportName FROM airlines a JOIN flights f ON a.Airline = f.Airline AND f.SourceAirport = a.AirportCode WHERE a.Airline!= 'APG' AND f.AirportCode!= 'CVO'
SELECT DISTINCT A.Airline, A.Abbreviation, A.CountryAbbrev FROM airlines A JOIN flights F ON A.Airline = F.Airline WHERE F.SourceAirport NOT IN (SELECT AirportCode FROM airports WHERE CountryAbbrev = 'US')
SELECT DISTINCT A.Airline, A.Abbreviation, A.Country, COUNT(DISTINCT F.FlightNo) AS num_flights FROM airlines A JOIN flights F ON A.Airline = F.Airline GROUP BY A.Airline, A.Abbreviation, A.Country HAVING COUNT(DISTINCT F.FlightNo) >= 10
SELECT DISTINCT A.Airline, A.Abbreviation, COUNT(DISTINCT F.FlightNo) AS numFlights FROM flights F JOIN airports A ON F.DestAirport = A.AirportCode GROUP BY A.Airline, A.Abbreviation HAVING COUNT(DISTINCT F.FlightNo) >= 10
SELECT DISTINCT A.Airline, A.Abbreviation, COUNT(DISTINCT F.FlightNo) AS FlightCount FROM airlines A JOIN flights F ON A.Airline = F.Airline GROUP BY A.Airline, A.Abbreviation HAVING COUNT(DISTINCT F.FlightNo) < 200
SELECT DISTINCT A.Airline, A.Abbreviation, COUNT(DISTINCT F.FlightNo) AS FlightCount FROM airlines A JOIN flights F ON A.uid = F.Airline GROUP BY A.Airline, A.Abbreviation HAVING COUNT(DISTINCT F.FlightNo) < 200
SELECT DISTINCT Airline FROM flights WHERE DestAirport = 'United Airlines'
SELECT DISTINCT FlightNo FROM flights WHERE DestAirport = 'United'
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode
SELECT DISTINCT M.FullName FROM car_makers AS M JOIN countries AS C ON M.CountryId = C.CountryId WHERE C.Continent = 'North America' AND YEAR(CarYear) = 1970
SELECT DISTINCT c.Make, c.Year FROM cars_data c JOIN continents ON c.Continent = continents.ContId JOIN countries ON c.Country = countries.CountryId JOIN car_makers ON c.Maker = car_makers.Id JOIN model_list ON c.Model = model_list.Model JOIN cars_data ON c.Model = cars_data.ModelId
SELECT DISTINCT T1.Maker, T1.Year FROM car_makers AS T1 INNER JOIN cars_data AS T2 ON T1.Id = T2.Maker WHERE T2.Year = ( SELECT MIN(Year) FROM cars_data )
SELECT DISTINCT Model FROM car_makers WHERE Year > 1980
SELECT DISTINCT C.Maker, C.Continent, COUNT(*) as num FROM cars_data c JOIN model_list m ON c.Model = m.Model JOIN countries c2 ON c2.CountryId = c.CountryId JOIN continents c3 ON c3.Continent = c.Continent WHERE c.Year > 1980 GROUP BY C.Maker, C.Continent
SELECT DISTINCT C.Continent, COUNT(CountryId) AS count FROM continents AS C JOIN countries AS T1 ON C.Continent = T1.Continent JOIN car_makers AS T2 ON T1.Continent = T2.Continent JOIN car_names AS T3 ON T2.Country = T3.CountryId JOIN model_list AS T4 ON T3.Model = T4.Model GROUP BY C.Continent
SELECT DISTINCT C.Continent, COUNT(DISTINCT C.Id) AS num_makers FROM continents AS C JOIN car_makers AS M ON C.Continent = M.Continent GROUP BY C.Continent
SELECT DISTINCT CountryName FROM countries WHERE COUNT(DISTINCT Id) = ( SELECT COUNT(DISTINCT T1.CountryId) FROM car_makers AS T1 INNER JOIN countries AS T2 ON T1.CountryId = T2.CountryId )
SELECT DISTINCT C.CountryName FROM countries AS C JOIN car_makers AS M ON C.CountryId = M.CountryId JOIN model_list AS ML ON M.Id = ML.Maker AND C.Continent = ML.Continent GROUP BY C.CountryName ORDER BY COUNT(*) DESC LIMIT 1
```sql
SELECT 
  COUNT(DISTINCT T1.Maker, T2.CountryName) AS maker_count,
  T2.FullName AS maker_full_name
FROM 
  car_makers AS T1
  JOIN countries AS T2 ON T1.CountryId = T2.CountryId
  JOIN model_list AS T3 ON T1.Id = T3.Maker
  JOIN cars_data AS T4 ON T3.Model = T4.MakeId
GROUP BY 
  T1.Maker, T2.CountryName
ORDER BY 
  maker_count DESC;
```

This query will return a JSON object with the count of car models produced by each maker and the maker's full name. The `DISTINCT` keyword ensures that each maker is only counted once, even if they produce multiple models. The `GROUP BY` clause groups the results by maker and country, and the `ORDER BY` clause sorts the results in descending order by the count of models produced by each maker.
SELECT DISTINCT m.FullName, COUNT(*) as num_models, c.Name as maker_name FROM car_makers m JOIN countries c ON m.Country = c.CountryId GROUP BY m.FullName
SELECT DISTINCT Accelerate FROM cars_data WHERE Make = 'amc hornet sportabout'
SELECT DISTINCT c.MPG, c.Weight FROM cars_data AS c JOIN model_list AS m ON c.Id = m.Model WHERE m.Make = 'amc' AND c.Model = 'hornet sportabout'
SELECT COUNT(DISTINCT CountryId) FROM car_makers WHERE CountryId IN (SELECT CountryId FROM countries WHERE Continent = 'France')
SELECT COUNT(DISTINCT C.CountryName FROM countries AS C JOIN car_makers AS M ON C.CountryId = M.CountryId JOIN model_list AS ML ON M.Id = ML.Maker AND C.Continent = ML.Continent) AS makers
SELECT COUNT(DISTINCT ModelId FROM car_makers WHERE CountryId IN (SELECT ContinentId FROM continents WHERE CountryName = 'USA') OR (SELECT Id FROM countries WHERE CountryName = 'USA')
SELECT COUNT(DISTINCT ModelId FROM car_makers WHERE CountryId IN (SELECT ContinentId FROM continents WHERE CountryName = 'United States') OR (SELECT Id FROM countries WHERE CountryName = 'United States')
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT AVG(MPG) FROM cars_data WHERE Cylinders = 4
SELECT DISTINCT T1.Weight FROM cars_data AS T1 INNER JOIN car_makers AS T2 ON T1.Id = T2.Id WHERE T1.Cylinders = 8 AND T1.Year = 1974
SELECT DISTINCT MIN(Weight) FROM cars_data WHERE Year = 1974
SELECT DISTINCT Maker, Model FROM car_makers
SELECT DISTINCT M.FullName, C.CountryName FROM car_makers AS M JOIN countries AS C ON M.CountryId = C.CountryId
SELECT DISTINCT C.CountryName, C.Continent FROM countries C JOIN car_makers M ON C.CountryId = M.CountryId JOIN model_list ML ON M.Id = ML.Maker JOIN cars_data C ON ML.Model = C.Model WHERE C.Continent = 'Asia' OR C.Continent = 'Europe'
SELECT DISTINCT C.CountryName, C.Id FROM countries C JOIN car_makers M ON C.CountryId = M.CountryId JOIN model_list ML ON M.Id = ML.Maker JOIN cars_data MD ON ML.Model = MD.MakeId WHERE MD.Id IS NOT NULL
SELECT DISTINCT C.Horsepower FROM cars_data AS C JOIN car_makers AS T1 ON C.Maker = T1.CountryId WHERE C.Horsepower > 150
SELECT COUNT(*) FROM cars_data WHERE horsepower > 150
SELECT AVG(Weight) AS avg_weight FROM cars_data WHERE Year = 2020
SELECT AVG(Weight) AS avg_weight, YEAR(Year) AS year FROM cars_data GROUP BY YEAR(Year)
SELECT DISTINCT C.CountryName FROM countries AS C JOIN car_makers AS M ON C.CountryId = M.CountryId JOIN model_list AS ML ON M.Id = ML.Maker AND C.Continent = ML.Continent WHERE C.Continent IN ('Europe', 'Europe') AND COUNT(DISTINCT M.Id) >= 3
SELECT DISTINCT C.CountryName FROM countries AS C JOIN car_makers AS M ON C.CountryId = M.CountryId JOIN model_list AS ML ON M.Id = ML.Maker JOIN cars_data AS CD ON ML.Model = CD.Model WHERE CD.Horsepower > 0 AND CD.Weight > 0 AND C.Continent = 'Europe' AND M.CountryId IN (SELECT CountryId FROM countries WHERE Continent = 'Europe')
SELECT MAX(Horsepower), Make FROM car_makers WHERE Cylinders = 3 GROUP BY Make
SELECT MAX(Horsepower) AS horsepower FROM cars_data WHERE Cylinders = 3 AND Maker = ( SELECT Id FROM car_makers WHERE FullName = 'Toyota')
SELECT MAX(MPG) FROM cars_data WHERE Edispl = ( SELECT MAX(Edispl) FROM cars_data )
SELECT DISTINCT T1.Model FROM car_makers AS T1 JOIN cars_data AS T2 ON T1.Id = T2.Maker
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Horsepower) FROM cars_data WHERE Year < 1980
SELECT AVG(Edispl) FROM cars_data WHERE Make = 'Volvo'
SELECT AVG(Edispl) FROM cars_data WHERE Make = 'Volvo'
SELECT MAX(Accelerate) FROM cars_data WHERE Cylinders = ( SELECT MAX(Cylinders) FROM cars_data )
SELECT DISTINCT C.Cylinders FROM continents AS T1 INNER JOIN car_makers AS T2 ON T1.Continent = T2.Continent INNER JOIN model_list AS T3 ON T2.Country = T3.CountryId INNER JOIN cars_data AS T4 ON T3.Model = T4.MakeId ORDER BY T4.Accelerate DESC LIMIT 1
SELECT DISTINCT M.FullName FROM car_makers AS M JOIN model_list AS ML ON M.Id = ML.Maker AND M.Country = ML.CountryId ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT COUNT(DISTINCT T1.ModelName FROM car_makers AS T1 JOIN model_list AS T2 ON T1.Id = T2.Maker) AS model_versions
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 4
SELECT COUNT(DISTINCT C.Id FROM car_makers AS C JOIN cars_data AS CD ON C.Id = CD.CountryId WHERE CD.Year = 1980)
SELECT COUNT(DISTINCT C.Id FROM car_makers AS C JOIN countries AS T ON C.CountryId = T.CountryId WHERE T.Year = 1980)
SELECT DISTINCT COUNT(*) FROM car_makers AS T1 INNER JOIN countries AS T2 ON T1.CountryId = T2.CountryId WHERE T1.FullName LIKE '%American%'
SELECT COUNT(DISTINCT ModelId) FROM car_makers AS T1 JOIN model_list AS T2 ON T1.CountryId = T2.CountryId
SELECT DISTINCT c.FullName, m.Id FROM car_makers m JOIN countries c ON m.CountryId = c.ContinentId JOIN model_list ml ON m.Id = ml.Maker JOIN cars_data md ON ml.Model = md.MakeId WHERE md.Id > 3
SELECT DISTINCT M.Id, M.FullName FROM car_makers AS M JOIN model_list AS M2 ON M.Id = M2.Maker AND M2.Model = car_makers.Model WHERE M2.ModelId > 3
SELECT DISTINCT M.FullName FROM car_makers AS M JOIN cars_data AS C ON M.Id = C.CountryId WHERE C.Weight > 3500
SELECT DISTINCT C.Maker, C.FullName, COALESCE(CM.Maker, 'Unknown') AS MakerName FROM car_makers C JOIN countries COALESCE(CM.Country, 'Unknown') ON C.CountryId = CO.Latitude JOIN continents CO ON C.Continent = CO.ContinentId JOIN cars_data COALESCE(CD.MakeId, 'Unknown') ON C.Maker = CO.MakeId JOIN model_list COALESCE(CD.Model, 'Unknown') ON C.Model = CO.Model WHERE CO.Weight > 3500
SELECT DISTINCT Year FROM cars_data WHERE Weight BETWEEN 3000 AND 4000
SELECT DISTINCT Year, Weight FROM cars_data WHERE Weight < 4000 INTERSECT SELECT DISTINCT Year FROM cars_data WHERE Weight > 3000
SELECT MAX(Horsepower) FROM cars_data WHERE Accelerate = ( SELECT MAX(Accelerate) FROM cars_data )
SELECT MAX(Horsepower) FROM cars_data WHERE Accelerate = ( SELECT MAX(Accelerate) FROM cars_data )
```json
{
  "sql": "SELECT COUNT(DISTINCT C.Cylinders FROM cars_data AS C JOIN model_list AS M ON C.Model = M.Model WHERE C.Id = ( SELECT MIN(Id) FROM cars_data AS C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars
SELECT COUNT(DISTINCT C.Cylinders FROM cars_data AS C JOIN model_list AS M ON C.MakeId = M.Id WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Id = ( SELECT Id FROM cars_data AS C WHERE C.Accelerate = ( SELECT MIN(Accelerate) FROM cars_data C1 JOIN cars_data AS C2 ON C1.Id = C2.Id WHERE C1.Year = C2.Year AND C1.Accelerate = C2.Accelerate ) ) )
SELECT c1.Id, c1.Horsepower, c1.Accelerate, COUNT(DISTINCT c2.Id) AS num_cars FROM cars_data c1 JOIN car_makers c2 ON c1.Maker = c2.CountryId WHERE c1.Horsepower > (SELECT MAX(Horsepower) FROM cars_data c2 WHERE c2.Horsepower = c1.Horsepower) GROUP BY c1.Id, c1.Accelerate
SELECT COUNT(*) FROM cars_data AS T1 INNER JOIN car_makers AS T2 ON T1.Maker = T2.CountryId WHERE T1.Horsepower > (SELECT MAX(Horsepower) FROM cars_data AS T3) GROUP BY T1.Maker
```json
{
  "sql": "SELECT COUNT(DISTINCT C.CountryId) AS num_countries "
  + "FROM car_makers AS C "
  + "JOIN countries AS M ON C.CountryId = M.CountryId "
  + "WHERE C.Maker NOT IN (SELECT Id FROM car_makers) "
  + "GROUP BY C.CountryId"
}
```

This query counts the number of countries with more than 2 car makers, excluding the makers of the countries that are also car makers.
```json
{
  "sql": "SELECT COUNT(DISTINCT C.CountryId) AS num_countries FROM car_makers AS C JOIN countries AS M ON C.CountryId = M.CountryId WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE C.Maker IN (SELECT Id FROM car_makers WHERE
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT COUNT(*) FROM cars_data WHERE Cylinders > 6
SELECT m.FullName, m.Model, MAX(c.Horsepower) AS max_horsepower FROM cars_data c JOIN model_list m ON c.Id = m.ModelId WHERE c.Cylinders = 4 GROUP BY m.Model ORDER BY MAX(c.Horsepower) DESC LIMIT 1
SELECT DISTINCT Model FROM car_makers WHERE Horsepower = ( SELECT MAX(Horsepower) FROM cars_data )
SELECT DISTINCT c.Make, m.FullName FROM cars_data c JOIN car_makers m ON c.Id = m.Id WHERE c.Horsepower > (SELECT MIN(Horsepower) FROM cars_data WHERE c.Horsepower > (SELECT MIN(Horsepower) FROM cars_data)) AND c.Cylinders <= 3
SELECT DISTINCT c.MakeId, c.Make, c.FullName FROM cars_data AS c WHERE c.Horsepower < 4 AND c.Cylinders < 4
SELECT MAX(MPG) FROM cars_data WHERE Cylinders = 8 AND Year < 1980
SELECT DISTINCT C.MPG, C.Continent FROM car_makers AS C JOIN car_names AS M ON C.CountryId = M.CountryId WHERE C.Year < 1980 AND C.Cylinders = 8
SELECT DISTINCT c.Name AS Continent, COUNT(DISTINCT m.Name) AS ModelCount FROM continents c JOIN car_makers m ON c.Continent = m.Continent WHERE m.Country!= 'Ford Motor Company' AND c.Name < 3500 GROUP BY c.Name
SELECT DISTINCT c.Model, c.Maker, c.FullName FROM car_makers AS c JOIN cars_data AS cd ON c.Id = cd.CountryId WHERE cd.MPG < 3500 AND c.CountryId NOT IN (SELECT CountryId FROM countries WHERE Continent = 'North America' OR Continent = 'South America' OR Continent = 'Europe')
SELECT DISTINCT C.CountryName FROM countries AS C JOIN car_makers AS M ON C.CountryId = M.CountryId WHERE M.Id NOT IN (SELECT Id FROM car_makers)
SELECT DISTINCT CountryName FROM countries WHERE CountryId NOT IN (SELECT CountryId FROM car_makers)
SELECT DISTINCT c.Id, c.FullName FROM continents AS c JOIN car_makers AS m ON c.Continent = m.Continent WHERE m.Country IN (SELECT CountryId FROM countries WHERE CountryName IN (SELECT CountryName FROM countries WHERE Continent = c.Continent) GROUP BY CountryName HAVING COUNT(*) > 3) AND m.Id NOT IN (SELECT Id FROM car_makers WHERE Id IN (SELECT Id FROM car_makers WHERE Country = c.Continent) GROUP BY CountryId HAVING COUNT(*) > 2)
SELECT DISTINCT c.Id, m.Id, m.FullName FROM car_makers m JOIN car_names c ON m.Id = c.MakeId WHERE m.Maker IN (SELECT Id FROM car_makers WHERE COUNT(*) >= 2) AND m.Maker IN (SELECT Id FROM car_makers WHERE Id > 3) GROUP BY c.Id, m.Id
SELECT DISTINCT C.CountryName, C.CountryId FROM countries C JOIN car_makers M ON C.CountryId = M.CountryId JOIN model_list ML ON M.Id = ML.Maker JOIN cars_data MD ON ML.Model = MD.MakeId WHERE MD.Horsepower > 100 AND MD.Year > 2010 AND M.FullName LIKE '%Fiat%' OR MD.Horsepower > 100 AND MD.Year > 2010
SELECT DISTINCT C.CountryId, C.CountryName FROM countries C JOIN car_makers M ON C.CountryId = M.CountryId WHERE M.Id IN ( SELECT Id FROM car_makers WHERE COUNTRY_ID > 3 ) OR M.Maker IN ( SELECT Id FROM car_makers WHERE COUNTRY_ID > 3 )
SELECT DISTINCT T1.Country FROM airlines AS T1 INNER JOIN airports AS T2 ON T1.CountryAbbrev = T2.Country WHERE T1.Airline = 'JetBlue Airways'
SELECT DISTINCT T1.Country FROM airlines AS T1 JOIN airports AS T2 ON T1.CountryAbbrev = T2.Country WHERE T1.Airline = 'Jetblue Airways'
SELECT DISTINCT Abbreviation FROM airlines WHERE Airline = 'JetBlue Airways'
SELECT DISTINCT Abbreviation FROM airlines WHERE Airline = 'Jetblue Airways'
SELECT DISTINCT A.Abbreviation, A.Airline FROM airlines A JOIN airports AS T1 ON A.Airline = T1.AirportCode
SELECT DISTINCT A.Airline, A.Abbreviation FROM airlines A JOIN airports AS T1 ON A.AirportCode = T1.AirportCode
SELECT DISTINCT A.AirportCode, A.AirlineName FROM airports AS A JOIN flights AS F ON A.AirportCode = F.DestAirport AND F.SourceAirport = A.AirportCode WHERE A.City = 'Anthony'
SELECT DISTINCT A.AirportCode, A.AirportName FROM airports AS A JOIN flights AS F ON A.AirportCode = F.DestAirport WHERE A.CountryAbbrev = 'US' AND F.Airline = 'Anthony'
SELECT DISTINCT COUNT(*) FROM airlines AS t1 INNER JOIN airports AS t2 ON t1.Airline = t2.AirportCode
SELECT COUNT(DISTINCT Airline) FROM airlines
SELECT DISTINCT COUNT(*) FROM airports
SELECT COUNT(DISTINCT Airline) FROM airports
SELECT COUNT(DISTINCT FlightNo) FROM flights
SELECT COUNT(DISTINCT FlightNo) FROM flights
SELECT DISTINCT T1.Airline FROM airlines AS T1 INNER JOIN airports AS T2 ON T1.Airline = T2.AirportCode WHERE T1.Abbreviation = 'UAL'
SELECT DISTINCT T1.Airline, T1.Abbreviation FROM airlines AS T1 INNER JOIN airports AS T2 ON T1.Airline = T2.AirportCode WHERE T1.Abbreviation = 'UAL'
SELECT DISTINCT u.Airline FROM airlines u JOIN airports a ON u.Airline = a.AirportCode
SELECT COUNT(DISTINCT u.Airline FROM u AS airports u JOIN a AS flights ON u.AirportCode = a.AirportCode WHERE u.Country = 'USA')
SELECT DISTINCT T1.AirportName, T2.CountryAbbrev FROM airports AS T1 INNER JOIN flights AS T2 ON T1.AirportCode = T2.DestAirport
SELECT DISTINCT A.City, A.CountryAbbrev FROM airports AS A JOIN flights AS F ON A.AirportCode = F.DestAirport
SELECT DISTINCT AirportName FROM airports WHERE AirportCode = 'AKO'
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode WHERE a.CountryAbbrev = 'GB' AND a.City = 'Aberdeen'
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode WHERE a.City = 'Aberdeen'
SELECT DISTINCT f.FlightNo FROM flights f JOIN airports a ON f.DestAirport = a.AirportCode
SELECT COUNT(DISTINCT FlightNo) FROM flights WHERE DestAirport = 'Aberdeen' OR DestAirport = 'Abilene'
SELECT DISTINCT COUNT(*) FROM flights AS f JOIN airports AS a ON f.DestAirport = a.AirportCode WHERE a.CountryAbbrev = 'AB' OR a.CountryAbbrev = 'ABE'
SELECT DISTINCT A.Name FROM Airports AS A JOIN Flights AS F ON A.AirportCode = F.DestAirport AND F.SourceAirport = A.AirportCode
SELECT DISTINCT a.Airline, a.AirportName FROM airports a JOIN flights f ON a.AirportCode = f.SourceAirport AND f.DestAirport = a.AirportCode
SELECT COUNT(DISTINCT Employee_ID FROM employee)
SELECT COUNT(DISTINCT E.Employee_ID FROM employee E JOIN hiring H ON E.Employee_ID = H.Employee_ID JOIN shop S ON H.Shop_ID = S.Shop_ID WHERE E.Start_from IS NOT NULL AND E.Year_awarded IS NOT NULL)
SELECT Name FROM employee ORDER BY Age ASC
SELECT e.Name, e.Age FROM employee e JOIN hiring h ON e.Employee_ID = h.Employee_ID ORDER BY e.Age ASC
SELECT e.City, COUNT(DISTINCT e.Employee_ID) AS num_employees FROM employee e JOIN shop s ON e.Shop_ID = s.Shop_ID GROUP BY e.City
SELECT City, COUNT(*) as count FROM (SELECT DISTINCT T1.City, T2.City FROM employee AS T1 JOIN shop AS T2 ON T1.City = T2.City) GROUP BY City
SELECT e.Name, COUNT(DISTINCT e.Employee_ID) AS count FROM employee e JOIN hiring h ON e.Employee_ID = h.Employee_ID WHERE e.Age < 30 AND h.Start_from IS NOT NULL GROUP BY e.Name
SELECT c.City, COUNT(DISTINCT e.Employee_ID) AS num_employees_under_30 FROM employee e JOIN shop s ON e.Shop_ID = s.Shop_ID JOIN hiring h ON e.Employee_ID = h.Employee_ID WHERE e.Age < 30 GROUP BY c.City
SELECT e.Name, COUNT(DISTINCT s.Location) AS LocationCount FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID GROUP BY e.Name
SELECT e.Name, COUNT(DISTINCT s.Location) AS Location_count FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID GROUP BY s.Location
SELECT e.Name, s.District FROM employee AS e JOIN shop AS s ON e.Employee_ID = s.Shop_ID WHERE s.Number_products = ( SELECT MAX(Number_products) FROM shop )
SELECT e.Name, s.District FROM employee AS e JOIN shop AS s ON e.Employee_ID = s.Shop_ID WHERE s.Number_products = ( SELECT MAX(Number_products) FROM shop )
SELECT MIN(T1.Number_products) AS min_products, MAX(T1.Number_products) AS max_products FROM shop AS T1 INNER JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID GROUP BY T1.Shop_ID
SELECT MIN(shop.Number_products) AS min_products, MAX(shop.Number_products) AS max_products FROM shop WHERE shop.Location = 'all' GROUP BY shop.Location
SELECT e.Name, s.Location, s.District, COUNT(eb.Employee_ID) AS num_products FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID JOIN hiring eb ON e.Employee_ID = eb.Employee_ID GROUP BY s.Location, s.District ORDER BY COUNT(eb.Employee_ID) DESC
SELECT e.Name, s.Location, s.District, COUNT(e.Employee_ID) AS Number_of_employees FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID GROUP BY s.Location, s.District ORDER BY COUNT(e.Employee_ID) DESC
SELECT e.Name, COUNT(e.Employee_ID) AS num_products FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID GROUP BY e.Name HAVING COUNT(e.Employee_ID) > (SELECT AVG(Number_products) FROM shop)
SELECT e.Name, COUNT(e.Employee_ID) AS num_products FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID GROUP BY e.Name HAVING COUNT(e.Employee_ID) > (SELECT AVG(Number_products) FROM shop WHERE s.Shop_ID = s.Shop_ID) GROUP BY e.Name
SELECT e.Name, COUNT(e.Employee_ID) AS count FROM evaluation e JOIN hiring ON e.Employee_ID = hiring.Employee_ID JOIN shop ON e.Shop_ID = shop.Shop_ID GROUP BY e.Name ORDER BY count DESC LIMIT 1
SELECT e.Name FROM employee AS e JOIN evaluation AS e2 ON e.Employee_ID = e2.Employee_ID WHERE e2.Year_awarded = ( SELECT MAX(e2.Year_awarded) FROM evaluation AS e2 WHERE e2.Employee_ID = e.Employee_ID )
SELECT e.Name FROM employee AS e JOIN evaluation AS e2 ON e.Employee_ID = e2.Employee_ID WHERE e2.Bonus = ( SELECT MAX(Bonus) FROM evaluation )
SELECT e.Name FROM employee AS e JOIN evaluation AS e2 ON e.Employee_ID = e2.Employee_ID WHERE e2.Year_awarded = ( SELECT MAX(e2.Year_awarded) FROM evaluation AS e2 WHERE e2.Employee_ID IN ( SELECT e.Employee_ID FROM employee AS e WHERE e.Age > 30 ) )
SELECT DISTINCT e.Name FROM employee AS e JOIN evaluation AS e2 ON e.Employee_ID = e2.Employee_ID WHERE e2.Year_awarded IS NULL
SELECT DISTINCT e.Name FROM employee AS e JOIN hiring AS h ON e.Employee_ID = h.Employee_ID WHERE h.Start_from IS NULL
SELECT e.Name, COUNT(DISTINCT e.Employee_ID) AS num_employees FROM employee e JOIN hiring h ON e.Employee_ID = h.Employee_ID WHERE h.Start_from IS NOT NULL GROUP BY e.Name ORDER BY COUNT(DISTINCT e.Employee_ID) DESC LIMIT 1
SELECT Name FROM shop WHERE Number_products = ( SELECT MAX(Number_products) FROM shop )
SELECT DISTINCT e.Name FROM employee AS e JOIN hiring AS h ON e.Employee_ID = h.Employee_ID WHERE h.Is_full_time = 0
SELECT DISTINCT Name FROM shop WHERE Is_full_time = 0
SELECT e.Name, s.Name AS Shop_Name FROM employee e JOIN shop s ON e.Shop_ID = s.Shop_ID WHERE e.Employee_ID IN (SELECT Employee_ID FROM hiring WHERE Is_full_time = 1) GROUP BY e.Name, s.Name
SELECT e.Name, COUNT(DISTINCT e.Employee_ID) AS num_employees FROM employee e JOIN shop s ON e.Shop_ID = s.Shop_ID WHERE s.Location = 'New York' GROUP BY e.Name
SELECT DISTINCT e.Bonus FROM evaluation e JOIN hiring ON e.Employee_ID = hiring.Employee_ID JOIN shop ON e.Shop_ID = shop.Shop_ID
SELECT DISTINCT SUM(e.Bonus) AS Total_Bonus FROM evaluation AS e JOIN hiring AS h ON e.Employee_ID = h.Employee_ID JOIN shop AS s ON h.Shop_ID = s.Shop_ID
SELECT DISTINCT e.Name, e.Age, e.City, s.Name AS Shop_Name, e.Shop_ID, h.Start_from, h.Is_full_time, e.Year_awarded, e.Bonus FROM employee e JOIN shop s ON e.Shop_ID = s.Shop_ID JOIN hiring h ON e.Employee_ID = h.Employee_ID
SELECT DISTINCT e.Name, e.Age, e.City, s.Name AS Shop_Name, e.Shop_ID, h.Start_from, h.Is_full_time, e.Year_awarded, e.Bonus FROM employee e JOIN shop s ON e.Shop_ID = s.Shop_ID JOIN hiring h ON e.Employee_ID = h.Employee_ID
SELECT e.Name, s.Name AS store_name FROM employee e JOIN shop s ON e.Employee_ID = s.Employee_ID WHERE s.Number_products < 3000 AND s.Number_products > 10000
SELECT DISTINCT T1.District, T2.Name FROM shop AS T1 JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID WHERE T1.Number_products < 3000 AND T1.Shop_ID IN (SELECT Shop_ID FROM shop WHERE Number_products > 10000)
SELECT DISTINCT COUNT(DISTINCT T1.Shop_ID) FROM shop AS T1 INNER JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID
SELECT DISTINCT COUNT(DISTINCT T1.Shop_ID) FROM shop AS T1 INNER JOIN employee AS T2 ON T1.Shop_ID = T2.Employee_ID
SELECT COUNT(DISTINCT Document_ID) FROM Documents
SELECT COUNT(DISTINCT Document_ID) FROM Documents
SELECT DISTINCT Document_ID, Document_Name, Document_Description FROM Documents
SELECT T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Code = 'AD' ORDER BY T2.Version_Number DESC
SELECT DISTINCT T1.Template_Type_Code FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Book'
SELECT DISTINCT T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Description FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_ID FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Description = 'Presentation'
SELECT DISTINCT T1.Template_ID FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Description = 'Presentation'
SELECT COUNT(DISTINCT T1.Document_ID) FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID
SELECT COUNT(DISTINCT Paragraph_ID) FROM Paragraphs
SELECT COUNT(DISTINCT T1.Document_ID) FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = 'Summer Show'
SELECT COUNT(DISTINCT p.Document_ID) FROM Paragraphs p JOIN Documents d ON p.Document_ID = d.Document_ID WHERE d.Document_Name = 'Summer Show'
SELECT DISTINCT p.Paragraph_Text FROM Paragraphs AS p JOIN Documents AS d ON p.Document_ID = d.Document_ID WHERE d.Document_Name LIKE '%Korea%'
SELECT T1.Document_Name, T1.Document_Description, T1.Other_Details, T2.Template_Type_Description FROM Documents AS T1 INNER JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Name LIKE '%Korea%'
SELECT DISTINCT p.Paragraph_ID, p.Paragraph_Text FROM Documents d INNER JOIN Paragraphs p ON d.Document_ID = p.Document_ID WHERE d.Document_Name = 'Welcome to NY'
SELECT DISTINCT T1.Document_ID, T2.Paragraph_ID FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID
SELECT DISTINCT p.Paragraph_Text FROM Paragraphs p JOIN Documents d ON p.Document_ID = d.Document_ID WHERE d.Document_Name = 'Customer reviews'
SELECT DISTINCT T1.Document_Name, T1.Document_Description, T1.Document_ID FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Document_Name = 'Customer reviews'
SELECT D.Document_ID, COUNT(DISTINCT P.Paragraph_ID) AS Paragraph_Count FROM Documents D JOIN Paragraphs P ON D.Document_ID = P.Document_ID GROUP BY D.Document_ID ORDER BY D.Document_ID
SELECT DISTINCT D.Document_ID, COUNT(DISTINCT P.Paragraph_ID) AS Paragraph_Count FROM Documents D JOIN Paragraphs P ON D.Document_ID = P.Document_ID GROUP BY D.Document_ID ORDER BY D.Document_ID
SELECT D.Document_ID, T.Document_Name, COUNT(P.Paragraph_ID) AS Paragraph_Count FROM Documents D JOIN Paragraphs P ON D.Document_ID = P.Document_ID JOIN Templates T ON D.Template_ID = T.Template_ID GROUP BY D.Document_ID, T.Document_Name
SELECT T1.Document_ID, T1.Document_Name, COUNT(DISTINCT T2.Document_ID) AS Paragraphs_Count FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID
SELECT DISTINCT Document_ID FROM Documents WHERE Document_Name LIKE '%two%'
SELECT DISTINCT Document_ID FROM Documents WHERE Paragraph_ID IN (SELECT Document_ID FROM Paragraphs GROUP BY Document_ID HAVING COUNT(Paragraph_ID) >= 2)
SELECT T1.Document_ID, T1.Document_Name, COUNT(DISTINCT T2.Paragraph_ID) AS Paragraph_Count FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY Paragraph_Count DESC LIMIT 1
SELECT T1.Document_ID, T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID GROUP BY T1.Document_ID ORDER BY COUNT(T2.Paragraph_ID) DESC LIMIT 1
SELECT Document_ID FROM Documents WHERE Paragraph_ID IN ( SELECT Paragraph_ID FROM Paragraphs ORDER BY Paragraph_Text ASC LIMIT 1 )
SELECT Document_ID FROM Documents WHERE Paragraph_ID IN ( SELECT Paragraph_ID FROM Paragraphs ORDER BY Paragraph_Text LIMIT 1 )
SELECT DISTINCT D.Document_ID FROM Documents AS D JOIN Paragraphs AS P ON D.Document_ID = P.Document_ID WHERE P.Paragraph_ID IN (SELECT Paragraph_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%1 to 2%')
SELECT DISTINCT Document_ID FROM Documents WHERE Paragraph_ID IN (SELECT Document_ID FROM Paragraphs WHERE Paragraph_Text LIKE '%between one and two%' OR Paragraph_Text LIKE '%two%' OR Paragraph_Text LIKE '%between%two%')
SELECT DISTINCT T1.Document_ID FROM Documents AS T1 INNER JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T2.Document_Name LIKE '%Brazil%' OR T2.Document_Name LIKE '%Ireland%'
SELECT DISTINCT Document_ID FROM Documents WHERE Document_Name LIKE '%Brazil%' OR Document_Name LIKE '%Ireland%'
SELECT COUNT(DISTINCT Teacher_ID FROM teacher WHERE Age > 30
SELECT COUNT(*) FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Age ASC
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Age ASC
SELECT T1.Age, T2.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Age, T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Hometown!= 'Little Lever Urban District'
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Hometown!= 'Little Lever Urban District'
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Age = 32 OR T1.Age = 33
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Age BETWEEN 32 AND 33
SELECT T1.Hometown FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Age = (SELECT MIN(Age) FROM teacher WHERE Age = (SELECT MIN(Age) FROM teacher))
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T1.Age = (SELECT MIN(Age) FROM teacher) ORDER BY T1.Name
SELECT T1.Hometown, COUNT(DISTINCT T2.Teacher_ID) AS Teacher_Count FROM course AS T1 JOIN teacher AS T2 ON T1.Staring_Date = T2.Staring_Date GROUP BY T1.Hometown
SELECT T1.Hometown, COUNT(DISTINCT T2.Teacher_ID) AS Teacher_Count FROM course AS T1 JOIN teacher AS T2 ON T1.Staring_Date = T2.Staring_Date GROUP BY T1.Hometown
SELECT T1.Hometown FROM teacher AS T2 JOIN course_arrange AS T1 ON T2.Teacher_ID = T1.Teacher_ID WHERE T1.Grade IS NOT NULL AND T1.Grade IN (SELECT Grade FROM course_arrange WHERE Course_ID = 1) GROUP BY T1.Hometown ORDER BY COUNT(T1.Grade) DESC LIMIT 1
SELECT DISTINCT T1.Hometown FROM teacher AS T2 JOIN course_arrange AS T1 ON T2.Teacher_ID = T1.Teacher_ID
SELECT t1.Hometown FROM teacher AS t1 JOIN course_arrange AS t2 ON t1.Teacher_ID = t2.Teacher_ID WHERE t2.Course_ID IN (SELECT Course_ID FROM course WHERE Staring_Date > '2020-01-01') GROUP BY t1.Hometown HAVING COUNT(*) >= 2
SELECT T1.Town, COUNT(DISTINCT T2.Teacher_ID) AS num_teachers FROM course AS T1 JOIN teacher AS T2 ON T1.Staring_Date = T2.Staring_Date AND T1.Course_ID = T2.Teacher_ID GROUP BY T1.Town HAVING COUNT(DISTINCT T2.Teacher_ID) >= 2
SELECT T1.Name, COALESCE(T2.Name, '') AS Teacher_Name FROM course AS T1 JOIN course_arrange AS T2 ON T1.Course_ID = T2.Course_ID WHERE T1.Staring_Date = '2020-01-01' OR T1.Staring_Date = '2021-01-01' OR T1.Staring_Date = '2022-01-01' GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT DISTINCT T1.Document_ID, T1.Document_Name, T1.Document_Description, T2.Template_Type_Description FROM Documents AS T1 INNER JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Document_Name, Template_ID FROM Documents WHERE Document_Description LIKE '%w%'
SELECT T1.Document_Name, T2.Template_Type_Code FROM Documents AS T1 INNER JOIN Templates AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Document_Description LIKE '%w%'
SELECT DISTINCT T1.Document_ID, T1.Template_ID, T1.Document_Name, T1.Document_Description, T2.Template_Type_Description FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT Document_ID, Template_ID, Document_Name, Template_Type_Description FROM Templates WHERE Template_Type_Code = 'Robbin CV' ORDER BY Document_ID
SELECT DISTINCT COUNT(DISTINCT T1.Template_Type_Code) FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT COUNT(DISTINCT Template_Type_Code) AS Template_Count FROM Ref_Template_Types
SELECT COUNT(DISTINCT Document_ID) FROM Documents WHERE Template_ID IN (SELECT Template_ID FROM Templates WHERE Template_Type_Code = 'PPT')
SELECT COUNT(DISTINCT T1.Template_Type_Code) FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_ID, COUNT(DISTINCT T2.Document_ID) AS Document_Count FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_ID
SELECT DISTINCT T1.Template_Type_Code, COUNT(DISTINCT T1.Template_Type_Code) AS Count FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code
SELECT T1.Template_Type_Code, T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code ORDER BY T1.Template_Type_Code DESC LIMIT 1
SELECT T1.Template_Type_Code, T2.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code ORDER BY COUNT(T1.Template_Type_Code) DESC LIMIT 1
SELECT T1.Template_ID FROM Templates AS T1 JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Code IN (SELECT Template_Type_Code FROM Templates WHERE Template_ID > 0))
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_ID IN (SELECT Document_ID FROM Documents GROUP BY Document_ID HAVING COUNT(DISTINCT Document_ID) > 1)
SELECT DISTINCT T1.Template_ID FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Document_ID IS NULL
SELECT DISTINCT T1.Template_ID FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T2.Template_ID IS NULL
SELECT COUNT(DISTINCT Template_Type_Code) FROM Ref_Template_Types
SELECT COUNT(DISTINCT Template_Type_Code) FROM Ref_Template_Types
SELECT DISTINCT T1.Template_Type_Code, T1.Template_Type_Description, T1.Template_ID, T1.Version_Number FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_ID, T1.Template_Type_Code, T1.Version_Number, T1.Date_Effective_From, T1.Date_Effective_To, T1.Template_Details, T2.Document_Name, T2.Document_Description, T2.Other_Details FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_ID FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Template_Type_Description LIKE '%PP%' OR T1.Template_Type_Description LIKE '%PPT%'
SELECT DISTINCT T1.Template_ID FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID WHERE T1.Template_Type_Code IN ('PP', 'PPT')
SELECT COUNT(DISTINCT T1.Template_Type_Code) AS Template_Count FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT COUNT(DISTINCT T1.Template_Type_Code) AS Template_Count FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code, T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Version_Number > 5
SELECT T1.Template_Type_Code, T2.Template_Type_Description FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T1.Version_Number > 5
SELECT T1.Template_Type_Code, COUNT(DISTINCT T1.Template_Type_Code) AS Template_Count FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_Type_Code, COUNT(DISTINCT T1.Template_Type_Code) AS Template_Count FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code GROUP BY T1.Template_Type_Code
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT Template_Type_Code FROM Ref_Template_Types WHERE COUNT(DISTINCT Template_Type_Code) < 3
SELECT DISTINCT T1.Template_Type_Code, T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code ORDER BY T1.Template_Type_Code
SELECT T1.Template_Type_Code, T2.Template_Type_Description FROM Templates AS T1 INNER JOIN Ref_Template_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code ORDER BY T1.Version_Number ASC LIMIT 1
SELECT DISTINCT T1.Template_Type_Code FROM Templates AS T1 INNER JOIN Document_Types AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Name = 'Data Base'
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code WHERE T2.Template_Type_Code = 'Database'
SELECT DISTINCT Document_Name FROM Documents WHERE Document_Type IN (SELECT Template_Type_Code FROM Ref_Template_Types WHERE Template_Type_Description LIKE '%BK%')
SELECT DISTINCT T1.Document_Name FROM Documents AS T1 JOIN Paragraphs AS T2 ON T1.Document_ID = T2.Document_ID WHERE T1.Template_Type_Code = 'BK'
SELECT T1.Template_Type_Code, COUNT(DISTINCT T2.Document_ID) AS Document_Count FROM Templates AS T1 INNER JOIN Documents AS T2 ON T1.Template_ID = T2.Template_ID GROUP BY T1.Template_Type_Code
SELECT Template_Type_Code, COUNT(DISTINCT Document_ID) AS Document_Count FROM Documents GROUP BY Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code, T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code, T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT DISTINCT T1.Template_Type_Code, T1.Template_Type_Description FROM Ref_Template_Types AS T1 INNER JOIN Templates AS T2 ON T1.Template_Type_Code = T2.Template_Type_Code
SELECT T1.Name, T2.Name AS Teacher_Name FROM course AS T1 JOIN teacher AS T2 ON T1.Teacher_ID = T2.Teacher_ID
SELECT T1.Name, C.Staring_Date, C.Course_ID FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID JOIN course AS T3 ON T2.Course_ID = T3.Course_ID ORDER BY T1.Name ASC
SELECT T1.Name, C.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID ORDER BY T1.Name ASC
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID = 1
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID IN (SELECT Course_ID FROM course WHERE Course_Course = 'Math')
SELECT T1.Name, COUNT(DISTINCT T2.Course_ID) AS num_courses FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name, COUNT(DISTINCT T2.Course_ID) AS num_courses FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID IN (SELECT Course_ID FROM course WHERE Staring_Date > '2020-01-01') GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID GROUP BY T1.Name HAVING COUNT(DISTINCT T2.Course_ID) >= 2
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID NOT IN (SELECT Course_ID FROM course_arrange)
SELECT DISTINCT T1.Name FROM teacher AS T1 JOIN course_arrange AS T2 ON T1.Teacher_ID = T2.Teacher_ID WHERE T2.Course_ID NOT IN (SELECT Course_ID FROM course_arrange)
SELECT DISTINCT Num_of_Staff FROM museum WHERE Age < 30
SELECT v.Name FROM visitor AS v JOIN museum AS m ON v.Museum_ID = m.Museum_ID WHERE v.Level_of_membership > 4 ORDER BY v.Level_of_membership DESC
SELECT AVG(T1.Age) FROM visitor AS T1 JOIN museum AS T2 ON T1.ID = T2.Museum_ID WHERE T1.Level_of_membership < 5
SELECT v.Name, v.Level_of_membership FROM visitor AS v JOIN museum AS m ON v.Museum_ID = m.Museum_ID WHERE v.Level_of_membership > 4 ORDER BY v.Age ASC
SELECT museum.Museum_ID, museum.Name FROM museum AS T1 JOIN visitor AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T1.Num_of_Staff = ( SELECT MAX(T1.Num_of_Staff) FROM museum AS T1 JOIN visitor AS T2 ON T1.Museum_ID = T2.Museum_ID )
SELECT AVG(Num_of_Staff) AS avg_staff FROM museum WHERE Open_Year < 2009
SELECT DISTINCT T1.Open_Year, T2.Num_of_Staff FROM museum AS T1 INNER JOIN visitor AS T2 ON T1.Museum_ID = T2.Museum_ID
SELECT Name FROM museum WHERE Num_of_Staff > (SELECT MIN(Num_of_Staff) FROM museum WHERE Open_Year > 2010)
SELECT DISTINCT v.ID, v.Name, v.Age FROM visitor AS v JOIN visit AS t ON v.ID = t.visitor_ID WHERE t.Museum_ID IN (SELECT M.Museum_ID FROM museum AS M JOIN visit AS t2 ON M.Museum_ID = t2.Museum_ID GROUP BY M.Museum_ID HAVING COUNT(*) > 1)
SELECT v1.ID, v1.Name, v1.Museum_ID, v1.Level_of_membership, v1.Total_spent, v2.Level_of_membership, v2.Total_spent, v2.Museum_ID FROM (SELECT visitor_ID, SUM(Total_spent) AS Total_spent FROM visit GROUP BY visitor_ID) v1 JOIN visitor v2 ON v1.visitor_ID = v2.ID ORDER BY v1.Total_spent DESC LIMIT 1
SELECT DISTINCT M.Museum_ID, M.Name FROM museum M JOIN visit v ON M.Museum_ID = v.Museum_ID WHERE v.Num_of_Ticket = ( SELECT MAX(v.Num_of_Ticket) FROM visit v WHERE v.Museum_ID = M.Museum_ID )
SELECT Name FROM museum WHERE Num_of_Staff = 0
SELECT v.Name, v.Age FROM visitor AS v JOIN visit AS t ON v.ID = t.visitor_ID WHERE t.Num_of_Ticket = ( SELECT MAX(T2.Num_of_Ticket) FROM visit AS T2 WHERE T2.Museum_ID = v.Museum_ID )
SELECT AVG(T1.Num_of_Ticket) AS avg_tickets, MAX(T1.Num_of_Ticket) AS max_tickets FROM visit AS T1 JOIN museum AS T2 ON T1.Museum_ID = T2.Museum_ID GROUP BY T1.Museum_ID
SELECT DISTINCT T1.Total_spent FROM museum AS T1 JOIN visitor AS T2 ON T1.Museum_ID = T2.Museum_ID WHERE T2.Level_of_membership = 1
SELECT v.Name FROM visitor AS v JOIN visit AS t ON v.ID = t.visitor_ID WHERE t.Open_Year < 2011 AND t.Open_Year > 2009
SELECT COUNT(DISTINCT v.ID FROM visitor AS v JOIN visit AS t ON v.ID = t.visitor_ID WHERE t.Open_Year > 2010)
SELECT DISTINCT Num_of_Staff FROM museum WHERE Open_Year > 2008
SELECT COUNT(DISTINCT player_id) FROM players
SELECT COUNT(DISTINCT player_id) FROM players
SELECT COUNT(DISTINCT winner_id FROM matches WHERE match_num = 1) AS total_matches
SELECT COUNT(DISTINCT winner_id FROM matches WHERE match_num = 1) AS matches_count
SELECT DISTINCT p.first_name, p.birth_date FROM players AS p JOIN matches AS m ON p.player_id = m.loser_id WHERE m.country_code = 'USA'
SELECT DISTINCT first_name, birth_date FROM players WHERE country_code = 'USA'
SELECT AVG(l.loser_age) AS loser_avg_age, AVG(w.winner_age) AS winner_avg_age FROM matches AS m JOIN players AS p ON m.loser_id = p.player_id JOIN rankings AS r ON m.winner_id = r.player_id GROUP BY p.player_id
```json
{
  "sql": "SELECT AVG(loser_age) AS loser_avg_age, AVG(winner_age) AS winner_avg_age FROM (SELECT loser_age FROM matches WHERE loser_id IN (SELECT winner_id FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE best_of = 'loss')) UNION ALL SELECT winner_age FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE best_of = 'win') ) AS losers UNION ALL SELECT AVG(winner_age) AS loser_avg_age, AVG(winner_age) AS winner_avg_age FROM matches WHERE winner_id IN (SELECT winner_id FROM matches WHERE best_of = 'win')",
}
```

This query uses a subquery to find the loser and winner ages, then calculates the average age for each group. The outer query uses the `UNION ALL` operator to combine the results of the subqueries. The `DISTINCT` keyword is used to ensure that each loser and winner is only counted once.
```json
{
  "sql": "SELECT AVG(winner_rank) AS average_rank FROM (
  SELECT winner_rank_points, winner_rank FROM rankings
  WHERE winner_rank_points IS NOT NULL
  GROUP BY winner_rank
  ORDER BY winner_rank DESC
) AS ranked_winner"
}
```

This query uses a subquery to first filter the `rankings` table for rows with non-null `winner_rank_points`, then groups the results by `winner_rank` and orders them in descending order. The `AVG` function is used to calculate the average of the `winner_rank_points` column.
SELECT AVG(winner_rank_points) FROM rankings AS T1 INNER JOIN matches AS T2 ON T1.player_id = T2.winner_id
SELECT DISTINCT loser_rank FROM rankings WHERE winner_rank_points = ( SELECT MAX(winner_rank_points) FROM rankings )
SELECT DISTINCT winner_rank FROM rankings WHERE winner_rank_points = ( SELECT MAX(winner_rank_points) FROM rankings )
SELECT DISTINCT COUNT(DISTINCT country_code) FROM players
SELECT DISTINCT COUNT(DISTINCT player_id) FROM players
SELECT DISTINCT loser_name FROM players WHERE loser_rank_points = 0
SELECT DISTINCT loser_name FROM players WHERE loser_rank_points = 0
SELECT winner_name FROM tourney AS t JOIN matches AS m ON t.tourney_id = m.tourney_id WHERE m.draw_size > 10
SELECT DISTINCT winner_name FROM rankings WHERE ranking_points > 10
SELECT DISTINCT winner_name FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.year = 2013 AND T1.year = 2016
SELECT DISTINCT winner_name FROM players WHERE year = 2013 AND winner_id IN (SELECT winner_id FROM matches WHERE year = 2013) OR winner_id IN (SELECT winner_id FROM matches WHERE year = 2016)
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE year = 2013 OR year = 2016
SELECT COUNT(DISTINCT winner_id) FROM matches WHERE year = 2013 OR year = 2016
SELECT DISTINCT winner_first_name, winner_country_code FROM players WHERE winner_id IN (SELECT winner_id FROM matches WHERE tourney_name = 'WTA Championships' INTERSECT SELECT winner_id FROM matches WHERE tourney_name = 'Australian Open')
SELECT DISTINCT p.first_name, p.country_code FROM players AS p JOIN matches AS m ON p.player_id = m.loser_id WHERE m.winner_id = m.loser_id AND m.tourney_name = 'WTA Championships' AND m.tourney_name = 'Australian Open'
SELECT first_name, country_code FROM players WHERE birth_date = ( SELECT MIN(birth_date) FROM players ORDER BY birth_date ASC LIMIT 1 )
SELECT first_name, country_code FROM players WHERE birth_date = ( SELECT MIN(birth_date) FROM players ORDER BY birth_date ASC LIMIT 1 )
SELECT first_name, last_name FROM players ORDER BY birth_date
SELECT DISTINCT p.first_name, p.last_name FROM players AS p JOIN rankings AS r ON p.player_id = r.player_id ORDER BY r.ranking_date
SELECT first_name, last_name FROM players WHERE hand = 'L' ORDER BY birth_date
SELECT DISTINCT p.first_name, p.last_name, r.ranking FROM players p JOIN rankings r ON p.player_id = r.player_id ORDER BY p.birth_date
SELECT first_name, country_code FROM players WHERE first_name = ( SELECT first_name FROM players ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT first_name, country_code FROM players WHERE first_name = ( SELECT first_name FROM players ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT winner_id, COUNT(DISTINCT winner_id) AS count FROM matches WHERE round = 1 GROUP BY winner_id ORDER BY count DESC LIMIT 1
SELECT winner_id, winner_name, winner_rank FROM rankings WHERE ranking_points DESC LIMIT 1
```json
{
  "sql": "SELECT p.first_name, p.last_name, r.ranking_points FROM players AS p JOIN (
  SELECT winner_name, MAX(ranking_points) AS ranking_points
  FROM (
  SELECT winner_name, MAX(ranking_points) AS ranking_points
  FROM (
  SELECT winner_name, SUM(CASE WHEN loser_rank = 1 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 2 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 3 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 4 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 5 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 6 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 7 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 8 THEN 1 ELSE 0 END) AS draw_size,
         SUM(CASE WHEN loser_rank = 9 THEN 1 ELSE
SELECT p.first_name, p.last_name, SUM(m.match_num) AS match_num, SUM(m.match_num - 1) AS rank_points FROM players AS p JOIN matches AS m ON p.player_id = m.winner_id AND m.loser_id = p.player_id GROUP BY p.player_id ORDER BY SUM(m.match_num) DESC LIMIT 1
```json
{
  "sql": "SELECT winner_name, winner_rank_points FROM (
  SELECT winner_name, winner_rank_points, winner_id
  FROM matches
  WHERE winner_id IN (
    SELECT winner_id
    FROM matches
    WHERE match_num = 1
    AND loser_id IN (
      SELECT loser_id
      FROM matches
      WHERE match_num = 1
      AND loser_id IN (
        SELECT loser_id
        FROM matches
        WHERE match_num = 1
        AND loser_id IN (
          SELECT loser_id
          FROM matches
          WHERE match_num = 1
          AND loser_id IN (
            SELECT loser_id
            FROM matches
            WHERE match_num = 1
            AND loser_id IN (
              SELECT loser_id
              FROM matches
              WHERE match_num = 1
              AND loser_id IN (
                SELECT loser_id
                FROM matches
                WHERE match_num = 1
                AND loser_id IN (
                  SELECT loser_id
                  FROM matches
                  WHERE match_num = 1
                  AND loser_id IN (
                    SELECT loser_id
                    FROM matches
                    WHERE match_num = 1
                    AND loser_id IN (
                      SELECT loser_id
                      FROM matches
SELECT winner_name, winner_rank_points FROM rankings WHERE winner_rank_points = ( SELECT MAX(winner_rank_points) FROM rankings )
SELECT loser_name, winner_name FROM matches WHERE round = 1 AND (SELECT COUNT(*) FROM matches WHERE round = 1) = (SELECT COUNT(*) FROM matches WHERE round = 1) GROUP BY loser_name, winner_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT winner_name, loser_name FROM matches WHERE round = ( SELECT MAX(round) FROM matches GROUP BY round )
SELECT AVG(ranking_points) AS avg_ranking FROM rankings AS r JOIN players AS p ON r.player_id = p.player_id
SELECT DISTINCT first_name, AVG(rankings.ranking_points) AS average_ranking FROM players AS p JOIN rankings AS r ON p.player_id = r.player_id GROUP BY p.player_id
SELECT p.first_name, p.first_name AS first_name, SUM(r.ranking_points) AS total_ranking_points FROM players p JOIN rankings r ON p.player_id = r.player_id GROUP BY p.first_name
SELECT DISTINCT first_name, SUM(CASE WHEN score = 1 THEN 1 ELSE 0 END) AS total_points FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id GROUP BY T1.loser_id
SELECT DISTINCT C.country_code, COUNT(DISTINCT P.player_id) AS num_players FROM players AS P JOIN matches AS M ON P.player_id = M.loser_id JOIN rankings AS R ON M.loser_id = R.player_id GROUP BY C.country_code
SELECT DISTINCT C.country_code, COUNT(DISTINCT P.player_id) AS num_players FROM players AS P JOIN matches AS M ON P.player_id = M.loser_id JOIN rankings AS R ON M.loser_id = R.player_id GROUP BY C.country_code
SELECT p.country_code, COUNT(DISTINCT p.player_id) AS num_players FROM players AS p JOIN matches AS m ON p.player_id = m.loser_id WHERE m.loser_hand = 'code' GROUP BY p.country_code
SELECT p.player_id, p.first_name, p.last_name, COUNT(DISTINCT m.match_num) AS num_matches FROM players p JOIN matches m ON p.player_id = m.winner_id GROUP BY p.player_id ORDER BY COUNT(DISTINCT m.match_num) DESC LIMIT 1
SELECT DISTINCT p.country_code FROM players AS p JOIN matches AS m ON p.player_id = m.loser_id WHERE m.score > 50
SELECT DISTINCT p.player_id FROM players AS p JOIN matches AS m ON p.player_id = m.loser_id WHERE m.score > 50
SELECT DISTINCT ranking_date, COUNT(*) as total_tours FROM rankings AS t1 JOIN matches AS t2 ON t1.ranking_date = t2.ranking_date WHERE t1.ranking_points > 0 GROUP BY t1.ranking_date
SELECT DISTINCT ranking_date, COUNT(*) as total_tours FROM rankings AS t1 JOIN matches AS t2 ON t1.ranking = t2.ranking_date GROUP BY t1.ranking_date
SELECT DISTINCT year, COUNT(DISTINCT winner_id) AS matches_happened FROM matches AS t1 JOIN rankings AS t2 ON t1.winner_id = t2.player_id WHERE t1.year = t2.year GROUP BY t1.year
SELECT DISTINCT winner_id, winner_name, winner_rank FROM rankings WHERE year =?
```json
{
  "sql": "SELECT DISTINCT winner_name, winner_rank FROM (
  SELECT winner_name, winner_rank_points, winner_rank FROM rankings
  WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings) AND winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings))
  UNION ALL
  SELECT winner_name, winner_rank_points, winner_rank FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings)))
  UNION ALL
  SELECT winner_name, winner_rank_points, winner_rank FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings)))
) AS subquery"
}
```

This query uses a subquery to find the maximum winner_rank_points for each winner_rank, and then selects the winner_name and winner_rank
```json
{
  "sql": "SELECT DISTINCT winner_name, winner_rank FROM (
  SELECT winner_name, winner_rank_points, winner_rank FROM rankings
  WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings) AND winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings))
  UNION ALL
  SELECT winner_name, winner_rank_points, winner_rank FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings)))
  UNION ALL
  SELECT winner_name, winner_rank_points, winner_rank FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings WHERE winner_rank_points < (SELECT MAX(winner_rank_points) FROM rankings)))
) AS subquery"
}
```

This query uses a subquery to find the maximum winner_rank_points for each winner_rank, and then selects the winner_name and winner_rank
SELECT DISTINCT winner_hand FROM players WHERE winner_hand = 'left handed' AND winner_id IN (SELECT winner_id FROM matches WHERE winner_hand = 'left handed')
SELECT COUNT(DISTINCT winner_id) AS winner_count FROM matches AS T1 JOIN players AS T2 ON T1.loser_id = T2.player_id WHERE T1.loser_hand = 'left' AND T1.tourney_name = 'WTA Championships'
SELECT first_name, country_code, birth_date FROM players WHERE winner_id IN (SELECT winner_id FROM matches WHERE winner_rank_points = ( SELECT MAX(winner_rank_points) FROM matches ) GROUP BY winner_id )
```json
{
  "sql": "SELECT first_name, country_code, birth_date, MAX(winner_rank_points) AS winner_rank_points FROM (
  SELECT first_name, country_code, birth_date, SUM(CASE WHEN loser_rank_points > winner_rank_points THEN 1 ELSE 0 END) AS winner_rank_points
  FROM matches
  GROUP BY first_name, country_code, birth_date
  ) AS subquery
  JOIN players ON subquery.player_id = players.player_id
  GROUP BY first_name, country_code, birth_date
  ORDER BY winner_rank_points DESC
  LIMIT 1"
}
```

This query uses a subquery to calculate the winner rank points for each player, then joins the `players` table to get the first name, country code, and birth date. The `MAX` aggregation function is used to get the player with the highest winner rank points. The `LIMIT 1` clause is used to return only the first row of the result set.
SELECT DISTINCT h.hand, COUNT(DISTINCT p.player_id) AS num_players FROM players AS p JOIN matches AS m ON p.player_id = m.loser_id JOIN rankings AS r ON m.loser_id = r.player_id WHERE r.ranking_date = '2022' AND r.ranking_points > 0 GROUP BY h.hand
SELECT DISTINCT p1.first_name, p1.last_name, p1.hand, COUNT(DISTINCT p2.first_name, p2.last_name) AS hand_count FROM players p1 JOIN matches m1 ON p1.player_id = m1.loser_id JOIN matches m2 ON m1.match_num = m2.match_num JOIN players p2 ON m2.loser_id = p2.player_id GROUP BY p1.hand
SELECT COUNT(DISTINCT T1.id) FROM ship AS T1 INNER JOIN battle AS T2 ON T1.lost_in_battle = T2.id
SELECT name, tonnage FROM ship ORDER BY name DESC
SELECT DISTINCT b.name, b.date, d.result FROM battle b JOIN ship s ON b.lost_in_battle = s.id JOIN death d ON d.caused_by_ship_id = s.id
SELECT DISTINCT T1.bulgarian_commander, T1.latin_commander, T1.result, T2.killed, T2.injured FROM battle AS T1 INNER JOIN death AS T2 ON T1.id = T2.caused_by_ship_id
SELECT AVG(bulgarian_commander) AS avg_bulgarian_commander, AVG(result) AS avg_result, AVG(killed) AS avg_killed, AVG(injured) AS avg_injured FROM battle GROUP BY bulgarian_commander
SELECT DISTINCT T1.tonnage, T2.bulgarian_commander, T2.latin_commander, T1.result FROM ship AS T1 INNER JOIN death AS T2 ON T1.lost_in_battle = T2.caused_by_ship_id
SELECT b.name, b.result, d.killed, d.injured FROM battle b JOIN death d ON b.id = d.caused_by_ship_id WHERE b.bulgarian_commander!= 'Boril'
SELECT DISTINCT T1.id, T2.name FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T2.ship_type = 'Brig'
SELECT DISTINCT b.id, d.name FROM battle b JOIN death d ON b.id = d.caused_by_ship_id
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT p1.Poker_Player_ID, p1.Name, p1.Best_Finish, p1.Money_Rank FROM poker_player p1 JOIN people p2 ON p1.People_ID = p2.People_ID ORDER BY p1.Best_Finish DESC LIMIT 10
SELECT DISTINCT p1.Poker_Player_ID, p1.Name, p1.Best_Finish, p1.Money_Rank FROM poker_player p1 JOIN people p2 ON p1.People_ID = p2.People_ID ORDER BY p1.Best_Finish DESC
SELECT AVG(Earnings) FROM poker_player WHERE Final_Table_Made = 1
SELECT AVG(Earnings) FROM poker_player
SELECT DISTINCT Money_Rank FROM poker_player WHERE Earnings = ( SELECT MAX(Earnings) FROM poker_player )
SELECT DISTINCT Earnings FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT MAX(Final_Table_Made) FROM poker_player WHERE Earnings < 200000
SELECT DISTINCT p.Poker_Player_ID, p.Name, p.Best_Finish, p.Money_Rank FROM poker_player AS p JOIN people AS p1 ON p.People_ID = p1.People_ID WHERE p.Earnings < 200000
SELECT DISTINCT Name FROM people
SELECT DISTINCT P.Name FROM poker_player AS P JOIN people AS P1 ON P1.People_ID = P.Poker_Player_ID
SELECT DISTINCT p.Name FROM poker_player AS p JOIN people AS p1 ON p.People_ID = p1.People_ID WHERE p.Earnings > 300000
SELECT DISTINCT P.Name FROM poker_player AS P JOIN people AS P1 ON P1.People_ID = P.Poker_Player_ID WHERE P.Earnings > 300000
SELECT p.Name FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID ORDER BY p2.Best_Finish ASC
SELECT People.Name, poker_player.Final_Table_Made, poker_player.Best_Finish, poker_player.Money_Rank FROM poker_player AS poker_player INNER JOIN people AS People ON poker_player.People_ID = People.People_ID ORDER BY poker_player.Final_Table_Made ASC
SELECT DISTINCT p.Birth_Date FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID WHERE p.Earnings = ( SELECT MIN(Earnings) FROM poker_player )
SELECT Birth_Date FROM poker_player WHERE Earnings = ( SELECT MIN(Earnings) FROM poker_player )
SELECT DISTINCT T1.Money_Rank FROM poker_player AS T1 INNER JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT DISTINCT Money_Rank FROM poker_player WHERE Height = ( SELECT MAX(Money_Rank) FROM poker_player )
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT AVG(Earnings) FROM poker_player WHERE Height > 200
SELECT People.Name FROM poker_player AS p1 JOIN people AS p2 ON p1.People_ID = p2.People_ID ORDER BY p1.Earnings DESC
SELECT p.Name FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID ORDER BY p.Earnings DESC
SELECT DISTINCT p.Nationality, COUNT(DISTINCT p.People_ID) AS num_people FROM poker_player AS p JOIN people AS t ON p.People_ID = t.People_ID GROUP BY p.Nationality
SELECT p.Nationality, COUNT(*) AS count FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID GROUP BY p2.Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people WHERE Nationality IN (SELECT Nationality FROM poker_player GROUP BY Nationality HAVING COUNT(*) >= 2)
SELECT DISTINCT Nationality FROM people WHERE Earnings > 0 AND Poker_Player_ID IN (SELECT People_ID FROM poker_player GROUP BY People_ID HAVING COUNT(*) >= 2)
SELECT p.Name, p.Birth_Date FROM poker_player AS p JOIN people AS t ON p.People_ID = t.People_ID ORDER BY p.Name ASC
SELECT p.Name, p.Birth_Date FROM poker_player AS p JOIN people AS t ON p.People_ID = t.People_ID ORDER BY p.Name
SELECT DISTINCT p.Name FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID WHERE p.Nationality!= 'Russia'
SELECT DISTINCT p.Name FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID WHERE p.People_ID NOT IN (SELECT People_ID FROM people WHERE Nationality = 'Russia')
SELECT DISTINCT p.Name FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID WHERE p.Earnings = 0
SELECT DISTINCT p.Name FROM poker_player AS p JOIN people AS p2 ON p.People_ID = p2.People_ID WHERE p.Earnings = 0
SELECT DISTINCT Nationality FROM people
SELECT DISTINCT Nationality FROM people
SELECT COUNT(DISTINCT state) FROM AREA_CODE_STATE
SELECT DISTINCT contestant_number, contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT DISTINCT v.vote_id, v.phone_number, v.state FROM VOTES v JOIN AREA_CODE_STATE a ON v.state = a.state WHERE a.area_code_state = 'US' AND v.contestant_number = 'US'
SELECT MAX(area_code) AS max_area_code, MIN(area_code) AS min_area_code FROM AREA_CODE_STATE
SELECT DISTINCT created FROM VOTES WHERE state = 'CA'
SELECT DISTINCT contestant_name FROM CONTESTANTS WHERE contestant_number!= 'Jessie Alloway'
SELECT DISTINCT state, created FROM VOTES
SELECT DISTINCT contestant_number, contestant_name FROM CONTESTANTS WHERE votes.state IN (SELECT state FROM AREA_CODE_STATE WHERE area_code = 1) AND votes.contestant_number > 1
SELECT DISTINCT contestant_number, contestant_name FROM CONTESTANTS WHERE votes.state = ( SELECT MIN(votes.state) FROM votes )
SELECT COUNT(*) FROM VOTES AS T1 INNER JOIN AREA_CODE_STATE AS T2 ON T1.state = T2.state WHERE T1.contestant_number IN (SELECT contestant_number FROM CONTESTANTS WHERE state = 'NY' OR state = 'CA') GROUP BY T1.contestant_number
SELECT COUNT(DISTINCT contestant_number FROM VOTES WHERE state = 'USA' AND contestant_number NOT IN (SELECT contestant_number FROM VOTES WHERE state = 'USA')
SELECT DISTINCT state FROM VOTES WHERE contestant_number = ( SELECT MAX(contestant_number) FROM VOTES GROUP BY state )
SELECT DISTINCT v1.state, v1.contestant_number, v1.phone_number FROM VOTES v1 JOIN CONTESTANTS v2 ON v1.contestant_number = v2.contestant_number WHERE v2.contestant_name = 'Tabatha Gehling'
SELECT DISTINCT T1.Content FROM TV_Channel AS T2 JOIN TV_series AS T1 ON T2.id = T1.Channel WHERE T1.Series_name = 'Sky Radio'
SELECT DISTINCT T1.Packagereq FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1serial_name = 'Sky Radio'
SELECT DISTINCT T1.id, T1.series_name FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.title LIKE '%Sky Radio%'
SELECT DISTINCT T1.Language FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Language = 'English'
SELECT COUNT(DISTINCT T1.id) FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Language = 'English'
SELECT T1.Language, COUNT(T1.id) AS num_channels FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Rating = '0' GROUP BY T1.Language
SELECT t1.Language, COUNT(DISTINCT t2.id) AS num_channels FROM TV_Channel t1 JOIN TV_series t2 ON t1.id = t2.Channel WHERE t1.Language = 'English' GROUP BY t1.Language
SELECT T1.Language, COUNT(T1.id) AS num_channels FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Language IS NOT NULL GROUP BY T1.Language
SELECT T1.Language, COUNT(DISTINCT T2.id) AS num_channels FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Language = 'English' GROUP BY T1.Language
SELECT DISTINCT T1.Title FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Id = T2.Id WHERE T1.Title = 'The Rise of the Blue Beetle!'
SELECT DISTINCT T1.title, T2.title AS cartoon_title FROM TV_series AS T1 INNER JOIN Cartoon AS T2 ON T1.id = T2.id WHERE T1.title = 'The Rise of the Blue Beetle'
SELECT T1.Title FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Series_name = 'Sky Radio'
SELECT T1.Title FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Series_name = 'Sky Radio'
SELECT tv_channel.id, tv_channel.series_name, tv_channel.Country, tv_channel.Pixel_aspect_ratio_PAR, tv_channel.Hight_definition_TV, tv_channel.Pay_per_view_PPV, tv_channel.Package_Option, tv_series.id, tv_series.Episode, tv_series.Rating, tv_series.Share, tv_series.18_49_Rating_Share, tv_series.Viewers_m, tv_series.Weekly_Rank, tv_series.Channel FROM TV_channel AS tv_channel INNER JOIN TV_series AS tv_series ON tv_channel.id = tv_series.Channel ORDER BY tv_series.Rating DESC
SELECT DISTINCT T1.Rating FROM TV_Channel AS T2 JOIN TV_series AS T1 ON T2.id = T1.Channel
SELECT tv_channel.Title, tv_series.Rating, tv_channel.Pixel_aspect_ratio_PAR, tv_channel.Hight_definition_TV, tv_series.Air_Date, tv_series.Rate FROM TV_series JOIN TV_channel ON tv_series.Channel = TV_channel.id ORDER BY tv_series.Rating DESC LIMIT 3
SELECT tv_series.id, tv_series.Rating, tv_series.Rating_18_49_Rating_Share FROM TV_series WHERE Rating_18_49_Rating_Share IN (SELECT Rating FROM TV_series ORDER BY Rating DESC LIMIT 3)
```json
{
  "sql": "SELECT tv_channel.id, tv_channel.name, tv_channel.Country, tv_channel.Language, tv_channel.Pixel_aspect_ratio_PAR, tv_channel.Hight_definition_TV, tv_channel.Pay_per_view_PPV, tv_channel.Package_Option, SUM(CASE WHEN tv_series.Share > 0 THEN 1 ELSE 0 END) AS Share, SUM(CASE WHEN tv_series.Share > 0 THEN 1 ELSE 0 END) AS 18_49_Rating_Share, SUM(CASE WHEN tv_series.Share > 0 THEN 1 ELSE 0 END) AS Viewers_m, SUM(CASE WHEN tv_series.Share > 0 THEN 1 ELSE 0 END) AS Weekly_Rank FROM TV_Channel tv_channel INNER JOIN TV_series tv_series ON tv_channel.id = tv_series.Channel GROUP BY tv_channel.id, tv_channel.Country, tv_channel.Language, tv_channel.Pixel_aspect_ratio_PAR, tv_channel.Hight_definition_TV, tv_channel.Pay_per_view_PPV, tv_channel.Package_Option ORDER BY tv_channel.id LIMIT 1;",
}
```

This query uses the `SUM` aggregation function to calculate the minimum and maximum share of TV series, as well as the number
SELECT MAX(Share) AS max_share, MIN(Share) AS min_share FROM TV_series
SELECT T1.Air_Date FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'A Love of a Lifetime'
SELECT DISTINCT T1.Episode FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'A Love of a Lifetime'
SELECT T1.Weekly_Rank, T2.Title FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'A Love of a Lifetime'
SELECT T1.Weekly_Rank, T2.Title FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'A Love of a Lifetime'
SELECT DISTINCT T1.Channel FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'A Love of a Lifetime'
SELECT T1.Title FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'A Love of a Lifetime'
SELECT DISTINCT T1.Title, T1.Country, T1.Pixel_aspect_ratio_PAR, T1.Hight_definition_TV, T1.Pay_per_view_PPV, T1.Package_Option, T2.Channel AS Channel FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Series_name = 'Sky Radio'
SELECT DISTINCT T1.Title, T1.Rating, T1.Viewers_m, T1.WEEKLY_Rank FROM TV_Channel AS T1 INNER JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'Sky Radio'
SELECT Directed_by, COUNT(DISTINCT Channel) AS num_directors FROM Cartoon WHERE Channel =? GROUP BY Directed_by
SELECT DISTINCT Directed_by FROM Cartoon WHERE Channel = 'TV_Channel'
SELECT T1.Title, T2.Channel as Channel FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Production_code = ( SELECT MAX(Production_code) FROM TV_Channel )
SELECT T1.Title, T2.Content FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Title = 'The Simpsons' ORDER BY T2.Air_Date DESC LIMIT 1
SELECT T1.Series_name, T2.Picture_aspect_ratio_PAR FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Hight_definition_TV = 1
SELECT DISTINCT T1.Title, T1.Pixel_aspect_ratio_PAR, T1.Hight_definition_TV, T1.Pay_per_view_PPV, T1.Package_Option FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Content = 'High Definition TV'
SELECT T1.Title, T2.Title AS Cartoon_Title FROM TV_Channel AS T1 INNER JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T1.Country = 'USA' AND T2.Title LIKE '%Todd Casey%' ORDER BY T1.Pixel_aspect_ratio_PAR DESC
SELECT DISTINCT T1.Title, T1.Country FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = 'Todd Casey'
SELECT DISTINCT T1.Country, T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T1.Content LIKE '%Todd Casey%'
SELECT DISTINCT T1.Country FROM TV_Channel AS T1 INNER JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Title!= 'Cartoon' AND T1.Name = 'Todd Casey'
SELECT T1.Series_name, T2.Country FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Directed_by = 'Ben Jones' AND T2.Directed_by = 'Michael Chang'
SELECT tv_channel.title, tv_channel.Country, cartoon.title AS cartoon_title, cartoon Directed_by, cartoon.Written_by FROM TV_Channel tv_channel INNER JOIN Cartoon cartoon ON tv_channel.id = cartoon.Channel WHERE cartoon.Directed_by = 'Ben Jones' AND cartoon.Written_by = 'Michael Chang' GROUP BY tv_channel.title, cartoon.title, cartoon.Directed_by, cartoon.Written_by
SELECT tv_channel.title, tv_channel.Country, tv_channel.Pixel_aspect_ratio_PAR, tv_channel.Pay_per_view_PPV, tv_channel.Package_Option FROM TV_Channel AS tv_channel INNER JOIN Cartoon AS cartoon ON tv_channel.Channel = cartoon.Channel WHERE cartoon.Language!= 'English'
SELECT tv_channel.id, tv_channel.Series_name, tv_channel.Country, tv_channel.Pixel_aspect_ratio_PAR, tv_channel.Hight_definition_TV, tv_channel.Pay_per_view_PPV, tv_channel.Package_Option, tv_series.id, tv_series.Episode, tv_series.Air_Date, tv_series.Rating, tv_series.Share, tv_series.18_49_Rating_Share, tv_series.Viewers_m, tv_series.Weekly_Rank, tv_series.Channel FROM TV_Channel AS tv_channel INNER JOIN TV_series AS tv_series ON tv_channel.id = tv_series.Channel WHERE tv_channel.Language!= 'English'
SELECT DISTINCT T1.id FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Country IN (SELECT Country FROM TV_Channel GROUP BY Country HAVING COUNT(*) > 2)
SELECT DISTINCT T1.id FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Content > 2
SELECT DISTINCT T1.id FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by!= 'Ben Jones'
SELECT DISTINCT T1.id FROM TV_Channel AS T1 INNER JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by!= 'Ben Jones'
SELECT T1.Title, T1.Picture_aspect_ratio_PAR, T1.Hight_definition_TV, T1.Pay_per_view_PPV, T1.Package_Option FROM TV_Channel AS T1 INNER JOIN Cartoon AS T2 ON T1.Channel = T2.Channel WHERE T2.Directed_by!= 'Ben Jones'
SELECT DISTINCT T1.Title FROM TV_Channel AS T1 JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Directed_by!= 'Ben Jones' AND T1.Content IS NOT NULL
SELECT COUNT(DISTINCT People_ID) FROM poker_player
SELECT COUNT(DISTINCT People_ID) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT DISTINCT T1.area_code FROM VOTES AS T1 INNER JOIN CONTESTANTS AS T2 ON T1.contestant_number = T2.contestant_number WHERE T2.contestant_name = 'Tabatha Gehling' AND T1.state = 'CA' OR T2.contestant_name = 'Kelly Clauss'
SELECT DISTINCT contestant_name FROM CONTESTANTS WHERE contestant_name LIKE '%Al%'
SELECT DISTINCT c.Name FROM country AS c JOIN countrylanguage AS cl ON c.Code = cl.CountryCode WHERE c.Id > 1950
SELECT DISTINCT N.Name FROM country AS T1 INNER JOIN city AS T2 ON T1.Code = T2.CountryCode WHERE T1.`IndepYear` > 1950
SELECT COUNT(DISTINCT Code) FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.GovernmentForm ='republic'
SELECT COUNT(DISTINCT c.ID) AS num_countries FROM country AS c JOIN countrylanguage AS cl ON c.Code = cl.CountryCode WHERE cl.IsOfficial = 1 AND c.GovernmentForm ='republic'
SELECT DISTINCT SUM(CASE WHEN SurfaceArea > 0 THEN SurfaceArea ELSE 0 END) AS TotalArea FROM country AS T1 INNER JOIN city AS T2 ON T1.Code = T2.CountryCode
SELECT DISTINCT SUM(CASE WHEN CountryCode IN (SELECT Code FROM country WHERE Continent = 'Caribbean' THEN SurfaceArea ELSE 0 END) AS SurfaceArea FROM Carribean WHERE Population > 0 GROUP BY Population)
SELECT DISTINCT T1.Name FROM country AS T2 INNER JOIN city AS T1 ON T2.Code = T1.CountryCode WHERE T2.Name = 'Anguilla'
SELECT DISTINCT T1.Name FROM country AS T2 INNER JOIN city AS T1 ON T2.Code = T1.CountryCode WHERE T2.Name = 'Anguilla'
SELECT DISTINCT T1.Name, T2.Name AS Region FROM city AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = 'Kabul'
SELECT DISTINCT T1.Name, T2.Name AS Region FROM city AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code WHERE T1.Name = 'Kabul'
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English'
SELECT DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1 AND CountryCode = 'AR'
SELECT DISTINCT Population, LifeExpectancy FROM city WHERE CountryCode = 'BR' OR CountryCode = 'BR'
SELECT DISTINCT Population, LifeExpectancy FROM city WHERE CountryCode = 'BR' OR CountryCode = 'BR'
SELECT DISTINCT T1.Name, T2.Population FROM city AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T1.Population DESC
SELECT DISTINCT T1.Name, T2.Population FROM city AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY T1.Population DESC
SELECT AVG(LifeExpectancy FROM country WHERE Continent = 'Africa' AND Region = 'Central')
SELECT AVG(LifeExpectancy) FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Africa' AND T1.Name = 'Central Africa'
SELECT DISTINCT T1.Name FROM country AS T2 INNER JOIN city AS T1 ON T2.Code = T1.CountryCode WHERE T2.Continent = 'Asia' AND T1.LifeExpectancy = ( SELECT MIN(LifeExpectancy) FROM country AS T3 WHERE T3.Continent = 'Asia' )
SELECT DISTINCT T1.Name FROM country AS T2 INNER JOIN city AS T1 ON T2.Code = T1.CountryCode WHERE T2.Continent = 'Asia' AND T1.LifeExpectancy ORDER BY T1.LifeExpectancy ASC
SELECT Population, GNP FROM city WHERE Continent = 'Asia' GROUP BY Population ORDER BY GNP DESC LIMIT 1
```json
{
  "sql": "SELECT COUNT(DISTINCT c.ID, c.Name, MAX(cg.GNP) FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode JOIN country g ON cl.CountryCode = g.Code WHERE g.Continent = 'Asia' GROUP BY c.Name, c.ID, c.Name, c.Population, g.GNP ORDER BY g.GNP DESC LIMIT 1;",
}
```

This query uses the following steps:

1. It selects the distinct `ID`, `Name`, and `Population` from the `city` table, and the `GNP` from the `country` table.
2. It joins the `city` table with the `countrylanguage` table on the `CountryCode` column.
3. It filters the results to only include rows where the `Continent` is 'Asia'.
4. It groups the results by `Name`, `ID`, `Population`, and `GNP`.
5. It orders the results by `GNP` in descending order.
6. It limits the results to the top row, which is the largest GNP.

This query meets all the requirements specified in the problem.
SELECT AVG(LifeExpectancy FROM country WHERE Continent = 'Africa' AND CountryCode IN (SELECT Code FROM country WHERE Continent = 'Africa' AND IsOfficial = 1) GROUP BY LifeExpectancy ORDER BY LifeExpectancy DESC LIMIT 1)
SELECT AVG(LifeExpectancy FROM country WHERE Continent = 'Africa' AND CountryCode IN (SELECT Code FROM country WHERE Region = 'Republique') GROUP BY LifeExpectancy ORDER BY LifeExpectancy DESC LIMIT 1)
SELECT DISTINCT SUM(SurfaceArea) AS TotalSurfaceArea FROM country AS T1 INNER JOIN continent AS T2 ON T1.Code = T2.Code WHERE T1.Name = 'Asia' OR T1.Name = 'Europe'
SELECT DISTINCT SUM(CASE WHEN CountryCode IN ('Asia', 'Europe') THEN SurfaceArea END) AS TotalSurfaceArea FROM country AS T1 INNER JOIN city AS T2 ON T1.Code = T2.CountryCode
SELECT DISTINCT COUNT(DISTINCT city.Population) FROM city AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code
SELECT DISTINCT Population FROM city WHERE District = 'Gelderland'
SELECT AVG(GNP) AS avg_gnp, SUM(Population) AS total_population FROM (SELECT AVG(GNP) AS avg_gnp, SUM(Population) AS total_population FROM (SELECT AVG(GNP) AS avg_gnp, SUM(Population) AS total_population FROM city WHERE GovernmentForm = 'US' GROUP BY GovernmentForm) AS subquery) AS subquery
SELECT AVG(GNP) AS mean_GNP, COUNT(*) AS total_population FROM (SELECT SUM(GNP) AS GNP, COUNT(*) AS total_population FROM country AS t1 INNER JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Code IN (SELECT Code FROM country WHERE Continent = 'North America' OR Continent = 'South America') GROUP BY t1.Code) AS subquery
SELECT DISTINCT COUNT(DISTINCT Language) FROM countrylanguage AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code
SELECT DISTINCT COUNT(DISTINCT Language) FROM countrylanguage AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code
SELECT DISTINCT COUNT(DISTINCT T1.Name) FROM country AS T2 INNER JOIN countrylanguage AS T3 ON T2.Code = T3.CountryCode WHERE T2.Continent = 'Africa' AND T3.IsOfficial = 1
SELECT DISTINCT COUNT(DISTINCT Name) FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name LIKE '%Africa%'
SELECT COUNT(DISTINCT Language) FROM countrylanguage AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code
SELECT DISTINCT Language FROM countrylanguage WHERE CountryCode = 'AR' AND IsOfficial = 1
SELECT COUNT(DISTINCT Name) FROM countrylanguage WHERE IsOfficial = 1 AND CountryCode = 'AFG'
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE CountryCode = 'AFG' AND IsOfficial = 1
SELECT DISTINCT c.Name, COUNT(DISTINCT cl.Language) AS num_languages FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode GROUP BY c.Name ORDER BY num_languages DESC LIMIT 1
SELECT c.Name, COUNT(DISTINCT cl.Language) AS LanguageCount FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode GROUP BY c.Name ORDER BY LanguageCount DESC LIMIT 1
SELECT DISTINCT T1.Name, T2.Name AS Language FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' GROUP BY T1.Name ORDER BY COUNT(T2.Percentage) DESC LIMIT 1
SELECT DISTINCT c.Name, COUNT(DISTINCT ci.Name) AS num_languages FROM city ci JOIN countrylanguage cl ON ci.CountryCode = cl.CountryCode WHERE cl.IsOfficial = 1 GROUP BY c.Name ORDER BY COUNT(DISTINCT ci.Name) DESC LIMIT 1
SELECT COUNT(DISTINCT c.ID) AS count FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.Language = 'English'
SELECT COUNT(DISTINCT c.Name) FROM country AS c JOIN countrylanguage AS cl ON c.Code = cl.CountryCode WHERE cl.Language = 'English' AND c.CountryCode = 'NL'
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English'
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English'
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 1 AND Language = 'English' AND IsOfficial = 1 AND CountryCode IN (SELECT Code FROM country WHERE IsOfficial = 1)
SELECT DISTINCT c.Name, c2.Name AS CountryName FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.IsOfficial = 1 AND c.Language = 'English' OR cl.IsOfficial = 1 AND c.Language = 'French'
```sql
SELECT DISTINCT 
  s.last_name 
FROM 
  Students s 
  JOIN 
  Addresses a ON s.current_address_id = a.address_id 
  JOIN 
  Student_Enrolment_Courses sec ON s.student_id = sec.student_id 
  JOIN 
  Degree_Programs dp ON sec.degree_program_id = dp.degree_program_id 
WHERE 
  a.city = 'North Carolina' 
  AND 
  s.current_address_id IS NULL 
  AND 
  dp.department_name = 'Other' 
ORDER BY 
  s.last_name;
```

This query joins the `Students`, `Addresses`, `Student_Enrolment_Courses`, and `Degree_Programs` tables to get the last name of students who live in North Carolina but have not registered in any degree programs. The `WHERE` clause filters the results to only include students who have not registered in any degree programs and are not in the `Addresses` table. The `ORDER BY` clause sorts the results by last name.
```sql
SELECT 
  a.address_id, 
  a.line_1, 
  a.line_2, 
  a.line_3, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country, 
  c.course_name, 
  COALESCE(c.degree_summary_name, 'Unknown') AS degree_summary_name, 
  COALESCE(c.degree_summary_description, 'Unknown') AS degree_summary_description
FROM 
  Addresses a
  JOIN 
  Courses c ON a.address_id = c.address_id
  JOIN 
  Degree_Programs d ON c.department_id = d.department_id
  JOIN 
  Sections s ON c.course_id = s.course_id
  JOIN 
  Semesters m ON s.semester_id = m.semester_id
  JOIN 
  Students b ON m.semester_id = b.semester_id
  JOIN 
  Student_Enrolment_Courses ec ON b.student_id = ec.student_id
  JOIN 
  Student_Enrolment se ON ec.student_enrolment_id = se.student_enrolment_id
  JOIN 
  Transcripts t ON se.student_enrolment_id = t.student_enrolment_id
WHERE
```sql
{
  "sql": "SELECT DISTINCT T1.date, T1.id FROM Addresses AS T2 JOIN Transcripts AS T1 ON T2.address_id = T1.address_id WHERE T1.transcript_id IN (SELECT T2.transcript_id FROM Transcripts AS T3 JOIN Student_Enrolment_Courses AS T4 ON T3.transcript_id = T4.transcript_id JOIN Student_Enrolment AS T5 ON T4.student_enrolment_id = T5.student_enrolment_id WHERE T5.student_id IN (SELECT student_id FROM Students WHERE permanent_address_id = T2.address_id) AND T5.semester_id IN (SELECT semester_id FROM Semesters WHERE semester_name = 'Fall') AND T5.date_first_registered >= '2020-01-01' AND T5.date_left <= '2022-12-31')",
}
```

This query uses the following steps to answer the question:

1. It selects the `date` and `id` columns from the `Addresses` table where the `address_id` matches the `address_id` in the `Transcripts` table.
2. It joins the `Transcripts` table with the `Student_Enrolment_Courses` table on
SELECT DISTINCT T1.first_name, T1.last_name, T1.cell_mobile_number FROM Addresses AS T1 INNER JOIN Students AS T2 ON T1.address_id = T2.permanent_address_id WHERE T2.first_name = 'Timmothy' AND T2.last_name = 'Ward'
SELECT DISTINCT T1.cell_mobile_number FROM Students AS T1 INNER JOIN Addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T1.first_name = 'Timmothy' AND T1.last_name = 'Ward'
```sql
SELECT 
  S.first_name, 
  S.middle_name, 
  S.last_name
FROM 
  Students AS S
  JOIN Addresses AS A ON S.current_address_id = A.address_id
WHERE 
  A.city = 'New York'
  AND A.zip_postcode = '10001'
  AND S.date_first_registered = (SELECT MIN(date_first_registered) 
                              FROM Students 
                              JOIN Addresses AS A ON S.current_address_id = A.address_id
                              WHERE A.city = 'New York' AND A.zip_postcode = '10001')
ORDER BY 
  S.first_name, 
  S.middle_name, 
  S.last_name
LIMIT 1;
```

This query selects the first name, middle name, and last name of the first student to register in New York, ordered by first name, middle name, and last name. It uses the `MIN` function to get the earliest date of registration for the first student in New York, and then joins the `Students` table with the `Addresses` table to get the current address of the first student. The `WHERE` clause filters the results to only include students with a city and zip code of New York. The `ORDER BY` clause sorts the results
```sql
SELECT 
  s1.first_name, 
  s1.middle_name, 
  s1.last_name 
FROM 
  Students s1 
  JOIN 
  Student_Enrolment_Courses sec 
  ON s1.student_id = sec.student_id 
  JOIN 
  Student_Enrolment se 
  ON sec.student_enrolment_id = se.student_enrolment_id 
  JOIN 
  Degrees_Programs dp 
  ON se.degree_program_id = dp.degree_program_id 
  JOIN 
  Departments d 
  ON dp.department_id = d.department_id 
  JOIN 
  Addresses a 
  ON s1.current_address_id = a.address_id 
  WHERE 
  s1.student_id = 1 
  AND 
  (s1.first_name, s1.middle_name, s1.last_name) IN (
    SELECT 
      s1.first_name, 
      s1.middle_name, 
      s1.last_name 
    FROM 
      Students s2 
      JOIN 
      Student_Enrolment_Courses sec2 
      ON s2.student_id = sec2.student_id 
      JOIN 
      Student_Enrolment se2 
      ON sec2.student_enrolment_id = se2.student
```sql
SELECT 
  a.first_name, 
  a.middle_name, 
  a.last_name
FROM 
  Addresses a
  JOIN 
  Students s ON a.address_id = s.permanent_address_id
  JOIN 
  Degree_Programs dp ON s.degree_program_id = dp.degree_program_id
  JOIN 
  Departments d ON dp.department_id = d.department_id
  JOIN 
  Courses c ON s.student_id = c.student_id
  JOIN 
  Sections s2 ON c.course_id = s2.course_id
  JOIN 
  Semesters s3 ON s2.semester_id = s3.semester_id
WHERE 
  s3.semester_name = 'EARLY' AND 
  s3.semester_description = 'EARLY'
ORDER BY 
  a.first_name, 
  a.last_name
LIMIT 1;
```

This query joins the `Addresses`, `Students`, `Degree_Programs`, `Departments`, `Courses`, `Sections`, and `Semesters` tables to retrieve the first name, middle name, and last name of the earliest graduate. The `WHERE` clause filters the results to only include the earliest semester, and the `ORDER BY` clause sorts the results by first name and
```sql
SELECT 
  s1.first_name, 
  s1.middle_name, 
  s1.last_name 
FROM 
  Students s1 
  JOIN 
  Student_Enrolment_Courses s2 ON s1.student_id = s2.student_id 
  JOIN 
  Student_Enrolment s3 ON s2.student_enrolment_id = s3.student_enrolment_id 
  JOIN 
  Degrees_Programs d1 ON s3.degree_program_id = d1.degree_program_id 
  JOIN 
  Departments d2 ON d1.department_id = d2.department_id 
  JOIN 
  Addresses a ON s1.current_address_id = a.address_id 
  JOIN 
  Addresses a1 ON s1.permanent_address_id = a1.address_id 
WHERE 
  s1.current_address_id = 1 
  AND s1.first_name = 'John' 
  AND s1.middle_name = 'Doe' 
  AND s1.last_name = 'Smith' 
  AND d1.degree_summary_name = 'Bachelor of Science' 
  AND d1.degree_summary_description = 'Computer Science' 
  AND d1.department_id = d2.department_id 
  AND d2.department_name = 'Computer
```sql
SELECT DISTINCT first_name
FROM Students
WHERE permanent_address_id!= current_address_id;
```

This query selects the distinct first name from the Students table where the permanent address ID is not equal to the current address ID.
```sql
SELECT DISTINCT 
  s.first_name 
FROM 
  Students s 
  JOIN Addresses a ON s.current_address_id = a.address_id 
WHERE 
  a.city!= s.current_address_city 
  AND a.zip_postcode!= s.current_address_zip_postcode;
```

This query joins the `Students` table with the `Addresses` table on the `current_address_id` column, and then selects the `first_name` column from the `Students` table where the `current_address_city` and `current_address_zip_postcode` columns are not equal to the corresponding columns in the `Addresses` table. The result is a list of students whose permanent address is different from their current address.
```sql
SELECT 
  a.address_id,
  a.line_1,
  a.line_2,
  a.line_3,
  COUNT(DISTINCT a.address_id) AS num_students
FROM 
  Addresses a
  JOIN 
  (SELECT 
     s.student_id, 
     s.current_address_id, 
     COUNT(DISTINCT s.student_id) AS num_students
   FROM 
     Students s
   JOIN 
     Student_Enrolment_Courses sce ON s.student_id = sce.student_id
   JOIN 
     Student_Enrolment se ON sce.student_enrolment_id = se.student_enrolment_id
   JOIN 
     Student_Enrolment student_enrolment ON se.student_enrolment_id = student_enrolment_id
   JOIN 
     Courses c ON se.course_id = c.course_id
   JOIN 
     Transcripts t ON c.transcript_id = t.transcript_id
   JOIN 
     Addresses a ON s.current_address_id = a.address_id
   GROUP BY 
     s.student_id, 
     s.current_address_id) AS subquery
GROUP BY 
  a.address_id
ORDER BY 
  num_students DESC;
```

This query joins the `Addresses` table with
```sql
SELECT 
  a.address_id,
  a.line_1,
  a.line_2
FROM 
  Addresses a
  JOIN 
  (
    SELECT 
      c.course_id,
      COUNT(DISTINCT s.student_id) as num_students
    FROM 
      Students s
    JOIN 
      Student_Enrolment_Courses sec ON s.student_id = sec.student_id
    JOIN 
      Courses c ON sec.course_id = c.course_id
    JOIN 
      Student_Enrolment se ON s.student_id = se.student_id
    JOIN 
      Transcripts t ON se.student_id = t.student_id
    JOIN 
      Addresses a ON s.permanent_address_id = a.address_id
    GROUP BY 
      c.course_id
  ) AS subquery
  ON a.address_id = subquery.course_id
ORDER BY 
  subquery.num_students DESC
LIMIT 1;
```

This query joins the `Addresses` table with a subquery that counts the number of students enrolled in each course. The subquery uses a `JOIN` with `Student_Enrolment_Courses`, `Courses`, `Student_Enrolment`, and `Transcripts` tables to get the required columns. The
```sql
SELECT 
  T1.transcript_date AS average_transcript_date
FROM 
  Transcripts T1
  JOIN 
  Addresses A ON T1.address_id = A.address_id
  JOIN 
  Student_Enrolment_Courses SEC ON T1.transcript_id = SEC.student_course_id
  JOIN 
  Student_Enrolment SE ON SEC.student_enrolment_id = SE.student_id
  JOIN 
  Degree_Programs DP ON SE.degree_program_id = DP.degree_program_id
  JOIN 
  Departments D ON DP.department_id = D.department_id
WHERE 
  T1.transcript_date >= (SELECT MIN(T2.transcript_date) FROM Transcripts T2
  JOIN 
    Addresses A2 ON T2.address_id = A2.address_id
    JOIN 
    Student_Enrolment_Courses SEC2 ON T2.transcript_id = SEC2.student_course_id
    JOIN 
    Student_Enrolment SE2 ON SEC2.student_id = SE2.student_id
    JOIN 
    Degree_Programs DP2 ON SE2.degree_program_id = DP2.degree_program_id
    JOIN 
    Departments D2 ON DP2.department_id = D2.department_id)
ORDER BY 
  T
```sql
SELECT 
  AVG(T1.transcript_date) AS average_transcript_date
FROM 
  Transcripts T1
  JOIN 
  Student_Enrolment_Courses SEC ON T1.transcript_id = SEC.student_course_id
  JOIN 
  Student_Enrolment SE ON SEC.student_enrolment_id = SE.student_id
  JOIN 
  Students S ON SE.student_id = S.student_id
GROUP BY 
  S.first_name, S.last_name
ORDER BY 
  average_transcript_date DESC;
```

This query uses the provided schema to calculate the average transcript date for each student. It joins the `Transcripts`, `Student_Enrolment_Courses`, `Student_Enrolment`, and `Students` tables to get the required columns. The `AVG` function is used to calculate the average transcript date, and the `GROUP BY` clause groups the results by the student's first and last name. The `ORDER BY` clause sorts the results in descending order by the average transcript date.
```sql
SELECT 
  a.address_line_1, 
  a.address_line_2, 
  a.address_line_3, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country, 
  d.department_name, 
  d.department_description, 
  c.course_name, 
  c.course_description, 
  s.section_name, 
  s.section_description, 
  s.student_name, 
  s.student_details, 
  s.cell_mobile_number, 
  s.email_address, 
  s.ssn, 
  s.date_first_registered, 
  s.date_left, 
  t.transcript_date, 
  t.transcript_details
FROM 
  Addresses a 
  JOIN Departments d ON a.department_id = d.department_id 
  JOIN Courses c ON a.address_id = c.address_id 
  JOIN Sections s ON a.address_id = s.address_id 
  JOIN Student_Enrolment_Courses sec ON s.course_id = sec.course_id 
  JOIN Students s ON sec.student_enrolment_id = s.student_id 
  JOIN Transcripts t ON s.student_id = t.student_id
WHERE 
  t.transcript_date = (SELECT MAX(t2.transcript
```sql
SELECT 
  t1.transcript_date AS earliest_release_date,
  t1.transcript_contents
FROM 
  Transcripts t1
  JOIN 
  Student_Enrolment_Courses t2 ON t1.transcript_id = t2.transcript_id
  JOIN 
  Student_Enrolment t3 ON t2.student_enrolment_id = t3.student_id
  JOIN 
  Student_Enrolment_Courses t4 ON t3.student_enrolment_id = t4.student_enrolment_id
  JOIN 
  Courses t5 ON t4.course_id = t5.course_id
  JOIN 
  Departments t6 ON t5.department_id = t6.department_id
  JOIN 
  Addresses t7 ON t6.department_id = t7.department_id
  JOIN 
  Courses t8 ON t7.address_id = t8.address_id
  JOIN 
  Addresses t9 ON t8.address_id = t9.address_id
WHERE 
  t1.transcript_date = ( SELECT MIN(t1.transcript_date) 
                        FROM 
                          Transcripts t1
                        JOIN 
                          Student_Enrolment_Courses t2 ON t1.transcript_id = t2.transcript_id
```sql
SELECT 
  COUNT(DISTINCT T1.student_id) AS num_students
FROM 
  Students AS T1
  JOIN 
  Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id
  JOIN 
  Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id
  JOIN 
  Degree_Programs AS T4 ON T3.degree_program_id = T4.degree_program_id
  JOIN 
  Departments AS T5 ON T4.department_id = T5.department_id
  JOIN 
  Courses AS T6 ON T3.course_id = T6.course_id
  JOIN 
  Sections AS T7 ON T6.section_id = T7.section_id
  JOIN 
  Addresses AS T8 ON T1.address_id = T8.address_id
  JOIN 
  Transcripts AS T9 ON T1.student_id = T9.student_id
WHERE 
  T1.current_address_id IS NOT NULL
  AND T1.permanent_address_id IS NOT NULL
  AND T9.transcript_date IS NOT NULL
ORDER BY 
  num_students DESC;
```

This query joins the required tables to get the number
```sql
SELECT DISTINCT COUNT(DISTINCT T1.student_id) AS student_count
FROM Students AS T1
JOIN Student_Enrolment_Courses AS T2 ON T1.student_id = T2.student_id
JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id
JOIN Courses AS T4 ON T3.course_id = T4.course_id
JOIN Departments AS T5 ON T4.department_id = T5.department_id
JOIN Addresses AS T6 ON T1.address_id = T6.address_id
JOIN Semesters AS T7 ON T3.semester_id = T7.semester_id
JOIN Transcripts AS T8 ON T2.student_course_id = T8.student_course_id
WHERE T1.current_address_id IS NOT NULL;
```

This query joins the required tables to get the count of unique students based on their ID. It uses the `DISTINCT` keyword to ensure that each student is only counted once, even if they have multiple enrollments. The `IS NOT NULL` condition in the `WHERE` clause ensures that only students with a current address are included in the count.
```sql
SELECT DISTINCT T1.transcript_date
FROM Transcripts T1
JOIN Addresses A ON T1.address_id = A.address_id
JOIN Student_Enrolment_Courses SEC ON T1.transcript_id = SEC.student_course_id
JOIN Student_Enrolment SE ON SEC.student_enrolment_id = SE.student_id
JOIN Degree_Programs DP ON SE.degree_program_id = DP.degree_program_id
WHERE T1.transcript_date = (SELECT MAX(T2.transcript_date) FROM Transcripts T2);
```

This query uses the following steps to answer the question:

1. It joins the `Transcripts` table with the `Addresses` table to get the transcript date for each student.
2. It joins the `Transcripts` table with the `Student_Enrolment_Courses` table to get the course details for each transcript.
3. It joins the `Student_Enrolment_Courses` table with the `Student_Enrolment` table to get the student details for each course.
4. It joins the `Degree_Programs` table with the `Student_Enrolment` table to get the degree details for each student.
5. It filters the results to only include the transcript date that is the
```sql
SELECT DISTINCT 
  T1.date_first_registered AS last_transcript_date
FROM 
  Students AS T1
  JOIN 
  Transcripts AS T2 ON T1.student_id = T2.student_id
WHERE 
  T2.transcript_date = ( SELECT MAX(T2.transcript_date) 
                        FROM 
                          Transcripts AS T3 
                        WHERE 
                          T3.student_id = T1.student_id )
```

This query selects the `date_first_registered` column from the `Students` table and joins it with the `Transcripts` table on the `student_id` column. It then selects the maximum `transcript_date` from the `Transcripts` table where the `student_id` matches the `student_id` from the `Students` table. The result is a single row with the `date_first_registered` column from the `Students` table, which represents the last transcript date.
```sql
SELECT 
  COUNT(DISTINCT T1.student_id) AS max_enrollments
FROM 
  Transcripts T1
  JOIN Student_Enrolment_Courses T2 ON T1.transcript_id = T2.transcript_id
  JOIN Student_Enrolment T3 ON T2.student_enrolment_id = T3.student_enrolment_id
  JOIN Students T4 ON T3.student_id = T4.student_id
  JOIN Addresses T5 ON T4.address_id = T5.address_id
WHERE 
  T1.transcript_date >= (SELECT MIN(T2.transcript_date) FROM Transcripts T2)
  AND T1.transcript_date <= (SELECT MAX(T2.transcript_date) FROM Transcripts T2)
ORDER BY 
  T1.transcript_date DESC
LIMIT 1;
```

This query will return the maximum number of times a course enrollment can show in different transcripts, along with the course enrollment ID. The query joins the `Transcripts`, `Student_Enrolment_Courses`, `Student_Enrolment`, and `Students` tables to get the required columns. It filters the transcripts to only include those with a date range that includes the minimum and maximum transcript dates for
```sql
SELECT 
  COUNT(DISTINCT T1.course_id) AS max_courses,
  T2.course_name
FROM 
  Addresses A
  JOIN Transcripts T1 ON A.address_id = T1.current_address_id
  JOIN Student_Enrolment_Courses SEC ON T1.transcript_id = SEC.student_course_id
  JOIN Courses C ON SEC.course_id = C.course_id
WHERE 
  T1.transcript_date >= (SELECT MAX(T2.transcript_date) FROM Transcripts T2)
GROUP BY 
  C.course_name
ORDER BY 
  C.course_name DESC;
```

This query will return the maximum number of times a course appears in different transcripts and the course name for each course. The `MAX` function is used to get the maximum transcript date, and the `DISTINCT` keyword is used to ensure we only get unique courses. The `JOIN` clauses are used to link the `Addresses`, `Transcripts`, and `Student_Enrolment_Courses` tables to the `Courses` table. The `WHERE` clause filters the transcripts to only include those with a date greater than or equal to the maximum transcript date. The `GROUP BY` clause groups the results by course name, and the `
```sql
SELECT 
  a.address_id, 
  a.line_1, 
  a.line_2, 
  a.line_3, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country, 
  a.other_address_details
FROM 
  Addresses a
WHERE 
  (SELECT COUNT(*) 
   FROM Addresses b 
   WHERE b.address_id = a.address_id) = (
    SELECT MIN(COUNT(*) 
     FROM Addresses b 
     WHERE b.address_id = a.address_id
   )
  )
ORDER BY 
  a.address_id ASC;
```

This query selects the `address_id`, `line_1`, `line_2`, `line_3`, `city`, `zip_postcode`, `state_province_county`, `country`, and `other_address_details` from the `Addresses` table where the count of rows in the `Addresses` table that match the current row is equal to the minimum count of rows in the `Addresses` table. The result is ordered by `address_id` in ascending order.
```sql
SELECT 
  a.address_id, 
  a.line_1, 
  a.line_2, 
  a.line_3, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country, 
  COUNT(DISTINCT c.course_name) AS num_courses
FROM 
  Addresses a
  JOIN 
  Courses c ON a.address_id = c.address_id
GROUP BY 
  a.address_id, 
  a.line_1, 
  a.line_2, 
  a.line_3, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country
ORDER BY 
  num_courses ASC
LIMIT 1
```

This query will return the address with the least number of courses. The `DISTINCT` keyword is used to ensure that each course is only counted once, even if there are multiple courses with the same name. The `LIMIT 1` clause is used to return only the first row of the result set.
```sql
SELECT 
  s1.department_name AS semester_name, 
  s2.degree_summary_name AS degree_summary_name
FROM 
  Degree_Programs d
  JOIN 
  Degree_Programs_degree_programs dp ON d.degree_program_id = dp.degree_program_id
  JOIN 
  Students s1 ON d.department_id = s1.department_id
  JOIN 
  Students s2 ON s1.student_id = s2.student_id
WHERE 
  s1.current_address_id = 1 AND s2.current_address_id = 1
  AND s1.permanent_address_id = 1 AND s2.permanent_address_id = 1
  AND s1.cell_mobile_number = 1 AND s2.cell_mobile_number = 1
  AND s1.email_address = 1 AND s2.email_address = 1
  AND s1.ssn = 1 AND s2.ssn = 1
  AND s1.date_first_registered = 1 AND s2.date_first_registered = 1
  AND s1.date_left = 1 AND s2.date_left = 1
  AND s1.other_student_details = 1 AND s2.other_student_details = 1
  AND s1.other_address
SELECT DISTINCT T1.id FROM Semesters AS T1 INNER JOIN Student_Enrolment_Courses AS T2 ON T1.semester_id = T2.semester_id INNER JOIN Students AS T3 ON T2.student_enrolment_id = T3.student_id WHERE T3.degree_program_id IN (SELECT degree_program_id FROM Degree_Programs WHERE department_id IN (SELECT department_id FROM Departments WHERE department_name = 'Masters') OR department_id IN (SELECT department_id FROM Departments WHERE department_name = 'Bachelors'))
SELECT DISTINCT COUNT(DISTINCT address_line_1) AS address_count FROM Addresses
```sql
SELECT DISTINCT 
  a.address_line_1, 
  a.address_line_2, 
  a.address_line_3, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country, 
  a.other_address_details
FROM 
  Addresses a
  JOIN 
  (SELECT DISTINCT 
  	student_id, 
  	other_address_details 
   FROM 
  	Students 
   WHERE 
  	other_address_details IS NOT NULL) b
ON 
  a.address_id = b.student_id
```

This query joins the `Addresses` table with a subquery that selects distinct `student_id` and `other_address_details` from the `Students` table. The `ON` clause uses the `address_id` column from the `Addresses` table to match the `student_id` column from the subquery. The `DISTINCT` keyword is used to ensure that only unique addresses are returned.
SELECT DISTINCT s.first_name, s.last_name FROM Students s JOIN Addresses a ON s.current_address_id = a.address_id ORDER BY s.last_name DESC, s.first_name ASC
SELECT DISTINCT s.first_name, s.last_name, d.department_name, c.course_name, s.current_address_id, s.cell_mobile_number, s.email_address, s.ssn, s.date_first_registered, s.date_left, se.section_name, se.section_description, se.other_details FROM Students s JOIN Departments d ON s.department_id = d.department_id JOIN Courses c ON s.course_id = c.course_id JOIN Student_Enrolment_Courses se ON s.student_id = se.student_id JOIN Student_Enrolment student_enrolment ON se.student_enrolment_id = student_enrolment_id JOIN Addresses a ON s.current_address_id = a.address_id
```sql
SELECT 
  DISTINCT 
  DISTINCT 
  CASE 
    WHEN T1.department_name = 'Section' THEN T1.department_name
    WHEN T1.department_name = 'Course' THEN T1.course_name
    WHEN T1.department_name = 'Semester' THEN T1.semester_name
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address' THEN T1.city
    WHEN T1.department_name = 'Address'
```sql
{
  "sql": "SELECT DISTINCT T1.course_name FROM Degrees_Programs AS T1 INNER JOIN Departments AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'h'"
}
}
```

This query selects the `course_name` column from the `Degrees_Programs` table where the `department_name` column is 'h'.
```sql
SELECT 
  first_name
FROM 
  Students
WHERE 
  country = 'Haiti' OR cell_mobile_number = 09700166582
ORDER BY 
  first_name
LIMIT 1;
```

This query selects the first name of the students who permanently live in Haiti or have the cell phone number 09700166582. It uses the `WHERE` clause to filter the students based on the specified conditions, and the `ORDER BY` clause to sort the results by the first name. The `LIMIT 1` clause is used to return only the first row of the sorted result set.
```sql
SELECT DISTINCT 
  s.first_name, 
  s.last_name
FROM 
  Students s
  JOIN Addresses a ON s.current_address_id = a.address_id
  JOIN Transcripts t ON s.student_id = t.student_id
WHERE 
  t.transcript_date LIKE '%09700166582%' 
  AND a.city = 'Haiti'
```

This query joins the `Students` table with the `Addresses` table on the `current_address_id` column, and then with the `Transcripts` table on the `student_id` column. It filters the results to include only rows where the `transcript_date` column contains the string '09700166582' and the `city` column is 'Haiti'. The `DISTINCT` keyword is used to ensure that each student's first and last name is only returned once.
SELECT DISTINCT T1.Title FROM Cartoon AS T2 JOIN TV_Channel AS T1 ON T2.Channel = T1.id ORDER BY T1.Title
SELECT DISTINCT T1.Title FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Title
SELECT DISTINCT T1.Title FROM Cartoon AS T2 JOIN TV_Channel AS T1 ON T2.Channel = T1.id WHERE T1.Directed_by = 'Ben Jones'
SELECT DISTINCT T1.Title FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = 'Ben Jones'
SELECT COUNT(T1.id) FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id = T2.Channel WHERE T2.Written_by = 'Joseph Kuhr'
SELECT COUNT(DISTINCT T1.Title) FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Written_by = 'Joseph Kuhr'
SELECT T1.Title, T2.Directed_by FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Air_Date
SELECT T1.Title, T1.Directed_by, T2.Directed_by AS 'Directors' FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id ORDER BY T1.Air_Date
SELECT T1.Title FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = 'Ben Jones' OR T1.Directed_by = 'Brandon Vietti'
SELECT T1.Title FROM Cartoon AS T1 INNER JOIN TV_Channel AS T2 ON T1.Channel = T2.id WHERE T1.Directed_by = 'Ben Jones' OR T1.Directed_by = 'Brandon Vietti'
SELECT T1.Country, COUNT(DISTINCT T1.id) AS num_channels FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Rating > 0 GROUP BY T1.Country
SELECT T1.Country, COUNT(DISTINCT T1.id) AS num_channels FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Rating > 0 GROUP BY T1.Country ORDER BY COUNT(T1.id) DESC LIMIT 1
SELECT DISTINCT T1.Series_name, COUNT(DISTINCT T2.Content) FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Country = 'USA' GROUP BY T1.Series_name
SELECT COUNT(DISTINCT T1.id) FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T2.Rating > 0
SELECT T1.Content FROM TV_Channel AS T1 INNER JOIN TV_series AS T2 ON T1.id = T2.Channel WHERE T1.Series_name = 'Sky Radio'
SELECT DISTINCT c.Name, c2.Name AS CountryName, s.Name AS AreaName FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode JOIN country s ON cl.CountryCode = s.Code2 ORDER BY s.SurfaceArea DESC LIMIT 5
SELECT Name, SurfaceArea FROM country WHERE SurfaceArea DESC LIMIT 5
SELECT DISTINCT c.Name, COUNT(DISTINCT c.Population) AS Population FROM city c JOIN country AS t ON c.CountryCode = t.Code GROUP BY c.Name ORDER BY c.Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT DISTINCT Name FROM countrylanguage WHERE Population = ( SELECT MIN(Population) FROM country WHERE Population = ( SELECT MIN(Population) FROM country ) )
SELECT DISTINCT c.Name FROM city AS c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Population < (SELECT MIN(Population) FROM city)
SELECT DISTINCT COUNT(*) FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' AND T2.IsOfficial = 1
SELECT COUNT(DISTINCT CountryCode) FROM country AS T1 INNER JOIN city AS T2 ON T1.Code = T2.CountryCode
SELECT DISTINCT Name FROM country WHERE Continent = 'Europe' AND Population = 80000
SELECT DISTINCT Name FROM country WHERE Population = 80000 AND Continent = 'Europe'
SELECT c.Name, SUM(c.Population) AS TotalPopulation, AVG(c.SurfaceArea) AS AverageArea FROM city c JOIN country AS t ON c.CountryCode = t.Code GROUP BY c.Name HAVING c.SurfaceArea > 3000
SELECT c.Name, SUM(c.SurfaceArea) AS TotalSurfaceArea, AVG(c.SurfaceArea) AS AverageSurfaceArea FROM country AS c JOIN city AS t ON c.Code = t.CountryCode WHERE t.SurfaceArea > 3000 GROUP BY c.Name
SELECT DISTINCT c.Name, c.Population FROM city c WHERE c.Population BETWEEN 160000 AND 900000
SELECT DISTINCT Name FROM city WHERE Population BETWEEN 160000 AND 900000
SELECT DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1 ORDER BY Population DESC
SELECT DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1
```json
{
  "sql": "SELECT c.Name, c.Code, c.Name AS Country, 
           (SELECT COUNT(*) FROM country AS t2 INNER JOIN countrylanguage AS t1 ON t2.Code = t1.CountryCode 
            WHERE t1.IsOfficial = 1 AND t2.Percentage = 1) AS Percentage FROM city AS t1 INNER JOIN country AS t2 ON t1.CountryCode = t2.Code GROUP BY t1.Name, t2.Code ORDER BY t1.Population DESC LIMIT 1"
}
```

This query works as follows:

- It selects the `Name` and `Code` columns from the `city` table, and the `Name` column from the `country` table.
- It joins the `city` table with the `country` table on the `CountryCode` foreign key.
- It filters the results to only include countries where the `IsOfficial` column is 1 (i.e., official languages) and the `Percentage` column is 1 (i.e., the language is the official language of the country).
- It groups the results by the `Name` and `Code` columns, and counts the number of rows for each group.
- It orders the results by the `
SELECT DISTINCT Code, Name, Percentage FROM countrylanguage AS T1 INNER JOIN country AS T2 ON T1.CountryCode = T2.Code ORDER BY Percentage DESC LIMIT 10
SELECT DISTINCT c.Name, COUNT(DISTINCT c.Name) AS TotalCountries, COUNT(DISTINCT c.Name) * 100 / COUNT(DISTINCT l.Percentage) AS Percentage FROM country AS c INNER JOIN countrylanguage AS l ON c.Code = l.CountryCode GROUP BY c.Name
SELECT COUNT(DISTINCT c.ID) AS count FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.Language = 'Spanish'
SELECT DISTINCT c.Code FROM country AS t1 INNER JOIN countrylanguage AS t2 ON t1.Code = t2.CountryCode WHERE t1.Name = 'Spain' AND t2.Percentage > 50
SELECT DISTINCT Code FROM countrylanguage WHERE Language = 'Spanish'
SELECT DISTINCT Conductor_ID FROM conductor
SELECT DISTINCT Conductor_ID FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT DISTINCT Name FROM conductor ORDER BY Age
SELECT DISTINCT C.Name FROM conductor AS C JOIN orchestra AS O ON C.Conductor_ID = O.Conductor_ID WHERE O.Nationality!= 'USA'
SELECT DISTINCT C.Name FROM conductor AS C WHERE C.Nationality!= 'USA'
SELECT DISTINCT T1.Name, T2.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T1.Year_of_Founded DESC
SELECT DISTINCT T1.Name, T2.Year_of_Work FROM orchestra AS T1 INNER JOIN conductor AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T1.Year_of_Founded DESC
SELECT AVG(Attendance) FROM show WHERE Type ='show' AND If_first_show = 1
SELECT AVG(Attendance) FROM show WHERE If_first_show = 1
SELECT DISTINCT T1.Name, T2.Year_of_Work, T1.Year_of_Work AS Year_of_Performance FROM conductor AS T1 INNER JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Type!= 'Live final'
SELECT MAX(Share) AS max_share, MIN(Share) AS min_share FROM performance WHERE Type = 'Live final' GROUP BY Share
SELECT DISTINCT Nationality FROM conductor WHERE Nationality IN (SELECT Nationality FROM orchestra WHERE Record_Company = 'Conductor's Record Company')
SELECT DISTINCT Nationality FROM conductor WHERE Nationality IN (SELECT Nationality FROM orchestra WHERE Record_Company = 'Conductor_Artists' GROUP BY Nationality)
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Age DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor WHERE Age = ( SELECT MAX(Age) FROM conductor )
SELECT DISTINCT C.Name, p.Name AS conductor_name FROM conductor C JOIN performance p ON C.Conductor_ID = p.Conductor_ID
SELECT DISTINCT C.Name, O.Name AS Orchestra_Name FROM conductor C JOIN performance P ON C.Conductor_ID = P.Conductor_ID JOIN orchestra O ON P.Orchestra_ID = O.Orchestra_ID
SELECT DISTINCT C.Name FROM conductor AS C JOIN performance AS P ON C.Conductor_ID = P.Conductor_ID WHERE P.Type = 'Concert' AND P.Share > 1
SELECT DISTINCT C.Name FROM conductor AS C JOIN performance AS P ON C.Conductor_ID = P.Conductor_ID WHERE P.Type = 'Conductor'
SELECT Name FROM conductor WHERE Conductor_ID = ( SELECT Conductor_ID FROM performance GROUP BY Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID ORDER BY T2.Official_ratings_(millions) DESC LIMIT 1
SELECT DISTINCT T1.Name FROM conductor AS T1 JOIN performance AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T2.Year_of_Work > 2008
SELECT DISTINCT C.Name FROM conductor AS C JOIN orchestra AS O ON C.Conductor_ID = O.Conductor_ID WHERE O.Year_of_Work > 2008
SELECT DISTINCT T1.Name, COUNT(DISTINCT T2.Conductor_ID) AS Number_of_Orchestras FROM orchestra AS T1 INNER JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Name
SELECT DISTINCT Conductor_ID FROM conductor WHERE Conductor_ID IN (SELECT Conductor_ID FROM orchestra WHERE Orchestra_ID IN (SELECT Orchestra_ID FROM performance WHERE Type = 'Orchestra') GROUP BY Orchestra_ID HAVING COUNT(*) > 1)
SELECT DISTINCT T1.Name, T2.Name AS Orchestra_Name FROM performance AS T1 INNER JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID ORDER BY T1.Year_of_Work ASC
SELECT DISTINCT T1.Major_Record_Format, COUNT(DISTINCT T2.Conductor_ID) AS Conductor_Frequency FROM orchestra AS T1 INNER JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID GROUP BY T1.Major_Record_Format
SELECT DISTINCT T1.Conductor_ID, T1.Name, T1.Year_of_Work, T2.Name AS Company_Name FROM conductor AS T1 INNER JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(T1.Conductor_ID) DESC LIMIT 1
SELECT DISTINCT T1.Conductor_ID, T1.Name, T1.Year_of_Work, T1.Nationality, T1.Year_of_Work AS Year_of_Work, T2.Record_Company, COUNT(DISTINCT T2.Record_Company) AS Record_Company_Count FROM conductor AS T1 INNER JOIN orchestra AS T2 ON T1.Conductor_ID = T2.Conductor_ID GROUP BY T1.Conductor_ID, T1.Name, T1.Year_of_Work, T1.Nationality, T1.Year_of_Work
SELECT DISTINCT T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Type = 'Performance' AND T2.Share = 0
SELECT DISTINCT T1.Name FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Type = 'Orchestral'
SELECT DISTINCT C.Name, COALESCE(S.Name, 'Unknown') AS Company_Name FROM orchestra AS C JOIN performance AS P ON C.Conductor_ID = P.Conductor_ID JOIN show AS S ON P.Performance_ID = S.Performance_ID WHERE P.Year_of_Founded BETWEEN 2003 AND (SELECT MAX(Year_of_Founded) FROM orchestra WHERE Year_of_Founded < 2003) AND P.Year_of_Founded > (SELECT MAX(Year_of_Founded) FROM orchestra WHERE Year_of_Founded > 2003)
SELECT DISTINCT C.Name, COALESCE(S.Name, 'Unknown') AS Company FROM orchestra AS S JOIN performance AS P ON S.Orchestra_ID = P.Orchestra_ID JOIN conductor AS C ON P.Conductor_ID = C.Conductor_ID WHERE P.Year_of_Founded BETWEEN 2003 AND (SELECT MIN(Year_of_Founded) FROM orchestra WHERE Year_of_Founded < 2003) AND P.Year_of_Founded < (SELECT MAX(Year_of_Founded) FROM orchestra WHERE Year_of_Founded > 2003)
SELECT COUNT(*) FROM performance AS p JOIN show AS s ON p.Performance_ID = s.Performance_ID WHERE s.Result = 'CD' OR s.Result = 'DVD'
SELECT DISTINCT T1.Conductor_ID FROM orchestra AS T1 INNER JOIN show AS T2 ON T1.Conductor_ID = T2.Conductor_ID WHERE T1.Major_Record_Format = 'CD' OR T1.Major_Record_Format = 'DVD'
SELECT DISTINCT T1.Year_of_Work, T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T1.Type = 'Performance' AND T1.Official_ratings_(millions) > 0 AND T2.Conductor_ID IN (SELECT Conductor_ID FROM conductor WHERE Nationality = 'Unknown')
SELECT DISTINCT T1.Year_of_Founded FROM orchestra AS T1 JOIN performance AS T2 ON T1.Orchestra_ID = T2.Orchestra_ID WHERE T2.Type = 'Performance' AND T1.Year_of_Founded > 1
SELECT COUNT(DISTINCT student_id) FROM Highschooler
SELECT COUNT(DISTINCT student_id) FROM Highschooler WHERE grade = 'high school' OR grade = 'high school' OR grade = 'high school
SELECT DISTINCT name, grade FROM Highschooler WHERE grade IN (SELECT grade FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Highschooler)))
SELECT DISTINCT name, grade FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) > 1)
SELECT DISTINCT g.* FROM Highschooler AS h JOIN Likes AS l ON h.ID = l.student_id
SELECT DISTINCT g.grade FROM Highschooler AS h JOIN Likes AS l ON h.ID = l.student_id WHERE l.liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT friend_id FROM Friend WHERE student_id IN (SELECT student_id FROM Highschooler WHERE grade = 'A')))
SELECT DISTINCT g.grade FROM Highschooler AS h INNER JOIN Likes AS l ON h.ID = l.student_id WHERE l.liked_id =?
SELECT DISTINCT g.grade FROM Highschooler AS h INNER JOIN Likes AS l ON h.ID = l.student_id WHERE l.liked_id = (SELECT ID FROM Highschooler WHERE name = 'Kyle')
SELECT DISTINCT name FROM Highschooler WHERE grade = 10
SELECT DISTINCT name FROM Highschooler WHERE grade = 10
SELECT DISTINCT T1.ID FROM Highschooler AS T1 INNER JOIN Friend AS T2 ON T1.ID = T2.friend_id WHERE T1.name = 'Kyle'
SELECT DISTINCT ID FROM Highschooler WHERE ID =?
SELECT COUNT(DISTINCT student_id) FROM Highschooler WHERE grade = 9 OR grade = 10
SELECT COUNT(DISTINCT student_id) FROM Highschooler WHERE grade IN (9, 10)
SELECT DISTINCT g.grade, COUNT(*) as count FROM Highschooler AS h JOIN Likes AS l ON h.ID = l.student_id GROUP BY g.grade
SELECT DISTINCT g.grade, COUNT(*) as count FROM Highschooler AS h JOIN Likes AS l ON h.ID = l.student_id GROUP BY g.grade
SELECT name FROM Highschooler WHERE grade = ( SELECT MAX(grade) FROM Highschooler GROUP BY grade )
```json
{
  "sql": "SELECT MAX(grade) FROM Highschooler WHERE grade IN (SELECT grade FROM Highschooler WHERE likes.liked_id IN (SELECT student_id FROM Likes WHERE likes.liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT friend_id FROM Highschooler WHERE ID IN (SELECT ID FROM Highschooler WHERE grade =?)))")
}
```

This query works by first finding the IDs of students who have liked the highest grade. It then finds the highest grade among those students. Finally, it selects the grade with the highest ID.
SELECT DISTINCT g.* FROM Highschooler g JOIN Likes l ON g.ID = l.student_id WHERE l.liked_id IN (SELECT student_id FROM Highschooler WHERE grade >= 4)
SELECT DISTINCT g.* FROM Highschooler g JOIN Likes l ON g.ID = l.student_id WHERE l.liked_id IN (SELECT student_id FROM Highschooler WHERE grade >= 4)
SELECT H.ID, COUNT(L.liked_id) AS num_friends FROM Highschooler H JOIN Likes L ON H.ID = L.student_id GROUP BY H.ID
SELECT DISTINCT COUNT(DISTINCT student_id) AS num_friends FROM Highschooler
SELECT DISTINCT H.name, COUNT(DISTINCT L.student_id) AS num_friends FROM Highschooler H JOIN Likes L ON H.ID = L.student_id GROUP BY H.name
SELECT DISTINCT h.name, COUNT(DISTINCT f.friend_id) AS friends FROM Highschooler h JOIN Friend f ON h.ID = f.friend_id GROUP BY h.name
SELECT name FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend GROUP BY friend_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT DISTINCT H.name FROM Highschooler AS H JOIN Likes AS L ON H.ID = L.student_id WHERE L.liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Highschooler WHERE grade = 12)))
SELECT DISTINCT name FROM Highschooler WHERE grade >= 9 AND (SELECT COUNT(*) FROM Highschooler WHERE grade >= 9 GROUP BY name HAVING COUNT(*) >= 3) = 3
SELECT DISTINCT friend.name FROM Highschooler AS h JOIN Friend AS f ON h.ID = f.friend_id
SELECT DISTINCT f.name FROM Highschooler AS h JOIN Friend AS f ON h.ID = f.friend_id
SELECT COUNT(DISTINCT student_id) FROM Highschooler WHERE grade = 12
SELECT COUNT(DISTINCT student_id) FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id =?))
SELECT DISTINCT s.ID FROM Highschooler AS s JOIN Likes AS l ON s.ID = l.student_id WHERE l.liked_id IS NULL
SELECT DISTINCT s.ID FROM Highschooler AS s JOIN Likes AS l ON s.ID = l.student_id WHERE l.liked_id IS NULL
```json
{
  "sql": "SELECT DISTINCT name FROM Highschooler WHERE ID NOT IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes
SELECT DISTINCT name FROM Highschooler WHERE ID NOT IN (SELECT friend_id FROM Friend GROUP BY friend_id HAVING COUNT(*) = 0)
SELECT DISTINCT h.ID FROM Highschooler h JOIN Likes l ON h.ID = l.liked_id JOIN Friend f ON l.student_id = f.friend_id WHERE f.student_id IN (SELECT student_id FROM Likes WHERE liked_id =?)
SELECT DISTINCT s.ID FROM Highschooler AS s JOIN Likes AS l ON s.ID = l.student_id WHERE l.liked_id IN (SELECT ID FROM Highschooler WHERE friend_id IN (SELECT ID FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id =?))
SELECT COUNT(DISTINCT Singer_ID FROM singer WHERE Net_Worth_Millions > 0
SELECT COUNT(DISTINCT Singer_ID FROM singer) AS singers
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID ORDER BY s.Net_Worth_Millions ASC
SELECT Birth_Year, Citizenship FROM singer WHERE Singer_ID IN (SELECT Singer_ID FROM song WHERE Sales > 1000000)
SELECT DISTINCT Birth_Year, Citizenship FROM singer WHERE Net_Worth_Millions > 0
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS s2 ON s.Singer_ID = s2.Singer_ID WHERE s.Citizenship!= 'France'
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS s2 ON s.Singer_ID = s2.Singer_ID WHERE s.Citizenship!= 'French'
SELECT DISTINCT Name FROM singer WHERE Birth_Year IN (1948, 1949)
SELECT DISTINCT Name FROM singer WHERE Birth_Year IN (1948, 1949)
SELECT s.Name, s.Net_Worth_Millions FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID ORDER BY t.Sales DESC LIMIT 1
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID ORDER BY T1.Net_Worth_Millions DESC LIMIT 1
SELECT DISTINCT C.Citizenship, COUNT(*) as Total_Singers FROM singer AS C JOIN song AS S ON C.Singer_ID = S.Singer_ID GROUP BY C.Citizenship
SELECT DISTINCT C.Citizenship, COUNT(*) as Total_Singers FROM singer AS C JOIN song AS S ON C.Singer_ID = S.Singer_ID GROUP BY C.Citizenship
SELECT DISTINCT s.Name, COUNT(DISTINCT s.Singer_ID) AS Most_Citizenship FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID GROUP BY s.Name ORDER BY COUNT(DISTINCT s.Singer_ID) DESC LIMIT 1
SELECT DISTINCT T1.Name, COUNT(T1.Net_Worth_Millions) AS Count FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID GROUP BY T1.Name ORDER BY Count DESC LIMIT 1
SELECT DISTINCT C.Citizenship, MAX(S.Net_Worth_Millions) AS max_net_worth FROM singer AS C JOIN song AS S ON C.Singer_ID = S.Singer_ID GROUP BY C.Citizenship
SELECT MAX(Net_Worth_Millions) FROM singer WHERE Citizenship = 'USA'
SELECT DISTINCT T1.Name, T2.Name AS Singer_Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID
SELECT DISTINCT s.Name, s.Name AS Singer_Name FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS s2 ON s.Singer_ID = s2.Singer_ID WHERE s2.Sales > 300000
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS s2 ON s.Singer_ID = s2.Singer_ID WHERE s2.Sales > 300000
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS s2 ON s.Singer_ID = s2.Singer_ID WHERE s2.Sales > 1
SELECT DISTINCT s.Name FROM singer AS s JOIN song AS s2 ON s.Singer_ID = s2.Singer_ID WHERE s2.Sales > 1
SELECT s.Name, SUM(s.Sales) AS Total_Sales FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID GROUP BY s.Name
SELECT s.Name, SUM(s.Sales) AS Total_Sales FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID GROUP BY s.Name
SELECT DISTINCT s.Name FROM singer AS s WHERE s.Net_Worth_Millions = 0
SELECT DISTINCT s.Name FROM singer AS s WHERE s.Net_Worth_Millions = 0
SELECT DISTINCT s.Name, s.Birth_Year, COUNT(s.Sales) AS Total_Sales FROM singer AS s JOIN song AS t ON s.Singer_ID = t.Singer_ID WHERE s.Birth_Year BETWEEN 1945 AND 1955 GROUP BY s.Name, s.Birth_Year
SELECT DISTINCT C.Citizenship FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID = T2.Singer_ID WHERE T1.Birth_Year BETWEEN 1945 AND 1955
SELECT COUNT(DISTINCT feature_type_code) AS total_features FROM Ref_Feature_Types
SELECT DISTINCT T1.feature_type_name FROM Ref_Feature_Types AS T1 INNER JOIN Other_Available_Features AS T2 ON T1.feature_type_code = T2.feature_type_code WHERE T2.feature_id = 'AirCon'
SELECT DISTINCT p.property_type_code, p.property_type_description FROM Properties p JOIN Ref_Property_Types rp ON p.property_type_code = rp.property_type_code
SELECT DISTINCT p.property_name, p.property_address, p.room_count FROM Properties p JOIN Other_Property_Features o ON p.property_id = o.property_id WHERE o.feature_id IN (SELECT feature_id FROM Other_Available_Features WHERE feature_type_code = 'Houses' OR feature_type_code = 'Apartments') GROUP BY p.property_name, p.property_address, p.room_count
SELECT DISTINCT T1.name FROM Highschooler AS T1 JOIN Likes AS T2 ON T1.ID = T2.student_id WHERE T2.liked_id IN (SELECT ID FROM Highschooler WHERE ID IN (SELECT friend_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id =?)) OR ID IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id =?))
SELECT DISTINCT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id =?) AND friend_id IN (SELECT ID FROM Friend WHERE student_id IN (SELECT student_id FROM Likes WHERE liked_id =?))
SELECT DISTINCT student_id, COUNT(*) as likes FROM Likes GROUP BY student_id
SELECT DISTINCT student_id FROM Likes GROUP BY student_id
SELECT DISTINCT h.name, COUNT(l.liked_id) AS likes FROM Highschooler h JOIN Likes l ON h.ID = l.student_id GROUP BY h.name
SELECT DISTINCT name, COUNT(*) as likes FROM Highschooler AS h JOIN Likes AS l ON h.ID = l.student_id GROUP BY h.name
SELECT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id ORDER BY COUNT(*) DESC LIMIT 1)
SELECT name FROM Highschooler WHERE likes LIKE?
SELECT DISTINCT name FROM Highschooler WHERE ID IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT DISTINCT name FROM Highschooler WHERE likes.liked_id IN (SELECT student_id FROM Likes GROUP BY student_id HAVING COUNT(*) >= 2)
SELECT DISTINCT s.name FROM Highschooler AS s JOIN Likes l ON s.ID = l.student_id WHERE l.liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE grade > 5)) AND likes.grade > 5)
SELECT DISTINCT h.name FROM Highschooler h JOIN Likes l ON h.ID = l.student_id WHERE l.liked_id IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Friend WHERE grade > 5)) GROUP BY h.name HAVING COUNT(DISTINCT h.ID) >= 2
SELECT COUNT(DISTINCT likes.student_id) FROM Highschooler AS h INNER JOIN Likes AS l ON h.ID = l.student_id
SELECT COUNT(DISTINCT likes.student_id) FROM Highschooler AS h INNER JOIN Likes AS l ON h.ID = l.student_id WHERE h.name = 'Kyle'
SELECT AVG(grade) FROM Highschooler WHERE ID IN (SELECT student_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id =?))
SELECT AVG(grade) FROM Highschooler WHERE friend_id IN (SELECT student_id FROM Friend GROUP BY student_id HAVING COUNT(*) > 1)
SELECT DISTINCT g.grade FROM Highschooler AS h INNER JOIN Likes l ON h.ID = l.student_id WHERE l.liked_id IS NOT NULL AND h.ID NOT IN (SELECT friend_id FROM Friend WHERE friend_id IN (SELECT student_id FROM Likes WHERE liked_id IS NOT NULL))
SELECT DISTINCT g.grade FROM Highschooler AS h INNER JOIN Likes l ON h.ID = l.student_id WHERE l.liked_id IS NULL
```json
{
  "sql": "SELECT DISTINCT T1.state, T2.first_name, T2.last_name FROM Owners AS T1 INNER JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.owner_id IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 0) AND T2.role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM Professionals WHERE role_code IN (SELECT role_code FROM
SELECT DISTINCT T1.first_name, T1.last_name, T1.street, T1.city, T1.state, T1.zip_code FROM Owners AS T1 INNER JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Professionals AS T3 ON T2.dog_id = T3.professional_id WHERE T3.role_code = 'owner' AND T3.first_name = 'John' AND T3.last_name = 'Doe' AND T1.state = 'CA' AND T1.zip_code = '12345'
SELECT AVG(T1.age) AS average_age FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.dog_id IN (SELECT dog_id FROM Treatments) GROUP BY T1.age
SELECT AVG(T1.age) AS average_age FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Professionals AS T3 ON T1.owner_id = T3.owner_id INNER JOIN Treatments AS T4 ON T1.dog_id = T4.dog_id WHERE T4.treatment_type_code = 'treatment' AND T4.date_departed IS NOT NULL GROUP BY T1.age
SELECT DISTINCT p.first_name, p.last_name, o.cell_number FROM Professionals p JOIN Owners o ON p.owner_id = o.owner_id JOIN Dogs d ON o.owner_id = d.owner_id JOIN Charges c ON d.dog_id = c.dog_id JOIN Treatments t ON c.dog_id = t.dog_id WHERE c.charge_amount > 2 AND d.age > 2
SELECT DISTINCT p.first_name, p.last_name, t.cell_number FROM Professionals p JOIN Owners o ON p.owner_id = o.owner_id JOIN Dogs d ON o.owner_id = d.owner_id JOIN Charges c ON d.dog_id = c.dog_id JOIN Treatments t ON c.dog_id = t.dog_id WHERE o.state = 'Indiana' AND t.treatment_type_code IN ( SELECT treatment_type_code FROM Treatment_Types WHERE count(*) > 2 )
```json
{
  "sql": "SELECT DISTINCT D.name FROM Dogs AS T1.dog_id, Owners AS T2.owner_id, Treatments AS T3.treatment_id, Treatment_Types AS T4.treatment_type_code, Sizes AS T5.size_code, Breeds AS T6.breed_code WHERE T1.owner_id = T2.owner_id AND T1.weight > 1000 AND T3.cost_of_treatment < 1000 AND T4.treatment_type_description = 'Cost"
SELECT DISTINCT T1.name FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.weight > 1000 AND T1.date_arrived IS NOT NULL
SELECT DISTINCT T1.first_name FROM Owners AS T1 INNER JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.first_name NOT IN (SELECT T1.first_name FROM Dogs WHERE T2.breed_code = 'PROF')
SELECT DISTINCT first_name FROM Owners WHERE first_name NOT IN (SELECT first_name FROM Dogs WHERE breed_code = 'Professional' OR breed_code = 'Owner')
SELECT DISTINCT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.dog_id NOT IN (SELECT dog_id FROM Treatments WHERE treatment_type_code = 'none')
SELECT DISTINCT T1.first_name, T1.last_name, T1.email_address FROM Professionals AS T1 INNER JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T2.dog_id IS NULL
SELECT o.first_name, o.last_name FROM Owners AS o JOIN Dogs AS d ON o.owner_id = d.owner_id
SELECT o.first_name, o.last_name FROM Owners AS o JOIN Dogs AS d ON o.owner_id = d.owner_id GROUP BY o.first_name, o.last_name ORDER BY COUNT(dog_id) DESC LIMIT 1
SELECT p.first_name, p.first_name, p.role, COUNT(DISTINCT t.treatment_type_code) AS num_treatments FROM Professionals p JOIN Treatment_Types t ON p.role_code = t.treatment_type_code GROUP BY p.first_name, p.role HAVING COUNT(DISTINCT t.treatment_type_code) >= 2
```json
{
  "sql": "SELECT DISTINCT p.first_name, p.role, t.treatment_type_description FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id WHERE t.treatment_type_code IN ( SELECT t2.treatment_type_code FROM Treatments t2 WHERE t2.treatment_type_code IN ( SELECT treatment_type_code FROM Charges WHERE charge_amount > 100 ) ) AND p.professional_id IN ( SELECT professional_id FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE
SELECT breed_name FROM Breeds WHERE breed_code = ( SELECT breed_code FROM Dogs GROUP BY breed_code ORDER BY COUNT(*) DESC LIMIT 1 )
SELECT DISTINCT T1.breed_name FROM Breeds AS T1 INNER JOIN Dogs AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT o.first_name, o.last_name FROM Owners AS o JOIN Dogs AS d ON o.owner_id = d.owner_id WHERE d.date_arrived > (SELECT MIN(date_arrived) FROM Dogs) AND d.date_departed < (SELECT MAX(date_departed) FROM Dogs)
SELECT o.first_name, o.last_name FROM Owners AS o JOIN Dogs AS d ON o.owner_id = d.owner_id WHERE d.dog_id IN ( SELECT t.dog_id FROM Treatments AS t JOIN Professionals AS p ON t.professional_id = p.professional_id WHERE t.treatment_type_code = 'treatment' AND t.cost_of_treatment > ( SELECT MAX(cost_of_treatment) FROM Treatments WHERE treatment_type_code = 'treatment') ) GROUP BY o.first_name, o.last_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT t.treatment_type_description, SUM(t.cost_of_treatment) AS total_cost FROM Treatment_Types t JOIN Charges c ON t.treatment_type_code = c.treatment_type_code JOIN Dogs d ON c.dog_id = d.dog_id JOIN Owners o ON d.owner_id = o.owner_id GROUP BY t.treatment_type_code ORDER BY SUM(t.cost_of_treatment) ASC
SELECT t.treatment_type_description, MIN(t.cost_of_treatment) AS min_cost FROM Treatment_Types t JOIN Charges c ON t.treatment_type_code = c.treatment_type_code JOIN Dogs d ON c.dog_id = d.dog_id GROUP BY t.treatment_type_code
SELECT o.owner_id, o.zip_code FROM Owners AS o JOIN ( SELECT o.owner_id, SUM(CASE WHEN t.charge_type = 'payment' THEN charge_amount ELSE 0 END) AS total_charge FROM Charges AS t JOIN Owners AS o ON t.owner_id = o.owner_id GROUP BY o.owner_id ) AS subquery GROUP BY o.owner_id, o.zip_code ORDER BY total_charge DESC LIMIT 1
SELECT o.owner_id, o.zip_code, COUNT(DISTINCT t.charge_amount) AS total_spent FROM Owners o JOIN Charges c ON o.owner_id = c.owner_id JOIN Dogs d ON c.dog_id = d.dog_id JOIN Treatment_Types t ON c.treatment_type_code = t.treatment_type_code GROUP BY o.zip_code ORDER BY total_spent DESC LIMIT 1
SELECT p.first_name, p.last_name, o.street, o.city, o.state, o.zip_code, o.email_address, o.home_phone, o.cell_number, t.treatment_type_description, t.cost_of_treatment, COUNT(DISTINCT d.dog_id) AS num_treatments FROM Professionals p JOIN Owners o ON p.owner_id = o.owner_id JOIN Dogs d ON o.owner_id = d.owner_id JOIN Treatments t ON d.dog_id = t.dog_id GROUP BY p.first_name, p.last_name, o.street, o.city, o.state, o.zip_code, o.email_address, o.home_phone, o.cell_number, t.treatment_type_description, t.cost_of_treatment
```json
{
  "sql": "SELECT p.first_name, p.last_name, t.treatment_type_description FROM Professionals p JOIN Treatments t ON p.professional_id = t.professional_id WHERE t.treatment_type_code IN ( SELECT t2.treatment_type_code FROM Charges c JOIN Treatments t2 ON c.charge_id = t2.charge_id WHERE t2.charge_amount > 100) AND p.professional_id IN ( SELECT p.professional_id FROM Professionals p WHERE p.role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT role_code FROM Professionals WHERE role_code IN ( SELECT
SELECT DISTINCT T1.first_name, T1.last_name FROM Professionals AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id INNER JOIN Charges AS T4 ON T3.dog_id = T4.dog_id INNER JOIN Treatment_Types AS T5 ON T4.treatment_type_code = T5.treatment_type_code WHERE T4.cost_amount < (SELECT AVG(cost_amount) FROM Charges) AND T1.role_code = 'PROFESSOR'
SELECT DISTINCT T1.first_name, T1.last_name FROM Professionals AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id INNER JOIN Charges AS T4 ON T3.dog_id = T4.dog_id INNER JOIN Treatments AS T5 ON T4.dog_id = T5.dog_id WHERE T4.cost_of_treatment < (SELECT AVG(T4.cost_of_treatment) FROM Charges AS T1 INNER JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id) AS Average_Treatment
SELECT t.first_name, t.first_name, t.first_name AS treatment_first_name FROM Treatment_Types t JOIN Treatment_Treatments t2 ON t.treatment_type_code = t2.treatment_type_code JOIN Dogs d ON t2.dog_id = d.dog_id JOIN Owners o ON d.owner_id = o.owner_id JOIN Professionals p ON o.owner_id = p.owner_id WHERE t.treatment_type_description = 'Treatment' AND t.treatment_type_code = 'Treatment' GROUP BY t.first_name
SELECT DISTINCT T1.first_name, T2.first_name AS 'operating_professionals_first_name' FROM Owners AS T1 INNER JOIN Professionals AS T2 ON T1.first_name = T2.first_name AND T1.last_name = T2.last_name WHERE T1.first_name = 'John' AND T1.last_name = 'Doe' AND T1.street = '123 Main St' AND T1.city = 'Anytown' AND T1.state = 'CA' AND T1.zip_code = '12345'
SELECT DISTINCT t.treatment_type_description, COUNT(DISTINCT d.dog_id) AS num_dogs FROM Dogs d JOIN Treatments t ON d.dog_id = t.dog_id JOIN Treatment_Types tt ON t.treatment_type_code = tt.treatment_type_code GROUP BY t.treatment_type_code
SELECT DISTINCT T1.treatment_type_description, T2.breed_name FROM Treatment_Types AS T1 JOIN Treatment_Types AS T2 ON T1.treatment_type_code = T2.treatment_type_code JOIN Breeds AS T3 ON T1.treatment_type_code = T3.breed_code JOIN Dogs AS T4 ON T1.treatment_type_code = T4.treatment_type_code JOIN Owners AS T5 ON T4.owner_id = T5.owner_id
SELECT DISTINCT first_name, last_name, COUNT(DISTINCT CASE WHEN status = 'adopted' THEN dog_id ELSE 0 END) AS adopted FROM Dogs WHERE status = 'adopted' GROUP BY first_name, last_name
SELECT DISTINCT first_name, last_name, COUNT(DISTINCT CASE WHEN status = 'adopted' THEN dog_id ELSE 0 END) AS dog_adopted FROM Dogs WHERE status = 'adopted' GROUP BY first_name, last_name
SELECT DISTINCT T1.first_name, T2.name FROM Owners AS T1 INNER JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT first_name, name FROM Owners WHERE owner_id IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 'F' GROUP BY owner_id HAVING COUNT(*) > 1) UNION SELECT first_name, name FROM Dogs WHERE owner_id IN (SELECT owner_id FROM Owners WHERE first_name =? AND last_name =?)
SELECT DISTINCT T1.breed_name, T2.date_of_treatment FROM Dogs AS T1 INNER JOIN Treatment_Types AS T2 ON T1.breed_code = T2.breed_code
SELECT DISTINCT T1.breed_name, T2.date_of_birth FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.rarity = 'rare' AND T1.date_arrived IS NOT NULL
SELECT DISTINCT T1.first_name, T2.name FROM Owners AS T1 INNER JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT first_name, breed_name FROM Owners WHERE state = 'Virginia' AND abandoned_yn = 0
SELECT DISTINCT T1.date_arrived, T2.date_departed FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT T1.date_arrived, T2.date_departed FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT last_name FROM Owners WHERE age = ( SELECT MIN(age) FROM Dogs WHERE date_arrived = date_of_birth )
SELECT DISTINCT last_name FROM Owners WHERE age = ( SELECT MIN(age) FROM Dogs WHERE age = ( SELECT MIN(age) FROM Dogs ) )
SELECT DISTINCT e.email_address FROM Owners AS o JOIN Professionals AS p ON o.owner_id = p.owner_id WHERE o.state = 'Hawaii' OR o.state = 'Wisconsin'
SELECT DISTINCT e.email_address FROM Owners AS o JOIN Professionals AS p ON o.owner_id = p.owner_id WHERE o.state = 'Hawaii' OR o.state = 'Wisconsin'
SELECT DISTINCT T1.date_arrived, T2.date_departed FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id
SELECT DISTINCT D.date_arrived, D.date_departed FROM Dogs AS D JOIN Owners AS O ON D.owner_id = O.owner_id
SELECT COUNT(DISTINCT dog_id) FROM Dogs AS T1 INNER JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT COUNT(DISTINCT T1.dog_id) FROM Dogs AS T1 INNER JOIN Treatments AS T2 ON T1.dog_id = T2.dog_id
SELECT COUNT(DISTINCT T1.first_name, T1.last_name) AS num_professionals FROM Professionals AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id INNER JOIN Charges AS T4 ON T3.dog_id = T4.dog_id INNER JOIN Treatment_Types AS T5 ON T4.treatment_type_code = T5.treatment_type_code WHERE T5.charge_amount > 0 GROUP BY T1.first_name, T1.last_name
SELECT COUNT(DISTINCT T1.first_name, T1.last_name) AS num_professionals FROM Professionals AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id INNER JOIN Treatments AS T4 ON T3.dog_id = T4.dog_id WHERE T4.treatment_type_code = 'dog_treatment' GROUP BY T1.first_name, T1.last_name
SELECT DISTINCT p.role, s.street, p.city, p.state FROM Professionals p JOIN Owners o ON p.owner_id = o.owner_id JOIN Dogs d ON o.owner_id = d.owner_id WHERE o.city LIKE '%West%' AND d.breed_code = 'West' OR d.size_code = 'West'
SELECT DISTINCT p.role, s.street, s.city, s.state FROM Professionals p JOIN Owners o ON p.owner_id = o.owner_id JOIN Dogs d ON o.owner_id = d.owner_id JOIN Sizes s ON d.size_code = s.size_code WHERE o.city LIKE '%West%'
SELECT DISTINCT T1.first_name, T1.last_name, T1.email_address FROM Owners AS T1 JOIN Dogs AS T2 ON T1.owner_id = T2.owner_id WHERE T1.state LIKE '%North%'
SELECT DISTINCT first_name, last_name, email_address FROM Owners WHERE state LIKE '%North%'
SELECT DISTINCT COUNT(DISTINCT dog_id) AS dog_count FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT COUNT(DISTINCT dog_id) AS dog_count FROM Dogs WHERE age < (SELECT AVG(age) FROM Dogs)
SELECT DISTINCT T1.charge_amount FROM Charges AS T1 INNER JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code WHERE T1.charge_id = ( SELECT MAX(T1.charge_id) FROM Charges AS T1 INNER JOIN Treatment_Types AS T2 ON T1.charge_type = T2.treatment_type_code )
SELECT DISTINCT T1.treatment_type_description, T2.charge_amount FROM Treatment_Types AS T1 JOIN Charges AS T2 ON T1.treatment_type_code = T2.treatment_type_code WHERE T1.treatment_type_code = (SELECT treatment_type_code FROM Treatment_Types WHERE treatment_type_description = 'Cost') ORDER BY T2.charge_amount DESC LIMIT 1
SELECT DISTINCT COUNT(DISTINCT dog_id) FROM Dogs WHERE abandoned_yn = 0
SELECT COUNT(DISTINCT dog_id) FROM Dogs WHERE abandoned_yn = 0
SELECT DISTINCT owner_id FROM Owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs WHERE abandoned_yn = 0)
SELECT COUNT(DISTINCT owner_id) FROM Owners WHERE NOT EXISTS (SELECT 1 FROM Dogs WHERE Dogs.owner_id = Owners.owner_id)
SELECT COUNT(DISTINCT T1.owner_id) AS num_professionals FROM Dogs AS T1 INNER JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id WHERE T1.dog_id IS NULL
SELECT COUNT(DISTINCT D dog_id FROM Dogs WHERE D.dog_id NOT IN (SELECT T.dog_id FROM Treatments T WHERE T.dog_id = D.dog_id)
SELECT DISTINCT T1.name, T1.weight, T2.weight AS dog_weight FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.abandoned_yn = 1
SELECT DISTINCT T1.name, T1.weight, T1.age FROM Dogs AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id WHERE T1.abandoned_yn = 1
SELECT AVG(age) FROM Dogs WHERE abandoned_yn = 'N'
SELECT AVG(age) FROM Dogs
SELECT MIN(age) FROM Dogs WHERE date_arrived IS NOT NULL
SELECT MIN(age) FROM Dogs WHERE date_arrived IS NOT NULL
SELECT DISTINCT charge_type, charge_amount FROM Charges WHERE charge_id IN (SELECT charge_id FROM Charges WHERE charge_type = 'Dogs' OR charge_type = 'Treatments')
SELECT DISTINCT charge_type FROM Charges
SELECT DISTINCT T1.charge_amount FROM Charges AS T1 INNER JOIN Breeds AS T2 ON T1.breed_code = T2.breed_code WHERE T1.charge_type = 'Most Expensive'
SELECT charge_amount FROM Charges WHERE charge_type = ( SELECT MAX(charge_amount) FROM Charges )
SELECT DISTINCT T1.first_name, T1.last_name, T1.home_phone, T1.cell_number FROM Professionals AS T1 INNER JOIN Owners AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Dogs AS T3 ON T2.owner_id = T3.owner_id INNER JOIN Charges AS T4 ON T3.dog_id = T4.dog_id INNER JOIN Charges AS T5 ON T4.charge_id = T5.charge_id INNER JOIN Treatment_Types AS T6 ON T5.treatment_type_code = T6.treatment_type_code WHERE T6.treatment_type_description = 'Professional' GROUP BY T1.first_name, T1.last_name, T1.home_phone, T1.cell_number
SELECT DISTINCT C.first_name, C.last_name, O.email_address, O.home_phone, O.cell_number FROM Owners AS O JOIN Professionals AS P ON O.owner_id = P.owner_id JOIN Dogs AS D ON O.owner_id = D.owner_id JOIN Charges AS C ON D.dog_id = C.dog_id JOIN Treatment_Types AS T ON C.treatment_type_code = T.treatment_type_code
SELECT DISTINCT breed_code, size_code FROM Breeds WHERE breed_name IN ( SELECT breed_code FROM Breeds WHERE breed_name IN ( SELECT breed_name FROM Breeds WHERE breed_code IN ( SELECT breed_code FROM Breeds WHERE breed_name IN ( SELECT breed_name FROM Breeds WHERE breed_code IN ( SELECT breed_code FROM Breeds WHERE breed_name =? ) ) ) ) ) UNION ALL SELECT size_code FROM Sizes WHERE size_description IN ( SELECT size_code FROM Sizes WHERE size_description IN ( SELECT size_code FROM Sizes WHERE size_description IN ( SELECT size_code FROM Sizes WHERE size_description IN ( SELECT size_code FROM Sizes WHERE size_description =? ) ) ) )
SELECT DISTINCT D1.breed_name, D1.size_description FROM Dogs D1 JOIN Sizes S1 ON D1.size_code = S1.size_code JOIN Breeds B1 ON D1.breed_code = B1.breed_code JOIN Treatment_Types T1 ON D1.breed_code = T1.breed_code JOIN Charges C1 ON D1.breed_code = C1.breed_code WHERE C1.charge_amount > 0
SELECT DISTINCT T1.first_name, T2.treatment_type_description FROM Professionals AS T1 INNER JOIN Treatment_Types AS T2 ON T1.professional_id = T2.professional_id WHERE T1.first_name IN (SELECT T1.first_name FROM Owners AS T2 WHERE T2.first_name = 'John') OR T1.first_name IN (SELECT T1.first_name FROM Owners AS T2 WHERE T2.first_name = 'Jane')
SELECT DISTINCT T1.first_name, T1.last_name, T2.treatment_type_description FROM Owners AS T1 INNER JOIN Professionals AS T2 ON T1.owner_id = T2.owner_id INNER JOIN Treatment_Types AS T3 ON T2.professional_id = T3.professional_id INNER JOIN Treatments AS T4 ON T4.dog_id = T4.dog_id WHERE T4.date_of_treatment IS NOT NULL AND T4.cost_of_treatment > 0
SELECT DISTINCT s.id, s.name FROM ship AS s JOIN battle AS b ON s.id = b.lost_in_battle WHERE b.result = 'win' AND s.killed = ( SELECT MAX(killed) FROM death AS d WHERE d.caused_by_ship_id = s.id )
SELECT DISTINCT T1.name FROM battle AS T1 JOIN ship AS T2 ON T1.lost_in_battle = T2.id WHERE T1.bulgarian_commander = 'Kaloyan' AND T2.name = 'Baldwin I'
SELECT COUNT(DISTINCT battle.id) AS num_battles FROM battle AS b JOIN ship AS s ON b.lost_in_battle = s.id
SELECT DISTINCT COUNT(*) FROM ship AS T1 INNER JOIN battle AS T2 ON T1.id = T2.lost_in_battle WHERE T1.tonnage = '225' AND T2.result IS NOT NULL
SELECT b.name, b.date FROM battle AS b JOIN ship AS s ON b.lost_in_battle = s.id WHERE s.name = 'Lettice' AND s.name = 'HMS Atalanta'
SELECT b.name, b.result, s.name AS bulgarian_commander, d.name AS death_note FROM battle b JOIN ship s ON b.lost_in_battle = s.id JOIN death d ON d.caused_by_ship_id = s.id WHERE b.result = 'Lost' AND s.location = 'English Channel'
SELECT DISTINCT T1.note FROM death AS T2 JOIN ship AS T1 ON T2.caused_by_ship_id = T1.id WHERE T1.location = 'East'
```sql
SELECT DISTINCT 
  a.address_id, 
  a.line_1, 
  a.line_2, 
  a.city, 
  a.zip_postcode, 
  a.state_province_county, 
  a.country
FROM 
  Addresses a
  JOIN 
  (
    SELECT 
      address_id, 
      line_1, 
      line_2, 
      city, 
      zip_postcode, 
      state_province_county, 
      country
    FROM 
      Addresses
    WHERE 
      line_1 = 'line 1' AND line_2 = 'line 2'
  ) b
ON 
  a.address_id = b.address_id
```

This query selects the columns from the `Addresses` table where the line numbers match the specified values, and then joins this result with a subquery that selects the same columns from the `Addresses` table where the line numbers match the specified values. The subquery is only executed when the line numbers are 'line 1' and 'line 2'. The result is a single row for each matching address, with the specified columns.
```sql
SELECT 
  A.line_1, 
  A.line_2, 
  A.city, 
  A.zip_postcode, 
  A.state_province_county, 
  A.country
FROM 
  Addresses A
  JOIN 
  (SELECT 
     address_id, 
     line_1, 
     line_2, 
     city, 
     zip_postcode, 
     state_province_county, 
     country
   FROM 
     Addresses) AS Subquery
ON 
  A.address_id = Subquery.address_id
ORDER BY 
  A.line_1, 
  A.line_2
LIMIT 2;
```

This query joins the `Addresses` table with a derived table that selects the required columns from the `Addresses` table. The derived table is created by selecting the columns from the `Addresses` table where the `address_id` matches the `address_id` in the `Addresses` table. The `ON` clause specifies the join condition. The `ORDER BY` clause sorts the results by `line_1` and `line_2` in ascending order, and the `LIMIT 2` clause limits the number of rows to 2.
```sql
SELECT COUNT(DISTINCT T1.course_id)
FROM Courses AS T1
JOIN Student_Enrolment_Courses AS T2 ON T1.course_id = T2.course_id
JOIN Student_Enrolment AS T3 ON T2.student_enrolment_id = T3.student_enrolment_id
JOIN Students AS T4 ON T3.student_id = T4.student_id
JOIN Addresses AS T5 ON T4.current_address_id = T5.address_id
WHERE T1.department_id = 1;
```

This query counts the number of distinct courses listed for a specific department (in this case, department_id = 1). It joins the Courses table with Student_Enrolment_Courses, Student_Enrolment, and Addresses tables to get the required columns. The WHERE clause filters the results to only include courses for the specified department.
```sql
SELECT DISTINCT COUNT(DISTINCT T1.course_id)
FROM 
  Addresses A
  JOIN 
  Courses C ON A.address_id = C.address_id
  JOIN 
  Degree_Programs D ON C.degree_program_id = D.degree_program_id
  JOIN 
  Departments D2 ON D.department_id = D2.department_id
  JOIN 
  Sections S ON C.section_id = S.section_id
  JOIN 
  Semesters S2 ON S.semester_id = S2.semester_id
  JOIN 
  Students S3 ON S2.student_id = S3.student_id
  JOIN 
  Student_Enrolment_Courses SEC ON S3.student_id = SEC.student_id
  JOIN 
  Transcripts T ON SEC.student_course_id = T.transcript_id
WHERE 
  T.transcript_date IS NOT NULL
ORDER BY 
  COUNT(DISTINCT T1.course_id) DESC;
```

This query will return the number of unique courses that have a valid transcript date. The `DISTINCT` keyword is used to ensure that each course is only counted once, even if it appears multiple times in the database. The `IS NOT NULL` condition ensures that only courses with a valid transcript date are included in the
```sql
SELECT 
  D.description AS course_name,
  COUNT(DISTINCT S.section_name) AS num_sections
FROM 
  Degrees_Programs D
  JOIN Departments DEPT ON D.department_id = DEPT.department_id
  JOIN Sections S ON D.degree_program_id = S.degree_program_id
GROUP BY 
  D.description
ORDER BY 
  num_sections DESC;
```

This query will return the course name and the number of unique sections for each degree program, ordered by the number of sections in descending order.
SELECT DISTINCT c.course_name FROM Courses c JOIN Degree_Programs dp ON c.department_id = dp.department_id WHERE dp.degree_summary_name = 'Math' AND c.course_description LIKE '%Math%'
SELECT DISTINCT T1.zip_postcode FROM Addresses AS T1 INNER JOIN Courses AS T2 ON T1.zip_postcode = T2.zip_postcode WHERE T1.city = 'Port Chelsea'
```sql
SELECT DISTINCT 
  A.zip_postcode, 
  A.city, 
  A.state_province_county, 
  A.country
FROM 
  Addresses A
WHERE 
  A.city = 'Port Chelsea'
```

This query selects the `zip_postcode`, `city`, `state_province_county`, and `country` columns from the `Addresses` table where the `city` is 'Port Chelsea'.
```sql
SELECT 
  d.department_name, 
  COUNT(DISTINCT d.id) AS num_degrees
FROM 
  Departments d
  JOIN Degree_Programs dp ON d.department_id = dp.department_id
GROUP BY 
  d.department_name
ORDER BY 
  num_degrees DESC
LIMIT 1;
```

This query will return the department with the most number of degrees. The `COUNT(DISTINCT d.id)` counts the number of unique department ids, and the `GROUP BY` clause groups the results by department name. The `ORDER BY` clause sorts the results in descending order by the number of degrees, and the `LIMIT 1` clause returns only the first row, which is the department with the most degrees.
```sql
SELECT 
  d.department_name, 
  d.id
FROM 
  Departments d
JOIN 
  Degree_Programs dp ON d.department_id = dp.department_id
JOIN 
  Degree_Programs dp2 ON dp2.id = d.degree_program_id
WHERE 
  dp2.degree_summary_name = 'Most degrees'
ORDER BY 
  d.id DESC
LIMIT 1;
```

This query joins the `Departments` table with the `Degree_Programs` table twice to get the department with the most degrees. It then selects the `department_name` and `id` columns from the resulting table. The `ORDER BY` clause sorts the results in descending order by `id` and limits the result to the top row.
SELECT DISTINCT d.department_name FROM Departments d JOIN Degree_Programs dp ON d.department_id = dp.department_id WHERE dp.degree_summary_name = 'Any' AND d.department_name NOT IN (SELECT department_name FROM Departments WHERE department_name = 'Any')
SELECT DISTINCT department_name FROM Departments
```sql
SELECT DISTINCT 
  D.degree_summary_name 
FROM 
  Degree_Programs D 
  JOIN 
  Departments D1 ON D.degree_program_id = D1.department_id 
  JOIN 
  Addresses A ON D1.department_id = A.department_id 
WHERE 
  D1.department_name = 'Computer Science' 
  AND D.degree_summary_name = 'Bachelor of Science in Computer Science'
```

The query selects the distinct degree names that are offered in the Computer Science department and have a degree summary name of 'Bachelor of Science in Computer Science'.
```sql
SELECT DISTINCT COUNT(DISTINCT degree_program_id)
FROM Degree_Programs
WHERE degree_summary_name LIKE '%degrees%';
```

This query will return the number of different degrees offered in the database. The `LIKE` operator is used to search for the string 'degrees' in the `degree_summary_name` column. The `DISTINCT` keyword is used to ensure that each degree is only counted once, even if it appears multiple times in the `degree_summary_name`.
```sql
SELECT 
  COUNT(DISTINCT D.department_name) AS department_count
FROM 
  Degrees_Programs D
  JOIN Departments DE on D.department_id = DE.department_id
WHERE 
  D.degree_summary_name = 'Engineering';
```

This query will return the number of distinct departments that offer the 'Engineering' degree.
```sql
SELECT 
  COUNT(DISTINCT D.department_name) AS department_count
FROM 
  Degrees_Programs D
  JOIN Departments DE on D.department_id = DE.department_id
WHERE 
  D.degree_summary_name = 'Engineering';
```

This query counts the number of distinct departments that have an engineering degree summary.
SELECT DISTINCT T1.department_name, T2.course_name FROM Departments AS T1 JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id JOIN Sections AS T3 ON T2.degree_program_id = T3.department_id JOIN Courses AS T4 ON T3.course_id = T4.course_id JOIN Students AS T5 ON T4.student_id = T5.student_id JOIN Student_Enrolment_Courses AS T6 ON T5.student_id = T6.student_id AND T6.course_id = T4.course_id JOIN Transcripts AS T7 ON T6.student_course_id = T7.transcript_id
SELECT DISTINCT T1.department_name, T1.department_description FROM Departments AS T1 INNER JOIN Degree_Programs AS T2 ON T1.department_id = T2.department_id WHERE T2.degree_summary_name = 'Section' AND T2.degree_summary_description = 'Section' AND T1.department_name = 'Section'
SELECT DISTINCT c.course_name, a.address_id FROM Courses c JOIN Addresses a ON c.address_id = a.address_id WHERE c.section_id IN (SELECT s.section_id FROM Sections s WHERE s.section_name = 'At Most 2 Sections') GROUP BY c.course_name, a.address_id
SELECT DISTINCT c.course_name, a.address_id FROM Courses c JOIN Addresses a ON c.address_id = a.address_id WHERE c.section_id IN (SELECT s.section_id FROM Sections s WHERE s.section_name = 'Less than 2')
SELECT DISTINCT section_name FROM Sections ORDER BY section_name DESC
SELECT DISTINCT section_name FROM Sections ORDER BY section_name DESC
```sql
SELECT 
  D.department_name AS semester_name, 
  S.student_id AS student_id
FROM 
  Degree_Programs D 
  JOIN 
  Semesters S ON D.department_id = S.department_id
  JOIN 
  Students S ON S.student_id = D.degree_program_id
WHERE 
  S.semester_name = 'Most recent' AND 
  D.department_name = 'Most popular'
ORDER BY 
  S.semester_name, S.student_id
LIMIT 1;
```

This query will return the name of the most popular semester and the student's ID. The `LIMIT 1` clause ensures that only one row is returned, which is the most popular semester. The `ORDER BY` clause sorts the results by semester name and student ID.
```sql
SELECT 
  D.department_name AS department_name, 
  S.student_id AS student_id
FROM 
  Degrees_Programs D 
  JOIN Degree_Programs DEGREE on D.department_id = DEGREE.department_id 
  JOIN Students S ON DEGREE.degree_program_id = S.degree_program_id
  JOIN Semesters S ON DEGREE.degree_program_id = S.degree_program_id
  JOIN Addresses A ON S.current_address_id = A.address_id
  JOIN Students_Enrolment SE ON S.student_id = SE.student_id
  JOIN Student_Enrolment_Courses SEC ON SE.student_id = SE.student_id
  JOIN Courses C ON SEC.course_id = C.course_id
  JOIN Transcripts T ON C.transcript_id = T.transcript_id
WHERE 
  S.student_id IN (
    SELECT 
      student_id 
    FROM 
      Students 
    GROUP BY 
      student_id 
    HAVING 
      COUNT(*) = (
        SELECT 
          COUNT(*) 
        FROM 
          Students 
        GROUP BY 
          student_id 
        HAVING 
          COUNT(*) > 1
      )
  )
ORDER BY 
  department_name, student_id
LIMIT 1;
```

This query uses the following
SELECT DISTINCT d.department_name FROM Departments d JOIN Courses c ON d.department_id = c.department_id WHERE c.course_name LIKE?
SELECT DISTINCT d.department_name FROM Departments d JOIN Courses c ON d.department_id = c.department_id WHERE c.course_name LIKE '%computer%'
```sql
SELECT 
  a.first_name, 
  a.middle_name, 
  a.last_name, 
  s.student_id
FROM 
  Addresses a
  JOIN 
  Student_Enrolment_Courses sec ON a.address_id = sec.current_address_id
  JOIN 
  Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id
  JOIN 
  Students s ON se.student_id = s.student_id
  JOIN 
  Degree_Programs dp ON s.degree_program_id = dp.degree_program_id
  JOIN 
  Departments d ON dp.department_id = d.department_id
  JOIN 
  Courses c ON se.course_id = c.course_id
  JOIN 
  Semesters s ON se.semester_id = s.semester_id
WHERE 
  c.course_name = 'Degree Programs'
  AND s.date_left = '2022-01-01'
  AND s.date_first_registered = '2021-01-01'
  AND s.semester_name = 'Fall'
  AND s.semester_description = 'Fall'
  AND s.semester_id = 1
  AND d.department_name = 'Computer Science'
  AND c.course_description = 'Introduction to Computer Science'
```sql
SELECT 
  s.first_name, 
  s.middle_name, 
  s.last_name, 
  s.id AS student_id
FROM 
  Students s
  JOIN 
  Student_Enrolment_Courses sec ON s.student_id = sec.student_id
  JOIN 
  Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id
  JOIN 
  Degree_Programs dp ON se.degree_program_id = dp.degree_program_id
  JOIN 
  Departments d ON dp.department_id = d.department_id
  JOIN 
  Courses c ON sec.course_id = c.course_id
  JOIN 
  Addresses a ON s.current_address_id = a.address_id
  JOIN 
  Addresses a2 ON s.permanent_address_id = a2.address_id
WHERE 
  c.course_name = 'Degree Programs' 
  AND c.course_description = '2' 
  AND s.semester_id = 1
ORDER BY 
  s.first_name, 
  s.middle_name, 
  s.last_name
LIMIT 1;
```

This query joins the required tables to get the first, middle, and last names of students enrolled in degree programs in semester 1, along with their IDs
```sql
SELECT 
  D.first_name, 
  D.middle_name, 
  D.last_name
FROM 
  Degrees_Programs D
  JOIN 
  Departments D2 ON D.department_id = D2.department_id
  JOIN 
  Addresses A ON D2.department_id = A.department_id
  JOIN 
  Students S ON A.address_id = S.current_address_id
WHERE 
  D.degree_summary_name = 'Bachelor' AND 
  D2.department_name = 'Computer Science'
ORDER BY 
  D.first_name, 
  D.middle_name, 
  D.last_name;
```

This query joins the `Degrees_Programs`, `Departments`, and `Addresses` tables to retrieve the first name, middle name, and last name of students enrolled in a Bachelor degree program in the Computer Science department. The `WHERE` clause filters the results to only include Bachelor degree programs in the Computer Science department. The `ORDER BY` clause sorts the results by first name, middle name, and last name.
```sql
{
  "sql": "SELECT DISTINCT 
  (SELECT first_name 
   FROM Addresses 
   JOIN Students ON Addresses.address_id = Students.current_address_id) AS first_names,
  (SELECT first_name 
   FROM Addresses 
   JOIN Students ON Addresses.address_id = Students.current_address_id) AS middle_names,
  (SELECT first_name 
   FROM Addresses 
   JOIN Students ON Addresses.address_id = Students.current_address_id) AS last_names
  FROM Students
  JOIN Degrees_Programs ON Students.student_id = Degrees_Programs.student_id
  JOIN Departments ON Degrees_Programs.department_id = Departments.department_id
  JOIN Courses ON Degrees_Programs.degree_program_id = Courses.degree_program_id
  JOIN Sections ON Courses.course_id = Sections.course_id
  JOIN Semesters ON Sections.semester_id = Semesters.semester_id
  JOIN Transcripts ON Students.student_id = Transcripts.student_id
  JOIN Student_Enrolment_Courses ON Students.student_id = Student_Enrolment_Courses.student_enrolment_id
  JOIN Student_Enrolment ON Student_Enrolment.student_id = Student_Enrolment_Courses.student_enrolment_id
  JOIN Addresses ON Student_Enrolment.student_id = Addresses.address_id
```sql
SELECT 
  COUNT(DISTINCT 
    CASE 
      WHEN T1.department_name = 'Computer Science' THEN 1 
      WHEN T1.department_name = 'Mathematics' THEN 1 
      WHEN T1.department_name = 'Engineering' THEN 1 
      WHEN T1.department_name = 'Business' THEN 1 
      WHEN T1.department_name = 'Other' THEN 1 
    END AS count
  FROM 
    Degree_Programs D 
  JOIN 
    Departments D1 ON D.department_id = D1.department_id 
  JOIN 
    Courses C ON D1.department_id = C.department_id 
  JOIN 
    Sections S ON C.course_id = S.course_id 
  JOIN 
    Students S ON S.student_id = S.student_id 
  JOIN 
    Student_Enrolment_Courses SEC ON S.student_id = SEC.student_id 
  JOIN 
    Student_Enrolment SE ON SEC.student_enrolment_id = SE.student_enrolment_id 
  JOIN 
    Transcripts T ON SE.student_enrolment_id = T.student_enrolment_id 
  WHERE 
    T.transcript_date BETWEEN '2020-01-01' AND '2022-12-31
```sql
SELECT 
  d.degree_summary_name, 
  COUNT(DISTINCT s.student_id) AS num_students
FROM 
  Degree_Programs d
  JOIN 
  Students s ON d.degree_program_id = s.degree_program_id
GROUP BY 
  d.degree_summary_name
ORDER BY 
  num_students DESC
LIMIT 1;
```

This query will return the degree summary name with the most number of students enrolled. The `DISTINCT` keyword is used to ensure that each degree summary name is only returned once, even if there are multiple students enrolled in the same degree summary. The `COUNT(DISTINCT s.student_id)` counts the number of unique students enrolled in each degree summary, and the `ORDER BY` clause sorts the results in descending order by the number of students, and `LIMIT 1` returns only the top result.
```sql
SELECT 
  s.student_id, 
  s.first_name, 
  s.last_name, 
  COUNT(DISTINCT c.course_name) AS num_courses
FROM 
  Students s
  JOIN 
  Student_Enrolment_Courses sec ON s.student_id = sec.student_id
  JOIN 
  Courses c ON sec.course_id = c.course_id
GROUP BY 
  s.student_id, s.first_name, s.last_name
ORDER BY 
  num_courses DESC
LIMIT 1;
```

This query will return the student with the most courses enrolled in, along with the number of courses they are enrolled in. The `DISTINCT` keyword is used to ensure that each student is only counted once, even if they are enrolled in multiple courses. The `COUNT(DISTINCT c.course_name)` counts the number of unique course names for each student. The `ORDER BY` clause sorts the results in descending order by the number of courses, and the `LIMIT 1` clause returns only the first row of the sorted result set.
```sql
SELECT 
  d.department_name, 
  COUNT(DISTINCT s.student_id) AS num_students
FROM 
  Degree_Programs d
  JOIN Departments dp ON d.department_id = dp.department_id
  JOIN Sections s ON d.degree_program_id = s.degree_program_id
  JOIN Students stu ON s.student_id = stu.student_id
GROUP BY 
  d.department_name
ORDER BY 
  num_students DESC
LIMIT 1;
```

This query will return the department with the most students enrolled in the degree programs. The `DISTINCT` keyword is used to ensure that each student is only counted once, even if they are enrolled in multiple courses. The `COUNT(DISTINCT s.student_id)` counts the number of unique students enrolled in each department. The `ORDER BY` clause sorts the results in descending order by the number of students, and the `LIMIT 1` clause returns only the top department.
```sql
SELECT 
  s.first_name, 
  s.middle_name, 
  s.last_name, 
  COUNT(DISTINCT se.student_id) AS num_enrollments
FROM 
  Students s
  JOIN 
  Student_Enrolment_Courses sec ON s.student_id = sec.student_id
  JOIN 
  Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id
  JOIN 
  Student_Enrolment student_enrolment ON se.student_enrolment_id = student_enrolment_id
  JOIN 
  Degrees_Programs dp ON se.degree_program_id = dp.degree_program_id
  JOIN 
  Departments d ON dp.department_id = d.department_id
  JOIN 
  Courses c ON se.course_id = c.course_id
  JOIN 
  Addresses a ON s.current_address_id = a.address_id
  JOIN 
  Addresses a2 ON s.permanent_address_id = a2.address_id
WHERE 
  s.id = (
    SELECT 
      MAX(se.student_id)
    FROM 
      Student_Enrolment se
      JOIN 
      Student_Enrolment_Courses sec ON se.student_id = se.student_enrolment_id
      JOIN
```sql
SELECT 
  s.first_name, 
  s.middle_name, 
  s.last_name, 
  COUNT(DISTINCT se.student_id) AS num_enrollments
FROM 
  Students s
  JOIN 
  Student_Enrolment_Courses sec ON s.student_id = sec.student_id
  JOIN 
  Student_Enrolment se ON sec.student_enrolment_id = se.student_enrolment_id
  JOIN 
  Student_Enrolment student_enrolment ON se.student_enrolment_id = student_enrolment_id
  JOIN 
  Degree_Programs dp ON se.degree_program_id = dp.degree_program_id
  JOIN 
  Departments d ON dp.department_id = d.department_id
  JOIN 
  Courses c ON se.course_id = c.course_id
  JOIN 
  Addresses a ON s.current_address_id = a.address_id
  JOIN 
  Addresses a2 ON s.permanent_address_id = a2.address_id
WHERE 
  s.id = (
    SELECT MAX(se.student_id)
    FROM 
      Student_Enrolment se
      JOIN 
      Student_Enrolment_Courses sec ON se.student_id = se.student_enrolment_id
      JOIN 
      Student
SELECT DISTINCT semester_name FROM Semesters WHERE semester_id NOT IN (SELECT semester_id FROM Students)
```sql
SELECT DISTINCT 
  s.department_name 
FROM 
  Semesters s 
  JOIN 
  Degree_Programs dp ON s.department_id = dp.department_id 
  JOIN 
  Students s2 ON s2.student_id = s.student_id 
WHERE 
  s.semester_name ='semester_name' AND 
  s2.student_id IS NOT NULL;
```

This query selects the `department_name` from the `Semesters` table, joined with the `Degree_Programs` table on the `department_id` column, and then joined with the `Students` table on the `student_id` column. It filters the results to only include rows where the `semester_name` is'semester_name' and the `student_id` is not null. The `DISTINCT` keyword is used to ensure that each department is only returned once.
SELECT DISTINCT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id WHERE sec.student_enrolment_id IN (SELECT student_id FROM Students WHERE permanent_address_id IN (SELECT address_id FROM Addresses WHERE zip_postcode = 'your_zip_code') OR current_address_id IN (SELECT address_id FROM Addresses WHERE zip_postcode = 'your_zip_code'))
SELECT DISTINCT c.course_name FROM Courses c JOIN Student_Enrolment_Courses sec ON c.course_id = sec.course_id WHERE sec.student_enrolment_id IN (SELECT student_id FROM Student_Enrolment WHERE semester_id IN (SELECT semester_id FROM Semesters WHERE semester_name = 'Fall') OR semester_id IN (SELECT semester_id FROM Semesters WHERE semester_name = 'Winter'))
```sql
SELECT 
  D.department_name AS course_name
FROM 
  Degrees_Programs D
  JOIN 
  Degree_Programs DEG ON D.department_id = DEG.department_id
  JOIN 
  Departments DEP ON D.department_id = DEP.department_id
WHERE 
  D.degree_summary_name = 'Most enrollments'
ORDER BY 
  COUNT(DISTINCT D.course_name) DESC
LIMIT 1;
```

This query will return the name of the course with the most enrollments. The `COUNT(DISTINCT D.course_name)` counts the number of unique course names, and the `ORDER BY` clause sorts the results in descending order. The `LIMIT 1` clause returns only the first row, which is the course with the most enrollments.
```sql
SELECT 
  D.department_name AS course_name, 
  COUNT(DISTINCT S.student_id) AS num_students
FROM 
  Degrees_Programs D 
  JOIN Degree_Programs DEG ON D.department_id = DEG.department_id 
  JOIN Courses C ON DEG.degree_program_id = C.degree_program_id 
  JOIN Sections S ON C.course_id = S.course_id 
  JOIN Students S ON S.student_id = S.student_id 
GROUP BY 
  D.department_name
ORDER BY 
  num_students DESC;
```

This query will return the name of the course with the most students enrolled. The `COUNT(DISTINCT S.student_id)` function is used to count the number of unique students enrolled in each course, and the `GROUP BY` clause groups the results by department. The `ORDER BY` clause sorts the results in descending order by the number of students enrolled.
```sql
SELECT DISTINCT 
  s.last_name 
FROM 
  Students s 
  JOIN Addresses a ON s.current_address_id = a.address_id 
  JOIN Degree_Programs dp ON s.degree_program_id = dp.degree_program_id 
WHERE 
  a.zip_postcode NOT IN (
    SELECT t.zip_postcode 
    FROM Transcripts t 
    JOIN Student_Enrolment_Courses sce ON t.transcript_id = sce.transcript_id 
    JOIN Students student ON sce.student_enrolment_id = student.student_id 
  ) 
  AND dp.department_id NOT IN (
    SELECT d.department_id 
    FROM Degree_Programs dp 
    JOIN Courses c ON dp.degree_program_id = c.degree_program_id 
    JOIN Sections s ON c.course_id = s.course_id 
  )
  AND s.state_province_county = 'North Carolina'
  AND s.current_address_id NOT IN (
    SELECT a.address_id 
    FROM Addresses a 
    JOIN Student_Enrolment_Courses sce ON a.address_id = sce.current_address_id 
    JOIN Students student ON sce.student_id = student.student_id 
  )
  AND s.current_address_id NOT IN (
    SELECT a.address_id 
    FROM Addresses a 
    JOIN Student_Enrolment
SELECT DISTINCT Continent FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = 'China'
SELECT DISTINCT Continent FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name = 'China'
SELECT DISTINCT T1.Name, T2.Name AS Language FROM countrylanguage AS T1 INNER JOIN city AS T2 ON T1.CountryCode = T2.CountryCode WHERE T1.IsOfficial = 1
SELECT DISTINCT T1.Name, T2.Name AS Language FROM city AS T1 INNER JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1
SELECT DISTINCT c.Name, c.Code AS CountryName, COUNT(DISTINCT ci.Name) AS EnglishCount, COUNT(DISTINCT ci.Name) AS DutchCount FROM city ci JOIN countrylanguage cl ON ci.CountryCode = cl.CountryCode WHERE cl.IsOfficial = 1 GROUP BY c.Name, c.Code
SELECT DISTINCT c.Name, c.Code AS CountryName, COUNT(DISTINCT c.Code) AS Count FROM city c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.IsOfficial = 1 OR cl.Language = 'English' OR cl.Language = 'Dutch' GROUP BY c.Name, c.Code
SELECT DISTINCT CountryCode FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Continent = 'Asia' AND T2.IsOfficial = 1 ORDER BY T1.Population DESC
SELECT DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1 AND Population = ( SELECT MAX(Population) FROM country WHERE Continent = 'Asia' )
SELECT DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1 AND CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia' AND Region = 'Europe' OR Continent = 'North America' OR Continent = 'South America' OR Continent = 'Africa' OR Continent = 'Australia')
SELECT DISTINCT Language FROM countrylanguage WHERE IsOfficial = 1 AND CountryCode IN (SELECT Code FROM country WHERE GovernmentForm ='republic')
SELECT c.Name, c.Population FROM city c WHERE c.CountryCode = 'English' GROUP BY c.Name ORDER BY c.Population DESC LIMIT 1
SELECT DISTINCT T1.Name, T2.Name AS EnglishName FROM city AS T1 INNER JOIN countrylanguage AS T2 ON T1.CountryCode = T2.CountryCode WHERE T2.IsOfficial = 1 AND T1.Population > (SELECT MAX(T1.Population) FROM city) / 2
SELECT Name, Population, LifeExpectancy FROM country WHERE SurfaceArea = ( SELECT MAX(SurfaceArea) FROM country )
SELECT Name, Population, LifeExpectancy FROM country WHERE Continent = 'Asia' AND SurfaceArea > (SELECT MAX(SurfaceArea) FROM country) ORDER BY LifeExpectancy DESC LIMIT 1
SELECT AVG(LifeExpectancy) FROM country WHERE IsOfficial = 0 AND Language = 'English'
SELECT DISTINCT LifeExpectancy FROM country WHERE IsOfficial = 0 AND Language = 'English'
SELECT COUNT(DISTINCT c.ID) AS TotalPeople FROM city AS c JOIN country AS cc ON c.CountryCode = cc.Code WHERE cc.IsOfficial = 0
SELECT DISTINCT COUNT(*) FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name!= 'English' AND T2.IsOfficial = 1
SELECT DISTINCT L.Language FROM countrylanguage AS L INNER JOIN country AS C ON L.CountryCode = C.Code WHERE C.HeadOfState = 'Beatrix'
SELECT DISTINCT Name FROM countrylanguage WHERE IsOfficial = 'true' AND CountryCode = ( SELECT Code FROM country WHERE Name = 'Beatrix' )
SELECT COUNT(DISTINCT CASE WHEN IsOfficial = 1 THEN CountryCode ELSE NULL END AS Language FROM countrylanguage WHERE IsOfficial = 1 AND LifeExpectancy > 1930 AND CountryCode IN (SELECT Code FROM country WHERE IndepYear < 1930)
SELECT COUNT(DISTINCT Language) FROM countrylanguage WHERE IsOfficial = 1 AND LifeExpectancy > 1930
SELECT DISTINCT c.Name, c.Code FROM city c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Continent = 'Europe' AND c.SurfaceArea > (SELECT MAX(SurfaceArea) FROM country WHERE Continent = 'Europe')
SELECT DISTINCT c.Name, c.Code FROM city c WHERE c.CountryCode IN (SELECT Code FROM country WHERE Continent = 'Europe' AND SurfaceArea > (SELECT MAX(SurfaceArea) FROM country))
SELECT DISTINCT c.Name FROM city AS c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Code NOT IN (SELECT Code FROM country WHERE Continent = 'Africa' AND Population < (SELECT MAX(Population) FROM country))
SELECT DISTINCT c.Name FROM city AS c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Continent = 'Africa' AND t.Population < (SELECT MAX(Population) FROM country WHERE Continent = 'Asia');
SELECT DISTINCT c.Name, c.Code FROM city c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Code NOT IN (SELECT Code FROM country WHERE Continent = 'Asia' AND Population > (SELECT MAX(Population) FROM country))
SELECT DISTINCT c.Name, c.Code FROM city c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Code IN (SELECT Code FROM country WHERE Population > (SELECT MAX(Population) FROM country))
SELECT DISTINCT Code FROM country AS T1.Code2 WHERE T1.Name NOT IN (SELECT Code FROM country AS T2 WHERE T2.IsOfficial = 0)
SELECT DISTINCT CountryCode FROM country AS T1 INNER JOIN countrylanguage AS T2 ON T1.Code = T2.CountryCode WHERE T1.Name!= 'English'
SELECT DISTINCT Code FROM countrylanguage WHERE IsOfficial = 0 AND Language NOT IN (SELECT Code FROM country)
SELECT DISTINCT Code FROM countrylanguage WHERE IsOfficial = 0 AND Language NOT IN (SELECT Code FROM country)
SELECT DISTINCT Code FROM country AS T1.Code2 WHERE T1.GovernmentForm!= 'Republic' AND T1.Language!= 'English'
SELECT DISTINCT Code FROM country AS T1.Code2 WHERE T1.Code NOT IN (SELECT Code FROM country AS T2.Code2 WHERE T2.IsOfficial = 0) AND T1.GovernmentForm = 'Republic'
SELECT DISTINCT c.Name, c.Name AS City, c.CountryCode, COUNT(*) AS Count FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.IsOfficial = 0 GROUP BY c.Name, c.CountryCode
SELECT DISTINCT Name FROM city WHERE CountryCode NOT IN (SELECT Code FROM countrylanguage WHERE IsOfficial = 0)
SELECT DISTINCT c.Name, c.Code AS City, l.Language FROM city c JOIN countrylanguage cl ON c.Code = cl.CountryCode WHERE cl.IsOfficial = 1 AND l.Language = 'Chinese'
SELECT DISTINCT c.Name, c2.Name AS CityName FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode WHERE cl.IsOfficial = 1 AND c.CountryCode IN (SELECT Code FROM country WHERE Continent = 'Asia' AND Language = 'Chinese')
SELECT Name, IndependenceYear, SurfaceArea FROM country WHERE Population = ( SELECT MIN(Population) FROM country )
SELECT c.Name, c.YearOfIndependence, c.SurfaceArea FROM country AS c JOIN city AS t ON c.Code = t.CountryCode WHERE t.Population = ( SELECT MIN(Population) FROM country )
SELECT c.Name, c.Population, c.Name AS Leader FROM city c JOIN country AS t ON c.CountryCode = t.Code WHERE t.Name = ( SELECT Name FROM country ORDER BY SurfaceArea DESC LIMIT 1 )
SELECT Name, Population, HeadOfState FROM country WHERE SurfaceArea = ( SELECT MAX(SurfaceArea) FROM country )
SELECT c.Name, COUNT(DISTINCT l.Language) AS num_languages FROM country AS c JOIN countrylanguage AS l ON c.Code = l.CountryCode GROUP BY c.Name HAVING COUNT(DISTINCT l.Language) >= 3
SELECT DISTINCT c.Name, COUNT(DISTINCT cl.Language) AS num_languages FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode GROUP BY c.Name HAVING COUNT(DISTINCT cl.Language) > 2
SELECT c.ID, c.Name, COUNT(DISTINCT c.ID) AS count FROM city c JOIN ( SELECT Code, AVG(Population) AS avg FROM city GROUP BY Code ) AS t ON c.CountryCode = t.Code GROUP BY c.ID, c.Name
SELECT c.ID, c.Name, AVG(c.Population) AS avg_population FROM city c JOIN country AS t ON c.CountryCode = t.Code GROUP BY c.ID HAVING COUNT(DISTINCT c.ID) > (SELECT COUNT(*) FROM city) GROUP BY c.ID
SELECT DISTINCT g.Name, SUM(c.Population) AS TotalPopulation FROM city c JOIN countrylanguage cl ON c.CountryCode = cl.CountryCode JOIN governmentform gf ON cl.CountryCode = gf.Code2 WHERE gf.LifeExpectancy > 72 GROUP BY g.Name
SELECT DISTINCT g.Name, COUNT(DISTINCT c.Population) AS TotalPopulation FROM country AS c JOIN governmentform AS g ON c.Code = g.Code2 WHERE g.LifeExpectancy > 72 GROUP BY g.Name
SELECT c.Name, AVG(LifeExpectancy) AS avg_life_expectancy, SUM(P.Population) AS total_population FROM city c JOIN country p ON c.CountryCode = p.Code WHERE LifeExpectancy < 72 GROUP BY c.Name
SELECT DISTINCT Continent, Population, AVG(LifeExpectancy) AS avg_life_expectancy FROM ( SELECT DISTINCT Continent, Population FROM country WHERE LifeExpectancy < 72 UNION ALL SELECT Continent, Population FROM city WHERE LifeExpectancy < 72 ) AS subquery GROUP BY Continent, Population
