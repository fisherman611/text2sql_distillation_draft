SELECT max(percent (%) Eligible Free (K-12)) FROM frpm WHERE county = "Alameda"
SELECT min(FRPM Count (Ages 5-17)) FROM frpm WHERE Percent (%) Eligible Free (Ages 5-17) >= 50 AND Enrollment (Ages 5-17) = 1
SELECT zip FROM frpm WHERE county = "Fresno County Office of Education" AND charterschool = 'Y'
SELECT mailstreet FROM schools ORDER BY frpmcount (DESC) LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND charter = 'Y'
SELECT count(*) FROM schools WHERE virtual = 'Y' AND avgscrmath > 400
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.schooltype = 'Magnet' OR T1.schooltype = 'Magnet Program' AND T2.frpmscount (k12) > 500
SELECT T1.Phone FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T2.CDSCode = T3.cds WHERE T3.numge1500 > 0 GROUP BY T1.Phone ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Educational Option Type = "K-12" ORDER BY T2.FRPM Count (K-12) DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.CharterSchoolNumber = T3.CharterSchoolNumber WHERE T3.Eduopscode = 'Magnet' AND T1.avgscrmath > 560
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T3.cds = T1.cdscode WHERE T2.school = T3.school AND T3.rtype = "Read" AND T3.numgte1500 = 17 AND T1.edenrollment (Ages 5-17) GROUP BY T1.cdscode ORDER BY avgscrread DESC LIMIT 1
SELECT T1.CDSCode FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Enrollment > 500
SELECT max(FRPM Count (Ages 5-17)) FROM frpm WHERE Percent (%) Eligible Free (Ages 5-17) > 0.3
SELECT T1.Phone FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T2.CDSCode = T3.CDSCode ORDER BY avgscrwrite DESC LIMIT 3
SELECT T1.nceschool , T2.enrollment (Ages 5-17) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.enrollment (Ages 5-17) DESC LIMIT 5
SELECT T1.district FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T1.cdscode = T3.cds WHERE T2.county = 'Reading' GROUP BY T1.district ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools WHERE state = "Alameda" AND (numtsttaker < 100)
SELECT T1.schoolname , T2.charternum FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode WHERE avgscrwrite > 499 ORDER BY avgscrwrite
SELECT count(*) FROM frpm WHERE county = "Fresno" AND fundingtype = 'Directly funded' AND numtsttaker <= 250
SELECT t1.phone FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode JOIN satscores AS t3 ON t2.cdscode = t3.cds WHERE t3.avgscrmath = (SELECT max(avgscrmath) FROM satscores) GROUP BY t1.school ORDER BY t1.schoolname
SELECT count(*) FROM frpm WHERE Low Grade = 9 AND High Grade = 12 AND County = "Amador"
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = "Los Angeles" AND T2.FRAMECount (K-12) > 500 AND T2.FRAMECount (K-12) < 700
SELECT t1.school_name FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.county = "Contra Costa" ORDER BY t1.numtsttaker DESC LIMIT 1
SELECT T1.schoolname , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode JOIN schools AS T3 ON T1.cdscode = T3.cdscode WHERE T2.enrollment (K-12) - T3.enrollment (Ages 5-17) > 30
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.schoolname FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.numtsttaker >= 1500
SELECT T1.FundingType FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.district = "Riverside" AND avgscrmath > 400
SELECT T1.Street , T1.StreetAbr , T1.MailStreet , T1.MailStrAbr FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.schoolcode WHERE T1.State = 'Monterey' AND T2.Free Meal Count (Ages 5-17) > 800
SELECT T1.schoolname , T1.AvgScrWrite , T1.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.opendate > 1991 OR T1.closeddate < 2000
SELECT T1.schoolname , T1.doctype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.editionaltype = 'K-12' AND T2.educationaloptiontype = 'Local' GROUP BY T1.cdscode HAVING avg(T2.enrollment) - T2.enrollment > (SELECT avg(T2.enrollment) FROM schools AS T2 JOIN frpm AS T3 ON T2.cdscode = T3.cdscode WHERE T3.editionaltype = 'K-12' AND T3.educationaloptiontype = 'Local')
SELECT opendate FROM frpm ORDER BY enroll12 DESC LIMIT 12
SELECT city FROM frpm ORDER BY enroll12 LIMIT 5
SELECT percent (%) Eligible Free FROM frpm ORDER BY enrollment (DESC) LIMIT 10
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode ORDER BY T2.freemealcount (DESC) LIMIT 5
SELECT DISTINCT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000 AND T2.Percent (%) Eligible Free (Ages 5-17) >= 50% AND T2.Percent (%) Eligible FRPM (Ages 5-17) >= 50%
SELECT frpm.counts*(percent) FROM frpm JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.schoolname = "Kacey Gibson" AND frpm.enrollment (Ages 5-17)
SELECT T1.AdmEmail1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment = (SELECT min(Enrollment) FROM frpm WHERE Academic Year = 1 AND Charter School (Y/N) = 'Y' AND Grade = 12)
SELECT t1.admFName1 , t1.admFName2 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode JOIN satscores AS t3 ON t2.cdscode = t3.cds WHERE t3.numge1500 >= 1500 ORDER BY t1.admFName1 DESC LIMIT 1
SELECT street , city , zip , state FROM schools ORDER BY frpm-percent-eligible-free (K-12) LIMIT 1;
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.count (P2) BETWEEN 2000 AND 3000 AND T1.city = "Los Angeles"
SELECT avg(numtsttaker) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.opendate LIKE "1/1/1980%" AND T2.opendate LIKE "12/31/1980%" AND T2.county = "Fresno"
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.city = "Fresno" AND T2.rtype = "Read" GROUP BY T1.Phone ORDER BY avgscrread LIMIT 1
SELECT T2.SchoolName FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.AvgScrRead DESC LIMIT 5
SELECT T1.edopsname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T2.cdscode = T3.cdscode ORDER BY avgscrmath DESC LIMIT 1
SELECT avg(T1.AvgScrMath) , T1.County FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.county = (SELECT min(county) FROM schools) GROUP BY T1.county
SELECT avg(schools.AvgScrWrite) , schools.city FROM schools JOIN frpm ON schools.cdscode = frpm.cdscode JOIN satscores ON schools.cdscode = satscores.cds WHERE satscores.numge1500 >= 1500 GROUP BY schools.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.school WHERE T1.school = 'Ricci Ulrich'
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Enrollment (DESC) LIMIT 1
SELECT avg(count(*) ) , count(*) FROM schools WHERE county = 'Alameda County' AND district = 'Elementary School District' AND opendate = '1980'
SELECT (frpm.counts - satscores.counts) / (frpm.counts - satscores.counts) FROM frpm JOIN schools ON frpm.cdscode = schools.cdscode WHERE counties = "Orange County" INTERSECT SELECT (frpm.counts - satscores.counts) / (frpm.counts - satscores.counts) FROM schools WHERE counties = "Elementary School District"
SELECT T1.County , T1.ClosedDate FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1
SELECT T1.Street FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY avgscrmath DESC LIMIT 1
SELECT t1.street FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode JOIN schools AS t3 ON t2.cdscode = t3.cdscode JOIN satscores AS t4 ON t3.cdscode = t4.cds WHERE t3.school = (SELECT t5.school FROM schools AS t5 JOIN frpm AS t6 ON t5.cdscode = t6.cdscode JOIN schools AS t7 ON t6.cdscode = t7.cdscode JOIN satscores AS t8 ON t7.school = t8.cdscode GROUP BY t5.school ORDER BY avg(t8.AvgScrRead) LIMIT 1)
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode WHERE T1.mailcity = "Lakeport" AND sum(T2.numge1500) >= 1500
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailCity = "Fresno"
SELECT mailzip , school FROM schools WHERE admfname1 = 'Avetik Atoian'
SELECT count(*) , count(*) FROM frpm WHERE mailstate = 'CA' AND county = 'Colusa' INTERSECT SELECT count(*) , count(*) FROM frpm WHERE mailstate = 'CA' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = 'San Joaquin'
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY avgScrWrite LIMIT 333
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT school.name , website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.admfname1 = "Mike Larson" INTERSECT SELECT school.name , website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.admfname2 = "Dante Alvarez"
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charterschool (Y/N) = 'P' AND T1.state = "San Joaquin"
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.city = 'Hickman' AND T1.charterschool = 'Y' AND T1.charterschoolnumber = 'Elementary School District'
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND percent (%) Eligible Free (K-12) < 0.18% AND not charterschool
SELECT T1.admFName1 , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charterschoolnumber = 00D2
SELECT count(*) FROM schools WHERE mailcity = 'Hickman' AND charternum = 00D4
SELECT count(*) , fundingtype FROM frpm WHERE county = "Santa Clara" AND charterschool (Y/N) = 'Char' GROUP BY fundingtype ORDER BY count(*) , fundingtype LIMIT 1
SELECT count(*) FROM frpm WHERE opendate BETWEEN '01/01/2000' AND '12/31/2005' AND county = 'Stanislaus'
SELECT sum(t1.frpmcount) FROM frpm AS t1 JOIN schools AS t2 ON t1.cdscode = t2.cdscode WHERE t2.city = "San Francisco" AND t1.academicyear = 1989 AND t1.districttype = "Community College District"
SELECT county FROM frpm WHERE academic year = 1980 AND closeddate != "null" AND edopscode = "CEA" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.NCESDist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode WHERE T3.State = 'PA' AND T3.School = 'Special'
SELECT count(*) , statustype FROM frpm WHERE county = "Alpine" AND districttype = "CDS" GROUP BY statustype
SELECT district FROM frpm EXCEPT SELECT district FROM schools WHERE magnet = 'Y' AND city = 'Fresno'
SELECT count(*) FROM frpm WHERE schoolcode = 'State Special School' AND academic year = 2014-2015 AND enrollment (Ages 5-17) BETWEEN 5 AND 17
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.mailstrabr = 'PO Box 1040' AND T1.schoolname = 'Youth Authority School' AND T1.age <= 17
SELECT min(t1.low_grade) FROM frpm AS t1 JOIN schools AS t2 ON t1.cdscode = t2.cdscode WHERE t2.ncesdist = 0613360 AND t1.districttype = "Special Education"
SELECT T1.edopsname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.frpmscount (k12) = 2 AND T2.countycode = 37
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.edopsname = "High School" AND T2.lunch Provision = 2 AND T2.lowgrade = 9 AND T2.highgrade = 12 AND T2.county = "Merced"
SELECT T1.schoolname , T2.Percent (%) Eligible FRPM (Ages 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T1.county = "Los Angeles" AND T1.GSoffered = "K-12" AND T1.GSserved = "9-12"
SELECT gserved FROM frpm WHERE city = "Adelanto" GROUP BY gserved ORDER BY count(*) DESC LIMIT 1
SELECT county FROM schools WHERE state = "San Diego" AND district TYPE != "Physical" INTERSECT SELECT county FROM schools WHERE state = "Santa Barbara" AND district TYPE != "Physical" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT T1.City , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "California" ORDER BY T1.Latitude LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.GSoffered = "Kindergarten" AND T2.GSserved = "8th grade" AND T2.Magnet = 1 GROUP BY T1.city
SELECT AdmFName1 , district FROM schools GROUP BY district ORDER BY count(*) DESC LIMIT 2
SELECT DISTINCT t1.districtcode FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.admfname1 = "Alusine"
SELECT t1.admlname3 , t1.county , t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charternum = 40
SELECT DISTINCT t1.admemail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.county = "San Bernardino" AND t2.district = "City of San Bernardino City Unified" AND t2.edopsname = "Public Intermediate/Middle Schools" AND t2.edopsname = "Unified Schools" AND t1.opendate BETWEEN "01/01/2009" AND "12/31/2010"
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T2.cdscode = T3.cds GROUP BY T1.schoolname ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM account WHERE district = "East Bohemia") AND operation = "issuance"
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id IN (SELECT district_id FROM district WHERE city = 'Prague')
SELECT avg(unemployment) FROM disp WHERE YEAR = 1995 INTERSECT SELECT avg(unemployment) FROM disp WHERE YEAR = 1996 ORDER BY avg(unemployment) LIMIT 1
SELECT count(*) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND avg(T1.A2) > 6000 AND avg(T1.A2) < 10000;
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.A7 = "North Bohemia" GROUP BY T1.district_id HAVING avg(T1.salary) > 8000
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date DESC LIMIT 1 INTERSECT SELECT account_id FROM client WHERE gender = 'female' ORDER BY avg(salary) ASC LIMIT 1 AND avg(salary) - avg(salary) DESC LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.birth_date = (SELECT birth_date FROM client ORDER BY birth_date LIMIT 1) GROUP BY T2.account_id ORDER BY avg(T2.type) DESC LIMIT 1
SELECT count(*) FROM disp WHERE TYPE = "statement of weekly issuance" AND operation = "Owner"
SELECT client_id FROM disp WHERE operation = 'Disponent'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1997%" ORDER BY T2.amount LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 12 AND T1.date LIKE "1993%" ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'F' AND T1.birth_date < 1950 AND T2.district_id = 'Sokolov'
SELECT account_id FROM account WHERE date LIKE "1995%" ORDER BY date LIMIT 1
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date < "1997-01-01" AND T2.amount > 3000
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.issued = "1994/3/3"
SELECT T1.date , T1.operation , T1.amount , T1.balance FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 840 AND T1.date LIKE "1998/10/14";
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1994/08/25";
SELECT max(T2.amount) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.client_id = (SELECT client_id FROM card WHERE disp_id = (SELECT disp_id FROM card WHERE issued = 1996-10-21))
SELECT T1.gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id GROUP BY T2.district_id ORDER BY avg(T2.frequency) DESC LIMIT 1
SELECT T3.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.status = 'open' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Jesenik' AND T1.gender = 'female'
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'Loan' AND T1.date LIKE "1998/09/02%" AND T1.amount = 5100
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date LIKE "1996%" AND T2.A3 = "Litomerice"
SELECT T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'Female' AND T1.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/03";
SELECT T1.account_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.district_id = 123 AND T1.district_id = 123
SELECT T1.gender , % of male clients FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A5 = "south Bohemia" GROUP BY T1.gender ORDER BY count(*) DESC LIMIT 1
SELECT (T3.balance - T2.balance) / T2.balance FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN loan AS T3 ON T1.account_id = T3.account_id WHERE T3.date = '1993-07-05' AND T2.date = '1993-03-22' AND T3.status = 'approved' ORDER BY T3.duration;
SELECT count(*) FROM loan WHERE status = 'Fully Paid'
SELECT count(*) FROM loan WHERE amount < 100000
SELECT T1.account_id , T2.A3 , T2.A13 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date - T2.date > 0 AND T1.type = 'IN' AND T1.operation = 'Issue' AND T1.date LIKE '1993%'
SELECT T1.account_id , count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A4 = 'east Bohemia' AND T1.year = 1995 OR T1.year = 1996 OR T1.year = 1997 OR T1.year = 1998 OR T1.year = 1999 OR T1.year = 2000 GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id = 'Prachatice'
SELECT T2.district , T2.region FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.loan_id = '4990'
SELECT T1.account_id , T2.district , T2.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 300000
SELECT T2.loan_id , T3.district , avg(T1.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id GROUP BY T2.loan_id HAVING T1.duration = 60
SELECT T1.district_id , T2.A3 , avg(T2.A3 - T1.A3) FROM account AS T1 JOIN client AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'Running' AND T2.district_id IN (SELECT district_id FROM client WHERE gender = 'female' AND birth_date = '1995-04-15') GROUP BY T1.district_id
SELECT %frequency FROM account WHERE date = '1993' AND district_id = 102
SELECT account_id FROM account WHERE frequency = "monthly"
SELECT district_id FROM client GROUP BY district_id ORDER BY count(*) DESC LIMIT 13
SELECT T1.district_id , sum(T2.amount) FROM district AS T1 JOIN card AS T2 ON T1.district_id = T2.disp_id WHERE T2.type = 'debit' AND T2.date LIKE "1996-01-01%" GROUP BY T1.district_id ORDER BY sum(T2.amount) DESC LIMIT 10;
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A4 = "South Bohemia") AND district_id NOT IN (SELECT district_id FROM card)
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.status = 'Active' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE client_id IN (SELECT client_id FROM client WHERE gender = "M")
SELECT T1.A3 , T1.A12 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date = "1996/04/15" GROUP BY T1.A3 ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE date LIKE "%1996%"
SELECT count(*) FROM card AS T1 JOIN trans AS T2 ON T1.trans_id = T2.trans_id WHERE T1.type = 'Credit' AND T2.balance < 0
SELECT count(*) FROM loan WHERE amount BETWEEN 250000 AND 500000 AND status = 'approved' AND date >= '1995-01-01' AND date <= '1997-12-31'
SELECT count(*) FROM account WHERE district_id = 1 AND duration > 0
SELECT count(*) FROM client WHERE gender = 'M' AND district_id IN (SELECT district_id FROM disp GROUP BY district_id ORDER BY count(*) DESC LIMIT 1) AND YEAR (date) = 1995
SELECT count(*) FROM card WHERE TYPE = "high-level credit card" AND disp_id IN (SELECT disp_id FROM disp WHERE TYPE = "owner")
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A7 = "Pisek"
SELECT T1.district_id FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.date LIKE "1997%" AND T2.operation = "transfer" AND amount > 10000
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id JOIN disp AS T3 ON T3.account_id = T1.account_id WHERE T3.type = 'Pisek' AND T2.amount > 0
SELECT T1.account_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Credit' AND T2.disp_id = 'Gold'
SELECT avg(amount) FROM card WHERE TYPE = 'Credit' AND date LIKE "2021/%"
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1998%" AND T2.operation = "Credit" AND T2.amount < (SELECT avg(amount) FROM loan)
SELECT DISTINCT T1.gender , T1.account_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN disp AS T3 ON T1.district_id = T3.district_id JOIN card AS T4 ON T3.account_id = T4.account_id WHERE T1.gender = 'F' AND T3.type = 'Card' AND T2.status = 'L'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T3.district_id = T2.district_id WHERE T1.gender = 'female' AND T3.district_id = (SELECT district_id FROM district WHERE A2 = 'South Bohemia')
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Tabor"
SELECT DISTINCT T1.type , avg(T2.A1) FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type != 'Loan' AND T2.district_id = (SELECT district_id FROM account GROUP BY district_id HAVING avg(T2.A1) > 8000 AND avg(T2.A1) < 9000)
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A5 = "North Bohemia" AND T2.bank = "AB"
SELECT DISTINCT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.operation = 'withdraw'
SELECT avg(T1.crim) FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = "Customer" AND T1.issued >= 1997 GROUP BY T2.district_id HAVING avg(T1.crim) > 4000
SELECT count(*) FROM card WHERE TYPE = "classic"
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Hl.m. Praha') AND gender = 'M'
SELECT count(*) * 100.0 / count(*) FROM card WHERE issued < "1998" AND TYPE = "Gold"
SELECT T1.client FROM client AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = "1995-04-01" AND T2.district_id = 532
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T3.amount FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN loan AS T3 ON T1.client_id = T3.client_id WHERE T1.type = 'Cash' AND T1.client_id = 3356
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE amount < 200000
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 13539
SELECT T1.A3 FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = "finished with no problems" GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.client_id FROM disp AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T1.disp_id = 32423
SELECT DISTINCT T1.operation FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account WHERE district_id = 13
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = "Junior Credit Card" AND T2.issued > "1996"
SELECT count(*) * 100.0 / count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A5 > 10000 AND T1.gender = 'F'
SELECT sum(T2.amount) - sum(T1.amount) , T1.gender FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'Male' AND T1.birth_date >= '1996-04-01' AND T1.birth_date <= '1997-04-01' GROUP BY T1.gender
SELECT count(*) FROM trans WHERE date > '1995' AND operation = 'credit'
SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "East Bohemia" AND T2.date = "1996-04-15" UNION SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "North Bohemia" AND T2.date = "1996-04-15"
SELECT count(*) , disp_id FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 3 AND T2.operation = 'release'
SELECT T1.gender , T1.birth_date FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130
SELECT count(DISTINCT T1.account_id) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'request'
SELECT sum(T1.amount) , T1.status FROM loan AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 992 GROUP BY T1.status
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 4 AND T2.operation = 851
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT sum(T1.amount) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1998%" AND T1.client_id = 617
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.gender = "M" AND T3.type = "Bank" AND T3.district_id = 13 AND T3.frequency = 1 AND T3.date > "1983-01-01" AND T3.date < "1987-01-01"
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'F' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND T1.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T2.amount > 4000
SELECT count(*) FROM account WHERE district_id = 'Beroun' AND date > '1996'
SELECT count(*) FROM card AS T1 JOIN client AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = "Junior" AND T2.gender = "Female"
SELECT count(*) FROM account AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T1.district_id = (SELECT district_id FROM district WHERE city = "Prague") AND T2.gender = "female"
SELECT count(*) , %s FROM client WHERE gender = 'M'
SELECT count(DISTINCT client_id) FROM disp WHERE TYPE = "weekly issuance"
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration LIKE "24:%" ORDER BY T2.date LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'female' ORDER BY T2.birth_date LIMIT 1 UNION SELECT T1.account_id FROM account AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'female' GROUP BY T1.account_id ORDER BY avg(T2.birth_date) LIMIT 1
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM client WHERE birth_date = '1920' AND A2 = 'east Bohemia')
SELECT count(*) FROM loan WHERE duration LIKE "24 months"
SELECT max(T1.amount) , T2.date FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'running' GROUP BY T2.date
SELECT DISTINCT T1.client_id , T1.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id IN (SELECT client_id FROM loan) OR T1.client_id IN (SELECT client_id FROM order WHERE TYPE = 'permanent')
SELECT T1.client_id , T1.client_age FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'high' AND T2.account_id IN (SELECT account_id FROM loan WHERE status = 'eligible')
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element = "Cl"
SELECT avg(T1.element) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single-bonded'
SELECT avg(count(*) ) FROM bond WHERE bond_type = 'single'
SELECT count(*) FROM atom WHERE element = 'Na' AND bond_type = 'non-carcinogenic'
SELECT T2.molecule_id , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple' INTERSECT SELECT T2.molecule_id , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'carcinogenic'
SELECT count(*) FROM atom WHERE element = 'C' AND bond_type = 'double-bond'
SELECT count(*) FROM bond WHERE bond_type = 'triplet'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "carcinogenic" ORDER BY T1.molecule_id LIMIT 100
SELECT DISTINCT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C"
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'TR004_8_9')
SELECT element FROM bond WHERE bond_type = 'double'
SELECT count(*) FROM atom WHERE element = 'H' GROUP BY label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = "chlorine"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'atom' INTERSECT SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'bond' INTERSECT SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'atom' AND T1.element != 'carcinogen'
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element ORDER BY count(*) LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id = (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = "TR004_8" AND T1.atom_id2 = "TR004_20")
SELECT label FROM molecule EXCEPT SELECT label FROM atom WHERE element = 'tin'
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'iodine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'sulfur'
SELECT DISTINCT T1.atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_id = "triple"
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = 'TR' AND T2.molecule_id = 181)
SELECT count(*) FROM atom WHERE element != 'Fluorine'
SELECT count(*) FROM bond WHERE bond_type = 'triple' AND element = 'carcinogenic'
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000" GROUP BY T1.element ORDER BY count(*) DESC LIMIT 3
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_2_6'
SELECT count(*) - count(*) , count(*) FROM molecule WHERE label = 'carcinogenic' INTERSECT count(*) WHERE label = 'not carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR000_2_5'
SELECT bond_id FROM bond JOIN connected ON bond.bond_id = connected.bond_id WHERE atom_id = 2 AND connected.atom_id = 2
SELECT T1.molecule_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY T1.molecule_id ASC LIMIT 5
SELECT count(*) / (SELECT count(*) FROM bond) FROM bond WHERE bond_type = "double"
SELECT count(*) * 100.0 FROM atom WHERE element = "carcinogen"
SELECT count(*) FROM atom WHERE element = 'H' AND molecule_id = 206
SELECT bond_type FROM bond WHERE molecule_id = (SELECT molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000")
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id = "TR060" AND T1.element = "toxic"
SELECT bond_type , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR010" AND T2.label = "Carcinogenic" GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT T1.molecule FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single' EXCEPT SELECT molecule FROM molecule AS T1 JOIN connected AS T2 ON T1.molecule_id = T2.bond_id GROUP BY molecule_id HAVING count(*) >= 3 ORDER BY molecule_id
SELECT bond_type FROM bond WHERE molecule_id = :molecule_id ORDER BY bond_type LIMIT 2
SELECT count(*) FROM bond AS T1 JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 12 AND T1.molecule_id = 3456
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , T2.atom_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = 'TR001_6_9'
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 'TR001_10'
SELECT count(*) FROM bond WHERE bond_type = "triple"
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 19
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004" AND T1.element = "toxic"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" AND T1.atom_id = 21 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" AND T1.atom_id = 22 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" AND T1.atom_id = 23 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" AND T1.atom_id = 24 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" AND T1.atom_id = 25
SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'P' INTERSECT SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'N'
SELECT count(*) FROM bond WHERE bond_type = 'double'
SELECT avg(T1.atom_id) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "iodine"
SELECT bond_type , bond_id FROM bond WHERE bond_id = (SELECT bond_id FROM connected WHERE atom_id = 45)
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" AND T1.bond_type = "triple bond"
SELECT element FROM atom WHERE atom_id = (SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom WHERE element = "TR" AND 8_19 = 1)
SELECT t1.molecule_id FROM bond AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.bond_type = "double" GROUP BY t1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT atom_id FROM atom WHERE element = 'lead' INTERSECT SELECT atom_id FROM connected WHERE atom_id = atom_id2
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = T3.bond_id AND T3.bond_type = 'double'
{"sql": "SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = T2.bond_id GROUP BY T1.element HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON
SELECT count(*) FROM bond WHERE bond_type = 'single' INTERSECT SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT sum(atom_id) FROM atom WHERE element = 'C' UNION SELECT sum(atom_id) FROM atom WHERE element = 'H'
SELECT atom_id FROM atom WHERE element = 'S'
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "Tin"
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT sum(T1.element) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T3.label = 'triple bond' AND T1.element = 'phosphorus' OR T1.element = 'bromine'
SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single' AND T1.element = 'Cl' GROUP BY T1.element
SELECT label FROM molecule WHERE molecule_id = 'TR000' OR molecule_id = 'TR001' OR molecule_id = 'TR002'
SELECT molecule_id FROM molecule WHERE label != 'carcinogenic'
SELECT sum(t1.element) FROM atom AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.molecule_id BETWEEN TR000 AND TR030
SELECT bond_type FROM bond WHERE molecule_id BETWEEN TR000 AND TR050
SELECT element FROM bond WHERE bond_id = 'TR001_10_11'
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'iodine'
SELECT count(*) FROM atom WHERE element = 'Calcium' GROUP BY molecule_id HAVING count(*) > (SELECT count(*) FROM atom WHERE element = 'Calcium')
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T3.atom_id = T2.bond_id WHERE T1.element = 'Cl' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T3.atom_id = T2.bond_id WHERE T1.element = 'C'
SELECT T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple" EXCEPT SELECT molecule_id FROM atom WHERE element = "carbon"
SELECT count(*) , element FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR001"
SELECT bond_type FROM bond WHERE bond_type = "double"
SELECT T1.atom_id , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR000_1_2'
SELECT count(*) FROM bond WHERE bond_type = 'single' AND bond_type NOT IN ('carcinogenic', 'mutagenic')
SELECT label FROM molecule WHERE molecule_id = 'TR001_10_11'
SELECT bond_id , count(*) FROM bond WHERE bond_type = 'triple' GROUP BY bond_id HAVING count(*) >= 2
{"sql": "SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'toxic' AND T1.atom_id , T2.atom_id , T2.molecule_id , T2.label , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.molecule_id , T2.m
SELECT count(*) , element FROM atom WHERE molecule_id = "TR006" GROUP BY element
SELECT count(*) FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE element = "Ca" AND T1.molecule_id IN (SELECT molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE label = "carcinogenic")
SELECT bond_type FROM bond JOIN atom ON bond.molecule_id = atom.molecule_id WHERE element = "Carbon"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_10_11'
SELECT count(*) FROM bond WHERE bond_type = 'triple-bond'
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR047" AND T1.bond_type = "double-bond"
SELECT count(*) FROM atom WHERE element = "TR001_1" AND molecule_id IN (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING count(*) > 1)
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR151' AND T2.element = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = 151 AND element = 'toxic'
SELECT count(*) FROM compound WHERE compound_id IN (SELECT compound_id FROM compound_carcinogenic)
SELECT atom_id FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = 'carbon'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic compounds'
SELECT bond_id FROM bond WHERE bond_type = 'double bond' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'hydrogen' AND T2.label = 'carcinogenic compound'
SELECT T1.molecule_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "TR000_1_2" AND T2.element = "TR000_1"
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'carbon' AND molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = 'carcinogenic' )
SELECT count(*) , element FROM atom WHERE element = 'hydrogen' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic' )
SELECT count(*) FROM atom WHERE element = 'carcinogenic' AND molecule_id = 'TR124'
SELECT element FROM atom WHERE atom_id = 186
SELECT bond_type FROM bond WHERE molecule_id = 19 AND bond_id = 4
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id2 FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = "2_4" )
SELECT count(*) , count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T3.molecule_id = T2.atom_id WHERE T3.label = "TR006" AND T1.bond_type = "double" AND T3.label = "carcinogenic"
SELECT element , T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'carcinogenic'
SELECT bond_type , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'single'
SELECT T1.molecule_id , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.bond_id WHERE T2.bond_type = "TR000_2_3"
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "Cl"
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" AND T2.label = "carcinogenic"
SELECT count(*) FROM atom WHERE element != 'sulphur' AND bond_type != 'double'
SELECT T1.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "carcinogenic" AND T1.bond_id = "TR001_2_4"
SELECT count(*) FROM atom WHERE molecule_id = 'TR001'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T1.molecule_id , T1.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'cl' AND T2.label = 'carcinogenic'
{"sql": "SELECT molecule FROM atom WHERE element = 'c' EXCEPT SELECT molecule FROM atom WHERE element = 'carcinogen'}
SELECT count(*) FROM atom WHERE element LIKE '%Chlorine%'
SELECT bond_id FROM bond WHERE bond_type = 'single' AND bond_id = 'TR001_1_7'
SELECT count(*) FROM bond WHERE bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE bond_id IN (SELECT T1.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 'TR000_1' INTERSECT SELECT T1.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T2.atom_id = 'TR000_2')
SELECT molecule FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR000" AND T2.element = "carcinogenic"
SELECT count(*) , count(*) / (SELECT count(*) FROM bond WHERE bond_type = 'single' ) FROM atom
SELECT count(*) FROM atom WHERE element = 'N'
SELECT T1.molecule_id , T1.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "S" AND T1.bond_type = "double bond"
SELECT molecule_id , count(*) FROM atom GROUP BY molecule_id HAVING sum(element) > 5
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id AND T3.bond_type = 'double' WHERE T2.label = 'TR024'
SELECT molecule_id , T1.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.bond_type = "Hidrogen" AND T2.element = "C" GROUP BY T1.label HAVING count(*) = 3
SELECT count(*) FROM atom WHERE element = 'carcinogenic';
SELECT count(*) FROM bond WHERE bond_type = 'single' AND molecule_id IN (SELECT molecule_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom WHERE molecule_id BETWEEN TR004 AND TR010))
SELECT count(*) FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR008') AND element = "C"
SELECT element FROM atom WHERE atom_id = "TR004_7" EXCEPT SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = "carcinogenic")
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "O" AND T2.bond_type = "double"
SELECT count(*) FROM bond WHERE bond_type = "triple" EXCEPT SELECT count(*) FROM bond WHERE bond_type = "carcinogenic"
SELECT element , bond_type FROM bond WHERE molecule_id = "TR002"
SELECT atom_id FROM atom WHERE molecule_id = 12 AND element = "double"
SELECT atom_id FROM atom WHERE element = "o"
SELECT name FROM cards WHERE power = 'incredible'
SELECT asciiName FROM cards WHERE isTextless = 1 AND cardKingdomFoilId != (SELECT id FROM cards WHERE power = 'powerful')
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE frameVersion = "EDH" AND edhrecRank < 100 AND frameEffects = "2015"
SELECT count(*) FROM cards WHERE rarity = "mythic" AND id NOT IN (SELECT T1.id FROM legalities AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.format = "gladiator")
SELECT T2.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.type = 'cards' AND count(*) > 1
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" INTERSECT SELECT T1.id , T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "legal" AND T1.power = "unknown"
SELECT T1.name , T1.flavorText , T1.rarity , T2.hasContentWarning , T2.hasFoil , T2.isOnlineOnly FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = 'Stephen Daniel' AND T1.rarity = 'High'
SELECT T2.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = 74s
SELECT T1.name , T1.artist , T1.isPromo , T2.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid JOIN rulings AS T3 ON T1.uuid = T3.uuid GROUP BY T1.uuid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.number = 29 AND T1.isAlternative = 1
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavortext WHERE T2.language = "Japanese"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE availability = 'Chinese Simplified') AS percentage
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "italian" GROUP BY T1.name
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd" AND originalType = "card art";
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = "infinity"
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen";
{"sql": "SELECT originalType FROM cards WHERE name = 'Ancestor\'s Chosen'"}
SELECT T2.language FROM cards AS T1 JOIN sets AS T2 ON T1.uuid = T2.code WHERE T1.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" AND T1.isTextless = false
SELECT T1.flavorText FROM foreign_data AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Condemn"
SELECT count(*) FROM cards WHERE isReserved = 'Y' AND isStarter = 'Y' AND TYPE = 'legalities'
SELECT status FROM legalities WHERE uuid = (SELECT id FROM cards WHERE name = 'Cloudchaser Eagle')
SELECT TYPE FROM cards WHERE name = "Benalish Knight"
SELECT flavorText FROM cards WHERE name = "Benalish Knight"
SELECT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE borderColor != "borderless") FROM cards WHERE borderColor != "borderless"
SELECT count(*) FROM cards WHERE isReprint = 'Y' AND scryfallillustrationid IN (SELECT scryfallillustrationid FROM foreign_data WHERE LANGUAGE = 'de')
SELECT count(*) FROM cards WHERE isTextless = 'borderless' AND flavorText = 'Russian'
SELECT count(*) * (flavorText LIKE '%French%') FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.id WHERE T2.isStorySpotlight = 1
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = "Aaron Boyd"
SELECT count(*) FROM cards WHERE borderColor = "black" AND cardKingdomFoilId = "mtgo"
SELECT id FROM cards WHERE convertedmanaCost = 0
SELECT layout FROM cards WHERE keywords = 'flying'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT id FROM cards WHERE power = 'incredible' INTERSECT SELECT id FROM cards WHERE power != 'incredible'
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = "2015"
SELECT T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.asciiName WHERE T2.language = "Chinese Simplified"
SELECT name FROM cards WHERE availability = 'available' INTERSECT SELECT T2.name FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE language = 'Japanese'
SELECT count(*) FROM cards WHERE borderColor = "white"
SELECT T2.uuid , T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.cardKingdomId = "legacy"
SELECT text FROM rulings WHERE date = "Beacon of Immortality"
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = "future" GROUP BY T2.status
SELECT colorIdentity , borderColor FROM cards WHERE setCode = "OWG"
SELECT T2.flavorText , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.cardKingdomFoilId = 10E AND T1.convertedManaCost = 5
SELECT T1.name , T1.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = "Creature - Elf" INTERSECT SELECT T1.name , T1.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = "Creature - Human"
SELECT colorIdentity , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.name WHERE T1.colorindicator = "Black" INTERSECT SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.language = "Flavor Text"
SELECT name FROM cards WHERE rarity = 'uncommon' ORDER BY originalReleaseDate ASC LIMIT 3
SELECT count(*) FROM cards WHERE isFoil = 'true' AND power != 'non-powerful' AND artist = "John Avon";
SELECT count(*) FROM cards WHERE colorIndicator = 'white' AND power = 'strong' AND borderColor = 'border';
SELECT count(*) FROM cards WHERE printings = 'mtgo' AND originaltype = 'card' AND artist = 'UDON' AND TYPE = '1' AND maxHandSize = -1
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND hasContentWarning = "S"
SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "black" AND availability = "paper" AND availability = "mtgo"
SELECT sum(manaCost) FROM cards WHERE artist = "Rob Alexander"
SELECT DISTINCT TYPE FROM cards WHERE mtgArenaId = "all"
SELECT setcode FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode JOIN FOREIGN_DATA AS T3 ON T3.id = T2.language WHERE T3.language = "Spanish"
SELECT count(*) * 100.0 / count(*) FROM cards WHERE isOnlineOnly = 'Y' AND frameEffects = 'legendary' GROUP BY frameEffects
SELECT count(*) FROM cards WHERE isTextless = 'false'
SELECT count(*) , flavortext FROM foreign_data WHERE LANGUAGE = "es" ORDER BY flavorname
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.number = (SELECT number FROM cards WHERE count(*) = 309)
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN foreign_data AS T3 ON T3.id = T2.language WHERE T3.language = "Portuguese" AND T3.multiverseid = "BR-1"
SELECT T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "Legal"
SELECT DISTINCT TYPE FROM cards WHERE TYPE LIKE '%card%' AND language = 'de'
SELECT count(*) FROM cards WHERE power = 'triggered'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN foreign_data AS T3 ON T3.uuid = T2.format WHERE T2.text = "This is a triggered mana ability." AND T3.format = "pre-modern" EXCEPT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN foreign_data AS T3 ON T3.uuid = T2.format WHERE T3.format = "pre-modern" AND T1.id = T2.id GROUP BY T1.id HAVING count(*) = 2
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.isPromo = 'PAUPER' AND T2.format = 'paper' AND T1.artist = 'Erica Yang'
SELECT artist FROM cards WHERE text = 'Das perfekte Gegenmittel zu einer dichten Formation'
SELECT T1.flavorText , T1.language , T1.multiverseid FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = "Creature" AND T2.layout = "normal" AND T2.borderColor = "black" AND T2.artist = "Matthew D. Wilson" FROM foreign_data AS T3 JOIN sets AS T4 ON T3.multiverseid = T4.id JOIN rulings AS T5 ON T4.id = T5.uuid JOIN set_translations AS T6 ON T4.code = T6.code WHERE T3.type = "foreign" AND T5.status = "active" AND T6.format = "text" AND T6.language = "French"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.date = '01/02/2007' AND T1.rarity = 'print'
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.cardKingdomId = "Ravnica" AND count(*) = 180
SELECT count(*) * 100 / count(*) FROM cards WHERE cardKingdomId = "commander" INTERSECT SELECT count(*) * 100 / count(*) FROM legalities WHERE status != "content warning"
SELECT count(*) * 100 / count(*) FROM cards WHERE power = "null" AND flavorText = "French"
SELECT count(*) * 100.0 / count(*) FROM set_translations AS T1 JOIN FOREIGN_DATA AS T2 ON T1.code = T2.code JOIN sets AS T3 ON T3.code = T2.parentcode WHERE T2.language = "Japanese" AND T3.type = "Expansion"
SELECT printings FROM cards WHERE artist = "Daren Bader"
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor = "none"
SELECT count(*) FROM cards WHERE isOversized = 'Y' AND isReprint = 'Y' AND promoTypes = 'Promotion'
SELECT asciiName FROM cards WHERE isPromo = 'Y' AND cardKingdomFoilId != "null" ORDER BY asciiName LIMIT 3
SELECT flavorText FROM cards WHERE multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId DESC LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT number FROM cards WHERE subtypes = "Angel" INTERSECT SELECT number FROM cards WHERE subtypes = "Wizard" GROUP BY number HAVING count(*) > 1
SELECT name FROM sets WHERE isOnlineOnly != 'Magic: The Gathering Online' ORDER BY name LIMIT 3
SELECT DISTINCT T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.setcode = "Archenemy" AND T1.setcode = "ARC"
SELECT T1.name , T2.translation FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.number = 5
SELECT T2.language , T2.promoTypes FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 206
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavortext JOIN sets AS T3 ON T3.code = T2.setcode WHERE T2.language = "Italian" AND T3.block = "Shadowmoor" ORDER BY T1.id LIMIT 2
SELECT id FROM cards WHERE hasfoil AND flavortext = "Japanese" INTERSECT SELECT id FROM cards WHERE hasfoil AND flavortext = "Japanese" AND availability != 'Outside of the United States'
SELECT name FROM sets AS T1 JOIN foreign_data AS T2 ON T1.code = T2.name WHERE LANGUAGE = "ru" ORDER BY totalSetSize DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T2.language = 'Chinese Simplified' AND T1.isOnlineOnly = 'yes'
SELECT count(*) FROM cards WHERE name = flavortext AND language = 'Japanese' EXCEPT SELECT count(*) FROM cards WHERE name = flavortext AND language = 'Magic: The Gathering Online'
SELECT id FROM cards WHERE colorindicator = "black"
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT name FROM cards WHERE isFullArt = 'Y' AND borderColor = 'black'
SELECT T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT flavorText FROM foreign_data WHERE name = "A Pedra Fellwar"
SELECT T1.code FROM sets AS T1 JOIN cards AS T2 ON T1.id = T2.releasedate WHERE T2.originalReleaseDate = "07/13/2007"
SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1.name = "Masques" AND T1.name = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT T2.flavorName , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.watermark = 'boros'
SELECT T1.language , T1.flavorText , T2.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.colors = 'colorpie'
SELECT count(*) FROM cards WHERE convertedManaCost = 10 AND cardKingdomFoilId = 'Abyssal Horror'
SELECT code FROM sets WHERE parentCode = 'Expansion Commander'
SELECT T1.name , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T2.flavorText = "abzan"
SELECT T1.language , T2.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'azorius'
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power = "incredibly powerful";
SELECT count(*) FROM cards WHERE hand > 0 AND cardKingdomFoilId = 'paper' AND cardKingdomId = 'positive'
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.text WHERE hasContentWarning = 'Y'
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = 'white' AND power = 'unknown'
SELECT faceName FROM cards WHERE isPromo = 'Y' GROUP BY faceName HAVING count(*) > 1
SELECT DISTINCT TYPE FROM cards WHERE name = 'Molimo, Maro-Sorcerer'
SELECT purchaseUrls FROM cards WHERE isPromo = "bundle"
SELECT count(*) FROM cards WHERE borderColor = "black" AND printings = "arena" INTERSECT SELECT count(*) FROM cards WHERE borderColor = "black" AND printings = "mtgo"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper" ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE promoTypes = "cardKingdomFoilId" AND flavorName = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE originalReleaseDate LIKE "2003%" ORDER BY convertedManaCost DESC LIMIT 3;
SELECT T2.flavorName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T1.name = "Ancestor's Chosen"
SELECT count(*) FROM set_translations AS T1 JOIN cards AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Angel of Mercy'
SELECT name FROM cards WHERE cardKingdomFoilId = "Hauptset Zehnte Edition"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.name WHERE T1.asciiName = "Ancestor's Chosen" AND T2.language = "ko"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.id WHERE T2.status = "R" AND T1.artist = "Adam Rex"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Hauptset Zehnte Edition"
SELECT T2.flavortext FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Eighth Edition"
SELECT count(*) FROM cards WHERE name = "Angel of Mercy" AND isOnlineOnly = 1
SELECT T1.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T2.name = "Ancestor's Chosen"
SELECT T1.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T2.name = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT count(*) FROM cards WHERE isforeignonly = 'T' AND name = "Adarkar Valkyrie" AND originalreleasedate != "2020-04-21" - 1000
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN cards AS T3 ON T2.setcode = T3.number WHERE T2.language = "italian" AND T1.baseSetSize < 100
SELECT count(*) FROM cards WHERE setcode = "Coldsnap" AND borderColor = "black"
SELECT name FROM cards WHERE cardKingdomFoilId = "Coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Coldsnap" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Jeremy Jarvis" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Aaron Miller" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Chippy"
SELECT number FROM cards WHERE setcode = "Coldsnap"
SELECT count(*) FROM cards WHERE cardKingdomFoilId = "Coldsnap" AND convertedManaCost > 5 AND power != "Known"
SELECT flavorText FROM cards WHERE name = "Ancestor's Chosen" AND flavorName = "Italian"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T1.asciiName = "Ancestor's Chosen"
SELECT flavorText FROM cards WHERE name = "Ancestor's Chosen" AND originalType = "Card" AND TYPE = "FlavorText" AND flavorText LIKE "%German%"
SELECT T2.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomId = "Coldsnap" AND T1.cardKingdomFoilId = "null"
SELECT T2.flavorName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.id = T2.flavorText WHERE T1.cardKingdomFoilId = "Coldsnap" ORDER BY T1(convertedManaCost) DESC LIMIT 1
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Reminisce";
SELECT count(*) FROM cards WHERE convertedManaCost = 7 AND cardKingdomId = 'Coldsnap'
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Coldsnap') FROM cards WHERE cardKingdomId = 'Incredibly Powerful'
SELECT code FROM sets WHERE releaseDate = "2017/7/14"
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmid FROM cards WHERE setcode = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = "2017/6/9"
SELECT flavorText FROM foreign_data WHERE flavorText = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T1.rereleaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Rinascita di Alara"
SELECT T1.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Huitième édition"
SELECT T2.flavorName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T1.name = "Tendo Ice Bridge" AND T2.language = "French"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Tenth Edition"
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.cardKingdomFoilId = "Fellwar Stone" AND T2.language = "Japanese"
SELECT name FROM cards WHERE cardKingdomFoilId = (SELECT mcmId FROM sets WHERE name = 'Journey into Nyx Hero's Path' ORDER BY convertedManaCost DESC LIMIT 1)
SELECT T1.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.name WHERE T2.name = "Ola de frío"
SELECT T1.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.keyruneCode WHERE T1.name = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE setcode = "World Championship Decks 2004" AND convertedmanacost = "3"
SELECT T2.translation FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Mirrodin" AND T2.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN sets AS T3 ON T3.code = T2.setCode WHERE T2.language = "Japanese" AND T3.isNonFoilOnly = 1
SELECT count(*) * 100.0 / count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN sets AS T3 ON T3.code = T2.setcode WHERE T2.language = "Portuguese" AND T3.isOnlineOnly = 'yes'
SELECT DISTINCT printings FROM cards WHERE id NOT IN ( SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = 'text' AND T2.artist = 'Aleksi Briclot')
SELECT T1.id FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId GROUP BY T1.cardKingdomId ORDER BY count(*) DESC LIMIT 1
SELECT artist FROM cards WHERE faceConvertedManaCost != (SELECT max(faceConvertedManaCost) FROM cards)
SELECT frameEffects FROM cards WHERE power = 'incredible' AND isFoilOnly = 'true' GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = "unknown" AND isNonFoilOnly = false AND duelDeck = "A"
SELECT T1.id FROM cards AS T1 JOIN sets AS T2 ON T1.cardId = T2.keyruneCode WHERE T1.promoTypes = 'Commander' GROUP BY T1.cardId HAVING count(*) - count(*) = count(*) INTERSECT SELECT T1.id FROM cards AS T1 JOIN sets AS T2 ON T1.cardId = T2.keyruneCode JOIN foreign_data AS T3 ON T1.id = T3.id WHERE T3.format = 'Promotion' OR T3.format = 'Supplement' EXCEPT SELECT T1.id FROM cards AS T1 JOIN sets AS T2 ON T1.cardId = T2.keyruneCode JOIN foreign_data AS T3 ON T1.id = T3.id WHERE T3.format = 'Alchemy' GROUP BY T1.cardId ORDER BY count(*) DESC LIMIT 1
SELECT asciiName FROM cards ORDER BY convertedManaCost DESC LIMIT 10
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.releaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallillustrationid = T2.uuid WHERE T1.artist = "Volkan Baçım" AND T2.flavortext = "French"
SELECT count(*) FROM cards WHERE rarity = "rare" AND (SELECT count(*) FROM legalities WHERE status = "legal")
SELECT T1.format , T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT flavorText FROM foreign_data WHERE name = "Battlebond"
SELECT T1.faceName , T1.frameEffects FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.id GROUP BY T2.id ORDER BY count(*) LIMIT 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.cardKingdomId WHERE T1.format = "1997" INTERSECT SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.cardKingdomId WHERE T1.format = "legacy" AND T2.flavorName = "D. Alexander Gregory" AND T2.hasContentWarning = 1 OR T2.hasFoil = 1
SELECT name , format FROM cards WHERE edhrecRank = 1 ORDER BY edhrecRank
SELECT avg(T1.number) , T1.language FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T2.releaseDate BETWEEN '01/01/2012' AND '12/31/2015' GROUP BY T1.language
SELECT artist FROM cards WHERE availability = 'arena' AND borderColor = 'black' EXCEPT SELECT artist FROM cards WHERE availability != 'arena' AND borderColor = 'black'
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "old school" OR T2.status = "restricted"
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND availability = "paper"
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Hour of Devastation'
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE translation = "Japanese")
SELECT DISTINCT T1.frameEffects , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.parentCode WHERE T3.type = "foil" INTERSECT SELECT DISTINCT T1.frameEffects , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.parentCode WHERE T3.type = "non-foil"
SELECT DisplayName FROM users WHERE Reputation = (SELECT max(R Reputation) FROM users WHERE DisplayName = "Harlan" OR DisplayName = "Jarrod Dixon")
SELECT T2.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T1.creationdate = "2011-01-01"
SELECT count(*) FROM users WHERE lastAccessDate > '2014-09-01'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid GROUP BY T1.id ORDER BY T2.ViewCount DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.upvotes > 100 INTERSECT SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.downvotes > 100
SELECT count(*) FROM users WHERE accountid NOT IN ( SELECT T1.accountid FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id JOIN votes AS T3 ON T3.userid = T1.userid WHERE T3.creationdate > 2013 AND T1.views > 10 GROUP BY T1.userid HAVING count(*) > 1)
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.OwnerDisplayName = "Csgillespie"
SELECT title FROM posts WHERE OWNERUserId = (SELECT id FROM users WHERE DisplayName = "Csgillespie")
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE OWNERUserId = (SELECT userid FROM badges WHERE name = 'csgillespie') ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY SUM(T2.ViewCount) DESC LIMIT 1
SELECT sum(commentcount) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN badges AS T3 ON T3.id = T2.owneruserid WHERE T3.userdisplayname = "Csgillispe"
SELECT AnswerCount FROM posts WHERE OWNERUserId = "csgillespie" GROUP BY AnswerCount ORDER BY AnswerCount DESC LIMIT 1
SELECT T1.LastEditorDisplayName FROM posts AS T1 JOIN posthistory AS T2 ON T1.PostId = T2.PostId WHERE T1.title = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN tags AS T2 ON T1.ParentId = T2.ExcerptPostId JOIN users AS T3 ON T3.Id = T3.Id WHERE T3.OwnerDisplayName = "Csgillespie" AND T1.PostTypeId = 40
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.title = "well-finished"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation > 18
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExceptPostId = T2.ExceptPostId WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Csgillespie"
SELECT T2.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgillispie'
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Csgillespie" AND T1.date = 2011
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T1.score) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.userId = "csgillespie"
SELECT avg(T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.views > 200
SELECT count(*) * 100.0 / (SELECT count(*) FROM posts WHERE score > 5 AND owneruserid = users.age > 30) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 30
SELECT T2.Views FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.creationdate = '2010-07-19' AND T2.Ranking = 58
SELECT T1.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id GROUP BY T2.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival"
SELECT T1.title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid ORDER BY T2.score DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE CreationDate = "2014/4/23" AND UserId = 3025)
SELECT Text FROM comments WHERE PostId = 107829
SELECT count(*) FROM comments AS T1 JOIN postHistory AS T2 ON T1.PostId = T2.PostId WHERE T1.UserId = 23853 AND T2.CreationDate = '2013/7/12 9:08:18'
SELECT T4.Reputation FROM posts AS T1 JOIN tag AS T2 ON T1.OwnerUserId = T4.Id JOIN tags AS T3 ON T2.ExcerptPostId = T3.id JOIN users AS T4 ON T4.id = T1.OwnerUserId WHERE T1.id = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 1 AND T2.PostId = 6347
SELECT T2.ViewCount FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.PostTypeId = 3
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) - 24 FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 24
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE score = 17
SELECT users.userid FROM users JOIN taggings ON users.id = taggings.relatedpostid JOIN tags ON tags.id = taggings.excerptpostid WHERE taggings.LinkTypeId = 1 AND taggings.RelatedPostId = 1234567890
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion'
SELECT T1.OwnerUserId , T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing?'
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.title = 'How does gentle boosting differ from AdaBoost!'
SELECT T1.UserId FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = 'Necromancer' LIMIT 10
SELECT T1.LastEditorDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Title = "Open source tools for visualizing multi-dimensional data";
SELECT DISTINCT T1.title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userdisplayname WHERE T3.lasteditoruserid = 123456
{"sql": "SELECT sum(T2.score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN users AS T3 ON T1.userid = T3.id WHERE T3.websiteurl = (SELECT websiteurl FROM users WHERE id = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT lasteditoruserid FROM posts WHERE lasteditoruserid = (SELECT last
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation' AND T1.UserId != "null"
SELECT sum(T2.BountyAmount) FROM tags AS T1 JOIN votes AS T2 ON T1.ExcerptPostId = T2.PostId WHERE T1.TagName = 'data'
SELECT T1.OwnerUserId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.title LIKE '%variance%' AND T1.bountyamount = 50
SELECT T1.Title , T1.CommentCount , T1.Comment FROM posts AS T1 JOIN tags AS T2 ON T1.PostTypeId = T2.ExcerptPostId WHERE T2.TagName = "humor" GROUP BY T1.PostId
SELECT count(*) FROM comments WHERE userid = 13
SELECT AccountId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount ASC LIMIT 1
SELECT count(DISTINCT T1.UserId) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = "2011-01-01" AND T1.Name = "supporter"
SELECT count(DISTINCT T1.userid) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.count > 5
SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = 'New York' AND T1.name = 'teacher' INTERSECT SELECT count(DISTINCT T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'supporter'
SELECT T1.OwnerUserId , T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.id = 1
SELECT T1.UserId FROM posthistory AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount >= 1000 GROUP BY T1.UserId HAVING COUNT(*) = 1
SELECT T1.UserId , T1.UserId , T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = 'India'
SELECT Date , count(*) , (count(*) - count(*) / count(Date) ) FROM badges WHERE Date LIKE "2010%" INTERSECT SELECT Date , count(*) , (count(*) - count(*) / count(Date) ) FROM badges WHERE Date LIKE "2011%"
SELECT T1.posthistorytypeid , count(DISTINCT T2.userid) FROM posthistory AS T1 JOIN comments AS T2 ON T1.postid = T2.postid WHERE T1.postid = 3720 GROUP BY T1.posthistorytypeid
SELECT title FROM posts WHERE postid = 61217 ORDER BY score DESC LIMIT 1
SELECT T1.Score , T2.LinkTypeId FROM comments AS T1 JOIN postlinks AS T2 ON T1.PostId = T2.PostId WHERE T2.PostId = 395
SELECT T1.PostId , T2.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 60
SELECT sum(FavoriteCount) FROM posts WHERE YEAR(CreationDate) = 2011 AND OWNERuserid = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE answercount > 10
SELECT count(DISTINCT userid) FROM badges WHERE name = "Announcer"
SELECT T2.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.date = "07/19/2010 19:39:08"
SELECT count(*) FROM comments WHERE text LIKE '%positive%';
SELECT Text FROM comments WHERE CreationDate = "7/19/2010 7:25:47 PM";
SELECT count(*) FROM votes WHERE voteTypeID = "like" AND postid = (SELECT id FROM comments WHERE score = 10)
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT T1.reputation FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester , NY"
SELECT count(*) , (count(*) - 1) / (count(*) - 1) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Teacher"
SELECT count(*) * 100.0 / count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = 'Organizer' AND T1.age = 13;
SELECT max(T1.Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "7/19/2010 7:19:56 PM"
SELECT Text FROM comments WHERE CreationDate = "7/19/2010 7:37:33 PM"
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna, Austria"
SELECT count(*) FROM users WHERE age = 18 AND UserId IN (SELECT UserId FROM badges WHERE name = 'Supporter')
SELECT count(*) FROM badges WHERE date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id ORDER BY T2.reputation LIMIT 1
SELECT T2.name FROM comments AS T1 JOIN badges AS T2 ON T1.user_id = T2.user_id WHERE T1.user_displayname = "Sharpie"
SELECT count(*) FROM users WHERE age > 30 AND UserId IN (SELECT UserId FROM badges WHERE name = "Supporter")
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.id = 30
SELECT count(*) FROM users WHERE LOCATION = 'New York'
SELECT count(*) FROM votes WHERE creationdate = "2010-01-01";
SELECT count(*) FROM users WHERE age > 25
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT votecount , votecount FROM votes WHERE voteyear = 2010 UNION SELECT votecount , votecount FROM votes WHERE voteyear = 2011
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN badges AS T2 ON T2.UserId = T1.OwnerUserId WHERE T2.OwnerDisplayName = "Daniel Vassallo"
SELECT sum(T2.Views) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1 DisplayName = "Harlan"
SELECT postid FROM posts WHERE owneruserid = 'slashnick' ORDER BY AnswerCount DESC LIMIT 1
SELECT max(ViewCount) FROM posts WHERE OWNERuserid = (SELECT id FROM users WHERE DisplayName = "Harvey Motulsky") INTERSECT SELECT max(ViewCount) FROM posts WHERE OWNERuserid = (SELECT id FROM users WHERE DisplayName = "Noah Snyder")
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.owneruserid = (SELECT T3.UserId FROM badges AS T3 JOIN users AS T4 ON T3.UserId = T4.Id WHERE T4.displayName = "Matt Parker") AND T1.voteid = 1 AND T1.votecount > 4
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.OwnerDisplayName = "Neil McGuigan" AND T1.Score < 0
SELECT DISTINCT T1.Tags FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T2.OwnerUserId = 156653 AND T2.OwnerDisplayName = "Mark Meckes" EXCEPT SELECT DISTINCT T1.Tags FROM tags AS T1 JOIN comments AS T2 ON T1.ExcerptPostId = T2.Id WHERE T2.UserID = 156653
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Organizer"
SELECT count(*) / (SELECT count(*) FROM posts WHERE posttype = 'Question' AND owneruserid = (SELECT communityowneddate FROM badges WHERE name = 'Community') ) AS percentage
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = "Mornington" INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Location = "Amos"
SELECT count(DISTINCT T1.userid) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date = 2014
SELECT count(*) FROM posts WHERE creationdate LIKE "21/%" AND creationdate LIKE "2010/%";
SELECT DisplayName , Age FROM users WHERE Views = (SELECT max(Views) FROM users)
SELECT lastEditDate , LastEditorUserId FROM posts WHERE Title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text LIKE "%negative%"
SELECT T2.Title , T1.UserDisplayName FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.Score > 0
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "North Pole" AND T1.date = 2011
SELECT T1.OwnerDisplayName , T1.websiteurl FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE FavoriteCount > 150
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Outlier"
SELECT T2.title FROM postlinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id JOIN tags AS T3 ON T3.ExcerptPostId = T1.ExcerptPostId WHERE T3.TagName = "data set which monitors a value over time"
SELECT T1.Id , T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Samuel" AND T1.date = 2013
SELECT MAX(OwnerDisplayName) FROM posts GROUP BY OwnerUserId ORDER BY SUM(ViewCount) DESC LIMIT 1;
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.tags EXCEPT T3.tags AND T2.tags.1 = 'hypothesis-testing'
SELECT T2.RelatedPostId , T2.LinkTypeId FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.RelatedPostId WHERE T1.Title = "What are principal component scores?"
SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.Id ORDER BY T2.score DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.OwnerWebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT TITLE FROM posts ORDER BY VIEWCOUNT DESC LIMIT 5
SELECT count(*) FROM tags AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.ViewCount BETWEEN 5000 AND 7000
SELECT OWNERUSERID FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes WHERE creationdate = '2011-01-01' AND bountyamount = 50
SELECT AccountId FROM users ORDER BY Age ASC LIMIT 1
SELECT sum(T2.score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.creaiondate = "2010-07-19"
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T2.AnswerCount <= 2 AND T2.CreationDate = '2010-04-07'
SELECT PostId FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Reputation = 1465 GROUP BY T1.PostId ORDER BY SUM(T1.BountyAmount) DESC LIMIT 1
SELECT T1.title FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid ORDER BY T2.creationdate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T2.Name DESC LIMIT 1
SELECT T1.creationdate FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN tags AS T3 ON T2.id = T3.excerptpostid WHERE T3.tagname = "chl"
SELECT min(T1.creationdate) FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid ORDER BY T1.age LIMIT 1
SELECT T1.userDisplayName FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = "Autobiographer" ORDER BY T2.date LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.location = 'United Kingdom' AND favoritecount >= 4
SELECT avg(upvotes) FROM users WHERE age = (SELECT min(age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age = "Adult"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Jay Stevens" AND T1.creatondate = 2010;
SELECT T1.Id , T1.Title FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky" ORDER BY T1.ViewCount DESC LIMIT 1;
SELECT postid , title FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(T1.Score) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Stephen Turner"
SELECT DISTINCT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.viewcount LIKE '%2011%' AND T2.viewcount > 20000
SELECT T1.PostId , T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.CreaionDate = "2010-04-19 18:22:00" GROUP BY T1.OwnerUserId ORDER BY T2.OwnerDisplayName DESC LIMIT 1
SELECT count(*) , T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T1.reputation > 1000 AND T2.creaiondate = '2011-04-12' GROUP BY T1.OwnerDisplayName
SELECT count(*) * 100 / (SELECT count(*) FROM users WHERE age < 19) FROM users
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.title = "Computer Game Datasets" ORDER BY T1.lasteditdate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T2.Score DESC LIMIT 1
SELECT count(*) FROM posts WHERE ViewCount > 35000 AND commentcount = 0
SELECT T1.LastEditDate , T1.LastEditorDisplayName FROM posts AS T1 JOIN postHistory AS T2 ON T1.PostId = T2.PostId WHERE T2.UserId = (SELECT UserId FROM postHistory WHERE PostId = 183 ORDER BY RevisionGUID DESC LIMIT 1)
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Emmett" ORDER BY T1.date DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.age > 18 AND T2.upvotes > 5000
SELECT T1.Date - T0.CreationDate FROM badges AS T1 JOIN users AS T0 ON T1.UserId = T0.Id WHERE T0.DisplayName = 'Zolomon'
SELECT count(*) , commentcount FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.owneruserid = (SELECT id FROM users ORDER BY creationdate LIMIT 1)
SELECT T1.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = (SELECT id FROM posts WHERE title = 'Analysing wind data with R' LIMIT 1) ORDER BY T1.creationdate DESC LIMIT 10;
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM tags WHERE tagname = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT CommentCount , AnswerCount FROM posts WHERE Title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE accountid = (SELECT userid FROM badges WHERE name = 'IrishStat' )
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T2.OwnerDisplayName , T1.score FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T3.Id = T1.UserId WHERE T3.Reputation = (SELECT min(Reputation) FROM users) AND T1.voteTypeId = 1 AND T1.bountyamount > 50 GROUP BY T2.OwnerDisplayName ORDER BY T1.score DESC LIMIT 1
SELECT count(*) FROM comments WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "fine , you win : )"
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Linear Regression'
SELECT max(T2.score) , T1.postid FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.viewcount BETWEEN 100 AND 150 GROUP BY T1.id ORDER BY max(T2.score) DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.userdisplayname = 'webiste'
SELECT count(*) FROM comments WHERE score = 0 AND viewcount < 5
SELECT count(*) FROM comments WHERE postid IN (SELECT T1.postid FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.postid WHERE commentcount = 1) AND score = 0
SELECT count(*) FROM comments WHERE score = 0 AND userdisplayname LIKE "40%"
SELECT T1.PostId , T2.Comment FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "Group differences on a five point Likert item"
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T1.UserDisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 1 AND 5 AND T1.DownVotes = 0
SELECT T2.userdisplayname FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score BETWEEN 5 AND 10 GROUP BY T2.id HAVING sum(T2.upvotes) = 0
SELECT power_name FROM superpower WHERE power_name LIKE "%3D Man%"
SELECT count(*) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.superhero_name = T2.power_id WHERE T1.height_cm > 200 AND T1.superhero_name = "Super Strength"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id GROUP BY t2.power_id HAVING count(*) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = 1;
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.superpower_id = T2.id WHERE T1.eye_colour = "Blue" AND T2.power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = 1 AND hair_colour_id = 1
SELECT COUNT(*) FROM superhero WHERE publisher_id = 5
SELECT superhero_name FROM superhero WHERE publisher_id = "Marvel Comics" ORDER BY height_cm DESC
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = "Sauron"
SELECT superhero_name FROM superhero WHERE publisher_name = 'Marvel Comics' ORDER BY count(*) DESC ORDER BY eye_colour_id
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.publisher_name = 'Marvel Comics'
SELECT count(DISTINCT publisher_id) FROM superhero WHERE publisher_name = 'DC Comics'
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = "gold" AND publisher_id = "Marvel Comics"
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = "blonde"
SELECT superhero_name FROM superhero ORDER BY full_name LIKE '%dumb%' LIMIT 1
SELECT race FROM superhero WHERE superhero_name = "Copycat"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = "death touch"
SELECT count(*) FROM superhero WHERE gender_id = "female" AND weight_kg = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE race_id = 'vampire';
SELECT count(*) , T1.superhero_name , T2.publisher_name FROM superhero AS T1 JOIN superhero_publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender_id = "male" OR T2.publisher_name = "Marvel Comics" INTERSECT SELECT count(*) , T1.superhero_name , T2.publisher_name FROM superhero AS T1 JOIN superhero_publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender_id = "female" OR T2.publisher_name = "Marvel Comics"
SELECT T2.publisher_name - T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'DC' INTERSECT SELECT T2.publisher_name - T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Marvel Comics'
SELECT publisher_id FROM superhero WHERE full_name = "Star Trek."
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.hero_id IN (SELECT T1.hero_id FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = "Shield")
SELECT count(*) FROM superhero WHERE full_name = ""
SELECT T1.eye_colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.id = 75
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender = "female"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1 AND T3.superhero_name LIKE '%Male%' GROUP BY T1.power_name ORDER BY count(*) DESC LIMIT 5;
SELECT superhero_name FROM superhero WHERE gender_id = "male" OR gender_id = "female"
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T2.hero_id = 56
SELECT full_name FROM superhero WHERE race = "Demi-God"
SELECT count(*) FROM superpower WHERE power_name = "bad superhero"
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour_id FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_id = "Marvel Comics"
SELECT superhero_name FROM superhero WHERE gender = 'male' AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(*) DESC LIMIT 1
SELECT attribute_value FROM hero_attribute WHERE hero_id IN (SELECT id FROM superhero WHERE superhero_name = "Abomination")
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.id = 1
SELECT count(DISTINCT T1.hero_id) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'stealth'
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = 'strength' ORDER BY t3.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE race_id NOT IN (SELECT id FROM race WHERE race = "human")
SELECT count(DISTINCT superhero_name) FROM superhero WHERE publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Dark Horse Comics')
SELECT t1.superhero_name FROM superhero AS t1 JOIN superhero AS t2 ON t1.publisher_id = t2.publisher_id WHERE t2.publisher_name = 'Dark Horse Comics' GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.eye_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = "Abraham Sapien";
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Flight'
SELECT T1.eye_colour_id , T1.hair_colour_id , T1.skin_colour_id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics' AND T1.gender = 'female'
SELECT T2.publisher_name FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id = T1.id WHERE T1.colour = T2.colour AND T1.colour = T2.colour AND T1.colour = T2.colour
SELECT T1.group_name FROM alignment AS T1 JOIN superhero AS T2 ON T1.id = T2.alignment_id WHERE T2.superhero_name = "A-Bomb"
SELECT count(*) , percentage FROM superhero WHERE gender = "female" AND eye_colour_id = "blue" GROUP BY percentage
SELECT T1.superhero_name , T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = "Charles Chandler"
SELECT T2.gender FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.superhero_name = "Agent 13"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id WHERE t2.power_name = 'adaptation'
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Amazeo"
SELECT power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = (SELECT id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T2.full_name = "Hunter Zolomon");
SELECT height_cm FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "amber")
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT T1.eye_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T1.colour = "black") AND hair_colour_id = (SELECT T1.hair_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.hair_colour_id WHERE T1.colour = "black")
SELECT T1.eye_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = "gold"
SELECT full_name FROM superhero WHERE race = "Vampire" AND gender = "Male"
SELECT T1.superhero_name FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = "neutral"
SELECT count(DISTINCT superhero_name) FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T1.attribute_value = (SELECT max(attribute_value) FROM hero_attribute)
SELECT T2.race , T2.alignment FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = "Cameron Hicks"
SELECT count(*) * 100.0 / count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender = "female" AND T2.publisher_name = "Marvel Comics"
SELECT avg(weight_kg) FROM superhero WHERE race_id = 'Alien'
SELECT weight_kg - height_cm FROM superhero WHERE superhero_name = "Emil Blonsky" EXCEPT SELECT weight_kg - height_cm FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT t2.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id WHERE t1.superhero_name = "Abomination"
SELECT count(*) FROM superhero WHERE race = "god / eternal" AND gender = "male"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment = "neutral"
SELECT T2.attribute_name , T1.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.attribute_id = 1
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "brown"
SELECT publisher_name FROM superhero WHERE superhero_name = "Hawkman" AND superhero_name = "Karate Kid" AND superhero_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "blue")
SELECT count(*) , count(*) FROM superhero WHERE gender_id = "M" : "F"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = 'Karen Beecher-Duncan'
SELECT T1.power_name FROM superpower AS T1 JOIN superhero AS T2 ON T1.id = T2.hero_power WHERE T2.full_name = "Helen Parr"
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id GROUP BY T2.attribute_value ORDER BY count(*) DESC LIMIT 1
SELECT t1.alignment , t2.power_name FROM hero_attribute AS t1 JOIN superpower AS t2 ON t1.attribute_id = t2.id JOIN superhero AS t3 ON t3.id = t1.hero_id WHERE t3.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = "blue"
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'neutral'
SELECT T1.skin_colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id GROUP BY T1.skin_colour_id HAVING count(*) = 100
SELECT count(*) FROM superhero WHERE gender = "female" AND full_name LIKE "%Superhero%"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value BETWEEN 75 AND 80
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.gender_id = 1 AND T1.full_name LIKE '%blue%'
SELECT count(*) FROM superhero WHERE gender_id = "female" AND power_name = "bad"
SELECT count(*) - count(*) FROM superhero WHERE weight_kg = "null" AND eye_colour_id = "blue"
SELECT power_name FROM superpower WHERE power_name = "The Hulk"
SELECT power_name FROM superpower WHERE power_name LIKE "%Ajax%"
SELECT count(*) FROM superhero WHERE race = "green"
SELECT count(*) FROM superhero WHERE gender_id = "female" AND publisher_id = "Marvel Comics"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.hero_id WHERE t2.power_name = 'wind' ORDER BY t1.superhero_name
SELECT t3.gender FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id JOIN superhero AS t3 ON t3.id = t1.hero_id WHERE t2.power_name = 'Phoenix Force'
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE superhero_name LIKE '%non-human%' AND publisher_id = 2195
SELECT count(*) FROM superhero WHERE power_name = 'Fast'
SELECT count(*) FROM superhero WHERE publisher_id = 'DC' OR publisher_id = 'Marvel Comics'
SELECT t1.attribute_name FROM attribute AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.attribute_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = "Black Panther" AND t1.attribute_value = "weakest"
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) , (count(*) - count(gender_id = 1) ) / count(*) FROM superhero WHERE publisher_id = "George Lucas"
SELECT count(*) , avg(gender_id) FROM superhero WHERE publisher_name = 'Marvel Comics' AND gender = 'good'
SELECT count(*) FROM superhero WHERE full_name LIKE "%John%"
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT t1.full_name FROM superhero AS t1 JOIN colour AS t2 ON t1.race_id = t2.id WHERE t1.weight_kg < 100 AND t2.colour = 'brown'
SELECT T1.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T3.superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1 AND alignment = 1
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT eye_colour FROM superhero WHERE race = "Blackwulf"
SELECT t1.power_name FROM superpower AS t1 JOIN superhero AS t2 ON t1.power_id = t2.hero_power WHERE t2.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.name = "20" AND T2.statusId = 2 AND T2.position = "eliminated"
SELECT T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 19 ORDER BY T2.q2 LIMIT 1
SELECT T2.year FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Shanghai"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya" AND T2.round = 1 AND T2.year = 2023
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid IN (SELECT circuitid FROM circuits WHERE country != "Asia") AND circuitid IN (SELECT circuitid FROM circuits WHERE country != "Europe")
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Spain"
SELECT T1.latt , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit";
SELECT T2.time FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Sepang International Circuit";
SELECT T1.lng , T1.latt FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix"
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.raceid = 24 AND T3.constructorid = T1.constructorref AND T3.points = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = 1001
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 355 AND T2.q3 = "0:01:40";
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 903 AND T2.position = "0:01:54";
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 AND T1.statusid = 0
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2015/11/29"
SELECT T1.forename , T1.surname , dob FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 592 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 0:01:27 AND T2.raceid = 161
SELECT T1.driverRef FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.name = "933" ORDER BY T2.milliseconds LIMIT 1
SELECT T1.lng , T1.latt FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Race No. 345" AND T3.constructorid = constructors.constructorid AND T3.status = "Q1" AND T3.points = 100
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN laptimes AS T3 ON T2.raceid = T3.raceid WHERE T2.round = 347 AND T3.position = 1 AND T3.time = "0:01:15"
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 45 AND T2.position = 3 AND T2.time = "0:01:33"
SELECT T2.fastestLapTime FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T1.name = "Race No. 743" AND T3.forename = "Bruce" AND T3.surname = "McLaren"
SELECT T2.forename , T2.surname FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "San Marino Grand Prix" AND T3.year = 2006 ORDER BY T2.position ASC LIMIT 1
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29" EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29" AND T1.statusid = 0
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 ORDER BY T1.dob LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 348 ORDER BY T2.position DESC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = (SELECT min(position) FROM laptimes)
SELECT max(T1.position) - (SELECT min(position) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.raceid = T3.raceid AND T1.positiontext = "853") ) FROM results AS T3 JOIN races AS T4 ON T3.raceid = T4.raceid JOIN driverStandings AS T5 ON T3.driverid = T5.driverid WHERE T4.name = "No. 853" AND T5.positiontext = "fastest" AND T3.positiontext = "853rd" AND T5.driverref = T3.driverref AND T5.forename = "Paul" AND T5.surname = "di Resta"
SELECT avg(T2.milliseconds) FROM races AS T1 JOIN lapTimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 1983 AND T1.date = "7/16/16" AND T1.round = "1"
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Singapore" AND T1.name = "Grand Prix" ORDER BY T1.year ASC LIMIT 1
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races ORDER BY YEAR ASC LIMIT 1;
SELECT round , date FROM races WHERE YEAR = 1999
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" AND T1.country = "France";
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.circuitid = 'Brands Hatch' AND T2.name = 'British Grand Prix'
SELECT count(*) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T1.name = "Silverstone Circuit" AND T2.name = "United Kindom grand prix"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2010 AND T3.name = "Singapore Grand Prix" ORDER BY T3.round LIMIT 1000
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid ORDER BY T2.points DESC LIMIT 1
SELECT T1.drivername , T1.position FROM drivers AS T1 JOIN driverStandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T1.position DESC LIMIT 3;
SELECT T1.drivername , T2.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.milliseconds) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Lewis Hamilton" AND T2.position = "3"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T2.year = T1.year AND T2.name = 'Formula 1' AND T3.circuitref = '1' AND T1.position != '1' AND T1.driverid = 1413 AND T1.constructorid = 13
SELECT T1.forename , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY max(T2.points) DESC LIMIT 1
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob ASC LIMIT 1
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 1990 AND T2.name = "F1" INTERSECT SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2000
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T1.country = 'USA'
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = "Sep"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yong" AND T1.name LIKE "track %" AND T1.year = T2.year AND T1.round = T2.round AND T1.date = T2.date
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit" AND T1.driver = "Michael Schumacher"
SELECT T1.name , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Michael" AND T2.position = 1 AND T1.year = T2.year
SELECT avg(T2.points) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN seasons AS T3 ON T3.year = T3.year WHERE T3.month = 2 AND T3.day = 1 AND T1.forename = "Eddie" AND T1.surname = "Irvine";
SELECT T1.name , T1.points FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Lewis Hamilton" ORDER BY T1.year LIMIT 1
SELECT T1.name , T2.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T1.circuit FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid GROUP BY T1.circuitid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM races WHERE circuitid IN (SELECT circuitid FROM circuits WHERE country = 'Germany') AND name LIKE "%Grand Prix%"
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT location FROM circuits WHERE name = 'Silverstone Circuit' OR name = 'Hockenheimring' OR name = 'Hungaroring' ORDER BY lat LIMIT 1
SELECT circuitRef FROM circuits WHERE name = 'Marina Bay Street Circuit'
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = ""
SELECT T1.country FROM circuits AS T1 JOIN drivers AS T2 ON T1.circuitid = T2.circuitid ORDER BY T2.dob DESC LIMIT 1
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT DISTINCT T1.url FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Anthony" AND T3.surname = "Davidson";
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix"
SELECT DISTINCT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone" AND T2.round = "Race"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2010 AND T2.name = "Abu Dhabi Circuit"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT T1.fastestlapspeed FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton" ORDER BY T1.milliseconds LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 JOIN races AS T2 ON T1.driverId = T2.driverId WHERE T2.year = 2007 AND T2.name = "Canadian Grand Prix" ORDER BY T1.positionText ASC LIMIT 1
SELECT DISTINCT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T2.driverid = T3.driverid JOIN drivers AS T4 ON T3.driverid = T4.driverid WHERE T4.forename = "Lewis Hamilton" ORDER BY T3.position LIMIT 1
SELECT T1.fastestlapspeed FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix" ORDER BY T1.fastestlapspeed LIMIT 1
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.rank FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "2008 Chinese Grand Prix" AND T3.nationality = "Lewis Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.position = 4
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT T1.lap , T1.position , T1.time FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton" AND T1.year = 2008 AND T1.round = 1 AND T1.position = 1;
SELECT T1.lap , T1.time FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "2" AND T1.year = 2008 AND T1.raceid = 2008
SELECT T1.driver FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2008's Australian Grand Prix" AND T2.status = "2nd" AND T1.surname = "Smith"
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix" AND T2.statusid = 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.constructorid IN (SELECT constructorid FROM constructorresults AS T3 JOIN constructor AS T4 ON T3.constructorid = T4.constructorid WHERE T4.nationality = "Formula_1")
SELECT sum(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorstandings AS T3 ON T1.constructorid = T3.constructorid JOIN drivers AS T4 ON T1.driverid = T4.driverid WHERE T4.forename = "Lewis" AND T4.surname = "Hamilton";
SELECT avg(T2.fastestlapspeed) FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T1.driver = "Lewis Hamilton"
SELECT count(*) FROM results AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix" AND T2.position = 1
SELECT (T1.fastestlapspeed - T2.fastestlapspeed) / T1.fastestlapspeed * 100 FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = T3.raceid AND T3.year = 2008 AND T3.name = "2008 Australian Grand Prix" AND T2.position = 1
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide" AND country = "Australia";
SELECT lat , lng FROM circuits WHERE country = "United States"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > 1980
SELECT max(T1.points) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.position TEXT = (SELECT max(T2.position) FROM constructorstandings) LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.points = 0
SELECT count(*) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "Japanese" AND T1.raceid NOT IN (SELECT raceid FROM constructorresults WHERE points != 0)
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.position TEXT '1' LIMIT 1
SELECT count(*) FROM results AS T1 JOIN constructorResults AS T2 ON T1.resultid = T2.resultid JOIN constructorStandings AS T3 ON T1.raceid = T3.raceid JOIN constructors AS T4 ON T2.constructorid = T4.constructorid WHERE T4.nationality = "French" AND T1.laps > 50
SELECT T1.name , T1.date , T1.round , T2.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.nationality = "Japanese" AND T1.year BETWEEN 2007 AND 2009
SELECT avg(T2.time) , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year < 1975 GROUP BY T1.year
SELECT forename , surname FROM drivers WHERE dob > '1975-01-01' ORDER BY driverid = (SELECT driverid FROM driverStandings WHERE position = 2 GROUP BY driverid ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM drivers WHERE nationality != 'Italian'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT fastestlaps FROM results WHERE raceid = 2009 ORDER BY fastestlaps LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT name , YEAR FROM races ORDER BY TIME LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < 1985 AND T2.lap > 50 AND T1.nationality = "UK" AND T2.milliseconds > 1000 AND T2.year BETWEEN 2000 AND 2005
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND T2.lap < 02:00.00
SELECT code FROM drivers WHERE nationality LIKE "%America%"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 18
SELECT code FROM drivers ORDER BY dob DESC LIMIT 3; SELECT count(*) FROM drivers WHERE nationality LIKE "%Netherlandic%";
SELECT driverRef FROM drivers WHERE forename = "Robert" AND surname = "Kubica";
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = "1980";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.lap = 1 AND T2.year = 1980 AND T2.year = 1990 ORDER BY T2.milliseconds LIMIT 3
SELECT T1.driverRef FROM drivers AS T1 JOIN seasons AS T2 ON T1.driverId = T2.driverId WHERE T2.year = (SELECT max(YEAR) FROM seasons) AND T1.nationality = "German" ORDER BY T1.dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.milliseconds = (SELECT fastestlapped from laptimes) AND T2.year = 1971
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap != "fastest" AND T2.milliseconds != "infinity" AND T2.lap != "last" ORDER BY T1.dob LIMIT 10
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year ORDER BY T2.time LIMIT 1
SELECT YEAR FROM laptimes ORDER BY milliseconds LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlapspeed DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN raceid AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid BETWEEN 50 AND 100 AND T1.statusid = 2
SELECT LOCATION , lat , lng FROM circuits WHERE country = "Austria"
SELECT T1.number FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid GROUP BY T1.number ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = "23" AND T2.position = "q2"
SELECT T1.year , T2.name , T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.position LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN constructorresults AS T3 ON T2.constructorid = T3.constructorid WHERE T1.nationality = "American" AND T3.status = "puncture"
SELECT t1.name FROM constructors AS t1 JOIN constructorstandings AS t2 ON t1.constructorid = t2.constructorid JOIN constructorresults AS t3 ON t2.raceid = t3.raceid ORDER BY t3.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY sum(T2.wins) DESC LIMIT 1
SELECT T1.driver FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 155 AND T2.position = 3 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.year = 2006 AND T3.name = "United States Grand Prix" ORDER BY T2.position TEXT 'top 10' LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.forename , T1.surname HAVING avg(T2.duration) LIMIT 3 INTERSECT SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T1.dob BETWEEN "1980-1985" ORDER BY avg(T2.duration) LIMIT 3
SELECT T2.position , T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Canada" AND T2.year = 2008 ORDER BY T2.round DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix" AND T2.position = 1
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN "1981-01-01" AND "1991-12-31"
SELECT forename , surname , dob FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT location , country , {lat} , {lng} FROM circuits WHERE name = 'Hungaroring'
SELECT T1.name , T1.nationality , T1.points , T2.constructorRef FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = 'Monaco Grand Prix' AND T2.year BETWEEN 1980 AND 2010 ORDER BY T1.points DESC LIMIT 1
SELECT avg(T2.points) FROM races AS T1 JOIN constructorResults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Turkish" AND T1.name = "Lewis Hamilton"
SELECT avg(T1.round) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2011 AND 2020
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM driverstandings AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.position = "91"
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = (SELECT max(YEAR) FROM races)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 3 AND T2.position = 1 AND T2.year = 2008 AND T2.circuitid = 'Marina Bay Street Circuit'
SELECT T1.forename , T1.surname , T1.nationality , T3.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid JOIN constructorresults AS T3 ON T3.raceid = T2.raceid ORDER BY T1.dob LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Canadian Grand Prix" ORDER BY count(*) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverStandings AS T2 ON T1.driverid = T2.driverid WHERE T1.dob LIKE "%" AND T2.wins = (SELECT max(wins) FROM driverStandings)
SELECT max(T1.duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid
SELECT fastestlaptime FROM laptimes ORDER BY fastestlaptime LIMIT 1
SELECT max(T2.duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton";
SELECT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "2011 Australian Grand Prix" AND T3.forename = "Lewis" Hamilton"
SELECT T2.time FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T1.driverid = drivers.driverid
SELECT T1.laps , T1.time FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton" AND T1.raceid = T3.raceid AND T3.name = "Formula_1"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
SELECT T1.position FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN laptimes AS T3 ON T2.raceid = T3.raceid WHERE T3.driverid = T2.driverid AND T3.position = (SELECT max(position) FROM laptimes WHERE fastestlapspeed = (SELECT fastestlapspeed FROM results WHERE fastestlap = 'Lewis Hamilton') )
SELECT T1.laps , T1.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Austrian" AND T1.name = "Osterreich Grand Prix Circuit" ORDER BY T1.year LIMIT 1
SELECT T2.duration FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit" AND T2.driverid = T1.driverid AND T2.position = 1;
SELECT T1.location , T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.laptimes.Milliseconds LIKE "%1:29.488%"
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton"
SELECT avg(T1.milliseconds) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy"
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1;
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate = 'yes'
SELECT player_api_id FROM Player_Attributes WHERE crossing > (SELECT min(crossing) FROM Player_Attributes) ORDER BY crossing DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_long_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2016 GROUP BY T1.team_long_name ORDER BY count(*) LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.id JOIN league AS T3 ON T3.id = T1.league_id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = 'draw' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2013-01-01' AND '2015-12-31' AND T2.sprint_speed >= 97
SELECT T1.name , T2.league_id FROM League AS T1 JOIN MATCH AS T2 ON T1.country_id = T2.country_id GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN '1990-01-01' AND '1995-12-31'
SELECT player_api_id FROM Player_Attributes WHERE date LIKE "2010%" ORDER BY overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60;
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.date = '2012' AND T1.buildUpPlayPassing > (SELECT avg(buildUpPlayPassing) FROM Team_Attributes WHERE date = '2012')
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left" AND birthday BETWEEN 1987 AND 1992;
SELECT name FROM league ORDER BY goals DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_Attributes WHERE player_name = "Ahmed Samir Farag"
SELECT player_name FROM Player WHERE height > 180 GROUP BY player_name ORDER BY avg(heading_accuracy) DESC LIMIT 10;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.id = T2.team_api_id WHERE buildUpPlaySpeedClass = 'normal' AND buildUpPlayDribblingClass = 'dribble' AND date = '2014' GROUP BY T1.team_short_name HAVING avg(T2.chanceCreationPassing) - T2.chanceCreationPassing < 0 ORDER BY T2.chanceCreationPassing DESC;
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id JOIN MATCH AS T3 ON T2.name = T3.away_team_api_id WHERE T3.season = 2009 AND T3.stage = 'L' GROUP BY T1.name HAVING avg(T3.goal) > avg(T3.goal) FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN MATCH AS T3 ON T2.name = T3.away_team_api_id
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers";
SELECT player_name FROM Player WHERE birthday LIKE "1970-%" AND MONTH(birthdate) = 10;
SELECT T1.attacking_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Franco Zennaro"
SELECT T1.team_short_name , T2.defenceAggression FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_fifa_api_id = "ADO Den Haag" AND T2.defenceAggression BETWEEN 0.5 AND 0.75;
SELECT finishing FROM Player_Attributes WHERE date = "18/09/2014" AND preferred_foot = "football" AND player_fifa_api_id = "FRANCOIS AFFOLTER";
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011;
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.away_player_11 = T2.id WHERE T1.season = '2015/2016' AND T2.name = 'Scotland Premier League'
SELECT T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = (SELECT min(player_name) FROM Player) AND T1.player_age = (SELECT min(player_age) FROM Player)
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "football" ORDER BY T1.potential DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate < 130;
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE chanceCreationPassingClass = 'Risky'
SELECT defensive_work_rate FROM Player_Attributes WHERE player_name = "David Wilson" AND preferred_foot = "football"
SELECT birthday FROM Player ORDER BY overall_rating DESC LIMIT 1;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = 'Netherlands'
SELECT avg(T1.home_team_goal) FROM Match AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Poland" AND T1.season = "2010/2011";
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate LIKE '%highest%' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.defensive_work_rate LIKE '%shortest%';
SELECT player_name FROM Player WHERE height > 180;
SELECT count(*) FROM Player WHERE birthday > '1990-01-01'
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2008-01-01' AND '2010-12-31' AND T2.overall_rating > 80
SELECT T1.potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Aaron Doran"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeedClass = 'fast'
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = "CLB"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlayPassing > 70;
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.height > 170 AND T1.date BETWEEN 2010 AND 2015;
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1;
SELECT T1.country FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32;
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Aaron Doran'
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND T1.date LIKE "08-08%" AND T1.date LIKE "10-08%";
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T1.goal = 10
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1;
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Abdou Diallo") AS result FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT birthday FROM Player WHERE player_name = 'Aaron Lennon' OR player_name = 'Abdelaziz Barrada';
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = '1'
SELECT T1.country FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Germany"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Team AS T3 ON T3.team_api_id = T2.team_api_id WHERE T1.birthday < 1986 AND T3.defencePressure = 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Alexis" INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiuk" INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Arouna Kone" ORDER BY T1.overall_rating DESC LIMIT 1;
SELECT heading_accuracy FROM Player_Attributes WHERE player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Belgium' AND T1.season = '2008/2009';
SELECT max(long_passing) FROM Player
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = "Belgium Jupiler League" AND T1.date LIKE "2009-04%";
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986
SELECT (overall_rating - (overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ariel Borysiuk") - (overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Paulin Puel") ) / (overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ariel Borysiuk") * 100 AS percentage FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ariel Borysiuk" JOIN Player_Attributes AS T3 JOIN Player AS T4 ON T3.player_api_id = T4.player_api_id WHERE T4.player_name = "Paulin Puel"
SELECT avg(T2.buildUpPlaySpeed) FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = 'Heart of Midlothian'
SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE team_fifa_api_id = "Ajax" ORDER BY chanceCreationPassing DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes WHERE player_name = "Abdou Diallo"
SELECT overall_rating FROM Player_Attributes WHERE player_name = "Dorlan Pabon" ORDER BY overall_rating DESC LIMIT 1;
SELECT avg(away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Italy' AND T2.team_short_name = 'Parma';
SELECT player_name FROM Player WHERE birthday = "2016-06-23" AND overall_rating = 77;
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = '2016/2/4' AND T2.player_fifa_api_id = 'Aaron Mooy'
SELECT potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Francesco Parravicini" AND T2.date = "2010/8/30"
SELECT T1.attacking_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Francesco Migliore" AND T2.date = "2015-05-01";
SELECT T1.defensive_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Kevin Berigaud" AND T2.date = "2013/2/22";
SELECT T1.date FROM Match AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.player_name = "Kevin Constant" ORDER BY T1.date LIMIT 1;
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.away_player_11 WHERE T2.date = "2011/2/22" AND T1.player_name = "Willem II"
SELECT T1.buildUpPlayDribbling FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "LEI" AND T1.date = "2015/9/10"
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing = "PEC Zwolle" AND chanceCreationDate = "2013/9/20";
SELECT T1.chanceCreationCrossingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T2.team_long_name = "Hull City" AND T1.date = "2010/2/22"
SELECT defenceAggressionClass FROM Team_Attributes WHERE date = "2015/9/10" AND team_fifa_api_id = "Hannover 96";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date BETWEEN "2007/2/22" AND "2016/4/21"
SELECT count(*) FROM Player_Attributes AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11 WHERE T1.date = "2013/7/12" AND T1.player_name = "Landon Donovan" AND T2.goal = 0 AND T2.player_name = "Jordan Bowery";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY weight DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday >= '1989-04-15'
SELECT count(*) FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.goal = T2.goal_goal WHERE T1.goal_type = 'home' AND T2.player_name = 'Aaron Lennon'
SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.player_name = "Daan Smith" INTERSECT SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_10 = T2.player_api_id WHERE T2.player_name = "Filipe Ferreira"
SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.goal = T2.cross WHERE T2.player_fifa_api_id IN (SELECT player_api_id FROM Player WHERE birthday LIKE "30%")
SELECT player_name FROM Player ORDER BY strength DESC LIMIT 1;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.potential DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'attack'
SELECT max(T1.player_name) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE finishing = 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Belgium'
SELECT T1.player_name , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T1.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN league AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY avg(T1.weight) DESC LIMIT 1;
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T1.buildUpPlaySpeedClass = "slow"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.id = T2.team_api_id WHERE T2.chanceCreationPassing = 'safe'
SELECT avg(T1.height) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.name LIKE "%Italy%";
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > 1990 AND player_name = "Aaron"
SELECT jumping FROM Player_Attributes WHERE player_api_id = 6 DIFFERENCES FROM Player_Attributes WHERE player_api_id = 23;
SELECT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.preferred_foot = 'right' ORDER BY potential LIMIT 5;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND crossing = (SELECT max(crossing) FROM Player_Attributes WHERE preferred_foot = 'left')
SELECT count(*) * 100.0 / count(*) FROM Player_Attributes WHERE strength > 80;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT sum(goal) , sum(shoton) FROM MATCH WHERE date = "2008-09-24" AND stage = "home-away"
SELECT sprint_speed , agility , acceleration FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "ksv cercle brugge";
SELECT count(*) FROM league AS T1 JOIN team AS T2 ON T1.country_id = T2.team_country_id WHERE T1.name = 'Italian Serie A' AND T1.id = 2015-2016
SELECT max(T1.goal) FROM Match AS T1 JOIN league AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Netherlands Eredivisie league' AND T1.stage = 'home'
SELECT T1.curve , T1.finishing FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 1;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = '2015-2016' GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.id GROUP BY T1.away_team_api_id ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM Player ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE height < 180 AND overall_strength > 70;
SELECT count(*) , (count(*) - count(firstdate) ) / count(*) FROM patient WHERE sex = 'M'
SELECT count(*) FROM patient WHERE sex = "F" AND birthday > 1930
SELECT count(*) * 100 / count(*) FROM patient WHERE birthday BETWEEN 1930 AND 1940
SELECT count(*) , count(*) FROM patient WHERE diagnosis = 'SLE'
SELECT T1.Date FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 30609
SELECT T2.sex , T2.birthday , T1.examination_date , T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > (SELECT max(LDH) FROM laboratory)
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE diagnosis = 'Positive'
SELECT T1.id , T1.sex , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = "severe"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1937" AND T2.T-CHO > 140
SELECT T1.id , T1.sex , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis < 3.5
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.U-PRO > 10.0
SELECT avg(IGG) FROM examination WHERE patient.age >= 50
SELECT count(*) FROM patient WHERE admission = '1997' AND sex = 'F' INTERSECT SELECT count(*) FROM examination WHERE date = '1997' AND clinic = 'out'
SELECT max(first date) - birthday FROM patient
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Thrombosis" AND T1.date = "1997-01-01" AND T2.sex = "F" GROUP BY T2.sex ORDER BY count(*) DESC LIMIT 1
SELECT max(birthdate) - min(birthdate) FROM patient WHERE diagnosis = 'Normal triglyceride'
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthdate LIMIT 1
SELECT avg(T2.WBC) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date LIKE "%1998%" AND T2.sex = "M" AND T1.diagnosis = "Negative" AND T1.date LIKE "%12.31%"
SELECT T2.Admission , T1.Birthdate FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthdate = (SELECT max(birthdate) FROM patient)
SELECT count(*) , count(*) FROM patient WHERE id IN ( SELECT id FROM examination WHERE urine-pro WHERE uric-acid > 100 )
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date - T2.birthday < 365 )
SELECT count(*) FROM patient WHERE birthday < 1994 AND birthday > 1987
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.T-BIL > 100
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday >= "1/1/1985" AND T2.birthday <= "12/31/1995" GROUP BY T1.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.birthday) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date LIKE "1999%" AND T1.diagnosis = "Laboratory" AND T1.date LIKE "10/1991%"
SELECT T2.Birthdate , T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID ORDER BY T1.HGB DESC LIMIT 1
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = '1996-12-02' AND T2.id = 3605340
SELECT count(*) FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date = "1995-9-4" AND T1.id = 2927464 AND T1.date = "1995-9-4" AND T1.T-CHO = "normal"
SELECT T2.sex FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "AORTITIS"
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = '1994/2/19' AND T2.date = '1993/11/12'
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.date = "1992-06-12" AND T3.glutamic pylvic transaminase = 9
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = "1991-10-21" AND T2.U-PRO = 8.4
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.first_date JOIN laboratory AS T3 ON T3.id = T2.first_date WHERE T1.birthday = 1991 AND T1.first_date = 1991/6/13 AND T3.diagnosis = "SJS" AND T2.date = 1995
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.first_date WHERE T1.date = '1997/1/27'
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthdate = "1959/3/1" AND T1.Examination Date = "1993/9/27"
SELECT avg(T2.T-CHO) - avg(T1.T-CHO) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = "1959/2/18" AND T1.date LIKE "1981/11/%" INTERSECT SELECT avg(T2.T-CHO) - avg(T1.T-CHO) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = "1959/2/18" AND T1.date LIKE "1981/12/%"
{"sql": "SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Behcet\'s' AND T2.examination_date BETWEEN '01/01/197' AND '12/31/1997'"}
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T1.date >= '1987/7/6' AND T1.date <= '1996/1/31' AND T3.GPT > 30 AND T3.alb < 4
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 ORDER BY admission
SELECT count(*) FROM examination WHERE thrombosis = "2" AND ANA Pattern = "S" AND (IGM - T-bil) / (T-bil + 1) > (SELECT avg(IGM - T-bil) FROM examination WHERE thrombosis = "2" AND ANA Pattern = "S" )
SELECT count(*) * 100 / count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO < 0.5 AND T2.UA < 0.5
SELECT count(*) * 100 / count(*) FROM patient WHERE first date = 1981 AND sex = 'M' INTERSECT SELECT count(*) * 100 / count(*) FROM patient WHERE first date = 1981 AND diagnosis = "BEHCET"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = '1991-10' AND T1.sex = 'F' AND T2.t-bil < 100
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ana = "ANA Pattern" AND patient.id = (SELECT id FROM examination WHERE ana = "ANA Pattern")
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "PSS" INTERSECT SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRPR = 2 AND T2.Creatinine = 1 AND T2.LDHCY = 123
SELECT avg(T2.ALB) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "F" AND T1.diagnosis = "SLE" AND T2.plt > 400
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" GROUP BY T1.symptoms ORDER BY count(*) DESC LIMIT 1
SELECT T1.birthday , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.id = 48473
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'APS'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.date = '1997' AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.date = '1997' INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.date = '1997' )
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms LIKE '%thrombocytopenia%' AND T2.diagnosis = 'SLE%'
SELECT count(*) , sex , (count(*) / (SELECT count(*) FROM patient WHERE birthday = '1980' AND diagnosis = 'RA')) FROM patient WHERE birthday = '1980' AND diagnosis = 'RA' GROUP BY sex
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.examination_date BETWEEN 1995 AND 1997 AND T2.diagnosis = "Behcet disease" AND T2.admission != T2.id
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND WBC < 3.5
SELECT admission - first date FROM patient WHERE id = 821298 INTERSECT SELECT first date - first date FROM patient WHERE id = 821298
SELECT T2.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 57266 AND T1.date = (SELECT min(date) FROM laboratory WHERE id = 57266)
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND T1.glutamic oxaloacetic transaminase (GOT) > 60
SELECT T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = '1994' AND T2.id IN (SELECT T2.id FROM examination AS T2 JOIN laboratory AS T3 ON T2.id = T3.id WHERE GOT < 100)
SELECT id FROM patient WHERE sex = 'M' INTERSECT SELECT id FROM laboratory WHERE GPT > 0.5
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.GLU > 0 ORDER BY T2.Birthdate
SELECT avg(LDH) FROM Laboratory WHERE LDH < 150 AND LDH > 140
SELECT T1.id , T2.age FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE LDH BETWEEN 100 AND 300 AND T3.LDH > 10 AND T3.LDH < 300
SELECT count(*) , admission FROM patient WHERE ALP < 15 AND admission = 'In' UNION SELECT count(*) , admission = 'Out' FROM patient WHERE ALP >= 15
SELECT id FROM patient WHERE birthday = '1982-04-01' INTERSECT SELECT id FROM laboratory WHERE ALP < 15
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE TP < (SELECT avg(TP) FROM laboratory)
SELECT T1.id , T1.tp - 100 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.tp > 100
SELECT * FROM patient WHERE sex = 'M' AND alb FROM laboratory WHERE alb > 0.05
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1982/01/01" AND T2.alb is <= 45
SELECT count(*) FROM patient WHERE sex = "F" AND UA > (SELECT avg(UA) FROM patient WHERE sex = "F")
SELECT avg(T2.UA) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "Male" AND T2.id IN (SELECT id FROM patient WHERE diagnosis = "Normal Uric Acid (UA)" )
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.un >= (SELECT min(un) FROM laboratory WHERE un <= 100)
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RA = 'RA' INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UN = 'Normal'
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM laboratory WHERE cre <= 100
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine > 0 FROM patient GROUP BY sex HAVING count(*) > count(*) FROM patient WHERE sex = 'F' AND creatinine <= 0
SELECT T2.id , T2.sex , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id ORDER BY sum(T3.T-BIL) DESC LIMIT 1
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL < 45
SELECT T1.id , T-CHO FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id ORDER BY T-CHO DESC LIMIT 1
SELECT avg(T2.Birthdate) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.sex = "M" AND T3.TBIL > 100
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis LIKE '%triglyceride%' AND T1.TG > 100
SELECT count(*) FROM patient WHERE TG > (SELECT avg(TG) FROM patient WHERE TG < 120) AND birthdate > 50
SELECT DISTINCT id FROM laboratory WHERE cpk <= 150 AND cpk >= 100
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = "M" AND CPK > (SELECT avg(cpk) FROM laboratory)
SELECT T1.id , T2.sex , T2.age FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T3.glu != "normal" AND T3.tcho != "normal"
SELECT T2.id , T1.GLU FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first date = 1991 AND (GLU BETWEEN 35 AND 65)
SELECT T1.id , T1.sex , T1.birthday , T2.age FROM patient AS T1 JOIN (SELECT id , sex , birthday FROM patient WHERE WBC > 100 GROUP BY sex) AS T2 ON T1.id = T2.id ORDER BY T2.age
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.Diagnosis = "lower red blood blood cell"
SELECT T1.sex , T1.birthday , T1.admission , T2.RBC , T1.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T1.birthday >= "1950-04-14" AND T2.RBC > 140
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 120
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" INTERSECT SELECT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.hgb = "normal" ORDER BY T1.birthday DESC LIMIT 1
SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT > 100
SELECT avg(HCT) FROM LABORATORY WHERE EXAMINATION_DATE LIKE "1991%" AND HCT < 45.0
SELECT count(*) - count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.PLT < 100 AND T1.PLT > 100
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = '1984' AND T1.birthday < 50 AND T2.plt = 'normal'
SELECT count(*) , sex , count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 AND T2.UT-PRO = "abnormal" GROUP BY T1.sex
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first_date > 1992 AND T2.pt = "normal"
SELECT count(*) FROM examination WHERE examination_date > "1997/1/1" AND PT = "inactivated partial prothrombin";
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.acl_prothrombin_t385 = 'Positive' INTERSECT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.thrombosis = 'Positive' )
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.wbc = "normal" AND T2.fg = "abnormal"
SELECT count(*) FROM patient WHERE birthday > '1980-01-01' INTERSECT SELECT count(*) FROM laboratory WHERE fg = 'Ab'
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.Symptoms = "proteinuria"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T3.U-PRO = 'Normal'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.IGG > 45.0
SELECT count(*) FROM examination WHERE diagnosis = "Normal IgG" AND symptoms != "No symptoms"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.aCL IgA > 0 AND T1.aCL IgA <= 15 FROM patient WHERE first date = last date
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Normal IgA' AND T1.birthday > 1990-01-01
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.IGM = 'Abnormal' GROUP BY T2.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT patient FROM laboratory) AND CRP > 100
SELECT count(*) FROM patient WHERE id NOT IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Abnormal" INTERSECT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "70")
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "Male" AND T2.RF = "Positive" AND T2.C4 = "Normal"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday > "1985-01-01" AND T1.diagnosis = "Rhuematoid Factor"
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" AND T2.birthday > 60
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT patient.id FROM examination WHERE thrombosis = 'yes' INTERSECT SELECT patient.id FROM examination WHERE thrombosis = 'no' )
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ANA Pattern = "P" AND C3 = "Normal"
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis != "Normal" GROUP BY T1.id ORDER BY T3.IGG DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "Male" AND T2.c4 = "4" AND T2.c5 = "Normal" AND T1.diagnosis = "Thrombosis"
SELECT count(*) FROM patient WHERE id IN ( SELECT id FROM patient WHERE diagnosis = "Normal" INTERSECT SELECT id FROM examination WHERE diagnosis = "Hospital" )
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.RNP > 0
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination WHERE thrombosis = 'Yes' AND (SELECT T-BIL FROM laboratory WHERE SSA = 'Normal' ) )
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SM = 'Abnormal' ORDER BY T1.birthday LIMIT 3
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date > '1997/1/1' AND T2.birthday = '1997-01-01' AND T2.diagnosis = 'Normal Anti-Scl70'
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal anti-scl70" AND T2.sex = "F" EXCEPT SELECT id FROM examination WHERE diagnosis != "Normal anti-scl70")
SELECT count(*) FROM patient WHERE first date < 2000 AND diagnosis = "Normal Anti-SSA"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.SSA = 'abnormal' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T2.SSB = 'Normal'
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T2.id NOT IN (SELECT T2.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.patient WHERE T1.symptoms != "Normal") AND T2.sex = "M" AND T1.diagnosis != "Normal"
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.Symptoms = "normal" AND T1.aCL IgG = "normal" AND T1.aCL IgM = "normal" AND T1.SSB = "normal") AND T2.sex = "M"
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.DNA > 0.5
SELECT count(*) FROM patient WHERE id NOT IN (SELECT patient_id FROM examination) AND dna = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.IGG = 'Normal'
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T2.GLU < 100
SELECT count(*) FROM patient WHERE sex = 'M' AND glutamic oxaloacetic transaminase <= (SELECT max(glutamic oxaloacetic transaminase) FROM patient WHERE sex = 'M')
SELECT min(T1.birthday) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE GLU > 0
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU < 100 AND T2.T-BIL < 100 ORDER BY T1.birthday DESC LIMIT 3
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.GLUTAMIC PYLINASE TRANSAMINASE = "normal" AND T2.sex = "M")
{"sql": "SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T
SELECT max(T2.Date) FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.LDH > 0 AND T1.id NOT IN (SELECT patient_id FROM patient WHERE birthday < '2000-01-01')
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.alp = "abnormal")
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal" AND T1.sex = "Female"
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE sum(T1.U-PRO) < 100
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "SJS" AND T3.U-PRO = "normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id IN (SELECT T3.id FROM laboratory AS T3 ON T3.id = T2.id WHERE T3.alb > 40)
{"sql": "SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT DISTINCT id FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALB) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" ORDER BY T2.U-PRO DESC LIMIT 1
SELECT max(IIGG) FROM LABORATORY WHERE CRE < 1.5
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.creatinine = 'Normal' INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.anti_cardiolipin 抗体浓度 highest
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ana_pattern = 'peripheral' AND T2.description LIKE '%total bilirubin%'
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.anat is null AND T2.birthday = (SELECT max(birthday) FROM patient) AND T2.T-BIL < 100 AND T2.T-BIL > 0
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TP < 150 AND T2.PT < 100
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.ANA Pattern = 'P' AND T1.description LIKE '%normal%'
SELECT count(*) FROM patient WHERE id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symbols = "normal")
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date >= (SELECT max(date) FROM examination) AND T2.diagnosis = 'Normal' AND T1.aCL IgG >= (SELECT max(got) FROM laboratory) AND T1.TG <= 140
SELECT id FROM patient EXCEPT SELECT id FROM examination WHERE thrombosis = 'yes' INTERSECT SELECT id FROM laboratory WHERE cpkt = (SELECT max(cpkt) FROM laboratory)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CPK > 0 AND T2.C4 > 0
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Abnormal" AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = "Abnormal")
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM examination WHERE diagnosis = "normal blood glucose") EXCEPT SELECT id FROM examination WHERE thrombosis = "yes")
SELECT count(*) FROM patient JOIN laboratory ON patient.id = laboratory.id WHERE WBC < 150
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T1.id WHERE T1.diagnosis = "SLE" AND T3.wbc < 1000
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 140 AND T1.sex = "M"
SELECT count(*) FROM patient WHERE id IN ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'normal' INTERSECT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis != 'normal' )
SELECT T2.PLT FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = "MCTD" AND T2.PLT < 150
SELECT avg(PT) FROM Laboratory WHERE sex = 'M' AND U-PRO = "Normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.thrombosis = 'severe' AND T1.id IN (SELECT id FROM laboratory WHERE PT = 'normal')
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Angela" AND T2.last_name = "Sanders";
SELECT count(*) FROM major WHERE department = 'College of Engineering'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Art and Design'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T2.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'vice president'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean"
SELECT count(*) FROM attendance AS T1 JOIN major AS T2 ON T1.link_to_event = T2.event_id JOIN membership AS T3 ON T1.link_to_member = T3.member_id WHERE T2.department = 'Student Club' AND T3.first_name = "Sacha" AND T1.event_date = "2019-04-25"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.link_to_member IN (SELECT T1.member_id FROM attendance AS T1 JOIN major AS T3 ON T1.link_to_member = T3.member_id WHERE T3.major_id = 'Student_Club') AND T2.type = 'meeting' GROUP BY T2.event_id HAVING count(*) > 10;
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.attendance_count > 20 EXCEPT SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.attendance_count = 20 AND T2.type = "fundraiser"
SELECT avg(link_to_event) FROM attendance WHERE link_to_event AND event_date LIKE "2020%"
SELECT T1.major_name FROM major AS T1 JOIN budget AS T2 ON T1.major_id = T2.budget_id WHERE T2.type = 'Support' AND T2.event_status = 'Completed' GROUP BY T1.major_id ORDER BY max(T2.spent) DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Environmental Engineering"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Laugh Out Loud'
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Law' INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Constitutional Studies'
SELECT county FROM zip_code WHERE first_name = "Sherri" AND last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = 'TAYLOR' AND T2.last_name = 'Hewitt'
SELECT T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.category = 'Budget' AND T1.department = 'Vice President'
SELECT sum(T2.spent) FROM attendance AS T1 JOIN expense AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.event_name = 'Student_Club' AND T1.event_date = '2023-09-15'
SELECT T3.city , T3.state FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id JOIN zip_code AS T3 ON T1.zip = T3.zip_code
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Illinois'
SELECT sum(T2.spent) FROM attendance AS T1 JOIN expense AS T2 ON T1.link_to_member = T2.link_to_member JOIN major AS T3 ON T1.link_to_event = T3.link_to_event WHERE T3.major_name = 'Student_Club' AND T1.event_date = '09/25/2023'
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Pierce" INTERSECT SELECT department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.last_name = "Guidi"
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event IN (SELECT event_id FROM event WHERE event_name = "October Speaker")
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date LIKE "10/08/2019"
SELECT avg(T1.cost) FROM expense AS T1 JOIN event AS T2 ON T1.link_to_budget = T2.event_id WHERE T2.event_date = 'September' INTERSECT SELECT avg(T1.cost) FROM expense AS T1 JOIN event AS T2 ON T1.link_to_budget = T2.event_id WHERE T2.event_date = 'October'
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.year = 2019 AND T2.year = 2020 AND T1.category = 'Student_Club'
SELECT DISTINCT LOCATION FROM event WHERE event_name = "Spring Budget Review"
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.category = "Posters" AND T2.expense_date = "2019/9/4"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY remaining DESC LIMIT 1
SELECT notes FROM EVENT WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "O'Gallagher";
SELECT count(*) FROM budget WHERE event_id IN (SELECT link_to_event FROM budget WHERE event_date LIKE "%November%") AND amount > (SELECT max(amount) FROM budget WHERE event_date LIKE "%November%")
SELECT sum(t2.amount) FROM budget AS t1 JOIN link_to_event AS t2 ON t1.link_to_event = t2.event_id WHERE t2.event_id = (SELECT event_id FROM event WHERE event_name = "September Speaker")
SELECT status FROM event WHERE event_date = "2019/8/20" AND TYPE = "Major" AND expense_description = "Post Cards, Posters"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason";
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "medium"
SELECT T2.type FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Christof" AND T1.last_name = "Nielsen";
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President'
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT department FROM major WHERE major_id IN (SELECT member_id FROM member WHERE first_name = "President" AND last_name = "of the club")
SELECT T1.event_date FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Connor" AND T2.type = "Dues"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.date_received LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category = "Advertisement" AND T1.amount > T3.amount WHERE T3.category = "Budget"
SELECT percentage FROM budget AS T1 JOIN link_to_event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Parking" AND T2.event_date = "November" EXCEPT SELECT 100 FROM budget AS T1 JOIN link_to_event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Speaker"
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT T1.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amy" AND T2.last_name = "Firth";
SELECT amount FROM budget ORDER BY remaining LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T2.college FROM attendance AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id GROUP BY T2.major_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY amount DESC LIMIT 1
SELECT T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer";
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE first_name = 'Casey' AND last_name = 'Mason'
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'Closed' GROUP BY T1.event_name ORDER BY sum(T2.spent) / sum(T2.amount) DESC LIMIT 1
SELECT count(*) FROM member WHERE POSITION = 'president'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020-01-01"
SELECT sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = 'food'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.first_name , T2.last_name HAVING count(*) > 7
SELECT T1.member_id FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN major AS T3 ON T3.major_id = T1.link_to_member WHERE T3.major_name = 'Interior Design' AND T2.type = 'Community Theater'
SELECT T2.major_name FROM zip_code AS T1 JOIN major AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "South Carolina" AND T1.short_state = "SC" AND T2.college = "Georgetown"
SELECT count(*) FROM income AS T1 JOIN link_to_member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour" AND T1.source = "income";
SELECT T1.member_id FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member HAVING max(T1.amount) > 40
SELECT sum(t2.cost) FROM expense AS t1 JOIN budget AS t2 ON t1.link_to_budget = t2.budget_id WHERE t2.link_to_event = (SELECT event_id FROM event WHERE event_type = 'Yearly Kickoff')
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T3.link_to_event = T1.link_to_event WHERE T3.category = 'Yearly Kickoff' AND T3.amount > 0
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id ORDER BY T1.amount DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id ORDER BY T2.spent LIMIT 1
SELECT count(*) , event_name FROM event WHERE TYPE = 'Yearly Kickoff' GROUP BY event_name
SELECT count(*) , department FROM major WHERE department = 'Finance' INTERSECT SELECT count(*) , department FROM major WHERE department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/%" AND amount = (SELECT avg(amount) FROM income WHERE date_received LIKE "9/%" )
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'"}
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Community Theater" AND T1.date = "2019"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi" GROUP BY T1.link_to_event
SELECT avg(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_name = 'typical'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2 spent DESC LIMIT 1
SELECT T2.member_id FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "Women's Soccer" AND T2.link_to_member = T3.member_id AND T3.first_name = "Maya" AND T3.last_name = "Mclean";
SELECT count(*) FROM event WHERE event_date = '2019' AND TYPE = 'Sports' INTERSECT SELECT count(*) FROM event WHERE event_date = '2019' AND TYPE = 'Community Service'
SELECT T1.cost FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'September Speaker'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'closed' AND T2.amount > (SELECT max(amount) FROM budget WHERE event_status = 'closed')
SELECT T1.type , sum(T2.cost) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Meeting' GROUP BY T1.type
SELECT category FROM budget WHERE event_id = (SELECT event_id FROM budget WHERE event_name = 'April Speaker') ORDER BY amount;
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT category FROM budget WHERE spent = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T2.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.type = 'Parking'
SELECT sum(T2.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_date = '08/20/2019'
SELECT T2.first_name , T2.last_name , sum(T1.cost) FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_id = "rec4BLdZHS2Blfp4v" GROUP BY T1.expense_id
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "X-Large"
SELECT zip_code FROM member WHERE first_name = "" AND last_name = "" AND (SELECT sum(expense) FROM expense WHERE approved = 1 AND TYPE = 1) < 50
SELECT T1.major_name FROM major AS T1 JOIN link_to_major AS T2 ON T1.major_id = T2.major_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T3.first_name = "PHILIP" AND T3.last_name = "CULLIN"
SELECT position FROM member WHERE link_to_major = (SELECT major_id FROM major WHERE department = 'Business')
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Business" AND T2.t_shirt_size = "Medium";
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT event_name FROM event WHERE event_date = "2020-03-24T12:00:00"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT count(*) * 100 / count(*) FROM major WHERE department = 'Business'
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T2.city , T2.state FROM major AS T1 JOIN zip_code AS T2 ON T1.major_id = T2.zip_code}
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Vice President" AND T2.location = "900 E. Washington St."
SELECT T2.last_name , T2.position FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date = '09/10/2019' AND T1.type = 'buy' AND T2.department = 'Student'
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer Event'"}
SELECT count(*) , percentage FROM (SELECT T1.first_name , T1.last_name , T1.t_shirt_size FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'medium' AND T2.amount = 50 GROUP BY T1.first_name , T1.last_name , T1.t_shirt_size) AS T3
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.zip_code LIKE "%zip%"
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan Municipio' AND TYPE = 'Post Office Box'
SELECT event_name FROM event WHERE event_date LIKE "3/%" AND TYPE = "game" AND event_date BETWEEN "2019-03-15" AND "2019-03-20"
SELECT T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T3.budget_id = T2.member_id WHERE T3.amount > 50
SELECT T1.first_name , T1.last_name , T2.link_to_event FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.event_id IN ( SELECT event_id FROM event WHERE event_date BETWEEN '10-01' AND '11-19' )
SELECT T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Katy" AND T2.major_name = "rec1N0upiVLy5esTO"
SELECT phone FROM member WHERE link_to_major IN (SELECT major_id FROM major WHERE department = 'Business' AND college = 'College of Agriculture and Applied Sciences')
SELECT T1.email FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 20 AND T2.date_received >= '09/10/2019' AND T2.date_received <= '11/19/2019'
SELECT count(*) FROM major WHERE department = 'College of Education & Human Services' AND major_name = 'Education Major'
SELECT count(*) FROM budget WHERE spent > (SELECT avg(spent) FROM budget)
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-01" AND "2020-03-31"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.amount > 50
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) , TYPE FROM zip_code WHERE TYPE = 'PO box'
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT max(spent) FROM budget)
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event JOIN expense AS T3 ON T2.budget_id = T3.budget_id WHERE T2.amount BETWEEN 50 AND 100 AND T3.expense_description = 'Pizza'
SELECT T1.first_name , T1.last_name , T1.link_to_major FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > 100
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip GROUP BY T1.state HAVING sum(T1.amount) > 40;
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member HAVING count(*) > 1 ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM member EXCEPT SELECT avg(amount) FROM income
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.budget_id GROUP BY T1.event_id HAVING avg(T2.cost) < (SELECT avg(cost) FROM expense)
SELECT count(*) , sum(cost) , avg(cost) FROM budget WHERE category = 'Meeting'
SELECT amount FROM budget WHERE category = 'water' OR category = 'chips' OR category = 'cookies' ORDER BY sum(amount) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_budget = T2.member_id GROUP BY T2.member_id ORDER BY T1 spent DESC LIMIT 5;
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member HAVING avg(T2.cost) > (SELECT avg(cost) FROM expense)
SELECT count(*) FROM zip_code WHERE state = "New Jersey" - count(*) FROM zip_code WHERE state = "Vermont"
SELECT T_major.department FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.link_to_major WHERE T_member.first_name = "Garrett" AND T_member.last_name = "Gerke";
SELECT T2.first_name , T2.last_name , T2.position , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = "water" INTERSECT SELECT T2.first_name , T2.last_name , T2.position , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = "veggie tray" INTERSECT SELECT T2.first_name , T2.last_name , T2.position , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = "supplies"
SELECT last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Elementary Education" AND T2.position = "student"
SELECT T2.category , T1.amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event == T2.event_id WHERE T2.event_name == 'January Speaker'
SELECT T2.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = "food"
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.budget_id = T2.budget_id WHERE T1.event_date = '9/9/2019'
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT first_name , last_name , major_name FROM member AS T1 JOIN major AS T2 ON T1.zip = T2.major_id WHERE T1.position = 'Secretary'
SELECT T2.event_name , T1.spent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'Speaker Gift'
SELECT T1.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT T.member_id , T.first_name , T.last_name , T.position FROM member AS T JOIN zip_code AS S ON T.zip = S.zip_code WHERE S.city = "Lincolnville" AND S.state = "North Carolina" AND S.zip_code = 28092
SELECT count(*) FROM gasstations WHERE country = "CZE" AND segment = "Premium"
SELECT Consumption FROM yearmonth WHERE currency = "EUR" DIFFERENCES FROM yearmonth WHERE currency = "CZK"
SELECT T1.Description FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" ORDER BY T2.Consumption ASC LIMIT 1
SELECT avg(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.segment = 'SME' AND T1.date <= "2013-12-31"
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" AND T2.Date = "2011" ORDER BY T2.Consumption DESC LIMIT 1
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.consumption < 30000 AND T1.segment = "KAM"
SELECT sum(T2.Consumption) - sum(T1.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" INTERSECT SELECT sum(T2.Consumption) - sum(T1.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR"
SELECT T1.Date , T2.Amount FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Price > 10 AND T2.Amount > 1000 GROUP BY T1.Date ORDER BY sum(T2.Amount) DESC LIMIT 1
SELECT T2.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T2.segment ORDER BY sum(T2 Consumption) ASC LIMIT 1
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" GROUP BY T1.Date ORDER BY SUM(T1.Consumption) DESC LIMIT 1
SELECT T2.Date FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "SME" AND T2.Date LIKE "2013%" ORDER BY Consumption DESC LIMIT 1
{"sql": "SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'SME' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'LAM' INTERSECT SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND segment = 'KAM' INTERSECT SELECT avg(consumption) -
SELECT T1.segment , max(T2.consumption) , min(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = 'SME' AND T2.date = '2012-01-01' OR T2.date = '2013-01-01' GROUP BY T1.segment
SELECT sum(T1.consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.Date LIKE "8/%" AND T1.Date LIKE "10/%" AND T2.segment = "Customer6" AND T1.Month = 13
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" AND segment = "discount" GROUP BY country HAVING count(*) - count(*) FROM gasstations WHERE country = "Slovakia" AND segment = "discount"
SELECT T2.Consumption - T1.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "April" AND T1.date = 2013 AND T1.customerID = 7 - T1.customerID = 5
SELECT count(*) - count(*) FROM customers WHERE currency = 'CZK' - count(*) FROM customers WHERE currency = 'EUR'
SELECT T2.customerid , T1.currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro" AND T2.date LIKE "10/03/%" ORDER BY T2.consumption DESC LIMIT 1
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "KAM" ORDER BY T1.Consumption DESC LIMIT 1
SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013%" AND T2.Segment = "KAM"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Consumption > 46.73
SELECT country , count(*) FROM gasstations GROUP BY country HAVING sum(price) >= 1000
SELECT count(*) * 100.0 / (SELECT sum(currency) FROM customers) FROM customers WHERE currency = 'EUR'
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date LIKE "2012/%" AND T2.Consumption > 528.3
SELECT count(*) , country FROM gasstations WHERE country = 'Slovakian' AND segment = 'premium'
SELECT customerid FROM yearmonth WHERE date = "2013-09" GROUP BY customerid ORDER BY consumption DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date LIKE "9/%" ORDER BY consumption LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date = "2012-06" ORDER BY T2 Consumption ASC LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE YEAR() = 2012
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T1.Description FROM products AS T1 JOIN yearmonth AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Date LIKE "09/%" AND T2.year = 2013
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "2013-%" AND T1.Date LIKE "06/%"
SELECT T2.chainid FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.price = 0x100e
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Amount > 0 AND T2.Price > 0 AND T2.Currency = "Euro"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012-01-%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro" AND T2.consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.TransactionID WHERE T2.GasStationID = (SELECT GasStationID FROM gasstations WHERE country = 'Czech Republic')
SELECT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = "Czech Republic" AND T1.date > "2012/1/1"
SELECT avg(T1.Price) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic"
SELECT avg(total) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro"
SELECT T2.CustomerID FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2012/08/25" GROUP BY T2.CustomerID ORDER BY sum(T1.Amount) DESC LIMIT 1
SELECT T3.country FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid JOIN gasstations AS T3 ON T1.gasstationid = T3.gasstationid WHERE T1.date LIKE "2012/8/25%" AND T2.segment = "Paid" GROUP BY T3.country ORDER BY count(*) DESC LIMIT 1
SELECT T2.currency FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012-08-24 16:25:00"
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date = "2012/8/23 21:20:00"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "CZK" AND T2.date LIKE "2012/08/26%"
SELECT segment FROM customers ORDER BY date ASC LIMIT 1
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.GasStationID WHERE T2.Date LIKE "2012/%" AND T2.Time LIKE "12:42:00"
SELECT ProductID FROM transactions_1k WHERE Date AND TIME = '2012/8/23 21:20:00'
SELECT T1.Date , T1.Amount , T1.TransactionID , T1.Price FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/01/24" AND T2.Amount = 124.05
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/26" AND TIME BETWEEN "8:%02h" AND "9:%02h" AND productid = 1004563
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013/%" AND T1.Consumption LIKE "214582.17"
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = "No.667467"
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID JOIN yearmonth AS T3 ON T2.Date = T3.Date WHERE T3.Date = "2012/8/24" AND T2.Amount = 548.4
SELECT count(*) FROM customers WHERE date = "2012/8/25" AND currency = "EUR"
SELECT avg(Consumption) - (SELECT min(Consumption) FROM yearmonth WHERE date = '2012/8/25') FROM yearmonth WHERE YEAR = 2012 AND MONTH = 8
SELECT GasStationID FROM transactions_1k GROUP BY GasStationID ORDER BY sum(Amount) DESC LIMIT 1
SELECT count(*) / sum(count(*) ) FROM customers WHERE country = "SVK" AND segment = "premium"
SELECT sum(T1.Amount) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date = "2012-01" AND T1.CustomerID = 38508
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID ORDER BY T2.Amount DESC LIMIT 5
SELECT avg(T1.Price) , T1.CustomerID , T2.Currency FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID JOIN customers AS T3 ON T2.CustomerID = T3.CustomerID GROUP BY T1.CustomerID ORDER BY avg(T1.Price) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = (SELECT ProductID FROM transactions_1k ORDER BY T3.Price LIMIT 1)
SELECT T1.Consumption FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T2.ProductID = 5 AND T1.Date LIKE "2012-08-%" AND T1.Amount > 29.00
