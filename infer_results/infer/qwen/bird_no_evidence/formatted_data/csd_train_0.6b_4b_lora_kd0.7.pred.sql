SELECT max(percent (%) Eligible Free (K-12)) FROM frpm WHERE county = "Alameda" AND school_type = "K-12"
SELECT min(FRPM Count (Ages 5-17)) FROM frpm WHERE Eligible Free (Ages 5-17) = 100 AND School Type = "Continuation"
SELECT zip FROM schools WHERE county = "Fresno County Office of Education" AND charter = 'Y'
SELECT mailstreet FROM schools ORDER BY FRPM COUNT(*) DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND charter = 'Y'
SELECT count(*) FROM schools WHERE Virtual = 'Y' AND AvgScrMath > 400
SELECT school FROM schools WHERE numtsttaker > 500 AND magnet = 'Y' OR GSoffered = 'Y'
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrRead > 1500 GROUP BY T1.CDSCode ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.statustype = "K-12" ORDER BY T2.FRPM Count (K-12) DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cds = T2.cdscode JOIN satscores AS T3 ON T1.cds = T3.cds WHERE avgscrmath > 560 AND fundingtype = 'Charter'
SELECT count(*) FROM frpm WHERE enroll12 >= 5 AND enroll12 <= 17
SELECT T1.CDSCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.CDSCode HAVING sum(enrollment) > 500
SELECT max(percent)eligiblefree FROM frpm WHERE percent (%) eligiblefree > 0.3 AND enroll12 <= 17 AND enroll12 >= 5
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY avg_scrread + avg_scrmath + avg_scrwrite DESC LIMIT 3
SELECT T1.NCESSchool FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (Ages 5-17) = (SELECT max(Enrollment (Ages 5-17)) FROM frpm) GROUP BY T1.NCESSchool ORDER BY count(*) DESC LIMIT 5
SELECT t1.district FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds GROUP BY t1.district ORDER BY avg(t2.AvgScrRead) DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = "Alameda" AND T1.statustype = "Merged" AND sum(T2.numtsttaker) < 100
SELECT T1.charternum , T2.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.AvgScrWrite > 499 GROUP BY T1.charternum ORDER BY avg(T2.AvgScrWrite) DESC
SELECT count(*) FROM schools WHERE county = "Fresno" AND fundingtype = "Directly funded" AND numtsttaker <= 250
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.CDSCode ORDER BY avg(T2.AvgScrMath) DESC LIMIT 1
SELECT count(*) FROM schools WHERE county = "Amador" AND low_grade = 9 AND high_grade = 12
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.city = "Los Angeles" AND T2.Free Meal Count (K-12) > 500 AND T2.Free Meal Count (K-12) < 700
SELECT t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.county = "Contra Costa" GROUP BY t1.school ORDER BY count(*) DESC LIMIT 1
SELECT T1.school , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.enrollment (K-12) - T2.enrollment (Ages 5-17) > 30
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cds = T2.cds WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.AvgScrRead >= 1500
SELECT T1.FundingType FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avg(T2.AvgScrMath) > 400 AND T1.district = 'Riverside'
SELECT T1.school , T1.street + ' ' + T1.streetabr FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = "Monterey" AND T2.freemealcount (Ages 5-17) > 800
SELECT T1.school , T2.AvgScrWrite , T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.OpenDate > "1991-01-01" OR T1.ClosedDate < "2000-01-01"
SELECT T1.school , T1.DOCType FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.fundingtype = "K-12" AND T1.fundingtype = "15-17" GROUP BY T1.school HAVING avg(T2.enrollment12 - T2.enrollment517) > (SELECT avg(T2.enrollment12 - T2.enrollment517) FROM schools AS T2 JOIN frpm AS T3 ON T2.cdscode = T3.cdscode WHERE T3.fundingtype = "K-12" AND T3.fundingtype = "15-17")
SELECT opendate FROM schools WHERE schoolcode = (SELECT schoolcode FROM frpm ORDER BY enroll12 DESC LIMIT 12)
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.lowgrade = 1 AND T2.lowgrade <= 12 ORDER BY T2.enrollment (k12) LIMIT 5
SELECT T1.Percent (%) Eligible Free (K-12) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Enrollment (Ages 5-17) DESC LIMIT 2
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.fundtype = 'Free' OR T2.fundtype = 'Reduced' AND T1.statustype = '66' ORDER BY T2.freem meal count (K-12) DESC LIMIT 5
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000 AND T2.Percent (%) Eligible Free (Ages 5-17) >= 1 AND T2.Percent (%) Eligible Free (Ages 5-17) <= 2 AND T2.EILCode = 'K-12'
SELECT FRPM Count (Ages 5-17) FROM frpm WHERE school_name = "Kacey Gibson"
SELECT t2.admemail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.charter = 'Y' AND t1.enroll12 = (SELECT min(enroll12) FROM frpm WHERE grade = 1 AND grade = 12)
SELECT t1.admFName1 , t1.admLName1 FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds WHERE t2.numge1500 >= 1500 GROUP BY t1.cds ORDER BY count(*) DESC LIMIT 1
SELECT t1.street , t1.city , t1.zip , t1.state FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY percent (%) Eligible FRPM (Ages 5-17) LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Los Angeles County" AND T2.FRPM Count (K-12) BETWEEN 2000 AND 3000
SELECT avg(NumTstTakr) FROM schools WHERE opendate BETWEEN '01/01/1980' AND '12/31/1980' AND county = "Fresno"
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.city = "Fresno" AND T1.state = "CA" AND T2.rtype = "Read" GROUP BY T1.CDSCode ORDER BY avg(T2.AvgScrRead) LIMIT 1
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds ORDER BY T2.AvgScrRead DESC LIMIT 5
SELECT T1.EdOpsName FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath = (SELECT max(AvgScrMath) FROM satscores)
SELECT avg(T1.AvgScrMath) , T2.County FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.CDSCode ORDER BY avg(T1.AvgScrMath) LIMIT 1
SELECT T1.city FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY avg(T2.AvgScrWrite) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.school = Ricci Ulrich GROUP BY T1.school
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.State ORDER BY sum(T2.Enrollment) DESC LIMIT 1
SELECT count(*) , opendate FROM schools WHERE county = 'Alameda County' AND district = 'Elementary School District' AND academic_year = 1980 GROUP BY opendate ORDER BY count(*) DESC LIMIT 1
SELECT count(*) / (SELECT count(*) FROM schools WHERE county = "Orange County" AND district_type = "Elementary") FROM schools WHERE district_type = "Unified" INTERSECT SELECT count(*) / (SELECT count(*) FROM schools WHERE county = "Orange County" AND district_type = "Unified") FROM schools WHERE district_type = "Elementary")
SELECT county , closeddate FROM schools GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds ORDER BY avgscrmath DESC LIMIT 7
SELECT T1.Street FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T2.CDSCode = T3.cds WHERE T3.AvgScrRead = (SELECT min(AvgScrRead) FROM satscores) AND T3.rtype = "Read"
SELECT count(*) FROM schools WHERE mailcity = "Lakeport" AND sum(T1.NumTstTakr) >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip , school FROM schools WHERE admfname1 = 'Avetik Atoian'
SELECT count(*) , mailstate FROM schools WHERE mailstate = 'CA' INTERSECT SELECT count(*) , mailstate FROM schools WHERE mailstate = 'CA' AND county = 'Colusa' / (SELECT count(*) , mailstate FROM schools WHERE mailstate = 'CA' AND mailstate = 'CA' AND county = 'Humboldt')
SELECT count(*) FROM schools WHERE mailstate = "CA" AND mailcity = "San Joaquin" AND statustype = "Active"
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T2.AvgScrWrite DESC LIMIT 3
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE admfnm1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE admlnm2 = "Dante Alvarez"
SELECT T1.Website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County = "San Joaquin" AND T1.StatusType = "Partially Virtual"
SELECT count(*) FROM schools WHERE city = 'Hickman' AND Charter = 'Y' AND District = 'Elementary School District'
SELECT count(*) FROM schools WHERE county = "Los Angeles" AND charter = 'N' AND (SELECT percent (%) Eligible Free (K-12) FROM frpm WHERE percent (%) Eligible Free (K-12) < 0.18) > 0
SELECT T1.school , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charternum = 00D2
SELECT count(*) FROM schools WHERE mailcity = "Hickman" AND charternum = 00D4
SELECT count(*) , percent (%) Eligible Free (K-12) FROM frpm WHERE County = "Santa Clara County" AND Charter Funding Type = "Free" GROUP BY County NAME HAVING percent (%) Eligible Free (K-12) > (SELECT sum(percent (%) Eligible Free (K-12)) FROM frpm WHERE County = "Santa Clara County" AND Charter Funding Type = "Free" ) / count(*)
SELECT count(*) FROM schools WHERE opendate BETWEEN '01/01/2000' AND '12/31/2005' AND county = "Stanislaus"
SELECT sum(t1.closeddate) FROM schools AS t1 JOIN frpm AS t2 ON t1.cds = t2.cdscode WHERE t1.closeddate = 1989 AND t1.city = "San Francisco"
SELECT county FROM schools WHERE closeddate LIKE "1980-1981" AND fundingtype = "YEAH" AND edopsname = "Youth Authority Facilities (CEA)" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T1.NCESdist FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.statustype = 'State Special Schools'
SELECT count(*) , statustype FROM schools WHERE county = "Alpine" GROUP BY statustype
SELECT district FROM schools WHERE school NOT IN (SELECT T1.district FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Magnet = 'Y' AND T1.city = 'Fresno')
SELECT count(*) FROM frpm WHERE Academic Year = 2014-2015 AND Enrollment (Ages 5-17) = 1 AND School Name = "State Special School" AND County Name = "Fremont"
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.street = "PO Box 1040" AND T1.statustype = "Youth Authority" AND T1.school = "Youth Authority School"
SELECT min(lowgrade) FROM frpm WHERE cdscode = (SELECT cdscode FROM schools WHERE ncesdist = 0613360)
SELECT T1.EdOpsName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM Count (K-12) = 2 AND T2.County Code = 37
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.educationaloptiontype = "K-12" AND T2.lowgrade = 9 AND T2.highgrade = 12 AND T2.county = "Merced"
SELECT T1.school_name , T2.Percent (%) Eligible FRPM (Ages 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Los Angeles" AND T1.gserved >= "Kindergarten" AND T1.gserved <= "9th grade"
SELECT count(*) , district_type FROM schools WHERE city = "Adelanto" GROUP BY district_type ORDER BY count(*) DESC LIMIT 1
SELECT county FROM schools WHERE state = "San Diego" OR state = "Santa Barbara" AND edopsname != "Physical Building" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT T1.city , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = "CA" ORDER BY T1.latitude LIMIT 1
SELECT gsoffered FROM schools WHERE longitude = (SELECT max(latestupdate) FROM schools)
SELECT count(*) , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.GSoffered = "K-12" AND T2.GSserved = "8" AND T1.magnet = 'Y' GROUP BY T1.city
SELECT AdmFName1 , AdmLName1 , District FROM schools GROUP BY AdmFName1 ORDER BY count(*) DESC LIMIT 2
SELECT T1.DistrictCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = "Alusine"
SELECT T1.AdmLName1 , T1.County , T1.District , T1.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.CharterNum = 40
SELECT admEmail1 FROM schools WHERE county = "San Bernardino" AND district = "San Bernardino City Unified" AND openDate BETWEEN 1/1/2009 AND 12/31/2010 AND schoolType = "Public Intermediate/Middle Schools" INTERSECT SELECT admEmail1 FROM schools WHERE county = "San Bernardino" AND district = "San Bernardino City Unified" AND openDate BETWEEN 1/1/2009 AND 12/31/2010 AND schoolType = "Unified Schools"
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.school ORDER BY sum(numtsttaker) DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 29 AND T2.operation = 'issuance'
SELECT count(*) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id IN (SELECT district_id FROM account WHERE district_id = 129) AND T2.status = 'approved' AND T1.district_id = 129
SELECT avg(unemployment_ratio) , year FROM unemployment_data WHERE YEAR = 1995 UNION SELECT avg(unemployment_ratio) , YEAR FROM unemployment_data WHERE YEAR = 1996
SELECT count(*) FROM district WHERE avg(salary) > 6000 INTERSECT SELECT count(*) FROM district WHERE avg(salary) < 10000
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "North Bohemia" AND T1.gender = "Male" GROUP BY T1.gender HAVING avg(T1.salary) > 8000
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date DESC LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'female' ORDER BY avg(salary) ASC LIMIT 1 - 1
SELECT account_id FROM client ORDER BY birth_date LIMIT 1 JOIN client AS T1 ON T1.client_id = T2.client_id GROUP BY T2.client_id ORDER BY avg_salary DESC LIMIT 1
SELECT count(*) FROM disp WHERE TYPE = "statement" AND account_id IN (SELECT account_id FROM trans WHERE operation = "weekly" AND bank = "owner")
SELECT client_id FROM disp WHERE operation = 'issuance' EXCEPT SELECT client_id FROM disp WHERE operation = 'disponent'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1997/%" ORDER BY T2.amount LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 12 GROUP BY T1.account_id ORDER BY sum(T2.amount) DESC LIMIT 1 JOIN account AS T3 ON T3.account_id = T1.account_id WHERE T3.date LIKE "1993%"
SELECT count(*) FROM client WHERE gender = 'F' AND birth_date < '1950' AND district_id = (SELECT district_id FROM account WHERE district_id = 'Sokolov')
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1995%" ORDER BY T2.date LIMIT 1
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.date < '1997' AND T2.amount > 3000
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.date LIKE "1994/03/03%"
SELECT T1.date , T1.operation , T1.amount , T1.balance , T1.bank , T1.account_id FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = "1998/10/14" AND T1.amount = 840; SELECT T2.date FROM account AS T2 JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T3.date = "1998/10/14"
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = '1994/8/25'
SELECT max(amount) FROM trans AS T1 JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE T2.issued LIKE "1996/10/21"
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id GROUP BY T1.client_id ORDER BY avg(T3.amount) DESC LIMIT 1
SELECT T2.amount , T1.date FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'approved' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T2.A9 = "Jesenik" AND T1.gender = "Female"
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.birth_date LIKE "1998/09/02" AND T1.type = "Credit" AND T1.amount = 5100
SELECT count(*) FROM account WHERE date = "1996" AND district_id IN (SELECT district_id FROM account WHERE frequency = "Litomerice")
SELECT T2.district FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T1.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/3"
SELECT T2.account_id FROM district AS T1 JOIN disp AS T2 ON T1.district_id = T2.client_id WHERE T1.A2 = 'Prague' AND T2.type = 'new'
SELECT percentage FROM client WHERE gender = 'male' AND district_id IN (SELECT district_id FROM district WHERE A2 = 'south' AND A3 = 'Bohemia') GROUP BY district_id ORDER BY count(*) DESC LIMIT 1
SELECT (T2.balance - T1.balance) / T1.balance FROM trans AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = '1993/03/22' AND T2.status = 'approved' INTERSECT SELECT (T3.balance - T2.balance) / T2.balance FROM trans AS T3 JOIN loan AS T4 ON T3.account_id = T4.account_id WHERE T4.date = '1998/12/27'
SELECT status , amount , % FROM loan WHERE status = 'Fully Paid'
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'Running'
SELECT T1.account_id , T2.A3 , T2.A4 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date > (SELECT min(date) FROM trans)
SELECT account_id , count(*) FROM account WHERE district_id = 113 AND YEAR = 1995 UNION SELECT account_id , count(*) FROM account WHERE district_id = 113 AND YEAR = 2000
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM disp WHERE TYPE = 'Prachatice')
SELECT T2.district , T2.region FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.loan_id = 4990
SELECT T1.account_id , T2.district_id , T3.region FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.district_id , avg(T3.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.trans_id = T3.trans_id WHERE T1.duration = 60 GROUP BY T1.loan_id
SELECT T1.district , T2.year1995_unemployment_rate_increment FROM loan AS T1 JOIN (SELECT year1995_unemployment_rate_increment FROM trans AS T2 WHERE T2.date LIKE '1995%' ) AS T3 ON T1.date LIKE '1995%'
SELECT count(*) / (SELECT count(*) FROM account WHERE date = '1993' AND district_id = 12) FROM account WHERE date = '1993' AND district_id = 12
SELECT account_id FROM account WHERE frequency = "monthly"
SELECT T1.A9 FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.A9 ORDER BY count(*) DESC LIMIT 9;
SELECT T1.amount FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1996-01-01" AND T2.type != "Credit Card" GROUP BY T2.district_id ORDER BY sum(T1.amount) DESC LIMIT 10
SELECT count(*) FROM account WHERE district_id = 209 AND TYPE = 'individual' EXCEPT SELECT count(*) FROM card WHERE TYPE = 'credit'
SELECT T1.A3 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE status = 'approved' AND gender = 'M'
SELECT T1.A2 , T1.A3 , T1.A4 , T1.A5 , T1.A6 , T1.A7 , T1.A8 , T1.A9 , T1.A10 , T1.A11 , T1.A12 , T1.A13 , T1.A14 , T1.A15 , T1.A16 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date = 1996 GROUP BY T1.A2 ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE date LIKE "1996%" GROUP BY date ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT account_id) FROM trans WHERE operation = 'credit' AND balance < 0
SELECT count(*) FROM loan WHERE amount >= 250000 AND status = 'approved' AND date BETWEEN '01/01/1995' AND '12/31/1997'
SELECT count(*) FROM account WHERE district_id = 1 AND frequency = 'running'
SELECT count(*) FROM client WHERE gender = 'M' AND district_id IN (SELECT district_id FROM disp GROUP BY district_id ORDER BY count(*) DESC LIMIT 1) AND YEAR (date) = 1995
SELECT count(*) FROM card WHERE TYPE = "OWNER"
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT T1.A5 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date = "1997-01-01" AND T2.operation = "transfer" AND T2.amount > 10000
SELECT T1.account_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'household payment' AND T2.district_id = 112
SELECT T1.account_id FROM account AS T1 JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE T2.type = 'Gold'
SELECT avg(amount) FROM trans WHERE date LIKE "2021%" AND operation = "Credit"
SELECT T1.account_id FROM trans AS T1 JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE T1.operation = 'Credit' AND T1.date = 1998 AND T2.amount < (SELECT avg(amount) FROM trans WHERE date = 1998)
SELECT T1.gender FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN card AS T3 ON T3.disp_id = T2.account_id WHERE T1.gender = 'female' AND T3.type = 'Credit' INTERSECT SELECT T1.gender FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN card AS T3 ON T3.disp_id = T2.account_id WHERE T3.type = 'Loan'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T3.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A5 = 'South Bohemia'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 12 AND T2.status = 'approved'
SELECT TYPE FROM account EXCEPT SELECT T1.TYPE FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 >= 8000 AND T3.A2 <= 9000
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 32002 AND T2.bank = "AB"
SELECT T2.A3 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'withdraw'
SELECT avg(T1.crimes) FROM card AS T1 JOIN account AS T2 ON T1.operation = 'deposit' WHERE T2.date >= '1997' AND T1.type = 'trans' AND T1.date = '1995' GROUP BY T2.district_id HAVING avg(T1.crimes) > 4000
SELECT count(*) FROM card WHERE TYPE = 'classic'
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Hl.m. Praha') AND gender = 'M'
SELECT count(*) * 100 / 100 FROM card WHERE TYPE = 'Gold' AND issued < 1998
SELECT T1.name FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T1.client_id = T3.client_id WHERE T2.account_id = T4.account_id ORDER BY T4.amount DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date = 1995 AND T1.district_id = 532
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT amount FROM trans WHERE TYPE = 'Cash' AND operation = 'Withdrawal' AND client_id = 3356
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 200000
SELECT TYPE FROM card WHERE disp_id IN (SELECT disp_id FROM disp WHERE client_id = 13539)
SELECT T2.A8 FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.client_id = 3541
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'Finished' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN order AS T3 ON T2.account_id = T3.account_id WHERE T3.order_id = 32423
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A2 = "Jesenik");
SELECT client_id FROM card WHERE TYPE = 'Junior' AND issued > 1996
SELECT count(*) , gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.disp_id GROUP BY T1.client_id HAVING avg(T2.district_id) > 10000 INTERSECT SELECT count(*) , gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.disp_id GROUP BY T1.client_id HAVING avg(T2.district_id) > 10000
SELECT sum(T2.amount) - sum(T1.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date BETWEEN 1996 AND 1997 AND T1.status = 'Accepted' AND T1.gender = 'M'
SELECT count(*) FROM trans WHERE date > '1995' AND operation = 'Credit Card Withdrawal'
SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'East Bohemia' AND T2.date = '1996' UNION SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'North Bohemia' AND T2.date = '1996'
SELECT count(*) , TYPE FROM disp WHERE account_id BETWEEN 1 AND 10 GROUP BY TYPE
SELECT count(*) FROM trans WHERE operation = 'debit' AND account_id = 3539
SELECT T1.birth_date FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.account_id = 130
SELECT count(*) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'request'
SELECT amount , payments FROM loan WHERE payments = 'Debt' AND client_id = 992
SELECT sum(T1.balance) , T2.gender FROM trans AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.operation = "851" GROUP BY T2.gender
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 9
SELECT sum(amount) FROM trans WHERE date = '1998' AND operation = 'Payment' AND client_id = 617;
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date BETWEEN '1983-01-01' AND '1987-12-31' AND T2.client_id IN (SELECT T3.client_id FROM disp AS T3 JOIN account AS T4 ON T3.account_id = T4.account_id WHERE T4.district_id = 126)
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id ORDER BY T2.amount DESC LIMIT 3 WHERE T1.gender = 'Female'
SELECT count(*) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND T1.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T2.amount > 4000
SELECT count(*) FROM account WHERE district_id = 12 AND date > '1996'
SELECT count(*) FROM card AS T1 JOIN client AS T2 ON T1.disp_id = T2.client_id WHERE T1.type = 'Junior' AND T2.gender = 'F'
SELECT count(*) , gender FROM client AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.district_id = 13 AND T1.district_id = 12 GROUP BY gender HAVING count(*) > 1
SELECT count(*) , gender , sum(if(requests_for_weekly_statements , 1 , 0 )) / count(*) FROM client GROUP BY gender
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = "statement of weekly issuance" AND T2.gender = "owner"
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 INTERSECT SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 AND T1.date < '1997' ORDER BY T2.amount LIMIT 1
SELECT account_id FROM client WHERE gender = 'F' ORDER BY birth_date LIMIT 1
SELECT count(*) FROM client WHERE birth_date = "1920" AND district_id IN (SELECT district_id FROM district WHERE A2 = "east Bohemia")
SELECT count(DISTINCT account_id) FROM loan WHERE duration = 24 AND payments = 'pre'
SELECT avg(amount) FROM loan WHERE status = 'On running contract' AND date > (SELECT max(date) FROM trans)
SELECT client_id , district_id FROM client WHERE district_id IN (SELECT T1.client_id , T1.district_id FROM client AS T1 JOIN order AS T2 ON T1.client_id = T2.account_to WHERE T2.type = 'permanent' UNION SELECT T1.client_id , T1.district_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'approved')
SELECT T1.client_id , T1.birth_date FROM client AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'high' AND T1.gender = 'male' AND T2.issued = 'yes'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element = 'Cl' AND molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'not' )
SELECT avg( atom.count( 'o' )) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T2.molecule_id
SELECT avg(count(*) , molecule_id) FROM bond GROUP BY molecule_id
SELECT count(*) FROM atom WHERE element = 'Sodium' AND molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'Carcinogen' )
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple bond" INTERSECT SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "carcinogenic"
SELECT count(*) / (SELECT sum(molecule_id) FROM bond) FROM bond WHERE bond_type = 'double'
SELECT count(*) FROM bond WHERE bond_type = 'triplet'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id <= 100 AND label = 'carcinogenic'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'carbon'
SELECT element FROM atom WHERE molecule_id IN (SELECT bond_id FROM bond WHERE bond_type = "TR004_8_9")
SELECT element FROM bond WHERE bond_type = "double"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = 'chlorine'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.label != 'carcinogenic'
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id = (SELECT atom_id FROM connected WHERE atom_id = 1004_8) AND molecule_id = (SELECT atom_id FROM connected WHERE atom_id = 1004_20)
SELECT label FROM molecule EXCEPT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'tin'
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'iodine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'sulfur'
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = (SELECT bond_id FROM bond WHERE bond_type = "triple")
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id2 = T1.atom_id AND T1.molecule_id = 181
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic' AND T2.element != 'fluorine'
SELECT count(*) * 100.0 / (SELECT count(*) FROM bond WHERE bond_type = 'triple' ) FROM molecule
SELECT element FROM atom WHERE molecule_id = 1000 AND label = "TR000" ORDER BY element
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "bond" AND T3.molecule_id = 1001 AND T2.atom_id2 = 6 AND T2.atom_id = 2
SELECT count(*) - count(*) FROM molecule WHERE label = 'carcinogenic' DIFFERENT FROM molecule WHERE label = 'non-carcinogenic'
SELECT bond_type FROM bond WHERE bond_id = 2 AND bond_type = "TR000_2_5"
SELECT bond_id FROM connected WHERE atom_id = 2 AND atom_id2 = 2
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 5
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.bond_type = "double" AND T2.molecule_id = 1008
SELECT count(*) FROM atom WHERE element = 'carcinogenic'
SELECT count(*) * 100 / (SELECT sum(element) FROM atom WHERE molecule_id = 206) FROM atom WHERE element = 'H'
SELECT bond_type FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR000'
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 36060
SELECT bond_type FROM bond WHERE molecule_id = 100237 INTERSECT SELECT bond_type FROM bond WHERE molecule_id = 100237 AND label = "TR010"
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE bond_type = 'single' EXCEPT SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE bond_type = 'carcinogenic' GROUP BY T1.molecule_id ORDER BY label DESC LIMIT 3
SELECT bond_type FROM bond WHERE molecule_id = 291 ORDER BY bond_type
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.molecule_id = 1009 AND T1.bond_type = 'bond'
SELECT count(*) FROM atom WHERE element = 'br' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT bond_type , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_id = 6 AND T3.molecule_id = 9 AND T3.bond_type = "TR001_6_9"
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 1001 AND T2.element = "TR001_10"
SELECT count(*) FROM bond WHERE bond_type = "triple"
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = 19
SELECT element FROM atom WHERE molecule_id = 1004 AND label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "carbon" AND T2.atom_id = 21 UNION SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "carbon" AND T2.atom_id = 22 UNION SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "carbon" AND T2.atom_id = 23 UNION SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "carbon" AND T2.atom_id = 24 UNION SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "carbon" AND T2.atom_id = 25
SELECT bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'phosphorus' INTERSECT SELECT bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'nitrogen'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.bond_id) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'iodine'
SELECT bond_type , bond_id FROM bond WHERE bond_id = 45
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = "TR041" AND T2.bond_type = "triple bond"
SELECT element FROM atom WHERE molecule_id = 144 AND element_id = 8 AND element_id = 19
SELECT molecule_id FROM bond GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id2 = (SELECT atom_id FROM atom WHERE element = 'lead')
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "bond"
SELECT count(*) FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id GROUP BY T1.bond_id HAVING COUNT(*) = (SELECT count(*) FROM bond GROUP BY bond_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM bond WHERE bond_type = 'single' AND element = 'carcinogenic'
SELECT sum(atom_id) FROM atom WHERE element = 'carbon' OR element = 'hydrogen'
SELECT atom_id2 FROM atom WHERE element = 'S'
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'Tin'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT sum(atom.count) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'P' OR T1.element = 'Br'
SELECT bond_id FROM bond WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT T1.element , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "single" GROUP BY T1.element HAVING count(*) = 1
SELECT label FROM molecule WHERE molecule_id = 3 AND molecule_id = 4 AND molecule_id = 5
SELECT molecule_id FROM molecule WHERE label != 'carcinogenic'
SELECT sum(molecule_id) FROM atom WHERE molecule_id BETWEEN 000 AND 030
SELECT bond_type FROM bond WHERE molecule_id BETWEEN 100 AND 150
SELECT element FROM atom WHERE bond_id = 10_11 AND bond_id = 10_11
SELECT count(*) FROM atom WHERE element = 'iodine'
SELECT count(*) , label FROM atom WHERE element = 'Calcium' GROUP BY label HAVING count(*) > 2
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Cl' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'C'
SELECT molecule_id FROM atom WHERE element = 'carbon' INTERSECT SELECT molecule_id FROM bond WHERE bond_type = 'triple' EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'C' AND label = 'carcinogenic') )
SELECT DISTINCT element FROM atom WHERE molecule_id = 1001
SELECT molecule_id FROM bond WHERE bond_type = "double"
SELECT T1.atom_id , T2.atom_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = "triple bond"
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_id = 1 AND bond_type = "TR000_1_2")
SELECT count(*) FROM bond WHERE bond_type = 'single' AND NOT (SELECT count(*) FROM bond WHERE bond_type = 'carcinogenic' )
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_id = "TR001_10_11"
SELECT bond_id FROM bond WHERE bond_type = "triple" UNION SELECT bond_id FROM bond WHERE bond_type = "carcinogenic"
SELECT count(*) , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'toxic' AND T2.atom_id = 4 AND T1.label = 4 GROUP BY T1.label
SELECT T2.label , count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Hydrogen" GROUP BY T1.element
SELECT count(*) FROM atom WHERE element = 'Calcium' AND label = 'carcinogenic'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Carbon')
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR001_10_11"
SELECT count(*) FROM bond WHERE bond_type = "triple bond"
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR047' AND T1.bond_type = 'double-bond'
SELECT count(*) FROM atom WHERE element = "TR001_1" AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = "TR001_1");
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR151" AND T2.element = "carcinogenic"
SELECT element FROM atom WHERE molecule_id = 151
SELECT count(*) FROM compound WHERE carcinogenic = 'yes'
SELECT element FROM atom WHERE molecule_id BETWEEN 10 AND 50 AND element = 'carbon'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "carcinogenic compounds"
SELECT bond_id FROM bond WHERE bond_type = "double-bond" INTERSECT SELECT bond_id FROM bond WHERE bond_type = "carcinogenic"
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'hydrogen' AND T2.label = 'carcinogenic'
SELECT T1.molecule_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR000_1_2" AND T1.element = "TR000_1"
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'carcinogenic'
SELECT count(*) , percentage FROM atom WHERE element = 'H' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Carcinogen' )
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR124"
SELECT element FROM atom WHERE molecule_id = 186
SELECT bond_type FROM bond WHERE molecule_id = 4 AND bond_id = 19
SELECT element FROM atom WHERE molecule_id IN (SELECT bond_id FROM bond WHERE bond_type = "TR001_2_4")
SELECT count(*) , bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T1.bond_id = T3.bond_id WHERE T3.atom_id = 1006 AND T1.bond_type = "double" INTERSECT SELECT count(*) , bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN connected AS T3 ON T1.bond_id = T3.bond_id WHERE T3.atom_id = 1006 AND T1.bond_type = "carcinogenic"
SELECT molecule_id , element FROM atom WHERE element = 'carcinogenic'
SELECT bond_type , T1.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY bond_type HAVING count(*) = 1
SELECT T1.molecule_id , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple bond"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR000_2_3"
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'Cl'
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double bond" INTERSECT SELECT count(*) , label FROM molecule WHERE label = "carcinogenic compound"
SELECT count(*) FROM atom WHERE element != 'sulphur' AND bond_type != 'double'
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "carcinogenic" AND T1.bond_id = 2 AND T1.molecule_id = 4
SELECT count(*) FROM atom WHERE molecule_id = 1001
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" AND T2.label = (SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" AND T2.label = "carcinogenic")
SELECT molecule FROM atom WHERE element = 'c' EXCEPT SELECT molecule FROM atom WHERE element = 'carcinogenic'
SELECT count(*) / (SELECT sum(molecule_id) FROM atom WHERE element = 'Chlorine') FROM atom
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(*) FROM bond WHERE bond_id = "TR001_3_4"
SELECT bond_type FROM bond WHERE bond_id IN (SELECT bond_id FROM connected WHERE atom_id = 1 AND atom_id2 = 2)
SELECT molecule_id FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule_id FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT FROM molecule WHERE label = 'TR000' AND molecule_id = (SELECT molecule_id FROM atom WHERE element = 'carcinogen' )
SELECT count(*) , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T1.element HAVING count(*) = 1
SELECT count(*) FROM atom WHERE element = 'N'
SELECT molecule FROM atom WHERE element = 'S' AND bond_type = 'double'
SELECT molecule_id , label FROM atom GROUP BY molecule_id HAVING sum(element) > 5
SELECT element FROM atom WHERE molecule_id = 1024 AND bond_type = "double"
SELECT molecule FROM atom GROUP BY molecule ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.bond_type = "triple bonded" AND T2.element = "H" GROUP BY T1.label HAVING count(*) >= 3
SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label BETWEEN "TR004" AND "TR010" AND T2.bond_type = "single"
SELECT count(*) FROM atom WHERE molecule_id = 1008
SELECT element FROM atom WHERE atom_id = 407 AND molecule_id NOT IN (SELECT molecule_id FROM atom WHERE atom_id = 407 AND element = "carcinogen")
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T1.element = "O"
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple bond" EXCEPT SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple bond" AND T2.label = "carcinogenic"
SELECT element , bond_type FROM bond WHERE molecule_id = 2006
SELECT atom.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'double' AND T2.bond_type = 'bond' AND T1.molecule_id = 12
SELECT atom_id FROM atom WHERE element = 'o' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'o')
SELECT name FROM cards WHERE power = 'incredibly powerful'
SELECT id FROM cards WHERE hasNonFoil = 1 AND cardKingdomFoilId = "null"
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE frameeffects = "2015" AND edhrecrank < 100
SELECT DISTINCT T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "gladiator" AND T1.rarity = "mythic"
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = "cards" AND T2.hasAlternativeDeckLimit = 0
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" AND T1.power = "unknown"
SELECT T1.flavorText , T2.status FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Stephen Daniel" AND T1.flavorText = "Ruling"
SELECT T1.date , T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = 74
SELECT T1.name , T1.artist , T1.isPromo FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.uuid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.number = 29 AND T1.name = "Annul"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) FROM cards WHERE availability = 'Chinese Simplified'
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Italian" GROUP BY T1.name
SELECT count(DISTINCT cardKingdomFoilId) FROM cards WHERE artist = "Aaron Boyd" AND originalType = "card art";
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = "infinity";
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen"
SELECT originalType FROM cards WHERE originalText = "Ancestor's Chosen"
SELECT T3.language FROM cards AS T1 JOIN sets AS T2 ON T1.uuid = T2.code JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T1.faceName = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" AND T1.flavorText != ""
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.asciiName = "Condemn"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.id WHERE T1.status = "restricted" AND T2.isStarter = 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE asciiName = "Benalish Knight";
SELECT DISTINCT T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.asciiName = "Benalish Knight"
SELECT DISTINCT T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.flavortext = "Phyrexian"
SELECT count(*) / (SELECT count(*) FROM cards) FROM cards WHERE isTextless = 'borderless'
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "de" AND T1.isReprint = 1
SELECT count(*) FROM cards WHERE isTextless = 'borderless' AND language = 'Russian'
SELECT count(*) * (SELECT count(*) FROM foreign_data WHERE language = 'French') / (SELECT count(*) FROM cards WHERE isStorySpotlight = 1) FROM cards WHERE isStorySpotlight = 1
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = "Aaron Boyd"
{"sql": "SELECT count(*) FROM cards WHERE borderColor = \"black\" AND mtgoId NOT IN (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId = (SELECT mtgoId FROM cards WHERE borderColor = \"black\" AND mtgoId
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT id FROM cards WHERE power = 'incredibly powerful' AND hasNonFoil = 'yes'
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "simplified chinese"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.availability = "paper" AND T2.flavorText = "Japanese"
SELECT count(*) FROM cards WHERE borderColor = "white" AND colorIdentity = "card"
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = 'legacy'
SELECT text FROM rulings WHERE id IN (SELECT uuid FROM cards WHERE cardKingdomFoilId = "Beacon of Immortality");
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid GROUP BY T1.uuid HAVING T1.frameVersion > '2023-01-01'
SELECT colorIdentity FROM cards WHERE setCode = "OWG"
SELECT T1.translation , T2.language FROM set_translations AS T1 JOIN foreign_data AS T2 ON T1.setcode = T2.setcode WHERE T1.setcode = "10E" AND T2.language = "english" AND T1.convertedmanaCost = 5
SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = "Elf"
SELECT colorIdentity , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T1.colorIdentity = "Black" AND T2.language = "French"
SELECT T1.name FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid ORDER BY T2.date ASC LIMIT 3
SELECT count(*) FROM cards WHERE hasNonFoil = 'false' AND power = 'non-powerful' AND artist = "John Avon"
SELECT count(*) FROM cards WHERE colorIndicator = "white" AND power = "yes"
SELECT count(*) FROM cards WHERE artist = "UDON" AND printings = "mtgo" AND originaltype = "starter" AND hasAlternativeDeckLimit = -1
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND hasContentWarning = 1 AND availability = "paper"
SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "black" AND availability = "paper" AND availability = "mtgo"
SELECT sum(convertedManaCost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT TYPE FROM cards
SELECT setCode FROM set_translations WHERE language = "es"
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 1 AND frameEffects = "Legendary") FROM cards WHERE isOnlineOnly = 1
SELECT id FROM cards WHERE isStorySpotlight = 'yes' AND hasTextless = 'no'
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Spanish" ORDER BY T1.name
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T2.setcode IN (SELECT id FROM cards WHERE number = 309)
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T3.uuid = T2.setcode WHERE T3.flavortext = "br" AND T3.language = "português" AND T1.block = "commander"
SELECT T1.id , T1.type FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT DISTINCT TYPE FROM cards WHERE language = "de"
SELECT count(*) FROM cards WHERE power = 'unknown' AND flavorText = 'triggered'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.flavorText = "This is a triggered mana ability." AND T1.format = "pre-modern" EXCEPT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.flavorText = "This is a triggered mana ability." AND T1.format = "pre-modern" GROUP BY T1.uuid HAVING count(*) > 1
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper" AND format = "pauper";
SELECT artist FROM cards WHERE text = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "French" AND T2.type = "Creature" AND T2.borderColor = "black" AND T2.layout = "normal" AND T2.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.printing = '01/02/2007' AND T2.text = '01/02/2007'
SELECT T1.language FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.block = "Ravnica" AND T1.setcode = 180
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" AND T2.status = "legal" EXCEPT SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" AND T2.status = "legal" AND T1.hasContentWarning = 1
SELECT count(*) / (SELECT count(*) FROM cards WHERE power = 'false') * 100 FROM foreign_data WHERE language = 'French'
SELECT count(*) , T1.language FROM set_translations AS T1 JOIN languages AS T2 ON T1.language = T2.language WHERE T2.name = "Japanese" GROUP BY T1.language HAVING count(*) = 1
SELECT printings FROM cards WHERE artist = "Daren Bader";
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor = "none"
SELECT count(*) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1;
SELECT DISTINCT power FROM cards WHERE promoTypes = "Promotion" AND mtgArenaId = "MTG:LEAGUE" ORDER BY power ASC LIMIT 3
SELECT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId ASC LIMIT 3
SELECT count(*) FROM cards WHERE isTextless = 'no'
SELECT cardId FROM cards WHERE subtypes = "Angel" AND supertypes = "Wizard" EXCEPT SELECT cardId FROM cards WHERE count(*) > 1
SELECT name FROM sets WHERE isonlineonly != 'isonlineonly' AND isnonfoilonly != 'isnonfoilonly' ORDER BY name
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = "Archenemy" AND T2.setcode = "ARC"
SELECT T1.name , T2.translation FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.number = 5
SELECT T2.language , T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.number = 206
SELECT T1.id , T2.setCode FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN foreign_data AS T3 ON T3.uuid = T1.uuid WHERE T3.language = 'Italian' AND T2.block = "Shadowmoor" ORDER BY T2.setCode LIMIT 2
SELECT setid FROM cards WHERE hasfoil = 1 AND flavorText = "foil" AND flavorText FROM foreign_data WHERE language = "Japanese"
SELECT T1.name FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Chinese Simplified" AND T1.isOnlineOnly = 1
SELECT count(*) FROM sets WHERE isNonFoilOnly = 1 OR isOnlineOnly = 0 AND language = "Japanese"
SELECT id FROM cards WHERE colorIndicator = "black"
SELECT id FROM cards WHERE frameEffects = "extendedart"
SELECT id FROM cards WHERE isFullArt = 1 AND colorIdentity = "black";
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.id = 174
SELECT name FROM sets WHERE setcode = "ALL"
SELECT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "A Pedra Fellwar"
SELECT code FROM sets WHERE releaseDate = "07/13/2007";
SELECT baseSetSize , code FROM sets WHERE block = "Masques" INTERSECT SELECT baseSetSize , code FROM sets WHERE block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT T2.flavorText , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'boros'
SELECT T1.language , T1.flavorText , T2.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colorIdentity = "colorpie"
SELECT count(*) , convertedManaCost FROM cards WHERE convertedManaCost = 10 AND setCode = "Abyssal Horror" GROUP BY convertedManaCost HAVING count(*) > 1
SELECT code FROM sets WHERE TYPE = "Expansion Commander"
SELECT T2.flavorText , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = "abzan"
SELECT T2.language , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'azorius'
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Aaron Miller" AND T1.power = "incredibly powerful"
SELECT count(*) FROM cards WHERE hand > 0 AND availability = 'paper'
SELECT name FROM cards WHERE hasContentWarning = 'no' AND originalText LIKE '%text%'
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT faceName FROM cards WHERE isPromo = 'yes' GROUP BY faceName HAVING count(*) > 1
SELECT DISTINCT TYPE FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(*) FROM cards WHERE borderColor = "black" AND availability = "available" AND printings = "mtgo" INTERSECT SELECT count(*) FROM cards WHERE borderColor = "black" AND availability = "available" AND printings = "arena"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper"
SELECT artist FROM cards WHERE promoTypes = "Promo" AND faceName = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE frameVersion = "2003" ORDER BY convertedManaCost DESC LIMIT 3;
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T1.asciiName = "Ancestor's Chosen" AND T2.language = "Italian"
SELECT count(*) FROM set_translations AS T1 JOIN cards AS T2 ON T1.setcode = T2.id WHERE T2.name = "Angel of Mercy"
SELECT name FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode JOIN foreign_data AS T3 ON T3.uuid = T1.uuid WHERE T1.asciiName = "Ancestor's Chosen" AND T2.flavorText = "Korean"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentcode WHERE T2.name = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "approved" AND T1.artist = "Adam Rex"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T2.name = "Hauptset Zehnte Edition"
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Eighth Edition" AND T1.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T1.name = "Angel of Mercy" AND T2.isOnlineOnly = 1
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId WHERE T2.name = "Ancestor's Chosen"
SELECT T2.expansion FROM sets AS T1 JOIN translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT count(*) FROM cards WHERE availability = 'isOnlineOnly' AND setCode = "Adarkar Valkyrie" AND isForeignOnly = 1
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T2.language = 'Italian' AND T3.baseSetSize < 100
SELECT count(*) FROM cards WHERE setCode = "Coldsnap" AND borderColor = "black"
SELECT name FROM cards WHERE setcode = "Coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT DISTINCT artist FROM cards WHERE setcode = "Coldsnap" INTERSECT SELECT DISTINCT artist FROM cards WHERE setcode = "Jeremy Jarvis" INTERSECT SELECT DISTINCT artist FROM cards WHERE setcode = "Aaron Miller" INTERSECT SELECT DISTINCT artist FROM cards WHERE setcode = "Chippy"
SELECT number FROM cards WHERE setcode = "Coldsnap" AND number = 4
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power = "unknown"
SELECT flavorText FROM cards WHERE flavorName = "Ancestor's Chosen" AND language = "Italian"
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.flavorText = "Ancestor's Chosen"
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.name = "Ancestor's Chosen" AND T2.language = "de"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.setcode = "Coldsnap" AND T1.language = "Italian"
SELECT T2.asciiName FROM sets AS T1 JOIN cardTranslations AS T2 ON T1.code = T2.setcode WHERE T1.code = "Coldsnap" AND T2.language = "Italian" ORDER BY T2.convertedManaCost DESC LIMIT 1
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT count(*) FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap"
SELECT count(*) * (rarity) FROM cards WHERE setcode = "Coldsnap" AND power = "incredibly powerful"
SELECT code FROM sets WHERE releaseDate = "2017/7/14";
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = "2017/6/9"
SELECT expansionType FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T2.name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setcode WHERE T2.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentcode WHERE T2.name = "Rinascita di Alara"
SELECT T1.promoTypes FROM sets AS T1 JOIN foreign_data AS T2 ON T1.code = T2.cardKingdomId WHERE T1.name = "Huitième édition"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN sets AS T2 ON T1.name = T2.parentCode WHERE T1.language = "French" AND T2.name = "Tendo Ice Bridge"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Tenth Edition"
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode WHERE T1.name = "Fellwar Stone" AND T2.language = "Japanese"
SELECT name FROM cards WHERE setcode = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T1.flavorText = "Ola de frío"
SELECT T1.expansionType FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.parentCode WHERE T2.name = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE convertedManaCost = '3' AND setCode = "World Championship Decks 2004"
SELECT T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Mirrodin" AND T2.language = "simplified"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T2.language = "Japanese" AND T1.hasNonFoil = 1
SELECT count(*) , isOnlineOnly FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id JOIN set_translations AS T3 ON T1.setcode = T3.setcode WHERE T3.language = "Portuguese" AND T3.setcode = (SELECT setcode FROM sets WHERE name = "Brazil") GROUP BY isOnlineOnly
SELECT printings FROM cards WHERE id NOT IN (SELECT id FROM cards WHERE text = 'Aleksi Briclot' )
SELECT id FROM sets ORDER BY totalSetSize DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE power = "incredibly powerful" GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = "unknown" AND isNonFoil = false AND duelDeck = 1
SELECT id FROM sets WHERE TYPE = "Commander" INTERSECT SELECT count(*) FROM cards WHERE promoTypes = "Promo" UNION SELECT count(*) FROM cards WHERE promoTypes = "Related" EXCEPT SELECT count(*) FROM cards WHERE promoTypes = "Alchemy"
SELECT asciiName FROM cards ORDER BY convertedManaCost DESC LIMIT 10;
SELECT max(originalReleaseDate) , format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE originalType = "mythic" GROUP BY format ORDER BY max(originalReleaseDate) LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.artist = "Volkan Baçım" AND T2.language = "French"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "rare" AND T2.status = "legal" AND T1.isLegalOnly = 0
SELECT format , name FROM legalities WHERE status = 'banned' GROUP BY format ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.setcode = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.id WHERE T3.name = "Battlebond"
SELECT T1.artist , T1.faceName FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'L' GROUP BY T1.artist ORDER BY count(*) ASC LIMIT 1
SELECT T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = 1997 AND T1.flavorText = "Wizards of the Coast" AND T1.flavorText = "Sensitive Content"
SELECT name , format FROM cards WHERE edhrecRank = 1 AND isFoilOnly = 0
SELECT avg(totalSetSize) FROM sets WHERE releaseDate BETWEEN '01/01/2012' AND '12/31/2015'
SELECT artist FROM cards WHERE borderColor = "black" AND isOnlineOnly = 1 AND cardKingdomId = 1
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "old school" OR T2.status = "banned"
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND availability = "paper"
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T1.setid WHERE T3.name = "Hour of Devastation"
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = 'japanese') AND translation = 'korean'
SELECT DISTINCT T1.frameEffects , T2.asciiName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'banned' INTERSECT SELECT DISTINCT T1.frameEffects , T2.asciiName FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'active' AND T1.artist = 'Allen Williams'
SELECT DisplayName FROM users WHERE Reputation > (SELECT Reputation FROM users WHERE DisplayName = "Jarrod Dixon")
SELECT T2.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.CreationDate = 2011
SELECT count(*) FROM users WHERE lastaccessdate > "2014/9/1"
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.user_id WHERE T2.upvotes > 100 AND T2.downvotes > 100
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.user_id WHERE T2.creationdate > 2013 AND T1.views > 10
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "csgillespie"
SELECT title FROM posts WHERE owneruserid = 95655 AND owneruserid = 'csgillespie'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Body = "Eliciting priors from experts"
SELECT title FROM posts WHERE owner_userid = (SELECT id FROM users WHERE displayname = 'Csgillispie' ) ORDER BY viewcount DESC LIMIT 1
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.Score DESC LIMIT 1
SELECT sum(commentcount) FROM posts WHERE owneruserid = (SELECT id FROM users WHERE displayname = "Csgillespie")
SELECT AnswerCount FROM posts WHERE OWNERUserId = "Csgillespie" GROUP BY AnswerCount ORDER BY AnswerCount DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.ParentId WHERE T1.OwnerUserId = (SELECT id FROM users WHERE displayname = "Csgillispie") AND T1.PostTypeId = 1
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Body LIKE "%well-finished%"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.age > 19 AND T1.score > 19
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Csgillespie"
SELECT T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Csgillespie"
SELECT count(*) FROM badges WHERE name = 'Csgillespie' AND creationdate = 2011
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T1.Score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Id = 1039613
SELECT avg(T1.Id) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views > 200
SELECT count(*) , T1.age FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.score > 5 GROUP BY T1.id HAVING avg(T1.age) > 30
SELECT T2.VoteAmount FROM users AS T1 JOIN votes AS T2 ON T1.ID = T2.UserId WHERE T1.ID = 58 AND T2.CreationDate = "2010/7/19"
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival";
SELECT t1.title FROM posts AS t1 JOIN comments AS t2 ON t1.id = t2.postid ORDER BY t2.score DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE UserId = 3025 AND CreationDate = "2014/4/23");
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ParentId = 107829
SELECT T1.Title FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T2.Comment = "well-finished" AND T2.CommentDate = "2013/7/12 9:08:18" AND T2.UserId = 23853
SELECT T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Id = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Tiago Pasqualini"
SELECT T2.DisplayName FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.VoteTypeId = 1 AND T1.Id = 6347
SELECT sum(T2.VoteAmount) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.postid = (SELECT id FROM posts WHERE title = "data visualization")
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Displayname = "DatEpicCoderGuyWhoPrograms"
SELECT T1.ViewCount - T2.DownVotes FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T1.owneruserid = 24
SELECT ViewCount FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion.'
SELECT T1.OwnerUserId , T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing?'
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost?'
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Necromancer" GROUP BY T1.Id HAVING COUNT(*) = 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT DISTINCT T1.Title FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.Displayname = "Vebjorn Ljosa"
SELECT sum(T1.Score) , T2.WebsiteUrl FROM posts AS T1 JOIN users AS T2 ON T1.LastEditorUserId = T2.Id GROUP BY T2.Id
SELECT T2.Text FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Why square the difference instead of taking the absolute value in standard deviation' AND T2.UserId = (SELECT UserId FROM posts WHERE Title = 'Why square the difference instead of taking the absolute value in standard deviation' )
SELECT sum(bountyamount) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = 'data'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = 50 AND T2.PostId IN (SELECT PostId FROM posts WHERE Title LIKE "%variance%" )
SELECT T1.Title , T1.CommentCount , T1.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.Tags = T2.Id WHERE T2.TagName = "Humor" GROUP BY T1.Tags HAVING COUNT(*) > 1
SELECT count(*) FROM comments WHERE UserId = 13
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount ASC LIMIT 1
SELECT count(DISTINCT T1.UserId) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = 2011
SELECT count(DISTINCT T1.UserId) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name > 5
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = "New York" AND T2.name = "Teacher" INTERSECT SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = "New York" AND T2.name = "Supporter"
SELECT T2.Reputation , T1.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 1
SELECT T1.UserId FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userid JOIN posts AS T3 ON T2.postid = T3.id GROUP BY T1.id HAVING count(*) = 1 AND T3.ViewCount >= 1000
SELECT T1.UserId , T1.Name FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "India"
SELECT Date , (COUNT(*) - COUNT(*) / Date) FROM badges WHERE Date = "2010" UNION SELECT Date , (COUNT(*) - COUNT(*) / Date) FROM badges WHERE Date = "2011"
SELECT postHistoryTypeId , count(DISTINCT UserId) FROM postHistory AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 3720 GROUP BY T1.PostId
SELECT T1.Title , T1.Score FROM posts AS T1 JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T2.RelatedPostId = 61217 GROUP BY T1.Id ORDER BY T1.Score DESC LIMIT 1;
SELECT T2.Score , T1.LinkTypeId FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Postid = 395
SELECT PostId , OWNERUSERID FROM posts WHERE Score > 60
SELECT sum(favoritecount) FROM posts WHERE createddate LIKE "2011%" AND userid = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE upvotes > 10
SELECT count(DISTINCT UserId) FROM badges WHERE Name = "Announcer"
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.creationdate = "07/19/2010 7:39:08:PM"
SELECT count(*) FROM comments WHERE score > 0;
SELECT Text FROM comments WHERE CreationDate = "7/19/2010 7:25:47 PM"
SELECT count(*) FROM posts WHERE score = 10
SELECT T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date LIKE "07/19/2010 19:39:08"
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "Pierre"
SELECT T2.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester, NY"
SELECT count(*) , T1.UserId FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Teacher" GROUP BY T1.UserId HAVING count(*) > 1
SELECT count(*) , avg(age) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = "Organizer" GROUP BY T1.id HAVING avg(age) < 18
SELECT max(Score) FROM comments WHERE CreationDate = "2010-07-19 19:56:56"
SELECT Text FROM comments WHERE CreationDate LIKE "7/19/2010 7:37:33:PM";
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna, Austria"
SELECT count(*) FROM badges WHERE name = 'Supporter' AND UserId = (SELECT UserId FROM badges WHERE name = 'Supporter' )
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = "07/19/2010 19:39:08"
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation LIMIT 1
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "Sharpie"
SELECT count(*) FROM badges WHERE name = "Supporter" AND UserId = (SELECT Id FROM users WHERE Age >= 60);
SELECT DisplayName FROM users WHERE Id = 30;
SELECT count(*) FROM users WHERE LOCATION = "New York"
SELECT count(*) FROM votes WHERE creationdate LIKE "2010%";
SELECT count(*) FROM users WHERE Age > 25;
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT COUNT(*) , YEAR FROM votes WHERE YEAR = 2010 UNION SELECT COUNT(*) , YEAR FROM votes WHERE YEAR = 2011
SELECT T2.TagName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Daniel Vassallo"
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Harlan"
SELECT PostId FROM posts WHERE OwnerDisplayName = "Slashnick" ORDER BY AnswerCount DESC LIMIT 1
SELECT max(ViewCount) FROM posts WHERE OWNERUSERID = (SELECT id FROM users WHERE displayname = "Harvey Motulsky") INTERSECT SELECT max(ViewCount) FROM posts WHERE OWNERUSERID = (SELECT id FROM users WHERE displayname = "Noah Snyder")
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T1.UserId = T3.Id WHERE T3.DisplayName = "Matt Parker" AND T2.ViewCount > 4;
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.OwnerUserId = (SELECT id FROM users WHERE displayname = "Neil McGuigan") AND T1.Score < 0
SELECT DISTINCT tags FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Mark Meckes" EXCEPT SELECT DISTINCT T1.tags FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Organizer"
SELECT count(*) , percentage FROM (SELECT T1.PostId , T2.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation = 10 AND T1.PostTypeId = 1 AND T1.Body LIKE "%R%" ) GROUP BY T1.PostId HAVING count(*) > 100
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Mornington" INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Amos"
SELECT count(DISTINCT userid) FROM badges WHERE date = 2014
SELECT count(*) FROM posts WHERE creationdate LIKE "21/%" AND creationdate LIKE "2010/%"
SELECT DisplayName , Age FROM users ORDER BY Views DESC LIMIT 1
SELECT lasteditdate , lastedituserid FROM posts WHERE title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text < 0;
SELECT T1.Title , T2.UserDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score > 0
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "North Pole" AND T1.Date = 2011
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE FavoriteCount > 150
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Outliers"
SELECT T2.title FROM postHistory AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.text = "How to tell if something happened in a data set which monitors a value over time"
SELECT T2.Id , T2.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Displayname = "Samuel" AND T1.Date = 2013
SELECT ownerdisplayName FROM posts ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN tags AS T2 ON T2.ExcerptPostId = T3.Id JOIN posts AS T3 ON T3.Id = T2.ExcerptPostId WHERE T3.Tags[0] = "hypothesis-testing"
SELECT T2.Title , T1.LinkTypeId FROM postLinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T2.Title = "What are principal component scores?"
SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.ParentId ORDER BY T2.Score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5;
SELECT count(*) FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T2.ViewCount BETWEEN 5000 AND 7000
SELECT OWNERUSERID FROM posts ORDER BY Score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.creationdate = 2011 AND T1.bountyamount = 50
SELECT id FROM users ORDER BY creationdate LIMIT 1
SELECT sum(Score) FROM posts WHERE CreationDate = "2010-07-19";
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.AnswerCount <= 2 AND T1.CreationDate = 2010
SELECT postid FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.userid = 1465 GROUP BY T1.postid ORDER BY sum(T1.bountyamount) DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 JOIN postLinks AS T2 ON T1.Id = T2.PostId ORDER BY T2.CreationDate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId ORDER BY T2.Name DESC LIMIT 1
{"sql": "SELECT T2.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = (SELECT UserId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM votes WHERE VoteTypeId = 1 AND T1.PostId = (SELECT PostId FROM
SELECT creationdate FROM users AS T1 JOIN postHistory AS T2 ON T1.id = T2.userid ORDER BY T1.age LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Autobiographer" ORDER BY T2.Date LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.userid WHERE T1.location = "United Kingdom" AND T2.favoritecount >= 4
SELECT avg(upvotes) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.age = (SELECT max(age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age > 30
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Jay Stevens" AND T1.creaiondate LIKE "2010%";
SELECT postid , title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Harvey Motulsky" ORDER BY viewcount DESC LIMIT 1
SELECT PostId , Title FROM posts ORDER BY Score DESC LIMIT 1
SELECT avg(Score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Stephen Turner"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.UserId = T2.OwnerUserId WHERE T2.ViewCount > 20000 AND T2.CreaionDate = 2011
SELECT PostId , OwnerDisplayName FROM posts WHERE CreaionDate LIKE "2010%" ORDER BY Score DESC LIMIT 1
SELECT count(*) , T1.reputation FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 1000 AND T2.creaiondate = 2011 GROUP BY T2.owneruserid HAVING count(*) > 1
SELECT sum(views) / sum(views + 1) FROM users WHERE age < 18
SELECT T1.ViewCount , T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Computer Game Datasets' ORDER BY T2.LastAccessDate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM posts)
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T1.Displayname , T1.Location FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.PostId = 183 ORDER BY T2.LastEditDate DESC LIMIT 1
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Displayname = "Emmett" ORDER BY T1.Date DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.age > 18 AND T2.upvotes > 5000
SELECT T2.LastAccessDate - T1.CreationDate FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Displayname = 'Zolomon'
SELECT count(*) , commentcount FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid WHERE T3.accountid = (SELECT accountid FROM users ORDER BY creationdate DESC LIMIT 1)
SELECT T2.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T3.Id = T1.PostId WHERE T3.Title = 'Analysing wind data with R' ORDER BY T1.creationdate DESC LIMIT 10;
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.TagName = "careers"
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT commentcount , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT count(*) , T1.Score FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation > 50 GROUP BY T1.OwnerUserId ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20;
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "fine, you win :)"
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Linear Regression"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount BETWEEN 100 AND 150 ORDER BY T1.Score DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.UserId = (SELECT UserId FROM comments WHERE CreationDate = '2023-04-03' )
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.score = 0 AND T2.viewcount < 5
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CommentCount = 1 AND T1.Score = 0
SELECT count(DISTINCT T1.UserId) FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.score = 0 AND T1.age = 40
SELECT T1.PostId , COUNT(*) FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = "Group differences on a five point Likert item" GROUP BY T1.PostId
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT T2.Text FROM users AS T1 JOIN comments AS T2 ON T1.ID = T2.UserID WHERE T1.Displayname = "Harvey Motulsky"
SELECT T2.UserDisplayName FROM votes AS T1 JOIN comments AS T2 ON T1.PostId = T2.id WHERE T1.DownVotes BETWEEN 1 AND 5
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score BETWEEN 5 AND 10 AND T2.upvotes = 0
SELECT power_name FROM superpower WHERE power_name LIKE '%3-D%' AND power_name != '' GROUP BY power_name HAVING count(*) = 3
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = "Super Strength" AND T1.height_cm > 200
SELECT T1.superhero_name , T1.full_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T1.id HAVING count(*) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = 'blue')
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.eye_colour_id = (SELECT id FROM colour WHERE colour.name = "Blue") AND T1.full_name LIKE "%Agility%"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = 'blue') AND hair_colour_id = (SELECT id FROM colour WHERE colour = 'blond')
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT superhero_name FROM superhero WHERE publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics') ORDER BY height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Sauron"
SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.publisher_name = 'Marvel Comics'
SELECT count(*) FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = "DC Comics"
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = 'gold' AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id IN (SELECT T1.colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.hair_colour_id WHERE T2.gender_id = 1 AND T2.hair_colour_id = 1)
SELECT superhero_name FROM superhero ORDER BY 1 / 2 DESC LIMIT 1
SELECT race FROM superhero WHERE superhero_name = "Copycat"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "durability" AND T3.value < 50
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = "death touch"
SELECT count(*) FROM superhero WHERE gender_id = 2 AND weight_kg = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 1 AND full_name LIKE '%vampire%'
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Marvel Comics" AND T1.gender_id = 1 AND T1.superpower_id = 100
SELECT T2.publisher_name - T1.publisher_id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_id = 101 AND T1.publisher_id = 102
SELECT publisher_id FROM superhero WHERE full_name = "Star Trek."
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id
SELECT count(*) FROM superhero WHERE full_name = "null"
SELECT eye_colour_id FROM superhero WHERE id = 75
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1
SELECT superhero_name FROM superhero
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT T1.superhero_name FROM superhero AS T1 JOIN superhero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_id = 3
SELECT t3.power_name FROM hero_power AS t1 JOIN superhero AS t2 ON t1.power_id = t2.id JOIN superpower AS t3 ON t1.power_id = t3.id WHERE t2.id = 56
SELECT full_name FROM superhero WHERE gender_id = 1 AND attribute_value = "Demi-God"
SELECT count(*) FROM superhero WHERE gender_id = 1 AND full_name LIKE '%bad%'
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE gender_id = 1 AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Abomination'
SELECT T2.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.hero_id = 1
SELECT count(DISTINCT T1.hero_id) FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'stealth'
SELECT T1.full_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'strength' ORDER BY T2.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE skin_colour_id = "null"
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics";
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id JOIN publisher AS T4 ON T4.id = T1.publisher_id WHERE T4.publisher_name = "Dark Horse Comics" GROUP BY T1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT eye_colour FROM superhero WHERE full_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'flight'
SELECT T2.eye_colour_id , T2.hair_colour_id , T2.skin_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.gender_id = 1 AND T1.publisher_id = (SELECT id FROM publisher WHERE publisher_name = "Dark Horse Comics")
{"sql": "SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE alignment_id = (SELECT alignment_id FROM superhero WHERE gender_id = (SELECT gender_id
SELECT T1.group FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T3.superhero_name = "A-Bomb"
SELECT count(*) * 100 / count(*) FROM superhero WHERE gender_id = 2 AND eye_colour_id = 'blue'
SELECT full_name , race FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT gender FROM superhero WHERE hero_id = 13;
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'adaptation'
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Amazo"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id IN (SELECT id FROM colour WHERE colour = 'amber')
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT T1.eye_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.hair_colour_id WHERE T1.colour = "black") AND hair_colour_id = (SELECT T1.hair_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T1.colour = "black")
SELECT T1.eye_colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T2.skin_colour_id = 1
SELECT full_name FROM superhero WHERE gender = 'male' AND race = 'vampire'
SELECT superhero_name FROM superhero WHERE alignment_id = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1
SELECT count(DISTINCT hero_id) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute)
SELECT race , alignment FROM superhero WHERE full_name = 'Cameron Hicks'
SELECT count(*) * 100.0 / count(*) FROM superhero WHERE gender_id = 'female' AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT avg(weight_kg) FROM superhero WHERE race_id = (SELECT id FROM race WHERE race = 'Alien')
SELECT weight_kg - height_cm FROM superhero WHERE superhero_name = "Emil Blonsky" EXCEPT SELECT weight_kg - height_cm FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) , superhero_name FROM superhero GROUP BY superhero_name
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.superhero_name = "Abomination"
SELECT count(*) FROM superhero WHERE race_id IN (SELECT race FROM superhero WHERE gender_id = 1 AND race = 'god/eternal')
SELECT superhero_name FROM superhero ORDER BY height_cm LIMIT 1
SELECT count(*) FROM superhero WHERE alignment_id = 1
SELECT T2.attribute_name , T1.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.superhero_id = 1
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour_name = 'Blue') AND hair_colour_id = (SELECT id FROM colour WHERE colour_name = 'Brown')
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Hawkman" AND T1.superhero_name = "Karate Kid" AND T1.superhero_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) , T1.eye_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = "blue" GROUP BY T1.eye_colour_id HAVING count(*) >= 1
SELECT count(*) , gender_id FROM superhero WHERE gender_id = 1 / COUNT(*) , gender_id = 2
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = 'Helen Parr'
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id GROUP BY T2.race_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.alignment_id , T1.alignment , T2.power_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN superhero AS T3 ON T3.id = T2.id WHERE T3.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "blue")
SELECT avg(attribute_value) FROM hero_attribute WHERE attribute_name = 'neutral'
SELECT T2.skin_colour FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T1.attribute_value = 100
SELECT count(*) FROM superhero WHERE gender_id = 2 AND full_name LIKE '%female%'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT race FROM superhero WHERE full_name LIKE '%blue-haired%' AND gender_id = 1;
SELECT count(*) , gender_id FROM superhero WHERE gender_id = 2 GROUP BY gender_id HAVING count(*) > 1
SELECT count(*) , eye_colour_id FROM superhero WHERE weight_kg = "null" GROUP BY eye_colour_id HAVING count(*) > 1
SELECT power_name FROM superpower WHERE power_name = "Hulk"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Ajax'
SELECT count(*) FROM superhero WHERE skin_colour_id = 'green' AND race_id = (SELECT race_id FROM superhero WHERE skin_colour_id = 'green' GROUP BY race_id HAVING count(*) = 1)
SELECT count(*) FROM superhero WHERE gender_id = 2 AND publisher_id = 100000 AND race_id = 1 AND publisher_name = "Marvel Comics"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = hero_power.id JOIN attribute AS t3 ON t2.power_id = t3.id WHERE t3.attribute_name = 'wind' ORDER BY t1.superhero_name
SELECT T2.gender FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T1.power_name = "Phoenix Force"
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE superhero_name LIKE '%non-human%' AND publisher_id IN (SELECT id FROM superhero WHERE superhero_name = 'Dark Horse Comics' )
SELECT count(*) FROM superhero WHERE speed = '1'
SELECT count(*) FROM superhero WHERE publisher_id = 'DC' DIFFERENCE FROM superhero WHERE publisher_id = 'Marvel Comics'
SELECT attribute_name FROM attribute WHERE attribute_name = 'Weak' AND id IN (SELECT T1.id FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.attribute_id = T2.id WHERE T2.superhero_name = 'Black Panther')
SELECT eye_colour FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) , gender_id , avg(gender) FROM superhero WHERE gender_id = 2 AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = "George Lucas") GROUP BY gender_id
SELECT count(*) , gender_id FROM superhero WHERE gender_id = "good" AND publisher_id = "Marvel Comics" GROUP BY gender_id HAVING count(*) > 0
SELECT count(*) FROM superhero WHERE full_name LIKE '%John%'
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT full_name FROM superhero WHERE weight_kg < 100 AND eye_colour_id = 'brown'
SELECT T1.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN superhero AS T3 ON T3.id = T1.hero_id WHERE T3.superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1 AND alignment_id = 1
SELECT T1.id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT T2.eye_colour FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = "Blackwulf";
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.round = 1 AND T3.year = 20
SELECT T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.round = 19 AND T2.position = 2 AND T3.positionText = "2nd Qualifying" ORDER BY T2.milliseconds LIMIT 1
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.name = 'Shanghai'
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country = 'Asia') AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country = 'Europe')
SELECT T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Spain"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.date LIKE "%Sepang International Circuit%"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit";
SELECT T1.lng , T1.lat FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 24 AND T2.points = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = 1015;
SELECT DISTINCT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.number = 355 AND T2.q2 = "0:01:40"
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 903 AND T2.position = 3 AND T2.q1 = 0 AND T2.q2 = 0 AND T2.q3 = 0.0154
SELECT count(DISTINCT driverid) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2007 AND T2.name = "Bahrain Grand Prix" EXCEPT SELECT driverid FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2007 AND T2.name = "Bahrain Grand Prix" AND T1.statusid = 1
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(DISTINCT driverid) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29";
SELECT T1.surname , T1.dob FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.raceid = 592 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.surname , T1.forename FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 1 AND T2.position = 1 AND T2.milliseconds = 1000 AND T2.time LIKE "0:01:27" AND T2.raceid = 161
SELECT T1.number FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.round = 933 AND T2.position = 1 AND T3.surname = "Lee"
SELECT T1.lng , T1.latt FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.q1 FROM qualifying AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lucas" AND T3.surname = "di Grassi" AND T2.position = 1 AND T1.raceid = 345;
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.raceid = 347 AND T2.time LIKE "0:01:15"
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.raceid = 45 AND T2.lap = 3 AND T2.position = 1 AND T2.milliseconds = 0;
SELECT T1.milliseconds FROM laptimes AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Bruce" AND T3.surname = "McLaren" AND T2.round = 743
SELECT T1.positionText FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2006 AND T2.name = "San Marino Grand Prix" ORDER BY T1.grid LIMIT 1
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(DISTINCT driverid) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29" EXCEPT SELECT count(DISTINCT driverid) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29" AND T1.statusid = 1
SELECT T1.surname , T1.dob FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.raceid = 872 ORDER BY T1.dob LIMIT 1
SELECT T1.surname , T1.forename FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.round = 348 ORDER BY T2.milliseconds LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT (FASTESTLAPTIME - fastestLapTime) / fastestLapTime FROM results WHERE raceid = 853 - 1 ORDER BY fastestLapTime LIMIT 1
SELECT T1.position , T1.milliseconds FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 1983 AND T2.date = "1983/7/16"
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Singapore" ORDER BY T2.position ORDER BY T1.year LIMIT 1
SELECT count(*) , name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races WHERE YEAR = (SELECT min(YEAR) FROM races) AND MONTH = (SELECT min(MONTH) FROM races)
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT name FROM races WHERE YEAR = 2000
SELECT T1.name , T1.location , T2.country FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.raceid WHERE T2.position = 1 AND T2.statusid = 1 AND T2.round = 1 AND T2.year = 1998
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "British Grand Prix" AND T2.circuitid = 1000;
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit" AND T1.name = "United Kindom grand prix";
SELECT T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2010 AND T3.name = "Singapore Grand Prix" ORDER BY T2.position
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY sum(T2.points) DESC LIMIT 1
SELECT T1.surname , T1.position , T1.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T1.position DESC LIMIT 3;
SELECT T1.driverref , T1.raceid FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.milliseconds) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Malaysian Grand Prix" AND T2.driverid = T1.driverid AND T2.position = "fastest" AND T2.lap = 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year LIKE "2010%" AND T1.position != 1 AND T1.driverid = 179 AND T1.constructorid = 1
SELECT T1.forename , T1.surname , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY sum(T2.wins) DESC LIMIT 1
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T1.country = "USA"
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.date LIKE "9/%"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoong" AND T1.year < 20
SELECT count(*) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Sepang International Circuit" AND T2.driver = "Michael Schumacher"
SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Michael" AND T3.surname = "Schumacher" AND T2.position = 1 AND T2.fastestlapspeed != "null"
SELECT avg(T2.points) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2000 AND T2.driverid = 123456 AND T2.statusid = 1;
SELECT T1.points , T2.driverid FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T2.year = (SELECT max(year) FROM races WHERE driverid = T3.driverid)
SELECT name FROM races WHERE YEAR = 2017 ORDER BY date
SELECT T1.name , T1.year , T1.location FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY sum(T2.laps) DESC LIMIT 1
SELECT count(*) , count(*) / (SELECT count(*) FROM races WHERE country = 'Germany') FROM races WHERE country = 'Europe'
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT location FROM circuits WHERE name = 'Silverstone Circuit' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = "null"
SELECT country FROM drivers WHERE dob = (SELECT max(dob) FROM drivers)
SELECT surname FROM drivers WHERE nationality = "Italian";
SELECT url FROM drivers WHERE surname = "Davidson" AND forename = "Anthony";
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix";
SELECT DISTINCT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone Circuit"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Circuit" AND T1.year = 2010
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix";
SELECT fastestlapspeed FROM results WHERE fastestlaptime = (SELECT min(T2.fastestlaptime) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = "Lewis Hamilton" ORDER BY T2.lap LIMIT 1)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.driverref FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2007 AND T3.name = "Canadian Grand Prix" ORDER BY T2.position = 1 LIMIT 1
SELECT DISTINCT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton" ORDER BY T2.rank DESC LIMIT 1
SELECT fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix" ORDER BY T1.milliseconds LIMIT 1
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT rank FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Chinese Grand Prix" AND T1.driverid = 1029 AND T1.statusid = 1;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.grid = 4 AND T2.position = 1
SELECT count(DISTINCT driverId) FROM results AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix"
SELECT fastestLapTime FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.number = 19 AND T1.driverid = 315 AND T1.lap = 1 AND T1.position = 1 AND T1.speed = "fastest" AND T1.driver = "Lewis Hamilton";
SELECT T1.fastestLapTime FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "AustChineseralian Grand Prix" AND T1.position = 2;
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix"; SELECT T1.url FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.position = 1;
SELECT count(DISTINCT T1.number) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Chinese Grand Prix" GROUP BY T1.driverid
SELECT sum(T2.points) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT avg(T2.fastestlapspeed) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.laps = 10
SELECT T1.fastestLapSpeed - 100 FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" ORDER BY T1.fastestLapSpeed DESC LIMIT 1
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide" AND country = "Australia";
SELECT location , lat , lng FROM circuits WHERE country = 'United States'
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > 1980
SELECT max(T1.points) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 291 AND T1.constructorid NOT IN (SELECT constructorid FROM constructorresults WHERE points > 0)
SELECT count(*) FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points = 0
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.position = 1
SELECT count(*) FROM results AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "French" AND T1.laps > 50
SELECT T1.percent FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year BETWEEN 2007 AND 2009 AND T1.driverid IN (SELECT driverid FROM drivers WHERE nationality = "Japanese")
SELECT avg(T1.milliseconds) , T2.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T2.year < 1975 GROUP BY T2.year
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 2 AND T2.rank = 2 AND T2.dob > "1975-01-01"
SELECT count(*) FROM drivers WHERE nationality = "Italian" AND driverid NOT IN (SELECT driverid FROM results WHERE raceid IN (SELECT raceid FROM races WHERE YEAR = 2023))
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT fastestlaps , fastestlapspeed FROM results WHERE raceid IN (SELECT raceid FROM races WHERE YEAR = 2009) ORDER BY fastestlapspeed LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT name , YEAR FROM races ORDER BY fastestlappedtime ASC LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < 1985 AND T2.lap > 50
SELECT count(*) FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.position = "fastest" AND T2.lap = 1 AND T2.time LIKE "02:00.00%" AND T2.driverid IN (SELECT driverid FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.position = "fastest" AND T2.lap = 1 AND T2.time LIKE "02:00.00%" )
SELECT code FROM drivers WHERE nationality LIKE '%America%'
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(DISTINCT driverid) FROM results WHERE raceid = 18
SELECT count(*) , nationality FROM drivers WHERE dob = (SELECT max(dob) FROM drivers) AND nationality LIKE '%Netherlandic%' GROUP BY nationality ORDER BY count(*) DESC LIMIT 3
SELECT name FROM drivers WHERE forename = "Robert" AND surname = "Kubica";
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = "1980";
SELECT T1.surname , T1.forename , T1.dob FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.year BETWEEN 1980 AND 1990 ORDER BY T2.milliseconds LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 1971 AND T2.position = 1 AND T2.fastestlapspeed = (SELECT fastestlapspeed FROM results WHERE T3.year = 1971 ORDER BY T2.lap LIMIT 1)
SELECT T1.surname , T1.dob FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap = (SELECT max(lap) FROM laptimes WHERE dob < 1982)
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year ORDER BY T2.time LIMIT 1
SELECT DISTINCT YEAR FROM results ORDER BY fastestlaptimesspeed LIMIT 1
SELECT driverid FROM results WHERE raceid IN (SELECT raceid FROM laps ORDER BY milliseconds LIMIT 5) AND fastestlaptime = (SELECT min(T2.fastestlaptime) FROM laps AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.lap = 1 ORDER BY T1.milliseconds LIMIT 5)
SELECT count(*) FROM results AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid WHERE T1.statusid = 3 AND T1.raceid BETWEEN 50 AND 100
SELECT count(*) , LOCATION , lat , lng FROM circuits WHERE country = 'Austria' GROUP BY LOCATION
SELECT count(*) , T1.number FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid GROUP BY T1.number ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 23 AND T2.position = 2 AND T2.q2 = 2
SELECT T1.year , T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.position = 1 ORDER BY T1.position LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN constructorResults AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "American" AND T2.status = "Puncture";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1 WHERE T1.nationality = "Italian"
SELECT t1.url FROM constructors AS t1 JOIN constructorstandings AS t2 ON t1.constructorid = t2.constructorid GROUP BY t1.constructorid ORDER BY sum(t2.wins) DESC LIMIT 1
SELECT T1.driverid , T2.position , T2.milliseconds FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "French Grand Prix" ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name , T1.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2006 AND T2.country = "United States" ORDER BY T2.position ORDER BY T2.laps LIMIT 10;
SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300 INTERSECT SELECT T1.number , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING avg(T2.duration) < 300
SELECT T1.position , T1.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Canadian Grand Prix" AND T2.position = 1;
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix" AND T2.position = 1;
SELECT dob , surname , forename FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN 1981 AND 1991
SELECT dob , url , forename , surname FROM drivers WHERE nationality = 'German' AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT LOCATION , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.name , T1.nationality , T2.points FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T3.year BETWEEN 1980 AND 2010 ORDER BY T2.points DESC LIMIT 1
SELECT avg(T1.points) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.constructorid = T3.driverid WHERE T3.surname = "Hamilton" AND T3.nationality = "Turkish";
SELECT avg(T1.year) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2012 AND 2021
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM constructorstandings AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T2.position = 91 AND T2.positiontext = "VICTORY" AND T2.points > 1000000;
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN laptimes AS T3 ON T3.driverid = T2.driverid ORDER BY T3.milliseconds LIMIT 1
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = (SELECT max(YEAR) FROM races)
SELECT T1.surname , T1.forename FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.round = 3 AND T3.circuitid = (SELECT circuitid FROM circuits WHERE name = "Marina Bay Street Circuit") ORDER BY T2.rank = 1 LIMIT 1
SELECT T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid ORDER BY T1.dob LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Canadian Grand Prix" ORDER BY T1.number DESC LIMIT 1
SELECT T1.surname , T1.forename , max(T2.wins) FROM drivers AS T1 JOIN constructorstandings AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = (SELECT max(dob) FROM drivers) GROUP BY T1.driverid
SELECT max(duration) FROM pitstops
SELECT fastestLapTime FROM results ORDER BY position TEXT DESC LIMIT 1
SELECT max(duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton";
SELECT DISTINCT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix" AND T1.driverid = T2.driverid AND T1.stop = "yes"
SELECT T1.duration , T1.time FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix"
SELECT max(T1.milliseconds) FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T1.raceid WHERE T3.year = 2023 AND T2.laps = 1 AND T2.statusid = 1 AND T3.name = "Lewis Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
{"sql": "SELECT T1.position FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN results AS T3 ON T2.raceid = T3.raceid WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime) FROM results AS T3 WHERE T3.statusid = 1 AND T3.fastestLapTime = (SELECT max(T3.fastestLapTime)
SELECT T1.lap FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit";
SELECT DISTINCT T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Austrian Grand Prix Circuit"; SELECT T3.laps FROM results AS T3 JOIN races AS T2 ON T3.raceid = T2.raceid JOIN circuits AS T1 ON T1.circuitid = T2.circuitid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT max(T2.duration) FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT T1.location , T1.lat , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.time LIKE "1:29.488%"
SELECT avg(T1.milliseconds) FROM laptimes AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.number = 1 AND T2.stop = 1 AND T3.year = 2023 AND T3.round = 1 AND T3.date = "2023-11-12" AND T3.time = "10:15:00" AND T3.url = "https://www.formula1.com" AND T3.name = "Lewis Hamilton"
SELECT avg(T1.milliseconds) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate = "all"
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = 'cross' GROUP BY T1.player_api_id ORDER BY count(*) DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2016 GROUP BY T1.team_short_name ORDER BY count(*) LIMIT 1
SELECT T1.player_name , T2.penalties FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY T2.penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T1.league_id = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = "draw" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.date BETWEEN 2013 AND 2015
SELECT T1.name , count(*) FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN 1990 AND 1995;
SELECT player_api_id FROM Player_Attributes WHERE date = '2010' GROUP BY player_api_id ORDER BY avg(overall_rating) DESC LIMIT 1
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed > 50 AND buildUpPlaySpeed < 60
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.date = 2012 AND T1.buildUpPlayPassing > (SELECT avg(buildUpPlayPassing) FROM Team_Attributes WHERE date = 2012)
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday BETWEEN 1987 AND 1992 AND T2.preferred_foot = "left"
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T2.league_id ORDER BY sum(T2.goal) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_Attributes WHERE player_name = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 GROUP BY T1.player_api_id ORDER BY AVG(heading_accuracy) DESC LIMIT 10;
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T1.date = 2014 AND T1.buildUpPlayDribblingClass = "normal" AND T1.buildUpPlayPassingClass = "dribbling" GROUP BY T2.team_long_name HAVING count(*) < (SELECT count(*) FROM Team_Attributes WHERE date = 2014 AND buildUpPlayDribblingClass = "normal" AND buildUpPlayPassingClass = "dribbling") ORDER BY chanceCreationPassing DESC
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2009/2010" GROUP BY T1.id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers"
SELECT name FROM Player WHERE birthday LIKE "1970-10%"
SELECT attacking_work_rate FROM Player_Attributes WHERE player_name = "Franco Zennaro";
SELECT free_kick_accuracy FROM Team_Attributes WHERE team_fifa_api_id = "ADO Den Haag" AND buildUpPlaySpeedClass = "1/3";
SELECT finishing FROM Player_Attributes WHERE date = "18/09/2014" AND preferred_foot = "header" AND player_fifa_api_id = 995382;
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011
SELECT count(*) FROM MATCHes AS T1 JOIN league AS T2 ON T1.league_id = T2.id WHERE T1.season = "2015/2016" AND T2.name = "Scotland Premier League";
SELECT T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'attack'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T1.chanceCreationPassingClass = "Risky"
SELECT defensive_work_rate FROM Player_Attributes WHERE player_name = "David Wilson"
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Netherlands'
SELECT avg(home_team_goal) FROM MATCH WHERE season = "2010/2011" AND country_id = (SELECT id FROM country WHERE name = "Poland")
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY avg(T2.finishing) DESC LIMIT 1
SELECT player_name FROM Player WHERE height > 180;
SELECT count(*) FROM Player WHERE birthday > '1990'
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND T2.date BETWEEN "2008-01-01" AND "2010-12-31"
SELECT potential FROM Player_Attributes WHERE player_name = "Aaron Doran"
SELECT player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE preferred_foot = "left"
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlaySpeedClass = "fast"
SELECT buildUpPlayPassing FROM Team_Attributes WHERE team_fifa_api_id = "CLB"
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE buildUpPlayPassing > 70
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN 2010 AND 2015 AND preferred_foot > 170
SELECT player_name FROM Player ORDER BY height LIMIT 1;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlaySpeed = 31 AND buildUpPlayDribbling = 53 AND buildUpPlayPassing = 32
SELECT avg(overall_rating) FROM Player_Attributes WHERE player_name = "Aaron Doran"
SELECT count(*) FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id JOIN country AS T3 ON T1.id = T3.id WHERE T3.name = "Germany 1. Bundesliga" AND T2.date BETWEEN "2008-08-01" AND "2008-10-31"
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.home_team_goal = 10
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC LIMIT 1 UNION SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = 61
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes WHERE player_api_id = 'Abdou Diallo') FROM Player_Attributes WHERE player_api_id = 'Aaron Appindangoye'
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT player_name FROM Player WHERE birthday > (SELECT birthday FROM Player WHERE player_name = 'Aaron Lennon') UNION SELECT player_name FROM Player WHERE player_name = 'Abdelaziz Barrada'
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'yes'
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Germany"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(crossing) FROM Player_Attributes WHERE player_fifa_api_id = 'Alexis' ) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(crossing) FROM Player_Attributes WHERE player_fifa_api_id = 'Ariel Borysiuk') INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(crossing) FROM Player_Attributes WHERE player_fifa_api_id = 'Arouna Kone')
SELECT heading_accuracy FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70
SELECT count(*) FROM MATCH WHERE season = "2008/2009" AND home_team_api_id IN (SELECT away_team_api_id FROM MATCH WHERE country_id = 4) AND country_id = 4;
SELECT max(long_passing) FROM Player_attributes WHERE player_in_group = 1 AND birthday = (SELECT max(birthday) FROM Player)
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.league_id = T2.id WHERE T2.name = "Belgium Jupiler League" AND T1.date = "2009-04-01";
SELECT T1.name FROM league AS T1 JOIN MATCHES AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986
SELECT (overall_rating - (SELECT overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Ariel Borysiuk')) / 100 FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Ariel Borysiuk' EXCEPT SELECT (overall_rating - (SELECT overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Paulin Puel')) / 100 FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Paulin Puel'
SELECT avg(buildUpPlaySpeed) FROM Team_Attributes WHERE team_fifa_api_id = (SELECT team_fifa_api_id FROM Team WHERE team_long_name = "Heart of Midlothian")
SELECT avg(overall_rating) FROM Player_attributes WHERE player_name = "Pietro Marino"
SELECT sum(cross) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT max(chanceCreationPassing) , chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassingClass = 'High'
SELECT preferred_foot FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Abdou Diallo'
SELECT max(overall_rating) FROM Player_Attributes WHERE player_name = "Dorlan Pabon";
SELECT avg(away_team_goal) FROM MATCH WHERE home_team_api_id IN (SELECT team_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = "Parma") AND T1.country_id = (SELECT country_id FROM country WHERE name = "Italy")
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2016/6/23" AND T2.overall_rating = 77 ORDER BY T1.birthday DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.date = "2016/2/4" AND T2.player_name = "Aaron Mooy"
SELECT potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Francesco Parravicini" AND T2.date = "2010/8/30"
SELECT date , attacking_work_rate FROM Player_Attributes WHERE player_name = "Francesco Migliore" AND date = "2015/5/1";
SELECT defensive_work_rate FROM Player_Attributes WHERE date = "2013/2/22" AND player_name = "Kevin Berigaud"
SELECT date FROM Player_Attributes ORDER BY crossing DESC LIMIT 1; SELECT T1.date FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Kevin Constant" ORDER BY T1.crossing DESC LIMIT 1;
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.team_api_id = T2.player_api_id WHERE T2.player_name = "Willem II" AND T1.date = "2011/2/22";
SELECT buildUpPlayDribblingClass FROM Team_Attributes WHERE team_fifa_api_id = "LEI" AND date = "2015/9/10";
SELECT buildUpPlayPassingClass FROM Team_Attributes WHERE team_fifa_api_id = "FC Lorient" AND date = "2010/2/22";
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE date = "2013/9/20" AND chanceCreationPassing = "PEC Zwolle"
SELECT chanceCreationCrossingClass FROM Team_Attributes WHERE team_long_name = "Hull City" AND date = "2010/2/22"
SELECT defenceAggressionClass FROM Team_Attributes WHERE team_api_id = (SELECT team_api_id FROM Team WHERE team_long_name = "Hannover 96") AND date = "2015/9/10";
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN "2007/2/22" AND "2016/4/21" AND player_name = "Marko Arnautovic"
SELECT max(overall_rating) FROM Player_Attributes WHERE date = "2013/7/12" AND player_name = "Landon Donovan" > max(overall_rating) FROM Player_Attributes WHERE date = "2013/7/12" AND player_name = "Jordan Bowery"
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday >= "35"
SELECT count(*) FROM MATCH AS T1 JOIN home_team_goal AS T2 ON T1.home_team_api_id = T2.home_team_api_id WHERE T2.home_player_X1 = 'Aaron Lennon'
SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = "Daan Smith" INTERSECT SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = "Filipe Ferreira"
SELECT sum(T1.home_team_goal) FROM Match AS T1 JOIN Player AS T2 ON T1.home_player_11 = T2.player_api_id WHERE T2.birthday < "30"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY strength DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'attack'
SELECT max(T1.birthday) , T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 GROUP BY T1.player_api_id ORDER BY T1.birthday LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Team AS T2 ON T1.player_api_id = T2.team_api_id JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = "Belgium"
SELECT T1.player_name , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T1.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY avg(weight) DESC LIMIT 1;
SELECT team_long_name FROM Team WHERE buildUpPlaySpeedClass = "slow"
SELECT T2.team_short_name FROM Player_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.chanceCreationPassing = 'safe'
SELECT avg(T1.height) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_11 UNION SELECT avg(T1.height) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > "1990s" AND player_name = "Aaron"
SELECT jumping - 23 FROM Player_Attributes WHERE player_api_id = 6;
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "right" ORDER BY potential LIMIT 5;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left" AND attacking_work_rate = (SELECT max(attacking_work_rate) FROM Player_Attributes WHERE preferred_foot = "left")
SELECT count(*) * 100.0 / (SELECT count(*) FROM Player_Attributes WHERE strength > 80) FROM Player_Attributes
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT home_team_goal , away_team_goal FROM MATCH WHERE date = "2008-09-24"
SELECT acceleration , sprint_speed , agility FROM Player_attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "ksv cercle brugge";
SELECT count(*) FROM league AS T1 JOIN team AS T2 ON T1.id = T2.league_id WHERE T1.name = "Italian Serie A" AND T1.id = 2015-2016
SELECT max(T1.home_team_goal) FROM MATCH AS T1 JOIN team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN league AS T3 ON T3.id = T2.league_id WHERE T3.name = 'Netherlands Eredivisie'
SELECT T1.finishing , T1.curve FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 1
SELECT T1.name FROM LEAGUE AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2015-2016" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN team AS T2 ON T1.away_team_api_id = T2.id ORDER BY T1.goal DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height < 180 AND T2.overall_rating > 70
SELECT count(*) , sex , (count(*) - (count(*) - count('male')) / count(*) ) FROM patient WHERE diagnosis = 'inpatient' OR diagnosis = 'outpatient' GROUP BY sex
SELECT count(*) / count(*) FROM patient WHERE sex = 'F' AND birthday > 1930
SELECT count(*) , percentage FROM patient WHERE birthday BETWEEN 1930 AND 1940 AND admission = 'Inpatient' GROUP BY admission
SELECT count(*) , count(*) FROM examination WHERE diagnosis = "SLE"
SELECT T2.Date FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 30609
SELECT T1.sex , T1.birthday , T2.symptoms FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 100
SELECT id , birthday FROM patient WHERE CRP > 10
SELECT T1.id , T1.sex , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.thrombosis = "Severe"
SELECT DISTINCT T1.ID FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthdate = "1937" AND T2.T-CHO > 120
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alp < 3.5
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO != "Normal" AND T1.sex = "Female"
SELECT avg(IGG) FROM LABORATORY WHERE ID IN (SELECT ID FROM PATIENT WHERE birthday >= "50")
SELECT count(*) FROM patient WHERE sex = 'F' AND admission = '1997' INTERSECT SELECT count(*) FROM examination WHERE examination date = '1997'
SELECT max(admission - birthday) FROM patient
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'F' AND T1.diagnosis = "Thrombosis" AND T1.examination_date = 1997 GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT max(birthdate) - min(birthdate) FROM patient WHERE diagnosis = 'Normal Triglyceride'
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id ORDER BY T2.birthday LIMIT 1
SELECT avg(T2.WBC) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday < "1998-12-31" AND T1.sex = "M"
SELECT T1.Admission , T2.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.Date = (SELECT max(Date) FROM laboratory)
SELECT count(*) , sex FROM patient WHERE diagnosis = "Uric acid count" GROUP BY sex
SELECT count(*) FROM patient WHERE first date > (SELECT first date + 365 FROM patient)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday < 1990 AND T2.birthday > 1993
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.T-BIL > 100
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T2.ID = T3.ID WHERE T3.Date BETWEEN "1/1/1985" AND "12/31/1995" GROUP BY T1.Diagnosis ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T2.Birthdate) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.Date LIKE "1991-10%" AND T1.Examination Date = "1999-10-19"
SELECT T1.Birthday , T2.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID ORDER BY T1.HGB DESC LIMIT 1
SELECT T2.ANTICENTER FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.date = 1996/12/2 AND T1.patient = 3605340
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 2927464 AND T1.date = 1995-09-04 AND T1.T-CHO = "Normal"
SELECT sex FROM patient WHERE diagnosis = "AORTITIS" ORDER BY first date LIMIT 1
SELECT T2.RNP FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "SLE" AND T1.Date = "1994/2/19" INTERSECT SELECT T3.RNP FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Date = "1993/11/12"
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = "1992-06-12" AND T2.glu = 9
SELECT T1.Birth - (T2.Date - T1.Admission) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO = 8.4 AND T2.Date = "1991-10-21"
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first_date = "1991/6/13" AND T2.diagnosis = "SJS" AND T1.date = "1995/6/13"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T2.first_date = "1997/1/27"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = "1959/3/1" AND T1.Examination Date = "1993/9/27"
SELECT (T1.TCHO - T2.TCHO) / T1.TCHO * 100 FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthdate = "1959/2/18" AND T2.Date = "1981/11/18" AND T2.Date = "1981/12/18"
SELECT T1.id , T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Behcet's" AND T1.examination_date BETWEEN "01/01/197" AND "12/31/1997"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN "1987/7/6" AND "1996/1/31" AND T1.gpt > 30 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN "1987/7/6" AND "1996/1/31" AND T1.gpt > 30 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN "1987/7/6" AND "1996/1/31" AND T1.gpt > 30 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN "1987/7/6" AND "1996/1/31" AND T1.gpt > 30 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN "1987/7/6" AND "1996/1/31" AND T1.gpt > 30 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date BETWEEN "1987/7/6" AND "1996/1/31" AND T1.gpt > 30
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 GROUP BY id HAVING count(*) = 1
SELECT count(*) FROM examination WHERE thrombosis = 2 AND ANA Pattern = "S" AND (IGM > (SELECT avg(IGM) FROM examination))
SELECT count(*) / count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO >= 0.9 AND T2.U-PRO <= 1.0
SELECT count(*) * 100 / count(*) FROM patient WHERE first_date = 1981 AND sex = 'M' INTERSECT SELECT count(*) * 100 / count(*) FROM examination WHERE diagnosis = "BEHCET" AND first_date = 1981
SELECT DISTINCT T1.ID FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.date = "1991-10" AND T2.T-BIL < 15
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ANA_PATTERN = "P"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = "PSS" AND T3.crp = 2 AND T3.CRE = 1 AND T3.LDH = 123
SELECT avg(ALB) FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "F" AND T1.diagnosis = "SLE" AND T1.PLT > 400
SELECT Diagnosis FROM examination WHERE Diagnosis = "SLE" GROUP BY Diagnosis ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.birthday , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 48473
SELECT count(*) FROM patient WHERE diagnosis = "APS" AND sex = "F"
{"sql": "SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id NOT IN (
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms = "Thrombocytopenia" AND T2.diagnosis = "SLE"
SELECT count(*) / count(*) FROM patient WHERE birthday = 1980 AND diagnosis = "RA" AND sex = "F"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.examination_date BETWEEN 1995 AND 1997 AND T1.diagnosis = "Behcet disease" EXCEPT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.examination_date BETWEEN 1995 AND 1997 AND T1.diagnosis = "Behcet disease" AND T1.admission = T2.admission
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND WBC < 3.5
SELECT T1.Admission - T2.Admission FROM patient AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.ID = 821298 AND T2.Admission = (SELECT max(Admission) FROM patient WHERE ID = 821298)
SELECT 1 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO >= 0.5 AND T2.U-PRO <= 2.5
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND T1.got > 60
SELECT T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.got < 100 AND T2.date = 1994
SELECT id FROM patient WHERE sex = 'M' AND gpt > 0.5 AND gpt = "ALT glutamic pylvic transaminase"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.GLU > "Normal" ORDER BY T2.Birthdate
SELECT avg(LDH) FROM LABORATORY WHERE LDH >= 0 AND LDH <= 1000
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH >= 100 AND LDH <= 300
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE ALP >= 0 AND ALP <= 100
SELECT id FROM patient WHERE birthday = "1982-04-01" INTERSECT SELECT id FROM laboratory WHERE ALP >= 0 AND ALP <= 1000
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TP < (SELECT min(TP) FROM laboratory)
SELECT id FROM patient WHERE sex = 'F' INTERSECT SELECT id FROM laboratory WHERE TP > (SELECT min(TP) FROM laboratory)
SELECT * FROM patient WHERE sex = 'M' AND ALP > 40 ORDER BY birthday DESC
SELECT count(*) FROM patient WHERE birthday = 1982 INTERSECT SELECT count(*) FROM laboratory WHERE ALP < 15
SELECT count(*) , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UA > 99 GROUP BY T1.sex HAVING count(*) > 1
SELECT avg(UA) FROM LABORATORY WHERE UA = "Normal"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UN >= "0.05"
SELECT id , sex , birthday FROM patient WHERE diagnosis = 'RA' INTERSECT SELECT id , sex , birthday FROM laboratory WHERE UN = 'Normal'
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine FROM laboratory WHERE creatinine <= 99
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM laboratory)
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.T-BIL DESC LIMIT 1
SELECT count(*) , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL > 10.0 GROUP BY sex
SELECT id , T-CHO FROM laboratory ORDER BY T-CHO DESC LIMIT 1
SELECT avg(birthday) FROM patient WHERE sex = 'M' AND tcho / 1000 > 3.5
SELECT T1.ID , T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T1.ID = T3.ID WHERE T3.TG > 100
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE TG > (SELECT avg(TG) FROM laboratory) AND T1.birthday > 50
SELECT DISTINCT id FROM laboratory WHERE creatinine phosphokinase < 100
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = 'M' AND creatinine phosphokinase > (SELECT avg(creatinine phosphokinase) FROM laboratory)
SELECT id , sex , age FROM patient JOIN laboratory ON patient.id = laboratory.id WHERE GLU != "normal" AND T-CHO >= "normal"
SELECT T1.id , GLU FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.first_date = 1991 AND GLU < 120
SELECT T1.id , T1.sex , T1.birthday , max(T2.age - T1.birthday) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id GROUP BY T1.id ORDER BY max(T2.age - T1.birthday)
SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Lower Red Blood Cell"
SELECT T1.admission , T2.sex , T2.birthday , T2.age , T2.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.sex = 'F' AND T2.age >= 50 AND T2.rbc > 4.5
SELECT DISTINCT id , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE HGB < 450000
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" AND T1.HGB = "Normal" ORDER BY T1.birthday DESC LIMIT 1
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T3.hct > 0.5 GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(HCT) FROM LABORATORY EXAM IN 1991 WHERE HCT < 45000
SELECT count(*) , count(*) FROM patient WHERE PLT < 100
SELECT T1.ID FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination_date = 1984 AND T2.birthday < 50 AND T1.diagnosis = "Normal Platelet"
SELECT count(*) , sex , sum(if(PT = "abnormal", 1 , 0)) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 GROUP BY T1.sex
SELECT DISTINCT first_date FROM patient WHERE first_date > 1992 AND PT = "normal"
SELECT count(*) FROM examination WHERE examination_date > "1997/1/1" AND (T-CHO = "inactivated partial prothrom" )
SELECT count(*) FROM patient WHERE diagnosis != "Thrombosis" AND PT != "normal"
SELECT count(*) FROM patient WHERE sex = 'M' AND WBC = "Normal" INTERSECT SELECT count(*) FROM laboratory WHERE FG = "Abnormal"
SELECT count(*) FROM patient WHERE birthday > '1980-01-01' AND fg != "normal"
SELECT T1.Disease FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "Urethral Infection" AND T3.UA > 100
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" AND T3.u-pro < 1000
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE IGG > 'normal'
SELECT count(*) FROM examination WHERE aCL IgG = "Normal" AND Symptoms = "Yes"
{"sql": "SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis = (SELECT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.IGG >= (SELECT max(Igg) FROM laboratory) AND T1.Diagnosis =
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal IgA" AND T1.birthday > 1990-01-01
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.IGM = "Abnormal" GROUP BY T1.Diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM laboratory WHERE CRP = "abnormal")
SELECT count(*) FROM patient WHERE diagnosis = 'Abnormal creatinine' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = '70'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.Rhematoid Factor = "Normal" AND T2.PT > 10
SELECT T1.Disease FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday > "1985-1-1" AND T3.RH Factor = "Normal"
SELECT id FROM patient WHERE birthday > 60 INTERSECT SELECT id FROM laboratory WHERE RF = "Normal"
SELECT count(*) FROM patient WHERE diagnosis = "Normal RF" EXCEPT SELECT count(*) FROM patient WHERE diagnosis = "Thrombosis"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ANA = "3" AND T1.ANA_PATTERN = "P"
SELECT id FROM patient EXCEPT SELECT id FROM laboratory WHERE HCT = "Normal" GROUP BY id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Thrombosis" AND T2.sex = "Female" AND T1.c4 = 4
SELECT count(*) FROM patient WHERE diagnosis = "Normal" INTERSECT SELECT count(*) FROM examination WHERE admission = 'Yes'
SELECT T1.Birthday FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "Abnormal Anti-Ribonuclear Protein"
SELECT count(*) FROM patient WHERE diagnosis = "Normal Anti-SM" EXCEPT SELECT count(*) FROM examination WHERE thrombosis = "Yes"
SELECT id FROM patient WHERE first date = (SELECT min(first date) FROM patient WHERE diagnosis = 'abnormal anti-SM') ORDER BY first date LIMIT 3
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination_date > "1997/1/1" AND T3.sc170 = "Normal"
SELECT count(*) FROM patient WHERE diagnosis = "Normal anti-scl70" AND sex = "F" AND id NOT IN (SELECT id FROM examination WHERE symptoms = "Yes")
SELECT count(*) FROM patient WHERE diagnosis = "Normal Anti-SSA" AND first date < 2000
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal anti-SSA' ORDER BY T1.admission LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SSB = "normal" AND T1.Diagnosis = "SLE"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms != "normal" AND T2.disease != "normal"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE CENTROMEA = "Normal" AND SSB = "Normal" AND T1.sex = "M"
SELECT DISTINCT T1.Diagnosis FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE DNA != "0"
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination) AND DNA = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" AND T2.diagnosis = "Hospital"
SELECT count(*) FROM lab_result AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.GLU > 0 AND T2.diagnosis = "SLE"
SELECT count(*) FROM patient WHERE sex = 'M' AND GLU = 'Normal'
SELECT min(birthdate) FROM patient WHERE diagnosis = "Glutamic oxaloacetic transaminase"
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU <= 300 ORDER BY T2.GLU DESC LIMIT 3
SELECT count(*) FROM patient WHERE sex = 'M' AND GLU = "Normal"
SELECT T1.date FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ldh >= 0 AND T2.ldh <= 100 AND T1.diagnosis = "Normal" ORDER BY T1.date LIMIT 1
SELECT max(T2.date) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms LIKE "%lactate dehydrogenase%"
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE ALP > 100)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = "normal"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID JOIN laboratory AS T3 ON T3.ID = T2.ID WHERE SUM(T3.U-PRO) < 100000
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE diagnosis = "SJS" AND T2.U-PRO = "Normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T3.alp = (SELECT max(alp) FROM laboratory) AND T3.diagnosis = "Normal"
SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT min(T1.ALBP) FROM laboratory AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.diagnosis = "Normal" INTERSECT SELECT min(T1.TP) FROM laboratory AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.diagnosis = "Normal")
SELECT T2.concentration FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID JOIN patient AS T3 ON T1.ID = T3.ID WHERE T3.sex = "F" AND T1.diagnosis = "Normal" ORDER BY T2.concentration DESC LIMIT 1
SELECT max(IGG) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.creatinine = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.creatinine = "normal" INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.anti_cardiolipin = (SELECT max(anti_cardiolipin) FROM laboratory)
SELECT count(*) FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.T-BIL > 10 AND T2.Symptoms = "Peripheral pattern"
SELECT T2.anti-nucleus antibody concentration FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL < 200000 AND T1.diagnosis = "Normal"
{"sql": "SELECT count(*) FROM laboratory WHERE T-CHO > 100 AND (SELECT IF (SELECT sum(C3) , SELECT sum(C4) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT sum(RF) , SELECT
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.ANA_PATTERN = "P" AND T2.T-CHO BETWEEN 120 AND 180
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.symptoms = "normal"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "Normal" AND T2.TG <= 100 ORDER BY T2.TG DESC LIMIT 1
SELECT id FROM patient EXCEPT SELECT id FROM examination WHERE thrombosis = 'yes' INTERSECT SELECT id FROM laboratory WHERE CPK = 'abnormal'
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE CRKP IN (SELECT min(CRKP) FROM laboratory)
SELECT birthday FROM patient WHERE diagnosis = 'Abnormal Blood Glucose' AND first date = (SELECT max(first date) FROM patient WHERE diagnosis = 'Abnormal Blood Glucose')
SELECT count(*) FROM patient WHERE diagnosis = "Normal blood glucose" EXCEPT SELECT count(*) FROM examination WHERE thrombosis = 1
SELECT count(*) FROM laboratory WHERE WBC < 150000
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND WBC = "normal"
SELECT id FROM patient WHERE rbc > 4.99 AND id IN (SELECT id FROM laboratory WHERE symptoms = "Abnormal red blood cell" INTERSECT SELECT id FROM examination WHERE diagnosis = "Outpatient clinic")
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal Platelet Level" INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Other Symptoms"
SELECT T1.PLT FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.PLT < 150 AND T2.diagnosis = "MCTD"
SELECT avg(PT) FROM laboratory WHERE sex = 'M' AND normal = 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Thrombosis" AND T1.description LIKE "%normal%" AND T1.diagnosis = "Severe"
SELECT T.major_name FROM major AS T JOIN member AS S ON T.major_id = S.link_to_major WHERE S.first_name = "Angela" AND S.last_name = "Sanders";
SELECT count(*) FROM major WHERE department = "College of Engineering"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Art and Design"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T2.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'vice president' AND T1.department = 'Student_Club'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison" AND T1.event_date = 2019;
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.link_to_event IN (SELECT event_id FROM attendance GROUP BY event_id HAVING count(*) > 10) AND T2.position = 'student' AND T1.type = 'meeting'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.total_students > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.total_students = 20
SELECT avg(T1.attendance) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "2020%"
SELECT T1.spent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'support' ORDER BY T1.spent DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Law" INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Constitutional Studies"
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT college FROM major WHERE major_id IN (SELECT link_to_major FROM member WHERE first_name = "Tyler" AND last_name = "Hewitt")
SELECT amount FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Vice President'
SELECT T1.spent FROM budget AS T1 JOIN expense AS T2 ON T1.link_to_budget = T2.budget_id JOIN attendance AS T3 ON T2.link_to_member = T3.member_id WHERE T3.link_to_event = (SELECT event_id FROM event WHERE event_date LIKE "9/%") AND T2.expense_date LIKE "9/%" AND T1.category = "Food";
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.position = 'President of the Student_Club'
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T1.state = "Illinois"
SELECT T1.spent FROM budget AS T1 JOIN expense AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.expense_date = '2023-09-01' AND T2.category = 'Ad';
SELECT department FROM major WHERE major_name = 'Pierce' INTERSECT SELECT department FROM major WHERE major_name = 'Guidi'
SELECT sum(amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT approved FROM expense WHERE expense_date LIKE "2019-10-08%";
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date LIKE "%9月%" OR T1.event_date LIKE "%10月%" AND T2.category = 'Expense' AND T2.event_status = 'Completed'
SELECT sum(budget.spent) - sum(budget.spent) FROM budget WHERE budget.event_status = 'Student_Club' AND budget.event_date = '2019' INTERSECT SELECT sum(budget.spent) - sum(budget.spent) FROM budget WHERE budget.event_status = 'Student_Club' AND budget.event_date = '2020'
SELECT location FROM event WHERE event_name = "Spring Budget Review"
SELECT cost FROM expense WHERE expense_date LIKE "2019/9/4" AND expense_description = "Posters"
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY remaining DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT county FROM zip_code WHERE city = "Adela O'gallagher";
SELECT count(*) FROM budget AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T1.event_status = 'Completed' AND T2.event_status = 'Completed' AND T1.event_name = "November Meeting"
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT status FROM event WHERE event_date = "2019/8/20" AND event_name = "Post Cards, Posters"
SELECT T_major_name FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.link_to_major WHERE T_member.first_name = "Brent" AND T_member.last_name = "Thomason";
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "Medium"
SELECT TYPE FROM zip_code WHERE zip = "91100" AND last_name = "NIelson";
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT T2.state FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Sacha" AND T1.last_name = "Harrison"
SELECT department FROM major WHERE department = (SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'President' )
SELECT T1.event_date FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Connor" AND T3.last_name = "Hilton";
SELECT first_name , last_name FROM member WHERE link_to_member IN (SELECT member_id FROM expense WHERE approved = 'Yes' ORDER BY date_received LIMIT 1)
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.amount > T2.event_date
SELECT percentage FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Speaker" AND T1.category = "Parking" GROUP BY T1.category HAVING count(*) = 1
SELECT sum(T2.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT T2.county FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Amy" AND T1.last_name = "Firth";
SELECT amount FROM budget ORDER BY remaining LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T_major.major_name FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.link_to_major WHERE T_member.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason";
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'closed' ORDER BY T2.spent / T2.remaining DESC LIMIT 1
SELECT count(*) FROM member WHERE POSITION = "president"
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020%"
SELECT sum(expense) FROM expense WHERE expense_description LIKE "food%"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN attendance AS T3 ON T3.link_to_member = T2.member_id WHERE T1.major_name = "interior design" AND T3.link_to_event = (SELECT event_id FROM event WHERE event_name = "Community Theater")
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.department = "Georgetown" AND T1.college = "South Carolina"
SELECT count(*) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour";
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT sum(T2.cost) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T1.event_id = (SELECT event_id FROM event WHERE TYPE = 'Yearly Kickoff')
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T2.event_status = 'Yearly Kickoff'
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT event_name FROM budget ORDER BY spent LIMIT 1
SELECT percentage FROM (SELECT event_name , sum(spent) , event_date , TYPE , count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE TYPE = 'Yearly Kickoff' GROUP BY event_date) AS T3 JOIN event AS T4 ON T3.link_to_event = T4.event_id EXCEPT SELECT sum(spent) , event_date , TYPE , count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE TYPE = 'Yearly Kickoff' GROUP BY event_date HAVING sum(spent) = 100%
SELECT count(*) , major_name FROM major WHERE department = 'Finance' INTERSECT SELECT count(*) , major_name FROM major WHERE department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/2019%" ORDER BY amount DESC LIMIT 1
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'"}
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.link_to_event = (SELECT event_id FROM attendance WHERE event_name = 'Community Theater' AND event_date LIKE "2019%");
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi"; SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi"
SELECT avg(budget.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_name = 'typical'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
SELECT T1.personal_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = "Women's Soccer" AND T1.first_name = "Maya" AND T1.last_name = "Lianch";
SELECT count(*) FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.link_to_event WHERE T2.position = 'Student Club' AND T1.event_date = "2019-01-01" AND T1.type = "Community Service"
SELECT T2.cost FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "September Speaker"
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent > T2.remaining GROUP BY T2.link_to_event ORDER BY sum(T2.spent) DESC LIMIT 1
SELECT T2.expense_description , sum(T1.cost) FROM budget AS T1 JOIN expense AS T2 ON T1.link_to_budget = T2.link_to_budget JOIN event AS T3 ON T3.event_id = T1.link_to_event WHERE T3.event_name = 'October Meeting' GROUP BY T2.expense_description
SELECT category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'April Speaker' ORDER BY spent
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(cost) FROM expense WHERE category = 'Parking'
SELECT sum(cost) FROM expense WHERE expense_date = '8/20/2019'
SELECT T1.first_name , T1.last_name , sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T2.link_to_member = "rec4BLdZHS2Blfp4v" GROUP BY T2.link_to_member
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.link_to_member = T2.link_to_member WHERE T1.t_shirt_size = 'X-Large'
SELECT zip_code FROM member WHERE amount < 50
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Phillip" AND T1.last_name = "Cullen"
SELECT position FROM member WHERE link_to_major IN (SELECT major_id FROM major WHERE major_name = 'Business')
SELECT count(*) FROM member WHERE t_shirt_size = "Medium" AND department = "Business"
SELECT TYPE FROM budget WHERE remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT TYPE FROM event WHERE event_date LIKE "2020-03-24T12:00:00"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = "Vice President"
SELECT count(*) , T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Business' GROUP BY T1.major_name HAVING count(*) > 1
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = "extra large"
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T2.city , T2.state FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.department = 'Electrical and Computer Engineering'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Vice President" AND T1.location = "900 E. Washington St."
SELECT T2.last_name , T2.position FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = "09/10/2019" AND T2.expense_description = "pizza";
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer Event'"}
SELECT count(*) , T1.amount , T1.t_shirt_size , percentage FROM budget AS T1 JOIN income AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.category = 'Student_Club' AND T1.t_shirt_size = 'medium' GROUP BY T1.t_shirt_size ORDER BY percentage DESC LIMIT 1
SELECT DISTINCT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.type = 'post office box'
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND major_name = 'San Juan Municipio'
SELECT event_name FROM event WHERE status = "closed" AND event_date BETWEEN "3/15/2019" AND "3/20/2020" AND TYPE = "game"
SELECT T1.link_to_event FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'employee' AND T1.amount > 50
SELECT T2.first_name , T2.last_name , T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date LIKE "10/19/2019" AND T3.event_date LIKE "1/10/2019"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO";
SELECT T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Agriculture and Applied Sciences"
SELECT T2.email FROM budget AS T1 JOIN income AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_date BETWEEN "09/10/2019" AND "11/19/2019" AND T1.spent > 20
SELECT count(*) FROM major WHERE department = "College of Education & Human Services"
SELECT count(*) FROM budget WHERE spent > amount
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-01" AND "2020-03-01"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.spent > (SELECT avg(spent) FROM budget)
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) , TYPE FROM zip_code WHERE TYPE = 'PO box' GROUP BY TYPE
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < T2.amount
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Pizza' AND T2.spent > 50 AND T2.spent < 100
SELECT T2.major_name , T2.department FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.spent > 100
SELECT T1.location , T1.state FROM event AS T1 JOIN income AS T2 ON T1.event_id = T2.link_to_member GROUP BY T1.event_id HAVING sum(T2.amount) > 40;
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id HAVING count(*) > 1 ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM member WHERE POSITION != 'member'
SELECT event_name FROM event WHERE cost < (SELECT avg(cost) FROM event)
SELECT percentage FROM budget WHERE category = 'Expense'
SELECT category FROM budget WHERE category = 'water' OR category = 'spices' OR category = 'cookies' ORDER BY sum(spent) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id ORDER BY T1 spent DESC LIMIT 5
SELECT T2.first_name , T2.last_name , T2.phone FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member HAVING sum(T1.cost) > (SELECT avg(cost) FROM expense)
SELECT sum( (count(*) - count(*) / 250000) ) FROM zip_code WHERE state = 'New Jersey' INTERSECT SELECT sum( (count(*) - count(*) / 250000) ) FROM zip_code WHERE state = 'Vermont'
SELECT T_major.department FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.link_to_major WHERE T_member.first_name = "Garrett" AND T_member.last_name = "Gerke";
SELECT T2.first_name , T2.last_name , T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T1.link_to_budget = T3.budget_id WHERE T3.category = 'water' AND T3.category = 'veggie tray' AND T3.category = 'supplies'
SELECT T2.last_name , T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Elementary Education"
SELECT category , amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = "food";
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.link_to_budget = T2.link_to_budget WHERE T1.event_date = "9/9/2019"
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name , T1.last_name , T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT sum(T2.spent) , T1.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event
SELECT T3.city FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN zip_code AS T3 ON T2.zip = T3.zip_code; WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT first_name , last_name , position FROM member WHERE zip_code = 28092 AND city = "Lincolnton" AND county = "North Carolina"
SELECT count(*) FROM gasstations WHERE country = 'CZE' AND price = 'Premium'
SELECT count(*) , currency FROM customers WHERE currency = 'EUR' / count(*) FROM customers WHERE currency = 'CZK'
SELECT T1.ConsumerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" ORDER BY T2.Consumption ASC LIMIT 1
SELECT avg(Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.segment = 'SME' AND T1.Date = 2013
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" AND T2.Date = "2011-01" ORDER BY T2.Consumption DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.consumption < 30000 AND T2.segment = "KAM"
SELECT abs(T2.Consumption - T1.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" DIFFERENT FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR"
SELECT T1.Date , T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "EUR" GROUP BY T1.Date ORDER BY sum(T2.Amount) DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T1.segment ORDER BY sum(T2 Consumption) LIMIT 1
SELECT T2.YearMonth FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" GROUP BY T2.YearMonth ORDER BY sum(T2.Consumption) DESC LIMIT 1
SELECT T2.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "SME" AND T1.Date LIKE "2013%" ORDER BY T1.Date DESC LIMIT 1
SELECT avg(Consumption) - 2013 FROM yearmonth WHERE customerid = 101 AND currency = "CZK"
SELECT T1.segment , max(T2.consumption - T1.consumption) , min(T2.consumption - T1.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "EUR" AND T2.date = "2012-12-31" AND T2.date = "2013-12-31" GROUP BY T1.segment
SELECT sum(Consumption) FROM yearmonth WHERE CustomerID = 6 AND DATE BETWEEN "08/2013" AND "11/2013"
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" - (SELECT count(*) FROM gasstations WHERE country = "Slovakia")
SELECT Consumption FROM yearmonth WHERE Date = "2013-04" AND CustomerID = 7 - SELECT Consumption FROM yearmonth WHERE Date = "2013-04" AND CustomerID = 5
SELECT count(*) FROM customers WHERE currency = "Czech koruna" - (SELECT count(*) FROM customers WHERE currency = "euros")
SELECT T2.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro" AND T2.Date = "2013-10" GROUP BY T2.CustomerID ORDER BY Consumption DESC LIMIT 1
SELECT T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY SUM(T2.Consumption) DESC LIMIT 1
SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2013-05" AND T2.Segment = "KAM"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.consumption > 46.73
SELECT country , count(*) FROM gasstations GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , sum(case when currency = 'EUR' THEN 1 ELSE 0 END) FROM customers WHERE currency = 'EUR'
SELECT count(*) FROM yearmonth WHERE date LIKE "2012/%" AND Consumption > 528.3
SELECT count(*) , percentage FROM gasstations WHERE country = 'Slovakian' AND segment = 'premium'
SELECT customerid FROM yearmonth WHERE date = "2013-09" GROUP BY customerid ORDER BY consumption DESC LIMIT 1
SELECT T1.Segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2013%" AND T2.Month = 9 ORDER BY T2.Consumption LIMIT 1
SELECT T1.ConsumerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" AND T2.month = 6 ORDER BY T2.Consumption LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE YEAR = 2012
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T2.description FROM yearmonth AS T1 JOIN products AS T2 ON T1.productid = T2.productid WHERE T1.date = "2013-09"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "2013-%" AND T1.Date LIKE "06/%"
SELECT T2.ChainID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Price = 0x0001
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Amount > 0 AND T1.Currency = "Euro"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012/01/%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro" AND T2.consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID JOIN gasstations AS T3 ON T2.GasStationID = T3.GasStationID WHERE T3.Country = "Czech Republic"
SELECT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k WHERE price > 1000 AND gasstationid = (SELECT gasstationid FROM gasstations WHERE country = 'Czech Republic')
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = "Czech Republic" AND T1.date > "2012/1/1"
SELECT avg(T1.Price) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic"
SELECT avg(total) FROM transactions_1k WHERE currency = "euro"
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "%2012/%8/%25%" GROUP BY T1.CustomerID ORDER BY sum(T3.Amount) DESC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = "2012/8/25" AND T1.Price != "0" GROUP BY T2.Country ORDER BY count(*) DESC LIMIT 1
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/24" AND T2.Time = "16:25:00"
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date = "2012/8/23 21:20:00"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" AND T2.Date = "2012/8/26/09:00:00"
SELECT Segment FROM customers ORDER BY date LIMIT 1
SELECT country FROM transactions_1k WHERE date LIKE "2012/8/24 12:42:00"
SELECT ProductID FROM transactions_1k WHERE Date LIKE "2012/8/23" AND TIME LIKE "21:20:00";
SELECT T1.Date , T1.Amount , T1.CustomerID FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/24" AND T2.Amount = 124.05 JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.Currency = "USD"
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/26" AND TIME BETWEEN 8.0 AND 9.0 AND country = "CZE"
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013/%" AND T1.Consumption LIKE "214582.17%"
SELECT T1.Country FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.CardID = 667467
SELECT T1.Country FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/24" AND T2.Consumption = 548.4
SELECT count(*) FROM customers WHERE date = '2012/8/25' AND currency = 'EUR'
SELECT consumption - (SELECT max(consumption) FROM yearmonth WHERE date = '2012/8/25') FROM yearmonth WHERE date = '2013/8/25'
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID ORDER BY T2.Amount DESC LIMIT 1
SELECT count(*) , segment FROM customers WHERE country = "SVK" AND segment = "premium" GROUP BY segment
SELECT sum(T1.Amount) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date = "2012-01" AND T2.CustomerID = 38508
SELECT T1.Description , T1.ProductID FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.productid GROUP BY T1.ProductID ORDER BY COUNT(*) DESC LIMIT 5
SELECT T1.Currency , avg(T2.Price) , T1.CustomerID FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY avg(T2.Price) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = 2 ORDER BY T2.Price DESC LIMIT 1
SELECT T2.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.Date = T2.Date WHERE T1.ProductID = 5 AND T1.Price > 29.00
