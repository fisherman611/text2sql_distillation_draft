SELECT count(*) FROM DEGREE_PROGRAMS
SELECT count(DISTINCT department_id) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs AS T1 JOIN Departments AS T2 ON T1.department_id  =  T2.department_id WHERE T2.department_name  =  'Engineering'
SELECT count(*) FROM DEPARTMENTS AS T1 JOIN degree_programs AS T2 ON T1.department_id  =  T2.department_id WHERE T1.department_name  =  'Engineering'
SELECT section_name ,  section_description FROM Sections
SELECT section_name ,  section_description FROM Sections
SELECT T1.course_name ,  T1.course_id FROM Courses AS T1 JOIN Sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT course_name ,  course_id FROM Courses WHERE course_id IN (SELECT course_id FROM Sections GROUP BY course_id HAVING count(*)  <  2)
SELECT section_name FROM Sections ORDER BY section_name DESC;
SELECT section_name FROM Sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM Departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T2.student_id FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id WHERE T2.degree_program_id  =  2 AND T2.semester_id  =  T2.semester_id
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T2.student_id FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_enrolment_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  '2' AND T2.semester_id  =  2
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id WHERE T2.degree_program_id  =  1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_enrolment_id WHERE T2.course_id  =  'Bachelors'
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT degree_summary_name FROM degree_programs GROUP BY degree_summary_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.degree_program_id ,  T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T1.first_name ,  T1.middle_name ,  T1.last_name ,  count(*) FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  count(*) FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM Student_Enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT course_name FROM Courses WHERE course_id IN (SELECT student_enrolment_id FROM Student_Enrolment_Courses)
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  >  0
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM courses AS T1 JOIN student_enrolment_courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT last_name FROM Students WHERE current_address_id IN (SELECT permanent_address_id FROM Students WHERE state_province_county  =  'North Carolina') EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN Degree_Programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.department_id  =  T3.department_id
SELECT last_name FROM Students WHERE T1.state_province_county  =  'North Carolina' EXCEPT SELECT T1.last_name FROM Students AS T1 JOIN Student_Enrolment AS T2 ON T1.student_id  =  T2.student_id
SELECT T1.transcript_date ,  T1.transcript_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.transcript_id HAVING count(*)  >=  2
SELECT transcript_date ,  transcript_id FROM Transcripts GROUP BY transcript_id HAVING count(*)  >=  2
SELECT T1.cell_mobile_number FROM Students AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.student_id  =  T2.student_id JOIN Courses AS T3 ON T2.course_id  =  T3.course_id WHERE T3.course_name  =  'Mathematics' AND T3.department_name  =  'Science' AND T3.department_id  =  T1.department_id WHERE T1.first_name  =  'Timmothy' AND T1.last_name  =  'Ward'
SELECT cell_mobile_number FROM STUDENTS WHERE first_name = \"Timmothy\" AND last_name = \"Ward\";
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered LIMIT 1;
SELECT first_name ,  middle_name ,  last_name FROM Students ORDER BY date_first_registered ASC LIMIT 1
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT first_name FROM Students WHERE permanent_address_id != current_address_id
SELECT T1.address_id ,  T2.current_address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT address_id ,  line_1 ,  line_2 FROM addresses GROUP BY address_id ORDER BY count(*) DESC LIMIT 1
SELECT transcript_date FROM Transcripts GROUP BY transcript_date ORDER BY avg(transcript_date) DESC LIMIT 1;
SELECT avg(transcript_date) FROM TRANSCRIPTS
SELECT transcript_date ,  T1.other_details FROM Transcripts AS T1 JOIN Transcripts AS T2 ON T1.transcript_id  =  T2.transcript_id WHERE T2.transcript_date  =  (SELECT min(transcript_date) FROM Transcripts)
SELECT transcript_date ,  other_details FROM Transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM TRANSCRIPTS
SELECT count(*) FROM TRANSCRIPTS
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM Transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT count(DISTINCT T1.course_id) ,  T1.transcript_id FROM Student_Enrolment_Courses AS T1 JOIN Student_Enrolment AS T2 ON T1.student_enrolment_id  =  T2.student_enrolment_id GROUP BY T1.transcript_id ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.course_id) ,  T2.course_id FROM Transcripts AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT transcript_date ,  transcript_id FROM Transcripts GROUP BY transcript_date ORDER BY count(*) LIMIT 1;
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_date ORDER BY count(*) LIMIT 1;
SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.student_id  =  'M' INTERSECT SELECT T1.semester_name FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id WHERE T2.student_id  =  'B'
SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.degree_summary_name  =  'Masters' INTERSECT SELECT T1.semester_id FROM Student_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.degree_summary_name  =  'Bachelors'
SELECT count(DISTINCT address_id) FROM addresses WHERE address_id IN (SELECT T1.current_address_id FROM students AS T1 JOIN permanent_address AS T2 ON T1.current_address_id = T2.address_id)
SELECT DISTINCT T1.address_id FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id
SELECT * FROM Students ORDER BY first_name ASC ,  last_name ASC
SELECT * FROM Students ORDER BY first_name ASC
SELECT * FROM Sections WHERE section_name  =  "H"
SELECT section_description FROM Sections WHERE section_name  =  'h'
SELECT first_name FROM Students WHERE country  =  'Haiti' OR cell_mobile_number  =  09700166582
SELECT first_name FROM Students WHERE cell_mobile_number  =  09700166582 OR permanent_address_id  =  (SELECT permanent_address_id FROM Students WHERE cell_mobile_number  =  09700166582)
SELECT Title FROM Cartoon ORDER BY Title
SELECT Title FROM Cartoon ORDER BY Title ASC
SELECT Directed_by FROM Cartoon WHERE Directed_by  =  "Ben Jones"
SELECT Title FROM Cartoon WHERE Directed_by  =  'Ben Jones'
SELECT count(*) FROM Cartoon WHERE Written_by  =  "Joseph Kuhr"
SELECT count(*) FROM Cartoon WHERE Written_by  =  'Joseph Kuhr'
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT Title ,  Directed_by FROM Cartoon ORDER BY Original_air_date
SELECT Title FROM Cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
SELECT Title FROM Cartoon WHERE Directed_by  =  'Ben Jones' OR Directed_by  =  'Brandon Vietti'
SELECT Country ,  COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT Country ,  COUNT(*) FROM TV_CHANNEL GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) ,  content FROM TV_channel GROUP BY content
SELECT count(DISTINCT series_name) ,  count(DISTINCT Content) FROM TV_Channel
SELECT content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT content FROM TV_channel WHERE series_name  =  'Sky Radio'
SELECT package_option FROM TV_CHANNEL WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_CHANNEL WHERE series_name  =  'Sky Radio'
SELECT count(*) FROM TV_Channel WHERE LANGUAGE  =  'English'
SELECT count(*) FROM TV_Channel WHERE LANGUAGE  =  'English'
SELECT Language ,  COUNT(*) FROM TV CHANNEL GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language ,  COUNT(*) FROM TV_CHANNEL GROUP BY Language ORDER BY COUNT(*) ASC LIMIT 1
SELECT Language ,  COUNT(*) FROM TV CHANNEL GROUP BY Language
SELECT language ,  count(*) FROM TV_channel GROUP BY language
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle"
SELECT T2.Title FROM TV_CHANNEL AS T1 JOIN CARTON AS T2 ON T1.id  =  T2.channel WHERE T1.series_name  =  "Sky Radio"
SELECT T1.title FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating DESC
SELECT Episode FROM TV_series ORDER BY Rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(Share) ,  min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "A Love of a Lifetime"
SELECT T2.series_name FROM cartoon AS T1 JOIN TV_series AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "A Love of a Lifetime"
SELECT T1.Episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.id  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series WHERE Series_name  =  "Sky Radio"
SELECT Directed_by ,  count(*) FROM Cartoon GROUP BY Directed_by
SELECT Directed_by ,  COUNT(*) FROM Cartoon GROUP BY Directed_by
SELECT Production_code ,  Channel FROM Cartoon ORDER BY Air_Date DESC LIMIT 1;
SELECT t1.production_code ,  t2.channel FROM cartoon AS t1 JOIN TV_channel AS t2 ON t1.channel  =  t2.id ORDER BY t1.Original_air_date DESC LIMIT 1
SELECT T1.series_name ,  T1.package_option FROM TV_channel AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.id WHERE T2.hight_definition_TV  =  'YES'
SELECT package_option ,  series_name FROM TV_channel WHERE high_definition_TV  =  'Y'
SELECT T1.Country FROM TV_CHANNEL AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.id WHERE T2.Written_by  =  "Todd Casey"
SELECT T2.Country FROM Cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel  =  T2.id JOIN TV_series AS T3 ON T1.Channel  =  T3.id WHERE T3.Written_by  =  'Todd Casey'
SELECT Country FROM TV_Channel WHERE Country NOT IN (SELECT Channel FROM Cartoon WHERE Written_by  =  'Todd Casey')
SELECT Country FROM TV_Channel WHERE Written_by != 'Todd Casey'
SELECT T1.series_name ,  T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  'Ben Jones' INTERSECT SELECT T1.series_name ,  T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  'Michael Chang'
SELECT T1.series_name ,  T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  'Ben Jones' INTERSECT SELECT T1.series_name ,  T1.Country FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.channel WHERE T2.directed_by  =  'Michael Chang'
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_Channel GROUP BY Country HAVING count(*)  >  2
SELECT id FROM TV_Channel GROUP BY id HAVING count(*)  >  2
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by  =  'Ben Jones')
SELECT id FROM TV_channel WHERE id NOT IN (SELECT channel FROM Cartoon WHERE Directed_by  =  'Ben Jones')
SELECT t1.package_option FROM TV_channel AS t1 JOIN cartoon AS t2 ON t1.id  =  t2.channel WHERE t2.directed_by  =  'Ben Jones' AND t1.country  =  'TV'
SELECT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.id JOIN Cartoon AS T3 ON T1.id  =  T3.id WHERE T3.Directed_by  =  'Ben Jones' EXCEPT SELECT T1.Package_Option FROM TV_CHANNEL AS T1 JOIN TV_series AS T2 ON T1.id  =  T2.id JOIN Cartoon AS T3 ON T1.id  =  T3.id WHERE T3.Directed_by  =  'Ben Jones'
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT avg(Earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT Name FROM people ORDER BY Final_Table_Made ASC
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id ORDER BY T1.Earnings DESC LIMIT 1
SELECT T2.birth_date FROM poker_player AS T1 JOIN people AS T2 ON T1.people_id  =  T2.people_id ORDER BY T1.Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Money_Rank DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(earnings) FROM poker_player WHERE height  >  200
SELECT AVG(Earnings) FROM poker_player WHERE Height  >  200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality ,  COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name ASC
SELECT Name ,  Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != "Russia"
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM contestants ORDER BY contestant_name DESC;
SELECT vote_id ,  phone_number ,  state FROM VOTES
SELECT max(area_code) ,  min(area_code) FROM area_code_state
SELECT created FROM VOTES WHERE state  =  'CA'
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT state ,  created FROM VOTES
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number HAVING count(*)  >=  2
SELECT T1.contestant_number ,  T1.contestant_name FROM contestants AS T1 JOIN votes AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T1.contestant_number ORDER BY count(*) LIMIT 1
SELECT count(*) FROM VOTES WHERE state  =  'NY' OR state  =  'CA'
SELECT count(*) FROM contestants WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT T1.area_code FROM area_code_state AS T1 JOIN contestants AS T2 ON T1.state  =  T2.state GROUP BY T1.area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created ,  T1.state ,  T1.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T2.contestant_name  =  'Tabatha Gehling'
SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state JOIN contestants AS T3 ON T2.contestant_number  =  T3.contestant_number WHERE T3.contestant_name  =  'Tabatha Gehling' INTERSECT SELECT T1.area_code FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state JOIN contestants AS T3 ON T2.contestant_number  =  T3.contestant_number WHERE T3.contestant_name  =  'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independyear  >  1950
SELECT name FROM country WHERE independyear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE region  =  'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Caribbean'
SELECT Continent FROM country WHERE Name  =  'Anguilla'
SELECT continent FROM country WHERE name  =  'Anguilla'
SELECT District FROM city WHERE Name  =  \"Kabul\"
SELECT District FROM city WHERE Name  =  "Kabul"
SELECT Language FROM countrylanguage WHERE CountryCode  =  'Aruba'
SELECT Language FROM countrylanguage WHERE CountryCode  =  "Aruba"
SELECT population ,  lifeexpectancy FROM country WHERE name  =  'Brazil'
SELECT population ,  lifeexpectancy FROM country WHERE name  =  'Brazil'
SELECT region ,  population FROM country WHERE name  =  "Angola"
SELECT t1.region ,  t1.population FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.countrycode WHERE t1.name  =  "Angola"
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  'Central Africa'
SELECT avg(T1.lifeexpectancy) FROM country AS T1 JOIN city AS T2 ON T1.Code2  =  T2.CountryCode WHERE T1.Continent  =  'Africa' AND T2.Name  =  'Central Africa'
SELECT name FROM country ORDER BY lifeexpectancy ASC LIMIT 1
SELECT name FROM country WHERE continent  =  'Asia' AND lifeexpectancy  =  (SELECT min(lifeexpectancy) FROM country WHERE continent  =  'Asia')
SELECT sum(population) ,  max(gnpold) FROM country WHERE region  =  'Asia'
SELECT count(*) ,  max(gnp) FROM country WHERE region  =  'Asia'
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  'Africa' AND GovernmentForm  =  'Republic'
SELECT avg(LifeExpectancy) FROM country WHERE Region  =  'Africa' AND GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' AND continent  =  'Europe'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT population FROM city WHERE district  =  "Gelderland"
SELECT sum(population) FROM city WHERE district  =  'Gelderland'
SELECT avg(T1.GNP) ,  avg(T1.Population) FROM country AS T1 JOIN country AS T2 ON T1.Code2  =  T2.Code WHERE T2.GovernmentForm  =  'US'
SELECT avg(GNP) ,  sum(population) FROM country WHERE code  =  'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  'Africa'
SELECT sum(percentage) FROM countrylanguage WHERE language  =  'Papiwan' AND countrycode  =  'AR'
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  'Aruba'
SELECT count(DISTINCT IsOfficial) FROM countrylanguage WHERE countrycode  =  "Afghanistan"
SELECT count(*) FROM countrylanguage WHERE countrycode  =  'Afghanistan'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.CodeLanguage GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.CodeLanguage GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT t2.continent FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.codecode GROUP BY t1.continent ORDER BY count(*) DESC LIMIT 1
SELECT t2.continent FROM countrylanguage AS t1 JOIN country AS t2 ON t1.countrycode  =  t2.codecode WHERE t1.language  =  'English' GROUP BY t2.continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code2 WHERE T1.Language  =  'English' AND T2.Name  =  'Dutch'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' AND T2.language  =  'Dutch'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'French'
SELECT T2.Name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  'English' INTERSECT SELECT T2.Name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'French'
SELECT count(DISTINCT t1.continent) FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'Chinese'
SELECT count(*) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language  =  'Chinese'
SELECT DISTINCT T1.region FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T2.language  =  'English' OR T2.language  =  'Dutch'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Language  =  'Dutch' OR T2.Language  =  'English'
SELECT DISTINCT country FROM countrylanguage WHERE language  =  'English' OR language  =  'Dutch'
SELECT DISTINCT country FROM countrylanguage WHERE IsOfficial  =  'Y' OR Language  =  'English' OR Language  =  'Dutch'
SELECT language FROM countrylanguage WHERE countrycode  =  'Asia' ORDER BY percentage DESC LIMIT 1
SELECT Language FROM countrylanguage WHERE IsOfficial  =  'Y' GROUP BY Language ORDER BY count(*) DESC LIMIT 1
SELECT language FROM countrylanguage WHERE IsOfficial  =  'Y' INTERSECT SELECT language FROM countrylanguage WHERE IsOfficial  =  'N'
SELECT language FROM countrylanguage WHERE IsOfficial  =  'Y' AND governmentform  =  'Republic' GROUP BY language HAVING count(*)  =  1
SELECT name FROM city WHERE population  =  (SELECT max(population) FROM city WHERE language  =  'English')
SELECT name FROM city WHERE population  >  (SELECT max(population) FROM city) AND language  =  'English'
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(T2.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(T2.LifeExpectancy) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.Code  =  T2.CountryCode WHERE T2.Language != 'English'
SELECT sum(T1.population) FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.language != 'English'
SELECT count(*) FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  'English')
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t1.headofstate  =  'Beatrix'
SELECT t2.language FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t1.headofstate  =  'Beatrix'
SELECT count(DISTINCT language) FROM countrylanguage WHERE isofficial  =  'Y' AND independyear  <  1930
SELECT count(DISTINCT language) FROM countrylanguage WHERE IsOfficial  =  'Y' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  'T' AND IsOfficial  =  '
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE population  >  (SELECT max(population) FROM country WHERE continent  =  'Asia')
SELECT CountryCode FROM city WHERE Language != 'English'
SELECT CountryCode FROM city WHERE Language != 'English'
SELECT CountryCode FROM countrylanguage WHERE Language != 'English'
SELECT CountryCode FROM countrylanguage WHERE IsOfficial  =  'No' AND Language != 'English'
SELECT code2 FROM country WHERE language != "English" AND governmentform != "Republic"
SELECT code2 FROM country WHERE language != 'English' AND governmentform != 'Republic'
SELECT name FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE language != 'English') AND continent  =  'Europe'
SELECT Name FROM city WHERE CountryCode != 'Europe' AND Language != 'English'
SELECT DISTINCT T1.Name FROM city AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.Name  =  'Asia' AND T2.Language  =  'Chinese'
SELECT T2.Name FROM countrylanguage AS T1 JOIN city AS T2 ON T1.CountryCode  =  T2.CountryCode WHERE T1.Language  =  \"Chinese\" AND T1.IsOfficial  =  1 AND T2.Continent  =  \"Asia\"
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  indepyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  leader ,  population FROM city ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  headofstate FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.Name ,  T1.Percentage FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.IsOfficial  =  'Y' GROUP BY T1.CountryCode HAVING count(*)  >=  3
SELECT T2.Name ,  COUNT(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Percentage  >  2 GROUP BY T2.Name
SELECT district ,  count(*) FROM city WHERE population  >  (SELECT avg(population) FROM city)
SELECT district ,  count(*) FROM city GROUP BY district HAVING count(*)  >  (SELECT avg(population) FROM city)
SELECT GovernmentForm ,  sum(population) FROM city WHERE avg(lifeexpectancy)  >  72 GROUP BY GovernmentForm
SELECT GovernmentForm ,  sum(population) FROM city WHERE lifeexpectancy  >  72 GROUP BY GovernmentForm
SELECT avg(LifeExpectancy) ,  sum(Population) ,  continent FROM country GROUP BY continent HAVING avg(LifeExpectancy)  <  72
SELECT continent ,  sum(population) ,  avg(LifeExpectancy) FROM country WHERE LifeExpectancy  <  72 GROUP BY continent
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT name FROM country ORDER BY population LIMIT 3
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT name FROM country WHERE continent  =  'Europe' AND population  >=  80000
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT sum(t1.population) ,  avg(t1.surfacearea) FROM country AS t1 JOIN city AS t2 ON t1.code  =  t2.countrycode WHERE t1.continent  =  'North America' AND t1.surfacearea  >  3000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE region  =  'North America' AND surfacearea  >  3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT Language FROM countrylanguage GROUP BY Language ORDER BY Count(*) DESC LIMIT 1
SELECT Language ,  COUNT(*) FROM countrylanguage GROUP BY Language ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Code ,  T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT sum(percentage) ,  countrycode FROM countrylanguage WHERE language  =  'spanish' GROUP BY countrycode ORDER BY sum(percentage) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language  =  'Spanish'
SELECT t2.countrycode FROM country AS t1 JOIN countrylanguage AS t2 ON t1.code  =  t2.countrycode WHERE t2.language  =  'Spanish' ORDER BY t2.percentage DESC LIMIT 1
SELECT CountryCode FROM countrylanguage WHERE Language  =  \"Spanish\"
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT Record_Company FROM orchestra ORDER BY Year_of_Founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(share) ,  min(share) FROM performance WHERE TYPE != "Live final"
SELECT max(share) ,  min(share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT Name FROM conductor ORDER BY Year_of_Work DESC LIMIT 1
SELECT T2.Name ,  T1.Conductor_ID FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T1.Name ,  T2.Orchestra FROM conductor AS T1 JOIN orchestra AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM performance AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) ,  record_company FROM orchestra GROUP BY record_company
SELECT orchestra FROM orchestra GROUP BY record_company ORDER BY count(*) ASC
SELECT Major_Record_Format ,  COUNT(*) FROM orchestra GROUP BY Major_Record_Format ORDER BY COUNT(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY count(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM orchestra EXCEPT SELECT T1.orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.orchestra_id  =  T2.orchestra_id
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  >  2003
SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  <  2003 INTERSECT SELECT Record_Company FROM orchestra WHERE YEAR_OF_FOUNDED  >  2003
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format  =  'CD' OR major_record_format  =  'DVD'
SELECT YEAR_OF_FOUNDED FROM ORCHESTRA GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*)  >  1
SELECT YEAR_OF_FOUNDED FROM ORCHESTRA GROUP BY YEAR_OF_FOUNDED HAVING COUNT(*)  >  1
SELECT count(*) FROM highschooler WHERE grade  =  'High'
SELECT count(*) FROM highschooler WHERE grade  =  'High'
SELECT name ,  grade FROM highschooler
SELECT name ,  grade FROM highschooler
SELECT grade FROM highschooler WHERE grade  =  'A' OR grade  =  'B' OR grade  =  'C'
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE id =  'K Kyle'
SELECT grade FROM highschooler WHERE name = 'Kyle'
SELECT name FROM highschooler WHERE grade  =  10
SELECT name FROM highschooler WHERE grade  =  10
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT id FROM highschooler WHERE name = "Kyle"
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) FROM highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) ,  grade FROM highschooler WHERE grade  =  'High' GROUP BY grade
SELECT count(*) ,  grade FROM highschooler WHERE grade  =  'High' GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT T1.id ,  T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT count(*) ,  T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.name
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  3
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id WHERE T1.name  =  "Kyle"
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(DISTINCT friend_id) FROM Friend WHERE student_id  =  'Kyle'
SELECT count(DISTINCT friend_id) FROM Friend WHERE friend_id  =  'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler EXCEPT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id JOIN friend AS T3 ON T2.friend_id  =  T3.id WHERE T1.grade  =  'high' AND T3.student_id NOT IN (SELECT student_id FROM likes)
SELECT T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id JOIN friend AS T3 ON T2.friend_id  =  T3.friend_id WHERE T3.friend_id  =  T1.id AND T2.liked_id  =  T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id JOIN likes AS T3 ON T2.id  =  T3.liked_id WHERE T3.liked_id != 0 GROUP BY T1.id HAVING count(*)  >  1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id JOIN friend AS T3 ON T2.student_id  =  T3.friend_id WHERE T3.friend_id  =  'H' AND T2.liked_id  =  'Y'
SELECT count(*) ,  T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT count(*) ,  T1.id FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id GROUP BY T1.id HAVING count(*)  >  5
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id GROUP BY T1.id HAVING count(*)  >  5
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >  2 AND T1.grade  >  5
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.friend_id GROUP BY T2.friend_id HAVING count(*)  >=  2 AND T1.grade  >  5
SELECT count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.liked_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler WHERE name  =  'Kyle'
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >  1
SELECT avg(T1.grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.role_code  =  'Owner' INTERSECT SELECT T1.state FROM owners AS T1 JOIN professionals AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.role_code  =  'Professional'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'treatment'
SELECT avg(T1.age) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'treatment'
SELECT T1.first_name ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2 UNION SELECT T1.first_name ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >  2
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN owners AS T3 ON T2.owner_id  =  T3.owner_id WHERE T3.state  =  'Indiana' OR T2.treatment_type_code  =  'More than 2'
SELECT name FROM dogs EXCEPT SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.cost_of_treatment  >  1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN owners AS T3 ON T1.owner_id  =  T3.owner_id WHERE T2.cost_of_treatment  >  1000
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners
SELECT first_name FROM professionals EXCEPT SELECT first_name FROM owners
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT professional_id ,  role_code ,  email_address FROM professionals EXCEPT SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT T1.first_name ,  T1.last_name ,  T1.owner_id FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.breed_name FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM breeds GROUP BY breed_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name FROM owners AS T1 JOIN treatments AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT treatment_type_description FROM Treatment_Types ORDER BY cost_of_treatment ASC LIMIT 1
SELECT treatment_type_description FROM treatment_types ORDER BY cost_of_treatment LIMIT 1
SELECT t1.owner_id ,  t1.zip_code FROM owners AS t1 JOIN charges AS t2 ON t1.owner_id  =  t2.owner_id GROUP BY t1.owner_id ORDER BY sum(t2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM Treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT cost_of_treatment ,  treatment_type_description FROM treatments
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.gender  =  'Dog'
SELECT T1.first_name ,  T1.last_name ,  T2.size_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T1.last_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.name ,  T2.date_of_treatment FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id JOIN treatment_types AS T3 ON T2.treatment_type_code  =  T3.treatment_type_code WHERE T3.treatment_type_description  =  'rare'
SELECT T1.name ,  T1.date_of_birth FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code  =  T2.breed_code WHERE T2.breed_name  =  'rare' ORDER BY T1.date_of_birth DESC LIMIT 1;
SELECT T1.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  "Virginia"
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  "Virginia"
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'treatment'
SELECT T1.date_arrived ,  T1.date_departed FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'treatment'
SELECT last_name FROM owners WHERE age  =  (SELECT min(age) FROM dogs)
SELECT t1.last_name FROM owners AS t1 JOIN dogs AS t2 ON t1.owner_id  =  t2.owner_id ORDER BY t2.age LIMIT 1
SELECT email_address FROM Owners WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM Professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT date_arrived ,  date_departed FROM dogs
SELECT date_arrived ,  date_departed FROM dogs
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'Dogs'
SELECT count(*) FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.treatment_type_code  =  'dog'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id WHERE T3.breed_code  =  'dog'
SELECT * FROM Professionals WHERE city LIKE '%West%'
SELECT T1.role_code ,  T1.street ,  T1.city ,  T1.state FROM professionals AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.city LIKE '%West%'
SELECT email_address ,  first_name ,  last_name FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT count(*) FROM dogs WHERE age  <  (SELECT avg(age) FROM dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code  =  'Dogs')
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE treatment_type_code  =  'Dogs')
SELECT T1.name ,  T1.age ,  T1.weight FROM dogs AS T1 JOIN owners AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.abandoned_yn  =  '1'
SELECT name ,  age ,  weight FROM dogs WHERE abandoned_yn  =  '1'
SELECT avg(age) FROM dogs
SELECT avg(age) FROM dogs
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT age FROM Dogs ORDER BY age DESC LIMIT 1
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_amount FROM Charges GROUP BY charge_type ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM Charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address ,  cell_number ,  home_phone FROM Professionals
SELECT email_address ,  cell_number ,  home_phone FROM Professionals
SELECT breed_code ,  size_code FROM dogs
SELECT DISTINCT T1.breed_name ,  T1.size_description FROM breeds AS T1 JOIN dogs AS T2 ON T1.breed_code  =  T2.breed_code
SELECT T1.first_name ,  T1.last_name FROM Professionals AS T1 JOIN Treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id
SELECT T1.first_name ,  T1.last_name ,  T2.treatment_type_description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Name FROM singer ORDER BY Net_Worth_Millions ASC
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != "France"
SELECT Name FROM singer WHERE Citizenship != 'France'
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID ORDER BY T2.Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship ,  max(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT Citizenship ,  MAX(Net_Worth_Millions) FROM singer GROUP BY Citizenship
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT DISTINCT T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Sales  >  300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING COUNT(*)  >  1
SELECT T2.Name ,  T1.Sales FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T2.Sales FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT Singer_ID FROM singer EXCEPT SELECT Singer_ID FROM song
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year < 1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year > 1955
SELECT count(*) FROM Other_Available_Features
SELECT t1.feature_type_name FROM Ref_Feature_Types AS t1 JOIN Other_Available_Features AS t2 ON t1.feature_type_code  =  t2.feature_type_code WHERE t2.feature_name  =  'AirCon'
SELECT T2.property_type_description FROM properties AS T1 JOIN Ref_Property_Types AS T2 ON T1.property_type_code  =  T2.property_type_code WHERE T1.property_type_code  =  'C'
SELECT T1.property_name FROM Properties AS T1 JOIN Other_Property_Features AS T2 ON T1.property_id  =  T2.property_id WHERE T2.feature_type_code  =  'HSE' INTERSECT SELECT T1.property_name FROM Properties AS T1 JOIN Other_Property_Features AS T2 ON T1.property_id  =  T2.property_id WHERE T2.feature_type_code  =  'APARTMENT'
