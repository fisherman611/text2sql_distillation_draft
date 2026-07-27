SELECT count(*) FROM Degree_Programs WHERE degree_summary_name  =  'degree'
SELECT count(DISTINCT department_id) FROM degree_programs WHERE degree_summary_name  =  'Degrees'
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(DISTINCT degree_summary_name) FROM Degree_Programs
SELECT count(*) FROM Degree_Programs WHERE department_name  =  'Engineering'
SELECT count(*) FROM departments WHERE department_name  =  'Engineering'
SELECT section_name ,  section_description FROM sections
SELECT T1.section_name ,  T1.section_description FROM sections AS T1 JOIN courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T1.course_name ,  T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  <=  2
SELECT T1.course_name ,  T1.course_id FROM courses AS T1 JOIN sections AS T2 ON T1.course_id  =  T2.course_id WHERE T2.section_name  <  2
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT section_name FROM sections ORDER BY section_name DESC
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.semester_name ,  T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id GROUP BY T1.semester_id ORDER BY count(*) DESC LIMIT 1
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT department_description FROM departments WHERE department_name LIKE '%computer%'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.semester_id  =  1 AND T3.degree_program_id  =  2 GROUP BY T1.student_id
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.semester_id  =  1 AND T3.degree_summary_name  =  '2'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelor'
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id WHERE T3.degree_summary_name  =  'Bachelors'
SELECT T1.degree_program_id FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_summary_name FROM degree_programs AS T1 JOIN student_enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_summary_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T1.degree_summary_name FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.degree_program_id ,  T2.degree_summary_description FROM Degree_Programs AS T1 JOIN Student_Enrolment AS T2 ON T1.degree_program_id  =  T2.degree_program_id GROUP BY T1.degree_program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id ,  T2.first_name ,  T2.middle_name ,  T2.last_name ,  count(*) ,  T1.student_id FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.middle_name ,  T1.last_name ,  T1.student_id ,  count(*) FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT semester_name FROM semesters WHERE semester_id NOT IN (SELECT semester_id FROM student_enrolment)
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name HAVING count(*)  >  1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM students AS T1 JOIN addresses AS T2 ON T1.current_address_id = T2.address_id WHERE T2.state_province_county = "North Carolina" EXCEPT SELECT T1.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id = T2.student_id JOIN degree_programs AS T3 ON T2.degree_program_id = T3.degree_program_id WHERE T3.department_name = "Degree Program"
SELECT last_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE state_province_county  =  'North Carolina') EXCEPT SELECT T2.last_name FROM students AS T1 JOIN student_enrolment AS T2 ON T1.student_id  =  T2.student_id
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_id HAVING count(*)  >=  2
SELECT transcript_date ,  transcript_id FROM transcripts GROUP BY transcript_id HAVING count(*)  >=  2
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT cell_mobile_number FROM students WHERE first_name = "Timmothy" AND last_name = "Ward"
SELECT first_name ,  middle_name ,  last_name FROM students ORDER BY date_first_registered LIMIT 1
SELECT first_name ,  middle_name ,  last_name FROM students WHERE date_first_registered  =  (SELECT date_first_registered FROM students ORDER BY date_first_registered LIMIT 1)
SELECT first_name ,  middle_name ,  last_name FROM students WHERE date_first_registered  =  (SELECT max(date_first_registered) FROM students)
SELECT first_name ,  middle_name ,  last_name FROM students WHERE date_first_registered  =  (SELECT date_first_registered FROM students ORDER BY date_first_registered LIMIT 1)
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT first_name FROM students WHERE permanent_address_id != current_address_id
SELECT T1.address_id ,  T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id ,  T1.line_1 ,  T1.line_2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id  =  T2.current_address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(transcript_date) FROM transcripts
SELECT avg(transcript_date) FROM transcripts
SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT transcript_date FROM transcripts ORDER BY transcript_date ASC LIMIT 1
SELECT count(*) FROM transcripts
SELECT count(*) FROM transcripts
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT transcript_date FROM transcripts ORDER BY transcript_date DESC LIMIT 1
SELECT count(*) ,  T1.course_id FROM student_enrolment_courses AS T1 JOIN courses AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_id HAVING count(*)  >=  1
SELECT max(count(*) ,  T1.course_id) FROM TRANSCRIPT_CONTENTS AS T1 JOIN Student_Enrolment_Courses AS T2 ON T1.transcript_id  =  T2.transcript_id GROUP BY T2.course_id
SELECT transcript_date ,  transcript_id FROM transcripts ORDER BY transcript_date LIMIT 1
SELECT transcript_date ,  transcript_id FROM transcripts ORDER BY transcript_id LIMIT 1
SELECT T1.semester_name FROM Semesters AS T1 JOIN Student_Enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN Students AS T3 ON T2.student_id  =  T3.student_id WHERE T3.first_name  =  "Master" AND T3.last_name  =  "Bachelor"
SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id JOIN departments AS T4 ON T3.department_id  =  T4.department_id JOIN degree_programs AS T5 ON T4.department_id  =  T5.department_id WHERE T3.degree_summary_name  =  'Masters' INTERSECT SELECT T1.semester_id FROM semesters AS T1 JOIN student_enrolment AS T2 ON T1.semester_id  =  T2.semester_id JOIN degree_programs AS T3 ON T2.degree_program_id  =  T3.degree_program_id JOIN departments AS T4 ON T3.department_id  =  T4.department_id JOIN degree_programs AS T5 ON T4.department_id  =  T5.department_id WHERE T3.degree_summary_name  =  'Bachelors'
SELECT count(DISTINCT address_id) FROM students
SELECT DISTINCT T1.address_id FROM addresses AS T1 JOIN students AS T2 ON T1.address_id  =  T2.permanent_address_id
SELECT * FROM students ORDER BY last_name DESC
SELECT * FROM students ORDER BY first_name DESC
SELECT section_description FROM sections WHERE section_name  =  'h'
SELECT section_description FROM sections WHERE section_name  =  'h'
SELECT T1.first_name FROM students AS T1 JOIN addresses AS T2 ON T1.permanent_address_id = T2.address_id WHERE T2.country = "Haiti" OR T1.cell_mobile_number = "09700166582"
SELECT first_name FROM students WHERE permanent_address_id IN (SELECT address_id FROM addresses WHERE country  =  'Haiti') OR cell_mobile_number  =  '09700166582'
SELECT Title FROM cartoon ORDER BY Title
SELECT Title FROM cartoon ORDER BY Title
SELECT * FROM cartoon WHERE Directed_by  =  "Ben Jones"
SELECT title FROM cartoon WHERE directed_by  =  "Ben Jones"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT count(*) FROM cartoon WHERE written_by  =  "Joseph Kuhr"
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT title ,  directed_by FROM cartoon ORDER BY original_air_date
SELECT Title FROM Cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
SELECT Title FROM cartoon WHERE Directed_by  =  "Ben Jones" OR Directed_by  =  "Brandon Vietti"
{"Country": "United States", "Number_of_TV_Channels": 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT Country ,  count(*) FROM TV_Channel GROUP BY Country ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT series_name) ,  count(DISTINCT Content) FROM TV_Channel
SELECT count(DISTINCT series_name) ,  count(DISTINCT Content) FROM TV_Channel
SELECT Content FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Content FROM TV_channel WHERE series_name  =  'Sky Radio'
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT Package_Option FROM TV_Channel WHERE series_name  =  "Sky Radio"
SELECT count(*) FROM TV_channel WHERE Language  =  "English"
SELECT count(*) FROM TV_channel WHERE Language  =  "English"
{"language": "english", "count": 121}
SELECT Language ,  count(*) FROM TV_Channel GROUP BY Language ORDER BY count(*) ASC LIMIT 1
SELECT Language ,  count(*) FROM TV_Channel GROUP BY Language
SELECT Language ,  count(*) FROM TV_Channel GROUP BY Language
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle!"
SELECT T2.series_name FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.title  =  "The Rise of the Blue Beetle"
SELECT t1.Title FROM cartoon AS t1 JOIN tv_channel AS t2 ON t1.Channel  =  t2.id WHERE t2.series_name  =  "Sky Radio"
SELECT T2.Title FROM TV_Channel AS T1 JOIN Cartoon AS T2 ON T1.id  =  T2.Channel WHERE T1.series_name  =  "Sky Radio"
SELECT Episode FROM TV_series ORDER BY Rating
SELECT * FROM TV_series ORDER BY Rating
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT Episode ,  Rating FROM TV_series ORDER BY Rating DESC LIMIT 3
SELECT min(Share) ,  max(Share) FROM TV_series
SELECT max(Share) ,  min(Share) FROM TV_series
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Air_Date FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT Weekly_Rank FROM TV_series WHERE Episode  =  "A Love of a Lifetime"
SELECT T2.series_name FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.episode  =  "A Love of a Lifetime"
SELECT series_name FROM tv_channel WHERE id  =  (SELECT channel FROM tv_series WHERE episode  =  "A Love of a Lifetime")
SELECT T2.episode FROM TV_series AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T2.series_name  =  "Sky Radio"
SELECT T2.episode FROM tv_series AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.series_name  =  "Sky Radio"
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT directed_by ,  count(*) FROM cartoon GROUP BY directed_by
SELECT production_code ,  Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Production_code ,  Channel FROM cartoon ORDER BY Original_air_date DESC LIMIT 1
SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  "Yes"
SELECT Package_Option ,  series_name FROM TV_Channel WHERE Hight_definition_TV  =  "Yes"
SELECT T2.Country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.Channel  =  T2.id WHERE T1.Written_by  =  "Todd Casey"
SELECT T1.Country FROM TV_Channel AS T1 JOIN cartoon AS T2 ON T1.id  =  T2.channel WHERE T1.Country  =  "TV" AND T2.directed_by  =  "Todd Casey"
SELECT Country FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Written_by  =  'Todd Casey')
SELECT Country FROM TV_Channel WHERE Content != 'Cartoon' AND Written_by != 'Todd Casey'
SELECT T2.series_name ,  T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.directed_by  =  "Ben Jones" INTERSECT SELECT T2.series_name ,  T2.country FROM cartoon AS T1 JOIN tv_channel AS T2 ON T1.channel  =  T2.id WHERE T1.directed_by  =  "Michael Chang"
SELECT T2.series_name ,  T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.directed_by  =  "Ben Jones" INTERSECT SELECT T2.series_name ,  T2.country FROM cartoon AS T1 JOIN TV_channel AS T2 ON T1.channel  =  T2.id WHERE T1.directed_by  =  "Michael Chang"
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT Pixel_aspect_ratio_PAR ,  Country FROM TV_Channel WHERE Language != 'English'
SELECT id FROM TV_channel GROUP BY country HAVING count(*)  >  2
SELECT id FROM TV_Channel GROUP BY id HAVING count(*)  >  2
SELECT id FROM tv_channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Directed_by  =  "Ben Jones")
SELECT id FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM cartoon WHERE Directed_by  =  "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT T2.id FROM cartoon AS T1 JOIN TV_Channel AS T2 ON T1.Channel  =  T2.id WHERE T1.Director_by  =  "Ben Jones")
SELECT Package_Option FROM TV_Channel WHERE id NOT IN (SELECT Channel FROM Cartoon WHERE Directed_by  =  "Ben Jones")
SELECT count(*) FROM poker_player
SELECT count(*) FROM poker_player
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
SELECT Earnings FROM poker_player ORDER BY Earnings DESC
{"Final_Table_Made": "Poker_Player", "Best_Finish": "Best"}
SELECT Final_Table_Made ,  Best_Finish FROM poker_player
SELECT avg(earnings) FROM poker_player
SELECT avg(earnings) FROM poker_player
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Earnings DESC LIMIT 1
SELECT max(Final_Table_Made) FROM poker_player WHERE Earnings  <  200000
SELECT max(final_table_made) FROM poker_player WHERE earnings  <  200000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Earnings  >  300000
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Final_Table_Made
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT T2.Birth_Date FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT Money_Rank FROM poker_player ORDER BY Height DESC LIMIT 1
SELECT avg(earnings) FROM poker_player WHERE height  >  200
SELECT avg(earnings) FROM poker_player WHERE height  >  200
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
SELECT T2.Name FROM poker_player AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Earnings DESC
{"nationality": "USA", "count": 2000000000"}
SELECT COUNT(*) ,  Nationality FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
{"nationality": "Japan"}
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*)  >=  2
SELECT Name ,  Birth_Date FROM people ORDER BY Name
SELECT Name ,  Birth_Date FROM people ORDER BY Name
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE Nationality != 'Russia'
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM poker_player)
SELECT count(DISTINCT Nationality) FROM people
SELECT count(DISTINCT Nationality) FROM people
SELECT count(*) FROM area_code_state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS ORDER BY contestant_name DESC
SELECT vote_id ,  phone_number ,  state FROM VOTES
SELECT max(area_code) ,  min(area_code) FROM area_code_state
SELECT max(created) FROM VOTES WHERE state  =  'CA'
SELECT contestant_name FROM contestants WHERE contestant_name != 'Jessie Alloway'
SELECT DISTINCT T1.state ,  T2.created FROM area_code_state AS T1 JOIN votes AS T2 ON T1.state  =  T2.state
SELECT contestant_number ,  contestant_name FROM CONTESTANTS INTERSECT SELECT contestant_number ,  contestant_name FROM VOTES GROUP BY contestant_number HAVING count(*)  >=  2
SELECT T1.contestant_number ,  T1.contestant_name FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number GROUP BY T2.contestant_number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM VOTES WHERE state  =  'NY' OR state  =  'CA'
SELECT count(*) FROM CONTESTANTS WHERE contestant_number NOT IN (SELECT contestant_number FROM VOTES)
SELECT area_code FROM VOTES GROUP BY area_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.created ,  T2.state ,  T3.phone_number FROM VOTES AS T1 JOIN CONTESTANTS AS T2 ON T1.contestant_number  =  T2.contestant_number JOIN VOTES AS T3 ON T1.contestant_number  =  T3.contestant_number WHERE T2.contestant_name  =  'Tabatha Gehling'
SELECT T2.area_code FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T1.contestant_name  =  'Tabatha Gehling' INTERSECT SELECT T2.area_code FROM CONTESTANTS AS T1 JOIN VOTES AS T2 ON T1.contestant_number  =  T2.contestant_number WHERE T1.contestant_name  =  'Kelly Clauss'
SELECT contestant_name FROM contestants WHERE contestant_name LIKE '%Al%'
SELECT name FROM country WHERE independeyyear  >  1950
SELECT name FROM country WHERE independyear  >  1950
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT count(*) FROM country WHERE GovernmentForm  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Caribbean'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Carribean'
SELECT continent FROM country WHERE name  =  'Anguilla'
SELECT continent FROM country WHERE name  =  'Anguilla'
SELECT T2.region FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.countrycode WHERE T2.name  =  'Kabul'
SELECT T2.region FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.countrycode WHERE T1.name  =  "Kabul"
SELECT language FROM countrylanguage WHERE countrycode  =  'ARAB' ORDER BY percentage DESC LIMIT 1
SELECT language FROM countrylanguage WHERE countrycode  =  'ARAB'
SELECT population ,  life expectancy FROM country WHERE name  =  'Brazil'
SELECT Population ,  LifeExpectancy FROM country WHERE Continent  =  'Brazil'
SELECT T2.region ,  T2.population FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.code WHERE T1.name  =  " Angola "
SELECT T2.region ,  T1.population FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.countrycode WHERE T1.name  =  'Angola'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  "Central Africa"
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  'Central Africa'
SELECT name FROM country WHERE continent  =  'Asia' AND life_expectancy  =  (SELECT min(life_expectancy) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE continent  =  'Asia' ORDER BY lifeexpectancy LIMIT 1
SELECT sum(population) ,  max(gnp) FROM country WHERE continent  =  'Asia'
SELECT count(*) ,  max(gnp) FROM country WHERE continent  =  'Asia'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  'Africa' AND region  =  'Republic'
SELECT avg(lifeexpectancy) FROM country WHERE continent  =  'Africa' AND region  =  'Republic'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' UNION SELECT sum(surfacearea) FROM country WHERE continent  =  'Europe'
SELECT sum(surfacearea) FROM country WHERE continent  =  'Asia' OR continent  =  'Europe'
SELECT count(*) FROM city WHERE District  =  "Gelderland"
SELECT sum(population) FROM city WHERE district  =  'Gelderland'
SELECT avg(gnp) ,  sum(population) FROM country WHERE governmentform  =  "US"
SELECT avg(gnp) ,  sum(population) FROM country WHERE region  =  'US'
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT language) FROM countrylanguage
SELECT count(DISTINCT governmentform) FROM country WHERE continent  =  'Africa'
SELECT count(DISTINCT GovernmentForm) FROM country WHERE Continent  =  'Africa'
SELECT sum(t2.language) FROM countrylanguage AS t1 JOIN country AS t2 ON t1.code  =  t2.code WHERE t2.name  =  'Aruba'
SELECT count(*) FROM countrylanguage WHERE countrycode  =  'ARAB'
SELECT count(*) FROM countrylanguage WHERE country.code  =  'AF'}
SELECT count(*) FROM countrylanguage WHERE countrycode  =  'AF' AND isofficial  =  '1'
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code GROUP BY T1.countrycode ORDER BY sum(T1.percentage) DESC LIMIT 1
SELECT T2.name FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T2.code ORDER BY sum(T1.percentage) DESC LIMIT 1
SELECT T2.continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T2.continent ORDER BY count(*) DESC LIMIT 1
SELECT T2.continent FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T2.continent ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM countrylanguage WHERE language  =  'English' INTERSECT SELECT count(*) FROM countrylanguage WHERE language  =  'Dutch'
SELECT count(*) FROM countrylanguage WHERE language  =  'English' INTERSECT SELECT count(*) FROM countrylanguage WHERE language  =  'Dutch'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.language  =  "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.language  =  "French"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.language  =  'English' INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.language  =  'French'
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "English" INTERSECT SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "French"
SELECT T1.name ,  T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.isofficial  =  1 AND T2.language  =  'English' INTERSECT SELECT T1.name ,  T2.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.isofficial  =  1 AND T2.language  =  'French'
SELECT count(DISTINCT continent) FROM countrylanguage WHERE language  =  'Chinese'
SELECT count(*) FROM country WHERE language  =  'Chinese'
SELECT T2.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.language  =  "English" OR T1.language  =  "Dutch"
SELECT T2.region FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T1.language  =  "Dutch" OR T1.language  =  "English"
SELECT T1.country FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"
SELECT T1.name FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language  =  "English" OR T2.Language  =  "Dutch"
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.Continent  =  "Asia" ORDER BY T2.Percentage DESC LIMIT 1
SELECT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.Continent  =  'Asia' GROUP BY T2.Language ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code WHERE T2.Region  =  'Republic' GROUP BY T2.Language HAVING count(*)  =  1
SELECT DISTINCT T2.Language FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.countrycode WHERE T1.region  =  "Republic" GROUP BY T1.code HAVING count(*)  =  1
SELECT T1.name FROM city AS T1 JOIN countrylanguage AS T2 ON T1.countrycode  =  T2.countrycode WHERE T2.language  =  "english" ORDER BY T1.population DESC LIMIT 1
SELECT max(population) FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE language  =  "English")
SELECT name ,  population ,  lifeexpectancy FROM country WHERE name  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT name ,  population ,  lifeexpectancy FROM country WHERE continent  =  'Asia' ORDER BY surfacearea DESC LIMIT 1
SELECT avg(lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE isofficial = = 1 AND language  =  "english")
SELECT avg(lifeexpectancy) FROM country WHERE countrycode NOT IN (SELECT code FROM countrylanguage WHERE isofficial = 1 AND language  =  "english")
SELECT sum(population) FROM country AS T1 JOIN countrylanguage AS T2 ON T1.code  =  T2.code WHERE T2.Language != 'English'
SELECT count(*) FROM country WHERE code NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  "english")
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.HeadOfState  =  "Beatrix"
SELECT T1.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T2.HeadOfState  =  "Beatrix"
SELECT count(DISTINCT language) FROM countrylanguage WHERE country.code  IN (SELECT code FROM country WHERE independyear  <  1930)
SELECT count(DISTINCT language) FROM countrylanguage WHERE countrycode  IN (SELECT code FROM country WHERE independyear  <  1930)
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT country FROM country WHERE surfacearea  >  (SELECT max(surfacearea) FROM country WHERE continent  =  'Europe')
SELECT T1.name FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.code2 WHERE T1.continent  =  'African' AND T2.population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT country FROM country WHERE continent  =  'Africa' AND population  <  (SELECT min(population) FROM country WHERE continent  =  'Asia')
SELECT name FROM country WHERE continent  =  'Asia' AND population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa')
SELECT name FROM country WHERE continent  =  'Asia' AND population  >  (SELECT max(population) FROM country WHERE continent  =  'Africa')
SELECT countrycode FROM country WHERE language != 'en'
SELECT countrycode FROM country WHERE language != 'en'
SELECT code FROM countrylanguage WHERE language != 'en'
SELECT code FROM countrylanguage WHERE language != 'en'
SELECT code FROM country WHERE governmentform != 'Republic' AND language != 'English'
SELECT code FROM country WHERE countrycode NOT IN (SELECT countrycode FROM countrylanguage WHERE language  =  "english") AND governmentform != "Republic"
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.name  IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1 AND language  =  'english')
SELECT name FROM city WHERE countrycode IN (SELECT countrycode FROM countrylanguage WHERE isofficial != 1 AND continent  =  'Europe')
SELECT DISTINCT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.name  =  'Asia' AND T2.code2  =  'Chinese'
SELECT T1.name FROM city AS T1 JOIN country AS T2 ON T1.countrycode  =  T2.code WHERE T2.continent  =  'Asia' AND T2.isofficial  =  1 AND T1.name NOT IN (SELECT T3.name FROM city AS T3 JOIN country AS T4 ON T3.countrycode  =  T4.code JOIN countrylanguage AS T5 ON T4.code  =  T5.code WHERE T5.Language  =  'Chinese')
SELECT name ,  independeyyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT name ,  independyear ,  surfacearea FROM country ORDER BY population ASC LIMIT 1
SELECT T2.population ,  T2.name ,  T2.headofstate FROM country AS T1 JOIN city AS T2 ON T1.code  =  T2.countrycode ORDER BY T1.SurfaceArea DESC LIMIT 1
SELECT name ,  population ,  head_of_state FROM country ORDER BY surfacearea DESC LIMIT 1
SELECT T2.name ,  count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T2.code HAVING count(*)  >=  3
SELECT T2.name ,  count(*) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.code  =  T2.code GROUP BY T1.code HAVING count(*)  >  2
SELECT count(*) ,  district FROM city WHERE population  >  (SELECT avg(population) FROM city) GROUP BY district
SELECT district ,  count(*) FROM city GROUP BY district HAVING avg(population)  >  (SELECT avg(population) FROM city)
SELECT governmentform ,  sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy)  >  72
SELECT governmentform ,  sum(population) FROM country GROUP BY governmentform HAVING avg(lifeexpectancy)  >  72
SELECT avg(lifeexpectancy) ,  sum(population) FROM country GROUP BY continent WHERE avg(lifeexpectancy)  <  72
SELECT continent ,  sum(population) ,  avg(lifeexpectancy) FROM country GROUP BY continent HAVING avg(lifeexpectancy)  <  72
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name ,  surfacearea FROM country ORDER BY surfacearea DESC LIMIT 5
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population DESC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT name FROM country ORDER BY population ASC LIMIT 3
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT count(*) FROM country WHERE continent  =  'Asia'
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT name FROM country WHERE continent  =  'Europe' AND population  =  80000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE continent  =  "North America" AND surfacearea  >  3000
SELECT sum(population) ,  avg(surfacearea) FROM country WHERE continent  =  'North America' AND surfacearea  >  3000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT name FROM city WHERE population BETWEEN 160000 AND 900000
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code GROUP BY T1.CountryCode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Language ,  T1.Country FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code ORDER BY T1.Percentage DESC LIMIT 1
SELECT countrycode ,  language FROM countrylanguage ORDER BY percentage DESC LIMIT 1
SELECT sum(T2.Percentage) FROM countrylanguage AS T1 JOIN country AS T2 ON T1.CountryCode  =  T2.Code WHERE T1.Language  =  "Spanish" GROUP BY T1.CountryCode ORDER BY sum(T1.Percentage) DESC LIMIT 1
SELECT count(*) FROM country WHERE language  =  "Spanish"
SELECT countrycode FROM countrylanguage WHERE language  =  'Spanish' ORDER BY Percentage DESC LIMIT 1
SELECT countrycode FROM countrylanguage WHERE language  =  'Spanish'
SELECT count(*) FROM conductor
SELECT count(*) FROM conductor
SELECT Name FROM conductor ORDER BY Age ASC
SELECT Name FROM conductor ORDER BY Age
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT Name FROM conductor WHERE Nationality != "USA"
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT record_company FROM orchestra ORDER BY year_of_founded DESC
SELECT avg(Attendance) FROM show
SELECT avg(Attendance) FROM show
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT max(Share) ,  min(Share) FROM performance WHERE TYPE != "Live final"
SELECT count(DISTINCT Nationality) FROM conductor
SELECT count(DISTINCT Nationality) FROM conductor
SELECT Name FROM conductor ORDER BY YEAR_of_work DESC
SELECT name FROM conductor ORDER BY YEAR_of_work DESC
SELECT Name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT name FROM conductor ORDER BY YEAR_of_work DESC LIMIT 1
SELECT T2.Name ,  T1.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID  =  T3.Conductor_ID
SELECT T2.Name ,  T1.Orchestra FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID  =  T3.Conductor_ID
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM performance AS T1 JOIN orchestra AS T2 ON T1.Orchestra_ID  =  T2.Orchestra_ID JOIN conductor AS T3 ON T2.Conductor_ID  =  T3.Conductor_ID GROUP BY T3.Conductor_ID HAVING COUNT(*)  >  1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T2.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID GROUP BY T1.Conductor_ID ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT T2.Name FROM orchestra AS T1 JOIN conductor AS T2 ON T1.Conductor_ID  =  T2.Conductor_ID WHERE T1.Year_of_Founded  >  2008
SELECT Record_Company ,  COUNT(*) FROM orchestra GROUP BY Record_Company
SELECT count(*) ,  record_company FROM orchestra GROUP BY record_company
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY count(*) ASC
SELECT Major_record_format FROM orchestra GROUP BY Major_record_format ORDER BY count(*) DESC
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Record_Company FROM orchestra GROUP BY Record_Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT orchestra FROM orchestra WHERE orchestra_id NOT IN (SELECT orchestra_id FROM performance)
SELECT orchestra FROM performance
SELECT record_company FROM orchestra WHERE YEAR_of_founded  <  2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded  >  2003
SELECT record_company FROM orchestra WHERE YEAR_of_founded  <  2003 INTERSECT SELECT record_company FROM orchestra WHERE YEAR_of_founded  >  2003
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT count(*) FROM orchestra WHERE major_record_format  =  "CD" OR major_record_format  =  "DVD"
SELECT YEAR_of_founded FROM orchestra GROUP BY YEAR_of_founded HAVING count(*)  >  1
SELECT YEAR_of_founded FROM orchestra WHERE orchestra_id IN (SELECT orchestra_id FROM performance GROUP BY orchestra_id HAVING count(*)  >  1)
SELECT count(*) FROM Highschooler
SELECT count(*) FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT name ,  grade FROM Highschooler
SELECT * FROM Highschooler
SELECT grade FROM highschooler
SELECT grade FROM highschooler WHERE name  =  'Kyle'
SELECT grade FROM Highschooler WHERE name  =  'Kyle'
SELECT name FROM highschooler WHERE grade  =  10
SELECT name FROM highschooler WHERE grade  =  10
{"id": "1"}
SELECT id FROM highschooler WHERE name  =  'Kyle'
SELECT count(*) FROM Highschooler WHERE grade  =  '9' OR grade  =  '10'
SELECT count(*) FROM Highschooler WHERE grade  =  9 OR grade  =  10
SELECT count(*) ,  grade FROM highschooler GROUP BY grade
SELECT count(*) ,  grade FROM highschooler GROUP BY grade
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM highschooler GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT grade FROM highschooler GROUP BY grade HAVING count(*)  >=  4
SELECT student_id ,  friend_id FROM friend
SELECT count(*) ,  T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.name
SELECT T2.name ,  count(*) FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T2.id
SELECT T1.name ,  count(*) FROM Highschooler AS T1 JOIN Friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  3
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  3
SELECT T2.name FROM friend AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT T2.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT count(*) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.name  =  'Kyle'
SELECT id FROM highschooler EXCEPT SELECT student_id FROM friend
SELECT id FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT name FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT id FROM highschooler WHERE id IN (SELECT student_id FROM likes GROUP BY student_id HAVING count(*)  >=  1)
SELECT student_id FROM likes INTERSECT SELECT student_id FROM friend
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id JOIN friend AS T3 ON T3.student_id  =  T2.student_id WHERE T3.friend_id  =  (SELECT T3.friend_id FROM friend AS T3 GROUP BY T3.friend_id HAVING count(*)  >=  1)
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id JOIN friend AS T3 ON T3.student_id  =  T2.liked_id WHERE T1.grade  =  'high schooler'
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT count(*) ,  student_id FROM likes GROUP BY student_id
SELECT T2.name ,  count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id
SELECT T1.name ,  count(*) FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN likes AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.grade  >  5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >=  2
SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id WHERE T1.grade  >  5 INTERSECT SELECT T1.name FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T1.id HAVING count(*)  >=  2
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT count(*) FROM likes AS T1 JOIN highschooler AS T2 ON T1.student_id  =  T2.id WHERE T2.name  =  'Kyle'
SELECT avg(grade) FROM highschooler WHERE id IN (SELECT student_id FROM friend)
SELECT avg(grade) FROM highschooler AS T1 JOIN friend AS T2 ON T1.id  =  T2.student_id GROUP BY T2.student_id
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT min(grade) FROM highschooler WHERE id NOT IN (SELECT student_id FROM friend)
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT state FROM owners INTERSECT SELECT state FROM professionals
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT avg(T1.age) FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id
SELECT T1.professional_id ,  T1.last_name ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.date_of_treatment  >  2
SELECT professional_id ,  first_name ,  last_name ,  cell_number FROM professionals WHERE state  =  'Indiana' OR treatment_id  >  2
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.cost_of_treatment  >  1000
SELECT T1.name FROM dogs AS T1 JOIN treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T2.cost_of_treatment  <=  1000
SELECT first_name FROM owners WHERE first_name IN (SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.name != 'dog') INTERSECT SELECT first_name FROM professionals WHERE first_name NOT IN (SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.name != 'dog')
SELECT first_name FROM owners EXCEPT SELECT T1.first_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.name  =  'dog'
SELECT T1.professional_id ,  T1.role_code ,  T1.email_address FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.dog_id  =  'dog'
SELECT professional_id ,  role_code ,  email_address FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments)
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.first_name ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T2.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.role_code ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T2.professional_id HAVING count(*)  >=  2
SELECT T2.breed_name FROM dogs AS T1 JOIN breeds AS T2 ON T1.breed_code  =  T2.breed_code GROUP BY T1.breed_code ORDER BY count(*) DESC LIMIT 1
SELECT breed_name FROM breeds WHERE breed_code IN (SELECT breed_code FROM dogs GROUP BY breed_code ORDER BY count(*) DESC LIMIT 1)
SELECT T1.owner_id ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.owner_id ,  T1.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id = T2.owner_id JOIN treatments AS T3 ON T2.dog_id = T3.dog_id GROUP BY T1.owner_id ORDER BY sum(T3.cost_of_treatment) DESC LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T1.cost_of_treatment) LIMIT 1
SELECT T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code GROUP BY T1.treatment_type_code ORDER BY sum(T1.cost_of_treatment) LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.charge_amount) DESC LIMIT 1
SELECT T1.owner_id ,  T1.zip_code FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id GROUP BY T1.owner_id ORDER BY sum(T2.cost_of_treatment) DESC LIMIT 1
SELECT T1.professional_id ,  T2.cell_number FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.professional_id ,  T1.cell_number FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id GROUP BY T1.professional_id HAVING count(*)  >=  2
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT min(cost_of_treatment) FROM treatments)
SELECT T1.first_name ,  T1.last_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.cost_of_treatment  <  (SELECT avg(cost_of_treatment) FROM treatments)
SELECT T2.date_of_treatment ,  T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.date_of_treatment ,  T2.first_name FROM treatments AS T1 JOIN professionals AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.cost_of_treatment ,  T2.treatment_type_description FROM treatments AS T1 JOIN treatment_types AS T2 ON T1.treatment_type_code  =  T2.treatment_type_code
SELECT T1.first_name ,  T1.last_name ,  T2.size_description FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T1.last_name ,  T2.weight FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.first_name ,  T2.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id
SELECT T1.name ,  T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  "rare"
SELECT T1.name ,  T2.date_of_treatment FROM Dogs AS T1 JOIN Treatments AS T2 ON T1.dog_id  =  T2.dog_id WHERE T1.breed_code  =  "rare"
SELECT T2.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT T2.first_name ,  T1.name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T1.state  =  'Virginia'
SELECT date_arrived ,  date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT date_arrived ,  date_departed FROM Dogs WHERE dog_id IN (SELECT dog_id FROM treatments)
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.age  =  (SELECT min(age) FROM dogs)
SELECT T2.last_name FROM owners AS T1 JOIN dogs AS T2 ON T1.owner_id  =  T2.owner_id WHERE T2.age  =  (SELECT min(age) FROM dogs)
SELECT email_address FROM professionals WHERE state  =  'Hawaii' OR state  =  'Wisconsin'
SELECT email_address FROM professionals WHERE state  =  "Hawaii" OR state  =  "Wisconsin"
SELECT date_arrived ,  date_departed FROM Dogs
SELECT date_arrived ,  date_departed FROM Dogs
SELECT count(*) FROM treatments
SELECT count(*) FROM treatments
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id JOIN dogs AS T3 ON T2.dog_id  =  T3.dog_id
SELECT count(*) FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id WHERE T2.treatment_type_code  =  'dog'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT role_code ,  street ,  city ,  state FROM professionals WHERE city LIKE '%West%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT first_name ,  last_name ,  email_address FROM owners WHERE state LIKE '%North%'
SELECT count(*) FROM Dogs WHERE age  <  (SELECT avg(age) FROM Dogs)
SELECT count(*) FROM Dogs WHERE age  <  (SELECT avg(age) FROM Dogs)
SELECT max(cost_of_treatment) FROM treatments
SELECT cost_of_treatment FROM treatments ORDER BY date_of_treatment DESC LIMIT 1
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM dogs WHERE dog_id NOT IN (SELECT dog_id FROM treatments)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM dogs)
SELECT count(*) FROM owners WHERE owner_id NOT IN (SELECT owner_id FROM Dogs)
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs))
SELECT count(*) FROM professionals WHERE professional_id NOT IN (SELECT professional_id FROM treatments WHERE dog_id IN (SELECT dog_id FROM dogs))
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  '1'
SELECT name ,  age ,  weight FROM Dogs WHERE abandoned_yn  =  '1'
SELECT avg(age) FROM Dogs
SELECT avg(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT max(age) FROM Dogs
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_type ,  charge_amount FROM Charges
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT charge_amount FROM charges ORDER BY charge_amount DESC LIMIT 1
SELECT email_address ,  home_phone ,  cell_number FROM professionals
SELECT email_address ,  home_phone ,  cell_number FROM professionals
SELECT breed_name ,  size_description FROM Dogs GROUP BY breed_code ,  size_code
SELECT DISTINCT breed_name ,  size_description FROM Dogs
SELECT T1.first_name FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT T1.first_name ,  T1.description FROM professionals AS T1 JOIN treatments AS T2 ON T1.professional_id  =  T2.professional_id
SELECT count(*) FROM singer
SELECT count(*) FROM singer
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Name FROM singer ORDER BY Net_Worth_Millions
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Birth_Year ,  Citizenship FROM singer
SELECT Name FROM singer WHERE Citizenship != 'France'
SELECT Name FROM singer WHERE Citizenship != 'French'
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer WHERE Birth_Year  =  1948 OR Birth_Year  =  1949
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Name FROM singer ORDER BY Net_Worth_Millions DESC LIMIT 1
SELECT Citizenship ,  COUNT(*) FROM singer GROUP BY Citizenship
SELECT citizenship ,  count(*) FROM singer GROUP BY citizenship
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
SELECT Citizenship FROM singer GROUP BY Citizenship ORDER BY COUNT(*) DESC LIMIT 1
{"citizenship": "BANANA", "net_worth_millions": "2000000000"}
SELECT citizenship ,  max(net_worth_millions) FROM singer GROUP BY citizenship
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT T2.Title ,  T1.Name FROM singer AS T1 JOIN song AS T2 ON T1.Singer_ID  =  T2.Singer_ID
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T1.Sales  >  300000
SELECT DISTINCT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T1.Sales  >  300000
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING count(*)  >  1
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID HAVING count(*)  >  1
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T1.Singer_ID
SELECT T2.Name ,  sum(T1.Sales) FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID GROUP BY T2.Name
SELECT Name FROM singer WHERE Singer_ID NOT IN (SELECT Singer_ID FROM song)
SELECT T2.Name FROM song AS T1 JOIN singer AS T2 ON T1.Singer_ID  =  T2.Singer_ID WHERE T2.Name NOT IN (SELECT T3.Name FROM song AS T3 JOIN singer AS T2 ON T3.Singer_ID  =  T2.Singer_ID)
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT Citizenship FROM singer WHERE Birth_Year  <  1945 INTERSECT SELECT Citizenship FROM singer WHERE Birth_Year  >  1955
SELECT count(*) FROM Other_Available_Features
SELECT feature_type_name FROM Ref_Feature_Types WHERE feature_type_code  =  "AirCon"
SELECT property_type_description FROM properties WHERE property_type_code  =  '0001'
SELECT property_name FROM properties WHERE property_type_code  =  'House' OR room_count  >  1
