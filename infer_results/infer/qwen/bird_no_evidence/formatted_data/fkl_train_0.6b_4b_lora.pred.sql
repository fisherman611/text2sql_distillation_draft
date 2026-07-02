SELECT max(percent) eligible free rate FROM frpm WHERE county = "Alameda"
SELECT min(frpms) , sum(frpms) FROM frpm WHERE enroll12 >= 5 AND enroll12 <= 17
SELECT Zip FROM frpm WHERE County = "Fresno" AND Charter School (Y/N) = 'Y'
SELECT mailstreet FROM schools ORDER BY frpmcount DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND fundingtype = 'Charter'
SELECT count(*) FROM schools WHERE virtual = 'Y' AND avgscrmath IN (SELECT avgscrmath FROM satscores WHERE avgscrmath > 400)
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.schooltype = 'Magnet' OR T2.edopscode = 'Yes' AND T1.numtsttaker > 500
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead > 1500 GROUP BY T1.Phone ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode ORDER BY T1.frpmcount DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.chartercode WHERE T1.StatusType = 'Charter' AND avgscrmath > 560
SELECT count(*) , T1.frmipm FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T3.cds = T2.cds WHERE T2.school = (SELECT school FROM frpm GROUP BY school ORDER BY avgscrread DESC LIMIT 1) AND T3.numge1500 >= 1500
SELECT T1.CDSCode FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Enrollment (Ages 5-17) > 500
SELECT max(T1.FRPM Count (Ages 5-17)) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Percent (%) Eligible Free (Ages 5-17) > 0.3
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.CDSCode ORDER BY avgScrRead DESC LIMIT 3
SELECT T1.NCESSchool , T1.Enrollment (Ages 5-17) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment (Ages 5-17) DESC LIMIT 5
SELECT t1.district FROM frpm AS t1 JOIN schools AS t2 ON t1.cds = t2.cds GROUP BY t1.district ORDER BY avg(satscores.avgscrread) DESC LIMIT 1 WHERE t1.distinctcode = 'Reading'
SELECT count(*) FROM schools WHERE STATE = "Alameda" AND NumTstTakr < 100
SELECT t1.charternum , t1.schoolname FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds GROUP BY t1.charternum HAVING avgScrWrite > 499
SELECT count(*) FROM frpm WHERE fundingtype = 'Directly funded' AND 2013-14 CALPADS Fall 1 Certification Status = 'Yes' AND frpm.counter <= 250
SELECT T1.Phone FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.Phone ORDER BY avgScrMath DESC LIMIT 1
SELECT count(*) FROM frpm WHERE Low Grade = 9 AND High Grade = 12
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND free meal count (K-12) > 500 INTERSECT SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND frpm count (K-12) < 700
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T1.county = "Contra Costa" ORDER BY numtsttaker DESC LIMIT 1
SELECT T1.Street , T1.City FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (K-12) - T2.Enrollment (Ages 5-17) > 30
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.necessity FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode WHERE T2.AvgScrRead >= 1500
SELECT T1.fundingtype FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode WHERE avgscrmath > 400 GROUP BY T1.cdscode
SELECT T1.Street , T1.MailStreet , T1.MailCity , T1.Zip , T1.State , T1.AdmFName1 , T1.AdmLName1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "Monterey" AND T2.FreeMealCount (Ages 5-17) > 800
SELECT T1.schoolname , T1.AvgScrWrite , T1.CharterNum FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.cds HAVING T1.opendate > 1991 OR T1.closeddate < 2000
SELECT T1.schoolname , T1.doctype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.editionaltype = "K-12" AND T1.editionaltype = "15-17" GROUP BY T1.cdscode HAVING avg(T2.enrollment) - T1.enrollment (K-12) > (SELECT avg(T2.enrollment) - T1.enrollment (K-12) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.editionaltype = "K-12" AND T1.editionaltype = "15-17")
SELECT OpenDate FROM frpm ORDER BY enroll12 DESC LIMIT 12
SELECT city FROM frpm ORDER BY enroll12 LIMIT 5
SELECT percent (%) Eligible Free (K-12) FROM frpm ORDER BY Enrollment (Ages 5-17) DESC LIMIT 2
SELECT T1.school_name FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.statustype = "Charter" ORDER BY T1.free Meal Count (K-12) DESC LIMIT 5
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.Cdscode WHERE free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000 AND percent (%) Eligible Free (Ages 5-17) = 100
SELECT frpm.Percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE school_name = 'Kacey Gibson'
SELECT t1.admemail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY enroll12 LIMIT 1
SELECT t1.admfname1 , t1.admemail1 FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds ORDER BY avgScrWrite DESC LIMIT 1
SELECT t1.street , t1.city , t1.zip , t1.state FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY percent (%) Eligible Free (K-12) DESC LIMIT 1
SELECT website FROM frpm WHERE county = "Los Angeles" AND numtsttaker BETWEEN 2000 AND 3000
SELECT avg(NumTstTakr) FROM frpm WHERE OpenDate BETWEEN '01/01/1980' AND '12/31/1980' AND County = "Fresno"
SELECT T1.Phone FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.District = "Fresno Unified" AND T1.State = "CA" GROUP BY T1.Phone ORDER BY avgScrRead LIMIT 1
SELECT T1.SchoolName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY avgscrread DESC LIMIT 5
SELECT T1.edopsname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T2.cdscode = T3.cds WHERE T3.AvgScrMath = (SELECT max(AvgScrMath) FROM satscores) AND T1.edopscode = 'GSoffered'
SELECT avg(AvgScrRead) , avg(AvgScrMath) , T1.County FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.CDSCode ORDER BY avg(AvgScrMath) ASC LIMIT 1
SELECT avg(T1.AvgScrWrite) , T2.city FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY count(*) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.school = 'Ricci Ulrich' GROUP BY T1.school
SELECT state FROM frpm ORDER BY enroll12 DESC LIMIT 1
SELECT count(*) FROM frpm WHERE county = 'Alameda County' AND district = 'Elementary School District' AND academic_year = 1980
SELECT (frpm.county = 'Orange County') / (frpm.county = 'Elementary School District') , (frpm.county = 'Orange County') / (frpm.county = 'Unified School District') FROM frpm GROUP BY frpm.county
SELECT county , closeddate FROM schools WHERE statustype = 'Closed' GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T1.Street FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY avgscrmath DESC LIMIT 7
SELECT t1.street FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode JOIN satscores AS t3 ON t2.cdscode = t3.cdscode GROUP BY t1.cdscode ORDER BY avgscrread LIMIT 1;
SELECT count(*) FROM schools WHERE mailcity = "Lakeport" AND sum(T1.SAT) >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip , school FROM schools WHERE AdmFName1 < 'Avetik Atoian'
SELECT count(*) , count(*) FROM (SELECT mailstate , county FROM frpm WHERE mailstate = 'CA' INTERSECT SELECT mailstate , county FROM schools WHERE county = 'Colusa') AS T1 JOIN (SELECT mailstate , county FROM schools WHERE county = 'Humboldt') AS T2 ON T1.mailstate = T2.mailstate GROUP BY mailstate
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = 'San Joaquin'
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY avgScrWrite DESC LIMIT 333
SELECT phone , ext , school_name FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE AdmFName2 = "Dante Alvarez"
SELECT website FROM schools WHERE county = 'San Joaquin' AND virtual = 'Y' AND charter = 'Y' AND school_type = 'Partially Virtual Charter'
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = "Hickman" AND T2.DistrictName = "Elementary School District" AND T2.CharterSchool (Y/N) = 'Y'
SELECT sum(frmcount) FROM frpm WHERE county = 'Los Angeles' AND percent (%) Eligible Free (K-12) < 0.18
SELECT T1.schoolname , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T2.charterschoolnumber = "00D2"
SELECT count(*) FROM schools WHERE CharterNum = "00D4" AND MailCity = "Hickman"
SELECT count(*) , percent FROM frpm WHERE County = "Santa Clara" AND Charter Funding Type = "Local" GROUP BY County HAVING count(*) > (SELECT count(*) FROM frpm WHERE County = "Santa Clara" AND Charter Funding Type = "Local")
SELECT count(*) FROM schools WHERE opendate BETWEEN "01/01/2000" AND "12/31/2005" AND county = "Stanislaus" AND fundingtype = "directly funded"
SELECT sum(t1.frpmcount) FROM frpm AS t1 JOIN schools AS t2 ON t1.cdscode = t2.cdscode WHERE t2.city = "San Francisco" AND t1.academicyear = 1989
SELECT county FROM schools WHERE statustype = "School Wonership Code Belonging to Youth Authority Facilities (CEA)" AND DOC = "Yes" AND charternum = "Yes" AND acadycode = 1980
SELECT T1.NCESDist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.StatusType = 'State Special Schools'
SELECT count(*) , count(*) FROM frpm WHERE county = 'Alpine' AND districttype = 'CDS' AND statustype = 'Open' UNION SELECT count(*) , count(*) FROM frpm WHERE county = 'Alpine' AND districttype = 'CDS' AND statustype = 'Closed'
SELECT district FROM frpm EXCEPT SELECT district FROM frpm WHERE magnet = 'Y' AND city = 'Fresno'
SELECT count(*) FROM frpm WHERE Academic Year = 2014-2015 AND Enrollment (Ages 5-17) = 'Yes' AND School Name = 'State Special School' AND County Name = 'Fremont'
SELECT frpm.counts FROM frpm JOIN schools ON frpm.cdscode = schools.cdscode WHERE mailstreet = "PO Box 1040" AND schoolname = "Youth Authority School"
SELECT min(low grade) FROM frpm WHERE cdscode = (SELECT DISTINCT cds FROM schools WHERE ncesdist = 0613360)
SELECT T1.edopsname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.2013-14 CALPADS Fall 1 Certification Status = '2' AND T2.countycode = 37
SELECT T1.City FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.FRPM Count (Ages 5-17) WHERE T2.Low Grade = 9 AND T2.High Grade = 12 AND T2.County Code = "Merced"
SELECT T1.SchoolName , T1.Percent (%) Eligible FRPM (Ages 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.county = "Los Angeles" AND T2.edlevel = "K-12" AND T2.lowgrade = "K-12" AND T2.highgrade = "9-12"
SELECT gserved FROM frpm WHERE city = "Adelanto" GROUP BY gserved ORDER BY count(*) DESC LIMIT 1
SELECT county FROM frpm WHERE state = "San Diego" OR state = "Santa Barbara" AND (GSoffered = 'No' ) GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT T1.City , T1.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.State = "CA" ORDER BY T1.Latitude LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , mailcity FROM schools WHERE gsoffered = 'K-12' AND magnet = 'Yes' GROUP BY mailcity
SELECT AdmFName1 , AdmLName1 , district FROM schools GROUP BY district ORDER BY count(*) DESC LIMIT 2
SELECT T1.DistrictCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.admfname1 = "Alusine"
SELECT t2.admlname1 , t2.county , t2.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charternum = 40
SELECT T1.AdmEmail1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'San Bernardino' AND T2.OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND T2.SchoolType = 'Public Intermediate/Middle Schools' INTERSECT SELECT T1.AdmEmail1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'San Bernardino' AND T2.OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND T2.SchoolType = 'Intermediate/Middle Schools' UNION SELECT T1.AdmEmail1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = 'San Bernardino' AND T2.OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND T2.SchoolType = 'Unified Schools'
SELECT T1.schoolname FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY count(*) DESC LIMIT 1 SELECT T1.schoolname FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.numtsttaker >= 100
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'issuance' AND T1.district_id IN (SELECT district_id FROM account WHERE district_id = 'East Bohemia')
SELECT count(DISTINCT T1.account_id) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = (SELECT district_id FROM district WHERE A2 = 'Prague')
SELECT avg(unemployment) FROM 1995 , 1996
SELECT count(*) FROM client WHERE gender = 'F' INTERSECT SELECT count(*) FROM district WHERE avg(A1) > 6000 INTERSECT SELECT count(*) FROM district WHERE avg(A1) < 10000
SELECT count(*) FROM client WHERE gender = 'M' AND district_id = (SELECT district_id FROM district WHERE A2 = 'North Bohemia') GROUP BY gender HAVING avg(salary) > 8000
SELECT account_id FROM client WHERE gender = 'Female' ORDER BY birth_date LIMIT 1 INTERSECT SELECT account_id FROM client GROUP BY account_id ORDER BY avg_salary LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T2.client_id = T3.client_id ORDER BY T3.birth_date DESC LIMIT 1
SELECT count(*) FROM disp WHERE TYPE = "weekly" AND operation = "statement" AND client_id = owner
SELECT client_id FROM disp WHERE operation = 'Disponent' INTERSECT SELECT client_id FROM card
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1997%" ORDER BY T2.amount LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 12 GROUP BY T1.account_id ORDER BY sum(T2.amount) DESC LIMIT 1;
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T1.birth_date < 1950 AND T2.district_id = 13
SELECT account_id FROM account WHERE date LIKE "1995%" ORDER BY date LIMIT 1
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 3000 AND T2.date < 1997
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.district_id = T2.client_id WHERE T1.birth_date LIKE "1994/03/03"
SELECT T1.date FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'deposit' AND T1.amount = 840 AND T1.date LIKE "1998/%";
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.date LIKE "1994/08/25%"
SELECT max(T3.amount) FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.issued LIKE "1996/%" AND T2.type = "Credit"
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'loan' GROUP BY T2.client_id ORDER BY avg(T2.frequency) DESC LIMIT 1
SELECT T3.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.status = 'Applied' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Jesenik" AND T1.gender = "Female"
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.date = '1998/09/02' AND T1.amount = 5100
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Litomerice" AND T1.date YARS 1996
SELECT T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = "Female" AND T1.birth_date = "1976/1/29"
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date >= "1996/1/3";
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.district_id = 130 AND T2.account_id = (SELECT account_id FROM account WHERE district_id = 130 AND date = (SELECT min(date) FROM account WHERE district_id = 130));
SELECT T1.gender , avg(T1.A2) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'south Bohemia' GROUP BY T1.gender ORDER BY avg(T1.A2) DESC LIMIT 1;
SELECT (T4.balance - T3.balance) / T3.balance FROM account AS T3 JOIN trans AS T4 ON T3.account_id = T4.account_id JOIN loan AS T5 ON T3.account_id = T5.account_id WHERE T5.status = 'approved' AND T5.date LIKE "1993/03/22%" INTERSECT SELECT (T7.balance - T6.balance) / T6.balance FROM account AS T6 JOIN trans AS T7 ON T6.account_id = T7.account_id JOIN loan AS T8 ON T6.account_id = T8.account_id WHERE T8.date LIKE "1998/12/27%"
SELECT count(*) * 100.0 / amount FROM loan WHERE status = 'Fully Paid'
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'running'
SELECT T1.account_id , T2.A3 , T2.A13 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date > (SELECT min(date) FROM trans GROUP BY account_id HAVING operation = 'list')
SELECT T1.account_id , count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency >= 1 AND T2.date >= '1995' AND T2.date <= '2000' AND T1.district_id = (SELECT district_id FROM district WHERE A2 = 'east Bohemia') GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = 'Prachatice')
SELECT T1.district , T1.A3 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.loan_id = 4990
SELECT T1.account_id , T2.district , T2.A13 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.A3 , avg(T2.A1) FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.duration = 60 GROUP BY T2.A3
SELECT T1.district_id , T1.A3 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'running' INTERSECT SELECT T1.district_id , T1.A3 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'running' GROUP BY T1.district_id HAVING T2.duration = 14 AND T2.date - T2.date - 1995 = 1 AND T2.date - T2.date - 1996 = 1
SELECT count(*) * 100.0 / (SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Decin') AND date = 1993) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Decin') AND date = 1993
SELECT account_id FROM account WHERE frequency = 'monthly'
SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 9
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.type != 'Credit Card' AND T2.date LIKE "1996-01-01" GROUP BY T1.district_id ORDER BY sum(T2.amount) DESC LIMIT 10;
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM account WHERE district_id = "South Bohemia") AND type != "Credit Card"
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T2.gender = 'M'
SELECT T2.A3 , T2.A10 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = 1996 GROUP BY T2.A3 ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE YEAR(date) = 1996
SELECT count(*) FROM trans AS T1 JOIN card AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit' AND T1.balance < 0
SELECT count(*) FROM loan WHERE date BETWEEN '01/01/1995' AND '12/31/1997' AND amount BETWEEN 250000 AND 250000 AND status = 'approved'
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 1 AND T1.type = 'running'
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND T2.date = '1995' ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM card WHERE TYPE = "high-level credit card" AND disp_id = "owner"
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT DISTINCT T1.district_id FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.date LIKE "1997%" AND T2.operation = "loan" AND T2.amount > 10000
SELECT T1.account_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN disp AS T3 ON T1.account_id = T3.account_id WHERE T3.type = 'household' AND T2.district_id = (SELECT district_id FROM account GROUP BY district_id ORDER BY count(*) DESC LIMIT 1) AND T1.amount = (SELECT max(amount) FROM order WHERE amount = (SELECT max(amount) FROM order WHERE type = 'household') ) AND T1.k_symbol = 'Pisek'
SELECT DISTINCT T1.account_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Credit' AND T2.account_id IN (SELECT DISTINCT account_id FROM card WHERE TYPE = 'Credit')
SELECT avg(T2.amount) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "2021%" AND T1.type = "Credit"
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'debit' AND T2.date LIKE "1998%" AND T2.type = 'Credit' AND T2.amount < (SELECT avg(amount) FROM trans WHERE TYPE = 'Credit')
SELECT T1.gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.account_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = 'female' AND T2.type = 'Credit' INTERSECT SELECT T1.gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.account_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T2.type = 'Debt'
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'female' AND T2.district_id IN (SELECT district_id FROM district WHERE A2 = 'South Bohemia')
SELECT DISTINCT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Tabor" AND T1.status = "Applied for loan"
SELECT DISTINCT T1.type , avg(T2.balance) FROM card AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN account AS T3 ON T3.account_id = T2.account_id GROUP BY T3.district_id HAVING T3.district_id IN (SELECT district_id FROM account WHERE T3.balance > 8000 AND T3.balance < 9000)
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A2 = 'North Bohemia' AND T2.bank = 'AB'
SELECT DISTINCT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.operation = 'withdraw'
SELECT avg(count(*) ) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = 1995 AND T2.A4 > 4000 AND T2.A7 > 1997 GROUP BY T2.district_id
SELECT count(*) FROM card WHERE TYPE = 'classic'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT count(*) * 100 / sum(count(*) ) FROM card WHERE issued < 1998 AND TYPE = 'Gold'
SELECT T1.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id ORDER BY T1.amount DESC LIMIT 1 T2.owner
SELECT count(*) FROM account WHERE district_id = 532 AND date LIKE "1995%"
SELECT DISTINCT T1.district_id FROM district AS T1 JOIN order AS T2 ON T1.district_id = T2.account_id WHERE T2.order_id = 33333
SELECT T3.amount FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN card AS T3 ON T1.client_id = T3.client_id WHERE T2.type = 'Cash' AND T1.client_id = 3356
SELECT count(*) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount < 200000
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T2.region FROM disp AS T1 JOIN district AS T2 ON T1.client_id = T2.district_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = "finished with no problems" GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id FROM disp AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 32423
SELECT DISTINCT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Jesenik"
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'Junior' AND T2.issued > "1996"
SELECT count(*) * 100.0 / (SELECT count(*) FROM client WHERE district_id IN (SELECT district_id FROM account GROUP BY district_id HAVING avg(salary) > 10000)) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'Female'
SELECT sum(T2.amount) - sum(T1.amount) , T1.gender , T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'Male' AND T1.birth_date BETWEEN '1996-04-19' AND '1997-04-19' GROUP BY T1.gender
SELECT count(*) FROM trans WHERE date > 1995 AND operation = 'Credit'
SELECT count(*) - count(*) FROM (SELECT district_id , A3 , A4 , A5 , A6 , A7 , A8 , A9 , A10 , A11 , A12 , A13 , A14 , A15 , A16 FROM district WHERE A2 = "East Bohemia" AND A3 = "1996" UNION SELECT district_id , A3 , A4 , A5 , A6 , A7 , A8 , A9 , A10 , A11 , A12 , A13 , A14 , A15 , A16 FROM district WHERE A2 = "North Bohemia" AND A3 = "1996")
SELECT count(*) , count(*) FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.account_id BETWEEN 1 AND 10
SELECT count(*) FROM account WHERE account_id = 3
SELECT birth_date FROM client WHERE client_id = (SELECT client_id FROM account WHERE account_id = 130)
SELECT count(DISTINCT account_id) FROM disp JOIN trans ON disp.account_id = trans.account_id WHERE disp.type = 'request'
SELECT amount , status FROM loan WHERE client_id = 992
SELECT T4.gender FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN loan AS T3 ON T1.client_id = T3.client_id JOIN client AS T4 ON T2.client_id = T4.client_id WHERE T1.trans_id = 851 GROUP BY T4.gender ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.type FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 9
SELECT sum(amount) FROM trans WHERE date LIKE "1998%" AND client_id = 617
SELECT T1.client_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date BETWEEN '1983-' AND '1987' INTERSECT SELECT T1.client_id FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Bank' AND T2.A3 = 'East Bohemia'
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'Female' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "M" AND T1.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T2.amount > 4000
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Beroun' AND date > 1996)
SELECT count(*) FROM card WHERE TYPE = 'JUNIOR' AND disp_id IN (SELECT disp_id FROM client WHERE gender = 'F')
{"sql": "SELECT count(*) , count(*) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'Female' AND T2.district_id = (SELECT district_id FROM account WHERE T1.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2.district_id = (SELECT district_id FROM account WHERE T2
SELECT count(*) * 100.0 / count(client_id) FROM client WHERE gender = 'M' JOIN disp ON disp.client_id = client.client_id WHERE TYPE = 'weekly'
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'weekly' AND T1.gender = 'Owner'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 ORDER BY T2.amount LIMIT 1
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date DESC LIMIT 1 INTERSECT SELECT account_id FROM client GROUP BY account_id ORDER BY avg_salary LIMIT 1
SELECT count(*) FROM client WHERE birth_date = "1920" AND district_id = (SELECT district_id FROM district WHERE A2 = "east Bohemia" )
SELECT count(*) FROM loan WHERE duration = 24
SELECT max(T1.amount) , T2.date FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'Running' GROUP BY T2.date
SELECT DISTINCT client_id , district_id FROM client EXCEPT SELECT DISTINCT client_id , district_id FROM order EXCEPT SELECT DISTINCT client_id , district_id FROM loan
SELECT T1.client_id , T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'Eligible' AND T1.gender = 'M'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element != 'carcinogen' AND element != 'none' AND element = 'chlorine'
SELECT avg(T2.element) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "single-bonded"
SELECT avg(count(*) ) FROM molecule WHERE label = 'carcinogen' AND bond_type = 'single'
SELECT count(*) FROM atom WHERE element = "Na" AND label != "Carcinogenously active"
SELECT T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple-bond" INTERSECT SELECT T3.molecule_id FROM atom AS T3 JOIN molecule AS T4 ON T3.molecule_id = T4.molecule_id WHERE T4.label = "carcinogenic"
SELECT count(*) / (select count(*) from bond) * 100 FROM bond WHERE bond_type = "double-bond"
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id <= 100 AND label = 'carcinogenic'
SELECT DISTINCT molecule_id FROM atom WHERE element = 'C'
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "TR004_8_9"
SELECT element FROM bond WHERE bond_type = 'double'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "H" GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = "Cl"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T3.atom_id = T1.atom_id2 WHERE T2.label = 'non-carcinogenic'
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'non-carcinogenic') GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T1.atom_id = "TR004_8" INTERSECT SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T1.atom_id = "TR004_20")
SELECT label FROM molecule EXCEPT SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "tin"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "iodine" AND T2.bond_type = "single" INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "sulfur"
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'triple'
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR181"
SELECT count(*) , %s FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic' EXCEPT SELECT count(*) , %s FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic' AND T2.element = 'f'
SELECT count(*) * 100.0 / (SELECT count(*) FROM bond WHERE bond_type = 'triple' ) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = "TR000" ORDER BY element
SELECT atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE bond_id = 6 AND molecule_id = 26 AND T1.bond_id = 2_6 AND T1.label = 'TR001'
SELECT count(*) - count(*) FROM molecule WHERE label = 'carcinogenic' INTERSECT SELECT count(*) - count(*) FROM molecule WHERE label = 'not carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR000_2_5"
SELECT bond_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 2
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.label ORDER BY count(*) DESC LIMIT 5
SELECT count(*) / (SELECT count(*) FROM bond) * 100 FROM molecule WHERE label = "TR008"
SELECT count(*) * 100.0 / (SELECT sum(molecule_id) FROM molecule) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT sum(element) FROM atom WHERE element = 'H' AND molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR206')
SELECT bond_type FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000"
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "TR060"
SELECT bond_type , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR010" GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT T1.molecule FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "single" EXCEPT SELECT T3.molecule FROM molecule AS T3 JOIN connected AS T4 ON T3.molecule_id = T4.atom_id2 JOIN atom AS T5 ON T4.atom_id = T5.atom_id2 WHERE T3.label = "carcinogen" ORDER BY T1.molecule_id LIMIT 3
SELECT bond_id FROM bond WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR006') ORDER BY bond_type LIMIT 2
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 12 AND T2.bond_type = "atom" AND T2.molecule_id = 1009
SELECT count(*) FROM atom WHERE element = "br" AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = "carcinogenic")
SELECT bond_type , T3.atom_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.bond_id = 6 AND T1.bond_type = "TR">
SELECT T2.label , T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "TR001_10" AND T2.label = "Carcinogenic"
SELECT count(*) FROM bond WHERE bond_type = "triple"
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 19
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = "carcinogen" )
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carbon" AND T1.atom_id = 21 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carbon" AND T1.atom_id = 22 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carbon" AND T1.atom_id = 23 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carbon" AND T1.atom_id = 24 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carbon" AND T1.atom_id = 25
SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'P' INTERSECT SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'N'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(count(*) ) FROM atom WHERE element = 'I'
SELECT bond_type , bond_id FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE atom_id = 45)
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" AND bond_type = "triple bond"
SELECT element FROM atom WHERE atom_id = (SELECT atom_id FROM atom WHERE molecule_id , element = "TR144_8_19" )
SELECT molecule_id FROM bond GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "lead"
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single'
{"sql": "SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = (SELECT count(*) FROM atom AS T1
SELECT count(*) * 100.0 / count(*) FROM bond WHERE bond_type = 'single' AND element = 'carcinogenic'
SELECT sum(atom) FROM atom WHERE element = 'C' OR element = 'H'
SELECT atom_id FROM atom WHERE element = 'S'
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "Tin"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single'
SELECT sum(t1.element) FROM atom AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id JOIN molecule AS t3 ON t2.molecule_id = t3.molecule_id WHERE t1.element = 'P' OR t1.element = 'Br'
SELECT bond_id FROM bond WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT molecule_id FROM bond EXCEPT SELECT molecule_id FROM connected WHERE bond_type = 'carcinogen'
SELECT T1.element , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single' GROUP BY T1.element HAVING sum(count(*) * T1.element) = 100
SELECT label FROM molecule WHERE molecule_id = "TR000" OR molecule_id = "TR001" OR molecule_id = "TR002"
SELECT molecule_id FROM molecule WHERE label != 'carcinogen'
SELECT sum(t1.carcinogenic) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.molecule_id BETWEEN TR000 AND TR030
SELECT bond_type FROM bond WHERE molecule_id BETWEEN TR000 AND TR050
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT count(*) FROM atom WHERE element = "iodine"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Calcium" GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Cl' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'C'
SELECT molecule_id FROM atom WHERE element = 'C' INTERSECT SELECT molecule_id FROM bond WHERE bond_type = 'triple' EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) , avg(element) FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING sum(element) > 10)
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR001"
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T2.atom_id FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T3.bond_id JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.bond_type = "triple"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR000_1_2"
SELECT count(*) FROM bond WHERE bond_type = 'single' AND molecule_id NOT IN (SELECT molecule_id FROM bond WHERE bond_type = 'double' AND bond_type = 'covalent')
SELECT label FROM molecule WHERE bond_id = 'TR001_10_11'
SELECT bond_id , count(*) FROM bond WHERE bond_type = 'triple' GROUP BY bond_id HAVING count(*) > 1 INTERSECT SELECT bond_id , count(*) FROM bond WHERE bond_type = 'single' GROUP BY bond_id HAVING count(*) > 1
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'toxic' AND T1.atom_id = (SELECT atom_id FROM atom WHERE element = 'carcinogenic' GROUP BY atom_id ORDER BY count(*) DESC LIMIT 4)
SELECT count(*) , element FROM atom WHERE molecule_id = "TR006" GROUP BY element
SELECT DISTINCT T1.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element = "Ca" AND T3.label = "carcinogenic"
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "Carbon"
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = T2.atom_id2 AND T2.bond_type = "TR001_10_11"
SELECT count(*) * 3 / count(*) FROM bond WHERE bond_type = 'triple bond'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR047" AND T2.bond_type = "double bond"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "TR001_1" AND T2.label = "carcinogenic"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR151" AND T1.label LIKE "%carcinogenic%"
SELECT element FROM atom WHERE molecule_id = 151 AND element = 'toxic'
SELECT count(*) FROM compound WHERE label = 'carcinogenic';
SELECT atom_id FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = "carbon"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic"
SELECT bond_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' AND T2.label = 'carcinogenic'
SELECT T1.molecule_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR000_1_2" AND T1.element = "TR000_1"
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'carbon' AND molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'compound' )
SELECT count(*) , element FROM atom WHERE element = 'carcinogen' GROUP BY element
SELECT count(*) FROM molecule WHERE molecule_id = 'TR124' AND label = 'carcinogenic'
SELECT element FROM atom WHERE element = 'TR186'
SELECT bond_type FROM bond WHERE molecule_id = (SELECT molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = "TR007_4_19")
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "TR001_2_4")
SELECT count(*) , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T1.label = "TR006" AND T1.label = "carcinogenic"
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = "carcinogen" )
SELECT bond_type , T3.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T3.bond_id = T1.bond_id
SELECT T1.molecule_id , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = "TR000_2_3"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T3.atom_id = T1.atom_id WHERE T1.element = "Cl"
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" INTERSECT SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "carcinogenic"
SELECT count(*) FROM atom WHERE element != 'S' AND bond_type != 'double'
SELECT t3.label FROM bond AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id JOIN atom AS t3 ON t1.bond_id = t3.bond_id WHERE t1.bond_type = "carcinogenic" AND t2.label = "TR001_2_4"
SELECT count(*) FROM atom WHERE molecule_id = "TR001"
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" AND T2.label = "carcinogenic"
SELECT DISTINCT T1.molecule FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'c' EXCEPT SELECT DISTINCT T1.molecule FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'carcinogen'
SELECT count(*) / (SELECT count(*) FROM atom WHERE element = 'Chlorine') FROM atom
SELECT molecule_id FROM bond WHERE bond_id = "TR001_1_7"
SELECT count(*) FROM bond WHERE bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = "TR000_1" AND T1.atom_id2 = "TR000_2")
SELECT molecule FROM atom WHERE atom_id = "TR000_2" INTERSECT SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM molecule WHERE molecule_id = 'TR000' AND label = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T1.atom_id HAVING T1.element = 'H' INTERSECT SELECT count(*) FROM bond AS T3 JOIN connected AS T4 ON T3.bond_id = T4.bond_id GROUP BY T3.bond_type HAVING T3.bond_type = 'single'
SELECT count(*) FROM atom WHERE element = "N"
SELECT T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T1.element = 'Sulfur' AND T3.bond_type = "double bond"
SELECT molecule_id FROM atom GROUP BY molecule_id HAVING COUNT(*) > 5
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id WHERE T2.label = "TR024" AND T3.bond_type = "double"
SELECT T1.molecule_id , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY sum(T2.element) DESC LIMIT 1
SELECT count(*) , count(*) / (SELECT count(*) FROM molecule) FROM atom WHERE element = 'H' AND bond_type = 'triple'
SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR004' AND T2.bond_type = 'single'
SELECT count(*) FROM atom WHERE molecule_id = "TR008" AND element = "C"
SELECT element FROM atom WHERE atom_id = "TR004_7" EXCEPT SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = "carcinogenic")
SELECT count(*) FROM atom WHERE element = 'O' AND bond_type = 'double';
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple" EXCEPT SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "carcinogenic"
SELECT element , bond_type FROM bond WHERE molecule_id = 4001 INTERSECT SELECT element FROM atom WHERE molecule_id = 4001
SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT molecule_id FROM atom WHERE element = 'atom')
{"sql": "SELECT atom_id FROM atom WHERE element = \"carcinogen" AND element LIKE \"%o%\""}
SELECT name FROM cards WHERE hasFoil = 'yes' AND power = 'incredibly powerful'
SELECT name FROM cards WHERE isNonFoilOnly = 1 AND power != "powerful foil"
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE frameEffects = "2015" AND edhrecRank < 100;
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "gladiator" AND T1.rarity = "mythic"
SELECT T2.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.type = "cards" AND T1.hasAlternativeDeckLimit = "false"
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" AND T2.status = "legal" AND T1.power = "unknown"
SELECT T1.flavortext , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.uuid = T2.uuid WHERE T1.artist = "Stephen Daniel" AND T1.asciiName = "Ruling"
SELECT T2.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = 74
SELECT T1.name , T1.artist , T2.promoTypes FROM cards AS T1 JOIN printings AS T2 ON T1.id = T2.id GROUP BY T2.promoTypes ORDER BY count(*) DESC LIMIT 1
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.number = 29 AND T1.isAlternative = 1
SELECT name FROM foreign_data WHERE LANGUAGE = "Japanese"
SELECT count(*) / (SELECT count(*) FROM cards WHERE availability = 'Chinese Simplified') FROM cards WHERE availability = 'Chinese Simplified'
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "Italian"
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd" AND originalType = "card art"
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = "infinite";
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen";
{"sql": "SELECT originalType FROM cards WHERE name = 'Ancestor\'s Chosen'"}
SELECT flavorText FROM foreign_data AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN set_translations AS T3 ON T3.language = T1.language WHERE T2.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" INTERSECT SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText != ""
SELECT T2.flavorText FROM rulings AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.text = "Condemn"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.cardKingdomId WHERE T1.status = 'restricted' INTERSECT SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.isStarter = 1
SELECT status FROM legalities WHERE uuid = (SELECT id FROM cards WHERE name = "Cloudchaser Eagle")
SELECT TYPE FROM cards WHERE name = "Benalish Knight";
SELECT DISTINCT T1.rule FROM legalities AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN cards AS T3 ON T3.uuid = T2.uuid WHERE T3.name = "Benalish Knight"
SELECT DISTINCT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE borderColor != "border") FROM cards GROUP BY cardKingdomId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallIllustrationId = T2.scryfallIllustrationId WHERE T2.language = "German"
SELECT count(*) FROM cards WHERE isTextless = 'true' AND flavortext = 'borderless' AND flavortext IN ( 'Russian')
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE isStorySpotlight = 'Y' AND language = 'French') FROM foreign_data WHERE flavortext = 'French'
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = "Aaron Boyd"
SELECT count(*) FROM cards WHERE colorIndicator = 'black' AND isOnlineOnly = 'yes' AND cardKingdomFoilId = 'mtgo'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE cardKingdomFoilId = "flying"
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND supertypes != "Angel"
SELECT cardKingdomFoilId FROM cards WHERE power = "incredibly powerful" INTERSECT SELECT cardKingdomFoilId FROM cards WHERE cardKingdomFoilId != "none"
SELECT id FROM cards WHERE duelDeck = 'a'
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "chs"
SELECT name FROM cards WHERE availability = 'paper' AND language = 'Japanese'
SELECT count(*) FROM cards WHERE borderColor = "white" AND colorIndicator = "border"
SELECT T1.uuid , T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = 'legacy'
SELECT T2.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Beacon of Immortality"
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = "future"
SELECT colorIndicator , colorIdentity FROM cards WHERE setCode = "OWG"
SELECT T3.flavorText , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN sets AS T3 ON T3.code = T1.setCode WHERE T1.convertedManaCost = 5 AND T3.setsize = 10
SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T1.code = T3.code WHERE originalType = "Creature" AND T1.originalText = "Elf" INTERSECT SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T1.code = T3.code WHERE originalType = "Creature" AND T1.originalText = "Dwarf"
SELECT DISTINCT colorIndicator , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN foreign_data AS T3 ON T2.language = T3.language WHERE T1.colorIndicator = "Black" AND T2.translation != "null"
SELECT T2.name FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId ORDER BY T1.date LIMIT 3
SELECT count(*) FROM cards WHERE hasnonfoil = 'true' AND cardkingdomfoilid NOT IN (SELECT cardkingdomfoilid FROM cards WHERE power = 'power') AND artist = "John Avon"
SELECT count(*) FROM cards WHERE colorindicator = 'white' AND power = 'yes' AND borderColor = 'border'
SELECT count(*) FROM cards WHERE printings = "mtgo" AND originaltype = "card" AND artist = "UDON" INTERSECT SELECT count(*) FROM cards WHERE printings = "mtgo" AND originaltype = "card" AND artist = "UDON" AND hand < -1
SELECT count(*) FROM cards WHERE frameversion = "1993" AND hasContentWarning = 1
SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "black" AND availability = "paper" AND availability = "mtgo"
SELECT sum(convertedManaCost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT TYPE FROM cards WHERE cardKingdomFoilId = "arena"
SELECT setcode FROM sets AS T1 JOIN cardTranslations AS T2 ON T1.code = T2.setCode WHERE T2.language = "Spanish"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 1) FROM cards WHERE frameEffects = "legendary" AND variations != "offline"
SELECT count(*) FROM cards WHERE isTextless = 'yes'
SELECT count(*) , flavortext FROM foreign_data WHERE LANGUAGE = "Spanish" ORDER BY flavortext
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.number = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN foreign_data AS T3 ON T2.setcode = T3.code WHERE T3.language = "português" AND T3.flavortext = "brasil" AND T1.block = "commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'legal'
SELECT DISTINCT TYPE FROM cards WHERE TYPE LIKE '%german%';
SELECT count(*) FROM cards WHERE power = "triggered" AND (SELECT count(*) FROM cards WHERE power = "triggered" ) != 0
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN foreign_data AS T3 ON T3.uuid = T2.text WHERE T2.text != "This is a triggered mana ability." AND T1.isTextless != 1
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper" AND promoTypes = "pauper";
SELECT artist FROM cards WHERE text = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "French" AND T2.type = "Creature" AND T2.layout = "normal" AND T2.borderColor = "black" AND T2.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.date = "01/02/2007" AND T1.rarity = "print"
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN cards AS T3 ON T1.baseSetSize = T2.setCode WHERE T1.block = "Ravnica" AND T3.id IN (SELECT T1.id FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T2.setCode = 180)
SELECT count(*) * 100 / count(*) FROM cards WHERE cardKingdomFoilId = "commander" INTERSECT SELECT count(*) * 100 / count(*) FROM cards WHERE status = "legal" EXCEPT SELECT count(*) * 100 / count(*) FROM cards WHERE hasContentWarning
SELECT count(*) FROM cards WHERE power = "" AND flavortext = "French"
SELECT count(*) * 100.0 / count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN foreign_data AS T3 ON T3.language = T2.language WHERE T3.multiverseid = T1.multiverseid AND T3.name = "Expansion" INTERSECT SELECT count(*) * 100.0 / count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN foreign_data AS T3 ON T3.language = T2.language WHERE T3.multiverseid = T1.multiverseid AND T3.name = "Japanese"
SELECT printings FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'Daren Bader'
SELECT count(*) FROM cards WHERE edhrecrank > 12000 AND borderColor = "none"
SELECT count(*) FROM cards WHERE isOversized = 'yes' AND isReprint = 'yes' AND promoTypes = 'Promotion'
SELECT faceName FROM cards WHERE promoTypes = 'Promotion' AND mtgArenaId = 'Arena' ORDER BY count(*) DESC LIMIT 3;
SELECT flavortext FROM foreign_data WHERE multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId ASC LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT number FROM cards WHERE supertypes = "Angel" INTERSECT SELECT number FROM cards WHERE supertypes = "Wizard" AND count(*) = 1
SELECT name FROM sets WHERE mcmname != 'Magic: The Gathering Online' ORDER BY name
SELECT T1.language FROM foreign_data AS T1 JOIN sets AS T2 ON T1.setcode = T2.code JOIN cards AS T3 ON T3.id = T2.mcmid WHERE T2.name = "Archenemy on the magic card market" AND T3.cardKingdomFoilId = "ARC"
SELECT T1.name , T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 5
SELECT T2.language , T2.promoTypes FROM sets AS T1 JOIN foreign_data AS T2 ON T1.code = T2.setcode WHERE T1.id = 206
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Italian" INTERSECT SELECT id FROM cards WHERE availability = 'set' AND T1.faceName LIKE '%Shadowmoor%' ORDER BY id
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallId = T2.cardKingdomFoilId JOIN sets AS T3 ON T3.id = T2.multiverseid WHERE T2.flavorText = 'JAPAN' AND T3.type = 'foil' AND T3.code != 'X'
SELECT name FROM sets WHERE TYPE = "card" ORDER BY totalSetSize DESC LIMIT 1;
SELECT count(*) FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.isOnlineOnly JOIN sets AS T3 ON T3.code = T2.code WHERE T1.language = "中文简化" AND T2.isOnlineOnly = 1
SELECT count(*) FROM sets WHERE isOnlineOnly = 'false' AND isNonFoilOnly = 'true' AND name LIKE "%Japanese%"
SELECT id FROM cards WHERE colorIndicator = "black";
SELECT id FROM cards WHERE frameEffects = "extendedart"
SELECT name FROM cards WHERE colorindicator = 'fullart' AND borderColor = 'black';
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 174 AND T2.language = "english"
SELECT name FROM sets WHERE code = "ALL"
SELECT flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "A Pedra Fellwar"
SELECT setCode FROM sets WHERE releaseDate = '07/13/2007'
SELECT T1.baseSetSize , T1.code FROM sets AS T1 JOIN cards AS T2 ON T1.mcmId = T2.mcmId WHERE T1.block = "Masques" INTERSECT SELECT T1.baseSetSize , T1.code FROM sets AS T1 JOIN cards AS T2 ON T1.mcmId = T2.mcmId WHERE T1.block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT T2.flavorText , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN cards AS T3 ON T1.cardKingdomId = T3.cardKingdomId WHERE T1.watermark = 'boros'
SELECT T1.language , T1.flavorText , T2.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colorIndicator = 'watermark'
SELECT count(*) , percent FROM cards WHERE convertedManaCost = 10 AND setCode = "Abyssal Horror"
SELECT code FROM sets WHERE TYPE = 'expansion commander'
SELECT T2.flavorText , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN cards AS T3 ON T3.id = T2.cardKingdomId WHERE T1.watermark = "abzan"
SELECT T2.flavortext , T1.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'azorius'
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power = "incredibly powerful";
SELECT count(*) FROM cards WHERE hand > 0
SELECT DISTINCT flavorText FROM foreign_data
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT faceName FROM cards WHERE isPromo = 'yes' GROUP BY faceName HAVING count(*) >= 2
SELECT DISTINCT originalType FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(*) FROM cards WHERE availability = 'available' AND borderColor = 'black' AND printings = 'arena' INTERSECT SELECT count(*) FROM cards WHERE availability = 'available' AND borderColor = 'black' AND printings = 'mtgo'
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper"
SELECT artist FROM cards WHERE promoTypes = "starter" AND promoName = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE originalReleaseDate LIKE "2003%" ORDER BY convertedManaCost DESC LIMIT 3
SELECT T1.flavorName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code JOIN set_translations AS T3 ON T3.setCode = T2.code WHERE T3.flavorText = "Ancestor's Chosen"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Angel of Mercy"
SELECT name FROM cards WHERE setcode = "Hauptset Zehnte Edition"
{"sql": "SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN foreign_data AS T3 ON T3.uuid = T2.uuid WHERE T2.flavorText = 'Ancestor\'s Chosen AND T3.language = \"ko\""}
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition" AND artist = "Adam Rex"
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Eighth Edition"
SELECT count(*) FROM cards WHERE name = "Angel of Mercy" AND isOnlineOnly = 1
SELECT originalReleaseDate FROM cards WHERE name = "Ancestor's Chosen"
SELECT T2.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = "Hauptset Zehnte Edition";
SELECT count(*) FROM sets WHERE block = "Ice Age" INTERSECT SELECT count(*) FROM set_translations WHERE LANGUAGE = "Italian"
SELECT count(*) FROM cards WHERE isForeignOnly = 1 AND originalText != 'Adarkar Valkyrie'
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Italian" INTERSECT SELECT count(*) FROM sets AS T3 WHERE T3.baseSetSize < 100
SELECT count(*) FROM cards WHERE borderColor = "Black" AND setCode = "Coldsnap"
SELECT name FROM cards WHERE cardKingdomFoilId = 'Coldsnap' ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.setCode WHERE T2.name = "Coldsnap" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Jeremy Jarvis" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Aaron Miller" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Chippy"
SELECT number FROM cards WHERE setcode = "Coldsnap" AND number = 4
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power != "Unknown" AND setCode = "Coldsnap"
SELECT flavorText FROM cards WHERE name = "Ancestor's Chosen" AND language = "Italian"
SELECT DISTINCT language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = "Ancestor's Chosen"
SELECT flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.cardKingdomId WHERE T1.cardKingdomFoilId = "Ancestor's Chosen" AND T2.language = "de"
SELECT T2.flavortext FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "Coldsnap" AND T2.language = "Italian"
SELECT T2.flavorName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText JOIN sets AS T3 ON T3.code = T1.setCode ORDER BY convertedManaCost DESC LIMIT 1 WHERE T1.cardKingdomFoilId = "Coldsnap" AND T2.language = "Italian"
SELECT T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "Reminisce"
SELECT count(*) , percent FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Incredibly Powerful' AND setcode = 'Coldsnap') FROM cards WHERE cardKingdomFoilId = 'Incredibly Powerful'
SELECT code FROM sets WHERE releaseDate LIKE "2017/%" AND date LIKE "14/%"
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmId FROM sets WHERE code = 'SS2'
SELECT T1.mcmName FROM sets AS T1 JOIN cards AS T2 ON T1.mcmId = T2.mcmId WHERE T1.releaseDate LIKE "2017/%"
SELECT T2.expansion FROM sets AS T1 JOIN foreign_data AS T2 ON T1.code = T2.setCode WHERE T1.name = "From the Vault: Lore";
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T2.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId WHERE T2.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.number WHERE T2.name = "Rinascita di Alara"
SELECT T1.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.name WHERE T2.name = "Huitième édition"
SELECT T1.flavorName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code JOIN set_translations AS T3 ON T3.setCode = T1.id WHERE T3.flavorText = "Tendo Ice Bridge" AND T1.language = "French"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Tenth Edition"
SELECT T2.name FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.code WHERE T1.name = 'Fellwar Stone' AND T1.cardKingdomFoilId = T2.isFoilOnly
SELECT name FROM cards WHERE setcode = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1
SELECT releaseDate FROM sets WHERE name = "Ola de frío"
SELECT T1.supertypes FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.name = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE convertedManaCost = '3' AND name = 'World Championship Decks 2004'
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Mirrodin" AND T1.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomFoilId = T2.mtgoFoilId JOIN set_translations AS T3 ON T3.code = T2.name WHERE T3.language = "Japanese" AND T1.hasNonFoil = 1
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 'yes' ) FROM cards WHERE name = 'Brazil' AND flavorText = 'Portuguese'
SELECT DISTINCT printings FROM cards WHERE id NOT IN ( SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.flavorText = 'text' AND T2.text = 'Aleksi Briclot')
SELECT id FROM cards GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.convertedManaCost > T2.convertedManaCost GROUP BY T1.id HAVING count(*) = 1 UNION SELECT T1.artist FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.convertedManaCost = T2.convertedManaCost GROUP BY T1.id HAVING count(*) > 1 ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE power = "Incredible" AND isFoilOnly = 1 GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = "unknown" AND cardKingdomFoilId = "none" AND duelDeck = "A"
SELECT T1.id FROM cards AS T1 JOIN sets AS T2 ON T1.mtgId = T2.mcmIdExtras WHERE T2.type = "Commander" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM cards ORDER BY convertedManaCost LIMIT 10;
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "mythical" ORDER BY T1.releaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T2.language = "French" AND T1.artist = "Volkan Baçım"
SELECT count(*) FROM cards WHERE rarity = "rare" AND legalities[id] = cards.uuid WHERE legalities.status = "legal"
SELECT T1.format , T1.name FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'Banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT flavorText FROM foreign_data WHERE setCode = "Battlebond"
SELECT T1.artist , T1.faceName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallIllustrationId = T2.id GROUP BY T1.artist ORDER BY count(*) ASC LIMIT 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.id = T2.scryfallIllustrationId JOIN foreign_data AS T3 ON T3.uuid = T2.scryfallId WHERE T3.format = 'legacy' AND T2.flavorName = 'D. Alexander Gregory' AND T1.status = 'sensitive' OR T2.keywords = 'Wizards of the Coast' AND T2.frameVersion = '1997'
SELECT edhrecRank , FORMAT FROM cards WHERE edhrecRank = 1
SELECT avg(T2.number) , T1.flavorText FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T2.releaseDate BETWEEN '01/01/2012' AND '12/31/2015' GROUP BY T1.flavorText
SELECT artist FROM cards WHERE availability = 'isOversized' AND borderColor = 'black' INTERSECT SELECT artist FROM cards WHERE availability = 'isTextless' AND borderColor = 'black'
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "old-school" OR T2.status = "banned"
SELECT count(*) FROM cards WHERE availability = 'paper' AND artist = "Matthew D. Wilson"
SELECT T2.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Hour of Devastation'
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = 'Japanese') AND code NOT IN (SELECT setcode FROM set_translations WHERE language = 'Korean')
{"sql": "SELECT DISTINCT T1.frameEffects , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.parentCode JOIN cards AS T4 ON T4.manaCost = T3.manaCost JOIN cards AS T5 ON T5.manaCost = T4.manaCost JOIN foreign_data AS T6 ON T6.uuid = T5.uuid JOIN legalities AS T7 ON T7.uuid = T6.uuid WHERE T7.status = 'Banned' INTERSECT SELECT T1.frameEffects , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.parentCode JOIN cards AS T4 ON T4.manaCost = T3.manaCost JOIN foreign_data AS T5 ON T5.manaCost = T4.manaCost JOIN foreign_data AS T6 ON T6.uuid = T5.uuid JOIN legalities AS T7 ON T7.uuid = T6.uuid AND T7.status = 'A' AND T6.format = 'T' AND T6.isFoilOnly = 1 AND T6.isNonFoilOnly = 0 AND T6.isReprint = 0 AND T6.isPromo = 0 AND T6.isTextless = 1 AND T6.isTimeshifted = 1 AND T6.isOnlineOnly = 1 AND T6.isStarter = 0 AND T6.isAlternative = 0 AND T6.isReserved = 0 AND T6.isReserved = 1 AND T6.isNonFoilOnly = 1 AND T6.isReprint = 1 AND T6.isPromo = 1 AND T6.isTextless = 1 AND T6.isTimeshifted = 1 AND T6.isOnlineOnly = 1 AND T6.isStarter = 0 AND T6.isAlternative = 0 AND T6.isReserved = 1 AND T6.isNonFoilOnly = 1 AND T6.isReprint = 1 AND T6.isPromo = 1 AND T6.isTextless = 1 AND T6.isTimeshifted = 1 AND T6.isOnlineOnly = 1 AND T6.isStarter = 0 AND T6.isAlternative = 0 AND T6.isReserved = 1 AND T6.isNonFoilOnly = 1 AND T6.isReprint = 1 AND T6.isPromo = 1 AND T6.isTextless = 1 AND T6.isTimeshifted = 1 AND T6.isOnlineOnly = 1 AND T6.isStarter = 0 AND T6.isAlternative = 0 AND T6.isReserved = 1 AND T6.isNonFoilOnly = 1 AND T6.isReprint = 1 AND T6.isPromo = 1 AND T6.isTextless = 1 AND T6.isTimeshifted = 1 AND T6.isOnlineOnly = 1 AND T6
SELECT DisplayName FROM users WHERE Reputation > (SELECT Reputation FROM users WHERE DisplayName = "Harlan") UNION SELECT DisplayName FROM users WHERE DisplayName = "Jarrod Dixon"
SELECT T1.DisplayName FROM users AS T1 JOIN users AS T2 ON T1.AccountId = T2.AccountId WHERE T1.CreationDate LIKE "2011%"
SELECT count(*) FROM users WHERE lastaccessdate > '2014-09-01'
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.UserId = T2.OwnerUserId ORDER BY T2.ViewCount DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.AccountId WHERE T1.voteTypeId = "Up" AND T2.upVotes > 100 INTERSECT SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.AccountId WHERE T1.voteTypeId = "Down" AND T2.downVotes > 100
SELECT count(*) FROM users WHERE accountid = (SELECT T1.AccountId FROM users AS T1 JOIN votes AS T2 ON T1.UserId = T2.UserId WHERE T2.ViewCount > 10 AND T1.creationdate > 2013)
SELECT AnswerCount FROM posts WHERE OwnerUserId = "csgillespie";
SELECT title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.UserId = "csgillespie"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE owneruserId = (SELECT T1.OwnerUserId FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.displayname = 'Csgilliespie' GROUP BY T1.OwnerUserId ORDER BY count(*) DESC LIMIT 1)
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY SUM(T2.ViewCount) DESC LIMIT 1
SELECT sum(commentcount) FROM posts AS T1 JOIN comments AS T2 ON T1.idcomments = T2.postid WHERE T1.owneruserid = "csgillespie"
SELECT max(AnswerCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID WHERE T2.OwnerUserId = "Csgillis"
SELECT T1.LastEditorDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Title = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN tags AS T2 ON T1.tags_id = T2.id WHERE T1.owneruserid = (SELECT T1.owneruserid FROM posts AS T1 JOIN badges AS T2 ON T1.acceptedanswerid = T2.id WHERE T2.name = 'Csgillispie' ) AND T1.posttypeid = 1 AND T1.parentid = 1
SELECT T1.UserDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.title = 'well-finished'
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.reputation > 18
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T2.Body FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.TagName = "bayesian"
SELECT T2.Body FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id GROUP BY T1.Tags ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Csgillispie"
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgillis'
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgillispie' AND T1.date = 2011
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T1.score) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.UserId = "csgillespie"
SELECT avg(T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.views > 200
SELECT count(*) * 100.0 / (SELECT count(*) FROM posts WHERE score > 5 AND owneruserId = users.age > 18) FROM users AS users2 JOIN posts AS posts ON posts.owneruserid = users.id
SELECT sum(T2.ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID WHERE T1.UserId = 58 AND T1.CreationDate = "2010-07-19"
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival";
SELECT T1.title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid ORDER BY T2.score DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE CreationDate = "2014/4/23 20:29:39")
SELECT Text FROM comments WHERE PostId = 107829
SELECT T1.Text FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid WHERE T2.comment = '9:08:18' AND T2.creationdate = '2013/7/12'
SELECT T2.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 65041
SELECT AnswerCount FROM posts WHERE OwnerDisplayName = "Tiago Pasqualini"
SELECT T2.DisplayName FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.VoteTypeId = 1 AND T1.Id = 6347
SELECT sum(T2.ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.PostTypeId = "data visualization"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "DatEpicCoderGuyWhoPrograms"
SELECT FavoriteCount - DownVotes , AnswerCount - CommentCount FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = (SELECT UserId FROM votes GROUP BY UserId ORDER BY count(*) DESC LIMIT 1)
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T2.DisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion'
SELECT T1.Reputation , T2.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing'
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost'
SELECT T1.UserId FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Necromancer' LIMIT 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T2.userdisplayname = T3.displayname WHERE T3.UserId = (SELECT T3.UserId FROM users AS T3 JOIN badges AS T4 ON T3.id = T4.userid WHERE T4.name = 'Vebjorn Ljosa')
SELECT sum(T1.score) , T2.websiteurl FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T1.lasteditoruserid = (SELECT T1.lasteditoruserid FROM users AS T1 GROUP BY T1.lasteditoruserid ORDER BY sum(T1.score) DESC LIMIT 1)
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation'
SELECT sum(T2.BountyAmount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'data'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.UserId = T2.OwnerUserId WHERE T2.title LIKE '%variance%' AND T2.score = 50
SELECT T1.Title , T1.CommentCount , T1.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.tags = T2.tagname WHERE T2.tagname = 'humor' GROUP BY T1.Tags
SELECT count(*) FROM comments WHERE userid = 13
SELECT UserId FROM users GROUP BY UserId ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY VIEWCOUNT LIMIT 1
SELECT count(DISTINCT users.id) FROM badges WHERE date = 2011 AND name = "supporter";
SELECT count(DISTINCT user_id) FROM badges WHERE count(*) > 5
SELECT count(DISTINCT T1.id) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = 'New York' AND T2.name = 'Teacher' INTERSECT SELECT count(DISTINCT T1.id) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.id = T2.user_id AND T2.name = 'Supporter'
SELECT T2.Reputation , T1.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 1
SELECT T1.DisplayName FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid GROUP BY T1.id HAVING count(*) >= 1000
SELECT T1.Name , T1.UserId FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.UserId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = "India" AND T2.name = "Teacher";
SELECT count(*) - count(*) / count(*) * 100 FROM badges WHERE date LIKE "2010-%" INTERSECT SELECT count(*) - count(*) * 100 FROM badges WHERE date LIKE "2011-%"
SELECT T1.PostHistoryTypeId , count(DISTINCT T2.UserId) FROM postHistory AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId GROUP BY T2.UserId HAVING T1.PostId = 3720
SELECT T1.Title , T2.Score FROM posts AS T1 JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.PostId = 61217 GROUP BY T2.PostId ORDER BY T2.Score DESC LIMIT 1
SELECT T1.Score , T2.LinkTypeId FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.PostId WHERE T2.PostId = 395
SELECT T1.PostId , T2.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 60
SELECT sum(FavoriteCount) FROM posts WHERE CreationDate LIKE "%2011%" AND OwnerUserId = 686
SELECT avg(UpVotes) , avg(Age) FROM users WHERE AnswerCount > 10
SELECT count(DISTINCT userid) FROM badges WHERE name = "Announcer"
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.creationdate LIKE "7/19/2010 7:39:08:PM"
SELECT count(*) FROM comments WHERE text > 0
SELECT Text FROM comments WHERE CreationDate LIKE "7/19/2010 7:25:47 PM"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT T2.Reputation FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester , NY"
SELECT count(*) , T1.id FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id GROUP BY T1.user_id HAVING T1.name = "Teacher"
SELECT avg(age) / 10 FROM users WHERE userid IN (SELECT userid FROM badges WHERE name = "Organizer")
SELECT T1.Score FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "2010-07-19 19:56:54"
SELECT Text FROM comments WHERE CreationDate LIKE "2010-07-19 19:37:33"
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna, Austria"
SELECT count(DISTINCT users.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = "Supporter"
SELECT count(*) FROM badges WHERE Date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation LIMIT 1
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Sharpie"
SELECT count(DISTINCT users.age) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = "Supporter"
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.id = 30
SELECT count(*) FROM users WHERE LOCATION = 'New York'
SELECT count(*) FROM votes WHERE creationdate LIKE "2010%"
SELECT count(*) FROM users WHERE age > 25
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT count(*) , YEAR FROM votes WHERE VoteTypeId = "2" GROUP BY YEAR HAVING YEAR = 2010 OR YEAR = 2011
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2 DisplayName = "Daniel Vassallo"
SELECT sum(T1.Views) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "Harlan"
SELECT postid FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.voteTypeId = "up" GROUP BY T1.postid ORDER BY count(*) DESC LIMIT 1
SELECT max(viewcount) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2 DisplayName = "Harvey Motulsky" INTERSECT SELECT max(viewcount) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2 DisplayName = "Noah Snyder"
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID WHERE T2.OwnerUserId = T3.OwnerUserId AND T3.OwnerDisplayName = 'Matt Parker' AND T3.FavoriteCount > 4
SELECT count(*) FROM comments AS T1 JOIN votes AS T2 ON T1.PostId = T2.PostId JOIN users AS T3 ON T3.Id = T2.UserId WHERE T3.DisplayName = "Neil McGuigan" AND T1.Score < 0
SELECT DISTINCT T2.Tags FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = "Mark Meckes" AND T2.Comment = "false"
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Organizer"
SELECT count(*) / (SELECT count(*) FROM posts) FROM posts WHERE tags = "R"
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = "Mornington" INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = "Amos"
SELECT count(DISTINCT T1.userid) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = 2014 AND T1.name = 'Commentator'
SELECT count(*) FROM posts WHERE CreationDate LIKE "2010-07-%"
SELECT DisplayName , Age FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT lasteditdate , lastedituserid FROM posts WHERE title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text != "" AND score != 1;
SELECT T2.Title , T3.UserDisplayName FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID JOIN users AS T3 ON T1.UserId = T3.ID WHERE T1.Score > 0
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = "North Pole" AND T1.date = 2011
SELECT T1.OwnerDisplayName , T4 WebsiteUrl FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId JOIN postlinks AS T3 ON T3.PostId = T2.PostId JOIN comments AS T4 ON T4.PostId = T2.PostId
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T2.LastAccessDate , T2.Location FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Outlier"
SELECT T2.Title FROM postLinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T1.Text = "How to tell if something happened in a data set which monitors a value over time"
SELECT T1.Id , T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Samuel" AND T1.Date = 2013
SELECT OwnerDisplayName FROM posts GROUP BY OwnerDisplayName ORDER BY views DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Tags = 'hypothesis-testing'
SELECT T2.Title , T1.LinkTypeId FROM postlinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T2.Title = "What are principal component scores"
SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId ORDER BY T2.score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.ID = T2.UserId WHERE T2.BountyAmount = (SELECT max(BountyAmount) FROM votes) AND T2.VoteTypeId = 8;
SELECT title FROM posts ORDER BY score DESC LIMIT 5
SELECT count(*) FROM tags AS T1 JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T2.viewcount BETWEEN 5000 AND 7000
SELECT OWNERUSERID FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM votes WHERE creationdate = 2011 AND bountyamount = 50
SELECT AccountId FROM users ORDER BY Age DESC LIMIT 1
SELECT sum(Score) FROM comments WHERE CreationDate = "2010-07-19";
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.AnswerCount <= 2 AND T1.creationdate LIKE "%2010%" GROUP BY T1.LinkTypeId
SELECT PostId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID WHERE T1.UserId = 1465 GROUP BY T2.ID ORDER BY SUM(T1.BountyAmount) DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 JOIN postLinks AS T2 ON T1.id = T2.postid ORDER BY CreationDate DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT T1.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID WHERE T2.Tags = "chl" ORDER BY T1.CreationDate ASC LIMIT 1
SELECT min(T1.CreationDate) FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userdisplayname
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Autobiographer" ORDER BY T1.Date LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.location = 'United Kingdom' AND FavoriteCount >= 4
SELECT avg(T1.UpVotes) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.age = (SELECT max(age) FROM users)
SELECT OwnerDisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 INTERSECT SELECT count(*) FROM posts WHERE viewcount > 1000
SELECT DisplayName FROM users WHERE Age = "Adult"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Jay Stevens" AND T1.creaiondate LIKE "2010%"
SELECT T1.Id , T1.Title FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2 DisplayName = "Harvey Motulsky" ORDER BY T1.ViewCount DESC LIMIT 1
SELECT PostId , Title FROM posts ORDER BY Score DESC LIMIT 1
SELECT avg(T1.score) FROM posts AS T1 JOIN posthistory AS T2 ON T1.postid = T2.postid JOIN users AS T3 ON T2.useridd = T3.id WHERE T3.userdisplayname = 'Stephen Turner'
SELECT T1.UserDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.CreaionDate LIKE "2011%" AND T2.ViewCount > 20000
SELECT postid , ownerdisplayname FROM posts WHERE createddate = "2010-01-01" ORDER BY score DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 1000 AND T2.creationdate = 2011
SELECT avg(age) FROM users WHERE age < 18
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid WHERE T1.title = "Computer Game Datasets" ORDER BY T2.creationdate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T2.Score DESC LIMIT 1
SELECT count(*) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.viewcount > 35000 EXCEPT SELECT count(*) FROM comments AS T2 JOIN posts AS T1 ON T1.id = T2.postid
SELECT T2.LastEditDate , T2.LastEditorDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.PostId = 183
SELECT T1.date FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Emmett" ORDER BY T1.date DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.AccountId WHERE T1.UpVotes > 5000
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Zolomon' AND T1.date = (SELECT min(date) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Zolomon' )
SELECT count(*) , commentcount FROM posts WHERE owneruserId = (SELECT DISTINCT userid FROM posthistory ORDER BY creationdate DESC LIMIT 1)
SELECT T1.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = (SELECT PostId FROM posts WHERE Title = 'Analysing wind data with R') ORDER BY T1.CreationDate DESC LIMIT 10;
SELECT count(DISTINCT UserId) FROM badges WHERE Name = 'Citizen Patrol'
SELECT count(*) FROM tags WHERE tagname = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT T1.CommentCount , T1.AnswerCount FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE accountid = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T1.OwnerDisplayName , T1.score FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId ORDER BY T2.score DESC LIMIT 1
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.ID = T2.UserId WHERE T2.Text = "fine, you win : )"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.PostTypeId = "linear regression"
SELECT max(T2.score) , T1.text FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.viewcount BETWEEN 100 AND 150 GROUP BY T1.postid ORDER BY T1.score DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.user_id WHERE T1.websiteurl = 'https://example.com'
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.ID WHERE T1.Score = 0 AND T2.ViewCount < 5
SELECT count(*) FROM comments WHERE score = 0 GROUP BY postid
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.score < 0 AND T2.age = 40
SELECT T1.PostId , COUNT(*) FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = "Group differences on a five point Likert item" GROUP BY T1.PostId
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T2.text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T1.UserDisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.score BETWEEN 1 AND 5 GROUP BY T2.UserId HAVING T2.downvotes = 0
SELECT count(*) * 100.0 / (SELECT count(*) FROM comments WHERE score BETWEEN 5 AND 10) FROM users WHERE upvotes = 0
SELECT power_name FROM superpower WHERE power_name LIKE '%3-D%' LIMIT 3
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superhero WHERE power_name = "Super Strength" AND height_cm > 200
SELECT t1.full_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.hero_id GROUP BY t2.power_name HAVING count(*) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = "blue"
SELECT skin_colour_id FROM superhero WHERE superhero_name = "Apocalypse"
SELECT count(*) FROM superhero WHERE eye_colour_id IN (SELECT T1.eye_colour_id FROM superhero AS T1 JOIN superpower AS T2 ON T1.gender_id = T2.power_id WHERE T1.superpower = "Agility")
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "blond";
SELECT count(*) FROM superhero WHERE publisher_id IN (SELECT publisher_name FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE publisher_id = "Marvel Comics" ORDER BY height_cm DESC
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = "Sauron"
SELECT superhero_name FROM superhero WHERE publisher_id = 'Marvel Comics' GROUP BY eye_colour_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength'
SELECT count(*) FROM superhero WHERE publisher_id = 2
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = "gold" AND race_id = "Marvel"
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = "blond"
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT race FROM superhero WHERE superhero_name = "Copycat"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.hero_id WHERE t2.power_name = 'death touch'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND weight_kg = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = "vampire"
SELECT count(*) , T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender_id = "male" OR T1.gender_id = "female" OR T1.publisher_name = "Marvel Comics" INTERSECT SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.gender_id = "male" OR T1.gender_id = "female" OR T1.publisher_name = "Marvel Comics" OR T1.power_name = "self-interest" OR T1.power_name = "moral code" GROUP BY T1.superhero_name HAVING count(*) > 1
SELECT T1.publisher_name , COUNT(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_id = "DC" INTERSECT SELECT T1.publisher_name , COUNT(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_id = "Marvel Comics" GROUP BY T1.publisher_name ORDER BY count(*) DESC LIMIT 1
SELECT publisher_id FROM superhero WHERE superhero_name = "Star Trek"
SELECT avg(attribute_value) FROM hero_attribute
SELECT count(*) FROM superhero WHERE full_name = "null"
SELECT T1.eye_colour FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.hero_id IN (SELECT T3.power_id FROM hero_power AS T3 ON T3.hero_id IN (SELECT T1.id FROM superhero AS T1 JOIN hero_power AS T2 ON T2.hero_id = T1.id WHERE T1.superhero_name = "Deathlok") GROUP BY T3.power_id)
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1 AND T3.superpower = T1.power_name GROUP BY T1.power_name ORDER BY count(*) = 5
SELECT superhero_name FROM superhero
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id != "male" "female"
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.id = 56
SELECT full_name FROM superhero WHERE gender_id = 1 AND superhero_name = "Demi-God"
SELECT count(*) FROM superhero WHERE gender_id = 1 AND full_name LIKE "%bad%"
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185;
SELECT eye_colour_id FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT COUNT(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_id IN (SELECT publisher_id FROM superhero WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE gender = 'male' AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT t2.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id GROUP BY t1.power_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Abomination"
SELECT T3.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.id = 1
SELECT count(DISTINCT hero_id) FROM hero_power WHERE power_name = 'stealth'
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = 'strength' ORDER BY t3.attribute_name DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE race_id NOT IN ( (SELECT race_id FROM race WHERE race = 'human') , (SELECT race_id FROM race WHERE race = 'dragon') , (SELECT race_id FROM race WHERE race = 'unicorn') , (SELECT race_id FROM race WHERE race = 'giant') , (SELECT race_id FROM race WHERE race = 'alien') , (SELECT race_id FROM race WHERE race = 'unknown') )
SELECT count(*) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Dark Horse Comics')
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id JOIN publisher AS t4 ON t4.id = t3.publisher_id WHERE t4.publisher_name = 'Dark Horse Comics' ORDER BY t1.full_name DESC LIMIT 1
SELECT T1.eye_colour FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Fly'
SELECT T1.eye_colour , T1.hair_colour , T1.skin_colour FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics" AND T1.gender = "Female"
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE eye_colour_id = "green") AND T1.hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE hair_colour_id = "green") AND T1.skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE skin_colour_id = "green")
SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_name = T2.power_name WHERE T2.power_name = "A-Bomb"
SELECT count(*) / (SELECT count(*) FROM superhero WHERE gender_id = "female") * 100 FROM superhero WHERE gender_id = "female" AND skin_colour_id = "blue"
SELECT full_name , race FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT gender FROM superhero WHERE id = 13
SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE power_name = 'adapt'
SELECT count(*) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 20090113
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.superhero_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = 100
{"sql": "SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour
SELECT eye_colour_id FROM superhero WHERE race_id = "gold"
SELECT full_name FROM superhero WHERE race = "vampire"
SELECT T1.superhero_name FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = "neutral"
SELECT count(*) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute)
SELECT race , alignment FROM superhero WHERE full_name = 'Cameron Hicks'
SELECT count(*) * 100.0 / count(*) FROM superhero WHERE gender_id = "female" AND publisher_id IN (SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.gender_id = "female" AND T1.publisher_name = "Marvel Comics")
SELECT avg(weight_kg) FROM superhero WHERE race_id = 'Alien'
SELECT weight_kg - 145.5 FROM superhero WHERE superhero_name = "Emil Blonsky" EXCEPT SELECT weight_kg - 145.5 FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = "Abomination"
SELECT count(*) FROM superhero WHERE race_id IN (2, 10) AND gender_id = 1
SELECT superhero_name FROM superhero ORDER BY height_cm ASC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment = "neutral"
SELECT T1.attribute_name , T1.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T2.superhero_name = "3-D Man" GROUP BY T1.attribute_name HAVING count(*) = 3;
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "brown";
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Hawkman" AND T1.superhero_name = "Karate Kid" AND T1.superhero_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) FROM superhero WHERE eye_colour_id IN (1);
SELECT count(*) , count(*) FROM superhero WHERE gender_id = "male" : SELECT count(*) , count(*) FROM superhero WHERE gender_id = "female"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294;
SELECT full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.superhero_id = T3.id WHERE T3.full_name = "Helen Parr"
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id ORDER BY T2.attribute_value DESC LIMIT 1
SELECT T1.alignment , T2.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T3.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = "blue"
SELECT avg(T2.attribute_value) FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = "neutral"
SELECT T1.skin_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.race_id IN (SELECT T1.hero_id FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_value = 100)
SELECT count(*) FROM superhero WHERE gender_id = 2 AND gender = 'female'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT race FROM superhero WHERE gender = 'male' AND hair_colour_id = 'blue';
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE gender_id = 2) FROM superhero WHERE gender_id = 2
SELECT count(*) - count(*) FROM superhero WHERE eye_colour_id = 'blue'
SELECT power_name FROM hero_power WHERE power_name = "Superman"
SELECT power_name FROM superpower AS T1 JOIN superhero AS T2 ON T1.id = T2.hero_power WHERE T2.superhero_name = "Ajax"
SELECT count(*) FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T1.race = "green" AND T2.gender_id = "villain";
SELECT count(*) FROM superhero WHERE gender_id = 2 AND race_id = 'Marvel'
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.superpower_id = t2.id WHERE t2.power_name = "wind" ORDER BY t1.superhero_name
SELECT t1.gender FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.hero_power WHERE t2.power_name = "Phoenix Force"
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id = "Dark Horse Comics"
SELECT count(*) FROM superhero WHERE race_id = 'fast'
SELECT count(*) , T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher = 'DC' OR T1.publisher = 'Marvel Comics' GROUP BY T1.publisher HAVING count(*) ORDER BY count(*) DESC LIMIT 1
SELECT T1.attribute_name FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Black Panther" AND T1.attribute_name = "weakest"
SELECT T2.eye_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) FROM superhero WHERE gender_id = 1 AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Lukeven' ) AND race_id = (SELECT id FROM race WHERE race_name = 'Female')
SELECT count(*) , avg(gender_id) FROM superhero WHERE race_id = 'Marvel' AND gender = 'Good'
SELECT count(*) FROM superhero WHERE full_name LIKE "%John%"
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id ORDER BY T2.attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT T1.full_name FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id JOIN attribute AS T3 ON T2.id = T3.id WHERE T1.gender_id = 1 AND T1.eye_colour_id = 2 AND T1.weight_kg < 100
SELECT T1.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T2.hero_id IN (SELECT id FROM superhero WHERE superhero_name = "Aquababy")
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 2 AND alignment_id = 1
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Inteligence'
SELECT eye_colour FROM superhero WHERE race = "Blackwulf"
SELECT power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.height_cm > (SELECT avg(height_cm) FROM superhero) AND T3.gender_id = 1
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = "20" AND T2.status = "eliminated" AND T3.round = 1
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 19 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T2.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Shanghai"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid IN (SELECT circuitid FROM circuits WHERE country != 'Asia') AND circuitid IN (SELECT circuitid FROM circuits WHERE country != 'Europe')
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit" AND T1.year = T3.year ORDER BY T1.round
SELECT TIME FROM races WHERE circuitId = "Sepang International Circuit"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix"
SELECT T1.country FROM circuits AS T1 JOIN constructorresults AS T2 ON T1.circuitid = T2.raceid WHERE T2.round = 24 AND T2.points = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = "Bruno Senna";
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.number = 355 AND T2.q2 = "0:01:40"
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "0:01:54" AND T2.raceid = 903 ORDER BY T2.position
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T1.circuitid = T3.circuitid WHERE T2.year = 2007 AND T1.status != "finished" AND T3.country = "Bahrain"
SELECT DISTINCT T1.url FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.round = 901
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.date = "2015/11/29"
SELECT max(T1.forename) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 592 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.url FROM results AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "0:01:27" AND T2.raceid = 161
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.round = 933 ORDER BY T1.name LIMIT 1
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix"
SELECT T2.url FROM constructorStandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T1.raceid = 9 ORDER BY T1.points DESC LIMIT 1
SELECT T1.q1 FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.round = 345 AND T1.driverid = drivers.driverid AND drivers.forename = "Lucas" AND drivers.surname = "di Grassi";
SELECT T1.driverRef FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverId = T2.driverId WHERE T2.position = "q2" AND T2.milliseconds = 1000 AND T2.time = "0:01:15" JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.id = 347
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE raceid = 45 AND POSITION = "Q3" AND milliseconds = 0:01:33
SELECT T1.milliseconds FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN results AS T3 ON T3.driverid = T1.driverid WHERE T2.name = "Race 743" AND T3.position = "1" AND T3.driverref = "Bruce McLaren"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "San Marino Grand Prix" AND T3.year = 2006 ORDER BY T2.position = 2
SELECT DISTINCT T1.url FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.round = 901
SELECT count(DISTINCT driverId) FROM results WHERE raceId IN (SELECT raceId FROM races WHERE date LIKE "2015/%" AND date LIKE "29/%")
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 ORDER BY T1.dob LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1 WHERE raceid = 348
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT (T1.position - T2.position) / T2.position * 100 FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.round = 853 ORDER BY T1.positionText DESC LIMIT 1
SELECT count(*) , avg(laps) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.date LIKE "%1983/7/16%"
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Singapore" AND T2.position = "Grand Prix" ORDER BY T1.year ASC LIMIT 1
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races WHERE YEAR = (SELECT min(year) FROM races)
SELECT T1.name , T1.date FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year = 1999 ORDER BY T1.round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN seasons AS T3 ON T3.year = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" ORDER BY T1.country DESC LIMIT 1;
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "British Grand Prix" AND T2.circuitid = "Brands Hatch";
SELECT count(*) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year JOIN constructorResults AS T3 ON T3.raceid = T1.raceid JOIN circuits AS T4 ON T4.circuitid = T1.circuitid WHERE T4.name = "Silverstone Circuit" AND T3.status = "United Kingdom grand prix"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "2010 Singapore Grand Prix" ORDER BY T2.positiontext = "stand";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY sum(T2.points) DESC LIMIT 1
SELECT T1.driverref , T1.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T1.points DESC LIMIT 3;
SELECT T1.driver , T2.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT avg(T1.milliseconds) FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.driverRef = "Lewis Hamilton" AND T2.year = 2009 AND T2.round = "Malaysian Grand Prix"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T2.year > 2010 AND T1.driverid = "Hamilton" AND T1.position != "1"
SELECT T1.forename , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY sum(T2.wins) DESC LIMIT 1
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T2.name , T2.location , T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2006 AND T2.country = "USA"
SELECT T1.name , T2.circuit , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = "Sep"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoon" AND T1.name != "track" AND T1.year < 20
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit" AND T1.driver = "Michael Schumacher"
SELECT T2.name , T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T1.driverid = (SELECT T4.driverid FROM results AS T4 JOIN constructorResults AS T5 ON T4.constructorid = T5.constructorid WHERE T5.status = "fastest" ) AND T1.position = 1 AND T1.driverref = "M.Schumacher"
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN seasons AS T3 ON T2.year = T3.year WHERE T2.name = "2000" AND T3.url = "https://www.eslport.com/2000" AND T1.driverid = drivers.driverid AND drivers.forename = "Eddie" AND drivers.surname = "Irvine"
SELECT T1.points FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Lewis Hamilton" ORDER BY T2.year ASC LIMIT 1
SELECT T1.name , T2.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T2.date
SELECT T1.name , T1.year , T1.circuit FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , count(*) / count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Europe" AND T1.name = "Grand Prix" AND T1.circuitid IN (SELECT T1.circuitid FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany")
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT LOCATION FROM circuits WHERE name = 'Silverstone Circuit' INTERSECT SELECT LOCATION FROM circuits WHERE name = 'Hungaroring'
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = '';
SELECT T1.circuitRef FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN drivers AS T3 ON T2.raceid = T3.raceid ORDER BY T3.dob DESC LIMIT 1 WHERE T1.country = (SELECT country FROM drivers ORDER BY T3.dob DESC LIMIT 1)
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT DISTINCT url FROM drivers WHERE forename = "Anthony" AND surname = "Davidson"
SELECT driverRef FROM drivers WHERE forename = "Lewis" Hamilton
SELECT DISTINCT T1.circuit FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2009 AND T1.name = "Spanish Grand Prix"
SELECT DISTINCT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit" AND T1.name = "Formula_1"
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year LIKE "%2010%" AND T2.name = " Abu Dhabi Circuit "
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.round = "Grand Prix" AND T1.country = "Spanish"
SELECT T1.fastestlapspeed , T1.fastestlapspeedtime FROM results AS T1 JOIN lapisettings AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton" ORDER BY T1.fastestlapspeedtime DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = "Canadian Grand Prix" AND T3.year = 2007 ORDER BY T2.position ORDER BY T1.driverRef
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.number = (SELECT min(number) FROM results WHERE driverid = T3.driverid) ORDER BY T3.position = 1
SELECT T1.lap , T1.milliseconds , T1.position , T1.time , T1.positionText FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.circuitid = (SELECT circuitid FROM races WHERE name = "2009 Spanish Grand Prix") ORDER BY T1.positionText DESC LIMIT 1
SELECT DISTINCT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.rank FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.driverid = "Lewis Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.position = "no. 4";
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "Australian Grand Prix" AND T2.status = "Finished"
SELECT T1.lap , T1.position , T1.milliseconds FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.number = "Hamilton" AND T1.year = 2008 AND T1.round = "Australian" ORDER BY T1.milliseconds ASC LIMIT 1;
SELECT T1.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2008 AND T3.nationality = "AustChineseralian" AND T3.position = 2
SELECT T1.name , T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix" SELECT T1.driverid , T1.number , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2008 AND T2.position = "fastest"
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2008 Australian Grand Prix" AND T2.status = "P"
SELECT count(DISTINCT T1.driverid) FROM drivers AS T1 JOIN races AS T2 ON T1.driverid IN (SELECT driverid FROM results AS T3 JOIN race AS T4 ON T3.raceid = T4.raceid WHERE T4.name = "2008 Chinese Grand Prix" AND T3.status = "P" )
SELECT sum(T2.points) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T1.forename = "Lewis" AND T1.surname = "Hamilton"
SELECT avg(T1.milliseconds) FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT count(*) , T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix" AND T1.status = "completed" GROUP BY T1.laps
SELECT (SELECT fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.round = "Australian Grand Prix" ORDER BY fastestlapspeed DESC LIMIT 1) - (SELECT fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.round = "Australian Grand Prix" ORDER BY fastestlapspeed DESC LIMIT 1) AS percentage FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 ORDER BY fastestlapspeed DESC
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide , Australia"
SELECT lat , lng FROM circuits WHERE country = "United States"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > 1980
SELECT max(T1.points) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T2.name FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid ORDER BY T1.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.points = 0
SELECT count(*) FROM constructors WHERE nationality = "Japanese" INTERSECT SELECT count(*) FROM constructorresults WHERE raceid NOT IN (SELECT raceid FROM constructorresults WHERE points != 0)
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.positiontext DESC LIMIT 1
SELECT count(*) FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid JOIN laptimes AS T4 ON T1.raceid = T4.raceid WHERE T2.name LIKE "%French%" AND T4.lap > 50
SELECT T1.percent , T2.nationality FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.nationality = "Japanese" AND T1.year BETWEEN 2007 AND 2009
SELECT avg(T1.time) , T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year < 1975 GROUP BY T2.year
SELECT forename , surname FROM drivers WHERE dob > "1975-01-01" ORDER BY positionText = "2"
SELECT count(*) FROM drivers WHERE nationality != 'Italian'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT fastestlapspeed FROM results WHERE raceid IN (SELECT raceid FROM races WHERE YEAR = 2009) ORDER BY fastestlapspeed DESC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT name , YEAR FROM races ORDER BY TIME LIMIT 1
SELECT count(*) , count(*) FROM (SELECT T1.driverid , T1.lap FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < 2000 INTERSECT SELECT T1.driverid , T1.lap FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < 1985 AND T2.lap > 50)
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND T2.lap < 200.00
SELECT code FROM drivers WHERE nationality = "America"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid = 18
SELECT count(*) , T1.code FROM drivers AS T1 JOIN seasons AS T2 ON T1.driverid = T2.driverid ORDER BY T2.year DESC LIMIT 3 INTERSECT SELECT count(*) , T1.code FROM drivers AS T1 JOIN seasons AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Netherlandic" ORDER BY T2.year DESC LIMIT 3
SELECT driverRef FROM drivers WHERE forename = "Robert" AND surname = "Kubica"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = 1980
SELECT T1.driverid , T1.position , T1.time FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.nationality = "Germany" AND T2.dob BETWEEN 1980 AND 1990 ORDER BY T1.milliseconds LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds = (SELECT max(milliseconds) FROM laptimes) AND T1.dob = '1971-' UNION SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T2.driverid = T1.driverid WHERE T2.position = '1'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 10 WHERE T1.nationality = "Spanish" AND T1.dob < 1982
SELECT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT DISTINCT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlaps TIME DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN race AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid BETWEEN 50 AND 100 AND T1.statusId = 1;
SELECT LOCATION , lat , lng FROM circuits WHERE country = "Austria"
SELECT raceId FROM results GROUP BY raceId ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 23 AND T2.position = "q2" GROUP BY T1.driverRef HAVING count(*) = 1
SELECT T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.position DESC LIMIT 1
SELECT count(*) FROM drivers WHERE nationality = "American" AND status IN ("puncture");
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Italian" ORDER BY T2.points DESC LIMIT 1;
SELECT t2.url FROM constructorStandings AS t1 JOIN results AS t2 ON t1.raceid = t2.raceid JOIN circuits AS t3 ON t1.circuitid = t3.circuitid ORDER BY t1.wins DESC LIMIT 1
SELECT T1.driver FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.round = 3 AND T2.position = 2 AND T2.circuitid = (SELECT circuitid FROM races WHERE name = "French Grand Prix").GROUP BY T1.driver ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name , T1.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT avg(T2.fastestlapsTime) FROM results AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.year = 2006 AND T1.round = "2006 United States Grand Prix" ORDER BY T2.positionText DESC LIMIT 10;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) ASC LIMIT 3 HAVING T1.nationality = "German" AND T1.dob LIKE "1980-1985%"
SELECT T1.name , T1.positionText FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Canadian Grand Prix" ORDER BY T1.positionText DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.round = "Final" AND T3.name = "Singapore Grand Prix" LIMIT 1
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN 1981 AND 1991
SELECT forename , surname , dob FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT LOCATION , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.points , T3.name , T3.nationality FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T1.year BETWEEN 1980 AND 2010 ORDER BY T1.points DESC LIMIT 1
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Turkish Grand Prix" AND T3.status = "Lewis Hamilton"
SELECT avg(T1.year) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2011 AND 2100 GROUP BY T1.year
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 91 ORDER BY T1.number
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = (SELECT max(YEAR) FROM races)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "q1" AND T2.raceid = 2008.03.07 AND T2.round = 3 AND T1.nationality = "Singapore"
SELECT T1.forename , T1.surname , T1.nationality , T3.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid JOIN constructorStandings AS T3 ON T2.raceid = T3.raceid ORDER BY T1.dob LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Canadian Grand Prix" ORDER BY count(*) DESC LIMIT 1
SELECT T1.surname , T1.forename , max(T1.wins) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN constructors AS T3 ON T3.constructorid = T2.constructorid GROUP BY T1.forename , T1.surname ORDER BY T1.dob DESC LIMIT 1
SELECT max(duration) FROM pitstops
SELECT fastestlapspeed FROM results ORDER BY fastestlapspeed LIMIT 1
SELECT max(T1.duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton";
SELECT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix" AND T1.driverid = drivers.driverid WHERE drivers.forename = "Lewis Hamilton";
SELECT DISTINCT T1.time FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2011 AND T1.name = "2011 Australian Grand Prix"
SELECT T1.lap , T1.milliseconds , T1.driverid , T1.position , T1.time , T1.laptime FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.number = "Hamilton" ORDER BY T1.lap DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
SELECT T1.position FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid JOIN laptimes AS T3 ON T2.raceid = T3.raceid WHERE T3.driverid = T2.driverid AND T3.position = (SELECT max(position) FROM laptimes WHERE fastestlапspeed = (SELECT fastestlапspeed FROM results WHERE fastestlапtime = (SELECT fastestlапtime FROM results ORDER BY fastestlапtime DESC LIMIT 1)) )
SELECT T1.laps , T1.milliseconds FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.circuitid = "Austrian Grand Prix Circuit"
SELECT T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Austrian Grand Prix Circuit" ORDER BY T1.year DESC LIMIT 1
SELECT avg(T1.duration) FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit" AND T1.driverid = T2.driverid
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.time LIKE "1:29.488%"
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid WHERE T2.number = "Lewis Hamilton"
SELECT avg(T1.milliseconds) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT DISTINCT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT height , player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate = 'yes'
SELECT DISTINCT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE crossing > 0 GROUP BY T1.player_api_id ORDER BY crossing DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2016 GROUP BY T1.team_short_name ORDER BY count(*) ASC LIMIT 1;
SELECT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_fifa_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.away_team_api_id JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Scotland' AND T2.season = 2010 GROUP BY T1.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT buildUpPlaySpeed FROM Team_Attributes ORDER BY buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = "draw" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2013-01-01' AND '2015-12-31' AND T2.sprint_speed >= 97
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN '1990-' AND '1995';
SELECT DISTINCT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60 ORDER BY buildUpPlaySpeed;
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.date = '2012' ORDER BY buildUpPlayPassing DESC LIMIT 3;
SELECT %. , count(*) FROM Player_Attributes AS P JOIN Player AS T ON P.player_api_id = T.player_api_id WHERE P.preferred_foot = "left" AND T.birthday BETWEEN 1987 AND 1992 GROUP BY T.player_api_id;
SELECT name FROM league ORDER BY sum(goal) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name HAVING avg(heading_accuracy) > 180 ORDER BY avg(heading_accuracy) DESC LIMIT 10;
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = "2014" AND buildUpPlayDribbling = 1 AND buildUpPlayDribblingClass = "Dribble" INTERSECT SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.date = "2014" AND buildUpPlayPassing = 1 AND buildUpPlayPassingClass = "Pass" GROUP BY T1.team_long_name HAVING avg(T2.chanceCreationPassing) < (SELECT avg(chanceCreationPassing) FROM Team_Attributes WHERE date = "2014" AND buildUpPlayDribbling = 1 AND buildUpPlayDribblingClass = "Dribble") ORDER BY avg(T2.chanceCreationPassing) DESC;
{"sql": "SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = '2009/2010' GROUP BY T1.id HAVING avg(T2.goal) > T2.goal");
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers";
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday LIKE "1970-%" AND T2.preferred_foot = "football" AND T2.date LIKE "10/%";
SELECT DISTINCT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Franco Zennaro"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = "1st two thirds of the pitch";
SELECT DISTINCT T1.finishing FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Francois Affolter' AND T1.date = '18/09/2014'
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.season = "2015/2016" JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Scotland Premier League";
SELECT preferred_foot FROM Player_Attributes WHERE date = (SELECT min(date) FROM Player_Attributes) AND attacking_work_rate = 'best' ORDER BY birthday LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "football" ORDER BY potential DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'yes' AND player_api_id NOT IN (SELECT player_api_id FROM Player WHERE weight > 130);
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE chanceCreationPassingClass = 'Risky'
SELECT defensive_work_rate FROM Player_Attributes WHERE player_name = "David Wilson" AND preferred_foot = "football";
SELECT birthday FROM Player ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Netherlands"
SELECT avg(T1.home_team_goal) FROM Match AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Poland' AND T1.season = '2010/2011';
SELECT avg(T1.finishing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE preferred_foot = 'football' ORDER BY avg(T1.finishing) DESC LIMIT 1 OFFSET 0;
SELECT player_name FROM Player WHERE height > 180;
SELECT count(*) FROM Player WHERE birthday > "1990";
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN "2008-01-01" AND "2010-12-31" AND T2.overall_rating > 80;
SELECT max(overall_rating) FROM Player_Attributes WHERE player_name = "Aaron Doran"
SELECT DISTINCT player_api_id FROM Player_Attributes WHERE preferred_foot = 'left'
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlaySpeedClass = 'fast'
SELECT buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "CLB"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlayPassingClass > 70;
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN "2010-01-01" AND "2015-12-31" AND preferred_foot > 170;
SELECT player_name FROM Player ORDER BY height LIMIT 1;
SELECT T1.country FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32
SELECT avg(overall_rating) FROM Player_Attributes AS P JOIN Player AS L ON P.player_api_id = L.player_api_id WHERE L.player_name = "Aaron Doran"
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id JOIN team AS T3 ON T3.team_api_id = T1.away_team_api_id JOIN country AS T4 ON T4.id = T3.country_id WHERE T2.name = 'Germany 1. Bundesliga' AND T1.season BETWEEN 2008-08 AND 2008-10
SELECT T1.team_short_name FROM Team AS T1 JOIN Match AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.home_team_goal = 10;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 2;
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Abdou Diallo" INTERSECT SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_10 WHERE T2.stage = "home") AND T1.player_name = "Aaron Appindangoye";
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT player_name FROM Player WHERE birthday > (SELECT birthday FROM Player WHERE player_name = "Aaron Lennon") INTERSECT SELECT player_name FROM Player WHERE player_name = "Abdelaziz Barrada";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'yes';
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = 'Germany'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986 AND T2.attacking_work_rate != "null" AND T2.defensive_work_rate != "null"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(overall_rating) FROM Player_Attributes) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(overall_rating) FROM Player_Attributes) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(overall_rating) FROM Player_Attributes)
SELECT heading_accuracy FROM Player_Attributes WHERE player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player_Attributes WHERE volleys > 70 AND height > 180;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70;
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN team AS T3 ON T3.team_api_id = T1.away_team_api_id WHERE T2.name = 'Belgium' AND T1.season = '2008/2009';
SELECT long_passing FROM Player ORDER BY birthday DESC LIMIT 1;
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN league AS T3 ON T1.league_id = T3.id WHERE T3.name = 'Belgium Jupiler League' AND T1.date LIKE "2009-04%";
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(overall_rating) FROM Player_Attributes WHERE birthday < 1986
SELECT (overall_rating - (overall_rating - 100.0)) / 100 FROM Player_Attributes WHERE player_name = 'Ariel Borysiuk' INTERSECT SELECT (overall_rating - (overall_rating - 100.0)) / 100 FROM Player_Attributes WHERE player_name = 'Paulin Puel'
SELECT avg(buildUpPlaySpeed) FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = 'Heart of Midlothian';
SELECT avg(overall_rating) FROM Player_Attributes WHERE player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE name = 'Ajax' ORDER BY chanceCreationPassing DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes WHERE player_fifa_api_id = "ABDOWALEDDALLO";
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Dorlan Pabon" LIMIT 1
SELECT avg(T2.goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.id WHERE T2.team_short_name = 'Italy' AND T1.home_team_api_id = (SELECT team_api_id FROM Team WHERE team_short_name = 'Parma')
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2016-06-23" AND T2.overall_rating = 77 ORDER BY T1.height DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Mooy" AND T1.date = "2016/2/4"
SELECT potential FROM Player AS P JOIN Player_Attributes AS A ON P.player_api_id = A.player_api_id WHERE P.player_name = "Francesco Parravicini" AND A.date = "2010-08-30";
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Migliore" AND T1.date = "2015-05-01"
SELECT T1.defensive_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Kevin Berigaud" AND T1.date = "2013-02-22"
SELECT date FROM Player_Attributes WHERE player_name = "Kevin Constant" ORDER BY crossing DESC LIMIT 1;
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.buildUpPlayDribbling = T2.cross WHERE T2.player_name = "Willem II" AND T2.date = "2011/2/22"
SELECT T1.buildUpPlayDribbling FROM Team_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlayDribblingClass = "LEI" AND T1.date = "2015/9/10";
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.buildUpPlayPassingClass = T2.buildUpPlayPassingClass WHERE T1.team_fifa_api_id = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE date = "2013/9/20" AND team_fifa_api_id = "PEC Zwolle";
SELECT chanceCreationCrossingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_short_name = "Hull City" AND T1.date = "2010-02-22";
SELECT defenceAggressionClass FROM Team_Attributes WHERE team_fifa_api_id = "Hannover 96" AND date = "2015-09-10";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date > "2007/2/22" AND T1.date < "2016/4/21"
SELECT count(*) FROM Player_Attributes AS P1 JOIN Player AS T1 ON P1.player_api_id = T1.player_api_id WHERE P1.date = '2013-07-12' AND T1.player_name = 'Landon Donovan' AND T1.player_fifa_api_id = '465788' INTERSECT SELECT count(*) FROM Player_Attributes AS P1 JOIN Player AS T1 ON P1.player_api_id = T1.player_api_id WHERE P1.date = '2013-07-12' AND T1.player_name = 'Jordan Bowery'
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday >= "2000-01-01" AND age = 35;
SELECT count(*) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_short_name = 'home' AND T1.home_player_X1 = "Aaron Lennon"
SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_short_name = "Daan Smith" INTERSECT SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_short_name = "Filipe Ferreira"
SELECT sum(T1.cross) FROM Player_Attributes AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_11 GROUP BY T1.player_api_id HAVING T1.age < 30;
SELECT player_name FROM player ORDER BY strength DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate > 0
SELECT T1.player_name , T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE finishing = 1 ORDER BY birthday DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Belgium'
SELECT T1.player_name , T1.country_id FROM Country AS T1 JOIN Player_Attributes AS T2 ON T1.id = T2.country_id WHERE T2.vision >= 90;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY avg(weight) DESC LIMIT 1;
SELECT team_long_name FROM Team WHERE buildUpPlaySpeedClass = "slow";
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassing = 'safe' INTERSECT SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationCrossing = 'safe'
SELECT avg(T1.height) FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T2.name = "Italy";
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > 1990 AND preferred_foot = "football" AND player_name = "Aaron"
SELECT jumping - jumping FROM Player_Attributes WHERE player_api_id = 6 INTERSECT SELECT jumping - jumping FROM Player_Attributes WHERE player_api_id = 23;
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = (SELECT min(potential) FROM Player_Attributes) AND preferred_foot = 'right';
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND crossing = (SELECT max(crossing) FROM Player_Attributes WHERE preferred_foot = 'left' )
SELECT count(*) * 100.0 / (SELECT count(*) FROM Player_Attributes WHERE strength > 80) FROM Player_Attributes GROUP BY player_api_id HAVING sum(strength) + sum(stamina) > 160;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id JOIN Team AS T3 ON T3.team_api_id = T2.team) WHERE T2.name = 'Poland Ekstraklasa'
{"sql": "SELECT goal FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season = '2008' AND date = '2008-09-24' AND home_team_goal = (SELECT max(goal) FROM MATCH WHERE season =
SELECT sprint_speed , agility , acceleration FROM Player_attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "KSV Cercle Brugge";
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Italian Serie A' AND T1.season = '2015–2016';
SELECT max(T1.goal) FROM MATCH AS T1 JOIN league AS T2 ON T1.league_id = T2.id JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Netherlands' AND T2.name = 'Eredivisie league'
SELECT finishing_rate , curve FROM Player_Attributes ORDER BY weight DESC LIMIT 1;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2015-2016" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id GROUP BY T1.away_team_api_id ORDER BY sum(T1.goal) DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE height < 180 AND overall_rating > 70;
SELECT count(*) , (count(*) - count(T1.id) ) / count(*) FROM patient AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.sex = 'F'
SELECT count(*) , sex , birthdate FROM patient WHERE birthdate > 1930 AND sex = 'F' GROUP BY birthdate HAVING count(*) > 1
SELECT count(*) * 100 / (count(*) - sum(count(*) - firstdate)) FROM patient WHERE birthday BETWEEN 1930 AND 1940
SELECT count(*) , count(*) FROM (SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" GROUP BY T1.id) AS T3 JOIN (SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" GROUP BY T1.id) AS T4 HAVING count(*) > 10
SELECT T2.Date FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Patient.ID = 30609
SELECT T2.sex , T2.birthday , T3.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE LDH > (SELECT min(LDH) FROM patient WHERE Diagnosis = "Normal")
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.diagnosis = "Positive"
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Severe'
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = 1937 AND T2.T-CHO > 130
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alb - 3.5 < 0
SELECT count(*) * 100.0 / sum(count(*) * 100.0) FROM patient WHERE sex = 'F' AND (SELECT sum(count(*) * 100.0) FROM patient WHERE sex = 'F' AND U-PRO != 'Normal' )
SELECT avg(Igg) FROM Laboratory WHERE ID IN (SELECT id FROM patient WHERE birthday LIKE "%50%")
SELECT count(*) FROM patient WHERE first date = '1997' AND sex = 'F' INTERSECT SELECT count(*) FROM patient WHERE first date = '1997' AND sex = 'F'
SELECT max(first date) - birthday FROM patient
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T1.diagnosis = "Thrombosis" AND T1.date = 1997 GROUP BY T2.sex ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.Birthdate) - min(T1.Birthdate) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.id WHERE T2.Diagnosis = "Normal"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.PID ORDER BY T2.Birthdate LIMIT 1
SELECT avg(T2.count) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.date LIKE "%12月%" AND T1.birthday LIKE "%1998%" AND T2.date LIKE "%12月%"
SELECT T2.date , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SJS" ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) , sex FROM patient WHERE diagnosis = 'Abnormal uric acid' GROUP BY sex
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date - T2.birthday < 365 )
SELECT count(*) FROM examination WHERE diagnosis != "alive" AND birthdate >= 1990 AND birthdate <= 1993
SELECT count(*) FROM patient WHERE sex = "M" INTERSECT SELECT count(*) FROM laboratory WHERE T-BIL > 100
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T2.birthday < 1985 UNION SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T2.birthday >= 1985 AND T2.birthday <= 12/31/1995
SELECT avg(T2.Birthdate) FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T1.date = "1999-10-01" INTERSECT SELECT avg(T3.birthday) FROM examination AS T3 JOIN patient AS T4 ON T3.idpatient = T4.id WHERE T3.date = "1991-10-01"
SELECT T1.date , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id -> T2.id ORDER BY T2.hgb DESC LIMIT 1
SELECT T2.ANTICENTRUL FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.PID WHERE T1.date = 1996/12/2 AND T2.id = 3605340
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T1.date LIKE "1995-09-04" AND T2.id = 2927464 AND T2.diagnosis = "normal"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'AORTITIS' ORDER BY T1.first_date LIMIT 1
SELECT T2.RNP FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T1.date = "1994/2/19" INTERSECT SELECT T2.RNP FROM patient AS T2 ON T2.id = T1.id WHERE T1.date = "1993/11/12"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = "1992-06-12" AND GLU = 9
SELECT T2.Birth FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1991-10-21" AND T2.first = "patient" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1991-10-21" AND T1.aCL IgG = "8.4")
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.date = "1991-06-13" AND T1.diagnosis = "SJS" AND T2.date = "1995"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T1.date = '1997/1/27'
SELECT T2.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.examination_date = 1993/9/27 AND T2.birthday = 1959/3/1
SELECT avg(T2.T-CHO) - T1.T-CHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.birthday = "1959-02-18" AND T2.date LIKE "1981-11%" INTERSECT SELECT avg(T2.T-CHO) - T1.T-CHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.birthday = "1959-02-18" AND T2.date LIKE "1981-12%"
{"sql": "SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Behcet\'s disease' AND T2.examination_date BETWEEN '01/01/197' AND '12/31/1997'"}
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date >= "1987/7/6" AND T2.examination_date <= "1996/1/31" INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.gpt > 30 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alb < 4
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 ORDER BY admission
SELECT count(*) FROM examination WHERE thrombosis = "2" AND ANA Pattern = "S" AND (T-CHO > (SELECT avg(T-CHO) FROM examination))
SELECT count(*) , (sum(count(*) * (UA - 1000)) / sum(count(*)) ) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "proteinuria" AND T2.U-PRO > 1000
SELECT count(*) * 100.0 / count(*) FROM patient WHERE first_date = 1981 AND sex = 'M' AND diagnosis = "BEHCET"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = "1991-10-01" AND T1.sex = "Female" AND T2.T-BIL < 150
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ana = 'P'
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = 'PSS' AND T3.crp = 2 AND T3.Creatinine = 1 AND T3.LDHCY = 123
SELECT avg(T1.ALB) FROM Laboratory AS T1 JOIN examination AS T2 ON T1.ID = T2.KCT WHERE T2.diagnosis = 'SLE' AND T1.sex = 'F' AND T1.plt > 400
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id -> T2.id WHERE T2.diagnosis = "SLE" GROUP BY T1.symptoms ORDER BY count(*) DESC LIMIT 1
SELECT T1.date , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first_date = 48473
SELECT count(*) FROM patient WHERE diagnosis = 'APS' AND sex = 'F'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.date = 1997 AND T2.U-PRO != 'Normal'
SELECT count(*) , sum(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.diagnosis = 'Thrombocytopenia' AND T1.diagnosis = 'SLE'
SELECT count(*) , sex FROM patient WHERE birthday = 1980 AND diagnosis = 'RA' GROUP BY sex HAVING count(*) > 0
SELECT count(*) FROM patient WHERE sex = 'M' AND first date >= "1995" AND first date <= "1997" AND diagnosis = "Behcet disease" AND admission != "Treated in hospital"
SELECT count(*) FROM patient WHERE sex = 'F' AND WBC < 3.5
SELECT T2.admission - T1.admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "first"
SELECT T2.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = 57266 AND T2.id = 57266 AND T2.URA < 55 OR T2.URA > 55
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first_date = '48473' AND T1.GOT > 10
SELECT T2.sex , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = 1994 INTERSECT SELECT T2.sex , T2.birthday FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE GOT < 100
SELECT id FROM patient WHERE sex = 'M' AND gpt > 15.0
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.Patient WHERE T1.alp > "normal" ORDER BY T2.birthday
SELECT avg(LDH) FROM Laboratory WHERE LDH < 100 AND LDH > 100
SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH BETWEEN 100 AND 300 AND T2.diagnosis != "Normal"
SELECT T1.Admission , T2.diagnosis FROM patient AS T1 JOIN diagnosis AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.diagnosis = "Alive" AND T1.diagnosis = "Alive" AND T1.admission = "Yes"
SELECT id FROM patient WHERE birthday = '04/01/1982' INTERSECT SELECT id FROM laboratory WHERE ALP < 16
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE TP < (SELECT min(T2.tp) FROM patient AS T2)
SELECT id , T-CHO - 100 FROM patient WHERE sex = 'F' AND TP > 100
SELECT * FROM patient WHERE sex = 'M' AND alb IN (0)
SELECT T1.id , T2.alb FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1982" AND T2.alb < 100
SELECT count(*) FROM patient WHERE sex = 'F' AND UA > (SELECT avg(UA) FROM patient WHERE sex = 'F')
SELECT avg(T2.UA) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE UN >= (SELECT min(un) FROM laboratory WHERE diagnosis = "passing")
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE diagnosis = 'RA' INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE diagnosis = 'UN'
SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT count(*) FROM laboratory WHERE id IN (SELECT id FROM patient WHERE blood creatinine <= 100))
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine != (SELECT min(creatinine) FROM patient WHERE sex = 'F')
SELECT T2.id , T2.sex , T2.birthday FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id GROUP BY T2.id ORDER BY sum(T1.T-BIL) DESC LIMIT 1
SELECT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL > 14.0
SELECT T1.id , T1.T-CHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY sum(T1.T-CHO) DESC LIMIT 1
SELECT avg(T2.Birthdate) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.sex = "M" AND T2.diagnosis = "high cholesterol"
{"sql": "SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis LIKE \"%TG%\" AND T2.diagnosis LIKE "%100%\""}
SELECT count(*) FROM patient WHERE TG > (100 - 30) AND birthdate > 1980
SELECT DISTINCT id FROM OUTPATIENT WHERE cpk > (SELECT min(cpk) FROM laboratory WHERE diagnosis = 'normal range')
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = "M" AND CPK > 12.3
SELECT T1.id , T1.sex , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu != "normal" AND T2.tcho != "normal"
SELECT T2.id , T1.GLU FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date >= 1991 AND T2.first_date = 1991
SELECT T1.id , T1.sex , T1.birthday , T3.age FROM patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id JOIN (SELECT id , sex , birthdate FROM patient GROUP BY sex ORDER BY avg(wbc) ) AS T3 ON T2.id = T3.id
SELECT T2.diagnosis , T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.RBC < (SELECT max(RBC) FROM examination)
SELECT T1.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T1.birthday >= "1950-04-18" AND RBC < 150000 AND T2.diagnosis = "Abnormal"
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 120
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "SLE" AND T1.Birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = "SLE" AND HGB = "normal")
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) >= 2 AND T2.diagnosis = 'Hematocrit' > 100
SELECT avg(HCT) FROM Laboratory WHERE EXAMINATION_DATE LIKE "1991%" AND HCT < 46.0
SELECT count(*) , count(*) FROM (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PLT < 150 INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PLT > 150)
SELECT DISTINCT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = 1984 AND T1.birthday < 50 AND T2.plt = 'normal'
SELECT count(*) , sex , sum(ift(PT != "normal", 1 , 0 )) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 GROUP BY sex
SELECT DISTINCT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date >= 1992 AND T1.diagnosis = "normal" AND T2.PT = "normal"
SELECT count(*) FROM examination WHERE examination_date > '1997/1/1' AND diagnosis = 'inactivated partial prothrombin time'
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Abnormal activated partial prothrombin time") AND thrombosis = "Yes"
SELECT count(*) FROM patient WHERE sex = 'M' AND WBC = "normal" AND fg != "normal";
SELECT count(*) FROM patient WHERE birthday > '1980-01-01' AND (igg = 'positive' OR igg = 'negative')
SELECT DISTINCT T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Proteinuria'
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T2.aCL IgG = 'Normal'
SELECT count(*) FROM patient WHERE igg > (SELECT min(igg) FROM patient)
SELECT count(*) FROM examination WHERE diagnosis = 'normal IgG' AND symptoms != "no symptoms"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id -> T2.id WHERE T1.igA -> (SELECT max(igA) FROM examination) AND T1.diagnosis -> (SELECT diagnosis FROM patient WHERE sex -> 'M' AND birthday -> (SELECT min(birthday) FROM patient) )
SELECT count(*) FROM patient WHERE birthday > '1990-01-01' AND diagnosis = 'Normal IgA'
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id -> T2.id WHERE T1.IGM -> 1 GROUP BY T1.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.CRPR > 100)
SELECT count(*) FROM patient WHERE id IN ( SELECT id FROM laboratory WHERE id in ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.patient = T2.id WHERE T1.diagnosis = 'Abnormal' AND T2.age != 70 ) )
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Positive Measure' INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Normal')
SELECT T1.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.Birthday > "1985-01-01" AND T2.RhFactor = "Normal"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'normal' INTERSECT SELECT id FROM patient WHERE birthday > "2023-11-15"
SELECT count(*) FROM patient WHERE diagnosis = 'normal' AND id NOT IN (SELECT id FROM examination WHERE thrombosis = 'yes')
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.ana_pattern = "P" AND T2.diagnosis = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT != "normal" GROUP BY T1.id ORDER BY T2.anti-cardiolipin LIMIT 1
{"sql": "SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Thrombosis' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' INTERSECT SELECT count(*) FROM examination WHERE diagnosis = 'Admitted'
SELECT T1.Birthdate FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal Anti-Ribonuclear Protein Level'
SELECT count(*) FROM patient WHERE diagnosis != 'thrombosis' AND sm != 'negative';
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SM = 'positive' ORDER BY T1.birthday LIMIT 3
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date > '1997/1/1' AND T1.diagnosis = 'normal anti-scl70'
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'normal anti-scl70'
SELECT count(*) FROM patient WHERE birthday < 2000 AND diagnosis = 'Normal Anti-SSA'
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal Anti-SSA' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.diagnosis = "SLE" AND T2.IGG = "normal"
SELECT count(*) FROM examination WHERE symptoms != "none" AND (SSB != "normal")
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CENTROMEA = "normal" AND T2.SSB = "normal") AND sex = "M"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id -> T2.id WHERE T2.dna != "normal"
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination ) AND dna = "normal"
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' INTERSECT SELECT count(*) FROM examination WHERE diagnosis = 'Yes'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' GROUP BY T1.id HAVING avg(GLU) > 100)
SELECT count(*) FROM patient WHERE sex = 'M' AND GLU <= 100
SELECT min(birthdate) FROM patient WHERE diagnosis = "Glutamic oxaloacetic transaminase"
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLUTAMIC PYLINASE TRANSAMINASE <= 100 AND T2.Diagnosis = "Normal Range" ORDER BY glutamic pylvic transaminase DESC LIMIT 3;
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.patient = T2.id WHERE T2.GLU = "normal") AND sex = "M"
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id -> T2.id WHERE T2.diagnosis = "Normal" ORDER BY LDH DESC LIMIT 1
SELECT max(T2.Date) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.diagnosis != "Normal" AND T1.LDH < 1.5 }
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = 'abnormal')
SELECT count(*) FROM (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal")
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.Patient WHERE SUM(T2.U-PRO) < 1000000
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "SJS" AND T1.description LIKE "%normal%"
{"sql": "SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id
SELECT count(*) FROM patient WHERE sex = "M" AND (SELECT min(alb) FROM laboratory WHERE id = UPPER(igv)) AND (SELECT min(totalprotein) FROM laboratory WHERE id = UPPER(igv))
SELECT T2.concentration FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T1.sex = "female" AND T3.ua < 160
SELECT max(T2.IGG) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" AND T2.date IN (SELECT max(date) FROM laboratory AS T3 GROUP BY T3.id HAVING avg(T3.igg) > 30)
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRE = "Normal" ORDER BY T2.IGM DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.date = T2.date INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ana_pattern = 'positive' AND T1.date = T2.date
SELECT T2.RNP FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" ORDER BY T2.T-BIL DESC LIMIT 1
SELECT count(*) FROM patient WHERE T-CHO > 140 AND (TAT2 < 0)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.ANA_PATTERN = "P" AND T2.diagnosis = "Normal"
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'normal' AND T2.Symptoms != "no symptoms")
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" AND TG = (SELECT max(TG) FROM patient)
SELECT id FROM patient EXCEPT SELECT id FROM examination INTERSECT SELECT id FROM laboratory WHERE CPK > 100
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CPK > 0.5) AND T2.diagnosis = "Normal"
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal Blood Glucose' ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = 'normal' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'thrombosis'
SELECT count(*) FROM patient WHERE wbc = 'normal'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND WBC = "normal"
SELECT T2.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms = "Abnormal RBC" AND T2.admission = "Outpatient clinic"
SELECT count(*) FROM patient WHERE id IN ( SELECT id FROM examination WHERE diagnosis = 'normal platelet' EXCEPT SELECT id FROM patient WHERE symptoms != "no symptoms")
SELECT T2.PLT FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = "MCTD" INTERSECT SELECT T2.PLT FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-BIL < 150
SELECT avg(PT) FROM patient WHERE sex = 'male' AND PT = 'normal'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Severe' AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Normal')
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Angela" AND T2.last_name = "Sanders"
SELECT count(*) FROM major AS T1 JOIN student_club AS T2 ON T1.major_id = T2.major_id WHERE T1.department = "College of Engineering"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Art and Design"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T2.t_shirt_size = "Medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President' INTERSECT SELECT T1.college FROM major AS T1 JOIN student_club AS T2 ON T1.major_id = T2.department
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean";
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN student_club AS T3 ON T3.major_id = T1.link_to_member WHERE T1.date_of_event = '2019' AND T3.position = 'Student' AND T1.first_name = 'Sacha' AND T1.last_name = 'Harrison'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.position = 'Student_Club' GROUP BY T1.link_to_event HAVING count(*) > 10 AND T2.type = 'meeting'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id HAVING count(*) > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN fundraiser AS T3 ON T2.link_to_event = T3.link_to_event
SELECT avg(T1.attendance) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "2020%"
SELECT t1.expense_description FROM expense AS t1 JOIN budget AS t2 ON t1.expense_id = t2.expense_id WHERE t2.category = 'Support' AND t2.event_status = 'Approved' AND t2.link_to_event IN (SELECT event_id FROM event WHERE TYPE = 'Club')
SELECT count(*) FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T1.department = "Environmental Engineering"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.link_to_event = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Law' AND T1.department = 'Constitutional Studies'
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.position = 'Vice President'
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T2.event_date = "9/20/2023" AND T1.category = "food" AND T2.department = "Student_Club"
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "President" AND T2.last_name = "of the Student Club";
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "Illinois"
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T2.expense_date = "2023-09-18" AND T1.category = "Advertization"
SELECT department FROM major WHERE major_id = (SELECT T1.major_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Pierce" INTERSECT SELECT T1.major_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Guidi")
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date LIKE "2019-10-08"
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id WHERE T1.event_date LIKE "9/%" OR T1.event_date LIKE "10/%" AND T2.event_status = 'completed' AND T2.event_status = 'approved' AND T2.category = 'expense'
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T1.category = 'Student_Club' AND T1.event_status = 'Pending' AND T2.event_status = 'Completed' AND T1.year = 2019 INTERSECT SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T1.category = 'Student_Club' AND T1.event_status = 'Pending' AND T2.event_status = 'Completed' AND T2.year = 2020
SELECT DISTINCT T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = "Spring Budget Review"
SELECT amount FROM expense WHERE event_date = "2019-09-04" AND category = "Posters"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT notes FROM income WHERE date_received LIKE "2019/09/14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "O'Gallagher"
SELECT count(*) FROM budget WHERE event_status = 'Completed' AND amount > (SELECT max(amount) FROM budget WHERE event_status = 'Completed' )
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT status FROM event WHERE event_date = "2019-08-20" AND TYPE = "Post Cards, Posters";
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "medium"
SELECT T2.type FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Christof" AND T2.last_name = "Nielsen";
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'President'
SELECT T1.event_date FROM event AS T1 JOIN membership AS T2 ON T1.event_id = T2.link_to_event WHERE T2.first_name = "Connor" AND T2.last_name = "Hilton";
SELECT first_name , last_name FROM member WHERE POSITION = 'paid'
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category > "October"
SELECT percent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Parking" AND T2.event_date LIKE "November%" GROUP BY percent
SELECT sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = "Humanities and Social Sciences"
SELECT T2.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amy" AND T2.last_name = "Firth";
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.remaining = (SELECT min(remaining) FROM budget)
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.link_to_event = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY amount DESC LIMIT 1
SELECT T1.expense FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE first_name = "Casey" AND last_name = "Mason"
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'closed' ORDER BY T2.spent / T2.amount DESC LIMIT 1
SELECT count(*) FROM major WHERE department = 'President'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020%"
SELECT sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = "food"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN attendance AS T3 ON T3.link_to_event = T2.link_to_event WHERE T1.major_name = 'Interior Design' AND T3.location = 'Community Theater'
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN major AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "South Carolina" AND T1.college = "Georgetown"
SELECT count(*) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.event_status = 'Yearly Kickoff'
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.category = 'Yearly Kickoff'
SELECT T1.first_name , T1.last_name , T1.position , SOURCE FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.first_name , T2.last_name ORDER BY amount DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id ORDER BY T2.spent LIMIT 1
SELECT count(*) , sum(amount) , event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Yearly Kickoff' GROUP BY event_name
SELECT count(*) , count(*) FROM major WHERE department = 'Finance' INTERSECT SELECT count(*) , count(*) FROM major WHERE department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/%" AND amount = (SELECT max(amount) FROM income WHERE date_received LIKE "9/%")
SELECT first_name , last_name , email FROM member WHERE POSITION = 'Secretary' OF Student_Club
SELECT count(*) FROM major AS T1 JOIN student_club AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.date = '2019'
SELECT count(*) , T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi" GROUP BY T1.major_name HAVING count(*) > 0
SELECT avg(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'food' AND T2.status = 'approved'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
{"sql": "SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.link_to_event = (SELECT event_id FROM event WHERE event_name = 'Women\'s Soccer')"}
SELECT count(*) * 100 / count(*) FROM event WHERE event_date = '2019' AND TYPE = 'Community Service' UNION SELECT count(*) * 100 / count(*) FROM event WHERE event_date = '2019' AND TYPE = 'Social Service'
SELECT T2.cost FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "September Speaker"
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent > (SELECT max(spent) FROM budget) AND T1.status = 'closed'
SELECT sum(T2.cost) , T2.type FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.link_to_event = "October Meeting" GROUP BY T2.type
SELECT category FROM budget WHERE link_to_event = "event_id" AND event_name = "April Speaker" ORDER BY amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T2.spent) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id WHERE T1.type = 'Parking'
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_date = "08/20/2019"
SELECT T1.first_name , T1.last_name , sum(T3.expense) FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id JOIN budget AS T3 ON T2.link_to_budget = T3.budget_id WHERE T1.member_id = "rec4BLdZHS2Blfp4v" GROUP BY T1.member_id
SELECT T2.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.link_to_major = 'X-Large'
SELECT zip_code FROM member WHERE zip IN (SELECT zip_code FROM expense WHERE amount < 50)
SELECT T1.major_name FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T2.first_name = "Phillip" AND T2.last_name = "Cullen"
SELECT position FROM member WHERE link_to_major = (SELECT major_id FROM major WHERE department = 'Business')
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "Medium";
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT event_name FROM event WHERE LOCATION = "MU 215"
SELECT event_name FROM event WHERE event_date LIKE "2020-03-24"
SELECT T1.major_name FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President'
SELECT count(*) * 100.0 / (SELECT count(*) FROM major WHERE department = 'Business' ) FROM major
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = "extra large"
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T1.zip , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.link_to_major IN (SELECT T1.major_name , T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Electrical and computer engineering")
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Vice President' AND T3.last_name = 'Of Student Club' AND T1.location = '900 E. Washington St.'
SELECT T2.last_name , T2.position FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.event_date LIKE "09/%" AND T1.event_name = "Pizza"
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer Event'"}
SELECT count(*) * 100 FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "medium" AND T1.amount = 50
SELECT T2.major_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T1.type = "zip_code" AND T1.short_state = "post office box"
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' INTERSECT SELECT zip_code FROM zip_code WHERE county = 'San Juan'
SELECT event_name FROM event WHERE event_date LIKE "3/%" AND TYPE = "game" AND event_date >= "3/15/2019" AND event_date <= "3/20/2020"
SELECT T1.link_to_event FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN income AS T3 ON T1.link_to_member = T3.link_to_member WHERE T3.amount > 50
SELECT T2.first_name , T2.last_name , T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.event_date LIKE "10/%" AND T1.event_date LIKE "11/%"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO"
SELECT phone FROM member WHERE link_to_major IN (SELECT major_id FROM major WHERE department = 'Business' AND college = 'College of Agriculture and Applied Sciences')
SELECT T2.email FROM budget AS T1 JOIN income AS T2 ON T1.budget_id = T2.budget_id WHERE T1.spent > 20 AND T2.date_received BETWEEN "09-10-2019" AND "11-19-2019"
SELECT count(*) FROM major WHERE department = "College of Education & Human Services"
SELECT count(*) * 100.0 / (SELECT sum(spent) FROM budget) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.event_status = 'over'
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-01" AND "2020-03-31"
SELECT T1.expense_id FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.amount > 50 GROUP BY T1.expense_id ORDER BY avg(T2.amount) DESC LIMIT 1
SELECT first_name , last_name FROM member WHERE t_shirt_size = "extra large"
SELECT count(*) / (SELECT count(*) FROM zip_code) FROM zip_code WHERE TYPE = "PO box"
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT max(spent) FROM budget)
SELECT T2.event_name , T2.event_date FROM expense AS T1 JOIN event AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.category = 'Pizza' AND T1.expense > 50 AND T1.expense < 100
SELECT T1.first_name , T1.last_name , T3.major_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member JOIN budget AS T3 ON T2.link_to_budget = T3.budget_id WHERE T3.amount > 100
SELECT T1.location , T1.state FROM event AS T1 JOIN zip_code AS T2 ON T1.location = T2.zip FROM zip_code AS T2 JOIN major AS T3 ON T2.zip_code = T3.zip_code WHERE T2.state = 'CA' AND T1.event_name IN (SELECT T1.event_name FROM income AS T1 JOIN T2 ON T1.location = T2.location GROUP BY T1.event_name HAVING sum(T1.amount) > 40)
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM budget WHERE position != 'member'
SELECT event_name FROM event WHERE cost < (SELECT avg(cost) FROM expense)
SELECT count(*) * 100.0 / (SELECT sum(amount) FROM budget) FROM expense
SELECT category FROM budget WHERE category = 'water' OR category = 'chips' OR category = 'cookies' ORDER BY amount DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id GROUP BY T2.member_id ORDER BY sum(T2.spent) DESC LIMIT 5;
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.spent > (SELECT avg(spent) FROM expense)
SELECT (count(*) - count(*) ) / 2 FROM zip_code WHERE state = "New Jersey" INTERSECT SELECT (count(*) - count(*) ) / 2 FROM zip_code WHERE state = "Vermont"
SELECT T1.department FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke"
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = 'water' OR T1.category = 'vegetable tray' OR T1.category = 'supplies'
SELECT T2.last_name , T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Elementary Education'
SELECT category , amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE category = 'food'
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.budget_id = T2.income_id WHERE T1.event_date = '9/9/2019'
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name , T1.last_name , T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT T1.amount , T2.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Speaker'
SELECT T2.city FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Garrett" AND T1.last_name = "Gerke"
SELECT T.member_id , T.first_name , T.last_name , T.position FROM member AS T JOIN zip_code AS S ON T.zip = S.zip_code WHERE T.city = "Lincolnville" AND T.state = "North Carolina" AND T.zip_code = "28092"
SELECT count(*) FROM gasstations WHERE country = "CZE" AND segment = "Premium"
SELECT Amount / Consumption , customerid FROM customers WHERE currency = 'EUR' GROUP BY customerid INTERSECT SELECT Amount / Consumption , customerid FROM customers WHERE currency = 'CZK'
SELECT T1.Date FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2012/%" ORDER BY Consumption LIMIT 1
SELECT avg(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = 'SME' AND T2.Date LIKE "2013/%"
SELECT t1.customerid FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t1.currency = 'CZK' AND t2.date LIKE "2011%" ORDER BY consumption DESC LIMIT 1
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = "KAM" AND T2 Consumption < 30000 AND T2.Date = 2012
SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = '2012' AND T2.Currency = "CZK" INTERSECT SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2012" AND T2.Currency = "EUR"
SELECT T2.Date , T1.GasStationID FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Price > 1 AND T2.Consumption > 1000 GROUP BY T2.Date ORDER BY T2.Consumption DESC LIMIT 1
SELECT segment FROM yearmonth GROUP BY segment ORDER BY sum(consumption) LIMIT 1
SELECT T1.Date , max(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" GROUP BY T1.Date
SELECT T2.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.segment = 'SME' AND T1.Date LIKE "2013%" ORDER BY T1.Consumption DESC LIMIT 1
{"sql": "SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"SME\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"LAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"KAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"SME\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"LAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"KAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"SME\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"LAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"KAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"SME\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"LAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = \"CZK\" AND T2.segment = \"KAM\" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T
SELECT T1.segment , max(T1.consumption) , min(T1.consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = 'SME' AND T2.date >= 2012 AND T2.date <= 2013 GROUP BY T1.segment
SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "August" INTERSECT SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "November" AND T1.Date < 2013
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" AND segment = "discount" DIFFERED FROM gasstations WHERE country = "Slovakia" AND segment = "discount"
SELECT Consumption - (SELECT min(Consumption) FROM yearmonth WHERE customerid = 5 AND date = '2013-04') FROM yearmonth WHERE customerid = 7
SELECT count(*) - count(*) FROM customers WHERE currency = 'CZK' - count(*) FROM customers WHERE currency = 'EUR'
SELECT t2.customerid , min(t1.consumption) FROM yearmonth AS t1 JOIN customers AS t2 ON t1.customerid = t2.customerid WHERE t1.date LIKE "10/%" AND t2.currency = "Euro" GROUP BY t2.customerid ORDER BY min(t1.consumption) DESC LIMIT 1
SELECT T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "KAM" GROUP BY T1.CustomerID ORDER BY T2.Consumption DESC LIMIT 1
SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "KAM" AND T1.Date LIKE "%2013%" AND T1.month = 5
SELECT count(*) * 100.0 / (select min(Consumption) FROM yearmonth WHERE customerid = (select customerid FROM yearmonth WHERE Consumption > 46.73)) FROM yearmonth GROUP BY customerid HAVING Consumption > 46.73
SELECT country , count(*) FROM gasstations GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) * 100.0 / (sum(count(*) * 100.0) ) FROM customers WHERE currency = 'EUR'
SELECT count(*) , avg(consumption) FROM yearmonth WHERE date LIKE "%2012%" AND consumption > 528.3
SELECT count(*) , country FROM gasstations WHERE country = 'Slovakian' AND segment = 'premium'
SELECT customerid FROM yearmonth WHERE date = "2013-09" GROUP BY customerid ORDER BY consumption DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2013-09" GROUP BY T1.segment ORDER BY sum(consumption) LIMIT 1
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012%" ORDER BY Consumption LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE Date LIKE "2012/%"
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T2.Description FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date = "2013-09"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID JOIN YEARMONTH AS T3 ON T3.Date = '2013-06'
SELECT T2.chainid FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.price = 1.0 AND T1.currency = "EUR"
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.amount > 100 AND T2.price > 100 AND T2.currency = "EUR"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012-%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro" AND T2 Consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.TransactionID WHERE T2.GasStationID = (SELECT GasStationID FROM gasstations WHERE Country = "Czech Republic")
SELECT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Date > "2012/1/1"
SELECT avg(T1.Price) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic"
SELECT avg(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T2.customerid FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.Date = "2012/8/25" ORDER BY T2.Amount DESC LIMIT 1
SELECT T3.Country FROM transactions_1k AS T1 JOIN customers AS T2 JOIN yearmonth AS T3 ON T1.CustomerID = T2.CustomerID AND T1.Date = T3.Date WHERE T1.Date LIKE "2012%" AND T3.Date LIKE "08%" AND T2.Segment = "Paid"
SELECT T2.currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012-08-24 16:25:00"
SELECT segment FROM customers WHERE customerid = (SELECT customerid FROM yearmonth WHERE date = '2012/8/23 21:20:00')
SELECT sum(amount) FROM transactions_1k WHERE date LIKE "2012%" AND TIME LIKE "08:00:00" AND price = 120.0
SELECT segment FROM customers ORDER BY customerid LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "%2012/%8/%24 12:%42:%00%"
SELECT ProductID FROM transactions_1k WHERE Date AND TIME = '2012/8/23 21:20:00'
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012-01-24" AND T2.Amount = 124.05
{"sql": "SELECT count(*) FROM transactions_1k WHERE date LIKE \"2012/%\" AND time BETWEEN \"08:%" "00\" AND \"09:%\" AND gasstationid = \"CZE\""}
SELECT T2.Currency FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013-%" AND T1.Amount = 214582.17
SELECT t1.country FROM gasstations AS t1 JOIN transactions_1k AS t2 ON t1.GasStationID = t2.GasStationID WHERE t2.ProductID = "667467"
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID JOIN yearmonth AS T3 ON T2.Date = T3.Date WHERE T3.Date LIKE "2012/08/24" AND T2.Amount = 548.4
SELECT count(*) FROM customers WHERE date = "2012/8/25" AND currency = "EUR"
SELECT (consumption - consumption_2012) / consumption_2012 FROM yearmonth WHERE date = '2012/8/25'
SELECT GasStationID FROM transactions_1k GROUP BY GasStationID ORDER BY sum(Amount) DESC LIMIT 1
SELECT count(*) / (select count(*) from customers where country = "SVK") * 100 FROM customers WHERE segment = "premium"
SELECT sum(T1.Amount) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.CustomerID = 38508 AND T1.Date LIKE "2012%"}
SELECT T1.ProductID , T1.Description , T1.productname FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid GROUP BY T1.productid ORDER BY sum(T2.amount) DESC LIMIT 5
SELECT avg(price) , customerid , currency FROM transactions_1k GROUP BY customerid ORDER BY avg(price) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = (SELECT ProductID FROM transactions_1k ORDER BY T2.Price DESC LIMIT 1)
SELECT T2.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T1.Price > 29.00 AND T1.ProductID = 5
