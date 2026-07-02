{"sql": "SELECT max(T1.\'% Eligible Free (K-12)\") FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.County = \"Alameda\""}
SELECT Percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE School Type = "Continuation" ORDER BY Percent (%) Eligible Free (Ages 5-17) ASC LIMIT 3
SELECT zip FROM schools WHERE county = "Fresno" AND charter = 1
SELECT T2.MailStreet FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.FRPM Count (K-12) DESC LIMIT 1
SELECT phone FROM schools WHERE openDate > "2000-01-01" AND FundingType = "Direct"
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.virtual = 'Y' AND avgscrmath > 400
SELECT DISTINCT T2.school FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T1.NumGE1500 > 500 AND T2.Magnet = 1
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 = ( SELECT max(NumGE1500) FROM satscores )
SELECT sum(T2.NumTstTakr) FROM frpm AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.Academic Year = "2013-14" GROUP BY T1.CDSCode ORDER BY sum(T2.NumTstTakr) DESC LIMIT 1
SELECT count(*) FROM schools WHERE avgscrmath > 560 AND charter = 'Y'
SELECT T1.frpm_count_(ages_5_17) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T2.cdscode = T3.cds WHERE T3.rtype = "Elementary" AND T3.avgscrread = (SELECT max(avgscrread) FROM satscores WHERE rtype = "Elementary")
SELECT T1.cdscode FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode GROUP BY T1.cdscode HAVING sum(T2."Enrollment (K-12)") > 500
SELECT max(T1.Percent (%) Eligible Free (Ages 5-17)) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T2.CDSCode = T3.cds WHERE T3.rtype = "Elementary" AND T3.sname = "Excellence" AND T3.NumGE1500 > 0.3
SELECT T2.Phone FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.CDSCode ORDER BY T1.AvgScrMath DESC LIMIT 3
SELECT T1.NCESSchool FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.School Code ORDER BY T2.Enrollment (Ages 5-17) DESC LIMIT 5
SELECT dname FROM satscores ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools WHERE county = "Alameda" INTERSECT SELECT count(*) FROM satscores WHERE numtsttakr < 100
SELECT T1.CharterNum FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE AvgScrWrite > 499 ORDER BY AvgScrWrite DESC
SELECT count(*) FROM schools WHERE county = "Fresno" AND fundingtype = "Direct" AND NumTstTakr <= 250
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T2.cds ORDER BY avg(NumGE1500) DESC LIMIT 1
SELECT count(*) FROM frpm WHERE low grade = 9 AND high grade = 12 AND county name = "Amador"
SELECT count(*) FROM frpm WHERE free meal count (k-12) > 500 AND FRPM Count (K-12) < 700 AND county = "Los Angeles"
SELECT T2.school FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cdscode WHERE T2.County = "Contra Costa" ORDER BY T1.numsttakr DESC LIMIT 1
SELECT T2.school , T1.street FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE ABS(enrollment (k-12) - enrollment (ages 5-17)) > 30
SELECT T1.school , T1.cname FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1."Percent (%) Eligible Free (K-12)" > 0.1 AND T2.rtype = "Test Score" AND T2.AvgScrRead >= 1500
SELECT T1.fundingtype FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.county = "Riverside" GROUP BY T2.sname HAVING avg(T2.AvgScrMath) > 400
SELECT T2.school , T1.mailstreet , T1.mailcity , T1.mailstate FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.percent (%) eligible frpm (ages 15 - 17) > 800 AND T2.city = "Monterey"
SELECT T2.cname , T2.avgscrwrite , T2.charternum FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.opendate > 1991 OR T1.closeddate < 2000
SELECT T2.school , T1.doc , T1.doctype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.schoolcode WHERE T1.fundingtype = "Locally" AND T2.enrollment (k-12) - T2.enrollment (ages 5-17) > (SELECT avg(T2.enrollment (k-12) - T2.enrollment (ages 5-17)) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.schoolcode WHERE T1.fundingtype = "Locally")
SELECT opendate FROM schools WHERE highgrade = 12 ORDER BY enrollment (k - 12) DESC LIMIT 1
SELECT T2.city FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE lowgrade > 0 AND highgrade < 13 ORDER BY T1.enrollment (k-12) ASC LIMIT 5
SELECT Percent (%) Eligible FRPM (K-12) FROM frpm ORDER BY Enrollment (K-12) ASC LIMIT 2
SELECT Percent (%) Eligible FRPM (K-12) FROM frpm WHERE School Type = "Elementary" AND Low Grade <= 12 AND High Grade >= 1 ORDER BY Percent (%) Eligible FRPM (K-12) DESC LIMIT 5
SELECT T2.Website , T1.schoolname FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Free Meal Count (Ages 5 - 17) BETWEEN 1900 AND 2000
SELECT percent (%) eligible frpm (ages 5 - 17) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.school = "Kacey Gibson"
SELECT admemail1 FROM schools WHERE charter = 'Y' ORDER BY enroll12 LIMIT 1
SELECT t1.admfname1 , t1.admlname1 FROM schools AS t1 JOIN satscores AS t2 ON t1.cdscode = t2.cds WHERE t2.numge1500 = ( SELECT max(numge1500) FROM satscores )
SELECT street , city , zip , state FROM schools ORDER BY avg(enrollment (ages 5 - 17)) - avg(FRPM Count (ages 5 - 17)) LIMIT 1
SELECT T2.Website FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.County = "Los Angeles County" INTERSECT SELECT T2.Website FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T1.NumTstTakr BETWEEN 2000 AND 3000
SELECT avg(T2.NumTstTakr) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.OpenDate BETWEEN "1/1/1980" AND "12/31/1980" AND T1.County = "Fresno"
SELECT T2.Phone FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.CDSCode WHERE T2.County = "Fresno Unified" GROUP BY T1.cds ORDER BY avgscrread LIMIT 1
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.virtual = 1 AND T2.rtype = "read" GROUP BY T1.school ORDER BY avgscrread DESC LIMIT 5
SELECT T2.EdOpsName FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.CDSCode GROUP BY T1.cds ORDER BY avg(NumGE1500) DESC LIMIT 1
SELECT avgscrmath , t1.county FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds GROUP BY t1.county ORDER BY avg(avgscrmath) LIMIT 1
SELECT avg(AvgScrWrite) , T1.city FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 = (SELECT max(NumGE1500) FROM satscores) GROUP BY T1.city ORDER BY avg(AvgScrWrite) DESC LIMIT 1
SELECT T2.cname , avg(T1.AvgScrWrite) FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T2.AdmLName1 = "Ricci" AND T2.AdmFName1 = "Ulrich" GROUP BY T2.cname
SELECT T2.state FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.schooltype = "State Special" AND T2.lowgrade >= 1 AND T2.highgrade <= 12 ORDER BY T2.enrollment (k-12) DESC LIMIT 1
SELECT count(*) , academic_year FROM schools WHERE county = "Alameda" AND district LIKE "%Elementary%" AND opendate LIKE "1980%" GROUP BY academic_year
SELECT count(*) / ( SELECT count(*) FROM schools WHERE county = "Orange" AND districttype = "Elementary" ) FROM schools WHERE county = "Orange" AND districttype = "Unified"
SELECT school , closeddate FROM schools WHERE closeddate != "null" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T2.street , T1.schoolname FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds ORDER BY T1.AvgScrMath LIMIT 1 OFFSET 6
SELECT T2.mailstreet , T1.sname FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds GROUP BY T1.sname ORDER BY avgscrread LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.mailcity = 'Lakeport' AND T2.numge1500 >= 1
SELECT sum(T2.NumTstTakr) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.MailCity = "Fresno"
SELECT school , mailzip FROM schools WHERE admLName1 = "Avetik" AND admFName1 = "Atoian"
SELECT count(*) / (SELECT count(*) FROM schools WHERE mailstate = "CA" AND county = "Humboldt") FROM schools WHERE mailstate = "CA" AND county = "Colusa"
SELECT count(*) FROM schools WHERE mailstate = "CA" AND mailcity = "San Joaquin" AND statusype = "Active"
SELECT T1.phone , T1.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds ORDER BY avgscrwrite LIMIT 1 OFFSET 332
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE admfname1 = "Mike" AND admlname1 = "Larson" UNION SELECT website FROM schools WHERE admfname1 = "Dante" AND admlname1 = "Alvarez"
SELECT website FROM schools WHERE virtual = "Partially" AND county = "San Joaquin"
SELECT count(*) FROM schools WHERE City = "Hickman" AND District = "Elementary School District" AND Charter = "Y"
SELECT count(*) FROM frpm WHERE county name = "Los Angeles" AND percent (%) eligible free (K-12) < 0.18 AND school type != "Charter"
SELECT school , city FROM schools WHERE charternum = "00D2"
SELECT count(*) FROM schools WHERE mailcity = "Hickman" AND charternum = "00D4"
SELECT count(*) , sum(charter_funding_type = "Locally") FROM schools WHERE county = "Santa Clara"
SELECT count(*) FROM schools WHERE opendate >= "2000-01-01" AND opendate <= "2005-12-31" AND county = "Stanislaus" AND fundingtype = "Direct"
SELECT sum(enroll12) FROM schools WHERE city = "San Francisco" AND closeddate LIKE "1989%" AND districttype = "Community College District"
SELECT T2.County FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.EdOpsCode = "CEA" AND T2.Academic Year LIKE "198%" GROUP BY T2.County ORDER BY count(*) DESC LIMIT 1
SELECT NCESDist FROM schools WHERE StatusType = "State Special School"
SELECT count(*) FROM schools WHERE county = "Alpine" AND statusype = "Closed" UNION SELECT count(*) FROM schools WHERE county = "Alpine" AND statusype = "Active"
SELECT district FROM schools WHERE city = "Fresno" AND magnet = 0
SELECT T2.enrollment (ages 5 - 17) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = "CA" AND T1.city = "Fremont" AND T1.school = "State Special School" AND T2.Academic Year = "2014-2015"
SELECT T2.FRPM Count (Ages 5 - 17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.MailStreet = "PO Box 1040" AND T2.Low Grade >= 5 AND T2.High Grade <= 17
SELECT lowgrade FROM frpm WHERE districtname = "District Special Education Consortia" AND districtcode = "0613360"
SELECT T2.EDOpsName FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.County Code = 37 AND T1.Breakfast Provision = 2
SELECT T2.city FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Merced" AND T1.lowscore = 9 AND T1.highscore = 12 AND T2.schooltype = "High School" AND T1.nslp_provision_status = 2
SELECT school , "Percent (%) Eligible FRPM (Ages 5-17)" FROM frpm WHERE county_name = "Los Angeles" AND low_grade = 0 AND high_grade = 9
SELECT gserved FROM schools WHERE city = "Adelanto" GROUP BY gserved ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM schools WHERE county = "San Diego" OR county = "Santa Barbara" AND virtual = 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT city , school FROM schools WHERE state = "CA" ORDER BY latitude LIMIT 1
SELECT max(longitude) , gsoffered FROM schools GROUP BY max(longitude)
SELECT count(*) , city FROM schools WHERE magnet = 1 AND gserved = "Kindergarten-8" GROUP BY city
SELECT admfname1 , nciesdist FROM schools GROUP BY admfname1 ORDER BY count(*) DESC LIMIT 2
SELECT T1.District Code FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AdmFName1 = "Alusine"
SELECT admlname1 , T1.district , T1.county , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.charternum = 40
SELECT admemail1 , admemail2 , admemail3 FROM schools WHERE county = "San Bernardino" AND city = "San Bernardino City Unified" AND opendate BETWEEN "2009-01-01" AND "2010-12-31" AND schooltype = "Public Intermediate/Middle" AND schooltype = "Unified"
SELECT T1.AdmEmail1 , T1.AdmEmail2 , T1.AdmEmail3 FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T2.NumGE1500 DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A3 = "East Bohemia") AND account_id IN (SELECT account_id FROM loan WHERE date > date);
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T3.district_id = T2.district_id WHERE T3.A2 = "Prague"
SELECT avg(amount) FROM loan WHERE date LIKE "1995%" UNION SELECT avg(amount) FROM loan WHERE date LIKE "1996%"
SELECT count(*) FROM client WHERE gender = 'F' AND avg(salary) BETWEEN 6000 AND 10000
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.A3 = 'North Bohemia' GROUP BY T1.district_id HAVING avg(T1.birth_date) > 8000
SELECT T2.account_id , max(T1.avg_sal) - min(T1.avg_sal) FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.district_id WHERE T1.gender = 'F' GROUP BY T1.client_id ORDER BY avg(T1.avg_sal) LIMIT 1
SELECT account_id FROM client ORDER BY birth_date DESC LIMIT 1
SELECT count(*) FROM client AS t1 JOIN disp AS t2 ON t1.client_id = t2.client_id JOIN account AS t3 ON t2.account_id = t3.account_id WHERE t3.frequency = "weekly" AND t1.gender = "Owner"
SELECT T2.client_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = "Disponent" INTERSECT SELECT T3.client_id FROM disp AS T3 JOIN card AS T4 ON T3.disp_id = T4.disp_id WHERE T4.issued = "Statement of issuance"
SELECT T1.account_id , T1.frequency FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1997%" ORDER BY T2.amount DESC LIMIT 1
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 12 INTERSECT SELECT account_id FROM account WHERE date LIKE "1993%"
SELECT count(*) FROM client AS t1 JOIN district AS t2 ON t1.district_id = t2.district_id WHERE t1.birth_date < 1950 AND t2.A3 = 'Sokolov' AND t1.gender = 'F'
SELECT account_id FROM trans WHERE date LIKE "1995%" ORDER BY date ASC LIMIT 1
SELECT DISTINCT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.date < '1997' AND T2.amount > 3000
SELECT T2.client_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.issued = "1994-03-03"
SELECT T1.date FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.amount = 840 AND T2.date = "1998-10-14"
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date = "1994-08-25"
SELECT max(T2.amount) FROM card AS T1 JOIN trans AS T2 ON T1.disp_id = T2.disp_id WHERE T1.issued = "1996-10-21"
SELECT T1.gender FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id JOIN district AS T3 ON T1.district_id = T3.district_id ORDER BY T3.AverageSalary DESC LIMIT 1
SELECT T1.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T2.date = (SELECT max(T2.date) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id)
SELECT count(*) FROM client AS t1 JOIN account AS t2 ON t1.client_id = t2.account_id JOIN district AS t3 ON t3.district_id = t2.district_id WHERE t3.A3 = "Jesenik" AND t1.gender = "female"
SELECT T2.disp_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T1.frequency = 5100 AND T1.date = "1998-09-02"
SELECT count(*) FROM account WHERE date LIKE "1996%" AND district_id IN (SELECT district_id FROM district WHERE A3 = "Litomerice")
SELECT T1.district_id FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id WHERE T1.birth_date = "1976-01-29" AND T1.gender = "female"
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T3.client_id WHERE T2.amount = 98832 AND T2.date = "1996-01-03"
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Prague" ORDER BY T1.date LIMIT 1
SELECT count(*) * 100 / (count(*) + count(DISTINCT client_id)) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "South Bohemia" AND T1.gender = "male"
SELECT balance_increase FROM trans WHERE date BETWEEN "1993-03-22" AND "1998-12-27" AND account_id IN (SELECT account_id FROM loan WHERE date = "1993-07-05" AND status = 'approved')
SELECT sum(amount) FROM loan WHERE status = 'Fully paid'
SELECT count(*) * 100.0 / (SELECT count(*) FROM loan WHERE amount < 100000) FROM loan WHERE amount < 100000 AND status = 'no_issue'
SELECT T1.account_id , T2.A1 , T2.A2 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date LIKE "1993%" INTERSECT SELECT T1.account_id , T2.A1 , T2.A2 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN trans AS T3 ON T1.account_id = T3.account_id WHERE T3.date > T1.date
SELECT T1.account_id , count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "east" AND T1.date LIKE "1995%" UNION ALL SELECT T1.account_id , count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "east" AND T1.date LIKE "2000%"
SELECT T1.account_id , T1.date FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Prachatice'
SELECT T2.district_id , T2.A2 FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.account_id WHERE T1.loan_id = 4990;
SELECT T1.account_id , T2.A2 , T2.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.district_id , avg(T2.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration = 60 GROUP BY T1.loan_id
SELECT T1.district_id , T1.A2 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'in debt' INTERSECT SELECT T1.district_id , T1.A2 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'approved'
SELECT count(*) * 100.0 / (SELECT count(*) FROM account WHERE date LIKE '1993%' ) FROM account WHERE date LIKE '1993%' AND district_id IN (SELECT district_id FROM district WHERE A3 LIKE '%Decin%')
SELECT account_id FROM account GROUP BY account_id HAVING count(*) = 12
SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 9
SELECT T1.A2 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'withdrawal' AND T3.date LIKE '1996-01-%' ORDER BY sum(T3.amount) DESC LIMIT 10
SELECT count(*) FROM client WHERE district_id NOT IN (SELECT T1.district_id FROM district AS T1 JOIN card AS T2 ON T1.district_id = T2.disp_id JOIN disp AS T3 ON T2.disp_id = T3.disp_id JOIN client AS T4 ON T3.client_id = T4.client_id WHERE T4.birth_date LIKE "1940%")
SELECT T1.A2 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'active' GROUP BY T1.A2 ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT avg(T2.amount) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M'
SELECT T1.branch_location , T2.A2 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.frequency = '1996' ORDER BY T2.A2 DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id IN ( SELECT district_id FROM ( SELECT T1.district_id , count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'withdrawal' AND T2.date LIKE '1996%' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1 ) AS T3 )
SELECT count(*) FROM account WHERE frequency = 'Monthly' AND balance < 0
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.date >= "1995-01-01" AND T2.date <= "1997-12-31" AND T1.amount >= 250000 AND T2.frequency = "Monthly" AND T1.status = "approved"
SELECT count(*) FROM loan WHERE status = 'running' INTERSECT SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM district WHERE a2 = 'Branch')
SELECT count(*) FROM client WHERE district_id IN ( SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.district_id WHERE T2.date LIKE "1995%" GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1 ) AND gender = 'M'
SELECT count(*) FROM card WHERE TYPE = "CREDIT" INTERSECT SELECT count(*) FROM disp WHERE TYPE = "OWNER"
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT T2.A2 FROM trans AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.amount > 10000 AND T1.date LIKE "1997%" GROUP BY T2.A2 HAVING sum(T1.amount) > 10000
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek" AND T1.account_id IN (SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN order AS T3 ON T1.account_id = T3.account_id WHERE T3.k_symbol = "household")
SELECT T2.account_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Gold'
SELECT avg(amount) FROM trans WHERE TYPE = 'creditcard' AND date LIKE "2021-%"
SELECT account_id FROM trans WHERE TYPE = 'credit' AND amount < (SELECT avg(amount) FROM trans WHERE TYPE = 'credit') AND date LIKE '1998%'
SELECT T1.client_id FROM client AS T1 JOIN card AS T2 ON T2.disp_id = disp.client_id JOIN loan AS T3 ON T3.account_id = account.account_id WHERE T1.gender = 'F'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'female' AND T2.A3 = 'South Bohemia'
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A2 = "Tabor" INTERSECT SELECT account_id FROM loan
SELECT T2.type FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T1.account_id = T3.account_id GROUP BY T2.type HAVING avg(T2.A2) > 8000 AND avg(T2.A2) <= 9000
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN trans AS T3 ON T1.account_id = T3.account_id WHERE T2.A3 = "North Bohemia" AND T3.bank = "AB"
SELECT T1.A2 FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.type = 'withdrawal'
SELECT avg(T1.number_of_crimes) FROM crimes AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T2.district_id = T3.district_id WHERE T1.year = 1995 AND T1.number_of_crimes > 4000 AND T3.date LIKE "1997%"
SELECT count(*) FROM card WHERE TYPE = 'classic' AND card_id IN (SELECT card_id FROM loan)
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'male' AND T2.A3 = 'Hl.m. Praha'
SELECT count(*) * 100.0 / (SELECT count(*) FROM card WHERE TYPE = 'Gold') FROM card WHERE TYPE = 'Gold' AND issued < 1998
SELECT T1.client_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.type = 'committed crime' AND T2.date LIKE '1995%' AND T2.account_id = 532
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT amount FROM trans WHERE TYPE = 'withdrawal' AND account_id IN (SELECT account_id FROM disp WHERE client_id = 3356)
SELECT count(*) FROM loan WHERE amount < 200000
SELECT T2.type FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T3.client_id = T1.client_id WHERE T3.client_id = 13539
SELECT T1.A4 FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.district_id WHERE T2.status = 'no problems' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.client_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN order AS T3 ON T3.account_id = T1.account_id WHERE T3.order_id = 32423
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A3 = "Jesenik"
SELECT DISTINCT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN card AS T3 ON T2.card_id = T3.card_id WHERE T3.type = 'junior' AND T3.issued > 1996
SELECT count(*) * 100.0 / (SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id JOIN district AS T3 ON T3.district_id = T2.district_id GROUP BY T3.district_id HAVING avg(T3.A10) > 10000) FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id JOIN district AS T3 ON T3.district_id = T2.district_id GROUP BY T3.district_id HAVING avg(T3.A10) > 10000 AND T1.gender = 'W'}
SELECT sum(amount) / avg(sum(amount)) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T3.client_id = T2.client_id WHERE T3.gender = 'M' AND T2.date LIKE '1996%' UNION SELECT sum(amount) / avg(sum(amount)) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T3.client_id = T2.client_id WHERE T3.gender = 'M' AND T2.date LIKE '1997%'
SELECT count(*) FROM trans WHERE TYPE = "withdrawal" AND date LIKE "1995%"
SELECT count(*) FROM district WHERE district_id IN ( SELECT district_id FROM account WHERE date = '1996' ) AND A2 = 'East' , count(*) FROM district WHERE district_id IN ( SELECT district_id FROM account WHERE date = '1996' ) AND A2 = 'North'
SELECT count(*) FROM disp WHERE account_id BETWEEN 1 AND 10;
SELECT sum(amount) , account_id FROM trans WHERE TYPE = 'debit' AND account_id = 3539 UNION SELECT count(*) , account_id FROM account WHERE account_id = 3
SELECT birth_date FROM client ORDER BY birth_date DESC LIMIT 1
SELECT count(*) FROM disp WHERE TYPE = "owner" INTERSECT SELECT count(*) FROM loan WHERE status = "approved"
SELECT sum(T2.amount) , count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T3.client_id = T4.client_id WHERE T3.client_id = 992
SELECT sum(T2.balance) , T1.gender FROM client AS T1 JOIN trans AS T2 ON T1.client_id = T2.client_id WHERE T2.trans_id = 851 AND T2.account_id IN (SELECT account_id FROM trans WHERE balance > (SELECT max(balance) FROM trans WHERE trans_id = 851)) GROUP BY T1.gender
SELECT T3.type FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T1.client_id = 9
SELECT sum(amount) FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T3.client_id = T2.district_id WHERE T3.client_id = 617 AND T1.date LIKE "1998%"
SELECT T1.client_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "East" AND T1.birth_date BETWEEN 1983 AND 1987
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'F' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'M' AND T1.birth_date LIKE '1974%' AND T2.amount > 4000
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A3 = "Beroun") AND date >= "1997-01-01"
SELECT count(*) FROM client AS t1 JOIN card AS t2 JOIN disp AS t3 ON t1.client_id = t3.client_id AND t3.disp_id = card.disp_id WHERE t1.gender = 'F' AND card.type = 'Junior'
SELECT count(*) FROM client WHERE gender = 'female' AND client_id IN (SELECT T1.client_id FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T3.district_id = T2.district_id WHERE T3.A3 = 'Prague')
SELECT count(*) * 100.0 / (SELECT count(*) FROM client WHERE gender = 'male') FROM client WHERE gender = 'male' AND client_id IN (SELECT client_id FROM disp WHERE TYPE = 'weekly')
SELECT count(*) FROM client WHERE gender = 'Owner' AND client_id IN ( SELECT T1.client_id FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'Weekly' )
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 INTERSECT SELECT account_id FROM account WHERE date < '1997'
SELECT T2.account_id FROM client AS T1 JOIN account AS T2 ON T1.client_id = disp.client_id AND T2.account_id = disp.account_id WHERE T1.gender = 'F' ORDER BY T1.birth_date DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date LIKE "1920%" AND T2.A6 = "East"
SELECT count(*) FROM loan WHERE duration = 24 INTERSECT SELECT count(*) FROM account WHERE frequency = 'Weekly'
SELECT avg(T2.amount) , T1.trans_id FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'running'
SELECT client_id , district_id FROM client EXCEPT SELECT client_id , district_id FROM loan
SELECT T1.client_id , T2.age FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN card AS T3 ON T3.disp_id = T4.disp_id WHERE T3.type = 'Credit Card'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element = "Cl" AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = "non-carcinogenic")
SELECT avg(T3.element) FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T1.bond_type = 'single'
SELECT avg(T2.bond_type) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogen' AND T2.bond_type = 1
SELECT count(*) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.element = "Na" EXCEPT SELECT count(*) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id JOIN molecule AS t3 ON t2.molecule_id = t3.molecule_id WHERE t2.element = "Na" AND t3.label = "carcinogenic"
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 3 INTERSECT SELECT T2.label FROM molecule AS T2 JOIN atom AS T1 ON T2.molecule_id = T1.molecule_id WHERE T1.element = "C"
SELECT avg(T1.mass_fraction) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T1.element = "C"
SELECT count(*) FROM bond WHERE bond_type = 3
SELECT count(*) FROM atom WHERE element != "Br"
SELECT count(*) FROM molecule WHERE label = 'carcinogenic' LIMIT 100
SELECT DISTINCT molecule_id FROM atom WHERE element = "C"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = "TR004_8_9"
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double"
SELECT label FROM molecule GROUP BY label ORDER BY count(*) DESC LIMIT 1
SELECT T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Cl"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = 'single'
SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'non-carcinogenic' UNION SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'non-carcinogenic'
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM molecule EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT T2.bond_type FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = "TR004_8" AND T1.atom_id2 = "TR004_20"
SELECT label FROM molecule EXCEPT SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "Sn"
SELECT count(*) FROM atom WHERE element = "I" INTERSECT SELECT count(*) FROM atom WHERE element = "S"
SELECT T1.atom_id , T1.atom_id2 FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = 3
SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR181' UNION SELECT T3.atom_id FROM atom AS T3 JOIN molecule AS T4 ON T3.molecule_id = T4.molecule_id WHERE T4.label = 'TR181'
SELECT count(*) * 100.0 / (SELECT count(*) FROM molecule WHERE label = 'carcinogen') FROM molecule WHERE label = 'carcinogen' EXCEPT SELECT count(*) * 100.0 / (SELECT count(*) FROM molecule WHERE label = 'carcinogen') FROM molecule WHERE label = 'carcinogen' INTERSECT SELECT count(*) * 100.0 / (SELECT count(*) FROM molecule WHERE label = 'carcinogen') FROM molecule WHERE label = 'carcinogen' AND molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'F')
SELECT count(*) FROM molecule JOIN bond ON molecule.molecule_id = bond.molecule_id WHERE bond.bond_type = "Triple" AND molecule.label = "carcinogenic"
SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR000') GROUP BY element ORDER BY element LIMIT 3
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = "TR001_2_6" AND T1.molecule_id = "TR001" UNION SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.bond_id = "TR001_2_6" AND T1.molecule_id = "TR001"
SELECT count(*) - count(*) FROM molecule WHERE label = 'carcinogen'
SELECT atom_id FROM connected WHERE bond_id = "TR000_2_5"
SELECT bond_id FROM connected WHERE atom_id2 = 2 INTERSECT SELECT bond_id FROM connected WHERE atom_id = 2
SELECT T3.label FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T1.bond_type = "Double" ORDER BY T3.label LIMIT 5
SELECT count(*) FROM bond WHERE molecule_id = 8016 AND bond_type = 2
SELECT count(*) * 100.0 / (SELECT count(*) FROM molecule) FROM molecule WHERE label = "carcinogenic"
SELECT count(*) * 100 / sum(element = 'H') FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR206'
SELECT bond_type FROM bond WHERE molecule_id = "TR000"
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR060"
SELECT T2.bond_type , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR010" GROUP BY T2.bond_type ORDER BY count(*) DESC LIMIT 1
SELECT T3.label FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T1.bond_type = "single" INTERSECT SELECT label FROM molecule EXCEPT SELECT label FROM molecule WHERE label = "carcinogenic" ORDER BY label LIMIT 3
SELECT T2.bond_type FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR006' ORDER BY T2.bond_type LIMIT 2
SELECT count(*) FROM molecule AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id JOIN connected AS t3 ON t2.bond_id = t3.bond_id WHERE t3.atom_id = 12 AND t1.label = "TR009"
SELECT count(*) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.element = "Br" AND t1.label = "carcinogen"
SELECT T2.bond_type , T3.atom_id , T4.atom_id2 FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = "TR001_6_9"
SELECT T3.label , T3.carcinogenic FROM atom AS T1 JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.atom_id = "TR001_10"
SELECT count(*) FROM bond WHERE bond_type = "triple"
SELECT count(*) FROM connected WHERE atom_id = 19
SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = "TR004")
SELECT count(*) FROM molecule WHERE label != "carcinogenic"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element >= 21 AND T1.element <= 25 INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 26
SELECT T1.bond_type FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id JOIN atom AS T4 ON T2.atom_id2 = T4.atom_id WHERE T3.element = "P" AND T4.element = "N"
SELECT t1.label FROM molecule AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.bond_type = "Double" GROUP BY t1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T3.bond_type) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = "I"
SELECT T2.bond_type , T3.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE T2.atom_id = 45
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 3 AND T2.molecule_id = "TR041"
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR144_8_19"
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" GROUP BY T2.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogen' GROUP BY T1.element ORDER BY count(*) ASC LIMIT 1
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T3.element = 'lead'
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "Triple"
SELECT count(*) , percentage FROM atom GROUP BY element ORDER BY percentage DESC LIMIT 1
SELECT count(*) FROM bond WHERE bond_type = "single" INTERSECT SELECT count(*) FROM molecule WHERE label = "carcinogenic"
SELECT count(*) FROM atom WHERE element = "C" OR element = "H"
SELECT T1.atom_id2 FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = 'S'
SELECT T3.bond_type FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = "Tin"
SELECT count(*) FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single'
SELECT sum(T1.element = 'P' OR T1.element = 'Br') FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'triple'
SELECT T1.bond_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT T2.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "single" EXCEPT SELECT molecule_id FROM molecule WHERE label = "carcinogenic"
SELECT sum(element = "Cl") * 100.0 / count(*) FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 1)
SELECT label FROM molecule WHERE molecule_id IN ('TR000', 'TR001', 'TR002')
SELECT molecule_id FROM molecule EXCEPT SELECT molecule_id FROM molecule WHERE label = "carcinogenic"
SELECT sum(label) FROM molecule WHERE molecule_id >= "TR000" AND molecule_id <= "TR030"
SELECT bond_type FROM bond WHERE molecule_id LIKE "TR%" AND molecule_id >= "TR000" AND molecule_id <= "TR050"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = "TR001_10_11" UNION SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE T2.bond_id = "TR001_10_11"
SELECT count(*) FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.element = "I"
SELECT avg(label) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.element = "Calcium"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T2.molecule_id = T1.molecule_id JOIN connected AS T3 ON T3.bond_id = T2.bond_id WHERE T1.element = 'Cl' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T2.molecule_id = T1.molecule_id JOIN connected AS T3 ON T3.bond_id = T2.bond_id WHERE T1.element = 'C'
SELECT T2.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T3.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple" AND T3.element = "C" EXCEPT SELECT molecule_id FROM molecule WHERE label = "carcinogenic" LIMIT 2
SELECT avg(T1.element) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogen' AND T1.element = 'Cl'
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR001' AND T1.element = 'Toxicology'
SELECT molecule_id FROM bond WHERE bond_type = "Double"
SELECT T1.atom_id , T1.atom_id2 FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_type = 3 ORDER BY T1.atom_id LIMIT 2
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_id = "TR000_1_2"
SELECT count(*) FROM molecule WHERE label = "non-carcinogenic" INTERSECT SELECT count(*) FROM bond WHERE bond_type = "single"
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR001_10_11"
SELECT T1.bond_id , T3.label FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T1.bond_type = "Triple"
SELECT count(*) FROM atom WHERE molecule_id IN ( SELECT molecule_id FROM molecule WHERE label = 'carcinogenic' ) AND atom_id = 4 AND element = 'toxicology'
SELECT sum(element = "H") / count(*) FROM atom WHERE molecule_id = "TR006"
SELECT count(*) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.element = "Ca" INTERSECT SELECT count(*) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.element = "Ca" AND t1.label = "carcinogenic"
SELECT T2.bond_type FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.element = "C"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = "TR001_10_11"
SELECT count(*) * 100 / (SELECT count(*) FROM molecule) FROM bond WHERE bond_type = 3
SELECT count(*) FROM molecule AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.label = "TR047" AND t2.bond_type = "Double"
SELECT T3.label FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T1.element = "TR001_1" AND T3.label = "carcinogenic"
SELECT label FROM molecule WHERE label = "TR151"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR151' AND T1.element = 'Pb'
SELECT count(*) FROM molecule WHERE label = "carcinogenic"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label BETWEEN "TR010" AND "TR050" AND T1.element = "C"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT T2.bond_id FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic' AND T2.bond_type = 'double'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "hydrogen" AND T1.label = "carcinogenic compound"
SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.bond_type = "TR000_1_2" AND T2.element = "TR000_1"
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" EXCEPT SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.bond_type = "carcinogenic"
SELECT count(*) * 100.0 / (SELECT count(*) FROM atom WHERE element = 'H') FROM atom WHERE element = 'C'
SELECT label FROM molecule WHERE label = "TR124"
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR186'
SELECT avg(t3.bond_type) FROM molecule AS t1 JOIN connected AS t2 ON t1.molecule_id = t2.molecule_id JOIN bond AS t3 ON t2.bond_id = t3.bond_id WHERE t1.label = "TR007_4_19"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.label = "TR001_2_4"
SELECT count(*) , label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR006' AND bond_type = 2 UNION SELECT count(*) , label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR006' AND bond_type = 3
SELECT T1.label , T2.element FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "carcinogen"
SELECT t3.label , t2.atom_id , t2.atom_id2 FROM bond AS t1 JOIN connected AS t2 ON t1.bond_id = t2.bond_id JOIN molecule AS t3 ON t3.molecule_id = t1.molecule_id WHERE t1.bond_type = 'single'
SELECT T3.label , T2.element FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T3.molecule_id AND T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.bond_type = "triple"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = "TR000_2_3"
SELECT count(*) FROM atom AS t1 JOIN connected AS t2 ON t1.atom_id = t2.atom_id JOIN bond AS t3 ON t2.bond_id = t3.bond_id WHERE t1.element = "Cl"
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR346" GROUP BY T1.atom_id
SELECT count(*) FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = "Double" ) AND label = "carcinogenic compound"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN ( SELECT molecule_id FROM atom WHERE element = 'S' ) EXCEPT SELECT count(*) FROM molecule WHERE molecule_id IN ( SELECT molecule_id FROM bond WHERE bond_type = 'double' )
SELECT label FROM molecule WHERE molecule_id = "TR001_2_4"
SELECT count(*) FROM atom WHERE molecule_id = "TR001"
SELECT count(*) FROM bond WHERE bond_type = "single"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Cl" INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" EXCEPT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "C" AND T2.label = "carcinogenic"
SELECT count(*) * 100.0 / (SELECT count(*) FROM atom WHERE element = 'Chlorine') FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'Carcinine'
SELECT molecule_id FROM bond WHERE bond_id = "TR001_1_7"
SELECT count(*) FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T2.bond_id = "TR001_3_4"
SELECT T2.bond_type FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE T1.atom_id = "TR000_1" AND T1.atom_id2 = "TR000_2"
SELECT T1.molecule_id FROM atom AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = "TR000_2" AND T2.atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT label FROM molecule WHERE molecule_id = "TR000"
SELECT count(*) , count(DISTINCT molecule_id) FROM bond WHERE bond_type = "single"
SELECT count(*) FROM atom WHERE element = "N"
SELECT T3.label FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T3.molecule_id = T1.molecule_id WHERE T1.element = "S" AND T2.bond_type = "double"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label != 'carcinogen' INTERSECT SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.molecule_id HAVING count(*) > 5
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T2.molecule_id = 24 AND T2.bond_type = "double"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT count(*) * 100.0 / (SELECT count(*) FROM molecule WHERE label = 'carcinogen') FROM molecule WHERE label = 'carcinogen' INTERSECT SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.bond_type = 'triple' AND T2.element = 'H'
SELECT count(*) FROM molecule WHERE label = "carcinogenic"
SELECT count(*) FROM bond WHERE molecule_id IN ( SELECT molecule_id FROM molecule WHERE label BETWEEN "TR004" AND "TR010" ) AND bond_type = "SINGLE"
SELECT count(*) FROM atom WHERE molecule_id = "TR008" AND element = "C"
SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = "carcinogenic")
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.bond_type = "DOUBLE" AND T2.element = "O"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN ( SELECT molecule_id FROM bond WHERE bond_type = 3 ) AND label = 'carcinogenic'
SELECT T2.element , T2.bond_type FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T1.bond_id = T3.bond_id WHERE T3.molecule_id = "TR002"
SELECT T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T3.molecule_id = T2.molecule_id WHERE T3.label = "TR012" AND T2.bond_type = "double" AND T1.element = "C"
SELECT atom_id FROM atom WHERE element = "O" INTERSECT SELECT T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE label = "carcinogen"
SELECT * FROM cards WHERE hasFoil = 1
SELECT name FROM cards WHERE isFoil = 0 AND hasFoil = 0
SELECT name FROM cards WHERE convertedManaCost > faceConvertedManaCost
SELECT name FROM cards WHERE originalReleaseDate = "2015" AND edhrecRank < 100
SELECT T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "Gladiator" AND T1.rarity = "Mythic" AND T2.status = "Banned"
SELECT T1.id , T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "Vintage" AND T1.id NOT IN (SELECT id FROM cards WHERE otherFaceIds != ")")
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "Commander" AND T1.power = "unknown"
SELECT T1.id , T2.text , T1.hasFoil , T1.hasNonFoil FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Stephen Daniel"
SELECT T1.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = '74s'
SELECT T1.name , T1.artist , T1.isPromo FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T2.uuid ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.id = T2.id WHERE T1.name = "Annul" AND T1.number = "29"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) , 100 * count(*) / (SELECT count(*) FROM cards) AS availability FROM cards WHERE id IN (SELECT id FROM foreign_data WHERE language = "Chinese - Simplified")
SELECT T1.totalSetSize , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "Italian"
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd";
SELECT keywords FROM cards WHERE name = "Angel of Mercy";
SELECT count(*) FROM cards WHERE power = "infinity"
SELECT promoTypes FROM cards WHERE name = "Duress"
SELECT border_color FROM cards WHERE name = "Ancestor's Chosen";
SELECT originalType FROM cards WHERE name = "Ancestor's Chosen"
SELECT T1.language FROM set_translations AS T1 JOIN cards AS T2 ON T1.setCode = T2.setCode WHERE T2.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.id = T2.id WHERE T2.status = 'Restricted' AND T1.isTextless = false
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Condemn"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.id = T2.id WHERE T2.status = 'Restricted' AND T1.isStarter = 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE name = "Benalish Knight"
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Benalish Knight"
SELECT artist FROM cards WHERE setcode = "Phyrexian"
SELECT count(*) * 100 / (SELECT count(*) FROM cards) FROM cards WHERE bordercolor = ""
SELECT count(*) FROM cards WHERE isReprint = 1 AND id IN (SELECT id FROM foreign_data WHERE language = 'German')
SELECT count(*) FROM cards WHERE isBorderless = 1 AND name = "Russian";
{"sql": "SELECT count(*) , '%'" FROM cards WHERE isStorySpotlight = 1 AND language = \"French\""}
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = "Aaron Boyd";
SELECT count(*) FROM cards WHERE borderColor = "Black" AND availability = "mtgo"
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT DISTINCT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND types != "Angel"
SELECT id FROM cards WHERE hasFoil = 1 AND power > 4 INTERSECT SELECT id FROM cards WHERE hasFoil = 0 AND power > 4
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Chinese"
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T3.code WHERE T3.name = "paper" AND T2.language = "Japanese"
SELECT count(*) FROM cards WHERE is_banned = 1 AND border_color = "white"
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.isLegacy = 1
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Beacon of Immortality"
SELECT count(*) , T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = "Future" GROUP BY T1.status
SELECT colorIdentity FROM cards WHERE setCode = "OGW"
SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "English" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "German" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "French" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Spanish" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Japanese" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Chinese" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Korean" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Italian" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Russian" UNION SELECT T1.id , T1.setCode , T1.conversion FROM cards AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.conversion = 5 AND T2.language = "Portuguese"
SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.originalType = "Creature - Elf"
SELECT T1.colors , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.id BETWEEN 1 AND 20
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.borderColor = "Black" AND T2.language != "English"
SELECT T1.name FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "uncommon" ORDER BY T2.date ASC LIMIT 3
SELECT count(*) FROM cards WHERE artist = "John Avon" AND hasFoil = 1 AND power = "";
SELECT count(*) FROM cards WHERE borderColor = "white" AND power > 2
SELECT count(*) FROM cards WHERE artist = "UDON" AND availability = "mtgo" AND hand = -1
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND availability = "Paper" AND hasContentWarning = 1;
SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "Black" AND availability = "paper" INTERSECT SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "Black" AND availability = "mtgo"
SELECT sum(manaCost) FROM cards WHERE name = "Rob Alexander"
SELECT DISTINCT types FROM cards
SELECT setCode FROM set_translations WHERE language = "Spanish"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE frameEffects = 'legendary') FROM cards WHERE frameEffects = 'legendary' AND isOnlineOnly = 1
SELECT id , isTextless FROM cards WHERE isStorySpotlight = 1 AND isTextless = 1
SELECT count(*) , name FROM cards WHERE name LIKE "%Spanish%" GROUP BY name
SELECT T1.language FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.baseSetSize = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Portuguese (Brazil)" AND T1.block = "Commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "Legal" AND T1.types LIKE "%Creature%"
SELECT TYPE FROM cards UNION SELECT TYPE FROM foreign_data WHERE language = 'German'
SELECT count(*) FROM cards WHERE power = "?" AND text LIKE "%triggered%"
SELECT count(*) FROM cards WHERE id IN ( SELECT T1.id FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "This is a triggered mana ability." ) AND id NOT IN ( SELECT T1.id FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.otherFaceIds ) AND setcode = "X"
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper" AND setcode = "pauper"
SELECT artist FROM cards WHERE flavorText = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT t1.name FROM cards AS t1 JOIN foreign_data AS t2 ON t1.uuid = t2.uuid JOIN sets AS t3 ON t1.setCode = t3.setCode WHERE t1.borderColor = "Black" AND t1.layout = "normal" AND t1.type = "Creature" AND t3.name = "Legends" AND t2.language = "French" AND t1.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards WHERE date = "2007-01-02" AND rarity != "common"
SELECT T1.language FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.block = 'Ravnica' AND T2.baseSetSize = 180
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards AS t1 JOIN legalities AS t2 ON t1.id = t2.uuid WHERE t2.format = "Commander" AND t2.status = "Legal") FROM cards AS t1 JOIN legalities AS t2 ON t1.id = t2.uuid WHERE t2.format = "Commander" AND t2.status = "Legal" AND t1.hasContentWarning = "false"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE power = '') FROM cards WHERE power != "null"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Japanese" AND T1.type = "Expansion"
SELECT printings FROM cards WHERE artist = "Daren Bader";
SELECT count(*) FROM cards WHERE edhrecrank < 12000 AND bordercolor = "null"
SELECT count(*) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1
SELECT name FROM cards WHERE isPromo = 1 AND power = "unknown" AND setCode = "Ara" ORDER BY name ASC LIMIT 3
SELECT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId , cardKingdomId ASC LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT id FROM cards WHERE subtypes = "Angel" AND subtypes = "Wizard"
SELECT name FROM sets WHERE isOnlineOnly = 0 ORDER BY name ASC LIMIT 3
SELECT T1.language FROM set_translations AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T2.setCode = 'ARC' INTERSECT SELECT T1.language FROM set_translations AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T2.setCode = 'ARCN'
SELECT T1.name , T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 5
SELECT T1.language , T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "English" AND T1.id = 206
SELECT T2.id FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Italian" AND T1.block = "Shadowmoor" ORDER BY T2.translation ASC LIMIT 2
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T1.isForeignOnly = 1 AND T2.name LIKE "%Jap%" AND T1.name NOT LIKE "%United States%"
SELECT T1.name FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T1.name = "Russia" ORDER BY T1.totalSetSize DESC LIMIT 1
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE set_id IN ( SELECT id FROM sets WHERE is_online_only = 1 )) FROM cards WHERE set_id IN ( SELECT id FROM sets WHERE is_online_only = 1 ) AND language = "Chinese (Simplified)"
SELECT count(*) FROM sets WHERE TYPE = 'Japan' AND isOnlineOnly = 0
SELECT id FROM cards WHERE borderColor = "Black"
SELECT id FROM cards WHERE frameEffects LIKE '%extended art%'
SELECT name FROM cards WHERE isFullArt = 1 AND borderColor = "Black"
SELECT language FROM set_translations WHERE id = 174;
SELECT T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = "All"
SELECT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "A Pedra Fellwar"
SELECT code FROM sets WHERE releaseDate = "Jul/13/2007"
SELECT baseSetSize , code FROM sets WHERE block = "Masques" OR block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT T1.name , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = "boros"
SELECT T1.language , T1.flavorText , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = "colorpie"
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE setCode = "ABY") FROM cards WHERE setCode = "ABY" AND convertedManaCost = 10
SELECT code FROM sets WHERE TYPE = "Commander"
SELECT T1.name , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = "Abzan"
SELECT T1.types , T1.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = "azorius"
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power > 4
SELECT count(*) FROM cards WHERE availability = "Paper" AND hand > 0
SELECT name FROM cards WHERE isTextless = 0
SELECT manaCost FROM cards WHERE name = "Ancestor's Chosen";
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT name FROM cards WHERE isPromo = 1 AND otherFaceIds != ""
SELECT types FROM cards WHERE name = "Molimo , Maro-Sorcerer"
SELECT purchaseurls FROM cards WHERE promoTypes = "bundle"
SELECT artist FROM cards WHERE borderColor = "Black" AND availability = "both" AND availability = "mtgo" INTERSECT SELECT artist FROM cards WHERE borderColor = "Black" AND availability = "both" AND availability = "arena"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" UNION SELECT convertedManaCost FROM cards WHERE name = "Shrine Keeper"
SELECT artist FROM cards WHERE name = "Battra , Dark Destroyer"
SELECT name FROM cards WHERE frame "-" 2003 ORDER BY convertedManaCost DESC LIMIT 3
SELECT translation FROM set_translations WHERE language = "Italian" AND setCode IN (SELECT T1.setCode FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = "Ancestor's Chosen")
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = "Angel of Mercy"
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Hauptset Zehnte Edition"
SELECT count(*) FROM cards AS t1 JOIN foreign_data AS t2 ON t1.uuid = t2.uuid WHERE t1.name = "Ancestor's Chosen" AND t2.language = "Korean"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Hauptset Zehnte Edition" AND T1.artist = "Adam Rex"
SELECT baseSetSize FROM sets WHERE name = "Hauptset Zehnte Edition"
SELECT translation FROM set_translations WHERE setCode IN (SELECT code FROM sets WHERE name = "Eighth Edition") AND language = "zh"
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = "Angel of Mercy" AND T2.isOnlineOnly = 1
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = "Ancestor's Chosen";
SELECT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setcode = T2.code WHERE T2.isForeignOnly = 1 AND T1.name = "Adarkar Valkyrie"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Italian" AND T1.baseSetSize < 100
SELECT count(*) FROM cards WHERE set_code = "Coldsnap" AND border_color = "Black"
SELECT name FROM cards WHERE setcode = "Coldsnap" ORDER BY convertedmanaCost DESC LIMIT 1
SELECT count(*) FROM cards WHERE artist = "Jeremy Jarvis" OR artist = "Aaron Miller" OR artist = "Chippy" AND setcode = "Coldsnap"
SELECT id FROM cards WHERE setCode = "Coldsnap" AND number = 4
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power = "?" AND setCode = "Coldsnap"
SELECT T1.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Italian" AND T1.name = "Ancestor's Chosen"
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Ancestor's Chosen"
SELECT TYPE FROM cards WHERE name = "Ancestor's Chosen"
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T2.setGuid WHERE T3.name = 'Coldsnap' AND T1.language = 'it'
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN set_translations AS T3 ON T2.id = T3.id WHERE T3.language = "Italian" AND T2.name = "Coldsnap" ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT T1.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Reminisce'
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE setCode = "Coldsnap" AND convertedManaCost = 7) FROM cards WHERE setCode = "Coldsnap" AND convertedManaCost = 7
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE setcode = "Coldsnap") FROM cards WHERE setcode = "Coldsnap" AND power > 4
SELECT T1.code FROM sets AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.releaseDate = "2017/7/14"
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT T1.mcmId FROM sets AS T1 JOIN cards AS T2 ON T1.id = T2.cardkingdomid WHERE T2.setCode = 'SS2'
SELECT T1.mcmName FROM sets AS T1 JOIN cards AS T2 ON T1.mcmId = T2.mcmId WHERE T1.releaseDate = "2017-06-09"
SELECT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = "From the Vault: Lore"
SELECT T1.parentCode FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = "Commander 2014 Oversized"
SELECT T1.text , T2.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = "Evacuation"
SELECT sum(t1.baseSetSize) FROM sets AS t1 JOIN text AS t2 ON t1.id = t2.id WHERE t2.name = "Rinascita di Alara"
SELECT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.translation = "Huitième édition"
SELECT translation FROM set_translations WHERE language = "French" AND setCode IN (SELECT T1.setCode FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name = "Tendo Ice Bridge")
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Tenth Edition"
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setcode = T2.code JOIN cards AS T3 ON T3.setcode = T2.code WHERE T3.name = "Fellwar Stone" AND T1.language = "Japanese"
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'Journey into Nyx Hero's Path' ORDER BY T1.convertedManaCost DESC LIMIT 1
SELECT releaseDate FROM sets WHERE name = "Ola de frío"
SELECT T1.type FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.name = "Samite Pilgrim"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = 'World Championship Decks 2004' AND T1.convertedManaCost = '3'
SELECT translation FROM set_translations WHERE language = "Chinese (Simplified)" AND sets.code = "Mirrodin"
SELECT count(*) * 100 / ( SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.id WHERE T2.language = "Japanese" ) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.id WHERE T2.language = "Japanese" AND T1.hasFoil = 0
SELECT count(*) , count(T1.id) FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN set_translations AS T3 ON T3.setCode = T2.code WHERE T3.translation = "Brazil" AND T1.isOnlineOnly = 1;
SELECT printings FROM cards WHERE id NOT IN ( SELECT id FROM cards WHERE text LIKE "%Aleksi Briclot%" )
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT artist FROM cards WHERE colorIdentity != "" AND hasAlternativeDeckLimit != 1 AND convertedManaCost != ( SELECT max(convertedManaCost) FROM cards WHERE colorIdentity != "" AND hasAlternativeDeckLimit != 1 ) ORDER BY convertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE hasFoil = 1 AND rarity = 'Ultra Rare' GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = "unknown" AND hasFoil = 0 AND duelDeck = "A"
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T1.type = 'Commander' UNION SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.setCode WHERE T2.isPromo = 1 AND T1.type != 'Commander' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM cards ORDER BY convertedManaCost DESC LIMIT 10
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.originalReleaseDate LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T1.setId WHERE T3.name = "French"
SELECT count(*) FROM cards WHERE rarity = "Rare" AND id IN (SELECT id FROM legalities WHERE status = "Legal" AND format = "Standard")
SELECT T1.format , T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.id = T2.id WHERE T2.status = 'Banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Battlebond"
SELECT T1.format FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid GROUP BY T2.artist ORDER BY count(*) ASC LIMIT 1
SELECT T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T1.setCode = T3.setCode WHERE T3.releaseDate = 1997 AND T1.name = "D. Alexander Gregory" AND T1.hasContentWarning = 1 INTERSECT SELECT T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T1.setCode = T3.setCode WHERE T3.releaseDate = 1997 AND T1.name = "D. Alexander Gregory" AND T1.hasContentWarning = 1 AND T2.format = "Legacy"
SELECT name FROM cards WHERE edhrecRank = 1
SELECT avg(baseSetSize) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.releaseDate BETWEEN "2012-01-01" AND "2015-12-31" AND T2.language = "English";
SELECT artist FROM cards WHERE borderColor = "Black" AND availability = "arena"
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.id = T2.id WHERE T2.format = "Old School" AND T2.status = "Banned" OR T2.format = "Old School" AND T2.status = "Restricted"
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND availability = "Paper"
SELECT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T1.set_id WHERE T3.name = "Hour of Devastation"
SELECT T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = 'Japanese' EXCEPT SELECT T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = 'Korean'
SELECT T1.frameVersion , T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.name LIKE "%Allen Williams%" INTERSECT SELECT T1.frameVersion , T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T3.status = "Banned"
SELECT DisplayName FROM USERS WHERE DisplayName = "Harlan" UNION SELECT DisplayName FROM USERS WHERE DisplayName = "Jarrod Dixon"
SELECT DisplayName FROM users WHERE CreationDate LIKE "2011%"
SELECT count(*) FROM users WHERE LastAccessDate > "2014-09-01"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.DisplayName ORDER BY SUM(T2.ViewCount) DESC LIMIT 1
SELECT count(*) FROM users WHERE UpVotes > 100 AND DownVotes > 1
SELECT count(*) FROM users WHERE creationdate > "2013" AND views > 10
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "csgillespie"
SELECT Title FROM posts WHERE OwnerUserId = (SELECT Id FROM users WHERE DisplayName = 'csgillespie')
SELECT OwnerDisplayName FROM posts WHERE Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE owneruserid = 126667 ORDER BY viewcount DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid ORDER BY T2.score DESC LIMIT 1
SELECT sum(commentcount) FROM posts WHERE owneruserid = 12675
SELECT answercount FROM posts WHERE owneruserid = 24184 ORDER BY answercount DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.LastEditorUserId WHERE T2.Title = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts WHERE owneruserid = 126308 AND parentid = 0
SELECT DISTINCT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.ownerdisplayname != ""
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.age > 18 AND T1.score > 19
SELECT T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = "Eliciting priors from experts"
SELECT T2.body FROM tags AS T1 JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T1.tagname = "bayesian"
SELECT T1.body FROM posts AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid ORDER BY T2.count DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'csgillespie'
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "csgillespie"
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.date LIKE "2011%" AND T2.displayname = "csgillespie"
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T1.score) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "csgillespie"
SELECT avg(T2.badgecount) FROM (SELECT T1.id , T1.viewcount FROM posts AS T1 JOIN badges AS T2 ON T1.id = T2.postid WHERE T1.viewcount > 200 GROUP BY T1.id HAVING count(*) >= 3) AS T3 JOIN badges AS T4 ON T3.id = T4.postid
SELECT count(*) * 100.0 / (SELECT count(*) FROM posts WHERE score > 5) FROM posts WHERE owneruserid IN (SELECT id FROM users WHERE age > 13) AND score > 5
SELECT COUNT(*) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.id = 58 AND T1.creationdate = "2010-07-19"
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN tags AS T2 ON T1.name = T2.tagname WHERE T2.tagname = "Revival"
SELECT T1.title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid ORDER BY T2.score DESC LIMIT 1
SELECT CommentCount FROM posts WHERE ViewCount = 1910
SELECT T1.favoritecount FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userid = 3025 AND T2.creationdate = "2014-04-23 20:29:39"
SELECT text FROM comments WHERE postid = 107829
SELECT T1.Title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T2.userid = T3.id WHERE T3.DisplayName = "User No. 23853" AND T2.creationdate = "2013-07-12 09:08:18" AND T2.PostHistoryTypeId = 4
SELECT T2.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Id = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.DisplayName FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Id = 6347
SELECT count(*) FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T1.body LIKE '%data visualization%'
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.DisplayName = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.id = 24
SELECT ViewCount FROM posts WHERE Title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT text FROM comments WHERE score = 17
SELECT id , displayname FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT UserDisplayName FROM comments WHERE Text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "A Lion."
SELECT T2.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = 'Understanding what Dassault iSight is doing?'
SELECT T1.text FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = 'How does gentle boosting differ from AdaBoost?'
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Necromancer' LIMIT 10
SELECT LastEditorDisplayName FROM posts WHERE Title = 'Open source tools for visualizing multi-dimensional data?'
SELECT T1.title FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid WHERE T3.displayname = "Vebjorn Ljosa" AND T2.posthistorytypeid = 8
SELECT sum(T1.score) , T3.WebsiteUrl FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T2.userid = T3.id WHERE T3.DisplayName = 'Yevgeny'
SELECT T1.text FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = 'Why square the difference instead of taking the absolute value in standard deviation?' AND T1.userid = T2.lasteditoruserid
SELECT sum(T2.bountyamount) FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T1.title LIKE '%data%'
SELECT T2.userid FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T1.title LIKE '%variance%' AND T2.bountyamount = 50
SELECT avg(T1.viewcount) , T1.title , T4.text FROM posts AS T1 JOIN posttags AS T2 ON T1.id = T2.postid JOIN tags AS T3 ON T2.tagname = T3.tagName WHERE T3.tagname = 'humor' JOIN comments AS T4 ON T1.id = T4.postid GROUP BY T1.title
SELECT count(*) FROM comments WHERE UserId = 13
SELECT Id FROM users ORDER BY Reputation DESC LIMIT 1
SELECT Id FROM users ORDER BY views LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.name = 'supporter' AND T1.date LIKE '2011%'
SELECT COUNT(*) FROM (SELECT UserId FROM badges GROUP BY UserId HAVING COUNT(*) > 5)
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = "New York" AND T1.name = "Teacher" INTERSECT SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = "New York" AND T1.name = "Supporter"
SELECT T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.id = 1
SELECT T1.id , T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.viewcount > 1000 GROUP BY T2.id HAVING COUNT(*) = 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id JOIN comments AS T3 ON T2.id = T3.userid GROUP BY T3.userid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = "India" AND T1.name = "Teacher"
SELECT count(*) FROM badges WHERE YEAR(Date) = 2010
SELECT posthistorytypeid , COUNT(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT T1.body , T1.viewcount FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid WHERE T2.relatedpostid = 61217
SELECT l.score , l.linktypeid FROM postlinks AS l JOIN posts AS p ON l.postid = p.id WHERE p.id = 395
SELECT Id , OwnerUserId FROM posts WHERE Score > 60
SELECT sum(FavoriteCount) FROM posts WHERE OwnerUserId = 686 AND CreaionDate >= "2011-01-01 00:00:00" AND CreaionDate < "2012-01-01 00:00:00"
SELECT avg(T1.UpVotes) , avg(T1.Age) FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.Id HAVING count(*) > 10
SELECT count(*) FROM badges WHERE Name = "Announcer"
SELECT Name FROM badges WHERE Date = "2010-07-19T19:39:08.000"
SELECT count(*) FROM comments WHERE score > 0
SELECT text FROM comments WHERE creationdate = "2010-07-19 19:25:47"
SELECT count(*) FROM posts WHERE score = 10
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid ORDER BY T1.reputation DESC LIMIT 1
SELECT T2.Reputation FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = "7/19/2010 7:39:08 PM"
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.DisplayName = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester, NY"
SELECT count(*) * 100.0 / (SELECT count(*) FROM badges) FROM badges WHERE name = "Teacher"
SELECT count(*) , count(T2.age) * 100 / count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.name = "Organizer" AND T2.age BETWEEN 13 AND 19
SELECT avg(T1.Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreaionDate = "7/19/2010 7:19:56 PM"
SELECT text FROM posthistory WHERE creationdate = '2010-07-19T19:37:33.000'
SELECT T2.age FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = "Vienna, Austria"
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.age > 13 AND T1.name = 'Supporter'
SELECT T2.Views FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = "7/19/2010 7:39:08 PM"
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid ORDER BY T1.reputation LIMIT 1
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.displayname = "Sharpie"
SELECT count(*) FROM badges WHERE name = 'Supporter'
SELECT DisplayName FROM users WHERE Id = 30
SELECT COUNT(*) FROM users WHERE LOCATION = "New York"
SELECT COUNT(*) FROM votes WHERE creationdate >= "2010-01-01 00:00:00" AND creationdate <= "2010-12-31 23:59:59"
SELECT count(*) FROM users WHERE age > 13
SELECT TOP 10 Id , DisplayName FROM users ORDER BY Views DESC
SELECT count(*) , count(*) FROM votes WHERE creationdate LIKE "2010%" INTERSECT SELECT count(*) , count(*) FROM votes WHERE creationdate LIKE "2011%"
SELECT DISTINCT T1.tags FROM users AS T2 JOIN posts AS T1 ON T1.owneruserid = T2.id WHERE T2.displayname = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Daniel Vassallo"
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harlan"
SELECT Id FROM posts WHERE OwnerUserId = 12667 ORDER BY AnswerCount DESC SELECT TOP 1 Id FROM posts WHERE OwnerUserId = 12667 ORDER BY AnswerCount DESC
SELECT T1.title , T1.score FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Harvey Motulsky" INTERSECT SELECT T1.title , T1.score FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Noah Snyder"
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN users AS T3 ON T3.id = T2.owneruserid WHERE T3.displayname = "Matt Parker" AND T1 votetypeid = 2 GROUP BY T1.postid HAVING count(*) > 4
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN users AS T3 ON T3.id = T2.owneruserid WHERE T3.displayname = "Neil McGuigan" AND T1.score < 0
SELECT T1.tags FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Mark Meckes" AND T1.commentcount = 0
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Organizer"
SELECT count(*) * 100 / (SELECT count(*) FROM posts WHERE posttypeid = 1) FROM posts WHERE posttypeid = 1 AND tags LIKE '%r%'
SELECT T1.viewcount - T2.viewcount FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'Mornington' INTERSECT SELECT T1.viewcount - T2.viewcount FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'Amos'
SELECT count(DISTINCT UserId) FROM badges WHERE Date > "2014-01-01" AND Date < "2015-01-01" AND Name = "Commentator"
SELECT count(*) FROM posts WHERE CreationDate = "2010-07-21 00:00:00"
SELECT T1.DisplayName , T1.age FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid ORDER BY T2.viewcount DESC LIMIT 1
SELECT LastEditDate , LastEditorUserId FROM posts WHERE Title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE UserId = 13 AND Score < 0
SELECT T1.title , T2.userdisplayname FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.score > 0
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = 'North Pole' AND T1.date LIKE '2011%'
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.favoritecount > 150
SELECT T1.Title , T1.LastEditDate , COUNT(*) FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook?" GROUP BY T1.id
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Outliers"
SELECT T1.title FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid WHERE T1.title = "How to tell if something happened in a data set which monitors a value over time" AND T2.linktypeid = 2
SELECT T1.id , T2.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Samuel" AND T1.date LIKE "2013%"
SELECT OwnerDisplayName FROM posts ORDER BY Score DESC LIMIT 1
SELECT T2.DisplayName , T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id JOIN tags AS T3 ON T1.Tags = T3.TagName WHERE T3.TagName = "hypothesis-testing" AND T1.PostTypeId = 1
SELECT T1.title , T2.linktypeid FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid WHERE T1.title = "What are principal component scores?"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.score = (SELECT max( score ) FROM posts)
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.votetypeid = 8 ORDER BY T2.bountyamount DESC LIMIT 1
SELECT title FROM posts ORDER BY viewcount DESC SELECT title FROM posts ORDER BY viewcount DESC LIMIT 5
SELECT count(*) FROM tags AS T1 JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T2.answercount BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.creationdate LIKE "2011%" AND T1.bountyamount = 50
SELECT id FROM users ORDER BY age DESC LIMIT 1
SELECT sum(Score) FROM posts WHERE CreationDate >= "2010-07-19 00:00:00" AND CreationDate < "2010-07-20 00:00:00"
SELECT avg(T1.creationdate) FROM postlinks AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.answercount <= 2 AND T1.creationdate LIKE "2010%"
SELECT T1.id FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T2.userid = 1465 ORDER BY T1.score DESC LIMIT 1
SELECT T1.title FROM posts AS T1 JOIN postlinks AS T2 ON T1.id = T2.postid ORDER BY T2.creationdate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT CreationDate FROM votes WHERE UserId = 160119 ORDER BY CreationDate ASC LIMIT 1
SELECT T1.creationdate FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id ORDER BY T2.age DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Autobiographer" ORDER BY T2.Date ASC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.location = "United Kingdom" AND favoritecount >= 4
SELECT avg(T2.Count) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.creationdate = (SELECT creationdate FROM users ORDER BY creationdate ASC LIMIT 1)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age > 13
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Jay Stevens" AND T1.creaiondate.year = 2010
SELECT id , title FROM posts WHERE owneruserid = 106399 ORDER BY viewcount DESC
SELECT id , title FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(T1.score) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Stephen Turner"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T2.CreaionDate >= "2011-01-01 00:00:00" AND T2.CreaionDate < "2012-01-01 00:00:00" AND T2.ViewCount > 20000
SELECT T1.id , T1.ownerdisplayname FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T2.creationdate >= "2010-01-01 00:00:00" AND T2.creationdate <= "2010-12-31 23:59:59" ORDER BY T2.bountyamount DESC SELECT TOP 1 T1.id , T1.ownerdisplayname FROM posts AS T1 JOIN votes AS T2 ON T1.id = T2.postid WHERE T2.creationdate >= "2010-01-01 00:00:00" AND T2.creationdate <= "2010-12-31 23:59:59" ORDER BY T2.bountyamount DESC
SELECT count(*) * 100.0 / (SELECT count(*) FROM posts WHERE creationdate >= '2011-01-01 00:00:00' AND creationdate < '2012-01-01 00:00:00') FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.reputation > 1000 AND T1.creationdate >= '2011-01-01 00:00:00' AND T1.creationdate < '2012-01-01 00:00:00'
SELECT (count(*) * 100.0 / (SELECT count(*) FROM users)) FROM users WHERE age BETWEEN 13 AND 19
SELECT ViewCount , OwnerDisplayName FROM posts WHERE Title = 'Computer Game Datasets'
SELECT count(*) FROM posts WHERE viewcount > ( SELECT avg(viewcount) FROM posts )
SELECT commentcount FROM posts ORDER BY score DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T2.DisplayName , T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T1.Id = 183
SELECT T1.date FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Emmett" ORDER BY T1.date DESC LIMIT 1
SELECT count(*) FROM users WHERE age >= 13 INTERSECT SELECT count(*) FROM votes WHERE votetypeid = 2
SELECT date(b.Date) - date(u.CreationDate) FROM badges AS b JOIN users AS u ON b.UserId = u.Id WHERE u.DisplayName = 'Zolomon'
SELECT count(*) , sum(CommentCount) FROM posts WHERE OwnerUserId = (SELECT Id FROM users ORDER BY CreationDate DESC LIMIT 1)
SELECT T1.text , T2.userdisplayname FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id JOIN posts AS T3 ON T1.postid = T3.id WHERE T3.title = 'Analysing wind data with R' ORDER BY T1.creationdate DESC LIMIT 10
SELECT count(*) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM posts WHERE tags LIKE '%careers%'
SELECT reputation , viewcount FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT commentcount , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT CreationDate FROM users WHERE DisplayName = 'IrishStat'
SELECT COUNT(*) FROM votes WHERE bountyamount > 30
SELECT count(*) * 100 / (SELECT count(*) FROM posts) FROM posts WHERE posts.score > 50 AND owneruserid = (SELECT owneruserid FROM posts GROUP BY owneruserid ORDER BY avg(score) DESC LIMIT 1)
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE count <= 20 AND id < 15
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.text = "fine , you win : )"
SELECT Text FROM posthistory WHERE Text LIKE '%linear regression%'
SELECT T1.text FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.viewcount BETWEEN 100 AND 150 ORDER BY T1.score DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.WebsiteUrl != "null"
SELECT count(*) FROM posts WHERE id IN ( SELECT PostId FROM comments WHERE score = 0 ) AND viewcount < 5
SELECT count(*) FROM comments WHERE postid IN ( SELECT id FROM posts WHERE commentcount = 1 ) AND score = 0
SELECT count(*) FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.score = 0 AND T1.age = 40
SELECT T1.id , T1.body FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.title = "Group differences on a five point Likert item"
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T1.UserDisplayName FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.score BETWEEN 1 AND 5 AND T1.DownVotes = 0
SELECT count(*) , 100.0 * count(*) / ( SELECT count(*) FROM comments WHERE score >= 5 AND score <= 10 ) FROM comments WHERE score >= 5 AND score <= 10 INTERSECT SELECT * FROM users WHERE upvotes = 0
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.superhero_name = "3-D Man"
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 JOIN hero_power AS T3 ON T1.id = T3.hero_id AND T2.id = T3.power_id WHERE T2.power_name = "Super Strength" AND T1.height_cm > 200
SELECT T1.full_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id GROUP BY T1.id HAVING count(*) > 15
SELECT count(*) FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour_name = "blue"
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.skin_colour_id WHERE t2.full_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id JOIN colour AS T4 ON T1.eye_colour_id = T4.id WHERE T4.colour_name = "blue" AND T3.power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "blue") AND hair_colour_id = (SELECT id FROM colour WHERE colour = "blond")
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Marvel Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Marvel Comics" ORDER BY height_cm DESC
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.superhero_name = "Sauron"
SELECT t1.superhero_name FROM superhero AS t1 JOIN colour AS t2 ON t1.eye_colour_id = t2.id WHERE t1.publisher_id = 1 GROUP BY t2.colour_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Marvel Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.publisher_id = 1
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "DC Comics"
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id ORDER BY t2.weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour_name = "gold" AND T1.publisher_id = 2
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.superhero_name = "Blue Beetle II"
SELECT count(*) FROM superhero AS T1 JOIN colour AS T2 ON T1.hair_colour_id = T2.id WHERE T2.colour_name = "blonde"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = "inteligence" ORDER BY t2.attribute_value LIMIT 1
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = "Copycat"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "durability" AND T2.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = "death touch"
SELECT count(*) FROM superhero AS t1 JOIN gender AS t2 ON t1.gender_id = t2.id JOIN hero_attribute AS t3 ON t1.id = t3.hero_id WHERE t2.gender_name = "Female" AND t3.attribute_value = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T2.power_name = "vampire"
SELECT count(*) , 'Marvel Comics' FROM superhero WHERE publisher_id = 1
SELECT count(*) FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE publisher_name = "DC Comics"
SELECT id FROM publisher WHERE publisher_name = "Star Trek"
SELECT avg(attribute_value) FROM hero_attribute
SELECT count(*) FROM superhero WHERE full_name = "null"
SELECT t2.colour FROM superhero AS t1 JOIN colour AS t2 ON t1.eye_colour_id = t2.id WHERE t1.id = 75
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.gender_id = 1 LIMIT 5
SELECT T1.superhero_name FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.race_name = "alien"
SELECT full_name FROM superhero WHERE eye_colour_id = 0 AND height_cm BETWEEN 170 AND 190
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id WHERE t2.hero_id = 56
SELECT full_name FROM superhero WHERE race_id IN (SELECT id FROM race WHERE super_type = "Demi\-God") LIMIT 5
SELECT count(*) FROM alignment AS T1 JOIN superhero AS T2 ON T1.id = T2.alignment_id WHERE T1.alignment = 'bad'
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.hair_colour_id WHERE t2.height_cm = 185
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.eye_colour_id ORDER BY t2.weight_kg DESC LIMIT 1
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_name = "Marvel Comics"
SELECT full_name FROM superhero WHERE gender_id = 1 AND weight_kg > (SELECT avg(weight_kg) * 0.79 FROM superhero)
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id GROUP BY t1.power_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.superhero_name , T2.attribute_value FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "strength" AND T1.superhero_name = "Abomination"
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id WHERE t2.hero_id = 1
SELECT count(*) FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t1.power_name = "stealth"
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = "strength" ORDER BY t2.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE skin_colour_id = "null"
SELECT count(*) FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t1.publisher_name = "Dark Horse Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics" INTERSECT SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "durability" ORDER BY T2.attribute_value DESC LIMIT 1
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.eye_colour_id WHERE t2.full_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Flight'
SELECT t1.eye_colour , t1.hair_colour , t1.skin_colour FROM superhero AS t1 JOIN gender AS t2 ON t1.gender_id = t2.id JOIN publisher AS t3 ON t1.publisher_id = t3.id WHERE t2.gender_name = "Female" AND t3.publisher_name = "Dark Horse Comics"
SELECT t1.publisher FROM superhero AS t1 JOIN colour AS t2 ON t1.eye_colour_id = t2.id JOIN colour AS t3 ON t1.hair_colour_id = t3.id JOIN colour AS t4 ON t1.skin_colour_id = t4.id WHERE t2.colour_name = t3.colour_name AND t2.colour_name = t4.colour_name
SELECT t1.publisher_name FROM superhero AS t1 JOIN publisher AS t2 ON t1.publisher_id = t2.id WHERE t1.superhero_name = "A-Bomb"
SELECT count(*) FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id JOIN colour AS T3 ON T2.skin_colour_id = T3.id WHERE T1.gender = "Female" AND T3.colour = "Blue"
SELECT T1.superhero_name , T1.race FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.full_name = "Charles Chandler"
SELECT T1.gender FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id WHERE T2.superhero_name = "Agent 13"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = "adaptation"
SELECT count(*) FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t3.id = t2.hero_id WHERE t3.superhero_name = "Amazo"
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = 1
SELECT full_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "black") AND hair_colour_id = (SELECT id FROM colour WHERE colour = "black")
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.eye_colour_id WHERE t2.skin_colour_id = "gold"
SELECT full_name FROM superhero WHERE race_id IN ( SELECT id FROM race WHERE race = "vampire" )
SELECT T1.superhero_name FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = "Neutral"
SELECT count(*) FROM hero_attribute WHERE attribute_id = (SELECT id FROM attribute WHERE attribute_name = 'strength') AND attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_id = (SELECT id FROM attribute WHERE attribute_name = 'strength'))
SELECT T1.race , T1.alignment FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.full_name = "Cameron Hicks"
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE publisher_id = 1) FROM superhero WHERE gender_id = 2 AND publisher_id = 1
SELECT avg(weight_kg) FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T2.attribute_name = "alien"
SELECT abs(weight_kg - 70) FROM superhero WHERE full_name = "Emil Blonsky" OR full_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.full_name = "Abomination"
SELECT count(*) FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id JOIN race AS T3 ON T1.race_id = T3.id WHERE T3.race_name = "god/eternal" AND T2.gender = "Male"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = "speed" ORDER BY t2.attribute_value DESC LIMIT 1
SELECT count(*) FROM alignment AS T1 JOIN superhero AS T2 ON T1.id = T2.alignment_id WHERE T1.alignment = 'neutral'
SELECT T1.superhero_name , T2.attribute_value FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "3-D Man"
SELECT full_name FROM superhero WHERE eye_colour_id = 10 AND hair_colour_id = 9
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name IN ('Hawkman', 'Karate Kid', 'Speedy')
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero) FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "blue")
SELECT count(*) FROM gender WHERE id = 2
SELECT full_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT id FROM superpower WHERE power_name = "cryokinesis"
SELECT full_name FROM superhero WHERE id = 294
SELECT full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour_id FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.full_name = "Helen Parr"
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.weight_kg = 108 AND T2.height_cm = 188
SELECT t2.publisher_name FROM superhero AS t1 JOIN publisher AS t2 ON t1.publisher_id = t2.id WHERE t1.id = 38
SELECT t1.race FROM race AS t1 JOIN superhero AS t2 ON t1.id = t2.race_id JOIN hero_attribute AS t3 ON t2.id = t3.hero_id ORDER BY t3.attribute_value DESC LIMIT 1
SELECT T1.alignment , T4.power_name FROM alignment AS T1 JOIN superhero AS T2 ON T1.id = T2.alignment_id JOIN hero_power AS T3 ON T2.id = T3.hero_id JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id = 2 LIMIT 5
SELECT avg(t2.attribute_value) FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id JOIN alignment AS t4 ON t1.alignment_id = t4.id WHERE t4.alignment = "Neutral"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value = 100
SELECT count(*) FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.gender_name = "Female" AND T1.gender_id != 2
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race WHERE T2.hair_colour_id = "blue" AND T2.gender_id = "Male";
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE alignment_id = 4) FROM superhero WHERE gender_id = 2 AND alignment_id = 4
SELECT count(*) , count(*) FROM superhero WHERE eye_colour_id = "blue" AND weight_kg = "null"
SELECT avg(t1.attribute_value) FROM hero_attribute AS t1 JOIN attribute AS t2 ON t1.attribute_id = t2.id JOIN superhero AS t3 ON t1.hero_id = t3.id WHERE t3.superhero_name = "Hulk" AND t2.attribute_name = "strength"
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.full_name = 'Ajax'
SELECT count(*) FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T1.colour_name = "green"
SELECT count(*) FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T2.attribute_name = "Female" AND T1.publisher_name = "Marvel Comics"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = "wind control" ORDER BY t1.superhero_name
SELECT t1.gender FROM gender AS t1 JOIN superhero AS t2 ON t1.id = t2.gender_id JOIN hero_power AS t3 ON t2.id = t3.hero_id JOIN superpower AS t4 ON t3.power_id = t4.id WHERE t4.power_name = "Phoenix Force"
SELECT full_name FROM superhero WHERE publisher_name = "DC Comics" ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id = 1 AND gender_id = 2
SELECT count(*) FROM superhero WHERE height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT abs( count(*) - (SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Marvel Comics") ) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "DC Comics"
SELECT t1.superhero_name , t2.attribute_name , t2.attribute_value FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_name = "strength" AND t1.superhero_name = "Black Panther" ORDER BY t2.attribute_value DESC LIMIT 1
SELECT t1.full_name , t2.colour FROM superhero AS t1 JOIN colour AS t2 ON t1.eye_colour_id = t2.id WHERE t1.full_name = "Abomination"
SELECT full_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE publisher_name = "Marvel Comics" ) FROM superhero WHERE publisher_name = "Marvel Comics" AND gender_id = 2
SELECT count(*) * 100.0 / (SELECT count(*) FROM alignment) FROM alignment WHERE alignment_id IN (SELECT id FROM alignment WHERE alignment = 'good')
SELECT count(*) FROM superhero WHERE full_name LIKE "%John%"
SELECT hero_id FROM hero_attribute ORDER BY attribute_value ASC LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT full_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour = "brown") AND weight_kg < 100
SELECT t1.attribute_value FROM attribute AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.attribute_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = "Aquababy"
SELECT weight_kg , T1.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.id = 40
SELECT avg(height_cm) FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = "Neutral"
SELECT T1.id FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "intelligence"
SELECT t1.colour FROM colour AS t1 JOIN superhero AS t2 ON t1.id = t2.eye_colour_id WHERE t2.full_name = "Blackwulf"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T3.height_cm > (SELECT avg(height_cm) * 0.8 FROM superhero)
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 20 AND T2.position = last_position
SELECT T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.round = 19 AND T2.q3 = ( SELECT min(q3) FROM qualifying WHERE raceid IN ( SELECT raceid FROM races WHERE round = 19 ) )
SELECT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.location = "Shanghai"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany"
SELECT T1.position FROM constructorStandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.name = "Renault"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2010 AND T2.country != "Asia" AND T2.country != "Europe"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain"
SELECT lat , lng FROM circuits WHERE country = "Australia" AND name = "Australian Grand Prix"
SELECT T2.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit"
SELECT TIME FROM races WHERE name = "Sepang International Circuit"
SELECT T1.lat , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix"
SELECT T3.country FROM constructorResults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T1.points = 1 AND T2.round = 24
SELECT T1.q1 FROM qualifying AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Bruno" AND T2.surname = "Senna" AND T1.raceid IN ( SELECT T1.raceid FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.round = 354 )
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.q2 = "0:01:40" AND T2.raceid IN ( SELECT raceid FROM races WHERE round = 355 )
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Qualifying" AND T2.q3 = "0:01:54" AND T3.round = 903
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 AND T1.position = "not finished"
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.number = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.date = "2015-11-29"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.round = 592 ORDER BY T1.dob ASC LIMIT 1
SELECT T1.url FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.time = "0:01:27" AND raceid = 161
SELECT T1.nationality FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid IN (SELECT raceid FROM results GROUP BY raceid ORDER BY max(lap) LIMIT 1) AND T2.fastestlapspeed = (SELECT max(fastestlapspeed) FROM results WHERE raceid IN (SELECT raceid FROM results GROUP BY raceid ORDER BY max(lap) LIMIT 1))
SELECT T1.lat , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix"
SELECT T1.url FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.round = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.q1 FROM qualifying AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T2.forename = "Lucas" AND T2.surname = "di Grassi" AND T3.round = 345
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 347 AND T2.q2 = "0:01:15"
SELECT T1.code FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Race No. 45" AND T2.q3 = "0:01:33"
SELECT T1.name , T2.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Bruce" AND T3.surname = "McLaren" AND T1.round = 743
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.year = 2006 AND T3.name = "San Marino Grand Prix" ORDER BY T2.position = 2 LIMIT 1
SELECT T2.year FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.round = 901
SELECT count(*) FROM results WHERE raceId IN (SELECT raceId FROM races WHERE date = "2015-11-29") AND statusId != 3
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.round = 872 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 348 ORDER BY T2.time ASC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT avg(T1.fastestlapspeed) , avg(T2.fastestlapspeed) FROM results AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = 853 AND T2.position < T2.position ORDER BY T2.position LIMIT 1
SELECT count(*) , count(DISTINCT driverId) FROM results WHERE raceId IN( SELECT raceId FROM races WHERE date = "1983-07-16" )
SELECT YEAR FROM races WHERE name = "Singapore Grand Prix" LIMIT 1
SELECT count(*) , name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races ORDER BY date ASC LIMIT 1
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT name FROM races WHERE YEAR = 2000
SELECT T1.name , T1.location , T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" ORDER BY T2.year ASC LIMIT 1
SELECT max(T2.year) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.name = "British Grand Prix" AND T1.circuitid IN (SELECT T3.circuitid FROM circuits AS T3 JOIN races AS T4 ON T3.circuitid = T4.circuitid WHERE T3.name = "Brands Hatch")
SELECT count(*) FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = "Silverstone Circuit" AND T2.name = "United Kingdom Grand Prix"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.year = 2010 AND T3.name = "Singapore Grand Prix" ORDER BY T2.position
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY sum(T2.points) DESC LIMIT 1
SELECT T1.forename , T1.surname , T2.points FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2017 AND T3.name = "Chinese Grand Prix" ORDER BY T2.points DESC LIMIT 3
SELECT T1.forename , T1.surname , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T3.driverid AND T2.raceid = T3.raceid JOIN laptimes AS T3 ON T3.time = ( SELECT min(time) FROM laptimes )
SELECT avg(T1.time) FROM lapTimes AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T2.name = "Malaysian Grand Prix" AND T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T2.year = 2009
SELECT count(*) * 100 / ( SELECT count(*) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.year >= 2010 AND T1.round != 1 ) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.year >= 2010 AND T1.round != 1
SELECT T1.forename , T1.surname , T1.nationality , max(T4.points) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid JOIN driverstandings AS T4 ON T2.raceid = T4.raceid WHERE T4.position = 1 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT dob , forename , surname FROM drivers WHERE nationality = "Japanese" ORDER BY dob DESC LIMIT 1
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "USA" AND T2.year = 2006
SELECT T1.name , T2.name AS circuitname , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.date LIKE "\%09\%"
SELECT T2.name FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoong" AND T1.number < 20
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid JOIN circuits AS T4 ON T2.circuitid = T4.circuitid WHERE T3.forename = "Michael" AND T3.surname = "Schumacher" AND T4.name = "Sepang International Circuit" AND T1.position = 1
SELECT T2.name , T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Michael" AND T3.surname = "Schumacher" ORDER BY T1.fastestlap DESC LIMIT 1
SELECT avg(T2.points) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T1.forename = "Eddie" AND T1.surname = "Irvine" AND T3.year = 2000
SELECT T2.points FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" ORDER BY T1.date ASC LIMIT 1
SELECT T1.name , T2.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T3.location FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T1.circuitid ORDER BY T2.laps DESC LIMIT 1
SELECT count(*) * 100 / ( SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "European" ) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Germany"
SELECT lat , lng FROM circuits WHERE name = "Silverstone Circuit"
SELECT name FROM circuits WHERE lat > ( SELECT lat FROM circuits WHERE name = "Hungaroring" ) AND name != "Hungaroring" AND name != "Silverstone" AND name != "Hockenheimring"
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = "null"
SELECT nationality FROM drivers ORDER BY dob ASC LIMIT 1
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT url FROM drivers WHERE forename = "Anthony" AND surname = "Davidson"
SELECT count(*) FROM drivers WHERE surname = "Hamilton" AND forename = "Lewis"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT DISTINCT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = "Silverstone Circuit"
SELECT * FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone"
SELECT TIME FROM races WHERE TOSTRING(year) LIKE "2010" AND name = "Abu Dhabi"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Spanish Grand Prix" AND T2.year = 2009
SELECT min(T1.time) FROM lapTimes AS T1 JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid ORDER BY T2.fastestlapspeed DESC LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2007 AND T3.name = "Canadian Grand Prix" ORDER BY T2.rank ASC LIMIT 1
SELECT T2.name FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T2.name FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" ORDER BY T1.rank ASC LIMIT 1
SELECT fastestLapSpeed FROM results WHERE raceId IN ( SELECT raceId FROM races WHERE YEAR = 2009 AND name = "Spanish Grand Prix" ) ORDER BY fastestLapSpeed DESC LIMIT 1
SELECT DISTINCT T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Chinese Grand Prix" AND T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.grid = 4
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND position != "NULL"
SELECT T1.time FROM lapTimes AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix" AND T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT T1.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "AustChineseralian Grand Prix" AND T2.position = 2
SELECT T1.forename , T1.surname , T1.url FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "Australian Grand Prix" AND T3.year = 2008 ORDER BY T2.position = 1 DESC LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "Australian Grand Prix" AND T3.year = 2008 AND T1.nationality = "United Kingdom"
SELECT count(*) FROM ( SELECT T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2008 Chinese Grand Prix" ) AS T4 JOIN drivers AS T5 ON T4.driverid = T5.driverid JOIN results AS T6 ON T5.driverid = T6.driverid JOIN races AS T7 ON T7.raceid = T6.raceid WHERE T7.year != 2008
SELECT sum(T2.points) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.forename = "Lewis" AND T1.surname = "Hamilton"
SELECT avg(T1.fastestLapTime) FROM results AS T1 JOIN drivers AS T2 ON T1.driverId = T2.driverId WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT avg(T2.laps) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Australian Grand Prix"
SELECT T1.percentage FROM (SELECT T2.fastestlapspeed - T3.fastestlapspeed AS percentage FROM results AS T2 JOIN results AS T3 ON T2.raceid = T3.raceid WHERE T2.position = 1 AND T3.position = last() GROUP BY T2.raceid) AS T1 JOIN races AS T4 ON T1.raceid = T4.raceid WHERE T4.year = 2008 AND T4.name = "Australian Grand Prix"
SELECT count(*) FROM circuits WHERE country = "Australia" AND LOCATION = "Adelaide"
SELECT lat , lng FROM circuits WHERE country = "USA"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > "1980"
SELECT max(T1.points) FROM constructorStandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.round = 291 AND T2.points = 0
SELECT count(*) FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points = 0 AND T2.position = 2
SELECT T2.name FROM constructorstandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T1.position = 1
SELECT count(*) FROM constructors AS T1 JOIN results AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "French" AND T2.laps > 50
SELECT count(*) * 100 / (SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.year BETWEEN 2007 AND 2009 AND T3.nationality = "Japanese") FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.year BETWEEN 2007 AND 2009 AND T3.nationality = "Japanese"
SELECT avg(T2.milliseconds) / 1000 FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year < 1975
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.rank = 2 AND T1.dob > "1975"
SELECT count(*) FROM drivers WHERE nationality = "Italian" EXCEPT SELECT count(*) FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.position != "N/A"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.time LIMIT 1
SELECT T1.lap FROM lapTimes AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId JOIN results AS T3 ON T3.raceId = T2.raceId WHERE T2.year = 2009 AND T3.fastestlap = 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Spanish Grand Prix"
SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT count(*) * 100 / (SELECT count(*) FROM results) FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.dob < "1985" AND T1.laps > 50 AND T1.year BETWEEN 2000 AND 2005
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND T2.time < "02:00.00"
SELECT code FROM drivers WHERE nationality = "American"
SELECT raceId FROM races WHERE YEAR = 2009
SELECT count(DISTINCT driverId) FROM results WHERE raceId = 18
SELECT count(*) FROM ( SELECT * FROM drivers ORDER BY dob DESC LIMIT 3 ) WHERE nationality = "Netherlands"
SELECT driverRef FROM drivers WHERE forename = "Robert" AND surname = "Kubica"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob LIKE "1980%"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T1.dob LIKE "1980%" ORDER BY T2.time ASC LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob ASC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob LIKE "1971%" ORDER BY T2.time ASC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T1.dob < "1982-00-00" ORDER BY T2.time DESC LIMIT 10
SELECT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.time LIMIT 1
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN results AS T3 ON T2.raceid = T3.raceid ORDER BY T3.fastestlapspeed ASC LIMIT 1
SELECT driverid FROM laptimes WHERE lap = 1 ORDER BY TIME ASC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.round BETWEEN 50 AND 100 AND T1.statusid = 10
SELECT location , lat , lng FROM circuits WHERE country = "Austria"
SELECT number FROM results GROUP BY number ORDER BY count(*) DESC LIMIT 1
SELECT T1.reference, T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 23 AND T2.lap = 2
SELECT T1.year , T1.name , T1.date , T1.time FROM races AS T1 JOIN qualifying AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid ORDER BY T3.dob DESC LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN status AS T3 ON T2.statusid = T3.statusid WHERE T1.nationality = "American" AND T3.status = "Puncture"
SELECT T1.url FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Italian" ORDER BY T2.points DESC LIMIT 1
SELECT T1.url FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid GROUP BY T2.constructorid ORDER BY sum(T2.wins) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "French Grand Prix" AND T2.lap = 3 ORDER BY T2.time DESC LIMIT 1
SELECT T1.name , min(T2.milliseconds) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid GROUP BY T1.raceid ORDER BY min(T2.milliseconds) ASC LIMIT 1
SELECT avg(T1.fastestLapTime) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "United States Grand Prix" AND T2.year = 2006 ORDER BY T1.fastestLapTime ASC LIMIT 10
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T1.dob LIKE "1980%" GROUP BY T1.driverid ORDER BY avg(T2.duration) LIMIT 3
SELECT T1.forename , T1.surname , T3.time FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "Canadian Grand Prix" ORDER BY T3.time LIMIT 1;
SELECT T3.name , T3.url FROM races AS T1 JOIN constructorResults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T1.year = 2009 AND T1.name = "Singapore Grand Prix"
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob LIKE "1981%" OR dob LIKE "1982%" OR dob LIKE "1983%" OR dob LIKE "1984%" OR dob LIKE "1985%" OR dob LIKE "1986%" OR dob LIKE "1987%" OR dob LIKE "1988%" OR dob LIKE "1989%" OR dob LIKE "1990%" OR dob LIKE "1991%"
SELECT forename , surname , dob , url FROM drivers WHERE nationality = "German" AND dob LIKE "1971%" OR dob LIKE "1972%" OR dob LIKE "1973%" OR dob LIKE "1974%" OR dob LIKE "1975%" OR dob LIKE "1976%" OR dob LIKE "1977%" OR dob LIKE "1978%" OR dob LIKE "1979%" OR dob LIKE "1980%" OR dob LIKE "1981%" OR dob LIKE "1982%" OR dob LIKE "1983%" OR dob LIKE "1984%" OR dob LIKE "1985%" ORDER BY dob DESC
SELECT LOCATION , country , lat , lng FROM circuits WHERE name = "Hungaroring"
SELECT T1.name , T1.nationality , T2.points FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "Monaco Grand Prix" AND T3.year BETWEEN 1980 AND 2010 ORDER BY T2.points DESC LIMIT 1
SELECT avg(T3.position) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.name = "Turkish Grand Prix"
SELECT avg(number) FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T1.year >= 2000 AND T1.year <= 2009
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.wins) FROM results AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T1.rank = 91
SELECT T2.name FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.fastestlapSpeed DESC LIMIT 1
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid ORDER BY T2.date DESC LIMIT 1
SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Marina Bay Street Circuit" AND T1.year = 2008 AND T2.position = 1 AND T1.round = 3
SELECT T1.forename , T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid ORDER BY T1.dob DESC LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Canadian Grand Prix" GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid ORDER BY T1.dob DESC LIMIT 1
SELECT max(duration) FROM pitstops
SELECT TIME FROM laptimes ORDER BY TIME ASC LIMIT 1
SELECT max(duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton"
SELECT lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T2.name = "2011 Australian Grand Prix"
SELECT stop FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2011 Australian Grand Prix"
SELECT TIME FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton" ORDER BY lap = (SELECT min(lap) FROM laptimes AS T3 JOIN drivers AS T4 ON T3.driverid = T4.driverid WHERE T4.forename = "Lewis" AND T4.surname = "Hamilton") LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.time LIMIT 20
SELECT T1.position FROM lapTimes AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" AND T1.time = ( SELECT min(T1.time) FROM lapTimes AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId JOIN drivers AS T3 ON T1.driverId = T3.driverId WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" )
SELECT min(T2.lap) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix"
SELECT T1.lap , T1.time FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T3.circuitid = T2.circuitid WHERE T3.country = "Italy" ORDER BY T1.lap , T1.time
SELECT T1.name FROM races AS T1 JOIN lapTimes AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T1.circuitid = T3.circuitid WHERE T3.name = "Austrian Grand Prix Circuit" ORDER BY T2.lap, T2.time DESC LIMIT 1
SELECT T1.duration FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN lapTimes AS T3 ON T1.raceid = T3.raceid AND T1.driverid = T3.driverid WHERE T2.name = "Austrian Grand Prix" AND T3.position = (SELECT min(Lap) FROM laptimes WHERE raceid IN (SELECT raceid FROM races WHERE name = "Austrian Grand Prix") )
SELECT T1.lat , T1.lng FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.raceid JOIN laptimes AS T3 ON T2.raceid = T3.raceid WHERE T3.time = "1:29.488" ORDER BY T3.lap LIMIT 1
SELECT avg(T2.duration) FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton"
SELECT avg(T1.milliseconds) FROM lapTimes AS T1 JOIN races AS T2 ON T1.raceId = T2.raceId JOIN circuits AS T3 ON T3.circuitId = T2.circuitId WHERE T3.country = "Italy"
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE overall_rating >= 60 AND overall_rating <= 65 GROUP BY attacking_work_rate HAVING attacking_work_rate = "High";
SELECT player_api_id FROM Player_Attributes ORDER BY crossing DESC LIMIT 5
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 ORDER BY sum(T2.home_team_goal + T2.away_team_goal) DESC LIMIT 1
SELECT home_team_api_id FROM MATCH WHERE season = '2016' AND home_team_goal < away_team_goal GROUP BY home_team_api_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.penalties DESC LIMIT 10
SELECT T1.team_long_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.away_team_api_id WHERE T2.season = 2010 AND T2.away_team_goal > T2.home_team_goal GROUP BY T1.team_long_name ORDER BY count(*) DESC LIMIT 1
SELECT buildUpPlaySpeed FROM Team_Attributes ORDER BY buildUpPlaySpeed DESC LIMIT 4
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.home_team_goal = T2.away_team_goal GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.date LIKE "2013/%" OR T2.date LIKE "2014/%" OR T2.date LIKE "2015/%"
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(height) FROM Player WHERE birthday LIKE "1990%" OR birthday LIKE "1995%"
SELECT player_api_id FROM Player_Attributes WHERE date LIKE "2010/%" AND overall_rating > (SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE "2010/%") ORDER BY overall_rating DESC LIMIT 1
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed > 50 AND buildUpPlaySpeed < 60
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayPassing > ( SELECT avg(buildUpPlayPassing) FROM Team_Attributes ) AND T2.date LIKE "2012%"
SELECT count(*) * 100 / (SELECT count(*) FROM Player WHERE birthday LIKE "1987%") FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.preferred_foot = "left" AND T2.birthday LIKE "1987%"
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY sum(T2.home_team_goal) + sum(T2.away_team_goal) ASC LIMIT 5;
SELECT avg(T1.long_shots) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ahmed Samir Farag"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 ORDER BY T2.heading_accuracy DESC LIMIT 10
SELECT team_long_name FROM Team AS T JOIN Team_Attributes AS TA ON T.team_api_id = TA.team_api_id WHERE TA.buildUpPlayDribblingClass = "normal" AND TA.date LIKE "2014%" ORDER BY chanceCreationPassing ASC LIMIT 5
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2009 AND avg(home_team_goal) > avg(away_team_goal) GROUP BY T2.league_id
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers"
SELECT player_name FROM Player WHERE birthday LIKE '%1970-10%'
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Franco Zennaro";
SELECT T2.free_kick_accuracy FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_short_name = 'ADO Den Haag' AND T2.date LIKE '2017'%
SELECT T1.heading_accuracy FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francois Affolter" AND T1.date = "18/09/2014"
SELECT overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Gabriel Tamas" AND date LIKE "2011%"
SELECT count(*) FROM MATCH AS T1 JOIN LEAGUE AS T2 ON T1.league_id = T2.id WHERE T2.name = "Scottish Premier League" AND T1.season = "2015/2016"
SELECT T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = ( SELECT max(potential) FROM Player_Attributes )
SELECT count(*) FROM Player WHERE weight < 130 INTERSECT SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassingClass = "Risky"
SELECT T1.defensive_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "David Wilson"
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Netherlands"
SELECT avg(home_team_goal) FROM MATCH AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Poland" AND T1.season = "2010/2011"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = (SELECT max(overall_rating) FROM Player_Attributes JOIN Player ON Player.player_api_id = Player_Attributes.player_api_id) INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height = (SELECT max(height) FROM Player)
SELECT player_name FROM Player WHERE height > 180
SELECT count(*) FROM Player WHERE birthday > '1990'
{"sql": "SELECT count(*) FROM Player WHERE player_name LIKE '%Adam%\' AND weight > 170"}
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND T2.date LIKE "2008/%" OR T2.date LIKE "2009/%" OR T2.date LIKE "2010/%"
SELECT potential FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Doran"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT DISTINCT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = "fast"
SELECT buildUpPlayPassingClass FROM Team_Attributes WHERE team_short_name = 'CLB'
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayPassing > 70
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.height > 170 INTERSECT SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE '2010/%' UNION SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE '2011/%' UNION SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE '2012/%' UNION SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE '2013/%' UNION SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE '2014/%' UNION SELECT avg(overall_rating) FROM Player_Attributes WHERE date LIKE '2015/%'
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeed = 31 AND T2.buildUpPlayDribbling = 53 AND T2.buildUpPlayPassing = 32
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Doran"
SELECT count(*) FROM MATCH AS T1 JOIN LEAGUE AS T2 ON T1.league_id = T2.id WHERE T2.name = "Germany 1. Bundesliga" AND T1.date LIKE "2008-08-%" AND T1.date LIKE "%2008-10-%"
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.home_team_goal = 10
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.balance = 61 AND T2.potential = 61
SELECT avg(T1.ball_control) - avg(T2.ball_control) FROM Player AS T1 JOIN Player_Attributes AS T3 ON T1.player_api_id = T3.player_api_id JOIN Player AS T2 JOIN Player_Attributes AS T4 ON T2.player_api_id = T4.player_api_id WHERE T1.player_name = "Abdou Diallo" AND T2.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_short_name = 'GEN'
SELECT player_name , birthday FROM Player WHERE player_name = "Aaron Lennon" UNION SELECT player_name , birthday FROM Player WHERE player_name = "Abdelaziz Barrada"
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = "left"
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Belgium Jupiler League'
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = 'Germany'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.strength DESC LIMIT 1
{"sql": "SELECT count(*) FROM Player WHERE birthday LIKE '1986%' OR birthday LIKE '1987%' OR birthday LIKE '1988%' OR birthday LIKE '1989%' OR birthday LIKE '1990%' OR birthday LIKE '1991%' OR birthday LIKE '1992%' OR birthday LIKE '1993%' OR birthday LIKE '1994%' OR birthday LIKE '1995%' OR birthday LIKE '1996%' OR birthday LIKE '1997%' OR birthday LIKE '1998%' OR birthday LIKE '1999%' OR birthday LIKE '2000%' OR birthday LIKE '2001%' OR birthday LIKE '2002%' OR birthday LIKE '2003%' OR birthday LIKE '2004%' OR birthday LIKE '2005%' OR birthday LIKE '2006%' OR birthday LIKE '2007%' OR birthday LIKE '2008%' OR birthday LIKE '2009%' OR birthday LIKE '2010%' OR birthday LIKE '2011%' OR birthday LIKE '2012%' OR birthday LIKE '2013%' OR birthday LIKE '2014%' OR birthday LIKE '2015%' OR birthday LIKE '2016%' OR birthday LIKE '2017%' OR birthday LIKE '2018%' OR birthday LIKE '2019%' OR birthday LIKE '2020%' OR birthday LIKE '2021%' OR birthday LIKE '2022%' OR birthday LIKE '2023%' OR birthday LIKE '2024%' OR birthday LIKE '2025%' OR birthday LIKE '2026%' OR birthday LIKE '2027%' OR birthday LIKE '2028%' OR birthday LIKE '2029%' OR birthday LIKE '2030%' OR birthday LIKE '2031%' OR birthday LIKE '2032%' OR birthday LIKE '2033%' OR birthday LIKE '2034%' OR birthday LIKE '2035%' OR birthday LIKE '2036%' OR birthday LIKE '2037%' OR birthday LIKE '2038%' OR birthday LIKE '2039%' OR birthday LIKE '2040%' OR birthday LIKE '2041%' OR birthday LIKE '2042%' OR birthday LIKE '2043%' OR birthday LIKE '2044%' OR birthday LIKE '2045%' OR birthday LIKE '2046%' OR birthday LIKE '2047%' OR birthday LIKE '2048%' OR birthday LIKE '2049%' OR birthday LIKE '2050%' OR birthday LIKE '2051%' OR birthday LIKE '2052%' OR birthday LIKE '2053%' OR birthday LIKE '2054%' OR birthday LIKE '2055%' OR birthday LIKE '2056%' OR birthday LIKE '2057%' OR birthday LIKE '2058%' OR birthday LIKE '2059%' OR birthday LIKE '2060%' OR birthday LIKE '2061%' OR birthday LIKE '2062%' OR birthday LIKE '2063%' OR birthday LIKE '2064%' OR birthday LIKE '2065%' OR birthday LIKE '2066%' OR birthday LIKE '2067%' OR birthday LIKE '2068%' OR birthday LIKE '2069%' OR birthday LIKE
SELECT T2.player_name FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Alexis" OR T2.player_name = "Ariel Borysiuk" OR T2.player_name = "Arouna Kone" ORDER BY T1.crossing DESC LIMIT 1
SELECT T1.heading_accuracy FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Belgium" AND T1.season = "2008/2009"
SELECT T1.long_passing FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.birthday LIMIT 1
SELECT count(*) FROM MATCH AS T1 JOIN LEAGUE AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Belgium Jupiler League' AND date LIKE '2009-04-%';
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.birthday LIKE '1986%'
SELECT (max(T1.overall_rating) - max(T2.overall_rating)) * 100 / max(T2.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T3 ON T1.player_api_id = T3.player_api_id JOIN Player AS T2 JOIN Player_Attributes AS T4 ON T2.player_api_id = T4.player_api_id WHERE T1.player_name = "Ariel Borysiuk" AND T2.player_name = "Paulin Puel"
SELECT avg(T2.buildUpPlaySpeed) FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_long_name = "Heart of Midlothian"
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes ORDER BY chanceCreationPassing DESC LIMIT 1
SELECT preferred_foot FROM Player JOIN Player_Attributes ON Player.player_api_id = Player_Attributes.player_api_id WHERE Player.player_name = "Abdou Diallo";
SELECT max(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Dorlan Pabon"
SELECT avg(T1.away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Country AS T3 ON T3.id = T1.country_id WHERE T2.team_short_name = 'Parma' AND T3.name = 'Italy'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2016/6/23" AND T2.overall_rating = 77 ORDER BY T1.birthday LIMIT 1
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Mooy" AND T1.date = "2016-02-04";
SELECT T1.potential FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Parravicini" AND T1.date = "2010-08-30"
SELECT attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Migliore" AND T1.date = "2015/5/1";
SELECT defensive_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Kevin De Bruyne" AND date = "2013/2/22"
SELECT T1.date FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Kevin Constant" ORDER BY T2.crossing DESC LIMIT 1
SELECT buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "Willem II" AND T1.date = "2011/2/22"
SELECT buildUpPlayDribblingClass FROM Team_Attributes WHERE date = "2015/9/10" AND team_short_name = "LEI"
SELECT buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = "PEC Zwolle" AND T1.date = "2013-09-20";
SELECT chanceCreationCrossingClass FROM Team_Attributes WHERE date = "2010/2/22" AND team_short_name = "Hull City"
SELECT defenceAggressionClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "Hannover 96" AND T1.date = "2015/9/10"
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date >= "2007/2/22" AND T1.date <= "2016/4/21"
SELECT (1 - (T2.overall_rating - T1.overall_rating) / T1.overall_rating) * 100 FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Landon Donovan" AND T2.date = "2013-07-12" INTERSECT SELECT (1 - (T2.overall_rating - T1.overall_rating) / T1.overall_rating) * 100 FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Jordan Bowery" AND T2.date = "2013-07-12"
SELECT player_name FROM Player ORDER BY height DESC LIMIT 5
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10
SELECT player_name FROM Player WHERE birthday LIKE '1985%'
SELECT count(*) FROM MATCH AS T1 JOIN Player AS T2 ON T1.home_player_1 = T2.player_api_id WHERE T2.player_name = "Aaron Lennon";
SELECT sum(T2.away_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_X1 JOIN Player_Attributes AS T3 ON T1.player_api_id = T3.player_api_id WHERE T1.player_name = "Daan Smith" OR T1.player_name = "Filipe Ferreira"
SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_1 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_2 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_3 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_4 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_5 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_6 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_7 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_8 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_9 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_10 UNION SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_11 WHERE T1.age <= 30
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = ( SELECT max(potential) FROM Player_Attributes )
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = "attack"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 ORDER BY T1.birthday DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Country AS T2 ON T1.height = T2.id WHERE T2.name = 'Belgium'
SELECT T1.birth_year , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.birth_country_id = T2.id JOIN Player_Attributes AS T3 ON T1.player_api_id = T3.player_api_id WHERE T3.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN Player AS T2 ON T1.id = T2.country_id GROUP BY T1.id ORDER BY avg(T2.weight) DESC LIMIT 1
SELECT T1.team_long_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = "slow"
{"sql": "SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayPassingClass = '3' OR T2.buildUpPlayPassingClass = '4' OR T2.buildUpPlayPassingClass = '5' OR T2.buildUpPlayPassingClass = '6' OR T2.buildUpPlayPassingClass = '7' OR T2.buildUpPlayPassingClass = '8' OR T2.buildUpPlayPassingClass = '9' OR T2.buildUpPlayPassingClass = '10' OR T2.buildUpPlayPassingClass = '11' OR T2.buildUpPlayPassingClass = '12' OR T2.buildUpPlayPassingClass = '13' OR T2.buildUpPlayPassingClass = '14' OR T2.buildUpPlayPassingClass = '15' OR T2.buildUpPlayPassingClass = '16' OR T2.buildUpPlayPassingClass = '17' OR T2.buildUpPlayPassingClass = '18' OR T2.buildUpPlayPassingClass = '19' OR T2.buildUpPlayPassingClass = '20' OR T2.buildUpPlayPassingClass = '21' OR T2.buildUpPlayPassingClass = '22' OR T2.buildUpPlayPassingClass = '23' OR T2.buildUpPlayPassingClass = '24' OR T2.buildUpPlayPassingClass = '25' OR T2.buildUpPlayPassingClass = '26' OR T2.buildUpPlayPassingClass = '27' OR T2.buildUpPlayPassingClass = '28' OR T2.buildUpPlayPassingClass = '29' OR T2.buildUpPlayPassingClass = '30' OR T2.buildUpPlayPassingClass = '31' OR T2.buildUpPlayPassingClass = '32' OR T2.buildUpPlayPassingClass = '33' OR T2.buildUpPlayPassingClass = '34' OR T2.buildUpPlayPassingClass = '35' OR T2.buildUpPlayPassingClass = '36' OR T2.buildUpPlayPassingClass = '37' OR T2.buildUpPlayPassingClass = '38' OR T2.buildUpPlayPassingClass = '39' OR T2.buildUpPlayPassingClass = '40' OR T2.buildUpPlayPassingClass = '41' OR T2.buildUpPlayPassingClass = '42' OR T2.buildUpPlayPassingClass = '43' OR T2.buildUpPlayPassingClass = '44' OR T2.buildUpPlayPassingClass = '45' OR T2.buildUpPlayPassingClass = '46' OR T2.buildUpPlayPassingClass = '47' OR T2.buildUpPlayPassingClass = '48' OR T2
SELECT avg(T1.height) FROM Player AS T1 JOIN Country AS T2 ON T1.birthday LIKE T2.id WHERE T2.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3
SELECT count(*) FROM Player WHERE birthday LIKE "199%" AND player_name LIKE "%Aaron%"
SELECT overall_rating - potential FROM Player_Attributes WHERE player_fifa_api_id = 6 MINUS SELECT overall_rating - potential FROM Player_Attributes WHERE player_fifa_api_id = 23
SELECT player_fifa_api_id FROM Player_Attributes WHERE preferred_foot = "right" ORDER BY potential ASC LIMIT 5
SELECT count(*) FROM Player_Attributes WHERE potential = (SELECT max(potential) FROM Player_Attributes) AND preferred_foot = "left";
SELECT count(*) * 100 / (SELECT count(*) FROM Player_Attributes) FROM Player_Attributes WHERE stamina > 80 AND strength > 80
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT home_team_goal , away_team_goal FROM MATCH WHERE date = "2008-09-24" AND league_id = ( SELECT id FROM LEAGUE WHERE name = "Belgian Jupiler League" )
SELECT T1.sprint_speed , T1.agility , T1.acceleration FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Alexis Blin";
SELECT buildUpPlaySpeedClass FROM Team_Attributes AS T WHERE T.team_short_name = "KSV Cercle Brugge"
SELECT count(*) FROM MATCH AS T1 JOIN LEAGUE AS T2 ON T1.league_id = T2.id WHERE T1.season = "2015/2016" AND T2.name = "Serie A"
SELECT max(home_team_goal) FROM MATCH AS T1 JOIN LEAGUE AS T2 ON T1.league_id = T2.id JOIN TEAM AS T3 ON T1.home_team_api_id = T3.team_api_id WHERE T2.name = "Netherlands Eredivisie"
SELECT T2.finishing , T2.curve FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight = (SELECT max(weight) FROM Player)
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2015 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 4
SELECT T1.team_long_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.away_team_api_id ORDER BY T2.away_team_goal DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT count(*) * 100 / (SELECT count(*) FROM Player WHERE height < 180) FROM Player WHERE height < 180 INTERSECT SELECT * FROM Player_Attributes WHERE overall_rating > 70
SELECT abs( ( ( SELECT count(*) FROM patient WHERE sex = 'M' ) - ( SELECT count(*) FROM patient WHERE sex = 'F' ) ) )
SELECT count(*) * 100.0 / (SELECT count(*) FROM patient WHERE sex = 'F') FROM patient WHERE sex = 'F' AND birthday > 1930
SELECT count(*) * 100.0 / (SELECT count(*) FROM patient WHERE birthday LIKE "193%") FROM patient WHERE birthday LIKE "193%" AND admission != "outpatient"
SELECT sum(T1.outpatient) / sum(T1.inpatient) FROM (SELECT inpatient , outpatient , diagnosis FROM examination GROUP BY diagnosis HAVING diagnosis = 'SLE') AS T1
SELECT T1.date , T2.diagnosis FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T2.id = "30609"
SELECT T1.sex , T1.birthday , T2.examination date , T2.symptoms FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT t1.id , t1.sex , t1.birthday FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t2.LDH > 240
SELECT id , sex , age FROM patient ORDER BY birthday DESC LIMIT 1
SELECT T1.id , T2.sex , T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.thrombosis = 'severe'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = 1937 AND T2.t_CHO > 200
SELECT T1.id , T1.sex , T2.Diagnosis FROM patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.ALB < 3.5
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'Female' AND T2.tp < 6 OR T2.tp > 80
SELECT avg(T1.aCL IgG) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday <= '1970-01-01'
SELECT count(*) FROM patient WHERE sex = 'F' AND admission LIKE "1997%" AND id IN (SELECT id FROM patient WHERE admission LIKE "1997%" AND sex = 'F')
SELECT avg(date() - birthday) FROM patient
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = (SELECT max(thrombosis) FROM examination WHERE examination.date LIKE "1997%") AND T1.sex = "F"
SELECT max(T2.age) - min(T2.age) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TG < 170
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id ORDER BY T2.Birthday DESC LIMIT 1
SELECT avg(T1.WBC) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'Male' AND T1.date LIKE "1998/%"
SELECT T1.labdate , T2.age FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'SJS' ORDER BY T2.age DESC LIMIT 1
SELECT sum(t1.sex = 'Male') / sum(t1.sex = 'Female') FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t2.ua > 6.6
SELECT count(*) FROM patient WHERE id NOT IN ( SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination_date > T2.first_date + 365 )
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday > '1993'
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = "Male" AND t2.t - bil > 1.2
SELECT T1.Diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date >= "1985-01-01" AND T2.date <= "1995-12-31" GROUP BY T1.Diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(date_of_birth) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991-10-%" AND T1.birthday LIKE "1999-%"
SELECT T1.age , T2.Diagnosis FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id ORDER BY T2.HGB DESC LIMIT 1
SELECT T1.DNA FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.date = "1996/12/2" AND T1.id = 3605340
SELECT T1.id FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1995-9-4" AND T2.id = 2927464 AND T1.T-BIL = "normal"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = 'AORTITIS' ORDER BY T2.examination_date ASC LIMIT 1
SELECT T1.aCL IgG FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = "SLE" AND T2.First Date = "1994/2/19" INTERSECT SELECT T1.aCL IgG FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T2.First Date = "1993/11/12"
SELECT t2.sex FROM Laboratory AS t1 JOIN Patient AS t2 ON t1.id = t2.id WHERE t1.date = "1992-6-12" AND t1.gpt = 9
SELECT T2.sex , T2.birthday , 8.4 - T1.ua FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1991-10-21" AND T1.ua = 8.4
SELECT count(*) FROM Laboratory WHERE Patient_ID IN ( SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SJS' AND T1.first_date = '1991/6/13') AND date LIKE "1995/%"
SELECT T1.Diagnosis FROM Patient AS T1 JOIN Examination AS T2 ON T1.id = T2.id WHERE T2.Diagnosis = "SLE" AND T2.Examination_date = "1997/1/27"
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = "1959/3/1" AND T1.examination date = "1993/9/27"
SELECT avg(T1.T-CHO) , avg(T2.T-CHO) FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T2.Birthday = "1959/2/18" AND T1.date LIKE "1981/11/%" INTERSECT SELECT avg(T1.T-CHO) , avg(T2.T-CHO) FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T2.Birthday = "1959/2/18" AND T1.date LIKE "1981/12/%"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Behcet's" AND T2.examination.date BETWEEN "01/01/1973" AND "12/31/1997"
SELECT T1.id FROM patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.date >= '1987-07-06' AND T2.date <= '1996-01-31' AND T2.gpt > 30 AND T2.alb < 4 ORDER BY T1.id
SELECT id FROM patient WHERE sex = "F" AND birthday LIKE "1964%" ORDER BY id
SELECT count(*) FROM examination WHERE Thrombosis = 2 AND ANA Pattern = "S-only" AND aCL IgM > (SELECT avg(aCL IgM) FROM examination)
SELECT count(*) * 100.0 / (SELECT count(*) FROM Laboratory WHERE UPRO BETWEEN 0 AND 200) FROM Laboratory WHERE UPRO BETWEEN 0 AND 200 AND UA BETWEEN 200 AND 400
SELECT count(*) * 100.0 / (SELECT count(*) FROM patient WHERE first date LIKE "1981%" AND sex = 'Male') FROM patient WHERE first date LIKE "1981%" AND sex = 'Male' AND diagnosis = 'BEHCET'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991/10/%" AND T2.t - bil <= 3.0 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991/10/%"
SELECT count(*) FROM patient WHERE sex = "Female" AND birthday LIKE "1980%" EXCEPT SELECT count(*) FROM patient WHERE id IN (SELECT id FROM examination WHERE ana = "Yes" AND ana pattern = "Lupus")
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = 'PSS' AND T3.crp = '2+' AND T3.creatinine = 1 AND T3.ldh = 123
SELECT avg(T1.ALB) FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = 'F' AND T1.PLT > 400 INTERSECT SELECT avg(T1.ALB) FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.diagnosis = 'SLE'
SELECT Symptoms FROM Examination WHERE Diagnosis = "SLE" GROUP BY Symptoms ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Diagnosis , T2.date FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 48473
SELECT count(*) FROM patient WHERE sex = "F" AND id IN (SELECT id FROM examination WHERE diagnosis = "APS")
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T3.date LIKE "1997%" AND T3.U_PRO < 1.0
SELECT count(*) FROM examination WHERE diagnosis = 'SLE' AND symptoms LIKE '%thrombocytopenia%'
SELECT count(*) * 100.0 / (SELECT count(*) FROM patient WHERE birthday like "1980%" AND diagnosis = "RA") FROM patient WHERE birthday like "1980%" AND diagnosis = "RA" AND sex = "F"
SELECT count(*) FROM patient WHERE sex = 'Male' AND birthday LIKE "1995%" AND diagnosis LIKE "%Behcet%" AND admission != diagnosis
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = "F" AND t2.wbc < 3.5
SELECT T1.examination_date - T2.admission FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 821298
SELECT UA FROM Laboratory WHERE ID = 57266
SELECT T1.date FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T1.got > 40
SELECT T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1994%" AND T2.got <= 40
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.gpt > 40 INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.gpt > 40
SELECT T1.diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GOT > 40 ORDER BY T1.birthday
SELECT avg(LDH) FROM Laboratory WHERE LDH BETWEEN 120 AND 460
SELECT T1.id , T2.age FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.LDH BETWEEN 100 AND 300
SELECT T1.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp >= 40 AND T2.alp <= 129
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.Birthday = "1982-04-01" INTERSECT SELECT id FROM laboratory WHERE ALP >= 40 AND ALP <= 129
SELECT t1.id , t1.sex , t1.birthday FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t2.tp < 60
SELECT T1.id , T2.tp - 6 FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.tp > 6
SELECT T2.birthday FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T1.alb < 3.5 OR T1.alb > 6 AND T2.sex = 'M' ORDER BY T2.birthday DESC
SELECT T1.id , T2.alb FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday LIKE "1982%" AND T2.alb >= 3.5 AND T2.alb <= 5
SELECT count(*) * 100.0 / (SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = 'Female' AND t2.ua > 6.0) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = 'Female' AND t2.ua > 6.0
SELECT avg(T2.ua) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ua = "normal" ORDER BY T1.first_date DESC LIMIT 1
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UN > 10 AND T2.UN < 20
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UN > 0 AND T2.RA = 1
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = 'Male' AND t2.cre > 1.2
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = "M" AND t2 cre > 1.2 SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = "F" AND t2 cre > 1.2
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.t - bil DESC LIMIT 1
SELECT T1.sex , count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL > 1.2 OR T2.T-BIL < 0.2 GROUP BY T1.sex
SELECT T1.id , T2.t_cho FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id ORDER BY T1.birthday ASC LIMIT 1
SELECT avg(100 - birthday) FROM patient WHERE sex = 'male' AND id IN (SELECT id FROM examination GROUP BY id HAVING count(diagnosis) >= 3)
SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TG > 100
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t2.tg > 170 AND t1.birthday < '1970-01-01'
SELECT DISTINCT T1.id FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CPK >= 60 AND T2.CPK <= 160
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'Male' AND T2.cpk > 140 AND T1.birthday BETWEEN 1936 AND 1956
SELECT t1.id , t1.sex , 2019 - int(strsplit(t1.birthday , "-") , 3) - 1 FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE glU > 140 AND t - CHO < 200
SELECT T1.id , avg(T2.glU) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first date = 1991 GROUP BY T1.id HAVING avg(T2.glU) BETWEEN 70 AND 130
SELECT T1.id , T2.sex , T2.birthday FROM patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.WBC > 10 GROUP BY T2.sex ORDER BY T2.birthday ASC
SELECT T1.id , T2.age FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC < 4.0
SELECT T1.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T1.birthday <= 1970 AND T2.RBC != '"Normal"'
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 13.0
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' INTERSECT SELECT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.hgb > 12
SELECT T1.id , 2019 - cast(substr(T1.birthday , 6) as int) - cast(substr(T1.birthday , 10) as int) FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT > 44 GROUP BY T1.id HAVING count(*) >= 2
SELECT avg(HCT) FROM Laboratory WHERE date LIKE "1991%" AND HCT < 44
SELECT count(*) FROM Laboratory WHERE PLT > 400 INTERSECT SELECT count(*) FROM Laboratory WHERE PLT < 150
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.plt > 50 AND T1.birthday < 1984
SELECT count(T1.id) * 100.0 / count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'F' AND T2.pt > 12 AND T1.birthday < '1964-12-31'
SELECT T1.description FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.pt > 11 AND T1.first_date > 1992
SELECT count(*) FROM examination WHERE examination_date > "1997/1/1" AND rvvt < 12
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.APTT = "abnormal" AND T1.thrombosis = 0
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.sex = "Male" AND t2.wbc > 7 AND t2.fg > 4
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t1.birthday > "1980/1/1" AND fg < 2
SELECT t2.Diagnosis FROM Laboratory AS t1 JOIN Patient AS t2 ON t1.id = t2.id WHERE t1.U-PRO > 100
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.UA = 0 AND T2.Diagnosis = "SLE"
SELECT count(*) FROM Laboratory WHERE IGG > (SELECT avg(IGG) FROM Laboratory)
SELECT count(*) FROM examination WHERE aCL IgG >= 0.6 AND Symptoms != "null"
SELECT T1.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgA >= 1.1 AND T2.aCL IgA <= 3.8 ORDER BY T2.aCL IgA DESC LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1."aCL IgA" = "normal" AND T2.admission > 1990
SELECT Diagnosis FROM Examination WHERE aCL IgM != "Normal" GROUP BY Diagnosis ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Laboratory WHERE crp != "Normal" AND id NOT IN (SELECT id FROM examination)
SELECT count(*) FROM Laboratory WHERE CRE > 1.2 AND birthday != "1970-01-01"
SELECT count(*) FROM Laboratory WHERE RF = "Normal" AND RA = "Positive"
SELECT T1.Diagnosis FROM Patient AS T1 JOIN Laboratory AS T2 ON T1.id = T2.id WHERE T1.Birthday > "1985-01-01" AND RA = 0
SELECT id FROM patient WHERE birthday < '1960-01-01' INTERSECT SELECT id FROM Laboratory WHERE RA = 'Normal'
SELECT count(*) FROM Laboratory WHERE rf = 'Normal' AND id NOT IN (SELECT id FROM examination WHERE thrombosis = 'Yes')
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.C3 = 'Normal' AND T1.ANA Pattern = 'P'
SELECT T2.id FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T1.hct > 44 AND T1.hct < 50 ORDER BY T1.aCL IgG DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "blood clot in veins" AND T2.C4 = 0.1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RNP = 1 AND T1.admission = 1
SELECT T2.Birthday FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T1.RNP != "-"
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.sm = 'negative' AND T1.thrombosis = 'no'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.sm = 1 ORDER BY T1.birthday DESC LIMIT 3
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.examination_date > "1997/1/1" AND T3.sc170 = "Normal"
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE t2.sc170 = "negative" AND t1.sex = "Female" EXCEPT SELECT count(*) FROM patient AS t1 JOIN examination AS t2 ON t1.id = t2.id WHERE t2.symptoms != "null"
SELECT count(*) FROM Laboratory WHERE examination_date < 2000 AND SSA = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SSA = 1 ORDER BY T2.date ASC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SSB = 'Normal' AND T1.diagnosis = 'SLE'
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SSB = 'Negative' INTERSECT SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SSB = 'Positive'
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.CENTROMEA = 'normal' AND T1.SSB = 'normal' AND T2.sex = 'Male'
SELECT T1.diagnosis FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.DNA != "Normal"
SELECT count(*) FROM Laboratory WHERE DNA = 0 AND date != "0000-00-00"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgG = 1
SELECT count(*) * 100.0 / (SELECT count(*) FROM examination) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.got > 100 AND T1.diagnosis = "SLE"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "Male" AND T2.got <= 40
SELECT T2.birthday FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T1.GOT > 40 ORDER BY T2.birthday LIMIT 1
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu >= 50 ORDER BY T2.glu DESC LIMIT 3
SELECT count(*) FROM patient AS t1 JOIN laboratory AS t2 ON t1.id = t2.id WHERE glU = "normal" AND t1.sex = "Male"
SELECT T1.date FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ldh >= 100 AND T2.ldh <= 200 ORDER BY T1.firstdate LIMIT 1
SELECT T2.date FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.ldh > 300 ORDER BY T2.date DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp > 140 AND T1.admission != "null"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp = 40
SELECT t2.diagnosis FROM laboratory AS t1 JOIN patient AS t2 ON t1.id = t2.id WHERE t1.tp < 6.8
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SJS' AND T2.TP = 'Normal'
SELECT T1.examination_date FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alb = (SELECT max(alb) FROM laboratory)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.alb >= 4 AND T2.tp >= 6
SELECT T1.aCL IgG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T3.id = T2.id WHERE T3.ua >= 2.6 AND T3.ua <= 6.0 AND T2.sex = 'F' ORDER BY T3.ua DESC LIMIT 1
SELECT max(T1.aCL IgG) FROM Examination AS T1 JOIN Laboratory AS T2 ON T1.ID = T2.ID WHERE T2.CRE < 1.5
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date > "2019-01-01" AND T2.aCL IgG = ( SELECT max(T2.aCL IgG) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date > "2019-01-01" AND T2.kct < 1.2 )
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.t - bil > 1.2 AND T1.ana = "perinuclear"
SELECT T1.ANAA FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-CHO = (SELECT max(T-CHO) FROM laboratory WHERE T-CHO <= 2.2)
SELECT count(*) FROM Laboratory WHERE T - CHO > 200 AND T - CHO < 240
SELECT count(*) FROM examination WHERE ana LIKE "P" AND id IN (SELECT T1.id FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.t_CHO >= 130 AND T1.t_CHO <= 200)
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TG <= 170 INTERSECT SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TG >= 150 AND T2.TG <= 170
SELECT T2.Diagnosis FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.id = T2.id WHERE T1.TG > 150 ORDER BY T1.TG DESC LIMIT 1
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.cpk != "Normal" AND T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'Yes')
SELECT count(*) FROM Laboratory WHERE Creatinine_phosphokinase >= 100 AND Creatinine_phosphokinase <= 200 AND CPK > 10000
SELECT birthday FROM patient ORDER BY age DESC LIMIT 1
SELECT count(*) FROM examination WHERE diagnosis = "normal blood glucose" AND thrombosis = 'No'
SELECT count(*) FROM Laboratory WHERE WBC > 4 AND WBC < 10
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T2.WBC = 'Normal'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC < 4 AND T2.HGB < 8
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.plt > 200 AND T1.symptoms != "null"
SELECT T1.PLT FROM Laboratory AS T1 JOIN Patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "MCTD" AND T1.PLT BETWEEN 150000 AND 400000
SELECT avg(T1.pt) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "Male" AND T2.pt = 12
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "severe thrombosis" AND T2.pt = 12
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Angela" AND T1.last_name = "Sanders"
SELECT count(*) FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.college = 'College of Engineering'
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = "Art and Design"
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "Women's Soccer"
SELECT T1.phone FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.event_name = "Women's Soccer" AND T3.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.link_to_member IN (SELECT member_id FROM member WHERE position = 'student') GROUP BY T1.event_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = "vice president of student club"
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean"
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Sacha" AND T3.last_name = "Harrison" AND T1.type = "Student Club" AND T1.event_date LIKE "2019%"
SELECT count(*) FROM event WHERE event_type = 'Meeting' AND event_id IN ( SELECT T1.event_id FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T3.event_id = T1.event_id WHERE T2.position = 'Student' GROUP BY T1.event_id HAVING count(*) > 10 )
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event HAVING count(*) > 20 EXCEPT SELECT event_name FROM event WHERE TYPE = 'fundraiser'
SELECT avg(T1.attendance) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "2020%"
SELECT max(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.budget_id JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.type = "club"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = "Laugh Out Loud"
SELECT T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = "Law" AND T2.major_name = "Constitutional Studies"
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey"
SELECT T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Tyler" AND T1.last_name = "Hewitt"
SELECT sum(T1.amount) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = "Vice President"
SELECT sum(T1.cost) FROM expense AS T1 JOIN event AS T2 ON T1.expense_date = T2.event_date WHERE T2.event_name = "Student Club" AND T2.event_date LIKE "%Sep%"
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.position = "President" AND T2.first_name = "Jane" AND T2.last_name = "Smith"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = "Illinois"
SELECT sum(T1.cost) FROM expense AS T1 JOIN event AS T2 ON T1.expense_date = T2.event_date WHERE T2.event_name = "Student Club" AND T2.event_date LIKE "%Sep%"
SELECT T2.department FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Pierce" INTERSECT SELECT T2.department FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Guidi"
SELECT sum(amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT approved FROM expense AS T1 JOIN event AS T2 ON T1.expense_date = T2.event_date WHERE T2.event_name = "October Meeting" AND T2.event_date = "2019-10-08"
SELECT sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.first_name = "Elijah" AND T3.last_name = "Allen" AND T2.event_date LIKE "%Sep%" OR T2.event_date LIKE "%Oct%"
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN event AS T3 ON T1.link_to_event = T3.event_id JOIN budget AS T4 JOIN event AS T5 ON T4.link_to_event = T5.event_id WHERE T3.event_date LIKE "2020%" AND T5.event_date LIKE "2019%" AND T3.type = "Student_Club" AND T5.type = "Student_Club"
SELECT LOCATION FROM event WHERE event_name = "Spring Budget Review"
SELECT cost FROM expense WHERE expense_date = "2019-09-04" AND expense_description = "Posters"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019-09-14"
SELECT count(*) FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs"
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "O'Gallagher"
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Meeting" AND T1.amount > T1.spent
SELECT sum(amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT T1.status FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = "Post Cards, Posters" AND T1.event_date = "2019-08-20"
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Brent" AND T1.last_name = "Thomason"
SELECT count(*) FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = "Business" AND T1.t_shirt_size = "Medium"
SELECT T1.type FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Christof" AND T2.last_name = "Nielson"
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = "Vice President"
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T2.department FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = "President"
SELECT T1.date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Connor" AND T2.last_name = "Hilton"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.source = 'dues' ORDER BY T2.date_received ASC LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND amount > (SELECT amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Meeting")
SELECT sum(amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Speaker" AND category = "Parking"
SELECT sum(cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id JOIN event AS T3 ON T2.link_to_event = T3.event_id
SELECT count(*) FROM zip_code WHERE county = "Orange" AND state = "Virginia"
SELECT DISTINCT department FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT T1.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amy" AND T2.last_name = "Firth"
SELECT T1.cost FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id ORDER BY T2.remaining ASC LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id GROUP BY T2.college ORDER BY count(*) DESC LIMIT 1
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY amount DESC LIMIT 1
SELECT T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = "Vice President"
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "Women's Soccer"
SELECT T1.date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason"
SELECT count(*) FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'MD'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT * FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.department = "School of Applied Sciences , Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'Closed' ORDER BY spent / amount DESC LIMIT 1
SELECT count(*) FROM member WHERE position = 'President'
SELECT spent FROM budget ORDER BY spent DESC LIMIT 1
SELECT count(*) FROM event WHERE TYPE = 'Meeting' AND event_date LIKE "2020%"
SELECT sum(spent) FROM budget WHERE category = "Food"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member HAVING count(*) > 7
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id JOIN attendance AS T3 ON T1.member_id = T3.link_to_member JOIN event AS T4 ON T3.link_to_event = T4.event_id WHERE T2.major_name = "interior design" AND T4.event_name = "Community Theater"
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "SC" AND T1.city = "Georgetown"
SELECT sum(amount) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour"
SELECT T2.first_name , T2.last_name FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.amount > 40
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.budget_id JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Yearly Kickoff"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Yearly Kickoff"
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.source ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.cost ASC LIMIT 1
SELECT sum(cost) , sum(cost) / ( SELECT sum(cost) FROM expense ) FROM expense WHERE link_to_budget IN ( SELECT budget_id FROM budget WHERE event_status = 'Yes' AND link_to_event IN ( SELECT event_id FROM event WHERE event_name = 'Yearly Kickoff' ) );
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Finance'
SELECT source FROM income WHERE date_received LIKE "%Sep %2019%" ORDER BY amount DESC LIMIT 1
SELECT first_name , last_name , email FROM member WHERE position = "Secretary"
SELECT count(*) FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = 'Physics Teaching'
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "Community Theater" AND T1.event_date LIKE "2019%"
SELECT count(*) , T1.major_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T1.first_name = "Luisa" AND T1.last_name = "Guidi" GROUP BY T1.link_to_major
SELECT avg(amount) FROM budget WHERE category = "food" AND event_status = "Past"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = "advertisement" ORDER BY T2.spent DESC LIMIT 1
SELECT count(*) FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "McLean" AND T1.event_name = "Women's Soccer"
SELECT count(*) * 100 / (SELECT count(*) FROM event WHERE YEAR(event_date) = 2019 AND TYPE = 'Student Club') FROM event WHERE YEAR(event_date) = 2019 AND TYPE = 'Student Club' AND event_name LIKE '%Community Service%'
SELECT sum(T2.cost) FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker' AND T2.expense_description = 'posters'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = "Closed" AND T2.event_status = "Final" ORDER BY T2.amount - T2.spent DESC LIMIT 1
SELECT T1.category , sum(T1.approved) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.expense_id JOIN event AS T3 ON T3.event_id = T2.event_id WHERE T3.event_name = 'October Meeting' GROUP BY T1.category
SELECT category FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'April Speaker' ORDER BY T2.amount
SELECT amount FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = "Advertising" ORDER BY amount DESC LIMIT 3
SELECT sum(cost) FROM expense WHERE expense_description LIKE "%Parking%"
SELECT sum(cost) FROM expense WHERE expense_date = "8/20/2019"
SELECT T1.first_name , T1.last_name , sum(expense.cost) FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.member_id = "rec4BLdZHS2Blfp4v" GROUP BY T1.member_id
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "X-Large"
SELECT T1.zip FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost < 50
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Phillip" AND T1.last_name = "Cullen"
SELECT T1.position FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = "Business"
SELECT count(*) FROM member WHERE t_shirt_size = 'Medium' AND position = 'Business'
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date = "2020-03-24T12:00:00"
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = "Vice President"
SELECT count(*) , count(T1.link_to_major) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = "extra large"
SELECT count(*) FROM major WHERE department = "School of Applied Sciences, Technology and Education" AND college = "College of Agriculture and Applied Sciences"
SELECT T1.last_name , T2.department , T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = "environmental engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" INTERSECT SELECT category FROM budget WHERE spent = 0
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip JOIN major AS T3 ON T2.link_to_major = T3.major_id WHERE T3.department = "Electrical and Computer Engineering"
SELECT T1.event_name FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.position JOIN zip_code AS T3 ON T3.zip_code = T2.zip WHERE T2.first_name = "Vice" AND T2.last_name = "President" AND T3.city = "Washington" AND T3.state = "DC" AND T3.type = "College";
SELECT T1.last_name , T1.position FROM member AS T1 JOIN event AS T2 ON T1.member_id = T2.event_id WHERE T2.type = "pizza" AND T2.event_date = "2019-09-10"
SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T3.event_id = T1.link_to_event WHERE T3.event_name = "women's soccer"
SELECT count(*) * 100.0 / (SELECT count(*) FROM member WHERE t_shirt_size = "medium") FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "medium" AND T1.source = "Student Club"
SELECT DISTINCT T2.country FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.type = "PO Box"
SELECT zip_code FROM zip_code WHERE county = "San Juan Municipio" AND state = "Puerto Rico"
SELECT event_name FROM event WHERE TYPE = "game" AND status = "Closed" AND event_date BETWEEN "2019-03-15" AND "2020-03-20"
SELECT T1.link_to_event FROM event AS T1 JOIN income AS T2 ON T1.event_id = T2.link_to_event WHERE T2.amount > 50
SELECT T1.member_id , T1.first_name , T1.last_name , T2.link_to_event FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_date BETWEEN "2019-01-10" AND "2019-11-19"
SELECT T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Katy" AND T2.major_name = "rec1N0upiVLy5esTO"
SELECT T1.phone FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.college = "College of Agriculture and Applied Sciences" AND T2.major_name = "Business"
SELECT T1.email FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 20 AND T2.date_received LIKE "2019-09-10%" OR T2.date_received LIKE "2019-11-19%"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.college = "College of Education & Human Services"
SELECT count(*) * 100 / (SELECT count(*) FROM budget) FROM budget WHERE spent > amount
SELECT event_id , LOCATION , STATUS FROM event WHERE event_date LIKE "11/%" OR event_date LIKE "12/%" OR event_date LIKE "03/%"
SELECT avg(cost) FROM expense WHERE cost > 50
SELECT first_name , last_name FROM member WHERE t_shirt_size = "extra large"
SELECT count(*) * 100 / (SELECT count(*) FROM zip_code) FROM zip_code WHERE TYPE = "PO Box"
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < T2.amount
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_budget WHERE T2.cost > 50 AND T2.expense_description = "pizza"
SELECT T1.first_name , T1.last_name , T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id JOIN expense AS T3 ON T3.link_to_member = T1.member_id WHERE T3.cost > 100
SELECT T1.city , T1.country FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip JOIN income AS T3 ON T2.member_id = T3.link_to_member GROUP BY T3.event_id HAVING sum(T3.amount) > 40
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member HAVING count(*) > 1 ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM income WHERE member_id NOT IN (SELECT member_id FROM member WHERE position = 'member')
SELECT event_name FROM event WHERE event_date < (SELECT avg(cost) FROM expense)
SELECT avg(cost) FROM expense WHERE event_id IN (SELECT event_id FROM event WHERE TYPE = 'Meeting')
SELECT amount FROM budget WHERE category = "Water" OR category = "Chips" OR category = "Cookies"
SELECT T2.first_name , T2.last_name FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member ORDER BY sum(T1.cost) DESC LIMIT 5
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.cost > (SELECT avg(cost) FROM expense)
SELECT count(*) FROM (SELECT * FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = "NJ") AS T3 minus count(*) FROM (SELECT * FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = "VT") AS T4
SELECT T2.major_name , T2.department FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Garrett" AND T1.last_name = "Gerke"
SELECT T1.first_name , T1.last_name , sum(T2.cost) FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expense_description = "water" OR T2.expense_description = "veggie tray" OR T2.expense_description = "supplies" GROUP BY T1.member_id
SELECT T1.last_name , T1.phone FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T2.major_name = "Elementary Education"
SELECT category , amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE category = "food"
SELECT T2.first_name , T2.last_name , T1.amount FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.date_received = "9/9/19"
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name , T1.last_name , T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT sum(T2.cost) , T1.event_name FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T2.expense_description = "Speaker Gift"
SELECT T1.city FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke"
SELECT T2.first_name , T2.last_name , T2.position FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.city = "Lincolnton" AND T1.state = "North Carolina" AND T1.zip_code = 28092;
SELECT count(*) FROM gasstations WHERE country = 'CZE' AND segment = 'Premium'
SELECT count(*) FILTER (WHERE currency = 'EUR') / count(*) FILTER (WHERE currency = 'CZK') FROM customers
SELECT customerid FROM yearmonth WHERE date > 2012 AND date < 2013 ORDER BY consumption DESC LIMIT 1
SELECT avg(consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = 'SME' AND date LIKE '2013%'
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "CZK" AND T2.date LIKE "2011%" GROUP BY T1.customerid ORDER BY sum(T2.consumption) DESC LIMIT 1
SELECT count(*) FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t1.segment = "KAM" AND t2.consumption < 30000 AND t2.date LIKE "2012%"
SELECT abs(sum(consumption)) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'CZK' AND date LIKE '2012%' EXCEPT SELECT abs(sum(consumption)) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'EUR' AND date LIKE '2012%'
SELECT date FROM yearmonth GROUP BY date ORDER BY sum(consumption) DESC LIMIT 1
SELECT segment FROM yearmonth GROUP BY segment ORDER BY sum(consumption) ASC LIMIT 1
SELECT Date FROM yearmonth GROUP BY Date ORDER BY sum(consumption) DESC LIMIT 1
SELECT T1.date FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = 'SME' AND T1.date LIKE "2013%" ORDER BY T1.consumption DESC LIMIT 1
SELECT T1.consumption - T2.consumption FROM (SELECT T3.consumption , T4.segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid JOIN customers AS T3 ON T3.customerid = T1.customerid WHERE T3.currency = "CZK" AND T3.date = "2013" AND T3.segment = "SME" ) AS T4 JOIN (SELECT T3.consumption , T4.segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid JOIN customers AS T3 ON T3.customerid = T1.customerid WHERE T3.currency = "CZK" AND T3.date = "2013" AND T3.segment = "LAM" ) AS T4 ON T4.consumption - T3.consumption
SELECT T1.segment , max(T2.consumption) - min(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2012%" INTERSECT SELECT T1.segment , max(T2.consumption) - min(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2013%"
SELECT sum(consumption) FROM yearmonth WHERE customerid = 6 AND date LIKE "2013-08-%" OR date LIKE "2013-11-%"
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" - (SELECT count(*) FROM gasstations WHERE country = "Slovakia")
SELECT consumption - (SELECT consumption FROM yearmonth WHERE customerid = 5 AND date = "2013-04") FROM yearmonth WHERE customerid = 7 AND date = "2013-04"
SELECT count(*) FROM customers WHERE segment = "SME" AND currency = "Czech koruna" UNION ALL SELECT count(*) FROM customers WHERE segment = "SME" AND currency = "Euro"
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'Euro' AND T2.date = "2013-10" ORDER BY T2.consumption DESC LIMIT 1
SELECT T1.customerid , sum(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = "KAM" GROUP BY T1.customerid ORDER BY sum(T2.consumption) DESC LIMIT 1
SELECT sum(consumption) FROM yearmonth WHERE date LIKE "2013-05%" AND customerid IN (SELECT customerid FROM customers WHERE segment = "KAM")
SELECT count(*) * 100.0 / (SELECT count(*) FROM yearmonth) FROM yearmonth WHERE consumption > 46.73
SELECT country , count(*) FROM gasstations WHERE segment = "Value for Money" GROUP BY country
SELECT count(*) , 'percentage' FROM customers WHERE segment = 'KAM' AND currency = 'EUR'
SELECT count(*) * 100.0 / (SELECT count(*) FROM yearmonth WHERE date LIKE "2012-02%") FROM yearmonth WHERE date LIKE "2012-02%" AND consumption > 528.3
SELECT count(*) * 100.0 / (SELECT count(*) FROM gasstations WHERE country = 'Slovakia') FROM gasstations WHERE country = 'Slovakia' AND segment = 'Premium'
SELECT customerid FROM yearmonth WHERE date LIKE "2013-09-%" ORDER BY sum(consumption) DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2013-09" GROUP BY T1.segment ORDER BY sum(T2.consumption) ASC LIMIT 1
SELECT customerid FROM yearmonth WHERE date LIKE "2012-06%" ORDER BY consumption LIMIT 1
SELECT max(consumption) FROM yearmonth WHERE date LIKE "2012%"
SELECT max(consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'Euro'
SELECT T1.description FROM products AS T1 JOIN yearmonth AS T2 ON T1.productid = T2.productid WHERE T2.date = "2013-09"
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date LIKE "2013-06-%"
SELECT DISTINCT T1.chainid FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid JOIN customers AS T3 ON T3.customerid = T2.customerid WHERE T3.currency = 'EUR'
SELECT T1.description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.currency = 'Euro'
SELECT avg(amount) FROM transactions_1k WHERE date LIKE "2012-01-%"
SELECT count(*) FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t1.currency = "Euro" AND t2.consumption > 1000
SELECT T3.description FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1_gasstationid = T2_gasstationid JOIN products AS T3 ON T1_productid = T3_productid WHERE T2_country = 'Czech Republic'
SELECT DISTINCT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.chainid = 11
SELECT count(*) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.country = "Czech Republic" AND T2.price > 1000
SELECT count(*) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.country = "Czech Republic" AND T2.date > "2012/1/1"
SELECT avg(T1.Amount + T1.Price) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1_gasstationid = T2_gasstationid WHERE T2_Country = "Czech Republic"
SELECT avg(T1.Total) FROM (SELECT customerid , sum(price) AS Total FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "Euro" GROUP BY T1.customerid) AS T3
SELECT T1.customerid FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2012/8/25" ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = "2012/8/25" LIMIT 1
SELECT T1.Currency FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012-8-24" AND T2.Time = "16:25:00"
SELECT T1.segment FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2012" AND T2.time = "8/23 21:20:00"
{"sql": "SELECT count(*) FROM transactions_1k WHERE date = \"2012-08-26\" AND TIME LIKE \"AM\" AND amount % 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
SELECT segment FROM customers ORDER BY customerid LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = "2012" AND T2.Time = "8/24 12:42:00"
SELECT ProductID FROM transactions_1k WHERE Date = "2012" AND Time = "8/23 21:20:00"
SELECT date , consumption FROM yearmonth WHERE customerid = (SELECT customerid FROM transactions_1k WHERE date = "2012-8-24" AND amount = 124.05) AND date LIKE "2012-1-%"
SELECT count(*) FROM transactions_1k WHERE date = "2012-08-26" AND TIME LIKE "8:00:%" UNION SELECT count(*) FROM transactions_1k WHERE date = "2012-08-26" AND TIME LIKE "9:00:%"
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2013-06" AND T2.Consumption = 214582.17
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.CardID = 667467
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/24" AND T2.Consumption = 548.4
SELECT count(*) * 100 / (SELECT count(*) FROM customers) FROM customers WHERE currency = "EUR"
SELECT T1.consumption - T2.consumption FROM yearmonth AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012/8/25" AND T2.date = "2013/8/25"
SELECT T2.GasStationID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T2.GasStationID ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT count(*) * 100 / (SELECT count(*) FROM customers WHERE country = "SVK") FROM customers WHERE country = "SVK" AND segment = "premium"
SELECT sum(amount) , sum(consumption) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.transactionid = T2.transactionid WHERE T1.customerid = 38508 AND T2.date LIKE "2012-01%"
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID GROUP BY T1.ProductID ORDER BY sum(T1.Amount) DESC LIMIT 5
SELECT T1.CustomerID , avg(T2.Price) , T1.currency FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY avg(T2.Price) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = 2 ORDER BY T2.Price DESC LIMIT 1
SELECT T2.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.ProductID = 5 AND T1.Price > 29 AND T2.Date LIKE "2012-08-%"
