SELECT max(Percent) Eligible Free FROM frpm WHERE County = "Alameda County" AND School Type = "K-12"
SELECT min(percent)eligiblefree FROM frpm WHERE enrollment (Ages 5-17) = 10000 AND school TYPE = "Continuation"
SELECT zip FROM frpm WHERE county = "Fresno County Office of Education" AND Charter School (Y/N) = 'Y'
SELECT T1.MailStreet FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.FRPM Count (K-12) DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND fundingtype = 'Charter'
SELECT count(*) FROM schools WHERE virtual = 'Y' AND avgscrmath > 400
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.NumTstTakr > 500 AND T1.magnet = 'Y'
SELECT t1.phone FROM schools AS t1 JOIN satscores AS t2 ON t1.cdscode = t2.cds WHERE t2.numge1500 > 1000 GROUP BY t1.phone ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.educationaloptiontype = "K-12" ORDER BY T1.frpmcount DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T1.cdscode = T3.cds WHERE T3.AvgScrMath > 560 AND T2.charterschool (Y/N) = 'Y'
SELECT T1.FRPMCount (Ages 5-17) FROM frpm AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T2.cds ORDER BY avgscrread LIMIT 1
SELECT schoolcode FROM frpm GROUP BY schoolcode HAVING sum(enrollment) > 500
SELECT max(Percent) Eligible FRPM (Ages 5-17) FROM frpm WHERE Percent (%) Eligible FRPM (Ages 5-17) > 0.3
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY T2.AvgScrRead DESC LIMIT 3
SELECT T1.NCESSchool FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.Enrollment (Ages 5-17) DESC LIMIT 5;
SELECT dname FROM frpm WHERE district TYPE = 'Active' GROUP BY dname ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "Alameda" AND T2.FRPM Count (K-12) < 100
SELECT T1.charternum FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrWrite > 499 ORDER BY T2.AvgScrWrite
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.county = "Fresno" AND T2.FundingType = "Directly funded" AND T2.FRPM Count (K-12) <= 250
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrMath = (SELECT max(AvgScrMath) FROM satscores)
SELECT count(*) FROM frpm WHERE Low Grade = 9 AND High Grade = 12 AND County = "Amador"
SELECT count(*) FROM frpm WHERE free meal count (K-12) > 500 AND free meal count (K-12) < 700 AND educational option type = "K-12" AND county = "Los Angeles"
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.county = "Contra Costa" ORDER BY NumTstTakr DESC LIMIT 1
SELECT T1.school , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.enrollment (K-12) - T2.enrollment (Ages 5-17) > 30 INTERSECT SELECT T1.school , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.enrollment (K-12) - T2.enrollment (Ages 5-17) < -30
SELECT T1.school_name FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrRead >= 1500
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE avgscrmath > 400 GROUP BY T1.school ORDER BY avgscrmath > 400
SELECT T1.school , T1.street , T1.streetabr , T1.city , T1.zip , T1.mailstreet , T1.mailstrabr , T1.mailcity FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = "Monterey" AND T2.freemealcount (Ages 5-17) > 800
SELECT T1.school , T2.AvgScrWrite , T1.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.opendate > "1991" OR T1.closeddate < "2000"
SELECT T1.school , T1 DOCTYPE FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.edopsname = 'K-12' DIFFERENCES > (SELECT avg(DIFFERENCES) FROM schools AS T3 JOIN frpm AS T4 ON T3.cdscode = T4.cdscode WHERE T3.edopsname = '15-17')
SELECT opendate FROM frpm ORDER BY enroll12 DESC LIMIT 12
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY enroll12 LIMIT 5
SELECT percent (%) Eligible Free (K-12) FROM frpm ORDER BY enroll12 DESC LIMIT 2
SELECT T1.SchoolName , T1.Percent (%) Eligible Free (K-12) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.StatusType = "Magnet" AND T1.Eligible Free (K-12) = (SELECT max(Eligible Free (K-12)) FROM frpm WHERE CDSCode = "66") ORDER BY T1.Percent (%) Eligible Free (K-12) DESC LIMIT 5
SELECT T1.website , T2.schoolname FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000 AND T2.age <= 17
SELECT Percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE school_name = "Kacey Gibson" AND enroll12 = "Ages 5-17"
SELECT T1.AdmEmail1 FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (Ages 5-17) = (SELECT min(Enrollment (Ages 5-17)) FROM frpm WHERE Academic Year = 2014-15 AND Grade = 1 THROUGH 12) AND T1.Charter = 'Y'
SELECT t1.admFName1 , t1.admLName1 FROM schools AS t1 JOIN satscores AS t2 ON t1.cdscode = t2.cdscode WHERE enroll12 >= 1500 GROUP BY t1.admFName1 ORDER BY count(*) DESC LIMIT 1
SELECT street , city , zip , state FROM schools ORDER BY excellence_rate LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Los Angeles" AND T2.enroll12 BETWEEN 2000 AND 3000
SELECT avg(NumTstTakr) FROM schools WHERE opendate BETWEEN "1980-01-01" AND "1980-12-31" AND county = "Fresno"
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.county = "Fresno" AND T2.rtype = "Read" AND T2.avgscrread = (SELECT avg(avgscrread) FROM satscores WHERE rtype = "Read" AND county = "Fresno")
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY avgscrread LIMIT 5
SELECT T1.EdOpsName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T1.CDSCode = T3.cds WHERE T3.AvgScrMath = (SELECT max(AvgScrMath) FROM satscores)
SELECT avg(avgScrMath) , T1.county FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode GROUP BY T1.county ORDER BY avg(avgScrMath) LIMIT 1
SELECT avg(T1.AvgScrWrite) , T2.city FROM satscores AS T1 JOIN schools AS T2 ON T1.cds = T2.cds WHERE T1.NumGE1500 >= 100 GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode WHERE T1.school = 'Ricci Ulrich' GROUP BY T1.school
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment (Ages 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.State ORDER BY sum(enroll12) DESC LIMIT 1
SELECT avg(T1.OpenDate) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AcademicYear = 1980 AND T2.County = "Alameda County" AND T2.District = "Elementary School District"
SELECT (frpm.county = "Orange County" AND frpm.districttype = "Unified School District") / (frpm.county = "Orange County" AND frpm.districttype = "Elementary School District") , frpm.county = "Orange County" AND frpm.districttype = "Unified School District")
SELECT T1.County , T2.ClosedDate FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1
SELECT t1.school FROM schools AS t1 JOIN satscores AS t2 ON t1.cdscode = t2.cds WHERE t2.AvgScrMath = (SELECT avg(AvgScrMath) FROM satscores ORDER BY avg(AvgScrMath) DESC LIMIT 7)
SELECT T1.street , T2.school FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cdscode GROUP BY T2.school ORDER BY avgscrread LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.NumGE1500 >= 1500 AND T1.mailcity = "Lakeport"
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip , school FROM schools WHERE admfname1 = 'Avetik Atoian'
SELECT count(*) / count(*) FROM schools WHERE mailstate = 'CA' AND county = 'Colusa' INTERSECT SELECT count(*) / count(*) FROM schools WHERE mailstate = 'CA' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = 'San Joaquin' AND statustype = 'Active'
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds ORDER BY avgscrwrite LIMIT 333
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE AdmFName2 = "Dante Alvarez"
SELECT website FROM schools WHERE virtual = 'Y' AND county = "San Joaquin" AND charter = 'Y' AND schooltype = 'Partially Virtual'
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.City = "Hickman" AND T2.District = "Elementary School District" AND T1.Charter = 'Y'
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND percent (%) Eligible Free (K-12) < 0.18
SELECT T1.school , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charterschoolnumber = "00D2" AND T2.charterschooltype = "Y" AND T1.charternum = "00D2"
SELECT count(*) FROM schools WHERE mailcity = "Hickman" AND CharterNum = "00D4"
SELECT percent (%) Eligible Free (K-12) / 100 FROM frpm WHERE County = "Santa Clara County" AND FundingType = "Charter School (Y/N)"
SELECT count(*) FROM frpm WHERE county = "Stanislaus" AND opendate BETWEEN 1/1/2000 AND 12/31/2005
SELECT sum(T1.closeddate - T2.closeddate) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.districtname = "Community College District" AND T2.academicyear = 1989 AND T1.city = "San Francisco"
SELECT county FROM schools WHERE statustype = 'Closed' AND charter = 'Y' AND edopscode = 'CEA' AND academicyear >= 1980 ORDER BY county DESC LIMIT 1
SELECT T1.NCESDist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode WHERE T3.State = "State" AND T3.StatusType = "Part of" AND T2.Educational Option Type = "State Special Schools"
SELECT count(*) , count(*) FROM frpm WHERE County = "Alpine"
SELECT district FROM frpm WHERE district TYPE = "Magnet" AND city = "Fresno" EXCEPT SELECT district FROM frpm WHERE district TYPE = "Magnet" AND city = "Fresno"
SELECT count(*) FROM frpm WHERE Academic Year = 2014-2015 AND School Code = "State Special School" AND Enrollment (Ages 5-17) = 100%
SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.street = 'PO Box 1040' AND T2.school = 'Youth Authority School' AND T2.statustype = 'Y'
SELECT min(lowgrade) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.ncesdist = 0613360
SELECT T1.EdOpsName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.FRPM Count (K-12) = 2 AND T2.County = "37"
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.educationaloptiontype = "K-12" AND T2.nslpprovisionstatus = "Y" AND T2.lowgrade = "9" AND T2.highgrade = "12" AND T2.county = "Merced"
SELECT T1.school , T1.Percent (%) Eligible FRPM (Ages 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.county = "Los Angeles" AND T1.gserved = "Kindergarten" AND T1.gserved = "9th Grade"
SELECT gsoffered FROM schools WHERE city = "Adelanto" GROUP BY gsoffered ORDER BY count(*) DESC LIMIT 1
SELECT county FROM frpm WHERE state = "San Diego" OR state = "Santa Barbara" AND EdOpsName != "Physical" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT T1.school , T1.Latitude FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "California" ORDER BY T1.Latitude LIMIT 1
SELECT GSoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , mailcity FROM schools WHERE magnet = 'Magnet' AND GSoffered = "K-12" AND GSserved = "8" GROUP BY mailcity
SELECT AdmFName1 , AdmLName1 , NCESDist FROM schools GROUP BY AdmFName1 ORDER BY count(*) DESC LIMIT 2
SELECT T1.DistrictCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.AdmFName1 = "Alusine"
SELECT T1.AdmLName1 , T1.County , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.CharterNum = 40
SELECT admEmail1 FROM schools WHERE opendate BETWEEN '01/01/2009' AND '12/31/2010' AND county = 'San Bernardino' AND district = 'City of San Bernardino City Unified' AND schooltype = 'Public Intermediate/Middle Schools' AND statustype = 'Y'
SELECT t1.school FROM schools AS t1 JOIN satscores AS t2 ON t1.cdscode = t2.cds WHERE numge1500 >= 100 ORDER BY numge1500 DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'issuance' AND T1.district_id = 'East Bohemia'
SELECT count(DISTINCT T2.account_id) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'Prague'
SELECT avg(unemployment) FROM data AS T1 JOIN data AS T2 ON T1.date = T2.date WHERE T1.year = 1995 INTERSECT SELECT avg(unemployment) FROM data AS T1 JOIN data AS T2 ON T1.date = T2.date WHERE T1.year = 1996
SELECT count(*) FROM district WHERE avg_salary BETWEEN 6000 AND 10000 AND gender = 'F'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'North Bohemia' AND T1.gender = 'M' GROUP BY T1.district_id HAVING avg(T1.age) > 8000
SELECT account_id FROM client WHERE gender = 'Female' ORDER BY birth_date LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'Female' ORDER BY avg_salary LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id ORDER BY T1.birth_date LIMIT 1 UNION SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id GROUP BY T2.account_id ORDER BY avg(T3.salary) LIMIT 1;
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'statement' AND T2.gender = 'Male' AND T3.frequency = 'weekly' AND T3.date = T2.birth_date
SELECT client_id FROM disp WHERE operation = 'Disponent' EXCEPT SELECT client_id FROM disp WHERE operation != 'Disponent'
SELECT T2.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1997/%" ORDER BY T1.amount LIMIT 1
SELECT T2.account_id , max(T1.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE "1993%" GROUP BY T2.account_id ORDER BY max(T1.amount) DESC LIMIT 1
SELECT count(*) FROM client WHERE gender = 'F' AND birth_date < '1950' AND district_id = 101663
SELECT account_id FROM trans WHERE date LIKE "1995%" ORDER BY date ASC LIMIT 1
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date < '1997' AND T2.amount > 3000
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.issued = '1994/03/03'
SELECT T1.date FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 840 AND T1.date LIKE "1998/%" AND T1.operation = "Transfer"; SELECT T2.date FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1998/%" AND T1.operation = "Transfer" AND T2.frequency = 1;
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1994/08/25";
SELECT max(amount) FROM trans WHERE date LIKE "1996/10/21%"
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id GROUP BY T1.client_id ORDER BY T3.date LIMIT 1
SELECT T1.amount FROM trans AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.status = 'approved' ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.district_id = 'Jesenik' AND T1.gender = 'female'
SELECT T1.disp_id FROM disp AS T1 JOIN trans AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 5100 AND T2.date LIKE "1998/09/02"
SELECT count(*) FROM account WHERE date LIKE "1996%" AND district_id = 137903
SELECT T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'Female' AND T1.birth_date = "1976/1/29"
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/3";
SELECT T2.account_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = (SELECT district_id FROM district WHERE A6 = 'Prague')
SELECT count(*) , gender FROM client WHERE district_id = (SELECT district_id FROM district WHERE A6 = 'south Bohemia') GROUP BY gender ORDER BY count(*) DESC LIMIT 1;
SELECT (T3.balance - T2.balance) / T2.balance FROM account AS T2 JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.date = '1993/03/22' JOIN account AS T4 ON T2.account_id = T4.account_id WHERE T3.date = '1998/12/27'
SELECT %status FROM loan WHERE payments = 'Fully Paid'
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'running'
SELECT T1.account_id , T2.A3 , T2.A13 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1993/%" AND T1.operation = "Transfer"
SELECT T1.account_id , T1.frequency FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.date BETWEEN 1995 AND 2000 AND T1.district_id = 'east Bohemia' GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id = 'Prachatice'
SELECT T2.A2 , T2.A3 FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.loan_id = "4990"
SELECT T1.account_id , T2.district_id , T3.region FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.district_id , avg(T3.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T1.account_id = T3.account_id WHERE T1.duration = 60 GROUP BY T2.district_id
{"sql": "SELECT T1.A3 , T1.A5 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'Running' JOIN client AS T3 ON T2.district_id = T3.district_id WHERE T3.district_id = T1.A3 AND T3.A5 = T1.A5 AND T1.A6 = T1.A7 AND T1.A8 = T1.A9 AND T1.A10 = T1.A11 AND T1.A12 = T1.A13 AND T1.A14 = T1.A15 AND T1.A16 = T1.A17 AND T1.A18 = T1.A19 AND T1.A20 = T1.A21 AND T1.A22 = T1.A23 AND T1.A24 = T1.A25 AND T1.A26 = T1.A27 AND T1.A28 = T1.A29 AND T1.A30 = T1.A31 AND T1.A32 = T1.A33 AND T1.A34 = T1.A35 AND T1.A36 = T1.A37 AND T1.A38 = T1.A39 AND T1.A40 = T1.A41 AND T1.A42 = T1.A43 AND T1.A44 = T1.A45 AND T1.A46 = T1.A47 AND T1.A48 = T1.A49 AND T1.A50 = T1.A51 AND T1.A52 = T1.A53 AND T1.A54 = T1.A55 AND T1.A56 = T1.A57 AND T1.A58 = T1.A59 AND T1.A60 = T1.A61 AND T1.A62 = T1.A63 AND T1.A64 = T1.A65 AND T1.A66 = T1.A67 AND T1.A68 = T1.A69 AND T1.A70 = T1.A71 AND T1.A72 = T1.A73 AND T1.A74 = T1.A75 AND T1.A76 = T1.A77 AND T1.A78 = T1.A79 AND T1.A80 = T1.A81 AND T1.A82 = T1.A83 AND T1.A84 = T1.A85 AND T1.A86 = T1.A87 AND T1.A88 = T1.A89 AND T1.A90 = T1.A91 AND T1.A92 = T1.A93 AND T1.A94 = T1.A95 AND T1.A96 = T1.A97 AND T1.A98 = T1.A99 AND T1.A100 = T1.A101 AND T1.A102
SELECT count(*) / (SELECT count(*) FROM account WHERE date = '1993') FROM account WHERE district_id = 'Decin'
SELECT account_id FROM account WHERE frequency = "monthly"
SELECT T2.A1 , T2.A10 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T2.A1 ORDER BY count(*) DESC LIMIT 9
SELECT T1.amount FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit Card' EXCEPT SELECT T1.amount FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Debit Card' AND T1.date LIKE "1996%" ORDER BY T1.amount DESC LIMIT 10;
SELECT count(*) FROM account WHERE district_id = 13566 AND district_id NOT IN (SELECT district_id FROM card WHERE TYPE = 'Credit')
SELECT T2.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id GROUP BY T2.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE status = 'approved' AND gender = 'M'
SELECT T2.A3 , T2.A13 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = 1996 GROUP BY T2.A3 , T2.A13 ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM account WHERE date LIKE "1996%" ORDER BY frequency DESC LIMIT 1;
SELECT count(*) FROM trans WHERE operation = 'Credit Card Withdrawal' AND balance < 0
SELECT count(*) FROM loan WHERE amount >= 250000 AND status = 'approved' AND date BETWEEN '1995-01-01' AND '1997-12-31' AND TYPE = 'monthly'
SELECT count(*) FROM account WHERE district_id = 1
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.gender = 'Male' AND T1.date = '1995' ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM card WHERE TYPE = "high-level" AND disp_id = "OWNER"
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A6 = "Pisek"
SELECT T2.A5 FROM trans AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.date = "1997-05-13" AND T1.amount > 10000
SELECT T1.account_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'household' AND T2.district_id = 'Pisek'
SELECT DISTINCT T1.account_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'gold'
SELECT avg(amount) FROM card WHERE TYPE = 'Credit Card' AND date LIKE "2021/%"
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'Credit' AND T2.amount < (SELECT avg(amount) FROM trans WHERE operation = 'Credit') AND T2.date LIKE "1998%"
SELECT T1.gender , T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN disp AS T3 ON T3.client_id = T1.client_id WHERE T3.type = 'Credit' INTERSECT SELECT T1.gender , T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id JOIN disp AS T3 ON T3.client_id = T1.client_id WHERE T3.type = 'Debit'
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T3.account_id = T2.account_id WHERE T1.gender = 'Female' AND T2.district_id = (SELECT district_id FROM district WHERE A2 = 'South Bohemia')
SELECT DISTINCT T2.account_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "Tabor" JOIN loan ON T2.account_id = T3.account_id
SELECT DISTINCT T2.type , avg(T1.birth_date) FROM district AS T1 JOIN disp AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.district_id = (SELECT district_id FROM account WHERE T3.status = 'Applied for loan') GROUP BY T2.type HAVING avg(T1.birth_date) > 8000 AND avg(T1.birth_date) <= 9000
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN bank AS T3 ON T2.bank = T3.bank WHERE T3.A2 = "North Bohemia" AND T3.A3 = "AB"
SELECT T2.A5 FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'withdraw'
SELECT avg(T1.crimes) FROM card AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.date >= '1997' AND T2.frequency > 4000
SELECT count(*) FROM card WHERE TYPE = 'classic'
SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'Hl.m. Praha') AND gender = 'M'
SELECT count(*) FROM card WHERE TYPE = 'Gold' AND issued < 1998
SELECT T1.name FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN loan AS T3 ON T2.account_id = T3.account_id ORDER BY T3.amount DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id = 532 AND date = "1995";
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT amount FROM trans WHERE TYPE = 'Cash' AND operation = 'Withdraw' AND client_id = 3356
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 200000
SELECT TYPE FROM card WHERE disp_id = (SELECT client_id FROM disp WHERE client_id = 13539)
SELECT T2.A3 FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status != 'finished_with_problems' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id FROM disp AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 32423
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account WHERE district_id = 123
SELECT DISTINCT client_id FROM card WHERE TYPE = 'JUNIOR' AND issued > 1996
SELECT count(*) / count(*) FROM client WHERE district_id IN (SELECT district_id FROM account GROUP BY district_id HAVING avg(balance) > 10000) AND gender = 'F'
SELECT sum(T2.amount) - sum(T1.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date BETWEEN 1996 AND 1997 AND T1.status = 'Accepted' AND T2.gender = 'Male'
SELECT count(*) FROM trans WHERE date > '1995' AND operation = 'credit'
SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'East Bohemia' AND T2.date = '1996' INTERSECT SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = 'North Bohemia' AND T2.date = '1996'
SELECT count(*) , T1.type FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T3.account_id BETWEEN 1 AND 10 GROUP BY T1.type
SELECT frequency FROM account WHERE account_id = 3;
SELECT T2.birth_date FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.account_id = 130;
SELECT count(DISTINCT T1.account_id) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Request for a statement'
SELECT amount , payments FROM loan WHERE client_id = 992
SELECT T1.gender , sum(T2.amount) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.client_id = 4 AND T2.trans_id = 851 GROUP BY T1.gender
SELECT TYPE FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T2.client_id = 9
SELECT sum(amount) FROM trans WHERE date LIKE "1998%" AND client_id = 617;
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.birth_date BETWEEN '1983' AND '1987' AND T3.district_id = 12813
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'Female' ORDER BY T2.amount DESC LIMIT 3
SELECT count(*) FROM client WHERE gender = 'M' AND birth_date BETWEEN '1974' AND '1976' INTERSECT SELECT count(*) FROM loan WHERE amount > 4000
SELECT count(*) FROM account WHERE district_id = 127 AND date > '1996'
SELECT count(*) FROM card WHERE TYPE = 'Junior' AND disp_id IN (SELECT disp_id FROM card WHERE TYPE = 'Junior' AND disp_id NOT IN (SELECT disp_id FROM card WHERE TYPE = 'Credit') GROUP BY disp_id ORDER BY count(*) DESC LIMIT 1) INTERSECT SELECT count(*) FROM card WHERE TYPE = 'Junior' AND disp_id IN (SELECT disp_id FROM card WHERE TYPE = 'Credit') GROUP BY disp_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) / count(*) FROM client WHERE district_id = (SELECT district_id FROM account WHERE district_id = 'Prague') AND gender = 'female'
SELECT count(*) / count(*) FROM client WHERE gender = 'M' AND TYPE = "weekly"
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'weekly' AND T2.gender = 'Owner'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 ORDER BY T2.amount LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'Female' ORDER BY T1.birth_date LIMIT 1 AND avg(T2.frequency) = (SELECT min(avg(frequency)) FROM disp AS T2 JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.gender = 'Female' )
SELECT count(*) FROM client WHERE birth_date LIKE "1920%" AND district_id = 1325
SELECT count(DISTINCT account_id) FROM loan WHERE duration = 24 AND payments = 'pre'
SELECT avg(amount) , T1.date FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'On running contract' GROUP BY T2.date
SELECT DISTINCT T1.client_id , T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN (SELECT client_id FROM order WHERE operation = 'permanent' UNION SELECT client_id FROM loan WHERE operation = 'application') AS T3 ON T1.client_id = T3.client_id
SELECT T1.client_id , T1.client_gender , T1.birth_date FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN card AS T3 ON T2.account_id = T3.account_id WHERE T3.type = 'high' AND T3.disp_id = 'eligible'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element != "carcinogen" AND element LIKE "%chlorine%"
SELECT avg(T2.atom_count) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single-bond'
SELECT avg(count(*) ) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = 'single bond'
SELECT count(*) FROM atom WHERE element = 'Sodium' EXCEPT SELECT count(*) FROM atom WHERE element = 'Carcinogen'
SELECT T2.molecule_id , T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple bond" INTERSECT SELECT molecule_id FROM bond WHERE bond_type = "triple bond" INTERSECT SELECT molecule_id FROM bond WHERE bond_type = "triple bond"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'double' GROUP BY T1.molecule_id HAVING sum(element) > 100
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id <= 100 AND label = 'carcinogenic'
SELECT DISTINCT molecule_id FROM atom WHERE element = 'carbon'
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'TR004_8_9')
SELECT element FROM bond WHERE bond_type = 'double'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = 'chlorine'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T3.element != "carcinogen"
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'non-carcinogenic') GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id = (SELECT molecule_id FROM atom WHERE atom_id = 'TR004_8') INTERSECT SELECT bond_type FROM bond WHERE molecule_id = (SELECT molecule_id FROM atom WHERE atom_id = 'TR004_20')
SELECT label FROM molecule EXCEPT SELECT label FROM molecule WHERE atom_id IN (SELECT molecule_id FROM atom WHERE element = 'tin')
SELECT count(*) FROM atom WHERE element = 'Iodine' INTERSECT SELECT count(*) FROM atom WHERE element = 'Sulfur' AND bond_type = 'Single'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = "triple"
SELECT element FROM atom WHERE element IN (SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 JOIN atom AS T3 ON T3.atom_id = T2.atom_id1 JOIN molecule AS T4 ON T4.molecule_id = T3.molecule_id WHERE T4.label = 'TR181' )
SELECT count(*) FROM atom WHERE element != 'fluorine' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT count(*) / (SELECT count(*) FROM bond WHERE bond_type = 'triple') FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = 1000 ORDER BY element
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T2.bond_id WHERE T3.bond_type = 'bond' AND T2.atom_id2 = T1.atom_id AND T1.molecule_id = 1001 AND T3.bond_id = 1001_2_6
SELECT count(*) - count(*) FROM molecule WHERE label = 'carcinogenic' EXCEPT SELECT count(*) FROM molecule WHERE label = 'non-carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id = 2 AND atom_id2 = 2
SELECT T2.molecule_id , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.molecule_id ORDER BY count(*) DESC LIMIT 5
SELECT count(*) FROM bond WHERE bond_type = 'double' AND molecule_id = 1
SELECT count(*) FROM atom WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = "carcinogenic")
SELECT element , count(*) FROM atom WHERE molecule_id = "TR206" GROUP BY element HAVING count(*) = 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR000')
SELECT element FROM atom WHERE molecule_id = 'TR060' INTERSECT SELECT label FROM molecule WHERE molecule_id = 'TR060'
SELECT bond_type FROM bond WHERE molecule_id = 'TR010' GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1;
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 3
SELECT bond_id FROM bond WHERE molecule_id = 'TR006' ORDER BY bond_id
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.bond_id JOIN molecule AS T3 ON T2.molecule_id = T3.molecule_id WHERE T1.element = 12 AND T3.molecule_id = 1009
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , T1.element FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = "TR001_6_9"
SELECT T2.label , T1.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = "TR001_10"
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 19
SELECT element FROM atom WHERE molecule_id = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 21 AND T1.element = 22 AND T1.element = 23 AND T1.element = 24 AND T1.element = 25
SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'phosphorus' INTERSECT SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'nitrogen'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.bond_id) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "iodine"
SELECT bond_type , bond_id FROM bond WHERE molecule_id = (SELECT molecule_id FROM atom WHERE atom_id = 45)
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple" AND T3.molecule_id = "TR041"
SELECT element FROM atom WHERE element = "TR144_8_19"
SELECT t1.molecule_id FROM molecule AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id GROUP BY t1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT element FROM atom WHERE element != 'lead' INTERSECT SELECT element FROM atom WHERE element = 'lead'
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'bond'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T1.atom_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM bond WHERE bond_type = 'single' INTERSECT SELECT count(*) FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom WHERE element = 'carbon' OR element = 'hydrogen'
SELECT atom_id2 FROM atom WHERE element = 'Sulfur'
SELECT T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Tin"
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT sum(t1.atom_id) FROM atom AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.element = 'Phosphorus' OR t1.element = 'Bromine'
SELECT bond_id FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM bond WHERE bond_type = 'covalent'
SELECT T1.element , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.molecule_id HAVING bond_type = 'single'
SELECT label FROM molecule WHERE molecule_id = 'TR000' OR molecule_id = 'TR001' OR molecule_id = 'TR002'
SELECT molecule_id FROM molecule WHERE label != 'carcinogenic'
SELECT sum(t1.carcinogenic) FROM atom AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.molecule_id BETWEEN 1000 AND 1030
SELECT bond_type FROM bond WHERE molecule_id = TR000 OR molecule_id = TR050
SELECT element FROM atom WHERE element = 'TR001_10_11'
SELECT count(*) FROM atom WHERE element = 'iodine'
SELECT count(*) FROM atom WHERE element = 'Calcium' GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Cl' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'C'
SELECT molecule_id FROM bond WHERE bond_type = 'triple' INTERSECT SELECT molecule_id FROM atom WHERE element = 'carbon' AND label = 'non carcinogenic'
SELECT count(*) / (SELECT sum(element) FROM atom WHERE element = 'chlorine') FROM molecule_id AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'carcinogenic'
SELECT element FROM atom WHERE molecule_id = "TR001"
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T2.atom_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = 'triple'
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_id = "TR000_1_2")
SELECT count(*) FROM bond WHERE bond_type = 'single' AND element != 'carcinogen'
SELECT t2.label FROM bond AS t1 JOIN molecule AS t2 ON t1.molecule_id = t2.molecule_id WHERE t1.bond_id = 'TR001_10_11'
SELECT bond_id FROM bond WHERE bond_type = "triple bond" UNION SELECT bond_id FROM bond WHERE bond_type = "carcinogenic"
SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "toxic" AND T2.label = "carcinogenic" AND T1.atom_id = 4 GROUP BY T1.element
SELECT element , count(*) FROM atom WHERE molecule_id = "TR006" GROUP BY element
SELECT count(*) FROM atom WHERE element = 'Calcium' INTERSECT SELECT count(*) FROM atom WHERE element = 'Carcinogen'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Carbon')
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR001_10_11"
SELECT count(*) / (SELECT count(*) FROM compound) FROM triplebond
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR047" GROUP BY T1.molecule_id HAVING count(*) >= 2
SELECT count(*) FROM atom WHERE element = "TR001_1" AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = "TR001_1" )
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR151" AND T2.element = "carcinogenic"
SELECT element FROM atom WHERE molecule_id = 151
{"sql": "SELECT count(*) FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM compound WHERE compound_id IN (SELECT compound_id FROM
SELECT atom_id FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = 'carbon'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT bond_id FROM bond WHERE bond_type = 'double bond' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'hydrogen' AND T2.label = 'carcinogenic'
SELECT T2.molecule_id FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'TR000_1' AND T2.bond_type = 'TR000_1_2'
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'carbon' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT count(*) FROM atom WHERE element = 'hydrogen' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic' )
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = 'TR124' AND T2.element = 'carcinogen'
SELECT element FROM atom WHERE element = 'TR186'
SELECT bond_type FROM bond WHERE molecule_id = TR007_4_19
SELECT element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'TR001_2_4')
SELECT count(*) , T1.bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "TR006" AND T1.bond_type = "double" INTERSECT SELECT count(*) , T1.bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "TR006" AND T1.bond_type = "carcinogenic"
SELECT molecule_id , element FROM atom WHERE element = 'carcinogen'
SELECT T2.molecule_id , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = bond_id AND T1.element = 'single'
SELECT T1.molecule_id , T2.element FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple"
SELECT element FROM atom WHERE element = "TR000_2_3"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.bond_id JOIN connected AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'Cl'
SELECT T1.atom_id , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = (SELECT T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id HAVING count(*) >= 2) GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "double" INTERSECT SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "double" AND T2.label = "carcinogenic"
SELECT count(*) FROM atom WHERE element != 'Sulphur' AND bond_type != 'double'
SELECT t1.label FROM molecule AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id WHERE t2.bond_type = 'carcinogenic' AND t2.bond_id = 'TR001_2_4'
SELECT count(*) FROM atom WHERE molecule_id = 'TR001'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" GROUP BY T2.molecule_id HAVING count(*) >= 2
SELECT molecule_id FROM atom WHERE element = "c" EXCEPT SELECT molecule_id FROM atom WHERE element = "carcinogen"
SELECT count(*) / (SELECT sum(count(*) FROM atom) ) FROM atom WHERE element LIKE '%Chlorine%'
SELECT molecule_id FROM bond WHERE bond_id = "TR001_1_7"
SELECT count(*) FROM bond WHERE bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected WHERE atom_id = 'TR000_1' AND atom_id2 = 'TR000_2')
SELECT molecule_id , label FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule_id , label FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR000" AND T2.element = "carcinogenic"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single'
SELECT count(*) FROM atom WHERE element = 'N'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T1.element = "Sulfur" AND T3.bond_type = "double"
SELECT molecule_id , label FROM atom WHERE element != 'carcinogen' GROUP BY molecule_id HAVING count(*) > 5
{"sql": "SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT element FROM atom WHERE molecule_id
SELECT molecule_id , molecule FROM atom GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) / (SELECT sum(count(*) ) FROM atom WHERE element = 'H' AND bond_type = 'triple' ) FROM molecule AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.label = 'carcinogenic'
SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR004' AND T2.label = 'TR010' AND T1.bond_type = 'single'
SELECT count(*) FROM atom WHERE molecule_id = 'TR008'
SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id NOT IN (SELECT molecule_id FROM bond WHERE bond_type = "phosphodiester")
SELECT count(*) FROM atom WHERE element = 'O' AND bond_type = 'double';
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'triple' EXCEPT SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'carcinogenic'
SELECT element , bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = "TR002"
SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' AND TR012 IN LABEL)
SELECT atom_id FROM atom WHERE element = 'o' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'o' )
SELECT faceName FROM cards WHERE power = 'incredibly powerful'
SELECT name FROM cards WHERE isNonFoil AND cardKingdomFoilId = "null" AND power = "powerful"
SELECT faceName FROM cards WHERE faceConvertedManaCost > (SELECT min(faceConvertedManaCost) FROM cards)
SELECT name FROM cards WHERE edhrecRank < 100 AND frameVersion = "2015"
SELECT DISTINCT T1.rarity FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = 'gladiator'
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.id WHERE T2.type = "cards" AND T2.hasAlternativeDeckLimit = 0
SELECT id , artist FROM cards WHERE power = "unknown" AND format = "commander"
SELECT T2.flavorText , T3.status FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T1.uuid = T3.uuid WHERE T1.artist = "Stephen Daniel" AND T1.asciiName = "card illustrated by" AND T2.text = "ruling" AND T3.status = "missing"
SELECT T2.date , T2.text FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Sublime Epiphany' AND T1.number = 74
SELECT T1.name , T1.artist , T1.isPromo FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T1.uuid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T1.name = "Annul" AND T1.number = 29
SELECT name FROM cards WHERE isAlternative = 1 INTERSECT SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT count(*) / (SELECT count(*) FROM cards) FROM foreign_data WHERE language = "Chinese Simplified"
SELECT T2.name , count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T1.language = "Italian" GROUP BY T2.code
SELECT count(*) FROM cards AS T1 JOIN scryfallillustrationid ON T1.scryfallillustrationid = T2.scryfallillustrationid WHERE T1.artist = "Aaron Boyd" AND T1.type = "card art"
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = 'infinite'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE asciiName = "Ancestor's Chosen"
SELECT originalType FROM cards WHERE originalText = "Ancestor's Chosen"
SELECT T3.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T1.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" AND T1.hasContentWarning = 1 AND T1.hasAlternativeDeckLimit = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isReserved = 1 AND T1.isTextless = 1
SELECT T1.flavorText FROM foreign_data AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Condemn"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.isStarter AND T2.status = "restricted" AND T2.format = "legalities"
SELECT status FROM cards WHERE flavorname = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE flavorName = "Benalish Knight"
SELECT flavortext FROM cards WHERE asciiname = "Benalish Knight"
SELECT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT percentage FROM cards WHERE isTextless = 'borderless'
SELECT count(*) FROM cards WHERE isReprint = 1 AND flavorText = "German" AND scryfallillustrationid = (SELECT id FROM cards WHERE isReprint = 1 AND flavorText = "German")
SELECT count(*) FROM cards WHERE isTextless = 'true' AND flavortext = 'Russian'
SELECT count(*) / (SELECT count(*) FROM cards WHERE isStorySpotlight = 'Y') * 100 FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "French"
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE artist = "Aaron Boyd"
SELECT count(*) FROM cards WHERE colorIndicator = "black" AND cardKingdomFoilId = "mtgo"
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT cardKingdomFoilId FROM cards WHERE power = 'incredibly powerful' INTERSECT SELECT cardKingdomFoilId FROM cards WHERE hasNonFoil
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT name FROM cards WHERE asciiName LIKE "%中文%"
SELECT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.availability = "available" AND T2.language = "Japanese"
SELECT count(*) FROM cards WHERE borderColor = "white" AND colorIndicator = "border";
SELECT T1.uuid , T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "legacy"
SELECT text FROM rulings WHERE uuid = (SELECT cardkingdomid FROM cards WHERE name = 'Beacon of Immortality')
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = "future" GROUP BY T1.uuid
SELECT colorIdentity FROM cards WHERE setCode = "OWG"
SELECT T1.name , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T1.cardKingdomFoilId = 10E AND T1.convertedManaCost = 5
SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.id = T1.setcode WHERE originalType = "Creature - Elf"
SELECT colorIdentity , format FROM cards WHERE id BETWEEN 1 AND 20;
SELECT T1.name , T1.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code JOIN foreign_data AS T3 ON T3.id = T2.setcode WHERE T1.colorIdentity = "Black" AND T3.language = "French"
SELECT name FROM cards WHERE rarity = 'uncommon' ORDER BY originalReleaseDate
SELECT count(*) FROM cards WHERE hasNonFoil = 'false' AND artist = "John Avon" AND cardKingdomFoilId = (SELECT cardKingdomFoilId FROM cards WHERE hasNonFoil = 'false' AND artist = "John Avon")
SELECT count(*) FROM cards WHERE power = 'white' AND borderColor = 'bordered'
SELECT count(*) FROM cards WHERE artist = "UDON" AND printings = "mtgo" AND originaltype = "starter" AND hand = -1
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND hasContentWarning = "yes" AND availability = "paper";
SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "black" AND availability = "paper" AND availability = "mtgo"
SELECT sum(convertedManaCost) FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.artist = "Rob Alexander"
SELECT DISTINCT TYPE FROM cards WHERE cardKingdomId = "arena"
SELECT setcode FROM set_translations WHERE language = "Spanish"
SELECT count(*) / count(*) FROM cards WHERE isOnlineOnly = 1 AND frameEffects = "legendary"
SELECT id FROM cards WHERE isStorySpotlight = 'y' AND hasAlternativeDeckLimit = 'no'
SELECT count(*) FROM cards WHERE rarity = "Rare" AND flavortext = "Spanish" ORDER BY facename
SELECT T2.flavorText FROM set_translations AS T1 JOIN foreign_data AS T2 ON T1.language = T2.language WHERE T1.setcode = (SELECT id FROM cards WHERE number = 309)
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T3.id = T2.code WHERE T3.language = "br" AND T3.flavortext = "português" AND T1.block = "com Commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal' AND T1.type = 'Creature'
SELECT DISTINCT T2.types FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "de"
SELECT count(*) FROM cards WHERE power != 'triggered' AND keywords LIKE '%unknown%'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T2.id = T3.id WHERE T3.format = "pre-modern" AND T2.text = "This is a triggered mana ability" EXCEPT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T2.id = T3.id WHERE T3.format = "pre-modern" AND T2.text = "This is a triggered mana ability" GROUP BY T1.uuid HAVING count(*) > 2
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "pauper" AND cardKingdomFoilId = "paper"
SELECT artist FROM cards WHERE flavortext = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.artist = "Matthew D. Wilson" AND T1.type = "Creature" AND T1.colorIndicator = "Black" AND T1.borderColor = "Black" AND T1.layout = "Normal" AND T1.colorIdentity = "French"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.date = "01/02/2007" AND T1.rarity = "print"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.id WHERE T3.block = "Ravnica" AND T2.translation = "180 cards"
SELECT count(*) FROM cards WHERE cardKingdomFoilId = "commander" AND status = "legal" AND hasContentWarning = "no"
SELECT count(*) / count(*) FROM cards WHERE power = "non" AND flavortext = "French"
SELECT count(*) / count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T1.language = "Japanese" AND T2.type = "Expansion"
SELECT printings FROM cards WHERE artist = "Daren Bader";
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor = "none"
SELECT count(*) FROM cards WHERE isOversized = 1 AND isPromo = 1 AND isReprint = 1;
SELECT power FROM cards WHERE promoTypes = 'Promotion' AND mtgArenaId = 'MTG Arena' ORDER BY power
SELECT language FROM foreign_data WHERE multiverseid = 149934;
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId DESC LIMIT 3
SELECT count(*) FROM cards WHERE isTextless = 'false'
SELECT cardid FROM cards WHERE subtypes = "Angel" INTERSECT SELECT cardid FROM cards WHERE subtypes = "Wizard" AND count(*) = 1
SELECT name FROM sets WHERE isNonFoilOnly OR isFoilOnly != 1 AND isOnlineOnly != 1 ORDER BY name
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setCode JOIN foreign_data AS T3 ON T3.id = T2.setCode WHERE T1.setCode = "Archenemy" AND T1.cardKingdomFoilId = "ARC"
SELECT T2.name , T3.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN cards AS T3 ON T2.setcode = T3.id WHERE T1.number = 5
SELECT T2.language , T2.promoTypes FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.id = 206
SELECT T1.id , T2.id FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T1.flavorText = "Italian" AND T2.block = "Shadowmoor" ORDER BY T1.id
SELECT id FROM cards WHERE hasfoil AND flavortext = "JAPANISH" AND availability = "not available outside of the United States"
SELECT flavorText FROM foreign_data WHERE language = "ru" ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.isOnlineOnly AND T2.language = "中文 Simplified"
SELECT count(*) FROM sets WHERE isNonFoilOnly = 'Y' AND language = 'Japanese'
SELECT id FROM cards WHERE colorIndicator = "black"
SELECT id FROM cards WHERE frameEffects = "extendedart"
SELECT name FROM cards WHERE isFullArt = 'yes' AND colorIdentity = 'black'
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.name WHERE T1.faceName = "A Pedra Fellwar"
SELECT code FROM sets WHERE releasedate = "07/13/2007"
SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1.block = T2.name WHERE T1.block = "Masques" INTERSECT SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1.block = T2.name WHERE T1.block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT TYPE FROM cards WHERE watermark = 'boros'
SELECT T2.language , T2.flavorText , T1.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colorIndicator = "colorpie"
SELECT count(*) FROM cards WHERE convertedManaCost = 10 AND cardKingdomFoilId = "Abyssal Horror"
SELECT code FROM sets WHERE TYPE = "expansion commander"
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T1.watermark = "abzan"
SELECT TYPE FROM cards WHERE watermark = 'azorius'
SELECT count(*) FROM cards WHERE artist = "Aaron Miller" AND power = "incredibly powerful";
SELECT count(*) FROM cards WHERE cardKingdomFoilId = "paper" AND hand > 0
SELECT name FROM cards WHERE hasContentWarning = '1' AND hasTextless = '0'
SELECT convertedManaCost FROM cards WHERE asciiName = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT faceName FROM cards WHERE isPromo = 'YES' GROUP BY faceName HAVING count(*) >= 2
SELECT DISTINCT TYPE FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(*) FROM cards WHERE borderColor = "black" AND printings = "mtgo" INTERSECT SELECT count(*) FROM cards WHERE borderColor = "black" AND printings = "arena"
SELECT convertedManaCost FROM cards WHERE flavorName = "Serra Angel" UNION SELECT convertedManaCost FROM cards WHERE flavorName = "Shrine Keeper"
SELECT artist FROM cards WHERE promoTypes = "starter" AND flavorText = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE originalReleaseDate = 2003 ORDER BY convertedManaCost DESC LIMIT 3
SELECT T1.flavorName FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.code JOIN sets AS T3 ON T2.setcode = T3.code WHERE T1.language = "Italian" AND T2.translation = "Ancestor's Chosen"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T1.name = "Angel of Mercy"
SELECT name FROM cards WHERE cardKingdomFoilId = "Hauptset Zehnte Edition"
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN foreign_data AS T3 ON T3.uuid = T2.uuid WHERE T1.asciiName = "Ancestor's Chosen" AND T2.language = "Korean"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN art_sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = "Hauptset Zehnte Edition" AND T1.artist = "Adam Rex"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Hauptset Zehnte Edition"
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Eighth Edition" AND T2.language = "Simplified Chinese"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.parentCode = T2.code WHERE T2.name = "Angel of Mercy"
SELECT T1.originalReleaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Ancestor's Chosen"
SELECT T2.expansion FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT flavorText FROM cards WHERE colorIdentity = "Adarkar Valkyrie" AND availability = "outside the United States"
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T2.language = "it" AND T3.baseSetSize < 100
SELECT count(*) FROM cards WHERE setcode = "Coldsnap" AND borderColor = "black"
SELECT name FROM cards WHERE cardKingdomFoilId = "coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE setcode = "Coldsnap" INTERSECT SELECT artist FROM cards WHERE setcode = "Coldsnap" AND flavortext = "Jeremy Jarvis" INTERSECT SELECT artist FROM cards WHERE setcode = "Coldsnap" AND flavortext = "Aaron Miller" INTERSECT SELECT artist FROM cards WHERE setcode = "Coldsnap" AND flavortext = "Chippy"
SELECT number FROM cards WHERE setcode = "Coldsnap" AND cardKingdomFoilId = 4
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power != "unknown" AND setCode = "Coldsnap"
SELECT flavorText FROM cards WHERE flavorName = "Ancestor's Chosen" AND flavorText LIKE "%Italian%"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavortext WHERE T1.flavorname = "Ancestor's Chosen"
SELECT flavorText FROM foreign_data WHERE language = "de" AND flavorText = "Ancestor's Chosen"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN cards AS T3 ON T3.uuid = T2.uuid WHERE T3.cardKingdomId = 1 AND T3.cardKingdomFoilId = 1 AND T3.setCode = "Coldsnap" AND T1.language = "Italian"
SELECT flavorText FROM foreign_data WHERE language = "Italian" AND name = "Coldsnap"
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.flavortext = 'Reminisce'
SELECT count(*) FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = "Coldsnap") FROM cards WHERE cardKingdomFoilId = "Coldsnap" AND rarity = "incredibly powerful"
SELECT code FROM sets WHERE releaseDate = "2017/7/14"
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmid FROM sets WHERE code = 'SS2' JOIN cards ON sets.mcmid = cards.mcmid WHERE cards.cardKingdomFoilId = 'SS2'
SELECT T1.flavorText FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.releaseDate = "2017/6/9"
SELECT expansionType FROM cards WHERE name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Jim Pavelec"
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.parentcode WHERE T2.flavortext = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T2.name = "Rinascita di Alara"
SELECT T2.expansionType FROM sets AS T1 JOIN cardmaster AS T2 ON T1.code = T2.parentCode WHERE T1.name = "Huitième édition"
SELECT flavorText FROM foreign_data WHERE language = "French" AND flavorText = "Tendo Ice Bridge"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Tenth Edition"
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.code WHERE T1.asciiName = "Fellwar Stone" AND T2.language = "Japanese"
SELECT name FROM cards WHERE setcode = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.releaseDate FROM sets AS T1 JOIN card AS T2 ON T1.code = T2.parentCode WHERE T1.name = "Ola de frío"
SELECT T2.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.parentCode WHERE T1.asciiName = "Samite Pilgrim"
SELECT count(*) FROM cards WHERE convertedManaCost = '3' AND setcode = 'World Championship Decks 2004'
SELECT T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Mirrodin" AND T2.language = "simplified Chinese"
{"sql": "SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T2.language = \"Japanese\" AND T1.hasNonFoil = 1 / (SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T2.language = \"Japanese\" AND T1.hasNonFoil = 0")}
SELECT count(*) , isOnlineOnly FROM cards WHERE isOnlineOnly = 'yes' AND flavorText = 'Brazil' AND translation = 'Portuguese'
SELECT printings FROM cards WHERE isTextless = 'no' EXCEPT SELECT printings FROM cards WHERE text = 'Aleksi Briclot'
SELECT DISTINCT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.cardKingdomId GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.convertedManaCost > (SELECT max(convertedManaCost) FROM cards) AND T2.hasAlternativeDeckLimit = 1
SELECT count(*) , frameEffects FROM cards WHERE power = "incredible" AND cardKingdomFoilId = "incredible" GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = "unknown" AND isFoilOnly = 0 AND duelDeck = "A"
SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.parentCode WHERE T1.type = "Commander" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1 EXCEPT SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.parentCode WHERE T2.promoTypes = "Promotion" AND T2.promoTypes = "Promotional" AND T2.cardKingdomId = 1 AND T2.cardKingdomFoilId = 1 INTERSECT SELECT T1.id FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.parentCode WHERE T2.promoTypes = "Alchemy"
SELECT asciiName FROM cards WHERE convertedManaCost < (SELECT max(convertedManaCost) FROM cards) ORDER BY convertedManaCost DESC LIMIT 10;
SELECT max(originalReleaseDate) , T1.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid GROUP BY T2.uuid ORDER BY T2.status = 1 LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.name WHERE T1.artist = "Volkan Baçım" AND T2.flavortext = "French"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "rare" AND T2.status = "legal" AND T2.format = "Abundance"
SELECT T2.format , T1.faceName FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'banned' GROUP BY T2.format ORDER BY count(*) DESC LIMIT 1
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T2.language = T3.language WHERE T1.name = "Battlebond" AND T2.setcode = T1.code
{"sql": "SELECT T2.format FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.artist = (SELECT T3.artist FROM cards AS T3 JOIN (SELECT T1.artist FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.cardKingdomFoilId FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.asciiName = (SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.baseSetSize WHERE T1.cardKingdomFoilId = (SELECT T1.card
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.scryfallIllustrationId WHERE T2.frameversion = 1997 AND T2.flavorname = "D. Alexander Gregory" AND T2.flavortext = "legacy play format" AND T2.hascontentwarning = 1 OR T2.hasnonfoul = 1
SELECT name , format FROM cards WHERE edhrecRank = 1
SELECT avg(T2.number) FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.setcode WHERE T2.releaseDate BETWEEN '01/01/2012' AND '12/31/2015' AND T1.coloridentity = 'common'
SELECT artist FROM cards WHERE borderColor = "black" AND isOnlineOnly = 1 AND mtgArenaId = "mtg:arena"
SELECT uuid FROM cards WHERE cardKingdomFoilId = 'oldSchool' OR cardKingdomId = 'oldSchool'
SELECT count(*) FROM cards WHERE artist = "Matthew D. Wilson" AND availability = "paper"
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = "Kev Walker" ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.parentCode WHERE T3.name = "Hour of Devastation"
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = 'japanese') AND translation = 'korean'
SELECT DISTINCT frameEffects FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Allen Williams" AND T1.asciiName = "worked on" INTERSECT SELECT DISTINCT T1.borderColor FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Allen Williams" AND T1.asciiName = "worked on" INTERSECT SELECT DISTINCT T1.borderColor FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.artist = "Allen Williams" AND T1.asciiName = "worked on"
SELECT DisplayName FROM users WHERE Reputation > (SELECT Reputation FROM users WHERE DisplayName = "Harlan") UNION SELECT DisplayName FROM users WHERE Reputation > (SELECT Reputation FROM users WHERE DisplayName = "Jarrod Dixon")
SELECT T2.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.AccountId = 2011
SELECT count(*) FROM users WHERE lastaccessdate > "2014/9/1"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T2.ViewCount DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.upvotes > 100 AND T2.downvotes > 100
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.views > 10 AND T1.creationdate > 2013
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.UserId = "csgillespie"
SELECT Title FROM posts WHERE OWNERUSERID = "csgillespie";
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE OWNERUSERID = "csgillespie" ORDER BY viewcount DESC LIMIT 1
SELECT T2.OwnerDisplayName FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.Score DESC LIMIT 1
SELECT sum(T2.CommentCount) FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T1.Name = "Csgillespie"
SELECT AnswerCount FROM posts WHERE OWNERUSERID = "csgillespie" ORDER BY AnswerCount DESC LIMIT 1
SELECT T2.LastEditorDisplayName FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN posts AS T2 ON T1.parentid = T2.id WHERE T1.owneruserid = "csgillespie" AND T1.posttypeid = 1
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "well-finished"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.reputation > 19
SELECT T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExceptPostId = T2.ExceptPostId WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExceptPostId = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Csgillespie"
SELECT T.badges FROM badges AS T JOIN users AS U ON T.user_id = U.id WHERE U.displayname = "Csgillis"
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = "Csgillespie" AND T1.date LIKE "2011%"
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT avg(score) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T2.userid = T3.id WHERE T3.displayname = "csgillespie"
SELECT avg(T1.Id) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Views > 200
SELECT count(*) / (SELECT count(*) FROM posts WHERE score > 5) FROM posts WHERE owneruserid = (SELECT id FROM users WHERE reputation > 5)
SELECT T2.Views FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.creationdate = "2010/7/19" AND T2.reputation = 58
SELECT creationdate FROM votes GROUP BY creationdate ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival"
SELECT T1.Title FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid ORDER BY T2.score DESC LIMIT 1
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.viewcount = 1910
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE UserId = 3025);
SELECT T2.Text FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.parentid = 107829
SELECT COUNT(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.userid = 23853 AND T2.creationdate = "2013/7/12 9:08:18"
SELECT T2.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.DisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 1 AND T2.PostId = 6347
SELECT VoteTypeId , MAX(ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Data Visualization" GROUP BY T1.PostId
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Displayname = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) , T2.UserId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.OwnerUserId = 24 GROUP BY T2.OwnerUserId
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT id FROM users WHERE websiteurl = 'http://stackoverflow.com'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'thank you user93!'
SELECT Text FROM comments WHERE UserId = "A Lion"
SELECT T1.OwnerUserId , T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing'
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost?'
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Necromancer" GROUP BY T2.UserId HAVING COUNT(*) >= 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT DISTINCT T1.Title FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T2.UserId = (SELECT Id FROM users WHERE DisplayName = "Vebjorn Ljosa")
SELECT sum(T1.Score) , T2.WebsiteUrl FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.LastEditorUserId = T2.Id GROUP BY T2.WebsiteUrl
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation' AND T1.UserId = (SELECT T3.UserId FROM comments AS T3 JOIN posts AS T4 ON T4.Id = T3.PostId WHERE T4.Title = 'Why square the difference instead of taking the absolute value in standard deviation' GROUP BY T3.UserId ORDER BY count(*) DESC LIMIT 1)
SELECT sum(T2.BountyAmount) FROM tags AS T1 JOIN votes AS T2 ON T1.ExcerptPostId = T2.PostId WHERE T1.TagName = 'data'
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = 50 INTERSECT SELECT T1.OwnerDisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = 50 AND T2.PostId IN (SELECT PostId FROM posts WHERE Title LIKE "%variance%")
SELECT avg(T1.ViewCount) , T2.Title , T2.Comment FROM posts AS T1 JOIN tags AS T2 ON T1.PostId = T2.ExcerptPostId WHERE T2.TagName = "humor" GROUP BY T2.Title , T2.Comment
SELECT count(*) FROM comments WHERE userid = 13;
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount ASC LIMIT 1
SELECT count(DISTINCT userid) FROM badges WHERE date = "2011-01-01" AND name = "supporter";
SELECT count(DISTINCT userid) FROM badges WHERE id > 5
SELECT count(DISTINCT T1.id) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.location = 'New York' AND T2.name = 'Teacher' INTERSECT SELECT count(DISTINCT T1.id) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.id = T2.userid AND T2.name = 'Supporter'
SELECT T2.Reputation , T1.OwnerUserId FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.PostId = 1
SELECT T1.UserId FROM posthistory AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.viewcount >= 1000 GROUP BY T1.UserId HAVING count(*) = 1
SELECT T1.UserId , T2.Name FROM comments AS T1 JOIN badges AS T2 ON T1.UserId = T2.UserId GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT T1.userid) FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.location = "India"
SELECT date , count(*) FROM badges WHERE date LIKE "2010%" OR date LIKE "2011%" GROUP BY date ORDER BY count(*) DESC LIMIT 1
SELECT posthistorytypeid , count(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT T1.Title , T1.ViewCount FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.PostId WHERE T2.RelatedPostId = 61217 GROUP BY T1.Id ORDER BY T1.ViewCount DESC LIMIT 1;
SELECT T2.Score , T1.LinkTypeId FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.PostId = 395
SELECT postid , OWNERuserid FROM posts WHERE score > 60
SELECT sum(favoritecount) FROM posts WHERE createddate LIKE "2011%" AND userid = 686;
SELECT avg(upvotes) , avg(age) FROM users WHERE upvotes > 10
SELECT count(DISTINCT userid) FROM badges WHERE name = "Announcer"
SELECT T.badgeName FROM badges AS T JOIN users AS S ON T.userId = S.id WHERE T.date = "07/19/2010 19:39:08"
SELECT count(*) FROM comments WHERE score > 0
SELECT Text FROM comments WHERE CreationDate = "2010-07-19 19:25:47"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date = "2010-07-19 19:39:08"
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.ID = T2.UserId WHERE T1.DisplayName = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester, NY"
SELECT count(*) , T1.id FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = "Teacher" GROUP BY T1.user_id HAVING count(*) > 1
SELECT count(*) , userdisplayname FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE name = "Organizer" GROUP BY T2.id HAVING min(age) < 25
SELECT T1.Score FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate LIKE "7/19/2010 7:19:56 PM"
SELECT Text FROM comments WHERE creationdate = "2010-07-19 19:37:33";
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna, Austria"
SELECT count(T1.Age) FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.userid WHERE T2.name = "Supporter"
SELECT count(*) FROM badges WHERE date = "2010-07-19" 07:39:08 AND UserId IN (SELECT UserId FROM badges WHERE date = "2010-07-19" 07:39:08)
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation ASC LIMIT 1
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.ID = T2.UserId WHERE T1.Displayname = "Sharpie"
SELECT count(*) FROM badges WHERE name = "Supporter" AND UserId = users.Age > 30
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Id = 30
SELECT count(*) FROM users WHERE LOCATION = "New York"
SELECT count(*) FROM votes WHERE creationdate LIKE "2010%";
SELECT count(*) FROM users WHERE age > 25
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT avg(T2.ViewCount) , avg(T3.ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN votes AS T3 ON T1.UserId = T3.UserId WHERE T2.CreationDate LIKE "2010%" AND T3.CreationDate LIKE "2011%"
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Daniel Vassallo"
SELECT sum(T2.Views) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.UserId WHERE T1.displayName = "Harlan";
SELECT PostId FROM posts WHERE OwnerDisplayName = "Slashnick" ORDER BY AnswerCount DESC LIMIT 1
SELECT max(ViewCount) FROM posts WHERE OWNERUSERID = "Harvey Motulsky" INTERSECT SELECT max(ViewCount) FROM posts WHERE OWNERUSERID = "Noah Snyder"
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.owneruserid = 111236 AND T1.voteTypeId = 1 AND T1.score > 4
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.owneruserid = 1053 AND T1.score < 0 AND T2.ownerdisplayname = "Neil McGuigan"
SELECT DISTINCT T1.Tags FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T2.OwnerUserId = 1007 AND T2.OwnerDisplayName = "Mark Meckes" EXCEPT SELECT DISTINCT T1.Tags FROM tags AS T1 JOIN comments AS T2 ON T1.ExcerptPostId = T2.Id
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Organizer"
SELECT count(*) / (SELECT count(*) FROM posts WHERE community_owneddate LIKE "Community%" ) FROM posts WHERE tagname = "R"
SELECT abs(T1.ViewCount - T2.ViewCount) FROM posts AS T1 JOIN postHistory AS T2 ON T1.OwnerUserId = T2.UserId WHERE T2.UserId = "Mornington" DIFFERENT FROM posts AS T1 JOIN postHistory AS T2 ON T1.OwnerUserId = T2.UserId WHERE T2.UserId = "Amos"
SELECT count(DISTINCT userid) FROM badges WHERE date = "2014-06-15";
SELECT count(*) FROM posts WHERE creationdate LIKE "%21% July 2010%"
SELECT T1.DisplayName , T1.Age FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T2.ViewCount DESC LIMIT 1
SELECT T1.LastEditDate , T1.LastEditorUserId FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text LIKE "%negative%";
SELECT T1.title , T2.userdisplayname FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.score > 0
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "North Pole" AND T2.Date = 2011
SELECT T1.DisplayName , T2.LinkTypeId FROM users AS T1 JOIN postLinks AS T2 ON T1.Id = T2.PostId JOIN posts AS T3 ON T2.PostId = T3.PostId WHERE T3.FavoriteCount > 150
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Outlier"
SELECT T2.title FROM postlinks AS T1 JOIN posts AS T2 ON T1.postid = T2.id JOIN tags AS T3 ON T1.relatedpostid = T3.excerptpostid WHERE T3.tagname = "value over time" AND T2.title = "How to tell if something happened in a data set which monitors a value over time"
SELECT T1.id , T2.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.creationdate = 2013 AND T2.displayname = "Samuel"
SELECT OWNERDISPLAYNAME FROM posts ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Tags.TagName = "hypothesis-testing"
SELECT T2.RelatedPostId , T2.Title FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What are principal component scores?"
SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.Id ORDER BY T2.Score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT count(*) FROM tags AS T1 JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE T2.viewcount BETWEEN 5000 AND 7000
SELECT OWNERUSERID FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.creationdate = "2011-02-04" AND T1.bountyamount = 50
SELECT id FROM users ORDER BY age LIMIT 1
SELECT sum(score) FROM comments WHERE creationdate = "2010-07-19";
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.answercount <= 2 AND T2.creaiondate = 2010 GROUP BY T1.LinkTypeId
SELECT T1.PostId , T1.Score FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 1465 GROUP BY T1.PostId ORDER BY T1.Score DESC LIMIT 1
SELECT t1.title FROM posts AS t1 JOIN postlinks AS t2 ON t1.id = t2.postid ORDER BY t2.creationdate LIMIT 1
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid ORDER BY count(*) DESC LIMIT 1
SELECT T1.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Tags.TagName = "chl" ORDER BY T1.CreationDate ASC LIMIT 1
SELECT T1.CreationDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T2.UserId = T3.Id ORDER BY T3.Age LIMIT 1
SELECT T1.displayname FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid ORDER BY T2.date LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.location = "United Kingdom" AND T2.favoritecount >= 4
SELECT avg(upvotes) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.age = (SELECT min(age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT userdisplayname FROM users WHERE age LIKE "adult%"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Jay Stevens" AND T1.creationdate LIKE "2010%";
SELECT postid , title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Harvey Motulsky" ORDER BY viewcount DESC LIMIT 1
SELECT postid , title FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(T1.Score) FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.OwnerDisplayName = "Stephen Turner";
SELECT T1.DisplayName FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.CreationDate LIKE "2011%" AND T2.ViewCount > 20000
SELECT postid , ownerdisplayname FROM posts WHERE creationdate LIKE "2010%" ORDER BY score DESC LIMIT 1;
SELECT count(*) , T1.reputation FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.reputation > 1000 AND T2.creaiondate = 2011 GROUP BY T1.id HAVING count(*) > 1
SELECT percentage FROM users WHERE age LIKE "<30%"
SELECT T1.OwnerDisplayName , T1.ViewCount FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "Computer Game Datasets" ORDER BY T2.LasActivityDate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
{"sql": "SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T3 JOIN posts AS T4 ON T3.postid = T4.id WHERE T4.score = (SELECT max(score) FROM comments AS T5 JOIN posts AS T6 ON T5.postid = T6.id WHERE T6.score = (SELECT max(score) FROM comments AS T7 JOIN posts AS T8 ON T7.postid = T8.id WHERE T8.score = (SELECT max(score) FROM comments AS T9 JOIN posts AS T10 ON T9.postid = T10.id WHERE T10.score = (SELECT max(score) FROM comments AS T11 JOIN posts AS T12 ON T11.postid = T12.id WHERE T12.score = (SELECT max(score) FROM comments AS T13 JOIN posts AS T14 ON T13.postid = T14.id WHERE T14.score = (SELECT max(score) FROM comments AS T15 JOIN posts AS T16 ON T15.postid = T16.id WHERE T16.score = (SELECT max(score) FROM comments AS T17 JOIN posts AS T18 ON T17.postid = T18.id WHERE T18.score = (SELECT max(score) FROM comments AS T19 JOIN posts AS T20 ON T19.postid = T20.id WHERE T20.score = (SELECT max(score) FROM comments AS T21 JOIN posts AS T22 ON T21.postid = T22.id WHERE T22.score = (SELECT max(score) FROM comments AS T23 JOIN posts AS T24 ON T23.postid = T24.id WHERE T24.score = (SELECT max(score) FROM comments AS T25 JOIN posts AS T26 ON T25.postid = T26.id WHERE T26.score = (SELECT max(score) FROM comments AS T27 JOIN posts AS T28 ON T27.postid = T28.id WHERE T28.score = (SELECT max(score) FROM comments AS T29 JOIN posts AS T30 ON T29.postid = T30.id WHERE T30.score = (SELECT max(score) FROM comments AS T31 JOIN posts AS T32 ON T31.postid = T32.id WHERE T32.score = (SELECT max(score) FROM comments AS T33 JOIN posts AS T34 ON T33.postid = T34.id WHERE T34.score = (SELECT max(score) FROM comments AS T35 JOIN posts AS T36 ON T35.postid = T36.id WHERE T36.score = (SELECT max(score) FROM comments AS T37 JOIN posts AS T38 ON T37.postid = T38.id WHERE T38.score = (SELECT max(score) FROM comments AS T39 JOIN posts AS T40 ON T39.postid = T40.id WHERE T40.score = (SELECT max(score) FROM comments AS T41 JOIN posts AS T42 ON T41.postid = T4
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T1.LastEditorDisplayName , T1.Location FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.PostId = 183 ORDER BY T2.LasActivityDate DESC LIMIT 1
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Emmett" ORDER BY T1.Date DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T2.voteTypeId = 1 AND T2.postid IN (SELECT postid FROM votes WHERE voteTypeId = 1 AND score > 5000)
SELECT T1.Date - T2.CreationDate FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Zolomon'
SELECT count(*) , commentcount FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T2.userid = (SELECT id FROM users ORDER BY creationdate DESC LIMIT 1)
SELECT T3.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T1.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T1.creationdate DESC LIMIT 10;
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM tags AS T1 JOIN posts AS T2 ON T1.excerptpostid = T2.id WHERE tags = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT commentcount , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE displayname = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT percent FROM (SELECT T1.OwnerUserId , T1.Score , T1.Percent FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id ORDER BY T1.Score DESC LIMIT 1) AS T3 JOIN users AS T4 ON T3.OwnerUserId = T4.Id WHERE T4.Reputation = (SELECT max(Reputation) FROM users)
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T4.Reputation , T4.UpVotes FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN votes AS T3 ON T1.PostId = T3.PostId JOIN posts AS T4 ON T1.PostId = T4.Id WHERE T1.Text = "fine , you win : )"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Linear Regression"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount BETWEEN 100 AND 150 ORDER BY T1.Score DESC LIMIT 1
SELECT T1.CreationDate , T2.Age FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.WebsiteUrl = "https://www.webiste.com"
SELECT count(*) FROM comments WHERE score = 0 AND postid IN (SELECT postid FROM posts WHERE viewcount < 5)
SELECT count(*) FROM comments WHERE commentcount = 1 AND score = 0
SELECT count(DISTINCT T1.UserId) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score = 0 AND T2.Age = 40
SELECT T1.PostId , COUNT(*) FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "Group differences on a five point Likert item" GROUP BY T1.PostId
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score BETWEEN 1 AND 5 AND T2.DownVotes = 0
SELECT count(*) FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.score BETWEEN 5 AND 10 AND T1.upvotes = 0
SELECT power_name FROM superpower WHERE power_name LIKE '%3-D%'
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = hero_power.T1.id WHERE T1.height_cm > 200 AND T2.power_name = "Super Strength"
SELECT T1.full_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id GROUP BY T1.id HAVING count(T3) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = 1
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = "Apocalypse";
SELECT count(*) FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.eye_colour_id = "Blue" AND T3.power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "blond"
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Marvel Comics"
SELECT superhero_name FROM superhero WHERE publisher_id = 'Marvel Comics' ORDER BY height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Sauron"
SELECT superhero_name FROM superhero WHERE publisher_id = 'Marvel Comics' ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.publisher_id = 'Marvel Comics'
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC Comics'
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id ORDER BY T1.height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = 'gold' AND publisher_id = 'Marvel Comics'
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.superhero_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = "blonde"
SELECT superhero_name FROM superhero ORDER BY 1 / 5;
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'Copycat'
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = "death touch"
SELECT count(*) FROM superhero WHERE gender_id = 1 AND weight_kg >= 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 1 AND race_id = 1 AND eye_colour_id = "dark" AND hair_colour_id = "black" AND skin_colour_id = "green" AND height_cm > 170 AND weight_kg > 1000
{"sql": "SELECT count(*) , T1.publisher_id , T1.superhero_name FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero_name AS T2 ON T1.superhero_name = T2.superhero_name WHERE T1.publisher_id = (SELECT T1.publisher_id FROM superhero AS T1 JOIN superhero
SELECT T2.publisher_name , T1.publisher_id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'DC' INTERSECT SELECT T2.publisher_name , T1.publisher_id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT publisher_id FROM superhero WHERE superhero_name = 'Star Trek'
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id
SELECT count(*) FROM superhero WHERE full_name = ' '
SELECT eye_colour FROM superhero WHERE id = 75;
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.supername = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 1
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1
SELECT superhero_name FROM superhero WHERE gender_id = 1
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT superhero_name FROM superhero WHERE eye_colour_id = 'green'
SELECT t3.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id JOIN superhero AS t3 ON t1.hero_id = t3.id WHERE t3.id = 56
SELECT full_name FROM superhero WHERE gender = 'Demigod'
SELECT count(*) FROM superhero WHERE superhero_name = 'bad'
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' AND T1.height_cm BETWEEN 150 AND 180
SELECT superhero_name FROM superhero WHERE gender_id = 1 AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t3.power_name ORDER BY count(*) DESC LIMIT 1
SELECT attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T1.hero_id = "Abomination";
SELECT t3.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id JOIN superhero AS t3 ON t1.hero_id = t3.id WHERE t3.id = 1
SELECT count(DISTINCT t1.superhero_name) FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'stealth'
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = 'strength' ORDER BY t2.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE skin_colour_id = "null"
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superhero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id JOIN publisher AS t4 ON t4.id = t3.publisher_id WHERE t4.publisher_name = 'Dark Horse Comics' GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT eye_colour FROM superhero WHERE superhero_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'flight'
SELECT T1.eye_colour_id , T1.hair_colour_id , T1.skin_colour_id FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = "Dark Horse Comics" AND T1.gender_id = 1
{"sql": "SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE skin_colour_id = (SELECT skin_colour_id FROM superhero WHERE eye_colour_id = (
SELECT T1.group FROM superhero AS T1 JOIN group AS T2 ON T1.gender_id = T2.gender_id WHERE T1.superhero_name = 'A-Bomb'
SELECT count(*) / count(*) FROM superhero WHERE gender_id = 2 AND eye_colour_id = "blue"
SELECT superhero_name , race FROM superhero WHERE full_name = 'Charles Chandler'
SELECT superhero_name , gender_id FROM superhero WHERE superhero_name = 'Agent 13'
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'adaptation'
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Amazo";
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE colour_name = "amber")
SELECT superhero_name FROM superhero WHERE eye_colour_id = "black" INTERSECT SELECT superhero_name FROM superhero WHERE hair_colour_id = "black"
SELECT T1.eye_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.skin_colour_id = "gold"
SELECT superhero_name , full_name FROM superhero WHERE race_id = 1 AND gender_id = 1 AND superhero_name = "Vampire"
SELECT superhero_name FROM superhero WHERE alignment_id = 111111
SELECT count(DISTINCT superhero_name) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute)
SELECT T1.race , T1.alignment FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.superhero_name = "Cameron Hicks";
SELECT count(*) FROM superhero WHERE gender_id = 'female' AND publisher_id = (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT avg(weight_kg) FROM superhero WHERE race_id = 100
SELECT weight_kg - weight_kg FROM superhero WHERE superhero_name = "Emil Blonsky" EXCEPT SELECT weight_kg - weight_kg FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT t3.power_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t1.superhero_name = "Abomination"
{"sql": "SELECT count(*) FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero WHERE race_id = (SELECT race FROM superhero
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment_id = "neutral"
SELECT T1.attribute_name , T2.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T3.superhero_name = "3-D Man"
SELECT superhero_name FROM superhero WHERE eye_colour_id = 1 AND hair_colour_id = 2
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = 'Hawkman' AND T1.superhero_name = 'Karate Kid' AND T1.superhero_name = 'Speedy'
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) FROM superhero WHERE eye_colour_id = "blue" / 100 FROM superhero
SELECT count(*) , gender_id FROM superhero WHERE gender_id = 1 / 2 GROUP BY gender_id
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_name FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294;
SELECT superhero_name , full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = 'Helen Parr'
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id ORDER BY T2.attribute_value DESC LIMIT 1
SELECT T1.alignment , T4.power_name FROM alignment AS T1 JOIN superhero AS T2 ON T1.id = T2.alignment_id JOIN hero_power AS T3 ON T2.id = T3.hero_id JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T2.superhero_name = "Atom IV"
SELECT superhero_name , full_name FROM superhero WHERE eye_colour_id = 1 AND colour_id = 2
SELECT avg(T2.attribute_value) FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T1.gender_id = 1 AND T1.full_name = "Neutral"
SELECT T1.skin_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T2.attribute_value = 100
SELECT count(*) FROM superhero WHERE gender_id = 1 AND gender = "female";
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT race FROM superhero WHERE gender_id = 1 AND hair_colour_id = "blue"
SELECT count(*) , gender_id FROM superhero WHERE gender_id = 2 GROUP BY gender_id HAVING count(*) > 1
SELECT count(*) - count(*) FROM superhero WHERE weight_kg = "null" AND eye_colour_id = "blue"
SELECT power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T3.id = T2.hero_id WHERE T3.superhero_name = "Hulk"
SELECT power_name FROM superpower WHERE power_name = "Ajax"
SELECT count(*) FROM superhero WHERE race_id = 1 AND skin_colour_id = "green" AND gender_id = 2;
SELECT count(*) FROM superhero WHERE gender_id = 1 AND publisher_id = 50155 AND race_id = 1 AND publisher_name = "Marvel Comics";
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.hero_id WHERE t2.power_name = "wind" ORDER BY t1.superhero_name
SELECT t1.gender FROM gender AS t1 JOIN superhero AS t2 ON t1.id = t2.gender_id JOIN superpower AS t3 ON t3.id = t2.hero_id WHERE t3.power_name = 'Phoenix Force'
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id = 2059 AND id NOT IN (SELECT superhero_id FROM hero_power WHERE power_name = 'Dark Horse' )
SELECT count(*) FROM superhero WHERE speed IN (1)
SELECT T2.publisher_name , count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id GROUP BY T2.publisher_name ORDER BY count(*) DESC LIMIT 1;
SELECT t1.attribute_name FROM attribute AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.attribute_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = 'Black Panther' GROUP BY t1.attribute_name ORDER BY count(*) ASC LIMIT 1
SELECT eye_colour FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = 'Charles Chandler'
SELECT count(*) / count(*) FROM superhero WHERE gender_id = 1 AND publisher_id = 2016 AND superhero_name = "George Lucas"
SELECT count(*) / (SELECT count(*) FROM superhero WHERE publisher_id = 'Marvel Comics') FROM superhero WHERE gender_id = 'good'
SELECT count(*) FROM superhero WHERE superhero_name LIKE "John%"
SELECT superhero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT superhero_name , full_name FROM superhero WHERE superhero_name = "Alien"
SELECT superhero_name , full_name FROM superhero WHERE weight_kg < 100 AND eye_colour_id = 2 AND race_id = 1
SELECT attribute_value FROM superhero_attribute WHERE attribute_value = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1 AND alignment_id = 1
SELECT hero_id FROM hero_power JOIN superpower ON hero_power.power_id = superpower.id WHERE superpower.power_name = "Intelligence"
SELECT eye_colour FROM superhero WHERE race = "Blackwulf"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.name = "20" AND T2.status = "q1" AND T2.position = "eliminated"
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 19 AND T2.position = 1 AND T1.number = (SELECT driverid FROM laptimes WHERE raceid = 19 ORDER BY milliseconds DESC LIMIT 1)
SELECT T2.year FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Shanghai"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Germany"
SELECT t2.position FROM constructors AS t1 JOIN constructorstandings AS t2 ON t1.constructorid = t2.constructorid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country != 'Asia') AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country != 'Europe')
SELECT T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Spain"
SELECT location FROM circuits WHERE country = "Australia" AND name = "Australian Grand Prix";
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit";
SELECT T2.time FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Sepang International Circuit"
SELECT T1.lng , T1.latt FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.name = "Abu Dhabi Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 24 AND T2.position = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = "Bruno Senna";
SELECT DISTINCT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "Q2" AND T2.number = 355
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "0:01:54" AND T2.raceid = 903
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2007 AND T1.status != "finished" AND T1.constructor != "Bahrain"
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE raceid = 901
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2015 AND T2.date = "2015/11/29"
SELECT max(T1.surname) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 592 GROUP BY T1.driverid
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "0:01:27" AND T2.raceid = 161;
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.raceid = 933 ORDER BY T1.name LIMIT 1
SELECT T1.lng , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.name = "Malaysian Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.position FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.number = 345 AND T1.position = "Q1" AND T2.name = "Lucas di Grassi";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.round = 347 AND T2.time = "0:01:15" JOIN drivers AS T3 ON T1.driverid = T3.driverid
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 45 AND T2.position = 3 AND T2.time = "0:01:33";
SELECT T1.lap FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.number = 743 AND T1.driverid = 2993 AND T2.position = "finish" AND T1.position = "3" AND T1.milliseconds = 119;
SELECT T1.position FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2006 AND T2.name = "San Marino Grand Prix" ORDER BY T1.position LIMIT 1;
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE raceid = 901
SELECT count(*) FROM results WHERE raceid NOT IN ( SELECT raceid FROM races WHERE YEAR != 2015 AND date != "2015/11/29")
SELECT T1.forename , T1.surname , min(T1.dob) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 GROUP BY T1.forename , T1.surname
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 348 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1;
SELECT (position - 1) / position FROM laptimes WHERE raceid = 853 ORDER BY fastestlapspeed LIMIT 1;
SELECT round , avg(T1.milliseconds) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 1983 AND T2.date = "1983/7/16" GROUP BY T1.round
SELECT T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.position = "Singapore Grand Prix";
SELECT count(*) FROM races WHERE YEAR = 2005 ORDER BY count(*) DESC
SELECT name FROM races ORDER BY YEAR , TIME LIMIT 1
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid WHERE YEAR = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.name = "European Grand Prix" ORDER BY T1.country LIMIT 1;
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "British Grand Prix" AND T2.circuitid = 139
SELECT count(*) FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.name = "Silverstone Circuit" AND T2.name = "United Kindom grand prix";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 100 AND T2.position = 1 ORDER BY T2.position
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid ORDER BY T2.position DESC LIMIT 1
SELECT T1.forename , T1.surname , T1.position FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T1.position LIMIT 3;
SELECT T1.forename , T1.surname , T2.name FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.milliseconds) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "Malaysian Grand Prix" AND T2.driverid = "Lewis Hamilton";
SELECT % of percentage FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T2.year >= 2010 AND T1.position != '1' AND T2.name = "Hamilton"
SELECT T1.forename , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.forename , T1.nationality ORDER BY max(T2.points) DESC LIMIT 1
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T1.country = "USA";
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = "9";
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.surname = "Alex" AND T1.name = "track number less than 20"
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T2.name = "Sepang International Circuit" AND T1.driverid = "Michael Schumacher";
SELECT T1.name , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Michael" AND T2.position = "fastest"
SELECT avg(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2000 AND T1.constructorid = 1000 AND T1.status = "P" AND T1.position = "1"
SELECT T1.name , T1.points FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T1.driver = "Lewis Hamilton" ORDER BY T1.year LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 ORDER BY date
SELECT T1.name , T1.year , T1.circuitid FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY sum(T2.laps) DESC LIMIT 1;
SELECT count(*) , count(*) FROM races WHERE name = 'European Grand Prix' AND circuitid = 'Germany'
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT location FROM circuits WHERE name = 'Silverstone Circuit , Hockenheimring' OR name = 'Hungaroring' ORDER BY lat DESC LIMIT 1
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = "null"
SELECT nation FROM drivers ORDER BY dob DESC LIMIT 1
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT url FROM drivers WHERE surname = "Davidson" ORDER BY forename DESC LIMIT 1
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix";
SELECT DISTINCT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "Silverstone Circuit"
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone Circuit"
SELECT T2.time FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Abu Dhabi Circuit" AND T2.year = 2010
SELECT count(*) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy"
SELECT T2.date FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Barcelona-Catalunya"
SELECT url FROM circuits WHERE country = "Spanish" AND YEAR = 2009;
SELECT T1.position , T1.time FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.number = 1 AND T1.driverid = 1152 AND T1.position = 1 AND T2.name = "Lewis Hamilton" ORDER BY T1.milliseconds LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2007 AND T3.name = "Canadian Grand Prix" ORDER BY T2.position LIMIT 1;
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T2.driverid = T3.driverid WHERE T3.driverref = "Lewis Hamilton";
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T2.driverid = T3.driverid WHERE T3.position = 1 AND T3.driverref = "Lewis Hamilton" ORDER BY T3.position;
SELECT fastestlapspeed FROM results WHERE raceid = 2009 AND round = "Spanish Grand Prix" ORDER BY fastestlapspeed LIMIT 1
SELECT T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T1.status = "Finished"
SELECT rank FROM results AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.year = 2008 AND T2.position = "Lewis Hamilton" AND T3.name = "2008 Chinese Grand Prix";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.number = 4 AND T2.raceid = T8.raceid ORDER BY T8.position;
SELECT count(DISTINCT driverId) FROM results WHERE raceid = 2008 AND position = "finished"
SELECT fastestlapspeed FROM laptimes AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T2.driver = "Lewis Hamilton" AND T2.year = 2008 AND T1.round = 1;
SELECT T1.time FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T2.position = 2 AND T3.number = 18 AND T1.year = 2008 AND T1.grid = 100 AND T1.name = "AustChineseralian Grand Prix"
SELECT T1.name , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 127 AND T2.position = 1 AND T2.year = 2008 AND T2.constructorid = 127; SELECT T1.name , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 127 AND T2.position = 1 AND T2.year = 2008 AND T2.constructorid = 127;
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.statusid = 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Chinese Grand Prix" JOIN driverstandings AS T3 ON T1.driverid = T3.driverid JOIN drivers AS T4 ON T3.driverid = T4.driverid WHERE T4.nationality = "Formula_1"
SELECT sum(T2.points) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T1.year = T2.year
SELECT avg(T2.milliseconds) FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton" GROUP BY T2.raceid
SELECT count(*) FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T1.year = 2008 AND T1.round = 1 AND T2.lap = 14 AND T2.position = "Finish" AND T2.milliseconds = 1000
SELECT (fastestLapSpeed / (fastestLapTime)) FROM results WHERE raceid = 129 AND YEAR = 2008 ORDER BY fastestLapSpeed DESC LIMIT 1
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide" AND country = "Australia";
SELECT lat , lng FROM circuits WHERE country = "United States";
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > 1980
SELECT max(T2.points) FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "British"
SELECT name FROM constructors ORDER BY points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.points = 0
SELECT count(*) FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Japanese" AND T2.points = 0
SELECT name FROM constructors ORDER BY position TEXT LIMIT 1
SELECT count(*) FROM constructorstandings AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "French" AND T1.position != "Finish" AND T1.positionText != "Pole Position" AND T1.position != "Final" AND T1.position != "Last" AND T2.laps > 50
SELECT T1.name , T2.position FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.year = 2007 AND T1.name LIKE '%Japanese%'
SELECT avg(T2.time) FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.year < 1975
SELECT forename , surname FROM drivers WHERE dob > '1975' AND rank = 2
SELECT count(*) FROM drivers WHERE nationality != 'Italian' AND driverid NOT IN ( SELECT driverid FROM results WHERE raceid NOT IN ( SELECT raceid FROM races ORDER BY YEAR DESC LIMIT 1 ))
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT fastestlapspeed FROM laptimes AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 ORDER BY T1.position LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT T1.name , T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < '2000' AND T2.lap > 50 GROUP BY T1.driverid HAVING count(*) > 0
SELECT count(*) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.position = "fastest" AND T2.nationality = "French" AND T1.milliseconds < 0200.00
SELECT code FROM drivers WHERE nationality LIKE '%America%'
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid = 18
SELECT code FROM drivers ORDER BY dob DESC LIMIT 3 GROUP BY nationality HAVING nationality = "Netherlandic";
SELECT name FROM drivers WHERE forename = "Robert" AND surname = "Kubica";
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = "1980";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.year BETWEEN 1980 AND 1990 ORDER BY T2.milliseconds LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "fastest" AND T1.dob = "1971"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap = (SELECT max(lap) FROM laptimes WHERE YEAR = 2023)
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year ORDER BY T2.time LIMIT 1
SELECT YEAR FROM laptimes ORDER BY fastestlapspeed LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlaptime DESC LIMIT 5
SELECT count(*) FROM results WHERE raceid = 50 OR raceid = 100 AND statusid = 100
SELECT LOCATION , lat , lng FROM circuits WHERE country = 'Austria'
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T2.nationality , T2.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 23 ORDER BY T2.position = 2
SELECT T1.year , T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid ORDER BY T1.q1 LIMIT 1
SELECT count(*) FROM drivers WHERE nationality = "American" AND status = "puncture";
SELECT T1.url FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1;
SELECT t2.url FROM constructorstandings AS t1 JOIN constructors AS t2 ON t1.constructorid = t2.constructorid ORDER BY t1.wins DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 157 AND T2.position = 3 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T1.year = 2006 AND T1.grid BETWEEN 1 AND 10 AND T2.position = "fastest"
SELECT T1.forename , T1.surname , T1.dob FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) ASC LIMIT 3 INTERSECT SELECT T1.forename , T1.surname , T1.dob FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T1.dob BETWEEN "1980-1985"
SELECT T1.position , T1.time FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Canadian Grand Prix" AND T1.year = 2008 ORDER BY T1.position DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix" ORDER BY T2.positiontext DESC LIMIT 1;
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN 1981 AND 1991
SELECT forename , surname , dob FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT location , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.name , T1.nationality , T1.points FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T2.year BETWEEN 1980 AND 2010 ORDER BY T1.points DESC LIMIT 1
{"sql": "SELECT avg(T1.points) FROM results AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructorstandings AS T3 ON T2.constructorid = T3.constructorid JOIN constructors AS T4 ON T3.constructorid = T4.constructorid WHERE T4.nationality = \"Turkish\" AND T3.position = \"2\" AND T2.status = \"1\" AND T1.position = \"1\" AND T1.rank = \"1\" AND T1.positionorder = \"1\" AND T1.rankorder = \"1\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1.positiontext = \"Final\" AND T1
SELECT avg(T1.round) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2011 AND 2020
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T2.wins) FROM qualifiers AS T1 JOIN constructorstandings AS T2 ON T1.raceid = T2.raceid WHERE T1.position = 91
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.name , T1.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = (SELECT max(YEAR) FROM races)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN qualifying AS T3 ON T2.raceid = T3.raceid WHERE T3.position = 1 AND T3.raceid = 2008 AND T3.round = 3 AND T3.circuitid = 2008;
SELECT T1.forename , T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid ORDER BY T1.dob LIMIT 1;
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Canadian Grand Prix" ORDER BY T1.position DESC LIMIT 1;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid ORDER BY T1.dob DESC LIMIT 1
SELECT max(duration) FROM pitstops
SELECT fastestlapspeed FROM laptimes ORDER BY fastestlapspeed LIMIT 1
SELECT max(duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis Hamilton";
SELECT T1.lap FROM laptimes AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2011 Australian Grand Prix" AND T2.stop = "pit" AND T2.driverid = "Lewis Hamilton";
SELECT TIME FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 ORDER BY T1.time
SELECT T1.lap FROM laptimes AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T2.position = "fastest";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20;
SELECT T2.position FROM results AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.fastestlapspeed = (SELECT T2.fastestlapspeed FROM laptimes AS T2 JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Lewis Hamilton" ORDER BY T2.milliseconds LIMIT 1)
SELECT T1.laps FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit";
SELECT T1.laps FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.country = "Italy"
SELECT T2.name FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.milliseconds = (SELECT min(milliseconds) FROM laptimes WHERE raceid = 1006) AND T2.name = "Austrian Grand Prix Circuit"
SELECT T2.duration FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT T1.location , T2.lng FROM circuits AS T1 JOIN latlngs AS T2 ON T1.lng = T2.lng WHERE T2.milliseconds = 129.488
SELECT avg(milliseconds) FROM pitstops AS T1 JOIN lapisettings AS T2 ON T1.raceid = T2.raceid WHERE T2.driver = "Lewis Hamilton"
SELECT avg(T1.milliseconds) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1;
SELECT height , player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate != "null";
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing > (SELECT max(crossing) FROM Player_Attributes) ORDER BY crossing DESC LIMIT 5;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2016 GROUP BY T1.team_short_name ORDER BY count(*) LIMIT 1;
SELECT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T1.season = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.date = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.buildUpPlaySpeedClass , T1.buildUpPlayPassing FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id ORDER BY T1.buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = "end" AND T2.result = "draw" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT age FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN 2013 AND 2015 AND T2.sprint_speed >= 97
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN '1990-01-01' AND '1995-12-31'
SELECT player_api_id FROM Player_Attributes WHERE date = 2010 ORDER BY overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60;
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.date = 2012 GROUP BY T1.team_fifa_api_id HAVING avg(T2.buildUpPlayPassing) > 500
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left' AND T1.birthday BETWEEN 1987 AND 1992;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY sum(T2.goal) DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY AVG(heading_accuracy) DESC LIMIT 10;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE buildUpPlayDribblingClass = 'normal' AND date = 2014 GROUP BY T1.team_short_name ORDER BY chanceCreationPassingClass < (SELECT avg(chanceCreationPassingClass) FROM Team_Attributes WHERE buildUpPlayDribblingClass = 'normal' AND date = 2014)
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2009 AND T2.staging = 1 GROUP BY T2.league_id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers"
SELECT player_name FROM Player WHERE birthday LIKE "1970/%" AND birthmonth = "October";
SELECT attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Franco Zennaro"
SELECT T1.team_short_name , T1.team_fifa_api_id FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.date >= '2023-03-15' AND T2.date < '2023-04-01'
SELECT T1.finishing FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "Francois Affolter" AND T1.date = "18/09/2014";
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = 2011 AND T2.player_fifa_api_id = "Gabriel Tamas";
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Scotland Premier League' AND T1.season = 2015/2016;
SELECT T1.player_name , T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.birthday LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE chanceCreationPassing = 'Risky'
SELECT defensive_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = "David Wilson" AND T1.preferred_foot = "football"
SELECT birthday FROM Player ORDER BY overall_rating DESC LIMIT 1
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Netherlands'
SELECT avg(Team_Attributes.home_team_goal) FROM Team_Attributes AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2010 AND T2.league_id = 1 AND T2.country_id = 1000
SELECT avg(T2.finishing) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = (SELECT player_name FROM Player ORDER BY avg(T2.finishing) DESC LIMIT 1) AND T2.player_fifa_api_id = (SELECT player_fifa_api_id FROM Player_Attributes ORDER BY avg(T2.finishing) DESC LIMIT 1)
SELECT player_name FROM Player WHERE height > 180
SELECT count(*) FROM Player WHERE birthday > '1990'
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND T2.date BETWEEN 2008 AND 2010;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.potential = (SELECT max(potential) FROM Player_Attributes WHERE player_fifa_api_id = 'Aaron Doran')
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeedClass = "fast"
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = 'CLB'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE buildUpPlayPassing > 70
SELECT avg(overall_rating) FROM Player_attributes WHERE date BETWEEN 2010 AND 2015 AND overall_rating > 170;
SELECT player_name FROM Player ORDER BY height LIMIT 1;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32;
SELECT avg(overall_rating) FROM Player_Attributes WHERE preferred_foot = 'football' AND player_name = 'Aaron Doran'
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.league_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND T1.date LIKE "08-%" AND T1.date LIKE "10-%";
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.home_team_goal = 10
SELECT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC , T2.potential LIMIT 1;
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Abdou Diallo') FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_api_id = T1.player_api_id AND T1.player_name = 'Aaron Appindangoye'
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN"
SELECT player_name FROM Player WHERE birthday > (SELECT birthday FROM Player WHERE player_name = 'Aaron Lennon') UNION SELECT player_name FROM Player WHERE player_name = 'Abdelaziz Barrada'
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'left' AND T2.attacking_work_rate = 'high'
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Team AS T3 ON T2.team_api_id = T3.team_api_id WHERE T1.birthday < 1986 AND T3.defensePressure = T2.defensive_work_rate AND T3.defenceAggression = T2.attacking_work_rate
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(crossing) FROM Player_Attributes WHERE T2.player_api_id = ' Alexis ', ' Ariel Borysiuk ', ' Arouna Kone ' )
SELECT heading_accuracy FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70;
SELECT count(*) FROM MATCH AS T1 JOIN MATCHES_IN_COUNTRY AS T2 ON T1.country_id = T2.country_id WHERE T1.season = "2008/2009" AND T2.country_name = "Belgium"
SELECT long_passing FROM Player_Attributes ORDER BY birthday DESC LIMIT 1;
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = "Belgium Jupiler League" AND T1.date LIKE "2009-%";
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < '1986'
SELECT overall_rating - (SELECT max(overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T2.player_name = 'Ariel Borysiuk') FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = 'Ariel Borysiuk'
SELECT avg(buildUpPlaySpeed) FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "Heart of Midlothian"
SELECT avg(overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing = (SELECT max(chanceCreationPassing) FROM Team_Attributes)
SELECT T1.name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_fifa_api_id = "Abdou Diallo"
SELECT max(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Dorlan Pabon"
SELECT avg(away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = 'Parma' AND T1.name = 'Italy'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2016/6/23" AND T2.overall_rating = 77 ORDER BY T1.birthday DESC LIMIT 1;
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2016/2/4" AND T1.player_name = "Aaron Mooy"
SELECT T1.potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2010/8/30" AND T1.player_name = "Francesco Parravicini"
SELECT T1.player_name , T1.player_fifa_api_id , T1.player_api_id , T2.date FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Francesco Migliore" AND T2.date = "2015/5/1"
SELECT defensive_work_rate FROM Player_Attributes WHERE date = "2013/2/22" AND player_name = "Kevin Berigaud";
SELECT date FROM Player_Attributes WHERE player_name = "Kevin Constant" AND crossing = (SELECT max(crossing) FROM Player_Attributes WHERE player_name = "Kevin Constant");
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN MATCH AS T2 ON T1.id = T2.away_player_11 WHERE T2.date = "2011/2/22" AND T1.player_name = "Willem II";
SELECT T1.buildUpPlayDribbling FROM Team_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.buildUpPlayDribbling = T2.dribbling WHERE T1.buildUpPlayDribblingClass = "LEI" AND T2.date = "2015/9/10"
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing = "PEC Zwolle" AND date = "2013/9/20";
SELECT chanceCreationCrossingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_short_name = "Hull City" AND T1.date = "2010/2/22";
SELECT defenceAggressionClass FROM Team_Attributes WHERE date = "2015/9/10" AND team_fifa_api_id = "Hannover 96";
SELECT avg(overall_rating) FROM Player_Attributes WHERE date BETWEEN "2007/2/22" AND "2016/4/21" AND player_name = "Marko Arnautovic"
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2013/7/12" AND T1.player_name = "Landon Donovan" AND T2.player_fifa_api_id = "Jordan Bowery"; SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2013/7/12" AND T1.player_name = "Landon Donovan" AND T2.player_fifa_api_id = "Jordan Bowery";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT player_api_id FROM Player ORDER BY weight DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday LIKE "35%"
SELECT count(*) FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team_Attributes AS T3 ON T1.home_team_goal = T3.team_api_id JOIN Player AS T4 ON T4.player_api_id = T3.player_api_id WHERE T4.player_name = 'Aaron Lennon'
SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.away_team_api_id WHERE T1.away_player_11 = 'Daan Smith' INTERSECT SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.away_team_api_id WHERE T1.away_player_10 = 'Filipe Ferreira'
SELECT sum(T1.home_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team_Attributes AS T3 ON T3.team_api_id = T2.team_api_id WHERE T3.date = (SELECT date FROM MATCH WHERE T1.away_team_api_id = T2.team_api_id AND T2.team_short_name = 'home') AND T2.team_short_name = 'home' AND T1.birthday < '1999-01-01'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate = 'high'
SELECT max(T1.player_name) , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.finishing = 1 GROUP BY T1.player_fifa_api_id ORDER BY T1.birthday ASC;
SELECT T1.player_name FROM Player AS T1 JOIN Team AS T2 ON T1.player_api_id = T2.team_api_id JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Belgium'
SELECT T1.player_name , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.id = T2.id WHERE T1.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY avg(T1.weight) DESC LIMIT 1;
SELECT team_long_name FROM Team WHERE buildUpPlaySpeedClass = "slow speed"
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.chanceCreationPassing = 'safe' AND T1.chanceCreationCrossing = 'chance'
SELECT avg(T1.height) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Italy'
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name
SELECT count(*) FROM Player WHERE birthday > "1990-01-01" AND player_name = "Aaron"
SELECT jumping FROM Player_Attributes WHERE player_api_id = 6 DIFFERENCE FROM Player_Attributes WHERE player_api_id = 23
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'right' ORDER BY T1.potential LIMIT 5;
SELECT count(*) FROM Player_attributes WHERE preferred_foot = 'left' AND crossing = (SELECT max(crossing) FROM Player_attributes WHERE preferred_foot = 'left' )
SELECT count(*) / (SELECT count(*) FROM Player_Attributes WHERE stamina > 80) FROM Player_Attributes
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT T1.goal , T2.goal FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.home_team_api_id WHERE T1.date = "2008-09-24" AND T2.stage = "final" AND T1.country_id = 21 AND T2.country_id = 21
SELECT acceleration , agility , sprint_speed FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_short_name = "KSV Cercle Brugge";
SELECT count(*) FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN league AS T3 ON T3.id = T2.league_id WHERE T3.name = 'Italian Serie A' AND T1.season = 2015;
SELECT max(T1.home_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN league AS T3 ON T2.id = T3.id WHERE T3.name = 'Netherlands Eredivisie league'
SELECT finishing , curve FROM Player_Attributes ORDER BY weight DESC LIMIT 1;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2015-2016" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 4;
SELECT T2.player_name FROM MATCH AS T1 JOIN Player AS T2 ON T1.away_player_11 = T2.player_api_id GROUP BY T1.away_team_api_id ORDER BY sum(T1.goal) DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1;
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height < 180 AND T2.overall_rating > 70;
SELECT count(*) , sex FROM patient WHERE admission = 'Inpatient' AS T1 JOIN patient WHERE admission = 'Outpatient' AS T2 ON T1.id = T2.id GROUP BY sex HAVING count(*) > 1
SELECT count(*) / count(*) FROM patient WHERE birthday > 1930 AND sex = "F"
SELECT count(*) / (count(*) - sum(admission) ) FROM patient WHERE birthday BETWEEN 1930 AND 1940 AND admission = 'Inpatient'
SELECT count(*) / count(*) FROM patient WHERE diagnosis = "SLE"
SELECT T2.Date FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.ID = 30609
SELECT T1.sex , T1.birthday , T2.symptoms FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 100
SELECT T1.id , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.aptt > 10
SELECT T1.id , T1.sex , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = "Severe"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1937" AND T2.T-CHO > 140
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alb - 3.5 < 0
SELECT count(*) * 100 FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO != "Normal" AND T1.sex = "Female"
SELECT avg(IGG) FROM examination WHERE birthdate LIKE "50%"
SELECT count(*) FROM patient WHERE sex = 'F' AND first date = '1997' INTERSECT SELECT count(*) FROM examination WHERE examination date = '1997'
SELECT max(admission - birthdate) FROM patient
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date LIKE "1997/%" AND T2.sex = "F" GROUP BY T2.id ORDER BY thrombosis DESC LIMIT 1
SELECT max(T1.Birthday) - min(T1.Birthday) FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.id WHERE T2.Diagnosis = "Normal triglyceride"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthdate LIMIT 1
SELECT avg(T2.TBIL) FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.examination date = "1998-12-31"
SELECT T1.admission , T2.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.birthday DESC LIMIT 1
SELECT count(*) , sex FROM patient WHERE diagnosis = "Abnormal uric acid count" GROUP BY sex
SELECT count(*) FROM patient WHERE first date >= (SELECT first date + 1 FROM patient)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday < 1993 AND T2.birthday > 1987 GROUP BY T1.id HAVING count(*) >= 3
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.T-BIL > 100
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday LIKE "1/1/1985%" AND T2.admission LIKE "12/31/1995%" GROUP BY T1.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.age) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination date = "1999" AND T2.therapy date = "10"
SELECT T1.Birthday , T2.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID ORDER BY T2.HGB DESC LIMIT 1
SELECT T2.ANTI-NUCLEUS FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = 1996/12/2 AND T2.id = 3605340
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1995-9-4" AND T2.id = 2927464 AND T1.aCL IgG = "normal"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE diagnosis = "AORTITIS"
SELECT T2.RNP FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.date = "1994/2/19" AND T2.date = "1993/11/12"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = "1992-06-01" AND T2.glu = 9
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = "1991-10-21" AND T2.u-pro = 8.4
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first date = "1991/6/13" AND T1.diagnosis = "SJS" AND T2.date = "1995/6/13"
SELECT T1.id , T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1997/1/27" AND T1.diagnosis = "SLE" ORDER BY T2.first_date LIMIT 1
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday = "1959/3/1" AND T1.Examination Date = "1993/9/27"
SELECT (T2.T-CHO - T1.T-CHO) / T1.T-CHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.birthday = "1959/2/18" AND T2.date LIKE "1981/%"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Behcet" AND T2.examination_date BETWEEN "01/01/197" AND "12/31/1997"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination date > '1987/7/6' AND T2.examination date < '1996/1/31' AND GPT > 30 AND ALB < 4
SELECT count(*) , id FROM patient WHERE birthday = 1964 AND sex = 'F' GROUP BY id
SELECT count(*) FROM examination WHERE thrombosis = "2" AND ANA Pattern = "S" AND IGGM > (SELECT avg(IGGM) FROM examination)
SELECT count(*) / count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO > 0 AND T2.U-PRO < 100
SELECT count(*) / count(*) FROM patient WHERE first date = 1981 AND sex = 'M' AND diagnosis = "BEHCET"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991-10%" AND T2.T-BIL < 150
SELECT count(*) FROM patient WHERE birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ana_pattern = "P" AND sex = "A"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T2.diagnosis = "PSS" AND T3.crp = 2 AND T3.creatinine = 1 AND T3.ldh = 123
SELECT avg(ALB) FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "F" AND T1.diagnosis = "SLE" AND T1.plt > 400
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Diagnosis = "SLE" GROUP BY T1.Symptoms ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.birthday , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id = 48473
SELECT count(*) FROM patient WHERE diagnosis = "APS" AND sex = "F"
{"sql": "SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T1.id AND T2.date LIKE \"1997%\" AND (SELECT T1.id FROM laboratory AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T1.id NOT IN (SELECT id FROM laboratory WHERE T1.id = T
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Thrombocytopenia" INTERSECT SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE"
SELECT count(*) / count(*) FROM patient WHERE birthday = 1980 AND diagnosis = "RA" AND sex = "F"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.examination_date BETWEEN 1995 AND 1997 AND T2.diagnosis = "Behcet disease" EXCEPT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.examination_date BETWEEN 1995 AND 1997 AND T2.diagnosis = "Behcet disease" AND T1.id NOT IN (SELECT id FROM patient WHERE admission = "YES")
SELECT count(*) FROM patient WHERE sex = 'F' INTERSECT SELECT count(*) FROM laboratory WHERE wbc < 3.5
SELECT first_date - admission FROM patient WHERE id = 821298 INTERSECT SELECT first_date - admission FROM patient WHERE id = 821298
SELECT T2.U-PRO FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.ID = 57266 AND T2.U-PRO < 1.9
SELECT T1.date FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.got > 0 AND T2.id = 48473
SELECT T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.gut < 40 AND T2.date = 1994
SELECT id FROM patient WHERE sex = 'M' AND gpt > 0.5 AND gpt > 0.5
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.GLU > "Normal" ORDER BY T2.Birthdate
SELECT avg(ldh) FROM patient WHERE ldh > 0 AND ldh < 100
SELECT T1.id , T2.age FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE LDH > 300 AND LDH < 100
SELECT T1.id , T1.admission FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alp > 0 AND T2.alp < 100 AND T2.diagnosis = 'Normal'
SELECT id FROM patient WHERE birthday = "1982-04-01" INTERSECT SELECT id FROM laboratory WHERE ALP < 16
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TP < (SELECT min(TP) FROM laboratory)
SELECT id , TP - (TP / 2) FROM patient WHERE sex = 'F'
SELECT * FROM patient WHERE sex = 'M' AND ALP NOT IN (12, 13) ORDER BY birthday DESC
SELECT T1.sex , T1.birthday , T2.alb FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1982" AND T2.alb < 50
SELECT count(*) / count(*) FROM patient WHERE sex = 'F' AND UA > (SELECT avg(UA) FROM patient WHERE sex = 'F')
SELECT avg(UA) FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "M" AND T2.birthday = "1990-01-01"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UN >= "0.5" AND T2.UN < "0.6"
SELECT id , sex , birthday FROM patient WHERE diagnosis = 'RA' INTERSECT SELECT id , sex , birthday FROM laboratory WHERE UN = 'Normal'
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine > 0
{"sql": "SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient WHERE sex = 'M' AND creatinine > (SELECT min(creatinine) FROM patient
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.T-BIL DESC LIMIT 1
SELECT T1.sex , sum(T2.T-BIL) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL > 15.0 GROUP BY T1.sex
SELECT T1.id , T1.T-CHO FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id ORDER BY T1.T-CHO DESC LIMIT 1
SELECT avg(T1.birthday - 1900) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.diagnosis = "High Cholesterol"
SELECT T1.id , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.TG > 100
SELECT count(*) FROM patient WHERE TG > (SELECT 100 FROM laboratory WHERE TG < 100) AND birthdate > 50
SELECT DISTINCT id FROM laboratory WHERE CPK < 200
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = "M" AND CPK > (SELECT avg(cp) FROM laboratory WHERE date = (SELECT max(date) FROM laboratory) )
SELECT id , sex , age FROM patient WHERE GLU != "normal" INTERSECT SELECT id , sex , age FROM laboratory WHERE T-CHO != "normal"
SELECT id , GLU FROM patient WHERE first date = 1991
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.wbc != 100 GROUP BY T1.id ORDER BY T1.age
SELECT T1.id , T1.birthday , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.RBC < (SELECT max(RBC) FROM laboratory)
SELECT T1.admission , T2.sex , T2.birthday , T2.age , T2.rbc FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.sex = 'F' AND T2.age >= 50 AND T2.rbc > 4.5
SELECT DISTINCT id , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 120
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = "SLE" AND lab.gglu = "normal")
SELECT T1.id , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id GROUP BY T1.id HAVING count(*) >= 2 AND T3.HCT > 0.5
SELECT avg(HCT) FROM laboratory WHERE examination_date LIKE "1991%" AND HCT < (SELECT avg(HCT) FROM laboratory WHERE examination_date LIKE "1991%")
SELECT count(*) , count(*) FROM patient WHERE PLT < 150
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday < 1984 AND T2.plt = "normal"
SELECT count(*) , sex , T-PRO FROM LABORATORY AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.T-PRO > 100 AND T2.birthday > 55 GROUP BY T2.sex
SELECT DISTINCT first_date FROM patient WHERE first_date > 1992 AND PT = "Normal"
SELECT count(*) FROM examination WHERE examination date > '1997/1/1' AND T-bil = 'Inactivated partial prothrom bin time'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination WHERE PTT = "abnormal") AND diagnosis != "thrombosis"
SELECT count(*) FROM patient WHERE sex = 'M' AND wbc = "normal" INTERSECT SELECT count(*) FROM patient WHERE sex = "M" AND fg = "abnormal"
SELECT count(*) FROM patient WHERE birthday > '1980/1/1' INTERSECT SELECT count(*) FROM laboratory WHERE fg = 'Positive'
SELECT T1.description FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.UA > "normal"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" AND T3.U-PRO = "Normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.IGG > "Normal"
SELECT count(*) FROM examination WHERE aCL IgG = "Normal" INTERSECT SELECT count(*) FROM examination WHERE Symptoms = "yes"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.IgA = (SELECT max(IgA) FROM examination WHERE Diagnosis = 'Normal')
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date > "1990/1/1" AND T2.igaa = "normal"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.IGM = "Abnormal" GROUP BY T1.Diagnosis ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination) AND CRP = "abnormal"
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM laboratory WHERE creatinine > 0 AND creatinine != 70)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id JOIN examination AS T3 ON T2.id = T3.id WHERE T3.diagnosis = "Thrombosis" AND T2.RA = "Normal" AND T3.PT > 40
SELECT T2.Disease FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.Birthday > "1985-01-01" AND T1.Diagnosis = "RHuematoid Factor"
SELECT id FROM patient WHERE birthday > 60 AND RF = 'normal'
SELECT count(*) FROM patient WHERE RF = "Normal" AND diagnosis != "Thrombosis"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ANA = "Normal" AND T1.ANA Pattern = "P"
SELECT id FROM patient WHERE HCT != 466 GROUP BY id ORDER BY anti-cardiolipin-concentration DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.C3 = "normal" AND T2.C4 = "4"
SELECT count(*) FROM patient WHERE admission = 'yes' AND diagnosis = 'normal'
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RNP > 0
SELECT count(*) FROM patient WHERE diagnosis = "Normal Anti-SM" EXCEPT SELECT count(*) FROM examination WHERE thrombosis = "Yes"
{"sql": "SELECT id FROM patient WHERE first date = (SELECT min(first date) FROM patient WHERE diagnosis = 'anti-SM' GROUP BY first date ORDER BY first date ASC LIMIT 3")"}
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination date > '1997/01/01' AND T2.birthday < '1997/01/01' AND T1.diagnosis = 'Normal Anti-scl70'
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'Normal Anti-scl70' EXCEPT SELECT count(*) FROM examination WHERE symptoms = 'yes'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.date < "2000" AND T2.diagnosis = "Normal anti-SSA"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.SSA = 'abnormal' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.Diagnosis = "SLE" AND T2.diagnosis = "Normal Anti-SSB"
SELECT count(*) FROM examination WHERE SSB = "Normal" INTERSECT SELECT count(*) FROM examination WHERE Symptoms != "No symptoms"
SELECT count(*) FROM patient WHERE CENTROMEA = "Normal" AND SSB = "Normal" AND sex = "M"
SELECT DISTINCT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.dna != "normal"
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination) AND dna != "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.IGG = "Normal" AND T2.diagnosis = "Admitted"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T2.GLU > 0.5
SELECT count(*) FROM patient WHERE sex = 'M' AND GLU < 100
SELECT min(birthdate) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE GLU > 0)
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.GLU < 1000 ORDER BY T2.GLU DESC LIMIT 3
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE GLU = "normal" AND sex = "M");
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "Male" AND T1.ldh <= 100 AND T1.ldh >= 100 / 2;
SELECT max(date) FROM laboratory WHERE id = (SELECT id FROM patient WHERE blood_labl (LDH) != "normal")
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE ALP = "abnormal") AND admission != "none"
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM examination WHERE Diagnosis = "Normal level of alkaliphophatase" AND aCL IgG = "Normal level of alkaliphophatase" AND aCL IgM = "Normal level of alkaliphophatase" AND aCL IgA = "Normal level of alkaliphophatase")
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.U-PRO < 1000
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE diagnosis = "SJS" AND T3.U-PRO = "Normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.alb > 45
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = 'M' AND T2.alb < 50 AND T2.ure < 50
SELECT T2.concentration FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal Range" ORDER BY T2.concentration DESC LIMIT 1
SELECT max(T2.IGG) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "male" AND T1.cre < 1.5
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.creatinine = "normal" ORDER BY T2.anti-cardiolipin-concentration DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "Male" AND T2.T-BIL > 14 AND T2.ANA_PATTERN = "Peripheral"
SELECT T2.anti-nucleus antibody concentration FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal range" ORDER BY T2.T-BIL DESC LIMIT 1
SELECT count(*) FROM patient WHERE T-CHO > 140 AND (SELECT count(*) FROM laboratory WHERE PT < 0)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.ANA_PATTERN = "P" AND T2.iana_pattern = "ANA" AND T2.cholesterol < 200
SELECT count(*) FROM patient WHERE diagnosis = 'Normal triglyceride' INTERSECT SELECT count(*) FROM examination WHERE symptoms != "No symptoms"
{"sql": "SELECT T2.description FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.aCL IgG , T1.aCL IgM , T1.ANA , T1.ANA Pattern , T1.KCT , T1.RVVT , T1.LAC , T1.Symptoms , T1.Thrombosis , T1.Diagnosis , T1.ID , T1.Examination Date , T1.TG , T1.TBIL , T1.T-CHO , T1.CPK , T1.GLU , T1.WBC , T1.RBC , T1.HGB , T1.HCT , T1.PLT , T1.PT , T1.APTT , T1.FG , T1.PIC , T1.TAT , T1.TAT2 , T1.U-PRO , T1.IGG , T1.IGA , T1.IGM , T1.CRP , T1.RF , T1.C3 , T1.C4 , T1.RNP , T1.SM , T1.SC170 , T1.SSA , T1.SSB , T1.CENTROMEA , T1.DNA , T1.DNA-II , T1.TG , T1.TBIL , T1.T-CHO , T1.CPK , T1.GLU , T1.WBC , T1.RBC , T1.HGB , T1.HCT , T1.PLT , T1.PT , T1.APTT , T1.FG , T1.PIC , T1.TAT , T1.TAT2 , T1.U-PRO , T1.IGG , T1.IGA , T1.IGM , T1.CRP , T1.RF , T1.C3 , T1.C4 , T1.RNP , T1.SM , T1.SC170 , T1.SSA , T1.SSB , T1.CENTROMEA , T1.DNA , T1.DNA-II , T1.TG , T1.TBIL , T1.T-CHO , T1.CPK , T1.GLU , T1.WBC , T1.RBC , T1.HGB , T1.HCT , T1.PLT , T1.PT , T1.APTT , T1.FG , T1.PIC , T1.TAT , T1.TAT2 , T1.U-PRO , T1.IGG , T1.IGA , T1.IGM , T1.CRP , T1.RF , T1.C3 , T1.C4 , T1.RNP , T1.SM , T1.SC170 , T1.SSA , T1.SSB , T1.CENTROMEA , T1.DNA , T1.DNA-II , T1.TG , T1.TBIL , T1.T-CHO , T1.CPK , T1.GLU , T1.WBC , T1
SELECT id FROM patient WHERE id NOT IN (SELECT id FROM examination WHERE CRKP TK IN (100 , 200))
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRP > 0 AND T2.T-CHO > 0
SELECT birthday FROM patient WHERE diagnosis = "blood glucose is abnormal" AND first date = (SELECT max(first date) FROM patient WHERE diagnosis = "blood glucose is abnormal")
SELECT count(*) FROM patient WHERE diagnosis = "Normal blood glucose" EXCEPT SELECT count(*) FROM examination WHERE thrombosis = 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.wbc >= 499
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE diagnosis = "Systemic Lupus Eclamnum" AND wbc < 1000
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 140 INTERSECT SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.aCL IgG = 1 AND T2.aCL IgM = 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal") INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal") INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal") INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal") INTERSECT SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal")
SELECT T1.PLT FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.diagnosis = "MCTD" AND T2.plt >= 120
SELECT avg(PT) FROM patient WHERE sex = 'M' AND PT = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Severe thrombosis" AND T1.sex = "M" AND T3.aptt = "Normal"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Angela" AND T2.last_name = "Sanders";
SELECT count(*) FROM major WHERE department = 'College of Engineering'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Art and Design"
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN major AS T3 ON T2.link_to_major = T3.major_id WHERE T1.link_to_event = (SELECT event_id FROM event WHERE event_name = "Women's Soccer") AND T2.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id GROUP BY T1.event_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'vice president' AND T1.department = 'Student_Club'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean";
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison" AND T1.event_date = "2019-05-16" AND T1.type = "Student_Club";
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.link_to_member IN (SELECT member_id FROM attendance GROUP BY link_to_member HAVING count(*) > 10) AND T2.type = 'meeting'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.link_to_member = (SELECT member_id FROM attendance GROUP BY link_to_event HAVING count(*) > 20) EXCEPT SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.link_to_member = (SELECT member_id FROM attendance GROUP BY link_to_event HAVING count(*) > 20 INTERSECT SELECT member_id FROM attendance GROUP BY link_to_event HAVING count(*) > 20)
SELECT avg(link_to_event) FROM attendance WHERE event_date LIKE "2020%"
SELECT t1.expense_description FROM expense AS t1 JOIN budget AS t2 ON t1.expense_id = t2.budget_id WHERE t2.category = 'Support' INTERSECT SELECT t1.expense_description FROM expense AS t1 JOIN budget AS t2 ON t1.expense_id = t2.budget_id WHERE t2.category = 'Club Event' ORDER BY t2.spent DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Environmental Engineering"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Law' INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Constitutional Studies'
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT amount FROM major AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT T2.expense_description , T2.expense_date FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_date LIKE "9/%" AND T1.position = 'Student_Club'
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.position = 'President of the Student_Club'
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'Illinois'
SELECT T1.remaining FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN attendance AS T3 ON T2.link_to_member = T3.member_id WHERE T3.link_to_event = 'Student_Club' AND T3.event_date LIKE "9/%"
SELECT department FROM major WHERE major_name = 'Pierce' UNION SELECT department FROM major WHERE major_name = 'Guidi'
SELECT sum(amount) FROM budget AS T1 JOIN budget AS T2 ON T1.category = T2.category AND T1.event_id = T2.event_id WHERE T1.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date LIKE "2019-10-08"
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date LIKE "9/%" AND T1.event_date LIKE "10/%" AND T2.category = 'Expense'
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_date LIKE "2019%" AND T2.event_date LIKE "2020%" AND T1.category = 'Student_Club' AND T2.category = 'Student_Club'
SELECT LOCATION FROM event WHERE event_name = "Spring Budget Review"
SELECT T2.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T3.event_id = T1.link_to_event WHERE T3.event_date = "2019/9/4" AND T2.expense_description = "Posters"
SELECT remaining FROM budget WHERE category = "Food" ORDER BY remaining DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Adela" AND T2.last_name = "O'Gallagher";
SELECT count(*) FROM budget WHERE link_to_event = "November Meeting" AND spent > remaining
SELECT sum(T2.amount) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = "September Speaker"
SELECT status FROM event WHERE event_name = "Post Cards, Posters" AND event_date = "2019/8/20"
SELECT T.major_name FROM major AS T JOIN member AS S ON T.major_id = S.link_to_major WHERE S.first_name = "Brent" AND S.last_name = "Thomason";
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "medium"
SELECT TYPE FROM zip_code WHERE zip = "Christof Nielson"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President'
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'President'
SELECT T1.event_date FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T2.first_name = "Conor" AND T2.last_name = "Hilton";
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.approved = 'Yes' ORDER BY T2.expense_date LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.category = "Advertisement" AND T1.spent > T1.amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.category HAVING T1.spent > T1.amount
SELECT percentage FROM budget WHERE category = 'Parking' AND event_status = 'Submitted' AND link_to_event = (SELECT event_id FROM event WHERE event_date LIKE "%November%" AND TYPE = 'Speaker")
SELECT sum(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T1.type = 'pizza'
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT T2.zip FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = 'Amy Firth'
SELECT amount FROM budget ORDER BY remaining LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T1.date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason";
SELECT count(DISTINCT T1.zip) FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'closed' ORDER BY T2.spent / T2.amount DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'president'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020%"
SELECT sum(T2.spent) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'food'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN attendance AS T3 ON T3.link_to_member = T2.member_id JOIN event AS T4 ON T3.link_to_event = T4.event_id WHERE T1.major_name = 'Interior Design' AND T4.event_name = 'Community Theater'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T3.zip_code = T2.zip WHERE T3.state = "South Carolina" AND T1.college = "Georgetown"
SELECT count(*) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour";
SELECT DISTINCT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 40
SELECT sum(T2.cost) FROM budget AS T1 JOIN expense AS T2 ON T1.link_to_budget = T2.link_to_budget JOIN event AS T3 ON T3.event_id = T1.link_to_event WHERE T3.event_name = "Yearly Kickoff";
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.category = 'Expense' AND T2.event_status = 'Acknowledged' AND T2.amount = (SELECT max(amount) FROM budget WHERE category = 'Expense' AND event_status = 'Acknowledged')
SELECT T1.first_name , T1.last_name , T2.source FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent LIMIT 1
SELECT % of cost FROM (SELECT event_name , sum(cost) , event_date , event_type , event_id FROM event GROUP BY event_type ORDER BY sum(cost) DESC LIMIT 1) AS T1 JOIN event AS T2 ON T1.event_id = T2.event_id WHERE T1.event_type = 'Yearly Kickoff'
SELECT count(*) , major_name FROM major WHERE department = 'Finance' GROUP BY major_name INTERSECT SELECT count(*) , major_name FROM major WHERE department = 'Physics' GROUP BY major_name
SELECT source FROM income WHERE date_received LIKE "9/%" AND amount = (SELECT max(amount) FROM income WHERE date_received LIKE "9/%")
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'}
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.date_received = '2019'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi" UNION SELECT T3.major_name FROM major AS T3 JOIN member AS T2 ON T3.major_id = T2.link_to_major WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi"
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.type = 'Student_Club' AND T2.category = 'food'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
{"sql": "SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer' AND T2.first_name = 'Maya' AND T2.last_name = 'Mclean'"}
SELECT count(*) / (SELECT count(*) FROM event WHERE TYPE = 'Community Service' AND event_date = '2019' INTERSECT SELECT count(*) FROM event WHERE TYPE = 'Student Club' ) FROM major AS T1 JOIN attendance AS T2 ON T1.major_id = T2.member_id JOIN event AS T3 ON T3.event_id = T2.link_to_event WHERE T3.event_date = '2019' AND T1.department = 'Student Club'
SELECT T2.cost FROM event AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT t_shirt_size FROM major AS t1 JOIN member AS t2 ON t1.major_id = t2.member_id GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining < T2.amount ORDER BY T2.amount DESC LIMIT 1
SELECT T3.type , sum(T2.cost) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting' GROUP BY T3.type
SELECT category FROM budget WHERE link_to_event = (SELECT event_id FROM event WHERE event_name = 'April Speaker') ORDER BY amount
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T2.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.category = 'Parking'
SELECT sum(T2.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_date = "8/20/2019"
SELECT T1.first_name , T1.last_name , T2.cost FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.expense_id = "rec4BLdZHS2Blfp4v"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.expense_id WHERE T2.approved = 'Yes' AND T1.link_to_member = 'Sacha Harrison'
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "X-Large"
SELECT zip FROM member WHERE spend < 50
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Phillip" AND T2.last_name = "Cullen";
SELECT T2.position FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Business'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = "Business" AND T2.t_shirt_size = "Medium";
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT TYPE FROM event WHERE event_date LIKE "2020-%" AND event_date LIKE "03/%" AND EXTRACT(timezone) FROM event WHERE EXTRACT(second) FROM event_date = 12 AND EXTRACT(minute) FROM event_date = 0 AND EXTRACT(SEC) FROM event_date = 0
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Vice President'
SELECT count(*) * 100 / count(*) FROM major WHERE department = 'Business'
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1 spent = 0
SELECT T3.city , T3.state FROM major AS T1 JOIN student AS T2 ON T1.major_id = T2.major_id JOIN zip_code AS T3 ON T3.zip_code = T2.zip WHERE T1.department = "Electrical and computer engineering"
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = 'Vice President' AND T2.location = '900 E. Washington St.'
SELECT T2.last_name , T2.position FROM event AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T1.event_date = "09/10/2019" AND T1.type = "pizza"
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer Event'"}
SELECT count(*) , amount FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.t_shirt_size = "medium" AND T1.date_received = "50" GROUP BY T1.date_received HAVING count(*) = 1
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code WHERE T3.type = 'zip_code' AND T3.short_state = 'post office box'
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan Municipio'
SELECT event_name FROM event WHERE TYPE = "game" AND event_date BETWEEN "3/15/2019" AND "3/20/2020"
SELECT T1.link_to_event FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'member' AND T2.attendance_amount > 50
SELECT T2.first_name , T2.last_name , T1.link_to_event FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date LIKE "11/19/%" AND T3.event_date LIKE "01/10/%"
SELECT T3.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN student AS T3 ON T2.member_id = T3.member_id WHERE T1.major_name = "rec1N0upiVLy5esTO" AND T2.first_name = "Katy"
SELECT T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Business' AND T1.college = 'College of Agriculture and Applied Sciences'
SELECT T2.email FROM budget AS T1 JOIN income AS T2 ON T1.budget_id = T2.budget_id WHERE T1.expended > 20 AND T1.event_date BETWEEN "09/10/2019" AND "11/19/2019"
SELECT count(*) FROM major WHERE department = 'College of Education & Human Services' AND major_name = 'Education'
SELECT count(*) FROM budget WHERE spent > remaining
SELECT event_id , LOCATION , status FROM event WHERE event_date LIKE "2019-%" AND event_date LIKE "2020-%"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.spent > 50 AVG(T2.spent) > 50
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) / (SELECT count(*) FROM zip_code) FROM zip_code WHERE TYPE = 'PO box'
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT max(spent) FROM budget)
SELECT T2.event_name , T2.event_date FROM expense AS T1 JOIN event AS T2 ON T1.link_to_budget = T2.budget_id JOIN budget AS T3 ON T3.budget_id = T1.budget_id WHERE T3.amount BETWEEN 50 AND 200 AND T1.expense_description = 'Pizza'
SELECT T2.first_name , T2.last_name , T2.link_to_major FROM expense AS T1 JOIN major AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.cost > 100
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.income_id IN (SELECT income_id FROM income WHERE amount > 40)
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.major_id WHERE T2.position != 'member'
SELECT event_name FROM event WHERE cost NOT IN (SELECT avg(cost) FROM expense)
SELECT % of cost FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'meeting'
SELECT category FROM budget WHERE spent >= (SELECT sum(spent) FROM budget WHERE category = 'water' UNION SELECT sum(spent) FROM budget WHERE category = 'chips' UNION SELECT sum(spent) FROM budget WHERE category = 'cookies')
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.spent DESC LIMIT 5
SELECT T1.first_name , T1.last_name , T1.phone FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.link_to_member HAVING avg(T2.cost) > (SELECT avg(cost) FROM expense)
SELECT %s - %s FROM zip_code WHERE state = 'New Jersey' INTERSECT SELECT %s - %s FROM zip_code WHERE state = 'Vermont'
SELECT T_major.department FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.member_id WHERE T_member.first_name = "Garrett" AND T_member.last_name = "Gerke"
SELECT T2.first_name , T2.last_name , T2.zip , T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T1.link_to_budget = T3.budget_id WHERE T3.category = 'water' AND T3.category = 'veggie tray' AND T3.category = 'supplies'
SELECT T2.last_name , T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Elementary Education"
SELECT category , amount FROM budget WHERE link_to_event = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event WHERE T2.category = 'food'
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN income AS T2 ON T1.link_to_event = T2.link_to_event WHERE T2.date_received = '9/9/2019'
SELECT T2.category FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T1.expense_description = 'Posters'
SELECT first_name , last_name , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Secretary'
SELECT T2.event_name , T1.spent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.category = 'speaker gift'
SELECT T1.zip FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT T1.first_name , T1.last_name , T1.position FROM major AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code WHERE T3.city = "Lincoln" AND T3.state = "NC" AND T3.zip_code = 28092
SELECT count(*) FROM gasstations WHERE country = "CZE" AND segment = "Premium"
SELECT count(*) , currency FROM customers WHERE currency = "EUR" GROUP BY currency INTERSECT SELECT count(*) , currency FROM customers WHERE currency = "CZK" GROUP BY currency
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2012/%" ORDER BY T1.Consumption ASC LIMIT 1
SELECT avg(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "SME" AND T1.Date LIKE "2013/%"
SELECT T1.segment , T2.consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "CZK" ORDER BY T2.consumption DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.consumption < 30000 AND T2.segment = "KAM"
SELECT abs(T1.Consumption - T2.Consumption) FROM yearmonth AS T1 JOIN yearmonth AS T2 ON T1.Date = T2.Date WHERE T1.segment = "CZK" INTERSECT SELECT abs(T1.Consumption - T2.Consumption) FROM yearmonth AS T1 JOIN yearmonth AS T2 ON T1.Date = T2.Date WHERE T1.segment = "EUR"
SELECT T2.Date , T1.Amount FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.Currency = "EUR" GROUP BY T2.Date ORDER BY SUM(T1.Amount) DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T1.segment ORDER BY sum(T2.consumption) ASC LIMIT 1
SELECT T2.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" GROUP BY T2.Date ORDER BY SUM(T1.Consumption) DESC LIMIT 1
SELECT T2.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "SME" AND T1.Date LIKE "2013%" ORDER BY T1.Consumption DESC LIMIT 1
SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid NOT IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "SME") UNION SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid NOT IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "LAM") UNION SELECT avg(consumption) - min(consumption) FROM yearmonth WHERE date LIKE "2013%" AND customerid NOT IN (SELECT customerid FROM customers WHERE currency = "CZK" AND segment = "KAM")
SELECT T1.segment , max(T2.consumption) , min(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = "SME" OR T1.segment = "LAM" OR T1.segment = "KAM" AND T2.date LIKE "2012%" AND T2.date LIKE "2013%" GROUP BY T1.segment
SELECT sum(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "8" AND T2.Date LIKE "2013%" AND T2.month <= "11"
SELECT count(*) FROM gasstations WHERE country = "Czech Republic" - (SELECT count(*) FROM gasstations WHERE country = "Slovakia")
SELECT Consumption FROM yearmonth WHERE CustomerID = 7 AND DATE = "2013-04" - SELECT Consumption FROM yearmonth WHERE CustomerID = 5 AND DATE = "2013-04"
SELECT count(*) FROM customers WHERE currency = "CZK" GROUP BY currency > (SELECT count(*) FROM customers WHERE currency = "EUR")
SELECT T1.CustomerID , T1.Currency , max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR" AND T2.Date LIKE "2013%" GROUP BY T1.CustomerID ORDER BY max(T2.Consumption) DESC
SELECT T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "KAM" GROUP BY T1.CustomerID ORDER BY Consumption DESC LIMIT 1
SELECT sum(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2013%" AND T1.Segment = "KAM"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Consumption > 46.73 AND T2.segment = "LAM" GROUP BY T2.segment HAVING count(*) > 1
SELECT country , count(*) FROM gasstations GROUP BY country HAVING sum(amount) >= price FROM transactions_1k JOIN gasstations ON transactions_1k.gasstationid = gasstations.gasstationid GROUP BY transactions_1k.gasstationid
SELECT percentage FROM (SELECT customerid , sum(amt) , currency FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'EUR' GROUP BY T1.customerid) AS T3 JOIN customers AS T4 ON T3.customerid = T4.customerid WHERE T4.segment = 'KAM'
SELECT % (count(*) - sum(consumption) / sum(consumption) ) FROM yearmonth WHERE date LIKE "2012/%"
SELECT count(*) , % FROM gasstations WHERE country = 'Slovakian' AND segment = 'premium'
SELECT customerid FROM yearmonth WHERE date = "2013-09" GROUP BY customerid ORDER BY sum(consumption) DESC LIMIT 1
SELECT t1.segment FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t2.date LIKE "2013%" ORDER BY consumption LIMIT 1
SELECT T1.CustomerID , T2.ConsumerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012%" AND T2.Month = "June" ORDER BY T2.Consumption ASC LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE YEAR = 2012
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T2.Description FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date = "2013-09"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "%2013%" AND T1.Date LIKE "%06/%"
SELECT T2.ChainID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Price = 0.01 AND T2.segment = "Euro"
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.amount > 0 AND T2.price = 'Euro'
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012/%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro" AND T2.consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.TransactionID WHERE T2.GasStationID = (SELECT GasStationID FROM gasstations WHERE Country = "Czech Republic")
SELECT T1.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ChainID = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.country = "Czech Republic" AND T1.date > "2012/1/1"
SELECT avg(T2.Price) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = "Czech Republic"
SELECT avg(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "euro"
SELECT T1.segment , T1.currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2012/%" AND T2.segment = "8/%" AND T2.amount = (SELECT max(amount) FROM transactions_1k WHERE date LIKE "2012/%" AND time LIKE "25:00:%")
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.date LIKE "2012/%" AND T2.time LIKE "8:%" AND T2.customerid = (SELECT customerid FROM transactions_1k WHERE date LIKE "2012/%" AND TIME LIKE "8:%" ORDER BY price LIMIT 1)
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date = "2012/08/24" AND T2.Time = "16:25:00"
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2012/%" AND T2.time LIKE "21:20:00"
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/%" AND TIME LIKE "08:26:00%" AND customerid = (SELECT customerid FROM customers WHERE currency = "CZK" AND date = "2012/8/26")
SELECT segment FROM customers ORDER BY date LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "2012/%" AND T1.Time LIKE "12:42:00"
SELECT ProductID FROM transactions_1k WHERE Date LIKE "2012/%" AND TIME LIKE "21:20:00"
SELECT T2.Date , T1.Amount FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" AND T1.Amount = 124.05
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/%" AND TIME LIKE "8:%" AND country = "CZE"
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2013/%" AND T1.Consumption = 214582.17
SELECT T1.Country FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.CardID = 667467
SELECT T1.Country FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" AND T2.Money = 548.4 AND T2.Segment = "8/%"
SELECT percentage FROM customers WHERE currency = 'EUR' AND date = '2012/8/25'
SELECT T2.Consumption - T1.Consumption FROM yearmonth AS T1 JOIN yearmonth AS T2 ON T1.Date = T2.Date WHERE T1.Date LIKE "2012/8/25" AND T2.Date LIKE "2013/8/25"
SELECT T1.segment FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.date = T2.date JOIN gasstations AS T3 ON T2.gasstationid = T3.gasstationid GROUP BY T3.segment ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT % (ProductID , Description , 'premium' , 'overall' , 'SVK') FROM products WHERE Description = 'Premium'
SELECT T1.Amount FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID JOIN yearmonth AS T3 ON T3.Date = T1.Date WHERE T3.CustomerID = 38508 AND T3.Month = "01"
SELECT T1.Description , T1.ProductID FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.productid GROUP BY T1.ProductID ORDER BY count(*) DESC LIMIT 5
SELECT T1.Currency , avg(T2.Price) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T2.CustomerID ORDER BY avg(T2.Price) DESC LIMIT 1
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.gasstationid = T2.gasstationid WHERE T2.productid = 2 ORDER BY T2.amount DESC LIMIT 1
SELECT T2.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T1.ProductID = 5 AND T1.Date = "2012-08" AND T1.Price > 29.00
