SELECT max(percent)eligiblefree FROM frpm WHERE county = "Alameda" AND district = "K-12"
SELECT Percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE enrollment (Ages 5-17) = "K-12" AND school type = "Continuation"
SELECT zip FROM schools WHERE county = "Fresno" AND charter = 'Y'
SELECT t1.street FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY t2.frmpmcount DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND fundingtype = 'Charter'
SELECT count(*) FROM schools WHERE virtual = 'V' AND avgscrmath > 400
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode WHERE T2.numtsttaker > 500 AND T1.magnet = 'Y' OR T1.gsoffered = 'Y'
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.numtsttaker = (SELECT max(numtsttaker) FROM satscores WHERE avgscrread > 1500)
SELECT count(*) FROM frpm WHERE school = (SELECT school FROM frpm GROUP BY school ORDER BY FRPM Count (K-12) DESC LIMIT 1)
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE avgscrmath > 560 AND T1.charter = 'Y'
SELECT count(*) FROM frpm AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.schoolname = 'Reading' AND T2.rtype = 'SAT' AND T2.numgte1500 = 1500 AND T1.enroll12 = 1000 AND T1.enroll12 BETWEEN 5 AND 17 GROUP BY T1.schoolname ORDER BY avgscrread DESC LIMIT 1
SELECT T1.CDSCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.CDSCode HAVING sum(enrollment) > 500
SELECT max(Percent) Eligible Free (Ages 5-17) FROM frpm WHERE Percent > 0.3
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.avgscrread = (SELECT avg(avgscrread) FROM satscores GROUP BY T2.cds ORDER BY T2.avgscrread DESC LIMIT 3)
SELECT T1.NCESSchool FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Enrollment (Ages 5-17) DESC LIMIT 5;
SELECT T1.district FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.district = 'Reading' GROUP BY T1.district ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools WHERE district = "Alameda" AND numtsttaker < 100
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrWrite > 499 ORDER BY T2.AvgScrWrite
SELECT count(*) FROM schools WHERE county = "Fresno" AND fundingtype = "Directly funded" AND numtsttaker <= 250
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.Phone ORDER BY avg(T2.AvgScrMath) DESC LIMIT 1
SELECT count(*) FROM frpm WHERE low grade = 9 AND high grade = 12 AND county = 'Amador'
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.city = "Los Angeles" AND T2.educationaloptiontype = "K-12" AND T2.freemealcount (K-12) > 500 AND T2.freemealcount (K-12) < 700
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.county = "Contra Costa" ORDER BY T2.numtsttaker DESC LIMIT 1
SELECT T1.school_name , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE abs(T2.enrollment (K-12) - T2.enrollment (Ages 5-17)) > 30
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.schoolname FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrRead >= 1500
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE avgscrmath > 400 GROUP BY T1.school ORDER BY avgscrmath > 400
SELECT T1.school , T1.street , T1.streetabr , T1.city , T1.state FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = "Monterey" AND T2.freemealcount (Ages 5-17) > 800
SELECT T1.schoolname , T1.avgscrwrite , T1.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.opendate > "1991-01-01" OR T1.closeddate < "2000-01-01"
SELECT T1.schoolname , T1.doctype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.edopsname = "K-12" DIFFERENT FROM T1.edopsname = "15-17" AND T1.fundingtype = "Locally Funded" GROUP BY T1.schoolname ORDER BY abs(T2.enrollment (K-12) - T2.enrollment (Ages 5-17)) GROUP BY T1.schoolname HAVING avg( abs(T2.enrollment (K-12) - T2.enrollment (Ages 5-17)) ) > ( SELECT avg( abs(T2.enrollment (K-12) - T2.enrollment (Ages 5-17)) ) FROM frpm AS T2 JOIN schools AS T1 ON T1.cdscode = T2.cdscode WHERE T1.edopsname = "K-12" DIFFERENT FROM T1.edopsname = "15-17" AND T1.fundingtype = "Locally Funded" )
SELECT opendate FROM frpm ORDER BY enroll12 DESC LIMIT 12
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.lowgrade <= 12 GROUP BY T1.city ORDER BY count(*) ASC LIMIT 5
SELECT Percent (%) Eligible Free (K-12) FROM frpm ORDER BY Enroll12 DESC LIMIT 2
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.educationaloptiontype = "K-12" AND T2.Percent (%) Eligible Free (K-12) = 100 AND T2.Percent (%) Eligible FRPM (K-12) = 100 AND T2.FRPM Count (K-12) = 100 ORDER BY T1.schoolcode DESC LIMIT 5
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.free meal count >= 1900 AND T2.free meal count <= 2000 AND T2.Percent (%) Eligible Free (Ages 5-17) >= 50 AND T2.Percent (%) Eligible Free (Ages 5-17) <= 100
SELECT percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE school = 'Kacey Gibson' AND enroll12 = 5-17
SELECT t1.admemail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charterschool = 'Y' AND t2.lowgrade = '1' AND t2.highgrade = '12' ORDER BY enroll12 LIMIT 1
SELECT t1.admfname1 , t1.admfname2 FROM schools AS t1 JOIN satscores AS t2 ON t1.cdscode = t2.cds WHERE t2.numge1500 >= 1500 ORDER BY t2.numge1500 DESC LIMIT 1
SELECT T1.street , T1.city , T1.zip , T1.state FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.percent (%) Eligible Free (K-12) LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Los Angeles" AND T2.enroll12 BETWEEN 2000 AND 3000
SELECT avg(NumTstTakr) FROM schools WHERE county = "Fresno" AND opendate BETWEEN "01/01/1980" AND "12/31/1980";
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.county = "Fresno Unified" AND T2.rtype = "Read" GROUP BY T1.cds ORDER BY avgscrread LIMIT 1
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T1.virtual = 'Yes' ORDER BY T2.avgscrread DESC LIMIT 5
SELECT gsofs FROM schools WHERE gsofs = (SELECT avg(avgscrmath) FROM satscores GROUP BY cds ORDER BY avgscrmath DESC LIMIT 1)
SELECT avg(T1.AvgScrMath) , T2.County FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cdscode GROUP BY T2.county ORDER BY avg(T1.AvgScrMath) LIMIT 1
SELECT avg(scrg) , t1.city FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds GROUP BY t1.cds ORDER BY count(*) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.school = 'Ricci Ulrich'
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment > 10000 AND T2.LowerGrade <= 12 GROUP BY T1.State ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM schools WHERE county = "Alameda" AND district = "Elementary School District" AND opendate = 1980
SELECT count(*) / count(*) FROM frpm WHERE county = "Orange County" AND district = "Unified School District" INTERSECT SELECT count(*) / count(*) FROM frpm WHERE county = "Orange County" AND district = "Elementary School District"
SELECT T1.County , T2.ClosedDate FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.AvgScrMath DESC LIMIT 7
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode GROUP BY T1.school ORDER BY avgscrread LIMIT 1
SELECT count(*) FROM schools WHERE mailcity = "Lakeport" INTERSECT SELECT count(*) FROM satscores WHERE numge1500 >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT school , mailzip FROM schools WHERE admfname1 = 'Avetik Atoian'
{"sql": "SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" OVER (schools) : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" OVER (schools) : SELECT avg(T1.count) FROM schools AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.mailstate = \"CA\" AND T1.county = \"Colusa\" OVER (schools) : SELECT avg(T1.count) FROM schools AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.mailstate = \"CA\" AND T1.county = \"Humboldt\" OVER (schools) : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humboldt\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Colusa\" : SELECT count(*) FROM schools WHERE mailstate = \"CA\" AND county = \"Humb
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = 'San Joaquin' AND statustype = 'Active'
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY avgScrWrite LIMIT 3
SELECT school , phone , ext FROM schools WHERE zip = "95203-3704"
SELECT school FROM schools WHERE admfn1 = "Mike Larson" INTERSECT SELECT school FROM schools WHERE admfn2 = "Dante Alvarez"
SELECT website FROM schools WHERE county = "San Joaquin" AND virtual = 'P' AND charter = 'Y'
SELECT count(*) FROM schools WHERE city = 'Hickman' AND charter = 'Y' AND district = 'Elementary School District'
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND percent (%) Eligible Free (K-12) < 0.18
SELECT T1.school , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charterschoolnumber = 00D2
SELECT count(*) FROM schools WHERE mailcity = "Hickman" AND CharterNum = "00D4"
SELECT count(*) , sum(Percent (%) Eligible Free (Y/N)) FROM frpm WHERE FundingType = "Local" AND County = "Santa Clara"
SELECT count(*) FROM schools WHERE opendate BETWEEN "01/01/2000" AND "12/31/2005" AND county = "Stanislaus"
SELECT sum(T1.closeddate) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.city = "San Francisco" AND T2.academicyear = 1989 AND T2.districttype = "Community College District"
SELECT county FROM schools WHERE statustype = "Closed" AND edopscode = "YEAH" AND academicyear = 1980 OR 1981 OR 1982
SELECT T1.NCESDist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.District = "State Special Schools"
SELECT count(*) , statustype FROM schools WHERE county = 'Alpine' AND district = 'Closed' UNION SELECT count(*) , statustype FROM schools WHERE county = 'Alpine' AND district = 'Active'
SELECT district FROM schools WHERE district TYPE = "Magnet" AND city != "Fresno"
SELECT count(*) FROM frpm WHERE school_name = "State Special School" AND district_name = "Fremont" AND academic_year = 2014-2015 AND enrollment (Ages 5-17) = 1 AND school_code = "CDS123456"
SELECT frpm.count FROM frpm JOIN schools ON frpm.cdscode = schools.cdscode WHERE schools.street = "PO Box 1040" AND schools.statustype = "Youth Authority" AND frpm.schoolname = "Youth Authority School" AND frpm.educationaloptiontype = "K-12" AND frpm.freemealcount (Ages 5-17) <= 10
SELECT min(low grade) FROM frpm WHERE district = 0613360 AND school name = "District Special Education Consortia"
SELECT T2.EdOpsName FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.NSLP Provision Status = "2" AND T2.County = "37"
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.edopsname = "K-12" AND T2.lunch Provision = 2 AND T2.low grade = 9 AND T2.high grade = 12 AND T2.county = "Merced"
SELECT T1.schoolname , T2.Percent (%) Eligible FRPM (K-12) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Los Angeles" AND T1.gradespan = "K-9"
SELECT gserved FROM frpm WHERE city = "Adelanto" GROUP BY gserved ORDER BY count(*) DESC LIMIT 1
SELECT county FROM schools WHERE state = "San Diego" AND district = "X" EXCEPT SELECT county FROM schools WHERE state = "Santa Barbara" AND district = "X" AND GSoffered = "Physical Building" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT school FROM schools WHERE state = 'CA' ORDER BY latitude LIMIT 1
SELECT GSoffered FROM schools WHERE longitude = (SELECT longitude FROM schools ORDER BY longitude DESC LIMIT 1)
SELECT count(*) , city FROM schools WHERE magnet = 'Yes' AND GSoffered = "K-8" GROUP BY city
SELECT AdmFName1 , district FROM schools GROUP BY district ORDER BY count(*) DESC LIMIT 2
SELECT T1.district FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.admfname1 = "Alusine"
SELECT t1.admlname1 , t1.county , t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charternum = 40
SELECT admemail1 FROM schools WHERE opendate BETWEEN '01/01/2009' AND '12/31/2010' AND county = 'San Bernardino' AND district = 'City of San Bernardino City Unified' AND schooltype = 'Public Intermediate/Middle Schools' AND schooltype = 'Unified Schools'
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.numtsttaker >= 1500 ORDER BY T2.numtsttaker DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 13 AND T2.operation = 'issuance' AND T1.district_id = 12 AND T1.district_id = 15 AND T1.district_id = 16
SELECT count(DISTINCT T1.account_id) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T3.A2 = 'Prague'
SELECT avg(unemployment) FROM account WHERE date = '1995' INTERSECT SELECT avg(unemployment) FROM account WHERE date = '1996'
SELECT count(*) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND (SELECT avg(T1.A5) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' AND T1.A5 BETWEEN 6000 AND 10000 GROUP BY T1.A5) > 6000
SELECT count(*) FROM client WHERE gender = 'male' AND district_id IN (SELECT a3 FROM district WHERE A2 = "North Bohemia") GROUP BY district_id HAVING avg(balance) > 8000
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date DESC LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date DESC LIMIT 2 GROUP BY account_id ORDER BY avg(balance) LIMIT 2 ASC - avg(balance) LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id ORDER BY T1.birth_date LIMIT 1 UNION SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id GROUP BY T2.account_id ORDER BY avg(T2.balance) DESC LIMIT 1
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'statement' AND T2.gender = 'male' AND T2.birth_date = (SELECT min(birth_date) FROM client WHERE gender = 'male')
SELECT client_id FROM disp WHERE TYPE = 'Issued' EXCEPT SELECT client_id FROM disp WHERE TYPE = 'Disponent'
SELECT T1.account_id , T2.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'approved' AND T1.date LIKE "1997%" ORDER BY T1.amount LIMIT 1
SELECT T1.account_id , T1.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE "1993/%" ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client WHERE gender = 'F' AND birth_date < '1950' AND district_id IN (SELECT district_id FROM account WHERE district = 'Sokolov')
SELECT account_id FROM trans WHERE date LIKE "1995%" ORDER BY date LIMIT 1
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 3000 AND T1.date < 1997
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.issued = '1994/3/3'
SELECT T1.date FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'transfer' AND T1.amount = 840 AND T1.date LIKE "1998/10/14";
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1994/08/25"
SELECT max(amount) FROM trans WHERE date LIKE "1996/10/21%" AND TYPE = 'Credit'
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id GROUP BY T3.district_id ORDER BY avg(T3.frequency) DESC LIMIT 1
SELECT T3.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.status = 'approved' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.district_id = 'Jesenik' AND T1.gender = 'female'
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.gender = "Male" AND T1.type = "Transfer" AND T1.amount = 5100 AND T1.date LIKE "1998/09/02"
SELECT count(*) FROM account WHERE date = '1996' AND district_id IN (SELECT district_id FROM district WHERE A2 = "Litomerice")
SELECT T3.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T1.client_id = T3.client_id WHERE T1.gender = 'Female' AND T1.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/3"
SELECT account_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.district_id = (SELECT district_id FROM district WHERE district_id = (SELECT district_id FROM account WHERE district_id = 'Prague') )
SELECT T1.gender , T1.gender FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "south Bohemia" GROUP BY T1.gender ORDER BY count(*) DESC LIMIT 1
SELECT (T3.balance - T2.balance) / T2.balance FROM trans AS T2 JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.date = '1993/03/22' INTERSECT SELECT (T4.balance - T5.balance) / T5.balance FROM trans AS T4 JOIN loan AS T5 ON T4.account_id = T5.account_id WHERE T5.date = '1998/12/27'
SELECT status FROM loan WHERE payments = 'Fully Paid'
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'active'
SELECT T1.account_id , T2.A3 , T2.A4 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date > T2.date AND T1.operation = 'Transfer' AND T1.type = 'Bank' AND T1.date LIKE "1993%"
SELECT T1.account_id , count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A2 = 'east Bohemia' AND T1.date BETWEEN 1995 AND 2000 GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = 'Prachatice')
SELECT T2.A3 , T2.A4 FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.status = 'approved' AND T1.loan_id = 4990
SELECT T1.account_id , T2.district_id , T2.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.A3 , avg(T1.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration = 60 GROUP BY T1.loan_id
SELECT T1.district_id , T1.A3 , (SELECT avg(T2.A14) - (SELECT avg(T3.A14) ) FROM loan AS T3 JOIN loan AS T2 ON T3.status = 'Active' AND T3.loan_id = T2.loan_id WHERE T2.status = 'Active' AND T3.duration = 1 AND T3.amount = 100000) FROM loan AS T1 JOIN loan AS T2 ON T1.loan_id = T2.loan_id WHERE T1.status = 'Active' AND T2.status = 'Running' AND T1.amount = 100000 GROUP BY T1.district_id HAVING max(T2.A14) - min(T3.A14) > 100000
SELECT count(*) FROM account WHERE date = '1993' AND district_id IN (SELECT district_id FROM account WHERE district = 'Decin')
SELECT account_id FROM account WHERE frequency = "monthly"
SELECT T1.district_id , T1.A2 FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 9;
SELECT T1.district_id , T1.district FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date LIKE "1996/01/01" AND T2.type != "Credit Card" GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 10;
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'South Bohemia') AND TYPE NOT IN (SELECT TYPE FROM card)
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE status = 'approved' AND gender = 'male'
SELECT T2.A3 , T2.A10 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = 1996 GROUP BY T2.A3 ORDER BY T1.unemployment DESC LIMIT 2
SELECT count(*) FROM account WHERE date LIKE "%1996%" GROUP BY date ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM trans WHERE operation = 'Credit Card Withdrawal' AND balance < 0
SELECT count(*) FROM loan WHERE amount >= 250000 AND status = 'approved' AND date BETWEEN '01/01/1995' AND '12/31/1997'
SELECT count(*) FROM account WHERE district_id = 1 AND TYPE = 'running'
SELECT count(*) FROM client WHERE gender = 'Male' AND district_id IN (SELECT T1.district_id FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = '1995' AND T1.A3 = '2' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1)
SELECT count(*) FROM card WHERE TYPE = "high-level" AND disp_id IN (SELECT disp_id FROM disp WHERE TYPE = "OWNER");
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT T1.district_id FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.operation = 'transfer' AND T2.date = '1997-01-01' AND T2.amount > 10000;
SELECT T1.account_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.bank_to = 'household' AND T2.district_id = 13 AND T2.A2 = 'Pisek'
SELECT T1.account_id FROM account AS T1 JOIN card AS T2 ON T1.account_id = T2.disp_id WHERE T2.type = 'gold'
SELECT avg(amount) FROM card WHERE TYPE = 'Credit Card' AND date = 2021
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit' AND T2.amount < (SELECT avg(amount) FROM trans WHERE TYPE = 'Credit') AND T2.date LIKE "1998%"
SELECT T1.client_id , T1.gender , T1.client_name FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.client_id JOIN loan AS T3 ON T1.client_id = T3.account_id
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A7 = "South Bohemia" AND T1.gender = "Female"
SELECT T1.account_id FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Tabor" AND T1.status = "eligible"
SELECT TYPE , avg(client_salary) FROM card AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id JOIN district AS T3 ON T3.district_id = T1.district_id WHERE T3.district_id = (SELECT district_id FROM account WHERE status = 'Approved') GROUP BY TYPE HAVING avg(client_salary) > 8000 AND avg(client_salary) <= 9000
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A2 = "North Bohemia" AND T2.bank = "AB"
SELECT T2.A3 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'withdraw'
SELECT avg(crimes) FROM crime_counts WHERE year = 1995 AND region_id IN (SELECT district_id FROM account WHERE date >= 1997 GROUP BY district_id HAVING sum(crimes) > 4000)
SELECT count(*) FROM card WHERE TYPE = 'classic'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT count(*) / 100 FROM card WHERE TYPE = 'Gold' AND issued < 1998
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.account_id = 532 AND T1.date = 1995
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN order AS T3 ON T2.account_id = T3.account_id WHERE T3.order_id = 33333
SELECT T1.amount FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Cash' AND T2.client_id = 3356
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 200000
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 13539
SELECT T2.A3 FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status = 'Finished with no problems' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN order AS T3 ON T2.disp_id = T3.account_id WHERE T3.order_id = 32423
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Jesenik"
SELECT DISTINCT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'Junior' AND T1.birth_date > '1996'
SELECT count(*) , gender FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A5 > 10000 GROUP BY gender
SELECT sum(T2.amount) , T1.gender , T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'Male' AND T1.birth_date BETWEEN '1996-04-01' AND '1997-03-31' GROUP BY T1.gender
SELECT count(*) FROM trans WHERE TYPE = 'Credit Card Withdrawal' AND date > '1995'
SELECT count(*) - count(*) FROM district AS T1 JOIN district AS T2 ON T1.district_id = 12 AND T2.district_id = 13 WHERE T1.A2 = "East Bohemia" AND T2.A2 = "North Bohemia" AND T3.date = 1996
SELECT count(*) FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.account_id BETWEEN 1 AND 10
SELECT count(*) FROM trans WHERE operation = 'debit' AND account_id = 3539
SELECT birth_date FROM client WHERE client_id IN (SELECT account_id FROM disp WHERE TYPE = 'Credit' AND account_id = 130)
SELECT count(DISTINCT account_id) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'request'
SELECT sum(T1.amount) , T1.status FROM loan AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 992 GROUP BY T1.status
SELECT T1.gender , sum(T2.balance) FROM client AS T1 JOIN trans AS T2 ON T1.client_id = T2.account_id WHERE T2.operation = "Transfer" AND T2.amount = 851 AND T1.client_id = 4 GROUP BY T1.gender
SELECT DISTINCT T1.type FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 9
SELECT sum(amount) FROM trans WHERE date = 1998 AND operation = "Credit" AND TYPE = "Trans" AND bank = "617";
SELECT T1.client_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date BETWEEN "1983-01-01" AND "1987-12-31" INTERSECT SELECT T1.client_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.A3 = "East Bohemia"
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'Female' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client WHERE gender = 'male' AND birth_date BETWEEN 1974 AND 1976 INTERSECT SELECT count(*) FROM loan WHERE amount > 4000 AND bank = 'home'
SELECT count(*) FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = "Beroun") AND date > 1996
SELECT count(*) FROM client AS T1 JOIN card AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "F" AND T2.type = "Junior";
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T2.district_id = 13 AND T1.gender = 'F'
SELECT count(*) , gender , sum(if(operation = 'weekly', 1 , 0 )) / count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id GROUP BY T2.gender
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'statement' AND T2.gender = 'male' AND T2.birth_date = '1990-01-01'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 INTERSECT SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' AND T2.date < '1997-01-01' ORDER BY T2.amount LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'Female' ORDER BY T1.birth_date LIMIT 2
SELECT count(*) FROM client WHERE birth_date = '1920' AND district_id IN (SELECT district_id FROM district WHERE A2 = 'east' )
SELECT count(*) FROM loan WHERE duration = 24 AND payments = 'pre' AND (SELECT count(*) FROM trans WHERE date = (SELECT min(date) FROM loan WHERE duration = 24 AND payments = 'pre') GROUP BY date HAVING count(*) = 7)
SELECT T1.date , avg(T2.amount) FROM trans AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'running' AND T1.operation = 'statement' GROUP BY T1.date
SELECT T1.client_id , T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T1.client_id = T3.client_id JOIN order AS T4 ON T1.client_id = T4.account_id WHERE T3.type = 'permanent' OR T4.type = 'apply'
SELECT T1.client_id , T1.gender , T1.birth_date FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE TYPE = 'Credit Card' AND operation = 'Loan'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element != "carcinogen" AND element LIKE "%chlorine%"
SELECT avg(count(*) ) FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id GROUP BY T1.molecule_id
SELECT avg(count(*) ) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single'
SELECT count(*) FROM atom WHERE element = 'Sodium' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Carcinogen' )
SELECT T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple bond" INTERSECT SELECT T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "carcinogenic"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'double' AND element = 'C'
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic' ORDER BY T1.molecule_id LIMIT 100
SELECT molecule_id FROM atom WHERE element = 'C'
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id FROM connected WHERE bond_id = 8_9 AND bond_type = 'TR')
SELECT element FROM bond WHERE bond_type = 'double'
SELECT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'H' GROUP BY T1.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = 'chlorine'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element NOT IN (SELECT T3.element FROM atom AS T3 JOIN connected AS T4 ON T3.atom_id = T4.atom_id JOIN molecule AS T5 ON T5.molecule_id = T4.bond_id WHERE T5.label = 'non-carcinogenic')
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'non-carcinogenic') GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = "TR004_8" AND T2.atom_id2 = "TR004_20")
SELECT label FROM molecule WHERE label != (SELECT DISTINCT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'tin')
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'iodine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'sulfur' AND T2.bond_type = 'single'
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = 'triple'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id2 JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.label = 'TR181'
SELECT count(*) FROM molecule WHERE label = 'carcinogenic' EXCEPT SELECT count(*) FROM atom WHERE element = 'fluorine'
SELECT count(*) FROM bond WHERE bond_type = 'triple' INTERSECT SELECT count(*) FROM bond WHERE bond_type = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = 1 AND label = 'TR000' ORDER BY element
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "bond" AND T3.bond_id = "TR001_2_6"
SELECT count(*) , count(*) FROM molecule WHERE label = 'carcinogenic' UNION SELECT count(*) , count(*) FROM molecule WHERE label = 'not carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = "TR000_2_5"
SELECT bond_id FROM connected WHERE atom_id = 2 AND atom_id2 = 2
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" ORDER BY T1.label LIMIT 5
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T1.atom_id = T3.molecule_id WHERE T3.label = "TR008" AND T2.bond_type = "double" GROUP BY T3.molecule_id * 100 / COUNT(*)
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT sum(element) FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR206') AND element = 'H' / (SELECT sum(element) FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR206') )
SELECT bond_type FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000"
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 4060
SELECT bond_type , :label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR010" GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1;
{"sql": "SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.bond_id = T3.bond_id WHERE T1.label NOT IN (SELECT T4.label FROM molecule AS T4 JOIN bond AS T5 ON T4.molecule_id = T5.molecule_id JOIN atom AS T6 ON T5.bond_id = T6.bond_id) AND T1.label NOT IN (SELECT T7.label FROM molecule AS T7 JOIN bond AS T8 ON T7.molecule_id = T8.molecule_id JOIN atom AS T9 ON T8.bond_id = T9.bond_id) AND T1.label NOT IN (SELECT T10.label FROM molecule AS T10 JOIN bond AS T11 ON T10.molecule_id = T11.molecule_id JOIN atom AS T12 ON T11.bond_id = T12.bond_id) AND T1.label NOT IN (SELECT T13.label FROM molecule AS T13 JOIN bond AS T14 ON T13.molecule_id = T14.molecule_id JOIN atom AS T15 ON T14.bond_id = T15.bond_id) AND T1.label NOT IN (SELECT T16.label FROM molecule AS T16 JOIN bond AS T17 ON T16.molecule_id = T17.molecule_id JOIN atom AS T18 ON T17.bond_id = T18.bond_id) AND T1.label NOT IN (SELECT T19.label FROM molecule AS T19 JOIN bond AS T20 ON T19.molecule_id = T20.molecule_id JOIN atom AS T21 ON T20.bond_id = T21.bond_id) AND T1.label NOT IN (SELECT T22.label FROM molecule AS T22 JOIN bond AS T23 ON T22.molecule_id = T23.molecule_id JOIN atom AS T24 ON T23.bond_id = T24.bond_id) AND T1.label NOT IN (SELECT T25.label FROM molecule AS T25 JOIN bond AS T26 ON T25.molecule_id = T26.molecule_id JOIN atom AS T27 ON T26.bond_id = T27.bond_id) AND T1.label NOT IN (SELECT T28.label FROM molecule AS T28 JOIN bond AS T29 ON T28.molecule_id = T29.molecule_id JOIN atom AS T30 ON T29.bond_id = T30.bond_id) AND T1.label NOT IN (SELECT T31.label FROM molecule AS T31 JOIN bond AS T32 ON T31.molecule_id = T32.molecule_id JOIN atom AS T33 ON T32.bond_id = T33.bond_id) AND T1.label NOT IN (SELECT T34.label FROM molecule AS T34 JOIN bond AS T35 ON T34.molecule_id = T35.molecule_id JOIN atom AS T36 ON T35.bond_id = T36.bond_id) AND T1.label NOT IN (SELECT T37.label FROM molecule AS T37 JOIN bond AS T38 ON T37.molecule_id = T38.molecule_id
SELECT bond_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR006" ORDER BY bond_id ASC LIMIT 2
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.label = "TR009" AND T2.atom_id = 12
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR001_6_9'
SELECT T2.label , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = "TR001_10"
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = 19
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT T1.molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic' AND T2.atom_id BETWEEN 21 AND 25
SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'phosphorus' INTERSECT SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'nitrogen'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.bond_id) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = "iodine"
SELECT bond_type , bond_id FROM bond WHERE bond_id IN (SELECT bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 45)
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" AND bond_type = "triple bond"
SELECT element FROM atom WHERE atom_id = 'TR144_8_19'
SELECT molecule_id FROM bond WHERE bond_type = 'double' GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT molecule_id , element FROM atom WHERE element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = T2.molecule_id AND T1.element IN (SELECT T1.element FROM atom AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.m
SELECT DISTINCT atom_id FROM atom WHERE element = 'lead'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.bond_id WHERE T2.bond_type = 'double'
SELECT count(*) FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id2 GROUP BY T3.element HAVING count(*) = (SELECT min(count(*) ) FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id2)
SELECT count(*) FROM bond WHERE bond_type = 'single' AND bond_type = 'carcinogenic'
SELECT sum(atom_id) FROM atom WHERE element = 'carbon' UNION SELECT sum(atom_id) FROM atom WHERE element = 'hydrogen'
SELECT atom_id2 FROM atom WHERE element = 'sulfur'
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "Tin"
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = 'single'
SELECT sum(T1.atom) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T3.label = 'triple bond' AND T1.element = 'phosphorus' OR T1.element = 'bromine'
SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'single' GROUP BY T1.element HAVING T1.element = 'Cl'
SELECT label FROM molecule WHERE molecule_id = 3 AND molecule_id = 4 AND molecule_id = 5
SELECT molecule_id FROM molecule WHERE label != 'carcinogen'
SELECT sum(t1.molecule_id) FROM molecule AS t1 JOIN atom AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.label = "TR000" AND t2.element = "carcinogen"
SELECT bond_type FROM bond WHERE molecule_id BETWEEN 1000 AND 500
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id AND T1.atom_id = T2.bond_id WHERE T2.bond_id = 'TR001_10_11'
SELECT count(DISTINCT bond_id) FROM bond WHERE bond_type = 'bond' AND element = 'iodine'
SELECT count(*) FROM atom WHERE element = 'Calcium' GROUP BY molecule_id HAVING count(*) > (SELECT count(*) FROM atom WHERE element = 'Calcium')
SELECT bond_id FROM bond WHERE bond_type = 'connected' AND atom_id = 1 AND atom_id2 = 8 INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'connected' AND atom_id = 1 AND atom_id2 = 8
SELECT T2.molecule_id , T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple bond" AND T2.label != "carcinogenic molecule"
SELECT count(*) , element FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element
SELECT element FROM atom WHERE molecule_id = 1 AND molecule_id FROM molecule WHERE label = 'TR001'
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T1.atom_id2 FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T1.bond_id WHERE T1.bond_type = "triple bond" ORDER BY T1.atom_id , T1.atom_id2 LIMIT 2
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_id = "TR000_1_2") AND element NOT IN (SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_id = "TR000_1_2") AND element = "hydrogen")
SELECT count(*) FROM bond WHERE bond_type = 'single' AND label != 'carcinogenic'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR001_10_11"
SELECT bond_id , COUNT(*) FROM bond WHERE bond_type = 'triple' GROUP BY bond_id HAVING COUNT(*) >= 3 INTERSECT SELECT bond_id , COUNT(*) FROM bond WHERE bond_type = 'carcinogenic' GROUP BY bond_id HAVING COUNT(*) >= 3
SELECT count(*) , T1.element , T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "toxic" AND T2.molecule_id = 4 GROUP BY T2.molecule_id
SELECT count(*) , element FROM atom WHERE molecule_id = 'TR006' GROUP BY element
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'calcium' AND T2.label = 'carcinogenic'
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'Carbon'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR001_10_11"
SELECT count(*) / (SELECT count(*) FROM bond WHERE bond_type = 'triple' ) FROM bond
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR047' AND bond_type = 'double-bond'
{"sql": "SELECT count(*) FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR151' AND T2.element = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = 151 AND label = 'TR151'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT atom_id FROM atom WHERE molecule_id = 1000 AND element = 'carbon' AND molecule_id BETWEEN 1000 AND 1049
{"sql": "SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'}
SELECT bond_id FROM bond WHERE bond_type = 'double bond' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'hydrogen' AND T2.label = 'carcinogenic'
SELECT T1.molecule_id , T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T1.atom_id = T3.atom_id WHERE T3.element = "TR000_1" AND T2.bond_type = "TR000_1_2"
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'carbon' AND molecule_id IN (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING count(*) >= 3)
SELECT count(*) FROM atom WHERE element = 'H' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'C' )
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR124' AND T2.element = 'carcinogenic'
SELECT element FROM atom WHERE atom_id = 186
SELECT bond_type FROM bond WHERE bond_id = "TR007_4_19"
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR001_2_4"
SELECT count(*) , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double" AND T1.label = "TR006" AND T3.label = "carcinogenic"
SELECT T1.molecule_id , T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carcinogenic"
SELECT bond_type , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE bond_type = 'single'
SELECT T2.molecule_id , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'Triple bond'
SELECT element FROM atom WHERE element = 'TR000_2_3'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T3.element = 'Cl'
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR346" GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "double" INTERSECT SELECT count(*) , label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "carcinogenic"
SELECT count(*) FROM atom WHERE element != 'sulphur' AND bond_type != 'double'
SELECT label FROM bond WHERE bond_type = "carcinogenic" AND bond_id = "TR001_2_4"
SELECT count(*) FROM atom WHERE molecule_id = 'TR001'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'cl' INTERSECT SELECT T3.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T1.atom_id = T3.atom_id2 WHERE element = 'carcinogenic'
SELECT molecule FROM atom WHERE element = 'carbon' EXCEPT SELECT molecule FROM atom WHERE element = 'carcinogen'
SELECT count(*) / (SELECT count(*) FROM atom WHERE element = 'Chlorine') FROM atom
SELECT molecule_id FROM bond WHERE bond_id = 'TR001_1_7'
SELECT count(*) FROM bond WHERE bond_id = "TR001_3_4"
SELECT bond_type FROM bond WHERE bond_id IN (SELECT bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = 'TR000_1' AND T1.atom_id2 = 'TR000_2')
SELECT molecule FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = 'TR000_1'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR000' AND T2.element = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT count(*) FROM atom WHERE element = 'N'
SELECT T1.molecule_id , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = 'S' AND bond_type = 'double'
SELECT molecule_id FROM atom WHERE element != 'carcinogen' GROUP BY molecule_id HAVING count(*) > 5
SELECT element FROM atom WHERE molecule_id = 1024 AND bond_type = "double"
SELECT molecule_id FROM atom GROUP BY molecule_id ORDER BY sum(atom_id) DESC LIMIT 1
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T1.atom_id = T3.molecule_id WHERE T3.label = 'carcinogenic' AND T2.bond_type = 'triple' AND T1.element = 'H'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004" AND T2.label = "TR010" AND T1.bond_type = "single"
SELECT count(*) FROM atom WHERE molecule_id = 1 AND element = "C" AND molecule_id = 1008
SELECT element FROM atom WHERE atom_id = "TR004_7" EXCEPT SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = "carcinogenic")
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE element = "O" AND bond_type = "double"
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "triple bond" EXCEPT SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "carcinogenic"
SELECT T1.element , T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 3002
SELECT atom_id FROM atom WHERE molecule_id = 1012 AND element = "double"
SELECT atom_id FROM atom WHERE element = 'o'
SELECT name FROM cards WHERE power = 'incredibly powerful'
SELECT id FROM cards WHERE hasNonFoil AND cardKingdomFoilId = "null"
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards WHERE faceConvertedManaCost = 'Face')
SELECT name FROM cards WHERE frameeffects = "2015" AND edhrecrank < 100
SELECT DISTINCT T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.id WHERE T2.format = "gladiator" AND T1.rarity = "mythic"
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'cards' AND T2.hasAlternativeDeckLimit = 0
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.id WHERE T2.format = "commander" AND T1.power = "unknown"
SELECT T1.faceName , T2.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Stephen Daniel" AND T1.flavorText = "ruling"
SELECT T1.date , T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = 74s
SELECT T1.name , T1.artist , T2.isPromo FROM cards AS T1 JOIN printings AS T2 ON T1.id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.number = 29 AND T1.name = "Annul"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) / (SELECT count(*) FROM cards WHERE availability = 'Available' AND flavortext = 'Chinese Simplified') FROM foreign_data AS T1 JOIN cards AS T2 ON T1.id = T2.uuid WHERE T1.language = 'Chinese Simplified'
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "Italian" GROUP BY T1.name
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd" AND originaltype = "card art";
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = 'infinite'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen"
SELECT originalType FROM cards WHERE name = "Ancestor's Chosen"
SELECT flavortext FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.id JOIN sets AS T3 ON T2.setCode = T3.code WHERE T3.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'restricted' AND T1.hasContentWarning = 'yes'
SELECT T1.flavorText FROM foreign_data AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Condemn"
SELECT count(*) FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'restricted' AND T2.isStarter = 1
SELECT status FROM cards WHERE name = "Cloudchaser Eagle";
SELECT TYPE FROM cards WHERE name = "Benalish Knight"
SELECT DISTINCT rule FROM cards WHERE name = "Benalish Knight"
SELECT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT count(*) / (SELECT count(*) FROM cards WHERE borderColor != "borderless") * 100 FROM cards WHERE borderColor != "borderless"
SELECT count(*) FROM cards WHERE isReprint = 'yes' AND flavorName = 'German'
SELECT count(*) FROM cards WHERE isTextless = 'borderless' AND flavortext = 'Russian'
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "StorySpotlight" AND T2.language = "French"
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = "Aaron Boyd"
SELECT count(*) FROM cards WHERE borderColor = "Black" AND cardKingdomFoilId = "mtgo"
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT cardKingdomFoilId FROM cards WHERE power = 'incredibly powerful' INTERSECT SELECT cardKingdomFoilId FROM cards WHERE cardKingdomFoilId != "none"
SELECT id FROM cards WHERE duelDeck = 'a'
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT artist FROM cards WHERE asciiName LIKE "%Chinese Simplified%"
SELECT name FROM cards WHERE availability = 'available' INTERSECT SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = 'Japanese' AND T2.multiverseid = 'paper'
SELECT count(*) FROM cards WHERE borderColor = "white" AND colorIdentity = "card";
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "legacy"
SELECT text FROM rulings WHERE cardKingdomId = "Beacon of Immortality"
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion > "latest"
SELECT colorIdentity FROM cards WHERE setCode = "OWG"
SELECT T1.name , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.id WHERE T1.setCode = "10E" AND T1.convertedManaCost = 5
SELECT T1.name , T2.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE originalType = "Creature - Elf"
SELECT colorIdentity , format FROM cards WHERE id BETWEEN 1 AND 20;
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T1.colorIdentity = "Black" AND T2.language = "Flavor Text"
SELECT name FROM cards WHERE rarity = 'uncommon' ORDER BY date
SELECT count(*) FROM cards WHERE hasnonfoil = 'foil' AND artist = "John Avon" AND cardkingdomfoilid != "power";
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "strong";
SELECT count(*) FROM cards WHERE artist = "UDON" AND availability = "available" AND printings = "mtgo" AND hand >= -1
SELECT count(*) FROM cards WHERE frameversion = "1993" AND hascontentwarning = "yes"
SELECT manaCost FROM cards WHERE layout = 'normal' AND frameVersion = '2003' AND borderColor = 'black' AND availability = 'paper' AND availability = 'mtgo'
SELECT sum(convertedManaCost) FROM cards WHERE artist = "Rob Alexander"
SELECT DISTINCT TYPE FROM cards WHERE availability = 'isOnlineOnly' AND cardKingdomFoilId = 'mtgarena'
SELECT setcode FROM set_translations WHERE LANGUAGE = "es"
SELECT count(*) FROM cards WHERE isOnlineOnly = 'yes' AND frameEffects = 'legendary'
SELECT id FROM cards WHERE isStorySpotlight = 'yes' AND hasTextless = 'no'
SELECT count(*) , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T2.language = "Spanish" GROUP BY T1.name ORDER BY count(*) DESC
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.id WHERE T2.setcode = (SELECT id FROM cards WHERE number = 309)
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN foreign_data AS T3 ON T3.id = T2.setcode WHERE T3.language = "br" AND T3.flavortext = "Portuguese" AND T1.block = "Commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT DISTINCT TYPE FROM cards WHERE language = "de"
SELECT count(*) FROM cards WHERE power = 'triggered'
{"sql": "SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = \"This is a triggered mana ability.\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre-modern\" AND T1.number != (SELECT min(number) FROM cards WHERE cardKingdomFoilId = \"pre
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper"
SELECT artist FROM cards WHERE flavortext = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.flavortext FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "French" AND T2.type = "Creature" AND T2.layout = "Normal" AND T2.borderColor = "Black" AND T2.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'print' AND T2.date = "01/02/2007"
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.id JOIN sets AS T3 ON T2.setCode = T3.code WHERE T3.block = "Ravnica" AND T2.translation = "180 cards"
SELECT count(*) FROM legalities WHERE format = 'commander' AND status = 'legal' EXCEPT SELECT count(*) FROM legalities WHERE format = 'commander' AND status = 'legal' AND hasContentWarning
SELECT count(*) / count(*) FROM cards WHERE power = "without" AND flavorText = "French"
SELECT count(*) / (SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.type = "Expansion set") * 100 FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.type = "Expansion set" AND T1.language = "Japanese"
SELECT printings FROM cards WHERE artist = "Daren Bader";
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor = "none";
SELECT count(*) FROM cards WHERE isOversized = '1' AND isPromo = '1' AND isReprint = '1'
SELECT power FROM cards WHERE isPromo AND mtgArenaId = "arena" ORDER BY power ASC LIMIT 3;
SELECT language FROM foreign_data WHERE multiverseid = 149934;
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId DESC LIMIT 3
SELECT count(*) FROM cards WHERE isTextless = 'false'
SELECT number FROM cards WHERE subtypes = "Angel" AND supertypes = "Wizard" EXCEPT SELECT number FROM cards WHERE supertypes = "Angel" AND subtypes = "Wizard"
SELECT name FROM sets WHERE isOnlineOnly = 0 AND isFoilOnly = 0 AND mtgoCode != "Magic: The Gathering Online" ORDER BY name
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.id WHERE T3.name = "Archenemy" AND T2.code = "ARC"
SELECT T2.name , T3.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN cards AS T3 ON T3.id = T2.id WHERE T1.number = 5
SELECT T2.language , T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.id = 206
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id JOIN set_translations AS T3 ON T3.code = T2.setCode WHERE T3.language = "italian" AND T2.block = "shadowmoor" ORDER BY T1.id LIMIT 2
SELECT setid FROM cards WHERE hasfoil AND flavortext = "Japanese" AND language = "Japanese"
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = "Russian" ORDER BY T2.baseSetSize DESC LIMIT 1;
SELECT count(*) FROM cards WHERE isOnlineOnly AND language = 'Chinese Simplified'
SELECT count(*) FROM sets WHERE isNonFoilOnly AND language = 'Japanese'
SELECT id FROM cards WHERE borderColor = "black"
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT name FROM cards WHERE isFullArt = 'yes' AND borderColor = 'black'
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT flavortext FROM foreign_data WHERE name = "A Pedra Fellwar"
SELECT code FROM sets WHERE releaseDate = "07/13/2007"
SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1.block = T2.block WHERE T1.name = "Masques" INTERSECT SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1.block = T2.block WHERE T1.name = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT TYPE FROM cards WHERE watermark = 'boros'
SELECT T2.language , T2.flavorText , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colorIdentity = "colorpie"
SELECT count(*) FROM cards WHERE convertedManaCost = 10 AND cardKingdomFoilId = "Abyssal Horror"
SELECT code FROM sets WHERE TYPE = 'Expansion Commander'
SELECT TYPE FROM cards WHERE watermark = 'abzan'
SELECT DISTINCT T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.watermark = 'azorius'
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power = "incredibly powerful";
SELECT count(*) FROM cards WHERE availability = 'paper' AND hand > 0;
SELECT name FROM cards WHERE hasContentWarning = 'yes'
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT faceName FROM cards WHERE isPromo = 'yes' GROUP BY faceName HAVING count(*) > 1;
SELECT DISTINCT TYPE FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE isPromo = "bundle"
SELECT count(*) FROM cards WHERE borderColor = "black" AND availability = "available" AND printings = "arena" INTERSECT SELECT count(*) FROM cards WHERE borderColor = "black" AND availability = "available" AND printings = "mtgo"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper"
SELECT artist FROM cards WHERE ispromo = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE originalReleaseDate = "2003" ORDER BY convertedManaCost DESC LIMIT 3
{"sql": "SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = 'Ancestor\'s Chosen' AND T2.language = 'Italian'"}
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN cards AS T3 ON T1.setcode = T3.cardkingdomid WHERE T3.name = "Angel of Mercy"
SELECT name FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.asciiName = "Ancestor's Chosen" AND T2.language = "ko"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentcode WHERE T2.code = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN artist AS T2 ON T1.artist = T2.id WHERE T2.flavorName = "Adam Rex"
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Eighth Edition" AND T1.language = "Chinese"
SELECT count(*) FROM cards WHERE name = "Angel of Mercy" AND isOnlineOnly = 1
SELECT releaseDate FROM sets WHERE code = "Ancestor's Chosen"
SELECT T1.type FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId WHERE T1.name = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets WHERE block = "Ice Age" INTERSECT SELECT count(*) FROM set_translations WHERE language = "Italian"
SELECT count(*) FROM cards WHERE availability = 'outside the United States' AND cardKingdomFoilId = 'Adarkar Valkyrie'
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.baseSetSize < 100 AND T2.language = "italian"
SELECT count(*) FROM cards WHERE borderColor = 'Black' AND setCode = 'Coldsnap'
SELECT name FROM cards WHERE cardKingdomFoilId = "Coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.code = "Coldsnap" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.code = "Jeremy Jarvis" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.code = "Aaron Miller" INTERSECT SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.code = "Chippy"
SELECT number FROM cards WHERE setcode = "Coldsnap" AND cardkingdomfoilid = "4"
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power != "unknown" AND setCode = "Coldsnap"
SELECT flavorText FROM cards WHERE name = "Ancestor's Chosen" AND flavorName = "Italian"
SELECT DISTINCT language FROM foreign_data WHERE flavortext = "Ancestor's Chosen"
SELECT colorIdentity FROM cards WHERE name = "Ancestor's Chosen" AND TYPE = "German"
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.type = "Coldsnap" JOIN cards AS T3 ON T1.id = T3.id WHERE T3.colorIdentity = "Italian"
SELECT name FROM cards WHERE cardKingdomFoilId = "Coldsnap" AND convertedManaCost = (SELECT max(convertedManaCost) FROM cards WHERE cardKingdomFoilId = "Coldsnap") AND flavorName = "Italian"
SELECT date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE flavorname = 'Reminisce'
SELECT count(*) FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap"
SELECT count(*) / (SELECT count(*) FROM cards WHERE cardKingdomId = 'Coldsnap' ) * 100 FROM cards WHERE cardKingdomId = 'Coldsnap' AND power = 'incredibly powerful'
SELECT code FROM sets WHERE releaseDate = "2017/7/14";
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT mcmid FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = "2017/6/9"
SELECT expansionType FROM cards WHERE name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.parentCode WHERE T2.faceName = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = "Rinascita di Alara"
SELECT T2.frameEffects FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId WHERE T1.name = "Huitième édition"
SELECT T1.flavorName FROM foreign_data AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T3.language = "French" AND T2.name = "Tendo Ice Bridge"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Tenth Edition"
SELECT T1.name FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.faceName = "Fellwar Stone" AND T1.language = "Japanese"
SELECT name FROM cards WHERE setcode = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1;
SELECT releaseDate FROM sets WHERE code = "Ola de frío"
SELECT T2.expansion FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentcode WHERE T1.name = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE convertedManaCost = '3' AND setcode = 'World Championship Decks 2004'
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Mirrodin" AND T1.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T2.language = "Japanese" AND T1.hasNonFoil = 1 / (SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T2.language = "Japanese" AND T1.hasNonFoil = 1)
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 'isOnlineOnly' AND setCode = (SELECT code FROM sets WHERE isFoilOnly = 'yes' AND isOnlineOnly = 'isOnlineOnly' )) FROM cards WHERE isOnlineOnly = 'isOnlineOnly' AND setCode = (SELECT code FROM sets WHERE isFoilOnly = 'yes' AND isOnlineOnly = 'isOnlineOnly' ) INTERSECT SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 'isOnlineOnly' AND setCode = (SELECT code FROM sets WHERE isFoilOnly = 'yes' AND isOnlineOnly = 'isOnlineOnly' )) FROM cards WHERE isOnlineOnly = 'isOnlineOnly' AND setCode = (SELECT code FROM sets WHERE isFoilOnly = 'yes' AND isOnlineOnly = 'isOnlineOnly' )
SELECT printings FROM cards WHERE id NOT IN (SELECT id FROM cards WHERE hasContentWarning = 'yes' AND artist = 'Aleksi Briclot' )
SELECT id FROM sets ORDER BY totalsetsize DESC LIMIT 1
SELECT artist FROM cards WHERE convertedManaCost = (SELECT max(convertedManaCost) FROM cards WHERE hasAlternativeDeckLimit = 0) AND hasAlternativeDeckLimit = 0
SELECT frameEffects FROM cards WHERE power = 'incredible' AND cardKingdomFoilId = 'foils' GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power != "foil" AND duelDeck = "A"
SELECT id FROM sets WHERE TYPE = "Commander" AND totalSetSize = (SELECT max(totalSetSize) FROM sets WHERE TYPE = "Commander" EXCEPT SELECT totalSetSize FROM sets WHERE TYPE = "Alchemy")
SELECT cardKingdomFoilId FROM cards ORDER BY convertedManaCost DESC LIMIT 10;
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.originalReleaseDate = (SELECT originalReleaseDate FROM cards ORDER BY originalReleaseDate LIMIT 1)
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.artist = "Volkan Baçım" AND T2.language = "French"
SELECT count(*) FROM cards WHERE rarity = "rare" INTERSECT SELECT count(*) FROM legalities WHERE status = "legal" AND frameEffects = "all legal"
SELECT T1.format , T1.name FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.code JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = "Battlebond"
SELECT T1.faceName , T1.frameEffects FROM cards AS T1 JOIN cards AS T2 ON T1.artist = T2.artist WHERE T1.id = T2.id GROUP BY T1.artist ORDER BY count(*) ASC LIMIT 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.scryfallIllustrationId WHERE T2.frameVersion = 1997 AND T1.format = "legacy" AND T1.status = "sensitive" INTERSECT SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.scryfallIllustrationId WHERE T2.frameVersion = 1997 AND T1.format = "Wizards of the Coast"
SELECT name , format FROM cards WHERE edhrecRank = '1'
SELECT avg(T2.releaseDate) , T1.language FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T1.originalReleaseDate LIKE "1/1/2012%" AND T1.originalReleaseDate LIKE "12/31/2015%" GROUP BY T1.language
SELECT artist FROM cards WHERE availability = 'isOnlineOnly' AND borderColor = 'black'
SELECT uuid FROM legalities WHERE format = 'old school'
SELECT count(*) FROM cards WHERE availability = 'paper' AND artist = 'Matthew D. Wilson'
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Kev Walker' ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T1.setcode WHERE T3.name = "Hour of Devastation"
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = 'Japanese') AND translation = 'Korean'
SELECT T1.frameEffects , T1.frameVersion FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T2.artist = "Allen Williams" EXCEPT SELECT T1.frameEffects , T1.frameVersion FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T2.artist = "Allen Williams" AND T1.borderColor = "banned"
SELECT DisplayName FROM users WHERE Name = "Harlan" UNION SELECT DisplayName FROM users WHERE Name = "Jarrod Dixon";
SELECT T2.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.CreationDate LIKE "2011%"
SELECT count(*) FROM users WHERE lastaccessdate > '2014/9/1'
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT count(*) FROM users WHERE upvotes > 100 AND downvotes > 100
SELECT count(*) FROM users WHERE views > 10 AND creationdate > 2013
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Csgillespie"
SELECT title FROM posts WHERE OWNER userid = 1234567890
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE owneruserid = 4796121 AND score = (SELECT max(score) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.userid = 4796121)
SELECT t1.ownerdisplayname FROM users AS t1 JOIN posts AS t2 ON t1.id = t2.owneruserid WHERE t2.score = (SELECT max(score) FROM posts)
SELECT sum(T2.CommentCount) FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OwnerUserId WHERE T1.DisplayName = "Csgillespie"
SELECT AnswerCount FROM posts WHERE OWNERUserId = "csgillespie" ORDER BY AnswerCount DESC LIMIT 1;
SELECT T1.Displayname FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.LastEditorUserId WHERE T2.Title = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T1.owneruserid = 5573576 AND T1.posttypeid = 1 AND T1.parentid = 5573576 AND T1.ownerdisplayname = "Csgillespie"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Score = 5
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.reputation = "elder" AND T1.score > 19
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Csgillespie"
{"sql": "SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = \"Csgillis\"""}
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Csgillespie" AND T1.date = 2011
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.Id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.score) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.displayname = "csgillespie"
SELECT avg(T1.badges) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.views > 200
SELECT count(*) , (count(*) - (SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.age > 5)) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id GROUP BY T1.owneruserid HAVING T1.score > 5
SELECT T2.ViewCount FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Reputation = 58 AND T2.CreationDate = "2010/7/19";
SELECT creationdate FROM votes GROUP BY creationdate ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival";
SELECT T1.Title FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId ORDER BY T2.Score DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910;
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE CreationDate = "2014/4/23" AND UserId = 3025)
SELECT Text FROM comments WHERE PostId = 107829
SELECT T1.PostId , T1.creationdate , T1.title FROM posts AS T1 JOIN commenthistory AS T2 ON T1.id = T2.postid WHERE T2.creationdate = "2013/7/12 9:08:18" AND T2.user_id = 23853 AND T2.score = 5;
SELECT T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Id = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.DisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 1 AND T2.PostId = 6347
SELECT sum(T2.VoteTypeId) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Data Visualization"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) , T2.UpVotes - T2.DownVotes FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.Id = 24
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT DisplayName FROM users WHERE WebsiteUrl = 'http://stackoverflow.com'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'thank you user93!'
SELECT Text FROM comments WHERE UserId = 1 AND UserDisplayName = 'A Lion'
SELECT T1.Reputation , T2.OwnerUserId FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing'
SELECT * FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE title = 'How does gentle boosting differ from AdaBoost!'
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = "Necromancer" GROUP BY T1.displayname HAVING count(*) >= 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.LastEditorDisplayName = "Vebjorn Ljosa"
SELECT sum(T1.Score) , T2.WebsiteUrl FROM posts AS T1 JOIN users AS T2 ON T1.LastEditorUserId = T2.Id WHERE T2.DisplayName = "Yevgeny"
SELECT T1.id , T1.text FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = 'Why square the difference instead of taking the absolute value in standard deviation'
SELECT sum(T2.BountyAmount) FROM posts AS T1 JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'data'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = 50 IN tags WHERE T2.PostId IN (SELECT T3.PostId FROM posts AS T3 JOIN tags AS T4 ON T3.Id = T4.ExcerptPostId WHERE T4.TagName = "variance")
SELECT avg(T1.ViewCount) , T2.Title , T2.CommentCount FROM posts AS T1 JOIN tags AS T2 ON T1.PostId = T2.ExcerptPostId WHERE T2.TagName = 'humor'
SELECT count(*) FROM comments WHERE userid = 13
SELECT id FROM users ORDER BY reputation DESC LIMIT 1
SELECT userid FROM users ORDER BY views LIMIT 1
SELECT count(DISTINCT users) FROM badges WHERE date = "2011-01-01" AND name = "supporter";
SELECT count(DISTINCT users.id) FROM users JOIN badges ON badges.user_id = users.id GROUP BY users.id HAVING count(*) > 5;
SELECT count(DISTINCT users.id) FROM users WHERE LOCATION = "New York" AND (select id FROM badges WHERE name = "teacher" INTERSECT SELECT id FROM badges WHERE name = "supporter")
SELECT T1.Reputation , T2.OwnerUserId FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.PostId = 1
SELECT T1.UserId FROM users AS T1 JOIN postHistory AS T2 ON T1.id = T2.user_id GROUP BY T1.id HAVING count(*) >= 1000 UNION SELECT T1.UserId FROM users AS T1 JOIN postHistory AS T2 ON T1.id = T2.user_id GROUP BY T1.id HAVING count(*) = 1
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.location = 'India' AND T2.name = 'Teacher'
SELECT date , count(*) FROM badges WHERE date LIKE "2010-%" INTERSECT SELECT date , count(*) FROM badges WHERE date LIKE "2011-%" GROUP BY date HAVING count(*) >= 2
SELECT posthistorytypeid , count(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT title , score FROM posts WHERE postid = 61217
SELECT T1.Score , T2.LinkTypeId FROM comments AS T1 JOIN postLinks AS T2 ON T1.PostId = T2.PostId WHERE T2.PostId = 395
SELECT postid , OWNERuserid FROM posts WHERE score > 60
SELECT sum(favoritecount) FROM posts WHERE createddate = "2011-04-01" AND owneruserid = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE upvotes > 10
SELECT count(DISTINCT userid) FROM badges WHERE name = "Announcer"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.creationdate = "2010-07-19T19:39:08"
SELECT count(*) FROM comments WHERE score > 5;
SELECT Text FROM comments WHERE CreationDate = "7/19/2010 7:25:47 PM"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation DESC LIMIT 1
SELECT T2.Reputation FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester, NY"
SELECT T1.UserId , count(*) , T1.UserId / count(*) FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.UserId HAVING T2.Name = "Teacher"
SELECT count(*) , avg(users.age) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = "Organizer" GROUP BY T1.id HAVING avg(users.age) < 18
SELECT T2.Score FROM postHistory AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.CreationDate = "2010-07-19 19:56:56"
SELECT Text FROM comments WHERE CreationDate = "7/19/2010 7:37:33 PM"
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna, Austria"
SELECT count(DISTINCT users.id) FROM users JOIN badges ON badges.user_id = users.id WHERE badges.name = "Supporter"
SELECT count(*) FROM badges WHERE date = "7/19/2010 7:39:08 PM"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id ORDER BY T2.reputation LIMIT 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Sharpie"
SELECT count(*) FROM badges WHERE name = 'Supporter' AND userdisplayname = 'elder'
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.id = 30
SELECT count(*) FROM users WHERE LOCATION = "New York"
SELECT sum(T2.VoteTypeId) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate LIKE "%2010%"
SELECT count(*) FROM users WHERE age = 'Adult'
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT avg(T2.ViewCount) , avg(T1.ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.VoteTypeId = 1 AND T2.PostTypeId = 1 AND T1.CreationDate = "2010-01-01"
SELECT T2.TagName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayName = "Daniel Vassallo"
SELECT sum(T2.UpVotes) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "Harlan"
SELECT postid FROM posts WHERE owneruserid = 5186928 AND ownerdisplayname = "Slashnick" ORDER BY AnswerCount DESC LIMIT 1
SELECT max(Score) FROM posts WHERE OWNERUSERID = "Harvey Motulsky" INTERSECT SELECT max(Score) FROM posts WHERE OWNERUSERID = "Noah Snyder"
SELECT COUNT(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = "Matt Parker" AND T2.OwnerDisplayName = "Parker" AND T2.AnswerCount > 4
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Neil McGuigan" AND T1.score < 0
SELECT DISTINCT T2.TagName FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OwnerUserId WHERE T1.DisplayName = "Mark Meckes" EXCEPT SELECT DISTINCT T1.TagName FROM users AS T1 JOIN comments AS T2 ON T1.ID = T2.UserId
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id
SELECT count(*) , T1.CommunityOwnedDate FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.AboutMe LIKE '%R%' GROUP BY T1.CommunityOwnedDate
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Mornington" INTERSECT SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Amos"
SELECT count(DISTINCT userid) FROM badges WHERE date = "2014-01-01";
SELECT count(*) FROM posts WHERE creationdate LIKE "21/07/2010";
SELECT DisplayName , Age FROM users ORDER BY Views DESC LIMIT 1
SELECT T1.LastEditDate , T1.LastEditorUserId FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text != "like you";
SELECT T1.Title , T2.UserDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Score > 50
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = 'North Pole' AND T1.date = 2011
SELECT T1.OwnerDisplayName , T1.WebsiteUrl FROM users AS T1 JOIN posts AS T2 ON T1.UserId = T2.FavoriteCount WHERE T2.FavoriteCount > 150
SELECT count(*) , lasteditdate FROM posts WHERE title = "What is the best introductory Bayesian statistics textbook"
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Outlier'
SELECT T2.Title FROM postLinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T1.PostId = (SELECT T1.PostId FROM postHistory AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.PostHistoryTypeId = 1) AND T2.Title = "How to tell if something happened in a data set which monitors a value over time"
SELECT T1.PostId , T2.Name FROM postHistory AS T1 JOIN badges AS T2 ON T1.UserId = T2.UserId WHERE T1.UserId = 123456 AND T3.CreationDate = 2013 AND T3.OwnerDisplayName = "Samuel"
SELECT posts.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.Id ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Tags.TagName = "hypothesis-testing"
SELECT T2.RelatedPostId , T2.LinkTypeId FROM posts AS T1 JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What are principal component scores?"
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.ParentId ORDER BY T1.Score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT sum(count) FROM tags AS T1 JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T2.viewcount BETWEEN 5000 AND 7000
SELECT OWNERUSERID FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.CreationDate = "2011-01-01" AND T1.BountyAmount = 50
SELECT id FROM users ORDER BY age LIMIT 1
SELECT sum(score) FROM posts WHERE creationdate = "2010-07-19";
SELECT avg(T2.LinkTypeId) FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.PostId WHERE T1.AnswerCount <= 2 AND T1.PostTypeId = "blog" AND T1.CreateDate = "2010-04-20"
SELECT PostId FROM votes WHERE UserId = 1465 GROUP BY PostId ORDER BY SUM (VoteTypeId) DESC LIMIT 1
SELECT t1.title FROM posts AS t1 JOIN postlinks AS t2 ON t1.id = t2.postid ORDER BY creationdate LIMIT 1
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid ORDER BY T2.name DESC LIMIT 1
SELECT T2.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.VoteTypeId = 1 AND T2.Tags = 'chl'
SELECT creationdate FROM users ORDER BY age LIMIT 1
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = "Autobiographer" ORDER BY T2.date LIMIT 1
SELECT count(*) FROM users WHERE LOCATION = "United Kingdom" INTERSECT SELECT count(*) FROM posts WHERE FavoriteCount >= 4
SELECT avg(upvotes) FROM users WHERE age = (SELECT max(age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age = "Adult"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayName = "Jay Stevens" AND T1.creaiondate LIKE "2010%"
SELECT postid , title FROM posts WHERE OWNERUSERID = (SELECT id FROM users WHERE displayname = "Harvey Motulsky" ORDER BY views DESC LIMIT 1) ORDER BY views DESC LIMIT 1;
SELECT PostId , Title FROM posts ORDER BY Score DESC LIMIT 1
SELECT avg(T1.Score) FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T3.Id = T2.UserId WHERE T3.DisplayName = "Stephen Turner"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.ViewCount > 20000 AND T2.CreationDate = 2011
SELECT postid , ownerdisplayname FROM posts WHERE createddate = "2010-04-15" ORDER BY score DESC LIMIT 1;
SELECT count(*) , T1.reputation FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 1000 AND T2.creationdate = 2011 GROUP BY T1.id HAVING count(*) > 1
SELECT avg(T2.score) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.age LIKE "< 25%"
SELECT T1.OwnerDisplayName , T1.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Title = "Computer Game Datasets" ORDER BY T2.LastAccessDate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM posts)
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T1.DisplayName , T1.Location FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.PostId = 183 ORDER BY T2.LastEditDate DESC LIMIT 1
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Emmett" ORDER BY T1.Date DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.age > 30 AND T2.upvotes > 5000
SELECT T2.Date - T1.creationdate FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T1.displayname = 'Zolomon'
SELECT count(*) , commentcount FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T3.id = T2.userid WHERE T3.creationdate = (SELECT creationdate FROM users ORDER BY creationdate DESC LIMIT 1)
SELECT T1.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T3.Id = T1.PostId WHERE T3.Title = "Analysing wind data with R" ORDER BY T1.CreationDate DESC LIMIT 10
SELECT count(DISTINCT users.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'Citizen Patrol'
SELECT count(*) FROM tags AS T JOIN posts AS P ON T.excerptpostid = P.id WHERE T.tagname = "careers"
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT commentcount , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T2.Score , T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T1.Reputation DESC LIMIT 1;
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "fine, you win :)"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Linear regression"
SELECT max(T2.score) , T1.postid FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.viewcount BETWEEN 100 AND 150 GROUP BY T1.id ORDER BY max(T2.score) DESC LIMIT 1;
SELECT T1.CreationDate , T3.Age FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN users AS T3 ON T2.UserId = T3.UserId WHERE T3.WebsiteUrl = "webiste"
SELECT count(*) FROM comments WHERE score = 0 INTERSECT SELECT count(*) FROM posts WHERE viewcount < 5
SELECT count(*) FROM comments WHERE postid IN (SELECT postid FROM comments GROUP BY postid HAVING commentcount = 1) AND score = 0
SELECT count(DISTINCT T1.UserId) FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score = 0 AND T2.age = 40
SELECT postid , commentcount FROM posts WHERE title = "Group differences on a five point Likert item"
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT userdisplayname FROM comments WHERE score BETWEEN 1 AND 5 AND downvotes = 0
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score BETWEEN 5 AND 10 AND T2.upvotes = 0
SELECT power_name FROM superpower WHERE power_name LIKE "%3-D Man%" AND power_name != "null"
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superpower AS T1 JOIN superhero AS T2 ON T1.id = T2.hero_power WHERE T1.power_name = "Super Strength" AND T2.height_cm > 200;
SELECT T1.full_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id GROUP BY T2.hero_id HAVING count(*) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = "blue"
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = "Apocalypse"
SELECT count(*) FROM superhero WHERE eye_colour_id = "Blue" AND power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "blond"
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT superhero_name FROM superhero WHERE publisher_id = 1 ORDER BY height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Sauron"
SELECT superhero_name FROM superhero WHERE publisher_name = 'Marvel Comics' ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id = 'Marvel Comics'
SELECT superhero_name FROM superhero WHERE publisher_id = "Marvel Comics" INTERSECT SELECT T1.superhero_name FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = "Super Strength"
SELECT count(DISTINCT superhero_name) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'DC Comics')
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = "gold" AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = "Marvel Comics");
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = 'blonde'
SELECT superhero_name FROM superhero ORDER BY full_name LIKE '%dumb%' LIMIT 1
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.full_name = 'Copycat'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "durability" AND T3.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = hero_power.id WHERE t2.power_name = 'death touch'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND weight_kg = 100 AND height_cm = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 1 AND race_id = 1594 AND eye_colour_id = 1647 AND hair_colour_id = 1234 AND skin_colour_id = 1234 AND gender_id = 1
SELECT count(*) , T1.publisher_name FROM superhero AS T1 JOIN superhero AS T2 ON T1.id = T2.id WHERE T1.publisher_id = T2.publisher_id AND T1.superhero_name = T2.superhero_name AND T1.full_name = T2.full_name AND T1.gender_id = T2.gender_id AND T1.eye_colour_id = T2.eye_colour_id AND T1.skin_colour_id = T2.skin_colour_id AND T1.alignment_id = T2.alignment_id AND T1.height_cm = T2.height_cm AND T1.weight_kg = T2.weight_kg AND T1.publisher_id = T2.publisher_id AND T1.gender_id = T2.gender_id AND T1.eye_colour_id = T2.eye_colour_id AND T1.skin_colour_id = T2.skin_colour_id AND T1.alignment_id = T2.alignment_id AND T1.height_cm = T2.height_cm AND T1.weight_kg = T2.weight_kg GROUP BY T1.publisher_name HAVING count(*) > 0 AND (SELECT T1.publisher_name FROM superhero AS T1 JOIN superhero AS T2 ON T1.id = T2.id WHERE T1.publisher_id = T2.publisher_id AND T1.superhero_name = T2.superhero_name AND T1.full_name = T2.full_name AND T1.gender_id = T2.gender_id AND T1.eye_colour_id = T2.eye_colour_id AND T1.skin_colour_id = T2.skin_colour_id AND T1.alignment_id = T2.alignment_id AND T1.height_cm = T2.height_cm AND T1.weight_kg = T2.weight_kg)
SELECT T2.publisher_name - T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_id = 101 AND T1.full_name LIKE "%DC%" INTERSECT SELECT T2.publisher_name - T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.publisher_id = 102 AND T1.full_name LIKE "%Marvel Comics%"
SELECT publisher_id FROM superhero WHERE full_name = "Star Trek."
SELECT avg(T2.attribute_value) FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id
SELECT count(*) FROM superhero WHERE full_name = "null"
SELECT eye_colour_id FROM superhero WHERE id = 75;
SELECT T2.power_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = hero_power.T1.id WHERE T1.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1;
SELECT superhero_name FROM superhero WHERE gender_id = 1
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT T1.superhero_name FROM superhero AS T1 JOIN superhero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_id = 19
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.id = 56
SELECT full_name FROM superhero WHERE gender_id = 1 AND race_id = 5 AND gender = "Demigod";
SELECT count(*) FROM superhero WHERE gender_id = 'male' AND eye_colour_id = 'bad'
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour_id FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE gender_id = 1 AND weight_kg > (SELECT avg(weight_kg) FROM superhero) / 79;
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(*) DESC LIMIT 1
SELECT attribute_value FROM hero_attribute WHERE attribute_id = 423624 AND attribute_value = "Abomination"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.id = 1
SELECT count(DISTINCT hero_id) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'stealth'
SELECT T1.full_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = 'strength' ORDER BY T3.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE skin_colour_id = "null"
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN superhero AS T2 ON T1.id = T2.id WHERE T1.publisher_id = (SELECT publisher_id FROM superhero WHERE T2.publisher_id = 'Dark Horse Comics') GROUP BY T1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.eye_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.full_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = hero_power.hero_id WHERE t2.power_name = 'flight'
SELECT T1.eye_colour_id , T1.hair_colour_id , T1.skin_colour_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.id = T2.id WHERE T2.publisher_name = "Dark Horse Comics" AND T1.gender_id = 1
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.eye_colour_id = (SELECT eye_colour_id FROM superhero GROUP BY eye_colour_id HAVING count(*) = 1) AND T1.hair_colour_id = (SELECT hair_colour_id FROM superhero GROUP BY hair_colour_id HAVING count(*) = 1) AND T1.skin_colour_id = (SELECT skin_colour_id FROM superhero GROUP BY skin_colour_id HAVING count(*) = 1)
SELECT group FROM superhero WHERE superhero_name = "A-Bomb"
SELECT count(*) , gender_id , gender FROM superhero WHERE gender = 'Female' AND eye_colour_id = 'Blue' GROUP BY gender_id
SELECT T2.superhero_name , T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = "Charles Chandler"
SELECT T2.gender FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.superhero_name = 'Agent 13'
SELECT T1.superhero_name FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.power_id WHERE T2.power_name = "adaptation"
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Amazo"
SELECT power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = 57
{"sql": "SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE eye_colour
SELECT eye_colour_id FROM superhero WHERE skin_colour_id = "gold"
SELECT full_name FROM superhero WHERE race_id = 4 AND gender_id = 1 AND superhero_name = 'Vampire Hunter'
SELECT superhero_name FROM superhero WHERE alignment_id = 1 AND gender_id = 2 AND alignment = 'neutral'
{"sql": "SELECT count(DISTINCT hero_id) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value
SELECT T2.race , T2.alignment FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id JOIN alignment AS T3 ON T2.alignment_id = T3.id WHERE T1.full_name = "Cameron Hicks"
SELECT count(*) FROM superhero WHERE gender_id = 'female' AND publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT avg(weight_kg) FROM superhero WHERE race_id = 5;
SELECT weight_kg - height_cm FROM superhero WHERE full_name = "Emil Blonsky" EXCEPT SELECT weight_kg - height_cm FROM superhero WHERE full_name = "Charles Chandler"
SELECT avg(height_cm) , superhero_name FROM superhero GROUP BY superhero_name
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.superhero_name = 'Abomination'
SELECT count(*) FROM superhero WHERE race_id IN (SELECT id FROM race WHERE race = "god / eternal") AND gender_id = 1
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id ORDER BY T1.height_cm LIMIT 1
SELECT count(*) FROM superhero WHERE alignment_id = 'neutral'
SELECT T1.attribute_name , T2.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T2.attribute_value = '3D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "brown";
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = 'Hawkman' AND T2.superhero_name = 'Karate Kid' AND T2.superhero_name = 'Speedy'
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE eye_colour_id = "blue")
SELECT count(*) , gender_id FROM superhero GROUP BY gender_id HAVING count(*) >= 2
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294;
SELECT superhero_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour_id FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = 'Helen Parr'
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.weight_kg = 108 AND T2.height_cm = 188;
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id ORDER BY T2.superhero_name , T2.attribute_value DESC LIMIT 1
SELECT T1.alignment , T2.power_name FROM alignment AS T1 JOIN superpower AS T2 ON T1.id = T2.alignment_id JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T3.superhero_name = "Atom IV"
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue"
SELECT avg(attribute_value) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.gender_id = 1 AND T3.full_name LIKE "%Neutral%"
SELECT T1.skin_colour_id FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value = 100
SELECT count(*) FROM superhero WHERE gender_id = 1 AND full_name LIKE '%female%' AND gender_id = 1
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.gender_id = 1 AND T1.hair_colour_id = 2 AND T1.full_name LIKE "%blue%"
SELECT count(*) , gender_id FROM superhero WHERE gender_id = 2 GROUP BY gender_id HAVING count(*) >= 2
SELECT count(*) , eye_colour_id FROM superhero WHERE weight_kg = "null" AND eye_colour_id = "blue"
SELECT power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "The Hulk"
SELECT power_name FROM superpower WHERE power_name LIKE "%Ajax%"
SELECT count(*) FROM superhero WHERE skin_colour_id = 'green'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND publisher_id = 50025 AND race_id = 23 AND full_name LIKE '%superhero%' AND gender_id = 1 FROM superhero WHERE gender_id = 1 AND publisher_id = 50025 AND race_id = 23 AND full_name LIKE '%superhero%'
SELECT superhero_name FROM superhero WHERE power_name = "wind" INTERSECT SELECT superhero_name FROM superpower ORDER BY superhero_name
SELECT T1.gender FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id JOIN superpower AS T3 ON T2.id = T3.id WHERE T3.power_name = "Phoenix Force"
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE superhero_name LIKE "%non-human%" AND publisher_id = 47953
{"sql": "SELECT count(*) FROM superhero WHERE gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND alignment_id = 1 AND height_cm = 1 AND weight_kg = 1 AND gender_id = 1 AND eye_colour
SELECT count(*) FROM superhero WHERE publisher_id = 'DC' UNION SELECT count(*) FROM superhero WHERE publisher_id = 'Marvel Comics'
SELECT t1.attribute_name FROM attribute AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.attribute_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = "Black Panther" AND t1.attribute_name = "weakest"
SELECT eye_colour_id FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) , gender_id FROM superhero WHERE gender_id = 2 AND publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'George Lucas' ) GROUP BY gender_id HAVING count(*) > 0
SELECT count(*) / (SELECT count(*) FROM superhero WHERE publisher_id = 'Marvel Comics') * 100 FROM superhero WHERE gender_id = 'male' AND full_name LIKE '%good%'
{"sql": "SELECT count(*) FROM superhero WHERE full_name LIKE '%John%'.")
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id ORDER BY T3.attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT superhero_name FROM superhero WHERE weight_kg < 100 AND eye_colour_id = 15 AND gender_id = 1 AND race_id = 1
SELECT attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1 AND alignment_id = 1
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT eye_colour FROM superhero WHERE race_id = 1 AND gender_id = 1 AND full_name = "Blackwulf";
SELECT power_name FROM superpower WHERE power_name LIKE '%strength%' AND height_cm > (SELECT avg(height_cm) FROM superhero) * 0.8
SELECT T1.driverref FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "20" AND T2.position = "1" AND T1.number != "20"
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = (SELECT min(lap) FROM qualifying AS T3 JOIN races AS T4 ON T3.raceid = T4.raceid WHERE T4.round = 19) AND T3.position = 2
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.circuitid = (SELECT T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Shanghai")
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country != 'Asia') AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country != 'Europe')
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Spain"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit";
SELECT TIME FROM races WHERE name = "Sepang International Circuit";
SELECT T1.lng , T1.lati FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix";
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.raceid = 24 AND T3.points = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = 159951
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.number = 355 AND T2.q2 = "0:01:40"
SELECT T1.number FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Q3" AND T1.position = "0:01:54" AND T1.raceid = 903
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T1.year = 2007 EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T1.year = 2007 AND T1.position != "F"
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.date = "2015/11/29"
SELECT T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.raceid = 592 ORDER BY T1.dob LIMIT 1
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 1 AND T2.position = 1 AND T2.time = "0:01:27" AND T2.raceid = 161;
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.round = 933 ORDER BY T1.name LIMIT 1
SELECT T1.lng , T1.latt FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Race No. 345" AND T1.driverid = "Lucas di Grassi"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.round = 347 AND T2.time LIKE "0:01:15" AND T1.country = T3.country WHERE T3.driverid IN (SELECT T1.driverid FROM qualifying AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 2)
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.round = 4 AND T2.position = 3 AND T2.milliseconds = 330; SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.round = 4 AND T2.position = 3 AND T2.milliseconds = 330;
SELECT T1.position , T1.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Bruce McLaren" AND T2.position = 743
SELECT T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "San Marino Grand Prix" AND T2.year = 2006 ORDER BY T1.position LIMIT 1
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29" EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29" AND T1.statusid = 1
SELECT T1.surname , T1.dob FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 ORDER BY T1.dob LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = (SELECT max(lap) FROM races WHERE raceid = 348) ORDER BY T2.milliseconds LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT (position - 1) / (position) * 100 FROM results WHERE raceid = 853 ORDER BY fastestlapspeed LIMIT 1
SELECT count(*) , avg(T1.laps) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 1983 AND T2.date = "1983/7/16"
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "Singapore Grand Prix"
SELECT count(*) , name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races ORDER BY YEAR , MONTH LIMIT 1
SELECT round , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix";
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "British Grand Prix" AND T2.circuitid = 1376;
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit" AND T1.name = "United Kindom grand prix"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2010 AND T2.round = 1 AND T2.position = 1 ORDER BY T2.positiontext
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "top" GROUP BY T1.driverid ORDER BY sum(T2.points) DESC LIMIT 1
SELECT T1.driverref , T2.position FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.year = 2017 AND T2.round = 1 AND T2.name = "Chinese Grand Prix" GROUP BY T1.driverref ORDER BY count(*) DESC LIMIT 3;
SELECT T1.driver , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid ORDER BY T1.driverid LIMIT 1
SELECT avg(T1.lap) FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Malaysian Grand Prix" AND T2.position = 1 AND T1.driver = "Lewis Hamilton"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2010 AND T1.position != "1" AND T1.positiontext = "Hamilton"
SELECT T1.forename , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1;
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.circuitid FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T1.country = "USA"
SELECT T1.name , T2.circuitRef , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = 1 AND T1.date LIKE "9/20/2005%"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T3.driverid = T2.driverid WHERE T3.surname = "Alex Yoong" AND T1.name IN (SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T3.driverid = T2.driverid WHERE T3.surname = "Alex Yoong" AND T1.name < 20)
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = "Sepang International Circuit" AND T1.status = "WIN" AND T1.constructorid = 1023796
SELECT T1.name , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Michael Schumacher" AND T2.position = "fastest"
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2000 AND T1.driverid = "Eddie Irvine";
SELECT T1.points , T1.round FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton" AND T2.position = 1;
SELECT name , country FROM races WHERE YEAR = 2017 ORDER BY date
SELECT T1.name , T1.year , T1.circuitid FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM races WHERE country = 'Europe' INTERSECT SELECT count(*) FROM races WHERE country = 'Germany'
SELECT lat , lng FROM circuits WHERE name = "Silverstone Circuit";
SELECT name FROM circuits WHERE location = 'Silverstone Circuit, Hockenheimring' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1;
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = "null"
SELECT T1.country FROM circuits AS T1 JOIN drivers AS T2 ON T1.circuitid = T2.driverid WHERE T2.dob LIKE "%999%"
SELECT surname FROM drivers WHERE nationality = "Italian";
SELECT url FROM constructors WHERE name = "Anthony Davidson"
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix";
SELECT DISTINCT T1.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Circuit" AND T1.year = 2010;
SELECT count(*) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix" AND T1.country = "Spain";
SELECT fastestlapspeed FROM results WHERE driverid = 156 AND constructorid = 221 AND position = 1 AND positiontext = "Lewis Hamilton" ORDER BY fastestlapspeed LIMIT 1;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.number FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2007 AND T3.name = "Canadian Grand Prix" ORDER BY T2.rank LIMIT 1
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T2.driverid = T3.driverid WHERE T3.position = 1 AND T2.positiontext = "Lewis Hamilton"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton" ORDER BY T3.position ASC LIMIT 1;
SELECT max(T2.laptimeserials) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.raceid = T3.raceid JOIN drivers AS T4 ON T3.driverid = T4.driverid WHERE T4.forename = "Lewis Hamilton" AND T2.position = "Finish 1"
SELECT T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.driverid = "Lewis Hamilton" ORDER BY T1.position;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.position = 4
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix" AND T1.position = "Finish"
SELECT T1.lap , T1.position , T1.milliseconds FROM laptimes AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T2.driver = "Lewis Hamilton" AND T2.year = 2008 AND T2.round = 1 ORDER BY T1.milliseconds LIMIT 1
SELECT T1.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "AustChineseralian Grand Prix" AND T2.position = 2;
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix" SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix" AND T1.statusid = 1 AND T1.position = 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Chinese Grand Prix" JOIN driverstandings AS T3 ON T1.raceid = T3.raceid JOIN constructorstandings AS T4 ON T1.constructorid = T4.constructorid JOIN constructorresults AS T5 ON T1.constructorid = T5.constructorid WHERE T5.status = "Win"
SELECT sum(T2.points) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.raceid = T3.raceid WHERE T3.driverid = drivers.driverid AND T3.position = "Finish" AND T2.constructorid = constructors.constructorid AND T2.status = "Points" AND T2.position = "Top" AND T2.positionText = "Lewis Hamilton"
SELECT avg(T2.fastestlaps) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.laps = 14
SELECT T1.positionText , T1.positionOrder , T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" ORDER BY T1.positionText DESC LIMIT 1 EXCEPT SELECT T1.positionText , T1.positionOrder , T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" ORDER BY T1.positionText DESC LIMIT 1
SELECT count(*) FROM circuits WHERE name LIKE "%Adelaide, Australia%";
SELECT lat , lng FROM circuits WHERE country = 'United States'
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > 1980
SELECT max(T1.points) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.points = 0
SELECT count(*) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T3.nationality = "Japanese" AND T1.points = 0
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.position = 1
SELECT count(*) FROM results AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "French" AND T1.laps > 50
SELECT count(*) , avg(T1.position) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year BETWEEN 2007 AND 2009 AND T2.statusid = 1 AND T1.name LIKE "%Japanese%"
SELECT avg(T2.time) , T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.year < 1975
SELECT forename , surname FROM drivers WHERE dob > '1975' AND position = 2;
SELECT count(*) FROM drivers WHERE nationality != 'Italian'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT min(T2.lap) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 ORDER BY T1.position ASC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT name , YEAR FROM races ORDER BY TIME LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < '2000-01-01' AND T2.lap > 50
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND T2.lap LIKE "02:00.00%"
SELECT code FROM drivers WHERE nationality LIKE "%America%"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid = 18
SELECT count(*) FROM drivers WHERE nationality = "Netherlandic" ORDER BY dob DESC LIMIT 3;
SELECT name FROM drivers WHERE forename = "Robert" AND surname = "Kubica";
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = "1980";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.year BETWEEN 1980 AND 1990 ORDER BY T2.milliseconds LIMIT 3
SELECT DISTINCT T1.circuitRef FROM circuits AS T1 JOIN drivers AS T2 ON T1.circuitId = T2.driverId WHERE T1.country = "German" ORDER BY T2.dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = "1971" ORDER BY T2.milliseconds LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap = (SELECT max(lap) FROM laptimes WHERE dob < 1982)
SELECT DISTINCT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year ORDER BY T2.time LIMIT 1
SELECT DISTINCT YEAR FROM laptimes ORDER BY milliseconds LIMIT 1
SELECT driverid FROM results WHERE position = "fastest" AND raceid IN (SELECT raceid FROM races WHERE round = "1") ORDER BY fastestlapspeed DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.round = 50 AND T2.round <= 100 AND T1.statusid = 4;
SELECT location , lat , lng FROM circuits WHERE country = 'Austria'
SELECT raceid , count(*) FROM results GROUP BY raceid ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.number = 2 AND T2.position = 2 AND T2.raceId = 23
SELECT T1.year , T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.position LIMIT 1
SELECT count(*) FROM drivers WHERE nationality = "American" AND status = "puncture";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Italian" ORDER BY T2.points DESC LIMIT 1;
SELECT T2.name FROM constructorstandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY sum(T1.wins) DESC LIMIT 1
SELECT T1.driver FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 3 AND T2.position = 2 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.name , T1.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T2.position = 1 ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.fastestlapsit) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2006 AND T1.name = "United States Grand Prix" ORDER BY T2.laps DESC LIMIT 10;
SELECT T1.number , T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) ASC LIMIT 3 INTERSECT SELECT T1.number , T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING min(T2.duration) <= 1000 INTERSECT SELECT T1.number , T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING max(T2.duration) >= 1000
SELECT T1.position , T1.time FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Canadian Grand Prix" AND T2.year = 2008 ORDER BY T1.position DESC LIMIT 1;
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix" ORDER BY T1.name;
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN 1981 AND 1991
SELECT dob , url , forename , surname FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT LOCATION , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T2.name , T2.nationality , T1.points FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T2.nationality = "France" AND T1.year BETWEEN 1980 AND 2010 ORDER BY T1.points DESC LIMIT 1
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Turkish Grand Prix" AND T3.nationality = "Lewis Hamilton"
SELECT avg(T1.round) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2011 AND 2100 GROUP BY T1.year
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM constructorstandings AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.rank = 91
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = (SELECT max(YEAR) FROM races)
SELECT T1.surname , T1.forename FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.round = 3 AND T3.circuitid = "Marina Bay Street Circuit" AND T2.position = 1
SELECT T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid ORDER BY T1.dob LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Canada" ORDER BY T1.driverid LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 2 AND T2.wins = (SELECT max(wins) FROM constructorstandings) ORDER BY T1.dob LIMIT 1
SELECT max(duration) FROM pitstops
SELECT fastestlaptime FROM results ORDER BY position LIMIT 1
SELECT max(duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton";
SELECT T2.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = (SELECT driverid FROM results AS T3 JOIN races AS T4 ON T3.raceid = T4.raceid WHERE T4.year = 2011 AND T4.name = "2011 Australian Grand Prix" AND T3.position = "pitstop") AND T1.stop = "yes" AND T1.lap = (SELECT T2.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = (SELECT driverid FROM results AS T3 JOIN races AS T4 ON T3.raceid = T4.raceid WHERE T4.year = 2011 AND T4.name = "2011 Australian Grand Prix" AND T3.position = "pitstop") AND T1.stop = "yes")
SELECT TIME FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix"
SELECT T1.laps , T1.position , T1.time FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20;
SELECT T1.position FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Lewis Hamilton" AND T1.position = (SELECT max(position) FROM laptimes WHERE driverid = 1)
SELECT T1.laps FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit"
SELECT DISTINCT T1.lap FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT T2.duration FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit" AND T2.driverid = T1.driverid
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.round = 5 AND T2.time LIKE "1:29.488%"
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton"
SELECT avg(T1.milliseconds) , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy" GROUP BY T2.name
SELECT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate != "defensive";
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE crossing > (SELECT max(crossing) FROM Player_Attributes) ORDER BY crossing DESC LIMIT 5;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 ORDER BY T2.goal DESC LIMIT 1;
SELECT T1.team_short_name FROM MATCH AS T1 JOIN team AS T2 ON T1.home_team_api_id = T2.team_api_id GROUP BY T1.home_team_api_id ORDER BY count(*) ASC LIMIT 1;
SELECT T1.player_name , T2.penalties FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T2.player_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T1.season = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.buildUpPlaySpeedClass , T1.buildUpPlayDribbling , T1.buildUpPlayPassing FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id ORDER BY T1.buildUpPlaySpeedClass DESC LIMIT 4;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = "draw" GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.birthday FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.sprint_speed >= 97 AND T1.date BETWEEN "2013-01-01" AND "2015-12-31"
SELECT T1.name , count(*) FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN 1990 AND 1995;
SELECT player_api_id FROM Player_Attributes WHERE date = "2010-06-15" ORDER BY overall_rating DESC LIMIT 1
SELECT T1.team_fifa_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlaySpeed > 50 AND T2.buildUpPlaySpeed < 60
SELECT T2.team_long_name FROM Player_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.date = "2012" AND T1.buildUpPlayPassing > (SELECT avg(buildUpPlayPassing) FROM Player_Attributes WHERE date = "2012")
SELECT count(*) FROM Player_attributes WHERE preferred_foot = 'left' AND birthday BETWEEN 1987 AND 1992;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id ORDER BY T2.goal SUM(T2.goal) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name HAVING AVG(T2.heading_accuracy) > 180 ORDER BY AVG(T2.heading_accuracy) DESC LIMIT 10;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_fifa_api_id WHERE T2.buildUpPlayDribblingClass = "normal" AND T2.date = 2014 GROUP BY T1.team_short_name HAVING avg(T2.chanceCreationPassing) - T2.chanceCreationPassing < 0 ORDER BY avg(T2.chanceCreationPassing) - T2.chanceCreationPassing DESC
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2009 AND T2.stage = "1" GROUP BY T2.league_id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_fifa_api_id = "Queens Park Rangers";
SELECT player_name FROM Player WHERE birthday LIKE "1970-10%";
SELECT attacking_work_rate FROM Player_Attributes WHERE player_fifa_api_id = "FRONTO ZENNARO";
SELECT T1.team_short_name , T1.team_fifa_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlaySpeedClass = "1st two thirds" AND T2.buildUpPlayDribblingClass = "1st two thirds" AND T2.buildUpPlayPassingClass = "1st two thirds"
SELECT finishing FROM Player_Attributes WHERE date = "18/09/2014" AND preferred_foot = "football" AND player_fifa_api_id = "FRANCOIS AFFOLTER";
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Gabriel Tamas" AND T1.date = 2011;
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = '2015/2016'
SELECT T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left' AND T2.attacking_work_rate = 'yes'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE chanceCreationPassingClass = "Risky"
SELECT defensive_work_rate FROM Player_Attributes WHERE player_fifa_api_id = "David Wilson" AND preferred_foot = "football";
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T1.name FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Netherlands'
SELECT avg(T1.home_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Poland' AND T1.season = 2010/2011;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name ORDER BY avg(T2.finishing) DESC LIMIT 1
SELECT player_name FROM Player WHERE height > 180;
SELECT count(*) FROM Player WHERE birthday > '1990-'
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_fifa_api_id WHERE T2.overall_rating > 80 AND T2.date BETWEEN "2008-01-01" AND "2009-12-31" AND T2.date BETWEEN "2010-01-01" AND "2011-12-31";
SELECT potential FROM Player_Attributes WHERE player_name = "Aaron Doran"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeedClass = 'fast'
SELECT buildUpPlayPassing FROM Team_Attributes WHERE team_fifa_api_id = "CLB"
SELECT T2.team_short_name FROM Player_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE buildUpPlayPassing > 70;
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN 2010 AND 2015 AND player_fifa_api_id > 170;
SELECT player_name FROM Player ORDER BY height LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Player_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Aaron Doran"
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = "Germany 1. Bundesliga" AND T1.date BETWEEN "2008-08-01" AND "2008-10-31";
SELECT T2.team_short_name FROM MATCH AS T1 JOIN team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN team_attributes AS T3 ON T1.home_team_api_id = T3.team_fifa_api_id WHERE T3.buildUpPlaySpeedClass = "10"
SELECT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC LIMIT 1 UNION SELECT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC LIMIT 1, 61
SELECT avg(ball_control) - avg(ball_control) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Abdou Diallo" INTERSECT SELECT avg(ball_control) - avg(ball_control) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN"
SELECT birthday FROM Player WHERE player_name = "Aaron Lennon" UNION SELECT birthday FROM Player WHERE player_name = "Abdelaziz Barrada";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'yes'
SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM league AS T1 JOIN country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986 AND T2.attacking_work_rate != "null"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = (SELECT max(cross) FROM Player_Attributes WHERE player_name = "Alexis") INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = (SELECT max(cross) FROM Player_Attributes WHERE player_name = "Ariel Borysiuk") INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross = (SELECT max(cross) FROM Player_Attributes WHERE player_name = "Arouna Kone")
SELECT heading_accuracy FROM Player_Attributes WHERE player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70
SELECT count(*) FROM MATCH AS T1 JOIN country AS T2 ON T1.country_id = T2.id JOIN league AS T3 ON T2.id = T3.country_id WHERE T3.name = "2008/2009" AND T2.name = "Belgium"
SELECT long_passing FROM Player_Attributes ORDER BY birthday DESC LIMIT 1;
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = "Belgium Jupiler League" AND T1.date = "2009-04-01"
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2008 AND T2.stage = "1" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986
SELECT overall_rating - (SELECT overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ariel Borysiuk") AS diff FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiuk" EXCEPT SELECT overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Paulin Puel"
SELECT avg(buildUpPlaySpeed) FROM Team_attributes WHERE team_fifa_api_id = "Heart of Midlothian"
SELECT avg(T1.overall_rating) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Pietro Marino"
SELECT sum(t1.crossing) FROM Player_attributes AS t1 JOIN Player AS t2 ON t1.player_api_id = t2.player_api_id WHERE t2.player_name = "Aaron Lennox"
SELECT max(chanceCreationPassing) , chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing != "null" ;
SELECT T1.preferred_foot FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Abdou Diallo"
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Dorlan Pabon" ORDER BY T1.overall_rating DESC LIMIT 1
SELECT avg(T1.goal) FROM MATCH AS T1 JOIN team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Italy' AND T2.team_fifa_api_id = 'Parma'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 77 AND T2.date = "2016/6/23" ORDER BY T1.birthday DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Mooy" AND T1.date = "2016/2/4"
SELECT T1.potential FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Parravicini" AND T1.date = "2010/8/30"
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.date = "2015/5/1" AND T2.player_name = "Francesco Migliore"
SELECT T1.defensive_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Kevin Berigaud" AND T1.date = "2013/2/22"
SELECT T1.date FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.cross = (SELECT max(cross) FROM Player_Attributes) AND T2.player_name = "Kevin Constant";
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN MATCH AS T2 ON T1.team_fifa_api_id = T2.away_player_11 WHERE T2.date = "2011/2/22" AND T1.player_name = "Willem II"
SELECT buildUpPlayDribbling FROM Team_Attributes WHERE date = "2015/9/10" AND buildUpPlayPlaySpeedClass = "Dribbling" AND buildUpPlayDribblingClass = "LEI";
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE date = "2013/9/20" AND player_name = "PEC Zwolle";
SELECT chanceCreationCrossing FROM Team_Attributes WHERE date = "2010/2/22" AND chanceCreationPassingClass = "Hull City";
SELECT defenceAggressionClass FROM Team_Attributes WHERE date = "2015/9/10" AND team_fifa_api_id = "Hannover 96";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date BETWEEN "2007/2/22" AND "2016/4/21";
SELECT max(overall_rating) FROM Player_Attributes WHERE date = "2013/7/12" AND player_name = "Landon Donovan" > SELECT max(overall_rating) FROM Player_Attributes WHERE date = "2013/7/12" AND player_name = "Jordan Bowery";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.height LIMIT 10;
SELECT player_name FROM Player WHERE birthday LIKE "35%"
SELECT count(*) FROM MATCH AS T1 JOIN Team_Attributes AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_fifa_api_id = T3.team_api_id JOIN Player AS T4 ON T4.player_api_id = T2.player_api_id WHERE T4.player_name = 'Aaron Lennon' AND T3.team_short_name = 'home' AND T2.buildUpPlayShooting = 'goal'
SELECT sum(T2.goal) FROM MATCH AS T1 JOIN Player AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.player_name = "Daan Smith" INTERSECT SELECT sum(T2.goal) FROM MATCH AS T1 JOIN Player AS T2 ON T1.away_player_10 = T2.player_api_id WHERE T2.player_name = "Filipe Ferreira"
SELECT sum(T1.goal) FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.goal = T2.player_fifa_api_id WHERE T2.player_age <= 30;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY strength DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate > (SELECT max(attacking_work_rate) FROM Player_Attributes WHERE T2.player_fifa_api_id IN (SELECT player_fifa_api_id FROM Player_Attributes WHERE T2.player_fifa_api_id = 'attack' ))
SELECT T2.player_name , T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 ORDER BY T1.birthday LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN League AS T2 ON T1.player_api_id = T2.country_id WHERE T2.name = "Belgium";
SELECT T1.player_name , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.age = T2.id WHERE T1.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Football' GROUP BY T1.name ORDER BY avg(T1.weight) DESC LIMIT 1;
SELECT team_long_name FROM Team_Attributes WHERE buildUpPlaySpeedClass = "slow"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.chanceCreationPassing = 'safe'
SELECT avg(T1.height) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.away_player_11 JOIN league AS T3 ON T3.id = T2.league_id WHERE T3.country_id = 16;
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name ASC LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > '1990' AND player_name = 'Aaron'
SELECT jumping FROM Player_Attributes WHERE player_api_id = 6 DIFFERENT FROM Player_Attributes WHERE player_api_id = 23
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "right" ORDER BY T2.potential LIMIT 5;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = 'high' ORDER BY potential DESC LIMIT 1;
SELECT count(*) / (SELECT count(*) FROM Player_Attributes WHERE strength > 80) FROM Player_Attributes
SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa";
SELECT home_team_goal , away_team_goal FROM MATCH WHERE date = "2008-09-24" AND stage = "final";
SELECT acceleration , agility , sprint_speed FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "KSV Cercle Brugge"
SELECT count(*) FROM league AS T1 JOIN team AS T2 ON T1.id = T2.league_id WHERE T1.name = "Italian Serie A" AND T1.id = 2015-2016;
SELECT T1.name , T1.home_team_api_id , T1.home_team_goal , T1.home_team_from FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = 'Netherlands' AND T2.name = 'Eredivisie' ORDER BY T1.home_team_api_id DESC LIMIT 1;
SELECT T1.finishing , T1.curve FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.weight DESC LIMIT 1;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2015-2016 ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN team AS T2 ON T1.away_team_api_id = T2.id GROUP BY T1.away_team_api_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height < 180 AND T2.overall_rating > 70;
SELECT count(*) , sex , (count(*) - sex) / count(*) FROM patient GROUP BY sex
SELECT count(*) / count(*) FROM patient WHERE sex = 'F' AND birthday > 1930
SELECT count(*) , sum(admission) FROM patient WHERE birthday BETWEEN 1930 AND 1940 GROUP BY admission HAVING sum(admission) >= 100
{"sql": "SELECT count(*) , count(*) FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis = \"SLE\" AND (SELECT id FROM examination WHERE diagnosis =
SELECT T1.Date FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "30609"
SELECT T2.sex , T2.birthday , T1.date , T2.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > (SELECT max(LDH) FROM patient)
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Positive"
SELECT T1.id , T1.sex , T2.diagnosis FROM examination AS T1 JOIN diagnosis AS T2 ON T1.id = T2.id WHERE T2.thrombosis = "Severe"
SELECT DISTINCT T1.ID FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = "1937" AND T2.T-CHO > 100
SELECT DISTINCT T1.id , T1.sex , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alb - 3.5 < 0
SELECT count(*) * 100 / (SELECT count(*) FROM patient WHERE sex = 'F') FROM (SELECT id , sex , T-PRO from laboratory WHERE T-PRO != "Normal") AS T1 JOIN patient AS T2 ON T1.id = T2.id GROUP BY T2.id
SELECT avg(IIGG) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.birthday >= "50"
SELECT count(*) FROM patient WHERE sex = 'F' AND admission = '1997' JOIN examination ON patient.id = examination.id WHERE examination.examination date = '1997'
SELECT max(admission) , age FROM patient ORDER BY admission LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = 1997 AND T2.sex = 'F' AND T1.diagnosis = "Thrombosis" GROUP BY T2.sex ORDER BY count(*) DESC LIMIT 1
SELECT max(birthdate) - min(birthdate) FROM patient WHERE diagnosis = "Normal Triglyceride"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthdate LIMIT 1
SELECT avg(T2.TBIL) FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.examination date = "1998-12-31" AND T1.sex = "M"
SELECT T1.birthday , T2.admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday = (SELECT max(birthday) FROM patient)
SELECT count(*) , sex FROM patient WHERE id IN (SELECT id FROM examination WHERE diagnosis = "Abnormal uric acid") GROUP BY sex
SELECT count(*) FROM patient WHERE first date < (SELECT first date FROM examination WHERE id = (SELECT id FROM examination WHERE date >= (SELECT first date + 365 FROM examination)) )
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday < 1990 AND T2.birthday < 1993
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM laboratory WHERE T-BIL > 100
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday BETWEEN "01/01/1985" AND "12/31/1995"
SELECT avg(T2.Birthday) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.examination_date LIKE "%1999%" AND T1.diagnosis = "Labs" AND T1.examination_date LIKE "%10/1991%"
SELECT T1.Birthday , T2.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID ORDER BY T1.Birthday DESC LIMIT 1
SELECT T1.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.birthday = "1996/12/2" AND T2.id = 3605340
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1995-9-4" AND T2.id = 2927464 AND T1.diagnosis = "Normal"
SELECT T2.sex FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE diagnosis = "AORTITIS"
SELECT T1.status FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = '1994/2/19' AND T1.diagnosis = 'SLE' AND T1.date = '1993/11/12'
SELECT DISTINCT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = "1992-06-01" AND T1.first_date = "1992-06-01" AND T2.glutamic pylvic transaminase status = 9
SELECT T1.Birth - (DATE - T2.Date) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = "1991-10-21" AND T2.sex = "M" AND T2.birthday = "1991-10-21" AND T1.u-pro = 8.4
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1991/6/13" AND T2.diagnosis = "SJS" AND T1.diagnosis = "LMA" AND T1.date = "1995/6/13"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = "1997/1/27"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = "1959/3/1" AND T1.examination_date = "1993/9/27"
SELECT (T2.TCHO - T1.TCHO) / T1.TCHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthdate = "1959/2/18" AND T2.date = "1981/11/18" AND T2.date = "1981/12/18"
SELECT DISTINCT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Behcet's" AND T1.examination_date BETWEEN "01/01/197" AND "12/31/1997"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination date > '1987/7/6' AND T2.examination date < '1996/1/31' AND T1.gpt > 30 AND T1.alb < 4
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 GROUP BY id HAVING count(*) >= 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Thrombosis" AND T1.iana_pattern = "S" AND T2.sex = "M" AND T1.thrombosis_level = 2 AND T2.diagnosis = "Anti-Cardiolip" AND T1.anti_cardiolip_level > (SELECT avg(anti_cardiolip_level) FROM examination)
SELECT count(*) , count(*) / (SELECT count(*) FROM labresult WHERE U-PRO >= "Normal" AND UA < "Normal") FROM patient
SELECT count(*) * 100 / count(*) FROM patient WHERE sex = 'M' AND first date = 1981 AND diagnosis = "BEHCET"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991-10%" AND T2.T-BIL < 150
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ANA = "ANA Pattern" AND sex = "ANA"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = "PSS" AND T3.crp = 2 AND T3.CRE = 1 AND T3.LDHR = 123
SELECT avg(ALB) FROM LABORATORY AS T1 JOIN diagnosis AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.diagnosis = "SLE" AND T1.plt > 400
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" GROUP BY T1.symptoms ORDER BY count(*) DESC LIMIT 1
SELECT T1.Birthday , T2.Diagnosis FROM patient AS T1 JOIN diagnosis AS T2 ON T1.ID = 48473
SELECT count(*) FROM patient WHERE sex = 'F' INTERSECT SELECT count(*) FROM examination WHERE diagnosis = "APS"
{"sql": "SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination_date LIKE \"1997%\" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms = "Thrombocytopenia" AND T2.diagnosis = "SLE"
SELECT count(*) * 100 / count(*) FROM patient WHERE birthday = 1980 AND diagnosis = "RA" AND sex = "F"
SELECT count(*) FROM patient WHERE sex = 'M' AND first date >= 1995 AND first date <= 1997 AND diagnosis = "Behcet disease" EXCEPT SELECT id FROM examination WHERE admission >= 1995 AND admission <= 1997
SELECT count(*) FROM patient WHERE sex = 'F' INTERSECT SELECT count(*) FROM laboratory WHERE wbc < 3.5
SELECT max(T2.admission) - min(T1.admission) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 821298 AND T2.diagnosis = "Eval"
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 57266 AND UA <= 10.0
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND GLU > 0
SELECT T1.sex , T1.birthday , T2.date FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = 1994 AND T2.got >= 0 AND T2.got <= 499
SELECT id FROM patient WHERE sex = 'M' INTERSECT SELECT id FROM laboratory WHERE gpt > 100 AND gpt = "ALT glutamic pylvic transaminase"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthdate > "normal" ORDER BY T2.Birthdate
SELECT avg(LDH) FROM laboratory WHERE LDH >= 0 AND LDH <= 100
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH BETWEEN 100 AND 300 AND T2.ldh > 100
SELECT T1.admission , T1.admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alp >= 0 AND T2.alp <= 1500
SELECT id FROM patient WHERE birthday = '1982-04-01' INTERSECT SELECT id FROM laboratory WHERE ALP < 150
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE TP < (SELECT min(tp) FROM laboratory)
SELECT id , T1.TP - 109.98 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F"
SELECT * FROM patient WHERE sex = 'M' AND ALP NOT IN (10, 11) ORDER BY birthday DESC
SELECT T1.sex , T1.birthday , T2.abnormal FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1982" AND T2.abnormal = 1
SELECT count(*) FROM patient WHERE sex = 'F' INTERSECT SELECT count(*) FROM laboratory WHERE ua > (SELECT min(ua) FROM laboratory)
SELECT avg(UA) FROM LABORATORY AS T1 JOIN EXAMINATION AS T2 ON T1.ID = T2.ID WHERE T1.UA = "Normal"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.un >= 0.01 AND T2.un < 0.02
SELECT DISTINCT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE diagnosis = 'RA' AND T3.un = 'normal'
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM laboratory WHERE creatinine > 0;
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine NOT IN (SELECT creatinine FROM examination WHERE 24hcreatinine >= 140) INTERSECT SELECT count(*) FROM patient WHERE sex = 'F' AND creatinine NOT IN (SELECT creatinine FROM examination WHERE 24hcreatinine >= 140)
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T-BIL DESC LIMIT 1
SELECT count(*) , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY sex HAVING T2.T-BIL < 150000
SELECT id , T-CHO FROM laboratory ORDER BY T-CHO DESC LIMIT 1
SELECT avg(T1.Birthday) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.sex = "M" AND T3.Diagnosis = "High Cholesterol"
SELECT DISTINCT T1.ID , T2.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.TG > 100
SELECT count(*) FROM patient WHERE birthday > 50 AND TG > (normal range)
SELECT DISTINCT id FROM laboratory WHERE CPK >= 0 AND CPK <= 100
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = 'M' AND creatinine phosphokinase > (SELECT min(cre) FROM laboratory)
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU != "Normal" AND T2.T-CHO != "Normal"
SELECT id , GLU FROM laboratory WHERE first date = 1991
SELECT DISTINCT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.wbc != 10000 GROUP BY T1.id ORDER BY T1.birthday
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.rbc < (SELECT max(rbc) FROM examination)
SELECT DISTINCT T1.admission , T1.sex , T1.birthday , T2.rbc , T2.abnormal FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T1.birthday >= "1950-04-15" AND T2.rbc > 4.5
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 60
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = "SLE" AND HGB = "normal")
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id GROUP BY T1.id HAVING count(*) >= 2 AND T3.HCT > 0.5
SELECT avg(HCT) FROM examination WHERE EXAMINATION_DATE LIKE "1991%" AND HCT < 450
SELECT count(*) , count(*) FROM laboratory WHERE PLT < 100000 DIFFERENT FROM laboratory WHERE PLT > 100000
SELECT DISTINCT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = 1984 AND T1.birthday < 50 AND T3.plt = "normal"
SELECT count(*) , sex , count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 AND T2.PT = 'positive' GROUP BY sex
SELECT first_date FROM patient WHERE admission > 1992 AND PT = "normal"
SELECT count(*) FROM examination WHERE examination date > '1997/1/1' AND Diagnosis = 'inactivated partial prothrom bin time'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination WHERE PTT = "activated partial prothrombin") AND diagnosis != "thrombosis"
SELECT count(*) FROM patient WHERE sex = 'M' AND wbc = 'normal' AND fg != 'normal'
SELECT count(*) FROM patient WHERE birthday > '1980/1/1' AND diagnosis = 'abnormal fibrinogen'
SELECT DISTINCT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.UA > "normal"
{"sql": "SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = \"SLE\" AND T2.id IN (SELECT T1.id FROM examination AS T
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.IGG > 'Normal'
SELECT count(*) FROM examination WHERE aCL IgG = "Normal" AND Symptoms = "Yes"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.IgA = (SELECT max(IgA) FROM examination WHERE Diagnosis = "Normal")
SELECT count(*) FROM patient WHERE birthday > '1990/1/1' AND diagnosis = 'Normal IgA'
SELECT T1.Diagnosis , COUNT(*) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.IGM = "Abnormal" GROUP BY T1.Diagnosis ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM laboratory WHERE CRP = "abnormal")
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM laboratory WHERE creatinine != 0 AND creatinine > 70)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.diagnosis = "Rho Thrombocytopenia" AND T2.PT > 40
SELECT T1.Disease FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday > "1985-1-1" AND T1.Diagnosis = "Rhuematoid Factor"
SELECT id FROM patient WHERE birthday > 60 AND RF = 'Normal'
SELECT count(*) FROM patient WHERE diagnosis = "Normal RF" EXCEPT SELECT count(*) FROM patient WHERE diagnosis = "Thrombosis"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ANA Pattern = "P" AND C3 = 3
SELECT id FROM patient WHERE HCT != "Normal" ORDER BY ID DESC LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'blood clots in veins' AND T2.C4 = 4
SELECT count(*) FROM patient WHERE admission = 'yes' AND diagnosis = 'Normal RNP'
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.RNP = "abnormal"
SELECT count(*) FROM patient WHERE diagnosis != "Thrombosis" AND SM != "normal";
SELECT id FROM patient WHERE sex = 'M' AND diagnosis = 'Anti-Sm' ORDER BY birthdate LIMIT 3
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination date > '1997/1/1' AND T1.diagnosis = 'Normal Anti-scl70'
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'normal anti-scl70' EXCEPT SELECT count(*) FROM examination WHERE symptoms = 'yes'
SELECT count(*) FROM patient WHERE birthday < 2000 AND diagnosis = "Normal Anti-SSA"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.SSA = 'Abnormal' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T2.diagnosis = "Normal Anti-SSB"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms != "No symptoms" AND T2.sex = "Male" AND T2.birthday = "1999-05-24"
SELECT count(*) FROM patient WHERE sex = 'M' AND CENTROMEA = "Normal" AND SSB = "Normal"
SELECT DISTINCT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.DNA != "0"
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination) AND DNA = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal IGG"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T2.glutamic oxaloacetic transaminase > 0
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM laboratory WHERE GLU <= 100 AND GLU >= 90
SELECT min(T1.Birthdate) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE GLU != "Normal"
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU >= 0 AND T2.GLU <= 100 ORDER BY T2.GLU DESC LIMIT 3
SELECT count(*) FROM patient WHERE sex = 'M' AND ID IN (SELECT ID FROM laboratory WHERE GLU = "normal")
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "F" AND T2.birthday = (SELECT max(birthdate) FROM patient WHERE diagnosis = "Normal") AND T1.ldhh < 150
SELECT date FROM laboratory WHERE LDH > 100 UNION SELECT first_date FROM patient WHERE diagnosis = 'Abnormal Lactate Dehydrogenase'
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE ALP = "abnormal") AND admission != "none"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'normal' AND T1.sex = 'female'
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.totalprotein < 100
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE diagnosis = "SJS" AND T2.U-PRO = "normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal" ORDER BY T3.alf FROM laboratory AS T3 JOIN patient AS T4 ON T3.id = T4.id ORDER BY T4.alf DESC LIMIT 1
SELECT count(*) FROM patient WHERE sex = 'M' INTERSECT SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT DISTINCT T1.T2 FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.alp = "normal" INTERSECT SELECT T1.T2 FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.tbil = "normal")
SELECT T1.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "F" AND T1.U-PRO <= 30
SELECT max(IgG) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T1.sex = "Male" AND T2.diagnosis = "Normal" AND T2.kct = "Normal"
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.creatinine = "normal" INTERSECT SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.anti-cardiolipin = (SELECT max(anti-cardiolipin) FROM laboratory)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.T-ANA = 'peripheral' AND T2.T-BIL > 10.0
SELECT T1.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "F" AND T2.birthday = "1985-04-28" AND T1.T-BIL < 20000 AND T1.T-BIL > 15000
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-CHO > 140 AND T2.PT < 40
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ANA_PATTERN = "P" AND T2.birthday = (SELECT max(birthday) FROM patient WHERE T1.id = (SELECT min(id) FROM examination WHERE T1.ANA_PATTERN = "P") )
SELECT count(*) FROM patient WHERE diagnosis = "Normal" INTERSECT SELECT count(*) FROM examination WHERE symptoms != "No symptoms"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.tg <= 150 AND T2.sex = "M" ORDER BY T1.tg DESC LIMIT 1
SELECT id FROM patient EXCEPT SELECT id FROM examination WHERE diagnosis = 'Thrombosis' INTERSECT SELECT id FROM laboratory WHERE CPK = 'Abnormal'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CPK > 0 AND T2.CRE < 150 AND T2.TBIL < 100 AND T2.T-CHO < 200 AND T2.PT > 0 AND T2.APTT > 0
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'blood glucose is abnormal' ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = "Normal Blood Glucose" EXCEPT SELECT count(*) FROM patient WHERE diagnosis = "Thrombosis"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE WBC = "normal"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND WBC = "Normal"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 1500 AND T1.sex = "M" AND T1.admission = "out clinic"
SELECT count(*) FROM patient WHERE ID IN (SELECT T1.ID FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = 'Normal Platelet' INTERSECT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis != 'Normal Platelet' )
SELECT T1.PLT FROM LABORATORY AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = 'MCTD' AND T1.PLT < 150
SELECT avg(PT) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'M' AND T1.PT = "Normal"
SELECT count(*) FROM patient WHERE diagnosis = "Severe thrombosis" AND PT = "Normal"
SELECT T3.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id JOIN department AS T3 ON T2.department = T3.department WHERE T1.first_name = "Angela" AND T1.last_name = "Sanders"
SELECT count(*) FROM major WHERE department = 'College of Engineering'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Art and Design"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T2.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'vice president' AND T1.department = 'Student Club'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison" AND T3.event_date = "2019-04-19"
{"sql": "SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event HAVING count(*) > 10 INTERSECT SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.link_to_member GROUP BY T2.link_to_event HAVING count(*) > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.link_to_member IN (SELECT link_to_event FROM budget WHERE category = 'fundraising')
SELECT avg(T1.attendance) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "2020%"
SELECT T1.major_name FROM major AS T1 JOIN attendance AS T2 ON T1.major_id = T2.link_to_major JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.type = 'support' AND T2.link_to_event IN (SELECT link_to_event FROM event WHERE TYPE = 'club' )
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Law" INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Constitutional Studies"
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt";
SELECT amount FROM budget WHERE category = 'Vice President'
SELECT T1.spent FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_name = 'Student Club' AND T3.event_date LIKE "9/%"
SELECT T2.city , T2.state FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President of the Student Club'
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'IL'
SELECT sum(T1.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Student Club' AND T2.expense_date LIKE "9/%"
SELECT department FROM major WHERE major_name = 'Pierce' INTERSECT SELECT department FROM major WHERE major_name = 'Guidi'
SELECT sum(amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT count(*) FROM expense WHERE approved = 'Yes' AND expense_date LIKE "10/8/2019%"
SELECT avg(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "%9月%" AND T2.event_date LIKE "%10月%" AND T1.category = "expense" AND T1.department = "Majors" AND T1.expense_description = "Elijah Allen"
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.status = 'Completed' AND T1.category = 'Student Club' AND T2.event_date LIKE "2019%" INTERSECT SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.status = 'Completed' AND T1.category = 'Student Club' AND T2.event_date LIKE "2020%"
SELECT T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = "Spring Budget Review";
SELECT cost FROM expense WHERE expense_date = "2019/9/4" AND event_name = "Posters"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY amount DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "O'Gallagher";
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "November Meeting" AND T1.spent > T1.amount
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT status FROM event WHERE event_date = "2019/8/20" AND event_name = "Post Cards, Posters"
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Brent" AND T1.last_name = "Thomason"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "medium";
SELECT TYPE FROM zip_code WHERE zip = "(Christof) Nielson"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = "Vice President"
SELECT T2.state FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Sacha" AND T1.last_name = "Harrison"
SELECT department FROM major WHERE department = (SELECT T1.department FROM major AS T1 JOIN club AS T2 ON T1.department = T2.department WHERE T1.major_id = (SELECT major_id FROM major WHERE major_name = 'President')
SELECT T1.event_date FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Connor" AND T3.last_name = "Hilton";
SELECT first_name , last_name FROM member WHERE member_id IN (SELECT link_to_member FROM expense ORDER BY approved ASC LIMIT 1)
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category > "October Meeting"
SELECT percentage FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "%November%" AND T2.event_name = "Speaker" AND T1.category = "Budget"
SELECT sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T3.event_id = T2.link_to_budget WHERE T3.type = "pizza"
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT T2.city FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Amy" AND T1.last_name = "Firth"
SELECT spent FROM budget ORDER BY remaining LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T3.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN event AS T3 ON T2.member_id = T3.member_id WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name LIKE '%vice president%'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason";
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.status = 'closed' ORDER BY T2.spent / T2.amount DESC LIMIT 1
SELECT count(*) FROM member WHERE POSITION = 'president'
SELECT max(spent) FROM budget WHERE TYPE = 'event'
SELECT count(*) FROM event WHERE event_date LIKE "%2020%";
SELECT sum(t1.spent) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id JOIN major AS t3 ON t1.link_to_event = t3.event_id WHERE t3.major_name = 'Food'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.major_id WHERE T2.major_name = 'interior design' INTERSECT SELECT T3.first_name , T3.last_name FROM attendance AS T3 JOIN event AS T4 ON T3.link_to_event = T4.event_id WHERE T4.event_name = 'Community Theater'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.college = "Georgetown" AND T2.zip = (SELECT T3.zip FROM zip_code AS T3 JOIN major AS T4 ON T3.zip_code = T4.zip WHERE T4.college = "Georgetown" AND T3.state = "SC")
SELECT sum(amount) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour";
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT sum(t2.cost) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id JOIN event AS t3 ON t1.link_to_event = t3.event_id WHERE t3.event_name = 'Yearly Kickoff'
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Yearly Kickoff' AND T1.position = 'manager'
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id ORDER BY T1.amount DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent LIMIT 1
SELECT sum(cost) , event_name FROM expense GROUP BY event_name HAVING TYPE = 'Yearly Kickoff'
SELECT count(*) , department FROM major WHERE department = 'Finance' INTERSECT SELECT count(*) , department FROM major WHERE department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/19/2019%" ORDER BY amount DESC LIMIT 1
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'"}
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Physics Teaching"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.event_date LIKE '2019%'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN major AS T3 ON T2.link_to_major = T3.major_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi"
SELECT avg(spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_name = 'typical'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
{"sql": "SELECT T1.member_id FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer' AND T1.first_name = 'Maya' AND T1.last_name = 'Mclean'"}
SELECT count(*) , count(*) / (SELECT count(*) FROM event WHERE TYPE = 'Community Service' AND event_date = '2019' ) FROM event WHERE event_name LIKE '%Student Club%'
SELECT T2.cost FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_budget WHERE T1.event_name = "September Speaker"
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent > (SELECT max(spent) FROM budget) AND T1.status = 'closed'
SELECT T1.type , sum(T2.cost) FROM event AS T1 JOIN expense AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'October Meeting'
SELECT category FROM budget WHERE link_to_event = (SELECT event_id FROM event WHERE event_name = 'April Speaker') ORDER BY amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(t1.spent) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id WHERE t2.expense_description = 'Parking'
SELECT sum(t2.cost) FROM expense AS t1 JOIN budget AS t2 ON t1.link_to_budget = t2.budget_id WHERE t1.expense_date = "8/20/2019"
SELECT T2.first_name , T2.last_name , sum(T1.cost) FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.expense_id = "rec4BLdZHS2Blfp4v" GROUP BY T1.link_to_member
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'X-Large'
SELECT zip_code FROM member WHERE spend < 50
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Phillip" AND T2.last_name = "Cullen";
SELECT position FROM member WHERE link_to_major = 'Business'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.department = "Business" AND T2.t_shirt_size = "Medium";
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT category FROM event WHERE event_date LIKE "2020-03-24T12:00:00"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Business" AND T2.position = "Member"
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'College of Agriculture and Applied Sciences' AND department = 'School of Applied Sciences, Technology and Education'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T3.city , T3.state FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code WHERE T1.department = 'Electrical and Computer Engineering'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Vice President" AND T3.last_name = "of the Student Club" AND T1.location = "900 E. Washington St."
SELECT T2.last_name , T2.position FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T1.event_date = "09/10/2019" AND T1.type = "pizza";
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer Event'"}
SELECT count(*) , amount FROM budget AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = 'medium' AND T1.amount = 50 GROUP BY T1.link_to_member HAVING count(*) > 1
SELECT T2.country FROM zip_code AS T1 JOIN country AS T2 ON T1.zip_code = T2.zip_code WHERE T1.type = "Post Office Box"
SELECT zip_code FROM zip_code WHERE state = "Puerto Rico" AND city = "San Juan"
SELECT event_name FROM event WHERE TYPE = "game" AND event_date BETWEEN "03/15/2019" AND "03/20/2020"
SELECT T1.link_to_event FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'employee' AND T2.amount > 50
SELECT T1.link_to_event , T1.link_to_member FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date BETWEEN '01/10/2019' AND '11/19/2019' AND T1.link_to_member NOT NULL
SELECT T2.college FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.first_name = "Katy" AND T2.major_name = "rec1N0upiVLy5esTO"
SELECT phone FROM member WHERE link_to_major = "major_id" AND major_name = "Business" AND department = "College of Agriculture and Applied Sciences"
SELECT email FROM budget WHERE spent > 20 AND DATE (spent) BETWEEN "09/10/2019" AND "11/19/2019"
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "College of Education & Human Services"
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.spent > T2.spent
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-02" AND "2020-03-01"
SELECT cost FROM expense WHERE spent > (SELECT avg(spent) FROM expense)
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) / (SELECT count(*) FROM zip_code) FROM zip_code WHERE TYPE = 'PO Box'
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT max(spent) FROM budget)
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Pizza' AND T2.spent BETWEEN 50 AND 200
SELECT T2.first_name , T2.last_name , T2.link_to_major FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.cost > 100
SELECT T2.city , T2.state FROM income AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_id HAVING sum(T1.amount) > 40000
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id HAVING count(*) > 1 ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM budget AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T2.position != 'member'
SELECT event_name FROM event WHERE event_id NOT IN (SELECT event_id FROM expense GROUP BY event_id HAVING avg(cost) - (SELECT min(cost) FROM expense) < 0)
SELECT sum(cost) / sum(spent) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.category = 'major' AND T1.type = 'expense'
SELECT category FROM budget WHERE category = 'water' AND spent = (SELECT sum(spent) FROM budget WHERE category = 'water') AND category = 'chips' AND spent = (SELECT sum(spent) FROM budget WHERE category = 'chips') AND category = 'cookies' ORDER BY sum(spent) DESC LIMIT 1;
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id ORDER BY T1.spent DESC LIMIT 5
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member HAVING avg(cost) > (SELECT avg(cost) FROM expense)
SELECT sum(T1.position) - sum(T2.position) FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'NJ' INTERSECT SELECT sum(T1.position) - sum(T2.position) FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = 'Vermont'
SELECT T1.major_name , T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT T2.first_name , T2.last_name , T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T1.link_to_budget = T3.budget_id WHERE T3.category = 'Water' AND T3.category = 'Vegetable tray' AND T3.category = 'Supplies'
SELECT last_name , phone FROM member WHERE link_to_major = 'elementary education'
SELECT category , amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'food'
SELECT T1.first_name , T1.last_name , T2.amount FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.event_status = 'Submitted' AND T2.expense_date = '9/9/2019'
SELECT T2.category FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Posters'
SELECT T2.first_name , T2.last_name , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Secretary'
SELECT sum(T1.spent) , T2.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_name HAVING sum(T1.spent) > 0
SELECT T3.city FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT T2.first_name , T2.last_name , T2.position FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.city = "Lincoln" AND T1.state = "NC" AND T1.zip_code = "28092"
SELECT count(*) FROM gasstations WHERE country = "CZE" AND segment = "Premium"
SELECT count(*) , currency FROM customers WHERE currency = "EUR" GROUP BY currency = "CZK"
SELECT T1.ConsumerID , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2012/%" ORDER BY T1.Consumption LIMIT 1
SELECT avg(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "SME" AND T2.date = 2013
SELECT t2.customerid , t1.consumption FROM yearmonth AS t1 JOIN customers AS t2 ON t1.customerid = t2.customerid WHERE t2.currency = "CZK" AND t1.date = 2011 ORDER BY t1.consumption DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.consumption < 30000 AND T2.segment = "KAM"
SELECT T2.Consumption - T1.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" INTERSECT SELECT T2.Consumption - T1.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR"
SELECT T2.Date , T1.Amount , T1.Price , T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR" GROUP BY T2.Date ORDER BY SUM(T1.Amount) DESC LIMIT 1
SELECT segment FROM customers ORDER BY consumption LIMIT 1
SELECT T2.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" GROUP BY T2.Date ORDER BY sum(T1.Consumption) DESC LIMIT 1
SELECT T2.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "SME" AND T1.Date LIKE "2013%" ORDER BY T1.Consumption DESC LIMIT 1
SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "SME") INTERSECT SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "LAM") INTERSECT SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "KAM") INTERSECT SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "SME") INTERSECT SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "LAM") INTERSECT SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "KAM")
SELECT T1.segment , max(T2.consumption - T1.consumption) , min(T2.consumption - T1.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "EUR" AND T1.segment = "SME" AND T2.date = "2012-01-01" INTERSECT SELECT T1.segment , max(T2.consumption - T1.consumption) , min(T2.consumption - T1.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "EUR" AND T1.segment = "LAM" AND T2.date = "2012-01-01" INTERSECT SELECT T1.segment , max(T2.consumption - T1.consumption) , min(T2.consumption - T1.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "EUR" AND T1.segment = "KAM" AND T2.date = "2012-01-01"
SELECT sum(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "Customer" AND T2.Date LIKE "8/%" AND T2.Date LIKE "11/%" AND T2.Year = 2013
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" - COUNT(*) FROM gasstations WHERE country = "Slovakia"
SELECT consumption FROM yearmonth WHERE customerid = 7 AND date = '2013-04' - (SELECT consumption FROM yearmonth WHERE customerid = 5 AND date = '2013-04')
SELECT count(*) FROM customers WHERE currency = "CZK" AND amount > amount FROM customers WHERE currency = "EUR"
SELECT T2.CustomerID , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "EUR" ORDER BY T1.Consumption DESC LIMIT 1 AND T1.Date = "2013-10"
SELECT T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "KAM" ORDER BY T2.Consumption DESC LIMIT 1
SELECT sum(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = "KAM" AND T2.Date = "2013-05"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.Currency = "LAM" AND T1.Consumption > 46.73
SELECT country , count(*) FROM gasstations GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT sum(amount) / sum(amount + 10000) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'EUR'
SELECT count(*) FROM yearmonth WHERE date LIKE "%2012/%-" AND consumption > 528.3
SELECT count(*) , country , sum(price) FROM transactions_1k WHERE country = "Slovakian" GROUP BY country HAVING sum(price) = (SELECT sum(price) FROM transactions_1k WHERE country = "Slovakian") / count(*)
SELECT customerid FROM yearmonth WHERE date = "2013-09" GROUP BY customerid ORDER BY sum(consumption) DESC LIMIT 1
SELECT T2.segment FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date LIKE "2013-09%" GROUP BY T2.segment ORDER BY sum(T1.consumption) LIMIT 1
SELECT T1.ConsumerID , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2012-06" ORDER BY T1.Consumption LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE DATE = "2012"
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T2.Description FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date = "2013-09"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = "2013-06-01"
SELECT T2.ChainID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Price = 0.0001 AND T2.Country = "Euro"
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Amount > 0 AND T1.Currency = "Euro"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012/01/%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro" AND T2.consumption > 1000
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID JOIN gasstations AS T3 ON T1.GasStationID = T3.GasStationID WHERE T3.Country = "Czech Republic"
SELECT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Date > "2012/1/1"
SELECT avg(T2.Price) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = "Czech Republic"
SELECT avg(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR"
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/25" GROUP BY T1.Currency ORDER BY sum(T1.Amount) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = "2012/8/25" AND T2.Price != "null" GROUP BY T1.Country ORDER BY count(*) ASC LIMIT 1
SELECT T2.currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012/8/24" AND T1.time = "16:25:00"
SELECT segment FROM customers WHERE customerid = (SELECT customerid FROM yearmonth WHERE date = '2012/8/23 21:20:00')
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/26" AND TIME LIKE "Morning%" AND currency = "CZK"
SELECT Segment FROM customers ORDER BY CustomerID ASC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date = "2012/8/24 12:42:00"
SELECT ProductID FROM transactions_1k WHERE Date = "2012/8/23" AND TIME = "21:20:00"
SELECT T2.Date , T1.Amount , T2.Date FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T1.Amount = 124.05 AND T2.month = "Jan" AND T2.year = 2012
SELECT count(*) FROM transactions_1k WHERE Date LIKE "2012/8/26" AND TIME LIKE "8:%-9:%" AND country = "CZE"
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013/%" AND T1.Consumption = 214582.17
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CardID = 667467
SELECT T1.Country FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/8/24" AND T2.Consumption = 548.4
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date = "2012/8/25" AND T2.currency = "EUR"
SELECT consumption - consumption_2012 FROM yearmonth WHERE date = "2012/8/25" AND customerid = (SELECT customerid FROM yearmonth WHERE consumption = 634.8)
SELECT T2.GasStationID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T2.GasStationID ORDER BY sum(T1.Amount)*T1.Price DESC LIMIT 1
SELECT sum(t2.segment) / sum(t1.segment) , t1.segment FROM customers AS t1 JOIN products AS t2 ON t1.productid = t2.productid WHERE t1.country = "SVK" AND t1.segment = "premium" GROUP BY t1.segment
SELECT sum(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.CustomerID = 38508 AND T2.Date = "2012-01"
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID ORDER BY T1.Amount , T1.Date DESC LIMIT 5
SELECT T1.Currency , avg(T2.Price) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T2.CustomerID ORDER BY sum(T2.Amount) DESC LIMIT 1
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Amount = 1 AND T2.ProductID = 2 GROUP BY T1.Country ORDER BY count(*) DESC LIMIT 1
SELECT T2.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T1.ProductID = 5 AND T1.Price > 29.00 AND T2.Date = "2012-08"
