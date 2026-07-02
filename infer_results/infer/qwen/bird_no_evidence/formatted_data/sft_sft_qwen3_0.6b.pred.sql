SELECT max(T1.EligibleFree) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = "Alameda" AND T1.K-12 = 12
SELECT min(freetop) FROM frpm WHERE ages BETWEEN 5 AND 17 AND school IN (SELECT school FROM schools WHERE statustype = 'EIL')
SELECT T2.zip FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = 'Fresno' Office of Education
SELECT t1.street FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY t2.FRPMP COUNT DESC LIMIT 12
SELECT phone FROM schools WHERE opendate > 2000/1/1 AND fundingtype = 'Y'
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.AvgScrMath > 400 AND T1.VIRTUAL = 'Y'
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.numtaker > 500 AND T1.Magnet = 'Y' OR T1.GSoffered = 'M'
SELECT T2.phone FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T1.numtstakenr = (SELECT max(numtstakenr) FROM satscores WHERE avg(scrread) > 1500)
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.K-12 = (SELECT max(frpm.county) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.K-12 = 1000)
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.FundingType = 'Y' AND T2.Charter School = 'Math' AND avg(T2.AvgScrMath) > 560
SELECT count(*) FROM students AS T1 JOIN frpm AS T2 ON T1.cds = T2.cds JOIN satscores AS T3 ON T3.cds = T2.cds WHERE T3.rtype = 'Reading' AND T1.age BETWEEN 5 AND 17
SELECT cdscode FROM sum(enrollment) > 500 GROUP BY cdscode HAVING sum(enrollment) > 500
SELECT max(Eligible Free) FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.RateExcellence > 0.3 AND T1.age BETWEEN 5 AND 17
SELECT phone FROM schools ORDER BY avg(T1.ScrMath) DESC LIMIT 3
SELECT school FROM frpm ORDER BY enrollment DESC LIMIT 5
SELECT T1.district FROM frpm AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.district ORDER BY avg(T2.AvgScrRead) DESC LIMIT 1
SELECT count(*) FROM (SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.city = 'Alameda' INTERSECT SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.numtstaker < 100)
SELECT T1.Charlotte FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrWrite > 499 GROUP BY T1.Charlotte
SELECT count(*) FROM (SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.district = 'Fresno' AND T2.fundingtype = 'Y' AND T1.numtesttaker <= 250)
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath = (SELECT max(AvgScrMath) FROM satscores WHERE rtype = "Math")
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.LowGrade = 9 AND T2.HighGrade = 12
SELECT count(*) FROM (SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.county = "Los Angeles" AND T2.freemealcount > 500 INTERSECT SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.county = "K-12" AND T2.freemealcount < 700)
SELECT T2.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.district = 'Contra Costa' ORDER BY T2.numtstaken DESC LIMIT 1
SELECT T1.school , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.enrollment > 30 AND T2.age < 5-17
SELECT T2.school FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.K-12 > 0.1 INTERSECT SELECT T3.school FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T1.NumTstTaker >= 1500
SELECT T1.fundingtype FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE avg(T2.avgmath) > 400 GROUP BY T1.fundingtype
SELECT T2.state , T2.full_address FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.city = 'Monterey' AND T2.Ages > 800
SELECT T1.school , avg(T2.AvgScrWrite) , T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.opendate > 1991 OR T1.opendate < 2000 GROUP BY T1.cds
SELECT T1.school , T1.documenttype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.fundingtype = 'L' AND T2.enrollment > (SELECT avg(enrollment) FROM frpm WHERE fundingtype = 'L')
SELECT opendate FROM schools WHERE enrollment = (SELECT max(enrollment) FROM frpm)
SELECT city FROM frpm ORDER BY enrollment LIMIT 5 AND grade BETWEEN 1 AND 12
SELECT T2.EligibleFree FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.NCESchool DESC LIMIT 10 AND T1.NCESchool DESC LIMIT 11
SELECT T1.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Free Meal Count DESC LIMIT 5
SELECT T1.Website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Free Meal Count = 1900-2000 AND T2.Age >= 5 AND T2.Age <= 17
SELECT freemeal FROM frpm WHERE school IN (SELECT T1.cds FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.adm_fname = 'Kacey' AND T1.adm_lname = 'Gibson') AND T2.age BETWEEN 5 AND 17
SELECT t2.admemail FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.grade >= 12 GROUP BY t1.cdscode ORDER BY count(*) LIMIT 1
SELECT T1.adm_fname1 , T1.adm_lname1 FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.numge1500 = (SELECT max(numge1500) FROM satscores)
SELECT t1.street , t1.city , t1.zip , t1.state FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY t2.lowgrade DESC LIMIT 1
SELECT T2.Website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = "Los Angeles" AND T2.NumTstTakr BETWEEN 2000 AND 3000
SELECT avg(T1.NumTstTakr) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.OpenDate >= 1980 AND T1.OpenDate <= 1231
SELECT T1.phone FROM phones AS T1 JOIN schools AS T2 ON T1.school = T2.cdscode GROUP BY T1.school ORDER BY avg(T2.score) LIMIT 1
SELECT T2.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY avg(T1.ScrRead) DESC LIMIT 5
SELECT T1.EDOPSNAME FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T2.cds ORDER BY avg(T2.AvgScrMath) DESC LIMIT 1
SELECT avg(T1.AvgMath) , T1.County FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.County ORDER BY avg(T1.AvgMath) LIMIT 1
SELECT T1.city FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY sum(T2.numtstakr) >= 1500 DESC LIMIT 1
SELECT T2.School , avg(T1.AvgScrWrite) FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T1.AdmFName1 = "Ricci" AND T1.AdmLName1 = "Urich" GROUP BY T2.School
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.LowGrade >= 1 AND T2.HighGrade <= 12 GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.OpenDate) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = "Alameda" AND T1.District = "Elementary School District" AND T1.year = 1980
SELECT count(*) FROM schools WHERE county = 'Orange' AND district = 'Unified' UNION SELECT count(*) FROM schools WHERE county = 'Elementary' AND district = 'Economic Matters'
SELECT school , closeddate FROM schools GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode JOIN satscores AS t3 ON t2.cds = t3.cds GROUP BY t3.cds ORDER BY avg(t3.AvgScrMath) DESC LIMIT 7
SELECT T1.Street , T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY avg(T2.AvgScrRead) LIMIT 1
SELECT count(*) FROM (SELECT T1.cds FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.numge1500 >= 1500 AND T1.mailcity = 'Lakeport')
SELECT count(*) FROM (SELECT T1.cds FROM schools AS T1 JOIN frpm AS T2 ON T1.cds = T2.cds WHERE T1.city = 'Fresno')
SELECT school , zip FROM schools WHERE adm_fname1 = "Avetik" AND adm_lname1 = "Atoian"
SELECT count(*) FROM schools WHERE mailstate = 'California' AND county = 'Colusa' UNION SELECT count(*) FROM schools WHERE mailstate = 'Humboldt' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'California' AND city = 'San Joaquin'
SELECT T1.Phone , T1.External FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T2.cds ORDER BY avg(T2.AvgScrWrite) DESC LIMIT 333
SELECT phone , ext FROM schools WHERE zip = "95203-3704"
SELECT Website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT Website FROM schools WHERE AdmLName2 = "Dante Alvarez"
SELECT Website FROM schools WHERE Virtual = 'Y' AND Chartered = "San Joaquin"
SELECT count(*) FROM schools WHERE city = 'Hickman' AND charter = 'Y' AND district = 'Elementary School District'
SELECT count(*) FROM schools WHERE county = "Los Angeles" AND EILCode >= 1 AND EILCode <= 12 AND percentEligibleFree < 0.18
SELECT school , city FROM schools WHERE charter = "00D2"
SELECT count(*) FROM schools WHERE MailCity = "Hickman" AND Charter = "00D4"
SELECT percent(*) FROM schools WHERE county = 'Santa Clara' AND fundingtype = 'L'
SELECT count(*) FROM schools WHERE county = 'Stanislaus' AND opendate BETWEEN '1/1/2000' AND '12/31/2005' AND fundingtype = 'D';
SELECT sum(t1.closeddate) FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.year = 1989 AND t1.district = "Community College District" AND t1.city = "San Francisco"
SELECT T1.county FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.year = 1980 AND T2.schooltype = 'Y' AND T1.county = 'X' GROUP BY T1.county ORDER BY count(*) DESC LIMIT 1
SELECT National Center for Educational Statistics FROM schools WHERE State = 'T' AND EdOpsCode = 'N'
SELECT count(*) FROM schools WHERE county = 'Alpine' AND statustype = 'A' AND statustype = 'C'
SELECT district FROM schools WHERE magnet = 'No' AND city != 'Fresno'
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = 'Y' AND T2.year = 2014-2015 AND T2.age BETWEEN 5 AND 17 WHERE T1.school = 'State Special School' AND T2.year = 2013-14 CALPADS Fall 1 Certification Status
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.school = 'Youth Authority School' AND T1.age BETWEEN 5 AND 17 AND T2.mailstreet = 'PO Box 1040'
SELECT min(T1.LowGrade) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.NCESDist = 0613360
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.County = 37 AND T2.Nationality = '2' AND T2.EducationalName = 'Breakfast Provision 2'
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.LowGrade = 9 AND T2.HighGrade = 12 AND T1.county = 'Merced'
SELECT T1.school , T1.Percent (%) Eligible Free FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.county = "Los Angeles" AND T1.grade = 5 AND T1.grade = 9
SELECT T2.DISTINCT grade FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.city = "Adelanto" GROUP BY T2.DISTINCT grade ORDER BY count(*) DESC LIMIT 1
SELECT county , count(*) FROM schools WHERE city = 'San Diego' AND city = 'Santa Barbara' AND gsoffered = 'N' GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT school , city FROM schools WHERE state = 'California' ORDER BY latitude LIMIT 1
SELECT grade span FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Magnet = 'Kindergarten' AND T2.Magnet = '8th grade' GROUP BY T1.city
SELECT district FROM schools GROUP BY admfname ORDER BY count(*) DESC LIMIT 2
SELECT T1.District FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = "Alusine" AND T1.AdmLName1 = "Economic Matters" AND T1.District = "K-12"
SELECT T1.District , T1.County , T2.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Charter = 40
SELECT t2.admemail FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.county = "San Bernardino" AND t1.opendate >= 1/1/2009 AND t1.opendate <= 12/31/2010 WHERE t1.schooltype = "Public" INTERSECT SELECT t2.admemail FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.county = "San Bernardino" AND t1.opendate >= 1/1/2009 AND t1.opendate <= 12/31/2010 WHERE t1.schooltype = "Unified"
SELECT T2.school FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T1.numtstakr >= 1500 ORDER BY T1.numtstakr DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "East Bohemia" AND T1.account_id IN (SELECT T1.account_id FROM card AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = "East Bohemia")
SELECT count(*) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A2 = "Prague"
SELECT avg(t1.unemployment) FROM 1995 AND 1996 GROUP BY 1995 ORDER BY avg(t1.unemployment) DESC LIMIT 1
SELECT count(*) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender > 6000 AND T2.gender < 10000
SELECT count(*) FROM customer AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = "North Bohemia" AND T1.gender = "male" AND avg(T1.salary) > 8000
SELECT account_id FROM client WHERE gender = 'F' AND birth_date = (SELECT max(birth_date) FROM client WHERE gender = 'F') INTERSECT SELECT account_id FROM client GROUP BY account_id ORDER BY avg(salary) DESC LIMIT 1
SELECT client_id FROM client ORDER BY birth_date DESC LIMIT 1 INTERSECT SELECT client_id FROM client GROUP BY client_id ORDER BY avg(salary) DESC LIMIT 1
SELECT count(*) FROM card WHERE issued = 'Weekly' AND owned_by = 'Owner'
SELECT client_id FROM card WHERE issued > (SELECT min(issued) FROM card WHERE operation = 'disponent')
SELECT T1.account_id , T2.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = 1997 ORDER BY amount ASC LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 12 AND T2.status = 'yes' AND T2.date = 1993
SELECT count(*) FROM customer AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = 'F' AND T1.birth_date < 1950 AND T3.A3 = 'Sokolov'
SELECT DISTINCT account_id FROM trans WHERE date = (SELECT min(date) FROM trans WHERE YEAR = 1995)
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 3000 AND T1.date < 1997
SELECT T1.client_id FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T2.issued = "1994/3/3"
SELECT T1.account_id , T1.date FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1998/10/14'
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = "1994/8/25"
SELECT max(amount) FROM trans AS T1 JOIN card AS T2 ON T1.account_id = T2.account_id WHERE T2.issued = 1996/10/21
SELECT gender FROM client ORDER BY avg(salary) DESC LIMIT 1
SELECT T1.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = (SELECT T2.district_id FROM loan ORDER BY amount DESC LIMIT 1)
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Jesenik" AND T1.gender = "W"
SELECT T1.district_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1998/9/2' AND T2.type = 'client' GROUP BY T1.district_id HAVING count(*) = 5100
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Litomerice" AND T1.year = 1996
SELECT T3.district_id FROM client AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.gender = 'F' AND T1.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/3%"
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.city = "Prague" ORDER BY T1.date ASC LIMIT 1
SELECT T1.gender , count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "south Bohemia" GROUP BY T1.gender ORDER BY count(*) DESC LIMIT 1
SELECT T2.balance - T1.balance FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = '1993/7/5' AND T1.date = '1998/12/27'
SELECT amount FROM loan WHERE payments = 'yes'
SELECT count(*) FROM loan WHERE amount < 10000 AND status = 'yes'
SELECT T1.account_id , T1.district_id , T2.district_region FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.year = 1993 AND T2.district_region > 0
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'east Bohemia' AND T1.year >= 1995 AND T1.year <= 2000 GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = 'Prachatice')
SELECT T2.district_id , T2.region FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.loan_id = 4990
SELECT T1.account_id , T1.district_id , T1.region FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 30000
SELECT loan_id , district_id , avg(amount) FROM loan WHERE duration = 60 GROUP BY loan_id
SELECT T2.district_id , T4.state FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T1.client_id = T3.client_id JOIN district AS T4 ON T2.district_id = T4.district_id WHERE T3.gender = 'Debt' AND T1.status = 'R' AND T4.state != 'U' AND T1.date BETWEEN 1995 AND 1996
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM district WHERE district_name = 'Decin' AND YEAR = 1993)
SELECT account_id FROM card GROUP BY account_id HAVING count(*) = 1
SELECT district_id FROM account GROUP BY district_id ORDER BY count(*) DESC LIMIT 9
SELECT T1.A2 , T1.A3 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN card AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'non-credit card' AND T2.date LIKE '1996-01-09' ORDER BY T2.date LIKE '1996-01-09' DESC LIMIT 10
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = "South Bohemia") EXCEPT SELECT count(*) FROM card WHERE type = "Credit"
SELECT T3.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.status = 'Y' GROUP BY T3.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.gender = 'M'
SELECT T3.location , T3.district_name FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T1.account_id = T3.account_id WHERE T1.year = 1996 ORDER BY T1.unemployment_rate DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM account WHERE frequency > 1996)
SELECT count(*) FROM account AS T1 JOIN card AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit Card' AND T2.issued = 'No'
SELECT count(*) FROM loan WHERE amount >= 25000 AND date BETWEEN 1995-01-01 AND 1997-02-01 WHERE status = 'APRIL'
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.location = 1 AND T1.type = 'R'
SELECT count(*) FROM client WHERE birth_date LIKE "1995%" ORDER BY count(*) DESC LIMIT 2
SELECT count(*) FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = "OWNER" AND T1.type = "high-level credit card"
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Pisek"
SELECT T2.district_id FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 10000 AND T1.date LIKE "1997%"
SELECT T1.account_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id JOIN bank AS T3 ON T2.bank_to = T3.account_id WHERE T3.country = 'Pisek'
SELECT T1.account_id FROM account AS T1 JOIN card AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Gold'
SELECT avg(T2.amount) FROM card AS T1 JOIN order AS T2 ON T1.card_id = T2.card_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.type = 'Credit Card' AND T2.year = 2021
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit Card' AND amount < (SELECT avg(amount) FROM trans WHERE YEAR = 1998)
SELECT T2.account_id FROM card AS T1 JOIN loan AS T2 ON T1.card_id = T2.account_id JOIN account AS T3 ON T3.account_id = T2.account_id WHERE T3.gender = 'F' AND T1.type = 'Credit Card'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A2 = "South Bohemia"
SELECT T2.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = "Tabor" AND T3.A3 = "Eligible"
SELECT DISTINCT TYPE FROM account WHERE district_id NOT IN (SELECT district_id FROM loan WHERE amount > 8000 AND amount < 9000) INTERSECT SELECT avg(T1.income) FROM resident AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id > 8000 AND T2.district_id < 9000)
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN bank AS T3 ON T2.bank = T3.account_id WHERE T3.A2 = "North Bohemia" AND T3.A3 = "AB"
SELECT DISTINCT T3.district FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T2.type = 'withdrawal'
SELECT avg(T1.crime) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.year = 1995 AND T2.A2 > 4000 AND T1.year = 1997
SELECT count(*) FROM card WHERE type = 'classic' AND issued = 'yes'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT count(*) FROM card WHERE TYPE = 'Gold' AND issued < 1998
SELECT T1.owner FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.account_id = 532 AND T1.year = 1995
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T2.amount FROM client AS T1 JOIN trans AS T2 ON T1.client_id = T2.account_id WHERE T1.account_id = 3356 AND T2.type = 'Cash'
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id IN (SELECT district_id FROM account WHERE amount < 200000)
SELECT T2.type FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T1.client_id = 13539
SELECT T2.region FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = "Completed" EXCEPT SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = "Pending"
SELECT T2.account_to FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.order_id = 32423
SELECT T1.transaction_id FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Jesenik"
SELECT T1.client_id FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'Junior' AND T2.issued > 1996
SELECT avg(T1.salary) FROM client AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'W' AND avg(T1.salary) > 10000
SELECT T1.gender , avg(T2.amount) FROM client AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.birth_date BETWEEN 1996 AND 1997 GROUP BY T1.gender
SELECT count(*) FROM card WHERE TYPE = 'Credit Card' AND issued > 1995
SELECT count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "East" AND T1.A3 = "North" Bohemia AND T2.year = 1996
SELECT count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.account_number >= 1 AND T1.account_number <= 10
SELECT count(*) , T1.aim FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = 3539 GROUP BY T1.aim
SELECT birth_date FROM client WHERE account_id = 130
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Owner' INTERSECT SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Statement'
SELECT sum(amount) , sum(payments) FROM loan WHERE client_id = 992
SELECT T1.gender FROM client AS T1 JOIN trans AS T2 ON T1.client_id = T2.account_id WHERE T2.type = '851'
SELECT T2.type FROM client AS T1 JOIN card AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 9
SELECT sum(T2.amount) FROM client AS T1 JOIN trans AS T2 ON T1.client_id = T2.account_id WHERE T1.company_id = 617 AND T2.date LIKE "1998%"
SELECT T1.client_id , T1.birth_date FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "East Bohemia" AND T1.birth_date BETWEEN 1983 AND 1987
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'F' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM customer AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.gender = 'male' AND T1.birth_date BETWEEN 1974 AND 1976 AND T2.pments > 4000
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Beroun" AND T1.year > 1996
SELECT count(*) FROM customer AS T1 JOIN card AS T2 ON T1.account_id = T2.account_id WHERE T1.gender = 'F' AND T2.type = 'Junior'
SELECT count(*) FROM accounts AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Prague" AND T1.gender = "F"
SELECT count(*) FROM client WHERE gender = 'male' AND weekly = 'yes'
SELECT count(*) FROM card WHERE issued = 'Weekly' AND owned_by = 'Owner'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 AND T2.date < 1997 ORDER BY amount LIMIT 1
SELECT account_id FROM client WHERE gender = 'F' AND birth_date = (SELECT max(birth_date) FROM client WHERE gender = 'F') INTERSECT SELECT account_id FROM client GROUP BY account_id ORDER BY avg(salary) LIMIT 1
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date LIKE "1920%" AND T2.A4 = "East Bohemia"
SELECT count(*) FROM loan WHERE duration < 24 AND payments = 'yes' AND weekly issuance = 'T'
SELECT avg(amount) , T1.date , T1.type FROM loan AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'R' AND T1.status = 'Y' GROUP BY T1.date
SELECT T1.client_id , T1.district_id FROM client AS T1 JOIN order AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'Perman' UNION SELECT T1.client_id , T1.district_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'Appraisal'
SELECT T1.client_id , T1.age FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'Credit Card' INTERSECT SELECT T1.client_id , T1.age FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.type = 'Economic Matters'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = "Cl")
SELECT avg(T1.count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single'
SELECT avg(count(*) FROM singlebonded molecules WHERE label = 'carcinogenic'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Sodium' AND T1.label != 'Carcinogenic'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple' AND T1.label = 'carcinogenic'
SELECT count(*) FROM double-bonded molecule WHERE element = 'C'
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE label = 'carcinogen IX' ORDER BY molecule_id
SELECT DISTINCT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'C'
SELECT T004_8_9 FROM atom
SELECT T1.element FROM atom AS T1 JOIN bonded AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double"
SELECT label FROM molecule WHERE element = 'H' GROUP BY label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = 'Chlorine'
SELECT T1 atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'non-carcinogenic'
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT T1.molecule_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR004_8' INTERSECT SELECT T1.molecule_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR004_20')
SELECT label FROM molecule EXCEPT SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'tin'
SELECT count(*) FROM (SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'iodine' INTERSECT SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'sulfur')
SELECT T1 atom_id FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = "Triple"
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id JOIN molecule AS T4 ON T4.molecule_id = T3.molecule_id WHERE T4.label = "TR181"
SELECT count(*) FROM molecule WHERE label NOT IN (SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'F'))
SELECT count(*) FROM triple AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'carcinogenic'
SELECT T0.element FROM atom AS T0 JOIN molecule AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.label = "TR000" ORDER BY T0.element
SELECT T1 atom_id FROM atom AS T1 JOIN bonded AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.label = "TR001" AND T2.bond_id = "TR001_2_6"
SELECT count(*) FROM molecule WHERE label = 'Carcinogenic' OR label != 'Non-carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = "TR000_2_5"
SELECT T2.bond_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE T1.element = 2 AND T2.bond_id = "TR000_2"
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.molecule_id ORDER BY count(*) DESC LIMIT 5
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR008" AND T1.bond_type = "double"
SELECT count(*) FROM molecule WHERE label = 'Carcinogen IX' AND three decimal places
SELECT count(*) FROM molecule WHERE label = "TR206" AND element = "H"
SELECT T0.bond_type FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000"
SELECT T0.label FROM molecule AS T0 JOIN atom AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.molecule_id = "TR060"
SELECT T0.bond_type FROM bond AS T0 JOIN molecule AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.label = "TR010" OR T1.label = "Carcinogen IX"
SELECT T1.molecule_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single' EXCEPT SELECT T1.molecule_id FROM molecule AS T1 JOIN connected AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'cancer' ORDER BY T1.molecule_id
SELECT T2.bond_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR006" ORDER BY T2.bond_id
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 12 AND T2.label = "TR009"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Brine'
SELECT T2.bond_type , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR001_6_9"
SELECT T0.label FROM molecule AS T0 JOIN atom AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.element = "TR001_10" AND T1.type = "Carcinogen IX"
SELECT count(*) FROM bond WHERE bond_type = "Triple"
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = 19
SELECT DISTINCT T0.element FROM atom AS T0 JOIN molecule AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 21 OR T2.element = 25 AND T1.label != "Carcinogen IX"
SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Phosphorus' INTERSECT SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Nitrogen'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T2.bond_type = "carcinogenic" GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.bond_id) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'I'
SELECT bond_type , bond_id FROM bond WHERE atom_id = 45
SELECT DISTINCT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T0.element FROM atom AS T0 JOIN bond AS T1 ON T0.bond_id = T1.bond_id JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" AND T1.bond_type = "Triple"
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR144_8_19"
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" GROUP BY T1.label ORDER BY count(*) DESC LIMIT 1
SELECT min(T1.element) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "Carcinogenic"
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "lead"
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple'
SELECT count(*) FROM atom GROUP BY element ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM singlebond WHERE bond_type = 'carcinogen IX'
SELECT count(*) FROM atom WHERE element = 'C' OR element = 'H'
SELECT atom_id FROM atom WHERE element = 'Sulfur'
SELECT T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Tin'
SELECT count(*) FROM singlebond
SELECT count(*) FROM (SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'phosphorus' OR T2.element = 'bromine')
SELECT T2.bond_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "Carcinogenic"
SELECT molecule_id FROM bond EXCEPT SELECT molecule_id FROM molecule WHERE label = 'Carcinogen IX'
SELECT count(*) FROM element WHERE element = 'chlorine' AND singlebond = 'single'
SELECT label FROM molecule WHERE TR000 = 'TR000' AND TR001 = 'TR001' AND TR002 = 'TR002'
SELECT molecule_id FROM molecule EXCEPT SELECT molecule_id FROM atom WHERE element = 'carcinogen'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id >= 'TR000' AND T2.molecule_id <= 'TR030'
SELECT bond_type FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id >= TR000 AND T1.molecule_id <= TR050
SELECT T1.element FROM atom AS T1 JOIN bonded AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR001_10_11"
SELECT count(*) FROM iodine AS T1 JOIN bonded AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'I'
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Calcium' AND T1.bond_type = 'carcinogenic' OR T1.bond_type = 'non carcinogenic'
SELECT T1.bond_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.element = 'Cl' INTERSECT SELECT T1.bond_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.element = 'C'
SELECT T1.molecule_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple" AND T1.label != "carcinogenic" AND T1.element = "carbon"
SELECT count(*) FROM molecule WHERE label IN (SELECT label FROM atom WHERE element = 'Cl')
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR001"
SELECT molecule_id FROM bond WHERE bond_type = "double"
SELECT T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'Triple' ORDER BY T1.atom_id ASC LIMIT 2
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_id = "TR000_1_2"
SELECT count(*) FROM singlebond WHERE bond_type = 'non-carcinogenic'
SELECT label FROM molecule WHERE bond_id = 'TR001_10_11'
SELECT T1.bond_id , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'Triple' OR T1.label != 'Carcinogen IX'
SELECT T4.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN toxicology AS T3 ON T2.element = T3.element WHERE T1.label = "4" AND T3.toxicology = "Carcinogen IX"
SELECT count(*) , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Hydrogen' AND T1.label != 'TR006'
SELECT DISTINCT label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Calium' AND T1.label = 'Carcinogen IX'
SELECT T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Carbon'
SELECT T0.element FROM atom AS T0 JOIN bonded AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.bond_type = "TR001_10_11"
SELECT count(*) FROM triplebond
SELECT count(*) FROM (SELECT T4 FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id JOIN molecule AS T4 ON T3.molecule_id = T4.molecule_id WHERE T4.label = "TR047" AND T3.bond_type = "double"
SELECT T0.label FROM molecule AS T0 JOIN atom AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.element = "TR001_1" AND T0.label != "Carcinogen IX"
SELECT label FROM molecule WHERE molecule_id = "TR151" AND is_carcinogen = 'Yes'
SELECT element FROM atom WHERE molecule_id = 'TR151'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "Carcinogen IX"
SELECT * FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = 'C'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "carcinogenic"
SELECT T2.bond_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "carcinogenic" AND T2.bond_type = "double"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "Hydrogen" AND T2.element = "Carcinogen IX"
SELECT T0.molecule_id FROM molecule AS T0 JOIN bond AS T1 ON T0.molecule_id = T1.molecule_id WHERE T1.bond_type = 'TR000_1_2' ORDER BY T0.atom_id LIKE 'TR000_1%'
SELECT molecule_id FROM atom WHERE element = 'carbon' EXCEPT SELECT molecule_id FROM atom WHERE element = 'carcinogen'
SELECT count(*) FROM (SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'H' AND T1.label = 'carcinogenic')
SELECT label FROM molecule WHERE molecule_id = "TR124" AND element = "carcinogenic"
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'TR186')
SELECT bond_type FROM bond WHERE bond_id = "TR007_4_19"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'TR001_2_4'
SELECT count(*) , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR006" AND T2.bond_type = "double" AND T1.label != "TR006" AND T2.bond_type != "single"
SELECT T1.label , T2.element FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "Carcinogen IX"
SELECT T2.label , T3.element FROM bonded AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T1.bond_id = T3.bond_id WHERE T1.bond_type = 'single'
SELECT T1.label , T1.element FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'Triple'
SELECT T1.element FROM atom AS T1 JOIN bonded AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'TR000_2_3'
SELECT count(*) FROM bonded atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'Cl'
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR346" GROUP BY T1.atom_id
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T1.label = "carinogen IX"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = "Sulfur") AND bond_type != "double"
SELECT label FROM molecule WHERE bond_type = 'TR001_2_4'
SELECT count(*) FROM atom WHERE molecule_id = "TR001"
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "cl" INTERSECT SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "carcinogen IX"
SELECT DISTINCT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "c" EXCEPT SELECT DISTINCT label FROM molecule WHERE T2.element = "carinogen IX"
SELECT count(*) FROM molecule WHERE element = 'Chlorine'
SELECT molecule_id FROM bond WHERE bond_id = "TR001_1_7"
SELECT count(*) FROM bonded atom WHERE bond_id = 'TR001_3_4'
SELECT T0.bond_type FROM bond AS T0 JOIN connected AS T1 ON T0.bond_id = T1.bond_id JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = 'TR000_1' INTERSECT SELECT T0.bond_type FROM bond AS T0 JOIN connected AS T1 ON T0.bond_id = T1.bond_id JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = 'TR000_2'
SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = "TR000_2" INTERSECT SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1" AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = "Toxicology")
SELECT label FROM molecule WHERE molecule_id = "TR000" AND element = "C" OR element = "M"
SELECT count(*) FROM singlebond
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Nitrogen'
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Sulphur' AND T2.bond_type = 'double'
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) > 5
SELECT T0.element FROM atom AS T0 JOIN bond AS T1 ON T0.molecule_id = T1.molecule_id JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR024" AND T1.bond_type = "DOUBLE"
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple hydrogen" AND T1.label = "carcinogenic"
SELECT count(*) FROM molecule WHERE label = 'Carcinogen IX'
SELECT count(*) FROM singlebond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label BETWEEN 'TR004' AND 'TR010'
SELECT count(*) FROM atom WHERE molecule_id = 'TR008'
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004_7" AND T1.element != "cancer"
SELECT count(*) FROM double bonded oxygen
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "Triple" AND T1.label != "Carcinogen IX"
SELECT T1.element , T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T002 = 'TR002'
SELECT T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T2.bond_type = 'double' AND T3.label = 'TR012'
SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic' AND T2.element = 'oxygen'
SELECT cardKingdomFoilId FROM cards WHERE power = (SELECT max(power) FROM cards)
SELECT DISTINCT borderColor FROM cards WHERE hasNonFoil = 'yes'
SELECT name FROM cards WHERE faceConvertedManaCost > 0
SELECT name FROM cards WHERE frameVersion = "2015" AND edhrecRank < 100
SELECT * FROM cards WHERE rarity = 'mythic' AND format != "gladiator"
SELECT DISTINCT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = "cards" EXCEPT SELECT DISTINCT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = "artifacts"
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.formats = "commander"
SELECT T1.cardKingdomFoilId , T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Stephen Daniel" INTERSECT SELECT T1.cardKingdomFoilId , T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Missing" OR T2.text = "Degraded"
SELECT * FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.card WHERE T1.name = 'Sublime Epiphany' AND T2.number = 74
SELECT T1.name , T1.artist , T1.isPromo FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.artist ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Annul" AND T2.isAlternative = 'yes' AND T2.number = 29
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) FROM cards WHERE text LIKE '%Chinese Simplified%'
SELECT sum(T1.totalSetSize) , T1.setcode FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = 'Italian' GROUP BY T1.setcode
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd" AND isFullArt = 'Y';
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = 'infinite'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen"
SELECT TYPE FROM cards WHERE name = "Ancestor's Chosen" AND originalprint = 1
SELECT T1.languages FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T2.name = "Angel of Mercy"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" AND T1.flavortext != "null"
SELECT text FROM rulings WHERE text LIKE "%Condemn%"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" AND T1.isStarter = 1
SELECT T2.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE name = "Benalish Knight"
SELECT T1.ruling FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Benalish Knight"
SELECT name FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT count(*) FROM cards WHERE borderless = 'Yes'
SELECT count(*) FROM cards WHERE isReprint = 'yes' AND language = 'German'
SELECT count(*) FROM cards WHERE borderless = 'yes' AND language = 'Russian'
SELECT count(*) FROM cards WHERE isStorySpotlight = 'French'
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = 'Aaron Boyd'
SELECT count(*) FROM cards WHERE colorIndicator = 'Black' AND availability = 'mtgo'
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords = "fllying"
SELECT count(*) FROM cards WHERE originaltype = "Summon - Angel" AND otherfaceid != "Angel"
SELECT cardKingdomFoilId FROM cards WHERE power = (SELECT max(power) FROM cards WHERE hasNonFoil = 'F')
SELECT id FROM cards WHERE duelDeck = 'a'
SELECT edhrecrank FROM cards WHERE frameversion = 2015
SELECT artist FROM cards WHERE language = "Chinese Simplified"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = 'Paper' AND T2.language = 'Japanese'
SELECT count(*) FROM cards WHERE borderColor = "white"
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid
SELECT text FROM rulings WHERE date = "Beacon of Immortality"
SELECT count(*) , status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameversion > 100 GROUP BY T1.status
SELECT colorIdentity FROM cards WHERE setCode = "OWG"
SELECT T1.name , T1.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T2.setcode = 10E AND T1.manaCost = 5
SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originaltype = "Creature - Elf" INTERSECT SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originaltype = "Creature - Human"
SELECT colorIdentity , formats FROM cards WHERE id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colorIdentity = "Black" AND T2.language = "english"
SELECT name FROM cards ORDER BY date
SELECT count(*) FROM cards WHERE artist = "John Avon" AND hasFoil = "non-powerful"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = 1
SELECT count(*) FROM cards WHERE artist = "UDON" AND availability = "mtgoFoilId" AND printings = "mtgo" AND startingHand = -1
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND hasContentWarning = 'yes' AND hasFoil = 'no'
SELECT manaCost FROM cards WHERE frameVersion = "2003" AND colorBorder = "black" AND isPaper = "Paper" AND isMTGO = "mtgo"
SELECT sum(manaconvertedmanaco) FROM cards WHERE artist = "Rob Alexander"
SELECT DISTINCT TYPE FROM cards WHERE isOversized = 1
SELECT setcode FROM set_translations WHERE LANGUAGE = "Spanish"
SELECT count(*) FROM cards WHERE isOnlineOnly = 'T'
SELECT id FROM cards WHERE isStorySpotlight = 'Y' AND hasNonFoil = 'N'
SELECT name FROM cards WHERE language = 'Spanish' ORDER BY name
SELECT T1.name FROM languages AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode GROUP BY T2.setcode HAVING count(*) = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Brazilian Portuguese"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Creature'
SELECT DISTINCT TYPE FROM cards WHERE language = "German"
SELECT count(*) FROM cards WHERE power = 'unknown' AND hasContentWarning = 'yes'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.id WHERE T2.text = "This is a triggered mana ability" AND T1.isFoil != "multi"
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = 'pauper' AND format = 'Paper'
SELECT artist FROM cards WHERE text = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "French" AND T1.type = "Creature" AND T1.layout = "Black" AND T1.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalreleasedate = "01/02/2007" AND T1.isprint = 01
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN sets AS T3 ON T3.code = T2.code WHERE T3.block = 'Ravnica' AND T2.language = 'english'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "commander" AND T1.hasContentWarning = 'no'
SELECT count(*) FROM cards WHERE power = 'No' AND language = 'French'
SELECT count(*) FROM (SELECT T1.id FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Japanese" AND T1.type = "Expansion")
SELECT printings FROM cards WHERE name = "Daren Bader"
SELECT count(*) FROM cards WHERE edhrecrank > 12000 AND borderColor != "border"
SELECT count(*) FROM cards WHERE isOversized = 1 AND isPromo = 1 AND isReprint = 1
SELECT power FROM cards WHERE isPromo = 'Yes' ORDER BY name
SELECT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.multiverseid = 149934
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.name = "Kingdom Foil" INTERSECT SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.name = "Kingdom Cards" ORDER BY T1.id
SELECT count(*) FROM cards WHERE hasNonFoil = 'Yes' AND layout != "Normal"
SELECT number FROM cards WHERE subtypes = "Angel" INTERSECT SELECT number FROM cards WHERE subtypes = "Wizard"
SELECT name , setcode FROM sets WHERE isonlineonly = 'No' INTERSECT SELECT name , setcode FROM sets WHERE isonlineonly = 'Yes'
SELECT T1.languages FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code JOIN cards AS T3 ON T2.mtc4id = T3.uuid WHERE T3.name = "Archenemy" AND T2.code = "ARC"
SELECT T1.name , T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.setcode = 5
SELECT T1.language , T1.type FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code WHERE T2.setcode = 206
SELECT T1.setcode FROM sets AS T1 JOIN set_transactions AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T2.foil = T3.uuid WHERE T3.language = 'Italian' AND T1.block = "Shadowmoor" ORDER BY T1.setcode
SELECT id FROM sets WHERE isForeignOnly = 'no' AND isNonFoilOnly = 'yes' INTERSECT SELECT T1.id FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = 'Japanese'
SELECT name FROM cards WHERE setcode = 'Russia' ORDER BY totalsetsize DESC LIMIT 1
SELECT count(*) FROM cards WHERE isOnlineOnly = 'Y' AND language = 'Chinese Simplified'
SELECT count(*) FROM sets WHERE isOnlineOnly = 'Japanese' AND isOnlineOnly != 'Magic: The Gathering Online'
SELECT id FROM cards WHERE colorIndicator = "Black"
SELECT id FROM cards WHERE frameEffects = "extendedart"
SELECT cardKingdom FROM cards WHERE colorborder = "Black" AND isFullArt = 1
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "A Pedra Fellwar"
SELECT setcode FROM sets WHERE releasedate = "07/13/2007"
SELECT baseSetSize , code FROM sets WHERE block = "Masques" AND block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT TYPE FROM cards WHERE watermark = "boros"
SELECT T1.language , T1.flavortext FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.colorIndicator = "pie"
SELECT percentage FROM cards WHERE convertedManaCost = 10 AND setCode = "Abyssal Horror"
SELECT code FROM sets WHERE TYPE = 'expansion commander'
SELECT TYPE FROM cards WHERE watermark = "abzan"
SELECT TYPE FROM cards WHERE watermark = "azorius"
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power = "Incredible"
SELECT count(*) FROM cards WHERE isStarter = 'yes' AND hand = 'Paper';
SELECT name FROM cards WHERE hasTextless = 'T'
SELECT unconvertedmanacost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE colorborder = "white" AND power = "unknown"
SELECT name FROM cards WHERE isPromo = 'Yes' INTERSECT SELECT name FROM cards WHERE isPromo = 'No'
SELECT TYPE FROM cards WHERE name = "Molimo , Maro-Sorcerer"
SELECT purchaseurls FROM cards WHERE isPromo = "bundle"
SELECT count(*) FROM cards WHERE bordercolor = "Black" AND printings = "arena" INTERSECT SELECT count(*) FROM cards WHERE bordercolor = "Black" AND printings = "mtgo"
SELECT name FROM cards WHERE convertedManaCost > (SELECT max(convertedManaCost) FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper")
SELECT artist FROM cards WHERE isPromo = "Battra , Dark Destroyer"
SELECT name FROM cards ORDER BY convertedManaCost DESC LIMIT 3 INTERSECT SELECT name FROM cards WHERE frameVersion = "2003"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.card WHERE T2.language = "Italian" AND T2.setcode = "Ancestor's Chosen"
SELECT count(*) FROM set_translations AS T1 JOIN cards AS T2 ON T1.setcode = T2.id WHERE T2.name = "Angel of Mercy"
SELECT name FROM cards WHERE setCode = "Hauptset Zehnte Edition"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T2.language = "Korean" AND T1.setcode = "Ancestor's Chosen"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.setcode WHERE T2.name = "Hauptset Zehnte Edition" AND T1.artist = "Adam Rex"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.setcode WHERE T2.basesetsize = "Hauptset Zehnte Edition"
SELECT T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Simplified Chinese" AND T1.releaseDate = "Eighth Edition"
SELECT T1.setcode FROM cards AS T1 JOIN sets AS T2 ON T1.isonlineonly = T2.isonlineonly WHERE T2.name = "Angel of Mercy" AND T1.isfullart = "Magic: The Gathering Online"
SELECT T1.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.setcode WHERE T2.name = "Ancestor's Chosen"
SELECT TYPE FROM sets WHERE name = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT cardKingdom FROM cards WHERE isForeignOnly = 'Yes' AND name = 'Adarkar Valkyrie' AND country != 'United States'
SELECT count(*) FROM (SELECT T1.id FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T2.language = "Italian" AND T1.basesetsize < 100)
SELECT count(*) FROM cards WHERE setCode = "Coldsnap" AND borderColor = "Black"
SELECT name FROM cards WHERE setcode = "Coldsnap" ORDER BY convertedmanacost DESC LIMIT 1
SELECT T4.artist FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.id JOIN foreign_data AS T3 ON T3.id = T2.code JOIN artists AS T4 ON T3.artistid = T4.id WHERE T1.setcode = "Coldsnap" AND T4.name = "Jeremy Jarvis" OR T1.setcode = "Coldsnap" AND T4.name = "Aaron Miller" OR T1.setcode = "Coldsnap" AND T4.name = "Chippy"
SELECT cardKingdom FROM cards WHERE number = 4 AND setCode = "Coldsnap"
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND setCode = "Coldsnap" AND power = "unknown"
SELECT flavorText FROM cards WHERE flavorName = "Ancestor's Chosen" AND LANGUAGE = "Italian"
SELECT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.flavortext = "Ancestor's Chosen"
SELECT T1.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Ancestor's Chosen"
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uose = T2.uose WHERE T2.setcode = "Coldsnap" AND T1.language = "Italian"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.id JOIN sets AS T3 ON T3.code = T2.setcode WHERE T3.name = "Coldsnap" ORDER BY T1 ConvertedManaCost DESC LIMIT 1
SELECT date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Reminisce"
SELECT count(*) FROM cards WHERE setcode = 'Coldsnap' AND convertedmanacost = 7
SELECT count(*) FROM cards WHERE setCode = "Coldsnap" AND power = (SELECT max(power) FROM cards WHERE setCode = "Coldsnap")
SELECT code FROM sets WHERE releaseDate = "2017/7/14"
SELECT keyrunecode FROM sets WHERE code = 'PKHC'
SELECT mcmid FROM cards WHERE setcode = 'SS2'
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.setcode WHERE T2.releasedate = "2017/6/9"
SELECT TYPE FROM sets WHERE name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Jim Pavelec" INTERSECT SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Rylan Birk"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.id = T2.setcode WHERE T2.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.id WHERE T2.name = "Rinascita di Alara"
SELECT TYPE FROM sets WHERE name = "Huitième édition"
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.card WHERE T2.language = "French" AND T2.setcode = "Tendo Ice Bridge"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Tenth Edition"
SELECT T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T2.mtcfoilid = T3.uuid WHERE T3.language = "Japanese" AND T2.text = "Fellwar Stone"
SELECT name FROM cards WHERE setcode = 'Journey into Nyx Hero's Path' ORDER BY convertedmanacost DESC LIMIT 1
SELECT releaseDate FROM sets WHERE name = "Ola de frío"
SELECT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN cards AS T3 ON T2.card = T3.uuid WHERE T3.name = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE setCode = 'World Championship Decks 2004' AND convertedManaCost = 3
SELECT T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Mirrodin" AND T2.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Japanese" AND T1.isNonFoilOnly = 1
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Brazil Portuguese" AND T1.isonlineonly = 'Y'
SELECT DISTINCT TYPE FROM cards WHERE text NOT IN (SELECT DISTINCT T1.text FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "Aleksi Briclot")
SELECT unique(setcode) FROM cards GROUP BY setcode ORDER BY count(*) DESC LIMIT 1
SELECT artist FROM cards WHERE cost = (SELECT max(cost) FROM cards)
SELECT most(common) FROM cards WHERE power = (SELECT max(power) FROM cards)
SELECT count(*) FROM cards WHERE power != "unknown" AND cardKingdomFoilId NOT IN (SELECT cardKingdomFoilId FROM cards WHERE duelDeck = "A")
SELECT setcode FROM cards WHERE TYPE = "Commander" INTERSECT SELECT setcode FROM cards WHERE TYPE = "Alchemy"
SELECT cardKingdom FROM cards ORDER BY convertedManaCost DESC LIMIT 10
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.originalReleaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.name = "Volkan BaÇµa" AND T2.language = "French"
SELECT count(*) FROM rarecards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT T1.format , T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN sets AS T3 ON T3.code = T2.setcode WHERE T3.name = "Battlebond"
SELECT T1.formats FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.cardKingdomFoilId GROUP BY T1.formats ORDER BY count(*) ASC LIMIT 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameversion = 1997 AND T1.status = 'D. Alexander Gregory' IN T2.isFullArt AS T3 JOIN sets AS T4 ON T3.id = T4.id WHERE T4.isForeignOnly = 'Wizards of the Coast'
SELECT name , format FROM cards WHERE edhrecRank = 1 ORDER BY edhrecRank
SELECT avg(setcode) FROM sets WHERE releasedate BETWEEN 1/1/2012 AND 12/31/2015 AND LANGUAGE = "english"
SELECT artist FROM cards WHERE borderColor = "Black" AND isOnlineOnly = 'T' AND isOversized = "T"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'old' OR T2.status = 'ban'
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND availability = 0
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.formats FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.setcode = "Hour of Devastation"
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = "Japanese" INTERSECT SELECT setcode FROM set_translations WHERE language = "Korean")
SELECT DISTINCT T1.formalText , T1.cardKingdom FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'banned' AND T1.name = 'Allen Williams'
SELECT Reputation FROM users WHERE Name = "Harlan" OR Name = "Jared Dixon"
SELECT DisplayName FROM users WHERE CreationDate = 2011
SELECT count(*) FROM users WHERE lastaccessdate > '2014/9/1'
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT count(*) FROM users WHERE upvotes > 100 AND downvotes < 100
SELECT count(*) FROM users WHERE views > 10 AND creationdate > 2013
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = t2.owneruser WHERE T1.Name = "Csgillespie"
SELECT T2.Title FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T1.Name = "csgillespie"
SELECT OwnerDisplayName FROM POSTS WHERE Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE OWNER_NAME = 'csgillespie' ORDER BY viewcount DESC LIMIT 1
SELECT T1 DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid ORDER BY T2.FavoriteCount DESC LIMIT 1
SELECT sum(T1.CommentCount) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id WHERE T2.Name = "csgillespie"
SELECT postid , answercount FROM posts WHERE OWNER_NAME = "csgillespie" GROUP BY postid ORDER BY count(*) DESC LIMIT 1
SELECT T1 DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.LastEditorUserId WHERE T2.Title != "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id WHERE T2.Name = "csgillespie" AND T1.Title = "Root"
SELECT T1 DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Well-finished"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id WHERE T2.age > 19
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T1.Body FROM post AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2 DisplayName = "Csgillespie"
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Name = "csgillespie"
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2 DisplayName = "csgillespie" AND T1.year = 2011
SELECT T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Score) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruser WHERE T1.Name = "csgillespie"
SELECT avg(T1.badges) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.views > 200
SELECT count(*) , T1.age FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruser WHERE T2.score > 5 GROUP BY T1.age
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.reputation = 58 AND T1.creationdate = "2010/7/19"
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival"
SELECT T2.Title FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id ORDER BY T1.Score DESC LIMIT 1
SELECT count(*) , T2.PostId FROM postHistory AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount = 1910
SELECT FavoriteCount FROM posts WHERE CreationDate = "2014/4/23" AND UserDisplayName = "3025"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ParentId = 107829
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T2.id = T1.postid WHERE T1.userid = 23853 AND T2.creationdate = "2013/7/12" AND T2.closeddate = "9:08:18"
SELECT T2.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 65041
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserdisplayname WHERE T1.name = "Tiago Pasqualini"
SELECT T1 DisplayName FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.UserId WHERE VoteTypeId = 6347
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = "data visualization"
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2 DisplayName = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.userId = T2.id WHERE T2.id = 24
SELECT count(*) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT user FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.DisplayName = 'SilentGhost'
SELECT T1.Name FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T2.Text = 'thank you user93'
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2 DisplayName = "A Lion"
SELECT T1.Reputation , T2.Title FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost'
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2 DisplayName = "Necromancer"
SELECT LastEditorDisplayName FROM posts WHERE Title = "Open source tools for visualizing multi-dimensional data"
SELECT T1.Title FROM posts AS T1 JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.Name = "Vebjorn Ljosa"
SELECT sum(T1.Score) FROM posts AS T1 JOIN users AS T2 ON T1.LastEditor UserId = T2.id WHERE T2.WebsiteUrl = 'Yevgeny'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation'
SELECT sum(T1.bountyamount) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.Title = 'data'
SELECT T1.Name FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.UserId WHERE T2.BountyAmount = 50 AND T2.PostId IN (SELECT T2.PostId FROM posts WHERE Title LIKE "%variance%")
SELECT avg(T1.ViewCount) , T2.Title , T2.CommentCount FROM posts AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T2.Tags = 'humor' AND T2.Title != T1.Title
SELECT count(*) FROM comments WHERE user_id = 13
SELECT id FROM users ORDER BY Reputation DESC LIMIT 1
SELECT id FROM users ORDER BY views LIMIT 1
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user WHERE T2.name = 'supporter' AND T1.year = 2011
SELECT count(*) FROM badges WHERE name > 5
SELECT count(*) FROM users WHERE LOCATION = "New York" AND (SELECT T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.Name = "Teacher" INTERSECT SELECT T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.Name = "Supporter")
SELECT T1.Reputation , T2.Name FROM users AS T1 JOIN postHistory AS T2 ON T1.ID = T2.UserId WHERE T2.PostId = 1
SELECT T1.id FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid GROUP BY T1.id HAVING count(*) = 1 INTERSECT SELECT T1.id FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid GROUP BY T1.id HAVING sum(T2.views) >= 1000
SELECT T1.Name FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.location = 'India'
SELECT T1.Name , T1.Date - T2.Date FROM badges AS T1 JOIN students AS T2 ON T1.UserId = T2.Id WHERE T1.Date = 2010 AND T1.Date - T2.Date = 2011
SELECT count(DISTINCT user_id) , post_history_type_id FROM posthistory WHERE post_id = 3720
SELECT T2.Title , T1.FavoriteCount FROM postlinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T1.PostId = 61217
SELECT T1.Score , T2.LinkTypeId FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid WHERE T1.PostId = 395
SELECT T2.PostId , T1 DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.Score > 60
SELECT sum(T2.FavoriteCount) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.id = 686 AND T2.year = 2011
SELECT avg(UpVotes) , avg(Age) FROM users WHERE CreationDate > 10
SELECT count(*) FROM users WHERE aboutme = "Announcer"
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.creationdate = "7/19/2010 7:39:08"
SELECT count(*) FROM comments
SELECT text FROM comments WHERE creationdate = "7/19/2010 7:25:47"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = "7/19/2010 7:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2 DisplayName = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester" AND T2.Ny = "NY"
SELECT count(*) FROM users WHERE aboutme = "Teacher"
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = "Organizer" AND T1.age = T1.age WHERE T1.sex = "T"
SELECT score FROM comments WHERE creationdate = "7/19/2010 7:19:56"
SELECT text FROM comments WHERE creationdate = "7/19/2010 7:37:33"
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.location = "Vienna , Austria"
SELECT count(*) FROM users WHERE age = (SELECT max(age) FROM users WHERE aboutme = 'Yes' AND name = 'Supporter')
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.creationdate = "7/19/2010 7:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation LIMIT 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2 DisplayName = "Sharpie"
SELECT count(*) FROM users WHERE age >= 65 AND aboutme = 'Supporter'
SELECT DisplayName FROM users WHERE Id = 30
SELECT count(*) FROM users WHERE LOCATION = "New York"
SELECT count(*) FROM votes WHERE creationdate LIKE "2010%"
SELECT count(*) FROM users WHERE Age > 18
SELECT userdisplay FROM users ORDER BY views DESC LIMIT 1
SELECT VoteTypeId , COUNT(*) FROM votes WHERE CreationDate LIKE "2010%" AND CreationDate LIKE "2011%" GROUP BY VoteTypeId
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T1.Name = "John Salvatier"
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.name = "Daniel Vassallo"
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.userId = T2.id WHERE T2 DisplayName = "Harlan"
SELECT postid FROM posts WHERE answercount = (SELECT max(answercount) FROM posts WHERE userdisplayName = "slashnick")
SELECT T1.Title FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Name = "Harvey" AND T2.Name = "Noah" GROUP BY T1.PostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN users AS T3 ON T1.userid = T3.id WHERE T3.Name = "Matt Parker" AND T1.VoteTypeId > 4
SELECT count(*) FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.user WHERE T1.name = "Neil McGuigan" AND T2.score < 500
SELECT T2.Tags FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.Name = "Mark Meckes" EXCEPT SELECT T2.Tags FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T1.Name = "Mark Meckes"
SELECT T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T2.Name = "Organizer Badges"
SELECT count(*) FROM posts WHERE communityOwnedDate LIKE '%R%'
SELECT T1.Difference FROM postHistory AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id WHERE T2.Name = "Mornington" INTERSECT SELECT T1.Difference FROM postHistory AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id WHERE T2.Name = "Amos"
SELECT count(*) FROM users WHERE id IN (SELECT T1.id FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.reputation = "Commentator" AND T1.year = 2014)
SELECT count(*) FROM posts WHERE CreationDate LIKE "21/%" AND YEAR = 2010
SELECT DisplayName , Age FROM users ORDER BY Views DESC LIMIT 1
SELECT LastEditDate , LastEditorUserId FROM posts WHERE Title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE user_id = 13 AND text LIKE '%negative%'
SELECT T2.Title , T1 DisplayName FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.Score = 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.id WHERE T2.location = "North Pole" AND T1.year = 2011
SELECT T1 DisplayName , T2.WebsiteUrl FROM users AS T1 JOIN postlinks AS T2 ON T1.id = T2.RelatedPostId JOIN posts AS T3 ON T2.PostId = T3.ID WHERE T3.FavoriteCount > 150
SELECT count(*) , T2.LastEditDate FROM posthistory AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "What is the best introductory Bayesian statistics textbook"
SELECT T1.Location , T2.LastAccessDate FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T2.Name = "Outliers"
SELECT T2.Title FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.LasActivityDate > "How to tell if something happened in a data set which monitors a value over time"
SELECT T2.PostId , T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T1.Name = "Samuel" AND T2.Date = 2013
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId GROUP BY T2.Owner UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.OwnerDisplayName , T1.Location FROM postlinks AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id JOIN tags AS T3 ON T1.ExcerptPostId = T3.Id WHERE T3.Tags = "Hypothesis-testing"
SELECT T2.Title , T1.LinkTypeId FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "What are principal component scores?"
SELECT T1.Title FROM posts AS T1 JOIN parentid AS T2 ON T1.ParentId = T2.id ORDER BY T1.Score DESC LIMIT 1
SELECT T1.Name , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT count(*) FROM tags WHERE count BETWEEN 5000 AND 7000
SELECT OWNER USER ID FROM posts ORDER BY Score DESC LIMIT 1
SELECT Age FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.year = 2011 AND T1.bountyamount = 50
SELECT id FROM users ORDER BY Age DESC LIMIT 1
SELECT sum(score) FROM posts WHERE creationdate = "2010-07-19"
SELECT avg(T2.LinkTypeId) FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid WHERE T1.year = 2010 AND T1.answercount <= 2
SELECT T2.PostId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T1.UserId = T3.Id WHERE T3.Reputation = 1465 ORDER BY T2.FavoriteCount DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid ORDER BY T2.creationdate DESC LIMIT 1
SELECT T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT creationdate FROM votes WHERE voteTypeId = 'chl' ORDER BY creationdate DESC LIMIT 1
SELECT creationdate FROM users ORDER BY age DESC LIMIT 1
SELECT T1 DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId ORDER BY T2.Date ASC LIMIT 1
SELECT count(*) FROM users WHERE LOCATION = "United Kingdom" AND sum(favoritecount) >= 4
SELECT avg(T1.Votes) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId ORDER BY T1.Age DESC LIMIT 1
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age > 18
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruser WHERE T1.name = "Jay Stevens" AND T2.year = 10
SELECT T1.PostId , T1.Title FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Name = "Harvey" AND T2.LastAccessDate = "Motulsky" GROUP BY T1.PostId ORDER BY count(*) DESC LIMIT 1
SELECT postid , title FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(T2.Score) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owner_userid WHERE T1.Name = "Stephen Turner"
SELECT T1 DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId WHERE T2.ViewCount > 20000 AND T2.Year = 2011
SELECT postid , OWNERDISPLAY FROM posts WHERE creationdate = 2010 GROUP BY postid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.Reputation > 1000 AND T2.year = 2011
SELECT count(*) FROM users WHERE Age = "Teen"
SELECT T1.Name FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.LastEditorUserId WHERE T2.PostHistoryTypeId = 'Computer Game Datasets' ORDER BY T2.LastEditorDate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id ORDER BY T2.score DESC LIMIT 1
SELECT count(*) FROM postHistory WHERE viewcount > 35000 AND commentcount = "null"
SELECT T1 DisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.lasteditoruser WHERE T2.postid = 183 ORDER BY T2.LastEditDate DESC LIMIT 1
SELECT T1.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T1 DisplayName = "Emmett" ORDER BY T2.LastAccessDate DESC LIMIT 1
SELECT count(*) FROM users WHERE age > 5000 AND upvotes > 5000
SELECT T1.Date FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.UserId WHERE T1.Name = 'Zolomon'
SELECT count(*) , sum(T1.CommentCount) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.id ORDER BY T2.creationdate DESC LIMIT 1
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Analysing wind data with R' INTERSECT SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Name = 'left'
SELECT count(*) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM posts WHERE Tags = "careers"
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT count(*) , sum(t1.answercount) FROM posts AS t1 JOIN comments AS t2 ON t1.id = t2.postid WHERE t1.title = "Clustering 1D data"
SELECT creationdate FROM users WHERE DisplayName = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T2.Score FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM posts WHERE tags < 15 GROUP BY tags HAVING count(*) = 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.ID = T2.USERID WHERE T2.Text = "fine , you win :"
SELECT T1.text FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = "Linear Regression"
SELECT T1.Text FROM posthistory AS T1 JOIN users AS T2 ON T1.PostId = T2.Id WHERE T2.Views BETWEEN 100 AND 150 ORDER BY T2.Score DESC LIMIT 1
SELECT T1.creationdate , T1.age FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.text LIKE '%Webiste%'
SELECT count(*) FROM comments WHERE score = 0 AND viewcount < 5
SELECT count(*) FROM comments WHERE score = 0
SELECT count(*) FROM users WHERE age = 40 AND score = 0
SELECT T2.PostId , T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Group differences on a five point Likert item"
SELECT T1.id , T1.upvotes FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.user_id WHERE T2.text = "R is also lazy evaluated"
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Name = "Harvey" AND T2.LastAccessDate = "Motulsky"
SELECT T1 DisplayName FROM users WHERE T1.DownVotes = 0 AND T1.UpVotes = 5
SELECT count(*) FROM users WHERE upvotes BETWEEN 5 AND 10
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = '3-D Man'
SELECT count(*) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = "Super Strength" AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T2.hero_id HAVING count(*) > 15
SELECT count(*) FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = "blue"
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.skin_colour_id WHERE t2.superhero_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.eye_colour_id = "Blue" AND T3.power_name = "Agility"
SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'blue' INTERSECT SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = ' blond'
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT T2.height_cm FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = "Marvel Comics" ORDER BY T2.height_cm DESC
SELECT publisher_name FROM publisher WHERE id IN (SELECT publisher_id FROM superhero WHERE superhero_name = 'Sauron')
SELECT superhero_name FROM superhero WHERE publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics') GROUP BY eye_colour_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T2.attribute_value = 'Marvel Comics'
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.height_cm LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' AND T1.gender_id = 'male' AND T1.eye_colour_id = 'gold'
SELECT publisher_name FROM publisher WHERE id IN ( SELECT publisher_id FROM superhero WHERE superhero_name = "Blue Beetle II")
SELECT count(*) FROM superhero AS T1 JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = "blonde"
SELECT superhero_name FROM superhero ORDER BY height_cm LIMIT 1
SELECT race FROM race WHERE race = 'Copycat'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value < 50
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Death'
SELECT count(*) FROM superhero WHERE gender = 'female' AND strength = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id GROUP BY t2.hero_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 'Vampire'
SELECT count(*) FROM (SELECT T1.id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics')
SELECT count(*) , T1.id FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = 'DC Comics' OR T1.publisher_name = 'Marvel Comics' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT publisher_id FROM publisher WHERE publisher_name = 'Star Trek'
SELECT avg(attribute_value) FROM hero_attribute
SELECT count(*) FROM superhero WHERE full_name = 'No'
SELECT T1.colour FROM color AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.id = 75
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.id WHERE T1.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender = 'female'
SELECT T1.id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.gender = 'male' GROUP BY T1.id HAVING count(*) >= 5
SELECT superhero_name FROM superhero
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 AND eye_colour_id NOT IN (SELECT id FROM colour)
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T2.hero_id = 56
SELECT full_name FROM superhero WHERE gender_id = 'male' AND superhero_name = 'Demi-God' GROUP BY full_name HAVING count(*) >= 5
SELECT count(*) FROM superhero WHERE superhero_name = "Bad"
SELECT race_id FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185 AND gender_id = 'male'
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.eye_colour_id ORDER BY t2.weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.height_cm BETWEEN 150 AND 180 AND T2.publisher_name = "Marvel Comics"
SELECT superhero_name FROM superhero WHERE weight_kg > (SELECT avg(weight_kg) FROM superhero) AND gender = 'male'
SELECT T2.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id GROUP BY T1.power_id ORDER BY count(*) DESC LIMIT 1
SELECT t3.attribute_value FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t1.superhero_name = "Abomination"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id WHERE T2.hero_id = 1
SELECT count(*) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'Stealth'
SELECT T1.full_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id ORDER BY T2.attribute_value DESC LIMIT 1
SELECT avg(superhero_name) FROM superhero WHERE skin_colour_id NOT IN (SELECT id FROM colour)
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Dark Horse Comics' ORDER BY T1.height_cm DESC LIMIT 1
SELECT T1.colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.full_name = "Abraham Sapien"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Flight'
SELECT T1.eye_colour_id , T1.hair_colour_id , T1.skin_colour_id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics" AND T1.gender_id = "Female"
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.eye_colour_id = T2.hair_colour_id AND T2.skin_colour_id = T1.colour_id
SELECT group FROM superhero WHERE superhero_name = "A-Bomb"
SELECT count(*) FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id JOIN colour AS T3 ON T1.eye_colour_id = T3.id WHERE T2.gender = 'female' AND T3.colour = "blue"
SELECT T1.superhero_name , T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = "Charles Chandler"
SELECT gender FROM hero_power WHERE hero_id = 13
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Adapt'
SELECT count(*) FROM hero_power AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T2.superhero_name = 'Amazo'
SELECT T2.power_name FROM gender AS T1 JOIN superpower AS T2 ON T1.id = T2.gender_id JOIN hero_power AS T3 ON T3.gender_id = T1.id WHERE T1.full_name = 'Hunter Zolomon'
SELECT T1.height_cm FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'amber'
SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = "Black" INTERSECT SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = "White"
SELECT T1.eye_colour_id FROM color AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T1.colour = 'gold'
SELECT full_name FROM superhero WHERE gender = 'male' AND race = 'vampire'
SELECT superhero_name FROM superhero WHERE alignment = "neutral"
SELECT count(*) FROM hero_attribute ORDER BY attribute_value DESC LIMIT 1
SELECT race , alignment FROM superhero WHERE full_name = 'Cameron Hicks'
SELECT count(*) FROM hero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender = 'female' AND T2.publisher_name = "Marvel Comics"
SELECT avg(weight_kg) FROM superhero WHERE race = 'Alien'
SELECT weight_kg FROM race WHERE height_cm = (SELECT max(height_cm) FROM race WHERE weight_kg = Emil Blonsky) INTERSECT SELECT weight_kg FROM race WHERE height_cm = (SELECT max(height_cm) FROM race WHERE weight_kg = Charles Chandler)
SELECT avg(height_cm) , superhero_name FROM superhero GROUP BY superhero_name
SELECT power_name FROM superpower WHERE power_name = "Abomination"
SELECT count(*) FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race = 'god' OR T2.race = 'eternal'
SELECT superhero_name FROM hero WHERE height_cm = (SELECT max(height_cm) FROM hero)
SELECT count(*) FROM superhero WHERE alignment_id = 'neutral'
SELECT T1.attribute_name , T2.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T2.attribute_id = T1.id WHERE T1.gender = '3-D Man'
SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = "Blue" INTERSECT SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour = "Brown"
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = 'Hawkman , Karate Kid and Speedy'
SELECT count(*) FROM superhero WHERE publisher_id NOT IN ( SELECT publisher_id FROM publisher )
SELECT count(*) FROM superhero WHERE eye_colour_id IN (SELECT id FROM colour WHERE colour = "blue")
SELECT count(*) , gender_id FROM superhero GROUP BY gender_id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = 'cryokinesis'
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = "null"
SELECT T1.colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.full_name = "Karen Beecher Duncan"
SELECT t2.power_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.id WHERE t1.full_name = "Helen Parr"
SELECT race_id FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT publisher_name FROM publisher WHERE id = 38
SELECT t1.race FROM race AS t1 JOIN superhero AS t2 ON t1.id = t2.race_id JOIN hero_attribute AS t3 ON t2.id = t3.hero_id ORDER BY t3.attribute_value DESC LIMIT 1
SELECT T1.alignment , T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id IN (SELECT id FROM color WHERE colour = "blue") GROUP BY id HAVING count(*) >= 5
SELECT avg(attribute_value) FROM hero_attribute WHERE attribute_value = 'Neutral'
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.skin_colour_id WHERE t2.attribute_value = 100
SELECT count(*) FROM superhero WHERE gender_id = 'female'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.gender_id = 'male' AND T2.hair_colour_id = 'blue'
SELECT count(*) FROM superhero WHERE gender_id = 'female'
SELECT count(*) FROM superhero WHERE eye_colour_id = 'blues' INTERSECT SELECT count(*) FROM superhero WHERE eye_colour_id = 'noeyes'
SELECT strength FROM superhero WHERE superhero_name = 'Hulk'
SELECT power_name FROM superpower WHERE power_name = 'Ajax'
SELECT count(*) FROM villain AS T1 JOIN superhero AS T2 ON T1.gender_id = T2.gender_id WHERE T1.skin_colour_id = "Green"
SELECT count(*) FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T2.gender = 'female' AND T3.publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attr AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.power_name = 'wind' ORDER BY T1.superhero_name
SELECT T1.gender FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id JOIN hero_power AS T3 ON T2.id = T3.hero_id JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T4.power_name = 'Phoenix Force'
SELECT superhero_name FROM superhero WHERE weight_kg = (SELECT max(weight_kg) FROM superhero WHERE publisher_id = 'DC Comics')
SELECT avg(height_cm) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Dark Horse Comics') AND superhero_name != 'Human'
SELECT count(*) FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC' OR T2.publisher_name = 'Marvel Comics'
SELECT t3.attribute_value FROM hero_attraction AS t1 JOIN attribute AS t2 ON t1.attribute_id = t2.id JOIN superhero AS t3 ON t1.hero_id = t3.id WHERE t2.attribute_name = "Black Panther" ORDER BY t3.attribute_value LIMIT 1
SELECT T1.colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.attribute_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) FROM superhero WHERE gender_id IN (SELECT id FROM gender WHERE gender = 'female' AND publisher_name = "George Lucas")
SELECT count(*) FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_value = 'good' AND T2.power_name = 'Marvel Comics'
SELECT count(*) FROM superhero WHERE full_name LIKE "John%"
SELECT hero_id FROM hero_attribute ORDER BY attribute_value ASC LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = 'Alien'
SELECT T1.full_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = 'Brown' AND T1.weight_kg < 100
SELECT t3.attribute_value FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t1.superhero_name = "Aquababy"
SELECT weight_kg , race_id FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender = 'neutral'
SELECT T2.id FROM hero_power AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id JOIN superpower AS T3 ON T1.power_id = T3.id WHERE T3.power_name = 'Intellectual'
SELECT T1.eye_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.gender = "Blackwulf"
SELECT T2.power_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id WHERE T1.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT T1.driverref FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 20 ORDER BY T3.date ASC LIMIT 1
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.number = 19 ORDER BY T2.time DESC LIMIT 1
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.location = "Shanghai"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.name = "Renault"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2010 AND T2.country != "Asia" AND T2.country != "Europe"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain"
SELECT LOCATION FROM circuits WHERE country = "Australian Grand Prix"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "9 Pang International Circuit"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "9 Pang International Circuit"
SELECT T2.position FROM races AS T1 JOIN constructorstandings AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T1.name = " Abu Dhabi Grand Prix"
SELECT T1.nationality FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "24" AND T2.points = 1
SELECT DISTINCT q1 FROM qualifying WHERE raceid = 354 AND forename = "Bruno" AND surname = "Senna"
SELECT T3.nationality FROM races AS T1 JOIN qualifying AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.time = "0:01:40" AND T2.number = 355
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "0:01:54" AND T1.driverid = T2.driverid WHERE T2.raceid = 903
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2007 AND name != "Bahrain Grand Prix" )
SELECT T2.season FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceid = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "592" ORDER BY T1.dob DESC LIMIT 1
SELECT T1.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T2.time = "0:01:27" AND T3.number = 161
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "933" ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Malaysia Grand Prix"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "9" ORDER BY T2.points DESC LIMIT 1
SELECT results FROM results WHERE raceid = 345 AND name = "Lucas di Grassi"
SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Q2" AND T1.year = 0 AND T1.time = "0:01:15" AND T2.number = 347
SELECT T3.code FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.number = 45 AND T2.fastestlapspeedtime = "0:01:33"
SELECT T2.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Bruce McLaren" AND T2.year = 743
SELECT T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "San Marino Grand Prix" AND T2.position = 2 ORDER BY T2.position ORDER BY T2.date DESC LIMIT 1
SELECT T2.season FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceid = 901
SELECT count(DISTINCT driverId) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2015/11/29 )
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "872" ORDER BY T1.dob LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.number = 348 ORDER BY T2.time DESC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT fastestlapspeed FROM results WHERE raceid = 853 ORDER BY fastestlapspeed DESC LIMIT 1
SELECT T1.number , T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1983/7/16
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Singapore Grand Prix" ORDER BY T1.year ASC LIMIT 1
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races ORDER BY date ASC LIMIT 1
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY date DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR != 2000 AND YEAR = 2017
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" ORDER BY T2.date ASC LIMIT 1
SELECT max(T2.date) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.name = "Brands Hatch" AND T1.year = 1994 AND T1.round = 1;
SELECT count(*) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone Circuit" AND T2.name = "United Kingdom Grand Prix"
SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2010 AND T1.name = "Singapore Grand Prix" ORDER BY T2.position
SELECT T1.forename , T1.surname , T2.points FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T2.driverid ORDER BY count(*) DESC LIMIT 1
SELECT T3.forename , T3.surname , T2.points FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2017 AND T1.name = "Chinese Grand Prix" ORDER BY T2.points DESC LIMIT 3
SELECT T1.forename , T1.surname , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T2.time = (SELECT max(time) FROM races)
SELECT avg(T1.time) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "Lewis Hamilton" AND T1.position = "2009 Malaysian Grand Prix"
SELECT count(*) FROM circuits WHERE circuitref NOT IN (SELECT T1.circuitref FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2010 ORDER BY T2.year ASC LIMIT 1)
SELECT T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT min(dob) FROM drivers WHERE nationality = "Japanese"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T1.country = "USA"
SELECT T1.name , T2.name , T3.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid JOIN airports AS T3 ON T1.year = T3.year WHERE T1.year = 2005 AND T2.name = "9/%" AND T3.location = "9/%"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoong" AND T2.number < 20
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.name = "Michael Schumacher" AND T2.year = 1998 AND T2.year != "1999"
SELECT T2.name , T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Michael" AND T3.surname = "Schumacher" ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT avg(T2.points) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.forename = "Eddie" AND T1.surname = "Inrvine" AND T2.year = 2000
SELECT T1.name , T2.points FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid ORDER BY T1.date ASC LIMIT 1
SELECT T1.name , T2.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid GROUP BY T1.circuitid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T1.circuitid = T3.circuitid WHERE T3.country = "Germany" AND T2.name = "European Grand Prix"
SELECT LOCATION FROM circuits WHERE name = "Silverstone Circuit"
SELECT circuitref FROM circuits WHERE LOCATION != "Silverstone Circuit" AND LOCATION != "Hockenheimring" AND LOCATION != "Hungaroring"
SELECT circuitref FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = "null"
SELECT country FROM circuits ORDER BY dob DESC LIMIT 1
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT url FROM results WHERE forename = "Anthony" AND surname = "Davidson"
SELECT name FROM circuits WHERE url = "Lewis Hamilton"
SELECT T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit" AND T1.name = "Formula_1"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT T1.time FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T2.year = 2010 AND T3.name = " Abu Dhabi Circuit"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy" AND T1.year = 2004 AND T1.name = "Formula_1"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Formula_1" AND T2.country = "Spain"
SELECT T1.circuitref FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.forename = "Lewis" AND T1.surname = "Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Formula_1" ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT T1.driverref FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Canadian Grand Prix" AND YEAR = 2007 ORDER BY T2.rank LIMIT 1
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" ORDER BY T2.rank DESC LIMIT 1
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Spanish Grand Prix"
SELECT T2.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.name = "Formula_1"
SELECT rank FROM results WHERE raceid IN (SELECT raceid FROM races WHERE YEAR = 2008 AND name = "Chinese Grand Prix") AND driverid = "Lewis Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.former = 4
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix"
SELECT T2.fastestlapspeed FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Lewis Hamilton" AND T2.fastestlapspeed != "null"
SELECT T1.fastestlapspeed FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "AustChineseralian Grand Prix" ORDER BY T2.rank LIMIT 1
SELECT T1.champion , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2008 AND T2.country = "Australia Grand Prix"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2008 AND driverid NOT IN (SELECT T3.driverid FROM races AS T3 JOIN results AS T4 ON T3.raceid = T4.raceid WHERE T2.year != 2008)
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Chinese Grand Prix" INTERSECT SELECT T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Formula_1"
SELECT sum(T2.points) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.year = 2004 AND T1.name = "Formula_1"
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Lewis Hamilton" AND T2.fastestlapspeed > 60 INTERSECT SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Lewis Hamilton" AND T2.fastestlapspeed > 60 AND T2.year = 2004
SELECT T2.driverid , T1.nationality FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Australian Grand Prix"
SELECT T2.fastestlapspeed FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T2.name = "Australian Grand Prix" ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide" AND country = "Australia"
SELECT LOCATION FROM circuits WHERE country = "United States"
SELECT count(*) FROM drivers WHERE nationality = "UK" AND dob > 1980
SELECT max(T2.points) FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "UK"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT name FROM constructors WHERE constructorid NOT IN (SELECT constructorid FROM constructorresults WHERE raceid = 291)
SELECT count(*) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.nationality = "Japanese" AND T2.year = 2
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.rank LIMIT 1
SELECT count(*) FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T1.nationality = "France" AND T3.over50 = 1
SELECT T1.nationality , T2.completion FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2007 AND T1.forename = "Japanese" AND T1.surname = "United States"
SELECT avg(time) , YEAR FROM races WHERE YEAR < 1975 GROUP BY YEAR
SELECT forename , surname FROM drivers WHERE dob > 1975 AND rank = 2
SELECT count(*) FROM results WHERE raceId NOT IN ( SELECT raceId FROM races WHERE name != "Italian" )
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.time DESC LIMIT 1
SELECT fastestlapspeed FROM results WHERE YEAR = 2009 ORDER BY fastestlapspeed DESC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Spanish Grand Prix"
SELECT name , YEAR FROM races ORDER BY TIME ASC LIMIT 1
SELECT count(*) , T1.number FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.forename < "1985" AND T2.over > 50 GROUP BY T1.number
SELECT count(*) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.nationality = "France" AND T1.time < "02:00.00"
SELECT code FROM drivers WHERE nationality = "America"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = 18
SELECT code FROM drivers WHERE nationality = "Netherlandic" GROUP BY code ORDER BY count(*) DESC LIMIT 3
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Robert" AND T3.surname = "Kubica"
SELECT count(*) FROM drivers WHERE nationality = "UK" AND dob = 1980
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 1980-1990 ORDER BY T2.milliseconds LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = 1971 ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < 1982 ORDER BY T2.time DESC LIMIT 10
SELECT YEAR FROM races ORDER BY TIME ASC LIMIT 1
SELECT YEAR FROM results ORDER BY fastestlapspeed LIMIT 1
SELECT T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid ORDER BY T3.time DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.number = 50 AND T2.number = 100 AND T1.statusid = "D"
SELECT LOCATION , lat FROM circuits WHERE country = " Austria "
SELECT raceid FROM results GROUP BY raceid ORDER BY count(*) DESC LIMIT 1
SELECT T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "23" AND T2.position = 2 AND T2.number = 2
SELECT T1.name , T1.date , T1.time FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid ORDER BY T1.dob DESC LIMIT 1
SELECT count(*) FROM results AS T1 JOIN status AS T2 ON T1.statusid = T2.statusid WHERE T2.nationality = "American"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.url FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY sum(T2.wins) DESC LIMIT 1
SELECT T3.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "French Grand Prix" ORDER BY T2.fastestlapspeed DESC LIMIT 3
SELECT T1.milliseconds FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T2.time DESC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2006 AND T1.name = "United States Grand Prix" ORDER BY T2.fastestlapspeed DESC LIMIT 10
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND avg(T2.duration) STOP FROM pitstops AS T2 JOIN drivers AS T1 ON T2.driverid = T1.driverid WHERE T1.dob BETWEEN 1980-1985 GROUP BY T1.forename , T1.surname ORDER BY avg(T2.duration) DESC LIMIT 3
SELECT TIME FROM races WHERE YEAR = 2008 AND name = "Canadian Grand Prix"
SELECT T1.constructorref FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "Singapore Grand Prix"
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN 1981 AND 1991
SELECT forename , surname , url FROM drivers WHERE dob BETWEEN 1971 AND 1985 ORDER BY dob
SELECT LOCATION , country , lat FROM circuits WHERE name = "Hungaroring"
SELECT T1.name , T1.nationality , T2.points FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T2.year BETWEEN 1980 AND 2010 GROUP BY T2.constructorid ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.score) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2004 AND T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.name = "Turkish Grand Prix"
SELECT avg(T2.number) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year IN (SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year < 10000 AND T2.year = 21)
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM results WHERE rank = 91 AND wins = 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid ORDER BY T2.date DESC LIMIT 1
SELECT T1.fname , T1.lname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid JOIN circuits AS T4 ON T4.circuitid = T3.circuitid WHERE T4.name = "Marina Bay Street" AND T2.position = 1 AND T3.year = 2008
SELECT T1.nationality , T2.name FROM constructors AS T1 JOIN races AS T2 ON T1.constructorid = T2.circuitid ORDER BY T2.date DESC LIMIT 1
SELECT T1.driverid , count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Canadian Grand Prix" GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid ORDER BY T3.year ASC LIMIT 1
SELECT max(duration) FROM pitstops
SELECT min(T2.time) FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "FastestLap"
SELECT max(duration) FROM pitstops WHERE STOP = "Lewis Hamilton";
SELECT DISTINCT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "Australian Grand Prix"
SELECT DISTINCT T1.driverid , T1.stop FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "Australian Grand Prix"
SELECT T1.milliseconds FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Formula_1" AND T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid ORDER BY T2.milliseconds LIMIT 20
SELECT T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2004 AND T1.name = "Lewis Hamilton" ORDER BY T1.fastestlapspeed DESC LIMIT 1
SELECT T1.record FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.name = "Austrian Grand Prix Circuit"
SELECT T2.circuitref FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Austrian Grand Prix Circuit" AND T1.formula1 = "Formula_1"
SELECT T1.duration FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.name = "Austrian Grand Prix Circuit"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 1948 AND T2.time = "1:29.488"
SELECT avg(T1.duration) FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Formula_1" AND T1.driverid = "Lewis Hamilton"
SELECT avg(T1.milliseconds) , T2.circuitid FROM laptimes AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy" GROUP BY T2.circuitid
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM Player_Attributes ORDER BY potential ASC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height >= 60 AND T1.height <= 65 AND T2.attacking_work_rate > 60 AND T2.attacking_work_rate < 65
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 5
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id JOIN Team AS T3 ON T1.team_api_id = T3.team_api_id WHERE T2.name = "2016" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T2.team_short_name FROM MATCH AS T1 JOIN team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.season = 2016 GROUP BY T2.team_short_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.penalties DESC LIMIT 10
SELECT T2.team_short_name FROM Country AS T1 JOIN Team_Attributes AS T2 ON T1.id = T2.country_api_id JOIN MATCH AS T3 ON T2.team_api_id = T3.away_team_api_id WHERE T1.name = "Scotland Premier League" AND T3.season = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1
SELECT sum(buildupplayspeed) FROM teamattributes ORDER BY buildupplayspeed DESC LIMIT 4
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.year BETWEEN 2013 AND 2015
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(height) FROM Player WHERE birthday BETWEEN 1990 AND 1995;
SELECT player_api_id FROM Player_Attributes WHERE overall_rating > ( SELECT avg(overall_rating) FROM Player_Attributes WHERE YEAR = 2010 )
SELECT T1.team_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed > 50 AND T2.buildupplayspeed < 60
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed > ( SELECT avg(buildupplayspeed) FROM Team_Attributes WHERE YEAR = 2012 ) INTERSECT SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed < ( SELECT avg(buildupplayspeed) FROM Team_Attributes WHERE YEAR = 2012 )
SELECT preferred_foot , count(*) FROM Player_Attributes WHERE player_api_id BETWEEN 1987 AND 1992 GROUP BY preferred_foot
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id JOIN Team_Attributes AS T3 ON T2.team_api_id = T3.team_api_id GROUP BY T1.id ORDER BY count(*) ASC LIMIT 5
SELECT avg(T1.long_shots) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ahmed Samir Farag"
SELECT player_name FROM player WHERE height > 180 INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name ORDER BY avg(T2.heading_accuracy) DESC LIMIT 10
SELECT T1.team_api_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed < ( SELECT avg(buildupplayspeed) FROM Team_Attributes WHERE buildupplayspeedClass = "Dribbling" AND T2.buildupplayspeedClass = "Passing" ) ORDER BY T2.buildupplayspeedpassing
SELECT T1.name FROM League AS T1 JOIN Team_Attributes AS T2 ON T1.id IN T2.team_api_id GROUP BY T2.team_api_id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal) WHERE T2.season = 2009 OR T2.season = 2010
SELECT team_short_name FROM Team WHERE team_fifa_api_id = "Queens Park Rangers" AND team_long_name = "Football"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday = 1970 AND T2.birthmonth = "10" AND T2.interaction_foot = "Football"
SELECT attacking_work_rate FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = "Franco Zennaro" AND sport = "Football" )
SELECT T1.team_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id JOIN Player_Attributes AS T3 ON T2.player_api_id = T3.player_api_id WHERE T3.team_fifa_api_id = "ADOA" AND T2.building = 1 AND T2.building = 2 ORDER BY T2.building = 1 AND T2.building = 2
SELECT T2 finishing FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Francois Affolter" AND T2.date = "18/09/2014" AND T2.player_fifa_api_id = "Francois" AND T2.player_api_id = "Affolter"
SELECT sum(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Gabriel Tamas" AND T1.year = 2011
SELECT count(*) FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T1.name = "Scotland Premier League" AND T2.season = 2015/2016
SELECT preferred_foot FROM Player_Attributes WHERE attacking_work_rate = ( SELECT min(overall_rating) FROM Player_Attributes WHERE attacking_work_rate = "Football" )
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = "left"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.challengeCreationPassing = "Risky" AND T2.challengeCreationCrossing = "Football"
SELECT defensive_work_rate FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = "David Wilson" AND sport = "Football" )
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.intermediate_foot = "Football" ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Football"
SELECT avg(home_team_goal) FROM Country AS T1 JOIN MATCH AS T2 ON T1.id = T2.country_id WHERE T2.season = 2010 OR T2.season = 2011 AND T1.name = "Polasz"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.interaction = "Football" GROUP BY T1.player_name ORDER BY avg(T2.finishing) DESC LIMIT 1
SELECT player_name FROM Player WHERE height > 180
SELECT count(*) FROM Player WHERE birthday > 1990
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND T2.date BETWEEN 2008 AND 2010
SELECT potential FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "Aaron" AND player_name = "Doran")
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildup_play_speed = "Fast"
SELECT DISTINCT buildUpPlayPassing FROM Team_Attributes WHERE team_api_id = "CLB"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed > 70
SELECT avg(overall_rating) FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE height > 170 AND YEAR = 2010)
SELECT player_api_id FROM Player WHERE height = (SELECT min(height) FROM Player WHERE player_api_id = "Football")
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Italy Serie A"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildupplayspeed = 31 AND T2.buildupplayspeedclas = 53 AND T2.buildupplaypassing = 32
SELECT avg(overall_rating) FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = "Aaron Doran" );
SELECT count(*) FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = "Germany 1. Bundesliga" AND T1.year >= 1808 AND T1.year <= 2008
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id JOIN MATCH AS T3 ON T2.match_api_id = T3.match_api_id WHERE T3.home_team_api_id = 10 AND T2.team_fifa_api_id = "Football";
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC LIMIT 1 INTERSECT SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "Football" AND T2_potential = 61
SELECT avg(T1.ballscore) - avg(T2.ballscore) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = " Abdou Diallo" AND T2.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_short_name = "GEN"
SELECT player_name FROM Player WHERE height > (SELECT max(height) FROM Player WHERE player_name = "Aaron Lennon" OR player_name = "Abdelaziz Barrada")
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left" AND T2.attacking_work_rate > 60 INTERSECT SELECT count(*) FROM Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "right" AND T2.attacking_work_rate < 55
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Germany"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = ( SELECT max(overall_rating) FROM Player_Attributes )
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986 AND T2.positioning = "left" AND T2.defenderline = "right" AND T2.team_api_id IN ( SELECT team_api_id FROM Team WHERE team_fifa_api_id < 1986 );
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = ( SELECT max(overall_rating) FROM Player_Attributes WHERE player_api_id = "Alexis" OR player_api_id = "Ariel Borysiuk" OR player_api_id = "Arouna Kone")
SELECT heading_accuracy FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = "Ariel Borysiuk")
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 70
SELECT count(*) FROM country AS T1 JOIN MATCH AS T2 ON T1.id = T2.country_id WHERE T2.season = "2008/2009" AND T1.name = "Belgium"
SELECT long_passing FROM Player_Attributes ORDER BY date ASC LIMIT 1
SELECT count(*) FROM country AS T1 JOIN match AS T2 ON T1.id = T2.country_id JOIN team AS T3 ON T3.team_api_id = T2.team_api_id WHERE T1.name = "Belgium Jupiler League" AND T2.season = "2009"
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1 INTERSECT SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.birthday < 1986
SELECT overall_rating FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "Ariel Borysiuk") INTERSECT SELECT overall_rating FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "Paulin Puel")
SELECT avg(buildupplayspeed) FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = "Heart of Midlothian"
SELECT avg(overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron" AND T2.player_fifa_api_id = "Lennox";
SELECT max(T1.chanceCreationPassing) , T1.chanceCreationPassingClass FROM Player_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_api_id = "Ajax"
SELECT preferred_foot FROM Player_Attributes WHERE player_name = " Abdou Diallo"
SELECT max(overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Dorlan Pabon"
SELECT avg(T1.away_team_goal) FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.away_team_api_id WHERE T1.team_short_name = "Parma" AND T2.country_id IN (SELECT T1.country_id FROM Country AS T1 JOIN Team_Attributes AS T2 ON T1.id = T2.country_id WHERE T1.name = "Italy")
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 77 AND T2.date = "2016/6/23" ORDER BY T1.height DESC LIMIT 1
SELECT overall_rating FROM Player_Attributes WHERE date = "2016/2/4" AND player_api_id = "Aaron Mooy"
SELECT potential FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "Francesco Parravicini" AND YEAR = 2010/8/30)
SELECT attacking_work_rate FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "Francesco Migliore" AND YEAR = 2015/5/1)
SELECT defensive_work_rate FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "Kevin Berigaud" AND YEAR = 2013/2/22)
SELECT date FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Kevin Constant" ORDER BY overall_rating DESC LIMIT 1
{"sql": "SELECT T1.buildupplayspeed FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = \"Willem II\" AND T1.buildupplayspeed != \"null\" AND T1.buildupplayspeedClass != \"null\" AND T1.buildupplayspeedDribbling != \"null\" AND T1.buildupplayspeedPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribblingClass != \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribblingClass != \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribblingClass != \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\" AND T1.buildupplayspeedPositioning != \"null\" AND T1.buildupplayspeedDribbling = \"null\" AND T1.buildupplayspeedDribblingPassing != \"null\"
SELECT DISTINCT T1.buildupplayspeed FROM Country AS T1 JOIN Player_Attributes AS T2 ON T1.id = T2.player_api_id WHERE T2.player_fifa_api_id = "LEI" AND T2.buildupplayspeed = "9/%" AND T2.buildupplayspeedClass = "Dribbling" AND T2.buildupplaypassing = "10" AND T2.buildupplaypositioning = "LEI" AND T2.buildupplayspeed = "9/%"
SELECT T1.buildupplayspeed FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "FC Lorient" AND T1.buildupplayspeed = "2010/2/22"
SELECT chanceCreationPassing FROM Player_Attributes WHERE player_api_id IN (SELECT player_api_id FROM Player WHERE player_name = "PEC Zwolle" AND YEAR = 2013/9/20)
SELECT chancecreationcrossing FROM Player_Attributes WHERE player_api_id IN ( SELECT player_api_id FROM Player WHERE player_name = "Hull City" AND YEAR = 2010/2/22 )
SELECT T1.team_api_id , T2.defenceaggression FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = "Hannover 96" AND T2.date = "2015/9/10"
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date BETWEEN "2007/2/22" AND "2016/4/21"
SELECT overall_rating FROM Player_Attributes WHERE date = "2013/7/12" AND player_name = "Landon Donovan" > "Jordan Bowery"
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM Player WHERE height >= 35
SELECT count(*) FROM home_team_goal AS T1 JOIN player AS T2 ON T1.home_team_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennon"
SELECT T1.team_api_goal FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.player_name = "Daan Smith" INTERSECT SELECT T1.team_api_goal FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.player_name = "Filipe Ferreira"
SELECT sum(T1.home_team_goal) FROM MATCH AS T1 JOIN player AS T2 ON T1.home_team_api_id = T2.player_api_id WHERE T2.height < 30
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "attack"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2 finishing = 1 ORDER BY T1.birthday DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Belgium"
SELECT T1.name , T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.visitation >= 90 INTERSECT SELECT T1.name , T1.player_api_id FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T2.name = "Visitation"
SELECT country FROM player GROUP BY country ORDER BY avg(weight) DESC LIMIT 1
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY T2.buildupplayspeed DESC LIMIT 1
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.building = 'yes' AND T2.chanceCreationPassing = 'yes'
SELECT avg(T1.height) FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T2.name = "Italy"
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name
SELECT count(*) FROM Player WHERE birthday > 1990 AND player_name = "Aaron"
SELECT jumping FROM Player_Attributes WHERE player_api_id = 6 INTERSECT SELECT jumping FROM Player_Attributes WHERE player_api_id = 23
SELECT player_api_id FROM Player_Attributes ORDER BY potential ASC LIMIT 5 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot = "right" AND attacking_work_rate = "low"
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left" AND attacking_work_rate = ( SELECT max(overall_rating) FROM Player_Attributes WHERE preferred_foot = "left" )
SELECT count(*) FROM Player_Attributes WHERE strength > 80 AND stamina > 80
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Polagon Ekstraklasa"
SELECT T1.match_api_id FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN League AS T3 ON T3.id = T2.team_api_id WHERE T3.name = "Belgium" AND T1.season = "2008" AND T1.date = "9/%" AND T1.team_api_id = T2.team_api_id ORDER BY T1.match_api_id DESC LIMIT 1
SELECT sprint_speed , agility , acceleration FROM Player_Attributes WHERE player_api_id = ( SELECT player_api_id FROM Player WHERE player_name = "Alexis Blin" )
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY T2.buildupplayspeed DESC LIMIT 1
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN league AS T3 ON T3.id = T1.league_id WHERE T2.name = "Italian Serie A" AND T1.season = 2015 AND T1.year = 2016
SELECT max(T1.team_short_name) FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id JOIN League AS T3 ON T2.country_id = T3.id WHERE T3.name = "Netherlands Eredivisie"
SELECT T1.weight , T2.finishing FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 1
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2015-2016 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 4
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.away_team_api_id GROUP BY T2.away_team_api_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = ( SELECT max(overall_rating) FROM Player_Attributes )
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height < 180 AND T2.overall_rating > 70
SELECT count(*) , sex FROM patient GROUP BY sex
SELECT count(*) FROM patient WHERE sex = 'F' AND birth > 1930
SELECT count(*) FROM patient WHERE birthday BETWEEN 1930 AND 1940 AND admission = 'I'
SELECT T2.SLE , T4.SLE FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id JOIN patient AS T4 ON T1.id = T4.id WHERE T1.diagnostics = 'SLE' AND T4.diagnostics = 'SLE'
SELECT T1.Date FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "30609"
SELECT T1.sex , T1.birthday , T2.symptoms FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ldh > (SELECT max(ldh) FROM patient)
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.coagulation > 0
SELECT T1.id , T1.sex , T1.disease FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Severe'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birth = 1937 AND T2.total_cholesterol > (SELECT avg(total_cholesterol) FROM patient AS T3 WHERE T3.birth = 1937)
SELECT T1.id , T1.sex , T1.dagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alpn < 3.5
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND sum(T2.uap) > (SELECT avg(T2.uap) FROM patient)
SELECT avg(T2.IgG) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.age >= 50
SELECT count(*) FROM patient WHERE sex = 'F' AND admission = 1997 AND first_date = '1997'
SELECT min(birth) FROM patient WHERE first_date = (SELECT min(first_date) FROM patient)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'W' AND T2.examination date LIKE "1997%"
SELECT T1.Birth - T2.Birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.TG = 'Normal' ORDER BY T1.Birth DESC LIMIT 1
SELECT T1.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id ORDER BY T1.Birth Date DESC LIMIT 1
SELECT avg(T1.GOT) , T1.Sex , T1.Birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = '1998-12-031' GROUP BY T1.Sex
SELECT T4.Date , T4.Age FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.LID JOIN patient AS T3 ON T1.ID = T3.ID JOIN laboratory AS T4 ON T2.ID = T4.LID WHERE T1.Sex = "M" AND T3.Sex = "F"
SELECT T4.RF , T4.Sex FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T1.ID = T3.ID JOIN patient AS T4 ON T2.ID = T4.ID WHERE T3.UA = "M" OR T3.UA = "F"
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT id FROM examination WHERE examination_date < (SELECT first_date FROM patient ORDER BY first_date ASC LIMIT 1)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.year >= 1990 AND T1.year <= 1993
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'male' AND sum(T2.totalbilirubin) > 0
SELECT T4.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T1.ID = T3.ID JOIN physician AS T4 ON T4.ID = T3.RVT WHERE T2.first_date >= 1985 AND T2.first_date <= 1231 AND T4.Diagnosis = (SELECT T4.Diagnosis FROM physician AS T4 JOIN patient AS T2 ON T4.ID = T2.ID JOIN laboratory AS T3 ON T1.ID = T3.ID WHERE T2.first_date >= 1985 AND T2.first_date <= 1231 GROUP BY T4.Diagnosis ORDER BY count(*) DESC LIMIT 1)
SELECT avg(T2.age) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.year = 1999 AND T2.birthday = 10/% AND T1.year = 1991
SELECT T4.birth , T3.diagnostics FROM EXAMINATION AS T1 JOIN LITERACY AS T2 ON T1.id = T2.id JOIN patient AS T3 ON T1.id = T3.id JOIN laboratory AS T4 ON T4.id = T1.id ORDER BY T4.HGB DESC LIMIT 1
SELECT T1.Antibody FROM EXAMINATION AS T1 JOIN LITERACY AS T2 ON T1.ID = T2.ID JOIN patient AS T3 ON T3.ID = T2.KCT WHERE T3.age = 1996/12/2
SELECT sum(T1.chole) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 2927464 AND T1.year = 1995-09-04 AND T1.level = 'Normal'
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'AORTITIS' ORDER BY T1.first_date ASC LIMIT 1
SELECT T2.antiCardiolipin FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.detection = 'SLE' AND T2.date = '1994/2/19' INTERSECT SELECT T2.antiCardiolipin FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.detection = 'RBC' AND T2.date = '1993/11/12'
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = "1992-6-12" AND T2.got = 9
SELECT T4.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id JOIN patient AS T4 ON T4.id = T3.id WHERE T3.date = "1991-10-21" AND T4.sex = "M" AND T4.age = T1.age WHERE T4.sex = "M"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first date = 1991/6/13 AND T1.diagnostics = 'SJS'
SELECT T1.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Emission = "SLE" AND T2.KCT = "1997/1/27" ORDER BY T1.Diagnosis ASC LIMIT 1
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.Birth = "1959/3/1" AND T1.Emission = "1993/9/27"
SELECT T4 - T3 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id JOIN patient AS T3 ON T1.id = T3.id JOIN laboratory AS T4 ON T2.id = T4.id WHERE T1.birth = "1959/2/18" AND T4.birth = "1981/11/01"
SELECT T2.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnostics = 'Behcet' AND T1.examination_date BETWEEN '01/01/197' AND '12/31/1997'
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN 1987/7/6 AND 1996/1/31 AND T1.GPT > 30 AND T1.LDH < 4 ORDER BY T1.id
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday = 1964 AND admission = 'T'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 2 AND T2.ana = 'S' AND T2.igm > (SELECT avg(igm) FROM examination WHERE ana = 'I')
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.uprotein >= T1.uranthet AND T2.uprotein < T1.uranthet
SELECT count(*) FROM patient WHERE sex = 'M' AND first_date = 1981 AND diagnosis = 'BEHCET'
SELECT T4.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id JOIN patient AS T4 ON T4.id = T2.id WHERE T1.examination date = "10/%" AND T4.sex = "M" AND T3.total_bilirubin >= 0.001
SELECT count(*) FROM patient WHERE sex != 'P' AND birthday BETWEEN 1980 AND 1989
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnostics = 'PSS' INTERSECT SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.crp = 2 AND T2.createnine = 1 AND T2.ldh = 123
SELECT avg(T2.ALP) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Sex = 'F' AND T2.PLT > 400 AND T1.Diagnosis = "SLE"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Disease = "SLE" GROUP BY T1.Symptoms ORDER BY count(*) DESC LIMIT 1
SELECT T1.Diagnosis , T1.Examination Date FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.Patient Number = 48473 ORDER BY T1.Examination Date ASC LIMIT 1
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = "APS"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.year = 1997 AND T2.GOT > (SELECT min(got) FROM laboratory WHERE YEAR = 1997)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosticsign = 'Thrombocytin' AND T2.examinationtype = 'SLE'
SELECT count(*) FROM patient WHERE sex = 'W' AND diagnosis = 'RA' AND birth = 1980
SELECT count(*) FROM patient WHERE sex = 'M' AND diagnosis = 'Becet' AND id NOT IN ( SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date < 1995 AND T2.examination_date > 1997 AND T2.diagnostics = 'Becet' )
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.wbc < 3.5
SELECT T2.Admission FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.Patient WHERE T1.Admission > 821298 AND T2.EvaluationDate < T1.FirstDate
SELECT T1.URIC FROM LITERACY AS T1 JOIN EXAM AS T2 ON T1.ID = T2.ID WHERE T2.RVVT = 57266 AND T2.Symptoms = 'Normal'
SELECT T1.Date FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Sex = '48473' AND T2.GOT > (SELECT avg(GOT) FROM patient AS T3 JOIN laboratory AS T4 ON T3.ID = T4.ID WHERE T3.Sex = '48473' )
SELECT T4.sex , T4.birthday FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN patient AS T3 ON T3.id = T2.id JOIN patient AS T4 ON T4.id = T3.id WHERE T1.got >= 90 AND T1.got <= 100 AND T2.examination_date LIKE "1994%"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GPT > (SELECT min(GPT) FROM patient)
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T3.ID = T2.ID WHERE T3.ALT = "Glucamic" AND T2.Birth = "ASC" ORDER BY T2.Birth
SELECT avg(T2.LDH) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Description = "Lactate dehydrogenase (LDH)" AND T1.sex = "M" AND T1.year = 2004
SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ldh BETWEEN 100 AND 300 AND T1.sex = 'male'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = 'ALPH' AND T1.sex = 'I' OR T1.sex = 'O'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = '1982-04-01' AND T2.alphoporphyrinogen IX >= '0'
SELECT T1.id , T1.sex , T1.birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING sum(T2.tp) < (SELECT min(T2.tp) FROM patient WHERE T1.sex = 'F')
SELECT T1.id , T1.sex , sum(T2.tp) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND sum(T2.tp) > (SELECT avg(T2.tp) FROM patient)
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.sex = 'M' AND T2.alpin > 0 ORDER BY T1.birthday DESC
SELECT T4.state FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id JOIN patient AS T4 ON T4.id = T2.id WHERE T1.year = 1982 AND T3.alp >= -100 AND T3.alp <= 100
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.uap > (SELECT avg(T2.uap) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F')
SELECT avg(T1.UA) FROM laboratory AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.Symptoms = "Normal" AND T1.Date = (SELECT max(Date) FROM examination WHERE Symptoms = "Normal")
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.un = (SELECT min(un) FROM laboratory)
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnostics = 'RA' AND T1.sex = 'UN'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.cre > (SELECT avg(cre) FROM patient)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.cre > (SELECT max(cre) FROM patient WHERE sex = 'M' ) AND T2.cre < (SELECT max(cre) FROM patient WHERE sex = 'F')
SELECT T4.id , T4.sex , T4.birth FROM Laboratory AS T1 JOIN Examination AS T2 ON T1.id = T2.id JOIN Patient AS T3 ON T3.id = T2.id JOIN Patient AS T4 ON T4.id = T3.id ORDER BY T1.bilirubin DESC LIMIT 1
SELECT T1.sex , sum(T2.bilirubin) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.bilirubin > (SELECT avg(bilirubin) FROM patient) GROUP BY T1.sex
SELECT T1.id , T-CHO FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id ORDER BY T-CHO DESC LIMIT 1
SELECT avg(T1.Age) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.sex = 'M' AND T2.tg = high cholesterol
SELECT T1.id , T1.Diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TG > 100
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.tg > (SELECT avg(tg) FROM patient) AND T1.age > 50
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.crp = (SELECT min(crp) FROM laboratory)
SELECT count(*) FROM patient WHERE sex = 'M' AND crpk > (SELECT crpk FROM patient WHERE birthday >= 1936-1956)
SELECT T1.id , T1.sex , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu > (SELECT max(glu) FROM patient) INTERSECT SELECT T1.id , T1.sex , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.total_cholesterol < (SELECT max(total_cholesterol) FROM patient)
SELECT T1.id , T2.glu FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first_date LIKE "1991%"
SELECT T1.id , T1.sex , T1.birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.wbc > 100 GROUP BY T1.sex ORDER BY T1.age ASC
SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.RBC LIMIT 1
SELECT T4.admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id JOIN patient AS T4 ON T4.id = T1.id WHERE T1.sex = 'F' AND T3.RBC > 50 AND T4.admission = 'Y'
SELECT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.HGB ASC LIMIT 1
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnostics = 'SLE' INTERSECT SELECT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB = (SELECT max(HGB) FROM patient WHERE T2.diagnostics = 'SLE')
SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY T1.id HAVING count(*) >= 2 AND T2.HCT > 90 INTERSECT SELECT T1.id , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT < 85
SELECT avg(HCT) FROM Laboratory WHERE YEAR = 1991 AND avg(HCT) < (SELECT avg(HCT) FROM Laboratory WHERE YEAR = 1991)
SELECT count(*) FROM patient WHERE PLT < (SELECT avg(PLT) FROM patient) INTERSECT SELECT count(*) FROM patient WHERE PLT > (SELECT avg(PLT) FROM patient)
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE "1984%" AND T1.age < 50 AND T1.sex = "N" AND T1.first_date = "1984-04-17"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2PT = 'abnormal'
SELECT T4 FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id JOIN patient AS T4 ON T4.id = T2.id WHERE T4.first_date > 1992 AND T3PT = 'Protoporphyrinogen IX' AND T3ALB = 'Protoporphyrinogen IX'
SELECT count(*) FROM (SELECT * FROM examination WHERE examination_date > 1997/1/1 AND thrombosis = 'inactivated partial prothrom' )
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM examination AS T1 JOIN thrombosis AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Yes' )
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.wbc = 'N' AND T2.RBC = 'F';
SELECT count(*) FROM patient WHERE birth > 1980/1/1 AND T2.igg > 100
SELECT T4.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T1.ID = T3.ID JOIN proteinuria AS T4 ON T3.LID = T4.LID WHERE T4.Higher > (SELECT avg(higher) FROM proteinuria)
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnostics = 'SLE' AND T1.proteinuria = 'Normal'
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM examination WHERE IgG > (SELECT avg(IgG) FROM examination))
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.igg = 'N' AND T2.symptoms = 'Yes'
SELECT T1.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID ORDER BY T2.Igg DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination date > 1990/1/1 AND T2.igga = "N"
SELECT T2.Diagnosis FROM EXAMINATION AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.IgM = (SELECT avg(T1.IgM) FROM EXAMINATION) GROUP BY T2.Diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.crp = 'abnormal' )
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2cre = 'yes' AND T1sex != '70'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RHA = 'Rhuematoid Factor' AND T2.CENTROMEA > 0
SELECT DISTINCT T1.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday > 1985-1-0 AND T2.Rhuematoid Factor = 'N'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RF = 'N' INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RF > 60
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' AND id NOT IN ( SELECT id FROM examination WHERE thrombosis = 'Yes' )
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ana = 'P' AND T3.complement = 3
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.Hematoclit != 'Normal' ORDER BY T2.APTT DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.complement = 4 AND T1.thrombosis = 'yes'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RNP = "Normal" AND T1.admission = "Yes"
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.RNP = (SELECT min(RNP) FROM examination)
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' AND id NOT IN ( SELECT id FROM examination WHERE thrombosis = 'Yes' )
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.sm = 'abnormal' ORDER BY T1.birthday DESC LIMIT 3
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date > 1997/1/1 AND T2.normal_antibody_70 = 'Yes'
SELECT count(*) FROM patient WHERE sex = 'F' AND id NOT IN (SELECT T1.id FROM examination AS T1 JOIN symptoms AS T2 ON T1.id = T2.id WHERE T2.symptoms = 'Yes')
SELECT count(*) FROM patient WHERE admission < 2000 AND SSAA = 'N'
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.SSA = 'Yes' ORDER BY T1.first_date ASC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_result = 'Normal' AND T2.diagnostics = 'SLE'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.SSN = 'N' AND T2.Symptoms != "No"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SSB = "Normal" AND T2.CENTROMEA = "Normal" AND T1.sex = "M"
SELECT T4.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T1.ID = T3.ID JOIN enzyme AS T4 ON T3.ID = T4.ID WHERE T4.DNA = "abnormal"
SELECT count(*) FROM patient WHERE first_date NOT IN (SELECT T1.first_date FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ana = "N")
SELECT count(*) FROM patient WHERE igg = 'N' AND admission = 'Y'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu = "abnormal" AND T1.dagnosis = "SLE"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'male' AND T2.glu = "0" AND T2.WBC = "0"
SELECT T1.Birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.Glutamic Oxaloacetic Transaminase = "abnormal" ORDER BY T1.Birth DESC LIMIT 1
SELECT T1.Birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID ORDER BY T2.GLU DESC LIMIT 3
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu = "normal" AND T1.sex = "male"
SELECT T1.First Date FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID ORDER BY T2.LDH DESC LIMIT 1
SELECT max(T2.Date) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Description = "abnormal" AND T2.GOT = "lactate dehydrogenase"
SELECT count(*) FROM patient WHERE admission = 'Y' AND ALP = 'T'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Symptoms = "Normal" AND T2.Alkiphophatase = 1
SELECT T1.Diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.totalprotein < (SELECT avg(totalprotein) FROM patient)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnostics = 'SJS' AND T1.sex = 'F' AND T1.first_date = '04-06-1994'
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id ORDER BY T3.alpn LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.gpt = T1.alpn
SELECT T4.GOT FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id JOIN anti-cardiolipin AS T4 ON T4.APTT = T2.APTT ORDER BY T3.UA DESC LIMIT 1
SELECT max(T1.Anti-Nucleus) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.cre = 'N'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.cre = 'N' INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.anti_cardiolipin = (SELECT max(anti_cardiolipin) FROM laboratory)
SELECT count(*) FROM ( SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ana = 'P' )
SELECT T4.Antibody FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id JOIN enzyme AS T3 ON T2.id = T3.id JOIN examination AS T4 ON T2.id = T4.id WHERE T1.sex = 'N' AND T2.GOT = (SELECT max(T2.GOT) FROM laboratory AS T2 JOIN patient AS T1 ON T1.id = T2.id WHERE T1.sex = 'N' )
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.totalcholesterol > (SELECT avg(totalcholesterol) FROM patient) AND T2.degrees_of_coagulation < 100
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ana = 'P' AND T1.sex = 'F'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.symptoms = 'Normal'
SELECT T4.Diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.PID JOIN triglyceride AS T3 ON T2.TG = T3.TG AND T3.RVVT = T1.RVVT ORDER BY T3.Tiglyceride DESC LIMIT 1
SELECT id FROM patient EXCEPT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Yes' INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.creatinine phosphokinase = 'No'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.crp = 'null' AND T2.GPT = 'positive'
SELECT T1.Birth FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU = (SELECT max(GLU) FROM patient)
SELECT count(*) FROM patient WHERE first_date NOT IN (SELECT T1.first_date FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Yes')
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.wbc = 'N'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.dagnosis = 'SLE' AND T2.wbc = 'normal'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 100 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Symptoms = "Red blood cell" AND T2.Antibiotic = "Outpatient"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.Symptoms = "Normal"
SELECT T2.PLT FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "MCTD" AND T2.PLT >= 90 INTERSECT SELECT T2.PLT FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "MCTT" AND T2.PLT < 90
SELECT avg(T2.PROTHROMBIN) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.sex = 'M'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Yes' AND T2.u-pro = 'N'
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Angela" AND T2.last_name = "Sanders"
SELECT count(*) FROM major WHERE college = 'College of Engineering' AND event_name = 'Student_Club'
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.member_id WHERE T2.department = 'Art' INTERSECT SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.member_id WHERE T2.department = 'Design'
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_to_event WHERE T1.event_name = "Women's Soccer"
SELECT T3.phone FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T1.event_name = "Women's Soccer"
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T1.event_name = "Women's Soccer" AND T3.tshirt_size = "Medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President of the Student_Club'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Leban"
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T3.first_name = "Sacha" AND T3.last_name = "Harrison" AND T2.year = 2019
SELECT count(*) FROM (SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id GROUP BY T1.event_name HAVING count(*) > 10 UNION SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id WHERE T2.member_id IN (SELECT T3.member_id FROM student_club AS T3 JOIN attendance AS T4 ON T3.member_id = T4.member_id WHERE T3.student_club = 'Yes' )
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event HAVING count(*) > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id GROUP BY T2.event_id HAVING count(*) < 15
SELECT avg(attendance) FROM attendance WHERE event_date LIKE "2020%"
SELECT T1.cost FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T3.type = 'support' GROUP BY T1.cost ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM major AS t1 JOIN member AS t2 ON t1.major_id = t2.member_id WHERE t1.major_name = "Environmental Engineering"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T3.event_name = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Law' INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Constitutional Studies'
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT sum(T2.amount) FROM Member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_event WHERE T1.position = "Vice President"
SELECT sum(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_name = "9/%" AND T2.category = "food"
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.position = "President of the Student_Club"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'IL'
SELECT sum(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_name = "9/%"
SELECT T2.department FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.first_name = "Pierce" INTERSECT SELECT T2.department FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.last_name = "Guidi"
SELECT sum(T2.amount) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date = '2019-10-08'
SELECT avg(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.first_name = "Elijah" AND T3.last_name = "Allen" AND T2.event_status = "9" INTERSECT SELECT avg(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.first_name = "October" AND T3.last_name = "Allan" AND T2.event_status = "10"
SELECT T2.stpn FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.first_name = "Student_Club" AND T2.year = 2019 - T2.year = 2020
SELECT T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T2.category = 'Spring Budget Review'
SELECT cost FROM expense WHERE expense_date LIKE "2019/9/4" AND category = "Posters"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY spent DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE college = 'College of Humanities and Social Sciences'
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs"
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "Ogallagher"
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Meeting"
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT T1.status FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T2.category = 'Post Cards , Posters' AND T1.event_date = "2019/8/20"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.tshirt_size = "Medium"
SELECT TYPE FROM zip_code WHERE short_state = 'Christof' AND long_state = 'Neilson'
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = "Vice President"
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT t2.department FROM member AS t1 JOIN major AS t2 ON t1.member_id = t2.member_id WHERE t1.position = 'President'
SELECT T1.event_date FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T3.first_name = "Connor" AND T3.last_name = "Hilton"
SELECT T2.first_name , T2.last_name FROM expense AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id ORDER BY T1.event_date ASC LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T2.event_name = "October Meeting"
SELECT percent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Speaker" AND T1.category = "Parking"
SELECT sum(T1.cost) FROM expense AS T1 JOIN event AS T2 ON T1.link_to_budget = T2.event_id WHERE T2.type = 'pizza'
SELECT count(*) FROM zip_code WHERE county = "Orange" AND state = "Virginia"
SELECT department FROM major WHERE college = 'College of Humanities' INTERSECT SELECT department FROM major WHERE college = 'College of Social Sciences'
SELECT T2.location FROM member AS T1 JOIN event AS T2 ON T1.member_id = T2.member_id WHERE T1.first_name = "Amy" AND T1.last_name = "Firth"
SELECT T1.expenditure_description FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id ORDER BY T2.remaining LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.event_id = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_id ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'V'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason"
SELECT count(*) FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T1.member_id FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.member_id WHERE T2.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id GROUP BY T1.event_name ORDER BY sum(T2.spent) DESC LIMIT 1
SELECT count(*) FROM member WHERE position = 'President'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_name LIKE "2020%"
SELECT sum(T2.step) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.category = 'food'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T1.member_id FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T3.event_name = 'Community Theater' AND T1.department = 'Interior Design'
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'South Carolina' AND T1.college = 'Georgetown'
SELECT count(*) FROM T1.income AS T1 JOIN T2.member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = 'Grant' AND T3.last_name = 'Gilmour'
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT sum(T1.expense) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id WHERE T2.event_status = 'Yearly Kickoff'
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_budget = T2.member_id WHERE T1.yearly_kickoff = '2004'
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.source ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.event_id ORDER BY T2.cost LIMIT 1
SELECT sum(T1.cost) FROM expense AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = "Yearly Kickoff"
SELECT count(*) FROM (SELECT T1.member_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.member_id WHERE T2.major_name = 'Finance' INTERSECT SELECT T1.member_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.member_id WHERE T2.major_name = 'Physics')
SELECT SOURCE FROM income WHERE date_received LIKE "9/%" AND amount = (SELECT max(amount) FROM income WHERE date_received LIKE "9/%")
SELECT first_name , last_name , email FROM member WHERE POSITION = 'Secretary' AND name = 'Student_Club'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = 'Community Theater' AND YEAR = 2019
SELECT count(*) FROM major AS T1 JOIN attendance AS T2 ON T1.major_id = T2.member_id JOIN event AS T3 ON T2.event_id = T3.event_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi"
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_name = "Student_Club" AND T2.category = "food"
SELECT T2.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_name ORDER BY sum(T1.spent) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id JOIN event AS T3 ON T1.event_id = T3.event_id WHERE T3.event_name = 'Women's Soccer'
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T3.first_name = 'Student' AND T3.last_name = 'Club' AND T1.year = 2019 AND T1.type = 'event' AND T1.event_name = 'Community Service'
SELECT T2.cost FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id JOIN expense AS T3 ON T1.event_id = T3.event_id GROUP BY T1.event_name ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.approved) , T1.type FROM expense AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'October Meeting'
SELECT T2.amount FROM budget AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = 'April Speaker' ORDER BY T1.amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id WHERE T2.category = 'parking' ORDER BY T1.cost DESC
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id WHERE T2.event_date = '8/20/2019'
SELECT T2.first_name , T2.last_name , sum(T1.cost) FROM expense AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.member_id = "rec4BLdZHS2Blfp4v"
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_expense WHERE T1.first_name = "Sacha" AND T1.last_name = "Harrison"
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T1.t_shirt_size = 'X-Large'
SELECT zip FROM member WHERE incurred < 50
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T1.first_name = "Phillip" AND T1.last_name = "Cullen"
SELECT T2.position FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Business'
SELECT count(*) FROM member WHERE t_shirt_size = 'Business' AND t_shirt_size != 'Tee'
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T2.remaining > 30
SELECT event_name FROM event WHERE LOCATION = "MU 215"
SELECT TYPE FROM event WHERE event_date LIKE "2020-03-24T12:00:00%"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business"
SELECT event_name FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'Large'
SELECT count(*) FROM major WHERE department = 'College of Agriculture and Applied Sciences' AND college = 'School of Applied Sciences, Technology and Education'
SELECT T1.last_name , T1.department , T2.college FROM member AS T1 JOIN major AS T2 ON T1.major_id = T2.major_id WHERE T2.major_name = "Environmental Engineering"
SELECT T2.category FROM budget AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.location = 'MU 215' AND T1.spent = 0
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.department = "Electrical and Computer Engineering"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id JOIN member AS T3 ON T2.member_id = T3.member_id WHERE T3.position = 'V' AND T1.location = '900 E. Washington St.'
SELECT T2.last_name , T2.position FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expose_date = "09/10/2019" AND T1.category = "pizza"
SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.event_id = T3.event_id WHERE T3.event_name = 'Women's Soccer'
SELECT t_shirt_size , sum(amount) FROM member WHERE t_shirt_size = 'medium' AND sum(amount) = 50
SELECT DISTINCT county FROM zip_code
SELECT zip_code FROM zip_code WHERE county = "San Juan Municipio" AND state = "Puerto Rico"
SELECT event_name FROM event WHERE TYPE = "game" AND event_date = "3/15/2019" INTERSECT SELECT event_name FROM event WHERE TYPE = "2020" AND event_date = "3/20/2020"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id WHERE T2.amount > 50
SELECT T2.first_name , T2.last_name , T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.event_date = '1/10/2019' AND T1.event_date = '11/19/2019'
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO"
SELECT T1.phone FROM member AS T1 JOIN major AS T2 ON T1.position = T2.major_id WHERE T2.department = 'Business' AND T1.college = 'College of Agriculture and Applied Sciences'
SELECT T1.email FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T2.cost > 20 AND T2.event_date BETWEEN 9/10/2019 AND 11/19/2019
SELECT count(*) FROM major WHERE department = 'College of Education & Human Services' AND major_name = 'Education & Human Services'
SELECT count(*) FROM budget
SELECT event_id , LOCATION , Status FROM event WHERE event_date LIKE "2019-11-02" AND event_date LIKE "2000-03-02"
SELECT T2.expense_description FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget GROUP BY T2.link_to_budget HAVING avg(T1.expent) > 50
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM zip_code WHERE TYPE = "PO"
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id ORDER BY T2.spent DESC LIMIT 1
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id JOIN expense AS T3 ON T2.budget_id = T3.budget_id WHERE T3.cost > 50 AND T3.cost < 100
SELECT T2.first_name , T2.last_name , T2.member_id FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.spent > 100
SELECT T2.city , T2.county FROM income AS T1 JOIN zip_code AS T2 ON T1.link_to_member = T2.zip_code GROUP BY T2.city , T2.county HAVING count(*) > 40
SELECT T2.first_name , T2.last_name FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 1 ORDER BY sum(T1.cost) DESC LIMIT 1
SELECT avg(amount) FROM budget WHERE category = 'student' AND position != 'member'
SELECT T1.event_name FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event HAVING avg(T2.cost) < 60 INTERSECT SELECT T1.event_name FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event HAVING avg(T2.cost) > 55
SELECT T1.cost , T2.event_name FROM expense AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.type = 'meeting'
SELECT budget FROM budget WHERE category = 'Water' , 'Chips' , 'Cookies' ORDER BY spent DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2 spent DESC LIMIT 5
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expenditure_amount > (SELECT avg(expenditure_amount) FROM budget)
SELECT t1.member_id FROM member AS t1 JOIN zip_code AS t2 ON t1.zip = t2.zip_code WHERE t2.county = "New Jersey" INTERSECT SELECT t1.member_id FROM member AS t1 JOIN zip_code AS t2 ON t1.zip = t2.zip_code WHERE t2.county = "Vermont"
SELECT T2.department , T1.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Garrett" AND T1.last_name = "Gerkense"
SELECT T1.first_name , T1.last_name , T1.member_id , T2.cost FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.category = 'Water' INTERSECT SELECT T1.first_name , T1.last_name , T1.member_id , T2.cost FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.category = 'Vegetarian' INTERSECT SELECT T1.first_name , T1.last_name , T1.member_id , T2.cost FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.category = 'Supplies'
SELECT T2.last_name , T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = "Elementary Education"
SELECT T1.category , sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T2.category = 'food'
SELECT T1.first_name , T1.last_name , T2.amount FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.date_received = "9/9/2019"
SELECT T2.category FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expose_description = 'Posters'
SELECT first_name , last_name FROM member WHERE POSITION = 'Secretary' AND college = (SELECT college FROM major WHERE department = 'Secretary')
SELECT sum(T2.spent) , T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T2.category = 'speaker'
SELECT T2.location FROM Member AS T1 JOIN event AS T2 ON T1.member_id = T2.event_id WHERE T1.first_name = "Garrett" AND T1.last_name = "Gerkense"
SELECT T2.first_name , T2.last_name , T2.position FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.city = "Lincolnton" AND T1.county = "North Carolina"
SELECT count(*) FROM gasstations AS T1 JOIN products AS T2 ON T1.chainid = T2.chainid WHERE T1.country = 'CZE' AND T2.description = 'Premium gas'
SELECT count(*) FROM customers WHERE currency = 'EUR' AND currency = 'Czk'
SELECT T1.customerid , min(T2 Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.year = 2012 AND T2.month = "LAM" GROUP BY T1.customerid
SELECT avg(T1 Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = 'SME' AND T1.year = 2013
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.year = 2011 AND T1.price = T2.amount WHERE T1.country = 'CZK' GROUP BY T1.customerid ORDER BY sum(T2.commission) DESC LIMIT 1
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = "KAM" AND T2 Consumption < 30000 AND T2.year = 2012
SELECT difference(Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" AND T2.Currency = "EUR" AND T1.Date = 2012
SELECT T1.date FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'EUR' GROUP BY T1.date ORDER BY count(*) DESC LIMIT 1
SELECT segment FROM yearmonth GROUP BY segment ORDER BY sum(consumption) LIMIT 1
SELECT T1.date FROM customers AS T1 JOIN gasstations AS T2 ON T1.customerid = T2.customerid WHERE T2.country = 'CZK' GROUP BY T1.date ORDER BY sum(T1 Consumption) DESC LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE CustomerID IN (SELECT CustomerID FROM customers WHERE Segment = 'SME' AND YEAR = 2013)
SELECT avg(T1 Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Country = 'CZK' AND T1.year = 2013 GROUP BY T1.CustomerID ORDER BY avg(T1 Consumption) ASC LIMIT 3
SELECT T1.segment , T1.yearmonth FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.yearmonth >= 2012 AND T2.yearmonth <= 2013 ORDER BY T1.consumption LIMIT 3
SELECT sum(T1.consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.customerid = 6 AND T1.date BETWEEN 2013-08-06 AND 2013-09-02013
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" OR country = "Slovakia"
SELECT sum(T1.composition) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = '2013' AND T1.customerid = T5.customerid ORDER BY T1.composition DESC LIMIT 1
SELECT count(*) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'Czech' > T1.currency = 'Euros'
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'Euro' AND T2.date = '2013-10-20' ORDER BY T2 consumption DESC LIMIT 1
SELECT T1.CustomerID , T1.Amount FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = 'KAM' AND T1.date LIKE '2013-05-10'
SELECT T1% FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.LAM > 46.73
SELECT country , sum(gasstationid) FROM gasstations GROUP BY country ORDER BY sum(gasstationid) DESC LIMIT 1
SELECT count(*) FROM customers WHERE currency = 'KAM'
SELECT %consumed FROM yearmonth WHERE date LIKE "2012%" AND %consumed > 528.3
SELECT count(*) FROM gasstations WHERE country = 'Slovakian' AND premium = 'Y'
SELECT customerid FROM yearmonth WHERE date LIKE "2013-09-201" GROUP BY customerid ORDER BY count(*) DESC LIMIT 1
SELECT T2.segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2013-09-20" GROUP BY T2.segment ORDER BY sum(T1 Consumption) ASC LIMIT 1
SELECT T1.customerid , min(T2 Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date = "2012-06-20" GROUP BY T1.customerid ORDER BY min(T2 Consumption) ASC LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE YEAR = 2012
SELECT max(T1 Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "euro"
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.date LIKE "2013-09-02"
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID JOIN yearmonth AS T3 ON T2.Time = T3.CustomerID WHERE T3.Date LIKE "2013-06%"
SELECT T1.chainid FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.amount = 'Euros'
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.Amount = 'euro'
SELECT avg(T1.Price) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.date = T2.date WHERE T2.date LIKE "2012-01%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'euro' AND T2 Consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T3.Country = "Czech Republic"
SELECT DISTINCT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = "Czech Republic" AND T2.Price > 1000
SELECT count(*) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.country = 'Czech Republic' AND T2.yearmonth > 2012/1/1
SELECT avg(T1.Price) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic"
SELECT avg(T1.Price) FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "euro"
SELECT customerid FROM transactions_1k WHERE price = (SELECT max(price) FROM transactions_1k WHERE date = '2012/8/25')
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1gasstationid = T2gasstationid JOIN yearmonth AS T3 ON T2.transactionid = T3.transactionid WHERE T3.date = '2012/8/25' ORDER BY T1.country LIMIT 1
SELECT Currency FROM customers WHERE Date = "2012/8/24" AND Time = "16:25:00"
SELECT segment FROM customers WHERE date LIKE "2012/8/23 21:20:00%"
SELECT count(*) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = '2012/8/26' AND T1.price = 'CZK'
SELECT Segment FROM customers ORDER BY Date ASC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN yearmonth AS T2 ON T1.GasStationID = T2.CustomerID WHERE T2.Date = "2012/8/24 12:42:00"
SELECT productid FROM transactions_1k WHERE date = '2012/8/23 21:20:00'
SELECT T1.Date , T1.Expenditure FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/8/24" AND T1.Expenditure = 124.05
SELECT count(*) FROM transactions_1k WHERE TIME BETWEEN "8:00-9:00" AND 2012/8/26 WHERE productid = "CZE"
SELECT T1.customerid , T1.salary FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2013-06-20" AND T1.currency = "1"
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1gasstationid = T2gasstationid WHERE T2cardid = 667467
SELECT T1.nationality FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2012/8/24" AND T2.consumption = 548.4
SELECT count(*) FROM customers WHERE currency = 'EUR' AND date = '2012/8/25'
SELECT T1 Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.year = 2012 AND T2.month = "8/%" AND T1.decrease = 634.8
SELECT gasstationid FROM transactions_1k GROUP BY gasstationid ORDER BY sum(amount) DESC LIMIT 1
SELECT count(*) FROM country AS t1 JOIN gasstations AS t2 ON t1.country = t2.country WHERE t1.segment = "premium" AND t2.country = "SVK"
SELECT sum(T1.amount) FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.customerid = 38508 AND T1.date LIKE "2012-01-08"
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID ORDER BY T2.Price DESC LIMIT 5
SELECT avg(T1.price) , T2.customerid FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid GROUP BY T2.customerid ORDER BY avg(T1.price) DESC LIMIT 1
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.productid = 2 ORDER BY T2.price DESC LIMIT 1
SELECT T1 Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.age > 29.00 AND T1.Date = "2012-08-20"
