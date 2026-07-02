SELECT max(percent) eligible free FROM frpm WHERE county = "Alameda"
SELECT min(percent)eligiblefree FROM frpm WHERE enroll12 BETWEEN 5 AND 17 AND schooltype = 'Continuation'
SELECT zip FROM schools WHERE county = 'Fresno County Office of Education' AND charter = 'Y'
SELECT mailstreet FROM schools ORDER BY frpm(k-12) DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND charter = 'Y'
SELECT count(*) FROM schools WHERE virtual = 'Y' AND avgscrmath > 400
SELECT school FROM schools WHERE magnet = 'Y' OR gsoffered = 'Y' AND numtsttaker > 500
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.numtsttaker = (SELECT max(numtsttaker) FROM satscores WHERE avgscrread > 1500)
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.educationaloptiontypet = 'K-12' ORDER BY T2.frmcount DESC LIMIT 1
SELECT count(*) FROM schools WHERE charterfundtypetype = 'Y' AND avgscrmath > 560
SELECT count(*) FROM frpm WHERE enroll12 BETWEEN 5 AND 17 AND AvgScrRead >= (SELECT avg(AvgScrRead) FROM satscores WHERE rtype = "Reading")
SELECT T1.CDSCode FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.Enrollment > 500
SELECT max(percent) FROM frpm WHERE percent (%) Eligible Free (Ages 5-17) > 0.3
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T1.cds ORDER BY avgscrmath DESC LIMIT 3
SELECT NCESSchool FROM frpm ORDER BY Enrollment (Ages 5-17) DESC LIMIT 5
SELECT dname FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY dname ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools WHERE state = 'Alameda' AND numtsttaker < 100
SELECT T1.charternum FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.avgscrwrite > 499 ORDER BY T2.avgscrwrite
SELECT count(*) FROM schools WHERE fundingtype = 'Directly funded' AND numtsttaker <= 250
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.avgscrmath = (SELECT max(avgscrmath) FROM satscores)
SELECT count(*) FROM frpm WHERE Low Grade = 9 AND High Grade = 12 AND County = "Amador"
SELECT count(*) FROM frpm WHERE free meal count (K-12) > 500 AND FRPM Count (K-12) < 700 AND school TYPE = "K-12" AND county = "Los Angeles"
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Contra Costa" ORDER BY T2.frpmcount DESC LIMIT 1
SELECT T1.school_name , T1.street FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.enrollment (K-12) - T2.enrollment (Ages 5-17) > 30
SELECT T1.school_name FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrRead >= 1500
SELECT T1.fundingtype FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE avg(T2.AvgScrMath) > 400 AND T1.street = "Riverside"
SELECT T1.school_name , T1.street + T1.streetabr FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = 'Monterey' AND T2.freemealcount (Ages 5-17) > 800
SELECT T1.school , T1.AvgScrWrite , T1.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T1.opendate > 1991 OR T1.closeddate < 2000
SELECT T1.school_name , T1 DOCtype FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.fundingtype = 'K-12' AND T2.enrollment (K-12) - T2.enrollment (Ages 5-17) > (SELECT avg(enrollment (K-12) - enrollment (Ages 5-17)) FROM frpm WHERE fundingtype = 'K-12')
SELECT opendate FROM schools ORDER BY enroll12 DESC LIMIT 12
SELECT DISTINCT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.low_grade = 1 AND T2.high_grade = 12 ORDER BY enroll12 LIMIT 5
SELECT T1.Percent (%) Eligible Free FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment DESC LIMIT 2
SELECT T1.Percent (%) Eligible Free (K-12) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.StatusType = "66" ORDER BY T1.Free Meal Count (K-12) DESC LIMIT 5
SELECT T2.website , T1.schoolname FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE freemealcount >= 1900 AND freemealcount <= 2000 AND enroll12 >= 5 AND enroll12 <= 17
SELECT percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE school_name = "Kacey Gibson" AND enrollment (Ages 5-17) = 1 AND charter = 'Y'
SELECT t1.admemail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.enrollment >= (SELECT min(enrollment) FROM frpm WHERE academicyear = 1999 AND lowgrade = 1 AND highgrade = 12)
SELECT t1.admfname1 , t1.admfname2 FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds WHERE t2.numge1500 >= 1500 GROUP BY t1.cds ORDER BY count(*) DESC LIMIT 1
SELECT T1.street , T1.city , T1.zip , T1.state FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.percent (%) eligible FRPM (Ages 5-17) LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.enroll12 BETWEEN 2000 AND 3000 AND T1.county = "Los Angeles County"
SELECT avg(numtsttaker) FROM schools WHERE opendate BETWEEN '01/01/1980' AND '12/31/1980' AND county = 'Fresno'
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds WHERE T2.rtype = "Read" AND T1.city = "Fresno Unified" ORDER BY avgscrread LIMIT 1
SELECT T1.school_name FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY avgscrread DESC LIMIT 5
SELECT T1.edopsname FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrMath = (SELECT avg(AvgScrMath) FROM satscores) ORDER BY T1.schoolname DESC LIMIT 1
SELECT avg(T1.AvgScrMath) , T1.County FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.CDSCode ORDER BY avg(T1.AvgScrMath) LIMIT 1
SELECT avg(T1.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.cds ORDER BY sum(T2.numtsttaker) DESC LIMIT 1
SELECT T1.school , avg(T2.AvgScrWrite) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.school WHERE T1.school = Ricci Ulrich
SELECT count(*) , state FROM frpm GROUP BY state HAVING grade = 1 OR grade = 2 OR grade = 3 OR grade = 4 OR grade = 5 OR grade = 6 OR grade = 7 OR grade = 8 OR grade = 9 OR grade = 10 OR grade = 11 OR grade = 12 HAVING count(*) = (SELECT max(count) FROM frpm GROUP BY state HAVING grade = 1 OR grade = 2 OR grade = 3 OR grade = 4 OR grade = 5 OR grade = 6 OR grade = 7 OR grade = 8 OR grade = 9 OR grade = 10 OR grade = 11 OR grade = 12)
SELECT avg(T1.OpenDate) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.AcademicYear = 1980 AND T1.County = "Alameda County" AND T1.District = "Elementary School District"
SELECT count(*) / count(*) FROM frpm WHERE county = "Orange County" INTERSECT SELECT count(*) / count(*) FROM frpm WHERE district = "Elementary School District"
SELECT county , closeddate FROM schools WHERE closeddate LIKE "%1%" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT T1.school_name , T1.street FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.avgscrmath = (SELECT avg(T2.avgscrmath) FROM satscores WHERE T2.avgscrmath = 7 ORDER BY T2.avgscrmath DESC LIMIT 1)
SELECT T1.street , T2.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.cds = T2.cds GROUP BY T2.school_name ORDER BY avg(T2.AvgScrRead) LIMIT 1
SELECT count(*) FROM schools WHERE mailcity = 'Lakeport' AND sum(T1.NumGE1500) >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip FROM schools WHERE admfname1 = 'Avetik Atoian'
SELECT count(*) , count(*) FROM schools WHERE mailstate = 'CA' AND county = 'Colusa' : count(*) FROM schools WHERE mailstate = 'CA' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = 'San Joaquin'
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgscrwrite = (SELECT avg(avgscrwrite) FROM satscores ORDER BY avgscrwrite LIMIT 3)
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE AdmFName2 = "Dante Alvarez"
SELECT website FROM schools WHERE state = "San Joaquin" AND virtual = 'P'
SELECT count(*) FROM schools WHERE city = 'Hickman' AND district = 'Elementary School District' AND charter = 'Y'
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND percent (%) Eligible Free (K-12) < 0.18
SELECT T1.school_name , T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charterschoolnumber = 00D2
SELECT count(*) FROM schools WHERE mailcity = 'Hickman' AND charternum = 00D4
SELECT (count(*) / sum(count(*))) * 100 FROM schools WHERE fundingtype = 'Locally Funded' UNION SELECT (count(*) / sum(count*)) * 100 FROM schools WHERE fundingtype = 'Charter'
SELECT count(*) FROM schools WHERE opendate BETWEEN '01/01/2000' AND '12/31/2005' AND county = 'Stanislaus'
SELECT sum(t1.closeddate - t1.closeddate) FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.city = 'San Francisco' AND t2.academicyear = 1989
SELECT T1.county FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.academicyear = 1980 AND T1.statustype = "Closed" AND T2.edopsname = "Youth Authority Facilities (CEA)"
SELECT T1.NCESDist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.StatusType = "Part of the State Special Schools"
SELECT count(*) , count(*) FROM schools WHERE county = 'Alpine' AND statustype = 'Open' UNION SELECT count(*) , count(*) FROM schools WHERE county = 'Alpine' AND statustype = 'Closed'
SELECT district FROM schools WHERE magnet = 'Y' AND city = 'Fresno' UNION SELECT district FROM schools WHERE magnet = 'N'
SELECT count(*) FROM frpm WHERE schoolcode = 'State Special School' AND academicyear = 2014-2015 AND enrollment (Ages 5-17) >= 5 AND enrollment (Ages 5-17) <= 17
SELECT count(*) FROM frpm WHERE school_name = 'Youth Authority School' AND mailstreet = 'PO Box 1040'
{"sql": "SELECT min(low grade) FROM frpm WHERE cdscode = (SELECT cdscode FROM schools WHERE ncesdist = 0613360 AND districttype = 'Special Education' AND schooltype = 'Consortia' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname = 'District Special Education Consortia' AND edopsname = 'National Center for Educational Statistics' AND edopsname =
SELECT T2.edopsname FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = t2.cdscode WHERE T1.frpmscount (K-12) = 2 AND T2.county = 37
SELECT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.educationaloptiontypet = "K-12" AND T2.lunchprovisionstatus = "2" AND T2.lowgrade = 9 AND T2.highgrade = 12 AND T2.countyname = "Merced"
SELECT T1.school_name , T1.Percent (%) Eligible FRPM (K-12) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.county = "Los Angeles" AND T2.highgrade = 9 AND T2.lowgrade = 6
SELECT gserved FROM schools WHERE city = 'Adelanto' GROUP BY gserved ORDER BY count(*) DESC LIMIT 1
SELECT county FROM schools WHERE state = "San Diego" EXCEPT SELECT county FROM schools WHERE state = "Santa Barbara" AND GSoffered = 'P'
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT T1.school_name , T2.city , min(latitude) FROM schools AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T1.state = 'CA' GROUP BY T2.city ORDER BY min(latitude) LIMIT 1
SELECT GSoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , T1.city , count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.magnet = 'Yes' AND T1.gsoffered BETWEEN 1 AND 8 AND T1.gserved BETWEEN 1 AND 8 GROUP BY T1.city
SELECT AdmFName1 , AdmLName1 , district FROM schools GROUP BY district ORDER BY count(*) DESC LIMIT 2
SELECT T1.districtcode FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.admfname1 = "Alusine"
SELECT t1.admfname1 , t1.admlname1 , t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charternum = 40
SELECT AdmEmail1 FROM schools WHERE OpenDate BETWEEN '01/01/2009' AND '12/31/2010' AND SchoolName = 'San Bernardino County, City of San Bernardino City Unified' AND SchoolType = 'Public Intermediate/Middle Schools' AND SchoolType = 'Unified Schools'
SELECT t1.school_name FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds GROUP BY t1.cds ORDER BY numtsttaker DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'issuance' AND T1.district_id IN (SELECT district_id FROM district WHERE A2 = 'East Bohemia')
SELECT count(*) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id IN (SELECT district_id FROM district WHERE A2 = "Prague")
SELECT avg(unemployment_ratio) FROM report WHERE YEAR = 1995 UNION SELECT avg(unemployment_ratio) FROM report WHERE YEAR = 1996 ORDER BY avg(unemployment_ratio) DESC
SELECT count(*) FROM district WHERE avg_salary BETWEEN 6000 AND 10000 AND gender = 'F'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "North Bohemia" AND T1.gender = "Male" GROUP BY T1.gender ORDER BY avg(T1.salary) > 8000
SELECT account_id FROM client WHERE gender = 'F' ORDER BY birth_date LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'F' ORDER BY birth_date LIMIT 2 GROUP BY account_id ORDER BY avg(salary) LIMIT 1 - 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.birth_date = (SELECT birth_date FROM client ORDER BY birth_date LIMIT 1) GROUP BY T2.account_id ORDER BY avg(T2.salary) DESC LIMIT 1
SELECT count(*) FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = 'statement' AND T2.gender = 'male'
SELECT client_id FROM disp WHERE operation = 'disponent' INTERSECT SELECT client_id FROM card WHERE TYPE = 'statement'
SELECT T1.account_id , min(T2.amount) , T2.date FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1997/%" GROUP BY T1.account_id
SELECT T1.account_id , max(T2.amount) , T1.date FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 12 AND T2.date LIKE "1993%" GROUP BY T1.account_id ORDER BY max(T2.amount) DESC LIMIT 1;
SELECT count(*) FROM client WHERE gender = 'F' AND birth_date < '1950' AND district_id = 12761
SELECT account_id FROM trans WHERE date LIKE "1995-%" ORDER BY date LIMIT 1
SELECT DISTINCT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.amount > 3000 AND T2.date < 1997
SELECT DISTINCT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.issued = '1994/03/03'
SELECT T1.date , T1.operation , T1.amount , T1.balance , T1.trans_id FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date = "1998/10/14" AND T1.amount = 840;
SELECT T2.district_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1994/08/25"
SELECT max(T2.amount) FROM card AS T1 JOIN trans AS T2 ON T1.disp_id = T2.account_id WHERE T1.issued LIKE "1996/10/21%"
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id GROUP BY T1.client_id ORDER BY T3.frequency DESC LIMIT 1
SELECT T2.amount , T1.account_id FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'Open' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.district_id = 13 AND T1.gender = 'F'
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.date LIKE "1998/09/02" AND T1.type = "Credit" AND T1.amount LIKE "5100"
SELECT count(*) FROM account WHERE date LIKE "1996-%" AND district_id IN (SELECT district_id FROM district WHERE A2 = "Litomerice")
SELECT T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'F' AND T1.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.amount = 98832 AND T2.date LIKE "1996/1/3";
SELECT T2.account_id FROM district AS T1 JOIN disp AS T2 ON T1.district_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T1.A2 = 'Prague' AND T2.type = 'new'
SELECT gender , count(*) FROM client WHERE district_id IN (SELECT district_id FROM district WHERE A2 = 'south Bohemia') GROUP BY gender ORDER BY count(*) DESC LIMIT 1
SELECT (T3.balance - T2.balance) / T2.balance FROM trans AS T2 JOIN account AS T3 ON T3.account_id = T2.account_id JOIN loan AS T1 ON T3.account_id = T1.account_id WHERE T1.status = 'approved' AND T1.date LIKE '%1993/03/22%' EXCEPT SELECT (T3.balance - T2.balance) / T2.balance FROM trans AS T2 JOIN account AS T3 ON T3.account_id = T2.account_id JOIN loan AS T1 ON T3.account_id = T1.account_id WHERE T1.status = 'approved' AND T1.date LIKE '%1998/12/27%'
SELECT percentage FROM loan WHERE status = 'Fully Paid'
SELECT count(*) , count(*) FROM loan WHERE amount < 100000 AND status = 'running'
SELECT T1.account_id , district.district_id , district.district_region FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.year = 1993 AND T2.year = 2023
SELECT T1.account_id , count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.year = 1995 AND T1.district_id = 13 AND T1.frequency = 1 GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = 'Prachatice')
SELECT T2.A2 , T2.A3 FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.status = 'approved' AND T1.loan_id = 4990
SELECT T1.account_id , T2.district_id , T2.A3 FROM loan AS T1 JOIN district AS T2 ON T1.account_id = T2.district_id WHERE T1.amount > 300000
SELECT T1.loan_id , T2.A3 , avg(T3.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T2.account_id = T3.account_id GROUP BY T1.loan_id HAVING T1.duration = 60
SELECT T1.a3 , T2.unemployment_rate FROM loan AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.status = 'Running' AND T2.district_id IN (SELECT district_id FROM client WHERE gender = 'M' AND birth_date < '1995-12-31')
SELECT count(*) , percentage FROM account WHERE district_id IN (SELECT district_id FROM district WHERE A2 = 'Decin' AND date LIKE '1993%' GROUP BY district_id)
SELECT account_id FROM account WHERE frequency = "monthly"
SELECT T1.A2 , T1.A3 , T1.A4 , T1.A5 , T1.A6 , T1.A7 , T1.A8 , T1.A9 , T1.A10 , T1.A11 , T1.A12 , T1.A13 , T1.A14 , T1.A15 , T1.A16 FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' ORDER BY count(*) DESC LIMIT 9
SELECT T1.amount FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'withdrawal' AND T1.date LIKE "1996-01-01" EXCEPT SELECT T3.amount FROM trans AS T3 JOIN account AS T4 ON T3.account_id = T4.account_id WHERE T4.type = 'card'
SELECT count(*) FROM account WHERE district_id IN (SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.type != 'card') AND T1.A2 = 'South Bohemia'
SELECT T1.A2 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.status = 'Active' GROUP BY T1.A2 ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE gender = 'M'
SELECT T1.A3 , T1.A10 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date = 1996 ORDER BY T2.frequency DESC LIMIT 1
SELECT count(*) FROM account WHERE date LIKE "1996/%"
SELECT count(DISTINCT account_id) FROM trans WHERE operation = 'credit' AND balance < 0
SELECT count(*) FROM loan WHERE amount >= 250000 AND status = 'approved' AND date BETWEEN '1995-01-01' AND '1997-12-31' AND payments = 'monthly'
SELECT count(*) FROM account WHERE district_id = 1 AND TYPE = 'running'
SELECT count(*) FROM client WHERE gender = 'M' JOIN disp ON disp.client_id = client.client_id JOIN account ON disp.account_id = account.account_id WHERE account.date = "1995" ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM card WHERE TYPE = "HIGH LEVEL" AND disp_id IN (SELECT disp_id FROM disp WHERE TYPE = "OWNER")
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = "Pisek"
SELECT T1.A3 FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.date LIKE "1997%" AND T2.operation = "transfer" AND T2.amount > 10000
SELECT T1.account_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'household' AND T2.bank_to = 'Pisek'
SELECT T1.account_id FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN card AS T3 ON T2.disp_id = T3.disp_id WHERE T3.type = 'Gold'
SELECT avg(T2.amount) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "2021%"
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit' AND T2.amount < (SELECT avg(amount) FROM trans WHERE TYPE = 'Credit') AND T2.date LIKE "1998%"
SELECT T1.gender , T2.account_id FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id JOIN loan AS T3 ON T2.account_id = T3.account_id JOIN disp AS T4 ON T2.account_id = T4.account_id WHERE T1.gender = 'female' AND T3.status = 'active' AND T2.type = 'card' AND T3.status = 'active'
SELECT count(*) FROM client AS T1 JOIN account AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "Female" AND T2.district_id IN (SELECT district_id FROM district WHERE A2 = "South Bohemia")
SELECT T2.account_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "Tabor" JOIN loan ON T2.account_id = T3.account_id
SELECT TYPE , avg(client.birth_date) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING avg(client.birth_date) > 8000 INTERSECT SELECT T1.TYPE FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE status = 'open'
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = (SELECT district_id FROM district WHERE A2 = "North Bohemia") AND T2.bank = "AB"
SELECT T2.A3 FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.type = 'withdraw'
SELECT avg(crimes) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.year = 1995 AND T2.opened >= 1997 AND T1.area > 4000 GROUP BY T1.area
SELECT count(*) FROM card WHERE TYPE = 'classic' AND TYPE IN (SELECT TYPE FROM card WHERE TYPE = 'classic' )
SELECT count(*) FROM client WHERE district_id IN (SELECT district_id FROM district WHERE A2 = "Hl.m. Praha") AND gender = "M"
SELECT count(*) * 100.0 / (SELECT sum(issued) FROM card WHERE issued < 1998) FROM card WHERE TYPE = 'Gold'
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN account AS T3 ON T2.account_id = T3.account_id JOIN loan AS T4 ON T3.account_id = T4.account_id ORDER BY T4.amount DESC LIMIT 1
SELECT count(*) FROM account WHERE district_id = 532 AND date LIKE "1995/%"
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN order AS T3 ON T2.account_id = T3.account_id WHERE T3.order_id = 33333
SELECT T1.amount FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.client_id = 3356 AND T1.type = 'cash'
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 200000
SELECT DISTINCT T1.type FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 13539
SELECT T2.A3 FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status = 'Finished' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN order AS T3 ON T2.account_id = T3.account_id WHERE T3.order_id = 32423;
SELECT * FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "Jesenik"
SELECT client_id FROM card WHERE issued > 1996 AND TYPE = 'J'
SELECT count(*) , gender FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING avg(T1.district_id) > 10000 INTERSECT SELECT count(*) , gender FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id GROUP BY T1.district_id HAVING avg(T1.district_id) > 10000
SELECT sum(T2.duration) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND T1.birth_date LIKE "1996%" AND T1.birth_date LIKE "1997%"
SELECT count(*) FROM trans WHERE date > '1995-01-01' AND operation = 'credit'
SELECT count(*) - count(*) FROM district AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.A2 = "East Bohemia" AND T1.A3 = "North Bohemia" AND T1.date = 1996
SELECT count(*) , count(*) FROM disp WHERE account_id BETWEEN 1 AND 10;
SELECT count(*) , T1.type FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.operation = 'debit' AND T2.account_id = 3539 GROUP BY T1.type
SELECT birth_date FROM client WHERE client_id IN (SELECT client_id FROM disp WHERE account_id = 130)
SELECT count(*) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.type = 'Request' AND T2.operation = 'Transfer'
SELECT amount , status FROM loan WHERE client_id = 992
SELECT T1.sum , T2.gender FROM trans AS T1 JOIN client AS T2 ON T1.account_id = T2.client_id WHERE T1.operation = "debit" AND T1.amount = 851 GROUP BY T2.client_id HAVING T2.client_id = 4
SELECT DISTINCT T1.type FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN client AS T3 ON T2.client_id = T3.client_id WHERE T3.client_id = 9
SELECT sum(amount) FROM trans WHERE date LIKE "1998-%" AND operation = 'Credit' AND client_id = 617;
SELECT T1.client_id FROM client AS T1 JOIN disp AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date BETWEEN '1983-01-01' AND '1987-12-31' AND T2.client_id IN (SELECT client_id FROM disp WHERE district_id = 'A13' AND A5 = 'East Bohemia')
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T1.gender = 'Female' ORDER BY T2.amount DESC LIMIT 3;
SELECT count(*) FROM client AS T1 JOIN client_id AS T2 ON T1.client_id = T2.client_id JOIN disp AS T3 ON T2.client_id = T3.client_id WHERE T1.gender = 'M' AND T1.birth_date BETWEEN '1974-01-01' AND '1976-01-01' AND T3.type = 'trans' AND T3.operation = 'pay' AND T3.amount > 4000
SELECT count(*) FROM account WHERE district_id = 126 AND date > '1996-01-01'
SELECT count(*) FROM card AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.type = "junior" AND T2.gender = "Female"
SELECT count(*) , count(*) / (SELECT count(*) FROM client WHERE district_id = (SELECT district_id FROM account WHERE district_id = 'Prague') ) FROM client WHERE gender = 'F'
SELECT count(*) / count(*) * 100 FROM client WHERE gender = 'M' AND client_id IN (SELECT client_id FROM disp WHERE TYPE = 'Weekly Statements')
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'weekly' AND T1.gender = 'Owner'
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.duration > 24 GROUP BY T1.account_id ORDER BY T2.amount LIMIT 1 AND T1.date < 1997
SELECT account_id FROM client WHERE gender = 'F' ORDER BY birth_date LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'F' AND avg_salary = (SELECT min(avg_salary) FROM client WHERE gender = 'F')
SELECT count(*) FROM client WHERE birth_date LIKE "1920%" AND district_id IN (7, 15)
SELECT count(DISTINCT account_id) FROM loan WHERE duration = 24 AND payments = 'pre'
SELECT T1.amount , avg(T1.amount) FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'Running' GROUP BY T2.trans_id
SELECT client_id , district_id FROM client WHERE client_id NOT IN (SELECT client_id FROM loan WHERE TYPE = 'apply') INTERSECT SELECT client_id , district_id FROM client WHERE client_id NOT IN (SELECT client_id FROM order WHERE TYPE = 'permanent')
SELECT T1.client_id , T1.age FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id WHERE T2.status = 'approved' AND T2.duration > 30
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element = 'Cl' AND molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT avg(count(*) ) FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id
SELECT avg(count(*) ) FROM bond
SELECT count(*) FROM atom WHERE element = 'Sodium' AND atom.atom_id NOT IN (SELECT atom_id FROM atom WHERE element = 'Carcinogen' )
SELECT T2.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple-bond" INTERSECT SELECT molecule_id FROM bond WHERE bond_type = "carcinogenic"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "double-bond"
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id <= 100 AND label = 'carcinogenic'
SELECT molecule_id FROM atom WHERE element = 'C'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR004_8_9"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bonded AS T2 ON T1.atom_id = T2.atom_id WHERE bond_type = 'double'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE bond_type = 'chlorine'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_type = 'single'
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.label = 'non-carcinogenic'
SELECT element FROM atom WHERE molecule_id NOT IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element ORDER BY count(*) LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 'TR004_8' INTERSECT SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 'TR004_20')
SELECT label FROM molecule EXCEPT SELECT label FROM molecule WHERE atom_id IN (SELECT molecule_id FROM atom WHERE element = 'tin')
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Iodine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Sulfur'
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "triple"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T3.molecule_id = 181 AND T1.element = "TR181"
SELECT count(*) , avg(molecule_id) FROM molecule WHERE label = 'carcinogenic' EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic' AND molecule_id LIKE "%fluorine%"
SELECT count(*) , avg(T2.molecule_id) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple" GROUP BY T2.molecule_id HAVING avg(T2.molecule_id) >= 100
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000" ORDER BY T1.element
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.molecule_id = 1234567890 AND T1.molecule_id = 1234567890 AND T2.atom_id2 = 987654321
SELECT count(*) - count(*) FROM molecule WHERE label = 'carcinogenic' EXCEPT SELECT count(*) FROM molecule WHERE label = 'non-carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id = 2 AND atom_id2 = 2
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T2.label HAVING count(*) >= 5 ORDER BY T2.label
SELECT count(*) , T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" GROUP BY T2.label HAVING count(*) > 1
SELECT count(*) , molecule_id FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY molecule_id HAVING sum(T1.element) >= 1000
SELECT element , count(*) FROM atom WHERE element = 'H' AND molecule_id = 206 GROUP BY element HAVING count(*) >= 1 AND element = 'H' LIMIT 1;
SELECT bond_type FROM bond WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR000')
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'TR060' AND T1.molecule_id = 1
SELECT bond_type FROM bond WHERE molecule_id = 10013 INTERSECT SELECT bond_type FROM bond WHERE molecule_id = 10013 GROUP BY bond_type HAVING count(*) > 1 AND label = "TR010"
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.bond_id = T3.bond_id WHERE T2.bond_type = "single" EXCEPT SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.bond_id = T3.bond_id WHERE T2.bond_type = "carcinogenic" ORDER BY label
SELECT bond_id FROM bond WHERE molecule_id = 1006 ORDER BY bond_id
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 12 AND T2.molecule_id = 1009
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , T2.element FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_id = "TR001_6_9"
SELECT T2.label , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = "TR001_10" AND T2.label = "carcinogenic"
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.atom_id = 19
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR004"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
{"sql": "SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 21 UNION SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 22 UNION SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 23 UNION SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 24 UNION SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 25 AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule_id FROM atom WHERE element = 22 UNION SELECT molecule_id FROM atom WHERE element = 23 UNION SELECT molecule_id FROM atom WHERE element = 24 UNION SELECT molecule_id FROM atom WHERE element = 25) AND T1.molecule_id IN (SELECT molecule_id FROM atom WHERE element = 21 UNION SELECT molecule
SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'phosphorus' INTERSECT SELECT T2.bond_id FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'nitrogen'
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(T1.atom_id) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'I'
SELECT bond_type , bond_id FROM bond WHERE bond_id IN (SELECT T1.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 45)
SELECT element FROM atom EXCEPT SELECT element FROM atom WHERE atom_id2 = atom_id1
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple" AND T1.molecule_id = (SELECT molecule_id FROM molecule WHERE label = "TR041")
SELECT element FROM atom WHERE atom_id = "TR144_8_19"
SELECT T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "lead"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE bond_type = "triple bond"
SELECT count(*) FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id GROUP BY T1.bond_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , avg(bond_type) FROM bond WHERE bond_type = 'single' GROUP BY bond_type HAVING avg(bond_type) >= 100%;
SELECT sum(atom_id) FROM atom WHERE element = 'carbon' UNION SELECT sum(atom_id) FROM atom WHERE element = 'hydrogen'
SELECT atom_id2 FROM atom WHERE element = 'S'
SELECT bond_type FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = "Tin"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'single'
SELECT sum(T1.atom) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "triple" AND T1.element = "P" OR T1.element = "Br"
SELECT bond_id FROM bond WHERE molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT molecule_id FROM bond WHERE bond_type = 'single' EXCEPT SELECT molecule_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE bond_type = 'single' GROUP BY element
SELECT label FROM molecule WHERE molecule_id = 'TR000' OR molecule_id = 'TR001' OR molecule_id = 'TR002'
SELECT molecule_id FROM molecule WHERE label != 'carcinogenic'
SELECT sum(count(*) ) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR000" AND T2.element = "carcinogen"
SELECT bond_type FROM bond WHERE molecule_id BETWEEN TR000 AND TR050
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = 'TR001_10_11'
SELECT count(*) FROM bond WHERE bond_type = 'bond' AND element = 'iodine'
SELECT count(*) , avg(T1.carcinogenic) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Calcium" GROUP BY T1.molecule_id
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'chlorine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'carbon'
SELECT molecule_id FROM bond WHERE bond_type = 'triple' INTERSECT SELECT molecule_id FROM atom WHERE element = 'C' EXCEPT SELECT molecule_id FROM molecule WHERE label = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic') GROUP BY element
SELECT DISTINCT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR001"
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T1.atom_id2 FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = "triple" UNION SELECT T1.atom_id , T1.atom_id2 FROM bond AS T1 JOIN atom AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = "double"
SELECT element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR000_1_2"
SELECT count(*) FROM bond WHERE bond_type = 'single' AND bond_type NOT IN ( 'carcinogenic' , 'mutagenic' )
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_id = 'TR001_10_11'
SELECT bond_id , COUNT(*) FROM bond WHERE bond_type = "triple" GROUP BY bond_id HAVING COUNT(*) > 1 INTERSECT SELECT bond_id , COUNT(*) FROM bond WHERE bond_type = "triple" AND COUNT(*) > 1 AND molecule_id = (SELECT molecule_id FROM molecule WHERE label = "carcinogenic") GROUP BY bond_id HAVING COUNT(*) > 1
SELECT count(*) , T1.element , T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'toxic' AND T2.label = 'carcinogenic' GROUP BY T2.molecule_id
SELECT count(*) , element FROM atom WHERE molecule_id = 'TR006' GROUP BY element
SELECT count(*) FROM atom WHERE element = 'Calcium' INTERSECT SELECT count(*) FROM atom WHERE element = 'Carcinogen'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Carbon')
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR001_10_11"
SELECT count(*) , avg(T1.molecule_id) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING bond_type = "triple-bond"
SELECT count(*) , avg(bond_type) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR047" GROUP BY bond_type
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "TR001_1" AND T2.label = "carcinogenic"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR151" AND T2.element = "carcinogenic"
SELECT element FROM atom WHERE molecule_id = 151 AND element = 'toxic'
SELECT count(*) FROM carcinogenic_compounds
SELECT atom_id FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = 'carbon'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT bond_id FROM bond WHERE bond_type = 'double bond' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' AND T2.label = 'carcinogenic'
SELECT T2.molecule_id FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'TR000_1' AND T2.bond_type = 'TR000_1_2'
SELECT atom_id FROM atom WHERE element = 'carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'carbon' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic' )
SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.element HAVING count(*) >= 1 AND T1.element = 'H' INTERSECT SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.element HAVING count(*) >= 1 AND T1.element = 'H'
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR124" AND T2.element = "carcinogenic"
SELECT element FROM atom WHERE atom_id = 186
SELECT bond_type FROM bond WHERE bond_id = 19 AND molecule_id = 4 AND bond_type = "TR007_4_19"
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T3.bond_type = "TR001_2_4"
{"sql": "SELECT count(*) , T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = \"double\" AND T1.label = \"TR006\" AND T1.label FROM molecule AS T1 JOIN bond AS T2 ON T1.m
SELECT T1.molecule_id , T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "carcinogen"
SELECT bond_type , T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id GROUP BY T1.element HAVING count(*) = 1
SELECT T2.molecule_id , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.bond_type = "triple"
SELECT element FROM atom WHERE bond_type = "TR000_2_3"
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'Cl'
SELECT T1.atom_id , count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" AND T2.label = "carcinogenic"
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element != 'S' AND bond_type = 'double')
SELECT label FROM molecule WHERE bond_type = "TR001_2_4" AND bond_id = 4
SELECT count(*) FROM atom WHERE molecule_id = 'TR001'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" AND T2.label = "carcinogenic"
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "c" EXCEPT SELECT T3.label FROM atom AS T3 JOIN molecule AS T4 ON T3.molecule_id = T4.molecule_id WHERE T3.element = "carcinogenic"
SELECT count(*) / (SELECT count(*) FROM atom WHERE element = 'Chlorine') FROM atom WHERE element = 'Chlorine'
SELECT molecule_id FROM bond WHERE bond_id = "TR001_1_7"
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "TR001_3_4"
SELECT bond_type FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id JOIN atom AS T3 ON T2.atom_id = T3.atom_id WHERE T3.atom_id1 = "TR000_1" AND T3.atom_id2 = "TR000_2"
SELECT molecule FROM atom WHERE atom_id = "TR000_2" INTERSECT SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.label = "TR000" AND T2.element = "carcinogenic"
SELECT count(*) / (SELECT count(*) FROM atom) FROM connected AS T1 JOIN bond AS T2 ON T1.bond_id = T2.bond_id WHERE bond_type = 'single'
SELECT count(*) FROM atom WHERE element = 'N'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "S" AND T1.bond_type = "double"
SELECT molecule_id FROM atom WHERE element != 'carcinogen' GROUP BY molecule_id HAVING count(*) > 5
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "double bond" JOIN molecule AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.label = "TR024"
SELECT molecule_id , label FROM atom GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T1.molecule_id = T3.molecule_id WHERE T3.bond_type = "triple bonded" GROUP BY T1.label
SELECT count(*) FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic' )
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.molecule_id BETWEEN TR004 AND TR010 AND T1.bond_type = "single"
SELECT count(*) FROM molecule AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T1.label = "TR008"
{"sql": "SELECT element FROM atom WHERE atom_id = \"TR004_7\" EXCEPT SELECT element FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT molecule_id FROM atom WHERE atom_id = \"TR004_7\" AND molecule_id IN (SELECT
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN molecule AS T3 ON T1.atom_id = T3.molecule_id WHERE T1.element = "O" AND T2.bond_type = "double"
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "triple bond" EXCEPT SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = "carcinogenic"
SELECT T1.element , T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = "TR002"
SELECT atom_id FROM atom WHERE molecule_id = 12 AND element = 'double bond'
SELECT atom_id FROM atom WHERE element = 'carcinogenic' INTERSECT SELECT atom_id FROM atom WHERE element = 'oxygen'
SELECT DISTINCT T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Incredibly powerful'
SELECT name FROM cards WHERE isNonFoilOnly != "true" AND cardKingdomFoilId != "1"
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE frameVersion = "2015" AND edhrecRank < 100
SELECT DISTINCT T1.name FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "gladiator" AND T1.rarity = "mythic"
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.type = 'cards' AND T2.hasAlternativeDeckLimit = 0
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" AND T1.power = "unknown"
SELECT T1.flavorText , T2.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.asciiName = "Stephen Daniel" AND T1.name = "Ruling"
SELECT * FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = 74
SELECT T1.name , T1.artist , T1.isPromo FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid GROUP BY T2.uuid ORDER BY count(*) DESC LIMIT 1
SELECT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.number = 29 AND T1.name = "Annul"
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "Japanese"
SELECT availability / count(*) * 100 FROM cards WHERE flavortext = 'Chinese Simplified'
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "Italian" GROUP BY T1.name
SELECT count(*) FROM cards WHERE artist = "Aaron Boyd" AND originalType = "card art"
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = 'infinite'
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen";
SELECT originalType FROM cards WHERE originalText = "Ancestor's Chosen"
SELECT T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode WHERE T1.name = 'Angel of Mercy'
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'restricted' INTERSECT SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T3 ON T1.uuid = T3.uuid WHERE T3.type = 'text'
SELECT T1.flavorText FROM foreign_data AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "Condemn"
SELECT count(*) FROM legalities WHERE status = 'restricted' AND isStarter = 1
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Cloudchaser Eagle"
SELECT TYPE FROM cards WHERE name = "Benalish Knight"
SELECT DISTINCT T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Benalish Knight"
SELECT artist FROM cards WHERE cardKingdomFoilId = "Phyrexian"
SELECT count(*) / (SELECT count(*) FROM cards) * 100 FROM cards WHERE isTextless = 'borderless'
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "de" AND T1.isReprint = 1
SELECT count(*) FROM cards WHERE isTextless = 'borderless' AND flavortext = 'Russian'
SELECT count(*) / (SELECT count(*) FROM cards WHERE isStorySpotlight = 'Y' AND language = 'French') FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.isStorySpotlight = 'Y'
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE scryfallillustrationid = (SELECT scryfallillustrationid FROM cards WHERE artist = "Aaron Boyd")
SELECT count(*) FROM cards WHERE borderColor = "black" AND cardKingdomFoilId = "mtgo"
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT cardKingdomFoilId FROM cards WHERE power = 'incredibly powerful' INTERSECT SELECT cardKingdomFoilId FROM cards WHERE hasNonFoil = 'true'
SELECT id FROM cards WHERE duelDeck = "a"
SELECT edhrecRank FROM cards WHERE frameVersion = 2015
SELECT DISTINCT artist FROM cards WHERE asciiName = "中文简化文字"
SELECT name FROM cards WHERE availability = 'paper' INTERSECT SELECT name FROM cards WHERE availability = 'paper' AND FOREIGN_data.flavortext = 'Japanese'
SELECT count(*) FROM cards WHERE borderColor = "white" AND colorIdentity = "banned";
SELECT T2.uuid , T3.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN set_translations AS T3 ON T2.uuid = T3.setcode WHERE T1.cardKingdomFoilId = "legacy"
SELECT text FROM rulings WHERE uuid IN (SELECT uuid FROM cards WHERE name = "Beacon of Immortality")
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion > "latest" GROUP BY T2.status
SELECT colorIdentity FROM cards WHERE cardKingdomFoilId = "OWG"
SELECT T1.name , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T1.convertedManaCost = 5 AND T1.setCode = "10E"
SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN set_translations AS T3 ON T3.setcode = T1.setcode WHERE T1.originaltype = "Creature" AND T1.originaltext = "Elf"
SELECT colorIndicator , format FROM cards WHERE id BETWEEN 1 AND 20
SELECT name FROM cards WHERE colorIndicator = "black" INTERSECT SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN foreign_data AS T3 ON T2.uuid = T3.uuid WHERE T3.language = "english"
SELECT name FROM cards WHERE rarity = 'uncommon' ORDER BY originalReleaseDate ASC
SELECT count(*) FROM cards WHERE isFoil = 'false' AND power = 'non-powerful' AND artist = "John Avon"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = 1;
SELECT count(*) FROM cards WHERE printings = "mtgo" AND availability = "available" AND artist = "UDON"
SELECT count(*) FROM cards WHERE frameVersion = "1993" AND hasContentWarning = 1 AND availability = "paper"
SELECT manaCost FROM cards WHERE layout = "normal" AND frameVersion = "2003" AND borderColor = "black" AND availability = "paper" AND availability = "mtgo"
SELECT sum(convertedManaCost) FROM cards WHERE id IN (SELECT id FROM cards WHERE artist = "Rob Alexander" )
SELECT DISTINCT TYPE FROM cards
SELECT setCode FROM set_translations WHERE language = "Spanish"
SELECT count(*) * 100.0 / count(*) FROM cards WHERE isOnlineOnly = 1 AND frameEffects = 'legendary'
SELECT id FROM cards WHERE isTextless = 'false'
SELECT count(*) , flavortext FROM foreign_data WHERE language = "Spanish" GROUP BY flavortext ORDER BY count(*) DESC LIMIT 1
SELECT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.totalSetSize = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode JOIN foreign_data AS T3 ON T3.uuid = T2.code WHERE T3.language = "br" AND T3.flavortext = "portuguese" AND T1.block = "commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT DISTINCT TYPE FROM cards WHERE TYPE LIKE "%ger%"
SELECT count(*) FROM cards WHERE power != 'triggered'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.uuid = T2.uuid WHERE T3.format = "pre-modern" AND T2.text = "This is a triggered mana ability." EXCEPT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.uuid = T2.uuid GROUP BY T1.uuid HAVING count(*) > 2
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "pauper" AND isReprint = "yes" AND isOnlineOnly = "no" FROM legalities WHERE format = "paper"
SELECT artist FROM cards WHERE text = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.flavorname FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "French" AND T2.type = "Creature" AND T2.borderColor = "black" AND T2.colorIdentity = "normal" AND T2.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = 'print' AND T2.date = "01/02/2007"
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = 'Ravnica' AND T2.setcode = 180
SELECT count(*) / (count(*) - count(*) WHERE hasContentWarning) FROM cards WHERE format = "commander" AND status = "legal"
SELECT count(*) FROM cards WHERE hasNonFoil = 'false' AND flavorText = 'French'
SELECT count(*) / count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T1.language = "Japanese" AND T2.type = "Expansion"
SELECT DISTINCT printings FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.faceName = "Daren Bader"
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor = "none"
SELECT count(*) FROM cards WHERE isOversized = 1 AND isReprint = 1 AND isPromo = 1
SELECT DISTINCT name FROM cards WHERE promoTypes = 'Promotion' AND mtgArenaId = 'Arena' ORDER BY name ASC LIMIT 3
SELECT flavorText FROM foreign_data WHERE multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId DESC LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT cardid FROM cards WHERE id NOT IN (SELECT id FROM cards WHERE count(*) > 1 AND subtypes = 'Angel' AND supertypes = 'Wizard')
SELECT name FROM sets WHERE isOnlineOnly = 'false' AND isFoilOnly = 'false' AND isNonFoilOnly = 'true' EXCEPT SELECT name FROM sets WHERE mtgoCode = 'Magic: The Gathering Online' ORDER BY name
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode JOIN sets AS T3 ON T2.setcode = T3.code WHERE T3.name = "Archenemy" AND T2.cardcode = "ARC"
SELECT T2.name , T3.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN foreign_data AS T3 ON T3.uuid = T2.name WHERE T1.code = 5
SELECT T2.language , T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.number = 206
SELECT T1.id , T2.code FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN foreign_data AS T3 ON T2.code = T3.setcode WHERE T3.language = "Italian" AND T2.setcode = "Shadowmoor" ORDER BY T1.id
SELECT setcode FROM cards WHERE hasfoil = 1 AND flavortext = "Japanese" INTERSECT SELECT setcode FROM cards WHERE hasfoil = 1 AND flavortext = "Japanese" AND isforeignonly = 0
SELECT setcode FROM cards GROUP BY setcode HAVING count(*) > (SELECT max(count) FROM cards) UNION SELECT setcode FROM cards GROUP BY setcode HAVING count(*) = (SELECT max(count) FROM cards)
SELECT count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode JOIN foreign_data AS T3 ON T2.code = T3.language WHERE T3.language = "Chinese Simplified" AND T1.isOnlineOnly
SELECT count(*) FROM sets WHERE isNonFoilOnly OR isFoilOnly = 'false' AND language = 'Japanese'
SELECT id FROM cards WHERE borderColor = "black"
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT id FROM cards WHERE isFullArt = 1 AND borderColor = "black"
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.id = 174
SELECT name FROM sets WHERE code = "ALL"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.faceName = "A Pedra Fellwar"
SELECT code FROM sets WHERE releaseDate LIKE "07/13/2007%"
SELECT baseSetSize , code FROM sets WHERE block = "Masques" INTERSECT SELECT baseSetSize , code FROM sets WHERE block = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT name , TYPE FROM cards WHERE watermark = 'boros'
SELECT T1.language , T1.flavorText , T2.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.colorIdentity = 'colorpie'
SELECT count(*) , convertedManaCost FROM cards WHERE convertedManaCost = 10 AND setCode = "Abyssal Horror" GROUP BY convertedManaCost
SELECT code FROM sets WHERE TYPE = "Expansion Commander"
SELECT DISTINCT T2.name , T2.type FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.watermark = 'abzan'
SELECT DISTINCT T1.language , T1.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'azorius'
SELECT count(*) FROM cards WHERE power = 'incredibly powerful' AND artist = 'Aaron Miller'
SELECT count(*) FROM cards WHERE hand > 0 AND cardKingdomFoilId = "paper"
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.text = 'text'
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT flavorName FROM cards WHERE isPromo = 'Y' GROUP BY flavorName HAVING count(*) >= 2
SELECT DISTINCT TYPE FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(*) FROM cards WHERE borderColor = "black" AND availability = "arena" INTERSECT SELECT count(*) FROM cards WHERE borderColor = "black" AND availability = "mtgo"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper" ORDER BY convertedManaCost DESC LIMIT 1;
SELECT artist FROM cards WHERE promoTypes = "Promotion" AND promoText = "Battra, Dark Destroyer"
SELECT name FROM cards WHERE frameVersion = "2003" ORDER BY convertedManaCost DESC LIMIT 3;
SELECT T1.flavorName FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.setCode = T2.setCode WHERE T1.language = "Italian" AND T2.name = "Ancestor's Chosen"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN foreign_data AS T3 ON T3.uuid = T2.baseSetSize WHERE T3.name = "Angel of Mercy"
SELECT name FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T2.language = "ko" AND T2.name = "Ancestor's Chosen"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.id = T2.id WHERE T2.flavorText = "Adam Rex"
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Eighth Edition" AND T1.language = "zh"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.name WHERE T1.flavorName = "Angel of Mercy" AND T2.isOnlineOnly
SELECT releaseDate FROM sets WHERE code = "ancestor's chosen"
SELECT DISTINCT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.translation = "Hauptset Zehnte Edition"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
{"sql": "SELECT count(*) FROM cards WHERE isForeignOnly = 1 AND isOnlineOnly = 0 AND isPartialPreview = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isStarter = 0 AND isPromo = 0 AND isReprint = 0 AND isReserved = 0 AND isSt
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "Italian" AND T1.baseSetSize < 100
SELECT count(*) FROM cards WHERE borderColor = "black" AND cardKingdomFoilId = "Coldsnap"
SELECT name FROM cards WHERE setcode = "Coldsnap" ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE setCode = "Coldsnap" INTERSECT SELECT artist FROM cards WHERE setCode = "Coldsnap" AND flavorText = "Jeremy Jarvis" INTERSECT SELECT artist FROM cards WHERE setCode = "Coldsnap" AND flavorText = "Aaron Miller" INTERSECT SELECT artist FROM cards WHERE setCode = "Coldsnap" AND flavorText = "Chippy"
SELECT cardKingdomId FROM cards WHERE setCode = "Coldsnap" AND cardKingdomFoilId = 4
SELECT count(*) FROM cards WHERE convertedManaCost > 5 AND power = "unknown" AND setCode = "Coldsnap"
SELECT flavorText FROM cards WHERE flavorName = "Ancestor's Chosen" AND flavorName LIKE "%Italian%"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.flavorText = "Ancestor's Chosen"
SELECT flavorText FROM foreign_data WHERE TYPE = "German" AND name = "Ancestor's Chosen"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setcode WHERE T2.language = "Italian" JOIN cards AS T3 ON T2.uuid = T3.uuid WHERE T3.setcode = "Coldsnap"
SELECT name FROM cards WHERE setcode = "Coldsnap" AND convertedmanaCost = (SELECT max(convertedmanaCost) FROM cards WHERE setcode = "Coldsnap") AND language = "Italian"
SELECT date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT count(*) * 100 / (SELECT sum(convertedManaCost) FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap") FROM cards WHERE convertedManaCost = 7 AND setCode = "Coldsnap"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Coldsnap' ) FROM cards WHERE cardKingdomFoilId = 'Coldsnap'
SELECT code FROM sets WHERE releaseDate = "2017/7/14";
SELECT keyruneCode FROM sets WHERE code = 'PKHC'
SELECT mcmId FROM sets WHERE code = "SS2"
SELECT T2.mcmName FROM sets AS T1 JOIN card AS T2 ON T1.code = T2.parentCode WHERE T1.releaseDate = "2017/6/9"
SELECT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.flavortext = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T1.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Ruling' AND T2.date = '2023-10-01' AND T1.artist = "Jim Pavelec"
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.code = T2.code WHERE T1.name = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.name = "Rinascita di Alara"
SELECT DISTINCT T1.type FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.translation = "Huitième édition"
SELECT T1.flavorName FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "French" AND T2.name = "Tendo Ice Bridge"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Tenth Edition"
SELECT T2.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T1.faceName = "Fellwar Stone" AND T2.language = "Japanese"
SELECT name FROM cards WHERE setCode = "Journey into Nyx Hero's Path" ORDER BY convertedManaCost DESC LIMIT 1
SELECT releaseDate FROM sets WHERE code = "Ola de frío"
SELECT T1.expansionType FROM sets AS T1 JOIN card_expansions AS T2 ON T1.code = T2.parentCode WHERE T2.cardid = (SELECT id FROM cards WHERE name = "Samite Pilgrim")
SELECT count(*) FROM cards WHERE convertedManaCost = '3' AND name = 'World Championship Decks 2004'
SELECT T1.translation FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code WHERE T2.name = "Mirrodin" AND T1.language = "zh"
SELECT count(*) * 100.0 / count(*) FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T2.language = "Japanese" AND T1.hasNonFoil = 1 AND T1.hasFoil = 0
SELECT count(*) , sum(isOnlineOnly) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T2.language = "português" GROUP BY T1.code HAVING sum(isOnlineOnly) > count(*)
{"sql": "SELECT printings FROM cards WHERE isTextless = 1 EXCEPT SELECT T1.printings FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = \"en\" AND T1.hasContentWarning = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil = 1 AND T1.isTextless = 1 AND T1.isReprint = 1 AND T1.isPromo = 1 AND T1.isStarter = 1 AND T1.isOnlineOnly = 1 AND T1.isFoil = 1 AND T1.isNonFoil =
SELECT code FROM sets GROUP BY code ORDER BY count(*) DESC LIMIT 1
SELECT T1.artist FROM cards AS T1 JOIN foreign_data AS T2 ON T1.scryfallillustrationid = T2.uuid ORDER BY convertedManaCost DESC LIMIT 1
SELECT frameEffects FROM cards WHERE power = 'incredibly powerful' GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE hasNonFoil = 'false' AND hasFoil = 'true' AND power != "unknown" AND duelDeck = "A"
SELECT id FROM sets WHERE TYPE = "Commander" AND mcmName LIKE "%Promotion%" AND mcmName LIKE "%Supplemental%" EXCEPT SELECT id FROM sets WHERE TYPE = "Commander" AND mcmName LIKE "%Alchemy%"
SELECT name FROM cards ORDER BY convertedManaCost DESC LIMIT 10;
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.releaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "French" AND T1.artist = "Volkan BaÇµa"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "Rare" AND T2.status = "Legal" AND T2.format = "Legal"
SELECT format , T2.name FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.status = 'banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Battlebond"
SELECT T1.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = (SELECT min(format) FROM cards)
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = 1997 AND T1.format = "legacy" AND T1.status = "sensitive" INTERSECT SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.frameVersion = 1997 AND T1.format = "legacy" AND T1.status = "Wizards of the Coast"
SELECT name , T1.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.edhrecRank = 1 ORDER BY T1.edhrecRank LIMIT 1
SELECT avg(T2.number) , T1.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.setcode WHERE T1.originalReleaseDate >= '01/01/2012' AND T1.originalReleaseDate <= '12/31/2015' GROUP BY T1.flavorName
SELECT artist FROM cards WHERE isOnlineOnly = 'isOnlineOnly' AND borderColor = 'black' AND cardKingdomFoilId = 'mtgarena'
SELECT uuid FROM legalities WHERE format = 'old school'
SELECT count(*) FROM cards WHERE isOnlineOnly = 'paper' AND artist = "Matthew D. Wilson"
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Kev Walker' ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.name = 'Hour of Devastation'
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE language = "Japanese") INTERSECT SELECT name FROM sets WHERE code IN (SELECT setcode FROM set_translations WHERE language = "Korean")
SELECT DISTINCT T1.frameEffects , T1.frameVersion FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN set_translations AS T3 ON T2.setCode = T3.setCode WHERE T3.language = "en" AND T3.setCode = "cards" AND T1.isFullArt = 1 AND T1.isOnlineOnly = 1 AND T1.isReprint = 0 AND T1.isPromo = 0 AND T1.isStarter = 0 AND T1.isStoryspotlight = 0 AND T1.isTextless = 0 AND T1.isTimeshifted = 0 AND T1.isFoil = 0 AND T1.isNonFoil = 0 AND T1.isAlternative = 0 AND T1.isReserved = 0 AND T1.isPromo = 0 AND T1.isStarter = 0 AND T1.isStoryspotlight = 0 AND T1.isTextless = 0 AND T1.isTimeshifted = 0
SELECT DisplayName FROM users WHERE Reputation = (SELECT Reputation FROM users WHERE DisplayName = "Harlan") OR DisplayName = "Jarrod Dixon"
SELECT DisplayName FROM users WHERE CreationDate LIKE "2011%"
SELECT count(*) FROM users WHERE lastaccessdate > '2014/9/1'
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT count(*) FROM users WHERE upvotes > 100 AND downvotes > 100
SELECT count(*) FROM users WHERE accountid = (SELECT accountid FROM users WHERE views > 10 AND creationdate > 2013)
SELECT count(*) FROM posts WHERE OWNERUSERID = "csgillespie"
SELECT TITLE FROM posts WHERE OWNER_userid = 9553823
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts WHERE OWNER_userid = 'csgillespie' ORDER BY viewcount DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId ORDER BY T2.Score DESC LIMIT 1
SELECT sum(commentcount) FROM posts WHERE owneruserid = (SELECT id FROM users WHERE displayname = "Csgillespie" )
SELECT AnswerCount FROM posts WHERE OWNERUserId = "csgillespie" GROUP BY AnswerCount ORDER BY AnswerCount DESC LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Text = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Csgillespie" AND T1.ParentId = "null"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.OwnerDisplayName = 'well-finished'
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Age > 50 AND T1.Score > 19
SELECT T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Body = "Eliciting priors from experts"
SELECT T2.Body FROM tags AS T1 JOIN posts AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.Id = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Csgillespie"
SELECT T2.name FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.displayname = "csgillespie";
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Csgillespie" AND T1.Date = 2011
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.Id ORDER BY count(*) DESC LIMIT 1
SELECT avg(score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Csgillespie"
SELECT avg(T1.name) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.views > 200
SELECT count(*) , count(*) / (count(*) + 1) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Age > 35 AND T1.Score > 5
SELECT T2.Views FROM votes AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.creationdate = "2010/7/19" AND T2.reputation = 58
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival"
SELECT t1.title FROM posts AS t1 JOIN comments AS t2 ON t1.id = t2.postid ORDER BY t2.score DESC LIMIT 1
SELECT commentcount FROM posts WHERE viewcount = 1910
SELECT FavoriteCount FROM posts WHERE PostId = (SELECT PostId FROM comments WHERE CreationDate = "2014/4/23 20:29:39" AND UserId = 3025)
SELECT Text FROM comments WHERE PostId = 107829
SELECT T1.PostId FROM posts AS T1 JOIN postHistory AS T2 ON T1.id = T2.postid WHERE T2.creationdate = '2013/7/12' AND T2.userid = 23853 AND T2.comment = '9:08:18'
SELECT T2.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Id = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.DisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 1 AND T2.PostId = 6347
SELECT sum(T2.VoteTypeId) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "Data Visualization"
SELECT T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) , count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T3.Id = T1.UserId WHERE T3.Reputation = 24
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE Score = 17
SELECT id FROM users WHERE website_url = 'http://stackoverflow.com'
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion.'
SELECT T1.OwnerUserId , T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = 'Understanding what Dassault iSight is doing?'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost?'
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Necromancer" LIMIT 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.Title FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T2.UserId = T3.Id WHERE T3.DisplayName = "Vebjorn Ljosa"
SELECT sum(T1.Score) , T2.WebsiteUrl FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.LastEditorUserId = T2.Id AND T2.DisplayName = "Yevgeny"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation' AND T1.UserId = users.Id
SELECT sum(T2.BountyAmount) FROM posts AS T1 JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'data'
SELECT T1.UserId FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = 50 INTERSECT SELECT T1.UserId FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.PostId IN (SELECT PostId FROM posts WHERE title LIKE "%variance%" AND T2.BountyAmount = 50)
SELECT avg(T1.ViewCount) , T2.Title , T2.CommentCount FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.Tags = "humor" GROUP BY T2.Title
SELECT count(*) FROM comments WHERE UserId = 13
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY ViewCount ASC LIMIT 1
SELECT count(DISTINCT T1.UserId) FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'Supporter' AND T2.Date = 2011
SELECT count(DISTINCT T1.UserId) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId HAVING count(*) > 5
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "New York" AND T1.Name = "Teacher" INTERSECT SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Supporter"
SELECT T1.Reputation , T2.OwnerUserId FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId WHERE T2.PostId = 1
SELECT T1.UserId FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId GROUP BY T1.UserId HAVING COUNT(*) = 1 INTERSECT SELECT T1.UserId FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId JOIN posts AS T3 ON T2.PostId = T3.Id GROUP BY T1.UserId HAVING COUNT(*) >= 1000
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T2.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "India"
SELECT avg(100 * (date2 - date1) / date1) FROM badges AS date1 JOIN badges AS date2 ON date1.date = date2.date WHERE date1.year = 2010 AND date2.year = 2011
SELECT posthistorytypeid , count(DISTINCT userid) FROM posthistory WHERE postid = 3720 GROUP BY posthistorytypeid
SELECT T1.Title , T1.ViewCount FROM posts AS T1 JOIN postlinks AS T2 ON T1.Id = T2.PostId WHERE T2.RelatedPostId = 61217 GROUP BY T1.Id ORDER BY T1.ViewCount DESC
SELECT T2.Score , T1.LinkTypeId FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.PostId = 395
SELECT postid , OWNERuserid FROM posts WHERE score > 60
SELECT sum(favoritecount) FROM posts WHERE YEAR(CreationDate) = 2011 AND userid = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE id IN (SELECT id FROM posts GROUP BY id HAVING count(*) > 10)
SELECT count(DISTINCT userid) FROM badges WHERE name = "Announcer"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.creationdate = "07/19/2010 7:39:08:PM"
SELECT count(*) FROM comments WHERE score > 0
SELECT Text FROM comments WHERE CreationDate LIKE "7/19/2010 7:25:47 PM";
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id ORDER BY T2.reputation DESC LIMIT 1
SELECT T1.Reputation FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Date LIKE "7/19/2010 7:39:08:PM"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = "Rochester, NY"
SELECT count(*) , T1.id FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = "Teacher" GROUP BY T1.id HAVING count(*) > 1
SELECT count(*) , avg(age) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.user_id WHERE T2.name = "Organizer" GROUP BY T1.id HAVING avg(age) >= 18
SELECT T1.Score FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "2010-07-19 19:56:19"
SELECT T2.Text FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T1.CreationDate = "2010-07-19 19:37:33"
SELECT T1.Age FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Location = "Vienna, Austria"
SELECT count(*) FROM badges WHERE name = 'Supporter'
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Date LIKE "7/19/2010 7:39:08:PM"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id ORDER BY T2.reputation LIMIT 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Sharpie"
SELECT count(*) FROM badges WHERE name = 'Supporter' AND UserId = users.Id WHERE users.age > 65
SELECT DisplayName FROM users WHERE Id = 30;
SELECT count(*) FROM users WHERE LOCATION = "New York"
SELECT count(*) FROM votes WHERE creationdate LIKE "2010%";
SELECT count(*) FROM users WHERE Age > 25
SELECT DisplayName FROM users ORDER BY Views DESC LIMIT 1
SELECT sum(T2.VoteAmount) , sum(T3.VoteAmount) FROM votes AS T1 JOIN votes AS T2 ON T1.UserId = T2.UserId WHERE T1.creationdate LIKE "%2010%" GROUP BY T1.voteTypeID , T1.creationdate UNION SELECT sum(T2.VoteAmount) , sum(T3.VoteAmount) FROM votes AS T2 JOIN votes AS T3 ON T2.UserId = T3.UserId WHERE T2.creationdate LIKE "%2011%" GROUP BY T2.voteTypeID , T2.creationdate
SELECT T2.TagName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId JOIN tags AS T3 ON T2.Tags = T3.Id WHERE T1.DisplayName = "John Salvatier"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Daniel Vassallo"
SELECT sum(T1.DownVotes) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "Harlan"
SELECT PostId FROM posts WHERE OwnerUserId = "Slashnick" ORDER BY AnswerCount DESC LIMIT 1
SELECT max(ViewCount) FROM posts WHERE OWNERUSERID = "Harvey Motulsky" INTERSECT SELECT max(ViewCount) FROM posts WHERE OWNERUSERID = "Noah Snyder"
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.OwnerUserId = "Matt Parker" AND T1.VoteTypeId = 1 AND T1.UserId = "Matt Parker" GROUP BY T1.PostId HAVING count(*) > 4;
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.OwnerUserId = users.Id AND users.DisplayName = "Neil McGuigan" AND T1.Text < 0
SELECT DISTINCT T2.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.Id WHERE T1.OwnerDisplayName = "Mark Meckes" EXCEPT SELECT DISTINCT T2.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.Id JOIN comments AS T3 ON T1.Id = T3.PostId
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Organizer"
SELECT count(*) , count(*) / (SELECT count(*) FROM posts WHERE posttype = "R") FROM posts WHERE community_owned_date = "Community"
SELECT T1.ViewCount - T2.ViewCount FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Mornington" DIFFERENCE FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Amos"
SELECT count(*) FROM badges WHERE date = "2014";
SELECT count(*) FROM posts WHERE creationdate LIKE "%21 July 2010%"
SELECT DisplayName , Age FROM users ORDER BY Views DESC LIMIT 1
SELECT T1.LastEditDate , T1.LastEditorUserId FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T2.Text = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text LIKE "%negative%";
SELECT T1.Title , T2.UserDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score > 50
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = "North Pole" AND T1.date = 2011
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.FavoriteCount > 150
SELECT count(*) , lasteditdate FROM posts WHERE title = "What is the best introductory Bayesian statistics textbook" GROUP BY title
SELECT T1.LastAccessDate , T1.Location FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Outlier"
SELECT t1.title FROM posts AS t1 JOIN postlinks AS t2 ON t1.id = t2.postid JOIN posthistory AS t3 ON t2.postid = t3.postid WHERE t3.text = "How to tell if something happened in a data set which monitors a value over time"
SELECT T2.Id , T2.Name FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = "Samuel" AND T2.Date = 2013
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY ViewCount DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Tags.ExcerptPostId = (SELECT ExcerptPostId FROM tags WHERE TagName = "hypothesis-testing")
SELECT T2.RelatedPostId , T2.LinkTypeId FROM posts AS T1 JOIN postLinks AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What are principal component scores?"
SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.Id ORDER BY T2.Score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.VoteTypeId = 8 ORDER BY T2.BountyAmount DESC LIMIT 1
SELECT Title FROM posts ORDER BY ViewCount DESC LIMIT 5
SELECT count(*) FROM posts AS T1 JOIN tags AS T2 ON T1.tags = T2.id WHERE T1.viewcount BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts ORDER BY Score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.creationdate LIKE "2011%" AND T1.bountyamount = 50
SELECT id FROM users ORDER BY age LIMIT 1
SELECT sum(score) FROM posts WHERE creationdate = "2010-07-19";
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.AnswerCount <= 2 AND T1.creationdate LIKE "2010%"
SELECT postid FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.userid = 1465 ORDER BY T2.score DESC LIMIT 1
SELECT t1.title FROM posts AS t1 JOIN postlinks AS t2 ON t1.id = t2.postid ORDER BY creationdate LIMIT 1
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T1.Id ORDER BY COUNT(*) DESC LIMIT 1
SELECT creationdate FROM votes AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.tags.id = 1 AND T2.tagname = 'chl' ORDER BY creationdate LIMIT 1
SELECT creationdate FROM users AS T1 JOIN posthistory AS T2 ON T1.id = T2.userdisplayname WHERE T1.age = (SELECT min(age) FROM users)
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = "Autobiographer" ORDER BY T2.Date LIMIT 1
SELECT count(*) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owner_userid WHERE T1.location = "United Kingdom" AND T2.favoritecount >= 4
SELECT avg(upvotes) FROM users WHERE age = (SELECT max(age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age = "Adult"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Jay Stevens" AND T1.CreaionDate LIKE "2010%";
SELECT postid , title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = "Harvey Motulsky" ORDER BY T1.viewcount DESC LIMIT 1;
SELECT PostId , Title FROM posts ORDER BY Score DESC LIMIT 1
SELECT avg(T1.Score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Stephen Turner"
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.ViewCount > 20000 AND T2.CreationDate LIKE "2011%"
SELECT postid , ownerdisplayname FROM posts WHERE creationdate LIKE "2010%" ORDER BY score DESC LIMIT 1
SELECT count(*) , count(*) / (SELECT count(*) FROM users WHERE reputation > 1000) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.CreaionDate LIKE "2011%"
SELECT avg(Views) FROM users WHERE Age < 18
SELECT sum(viewcount) , lasteditoruserid FROM posts WHERE title = 'Computer Game Datasets' GROUP BY lasteditoruserid
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.score = (SELECT max(score) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id)
SELECT count(*) FROM posts WHERE viewcount > 35000 AND commentcount = 0
SELECT T1.DisplayName , T1.Location FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.PostId = 183
SELECT T1.name , T1.date FROM badges AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'Emmett' ORDER BY T1.date DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid JOIN posts AS T3 ON T2.postid = T3.id WHERE T3.answercount > 5000
SELECT T1.Date - T2.CreationDate FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Zolomon'
SELECT count(*) , count(*) FROM posts AS T1 JOIN posthistory AS T2 ON T1.id = T2.postid JOIN users AS T3 ON T2.userid = T3.id WHERE T3.accountid = (SELECT accountid FROM users ORDER BY creationdate LIMIT 1)
SELECT T1.Text , T2.DisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN posts AS T3 ON T1.PostId = T3.Id WHERE T3.Title = 'Analysing wind data with R' ORDER BY T1.CreationDate DESC LIMIT 10
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM tags AS T JOIN posts AS P ON T.ExcerptPostId = P.Id WHERE T.TagName = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT commentcount , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT creationdate FROM users WHERE accountid = (SELECT accountid FROM users WHERE displayname = 'IrishStat')
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT T2.OwnerDisplayName , T1.Score FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.Score > 50
SELECT count(*) FROM posts WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T1.Reputation , T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "fine, you win :)"
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Type = 'linear regression'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount BETWEEN 100 AND 150 ORDER BY T1.Score DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text LIKE "%webiste%"
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T1.score = 0 AND T2.viewcount < 5
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CommentCount = 1 AND T1.Score = 0
SELECT count(DISTINCT T1.age) FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userid WHERE T2.score = 0 AND T1.age = 40
SELECT postid , count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.title = "Group differences on a five point Likert item" GROUP BY T1.postid
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Text = "R is also lazy evaluated."
SELECT T1.Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T1.UserDisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 1 AND 5 AND T2.DownVotes = 0
SELECT count(*) * 100.0 / count(*) FROM users WHERE upvotes = 0 AND score BETWEEN 5 AND 10
SELECT power_name FROM superpower WHERE power_name LIKE "%3-D%"
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength" AND T3.height_cm > 200
SELECT t1.full_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.id HAVING count(*) > 15
SELECT count(*) FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T1.colour = "blue"
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = 'Apocalypse'
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.eye_colour_id IN (SELECT id FROM colour WHERE colour = "Blue") AND T2.power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT id FROM colour WHERE attribute_value = "blue") AND hair_colour_id = (SELECT id FROM colour WHERE attribute_value = "blond")
SELECT count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics'
SELECT superhero_name FROM superhero WHERE publisher_id = 1 ORDER BY height_cm DESC
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name = "Sauron"
SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id GROUP BY T1.eye_colour_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength' AND T1.publisher_id = 'Marvel Comics'
SELECT count(*) FROM superhero WHERE publisher_id IN (SELECT publisher_name FROM publisher WHERE publisher_name = 'DC Comics')
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = "gold" AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = "Marvel Comics")
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Blue Beetle II"
SELECT count(*) FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.hair_colour_id WHERE T1.colour = "blonde"
SELECT superhero_name FROM superhero ORDER BY full_name LIKE "% dumb %" LIMIT 1
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.superhero_name = 'Copycat'
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id JOIN attribute AS T3 ON T2.attribute_id = T3.id WHERE T3.attribute_name = "durability" AND T3.attribute_value < 50
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'death touch'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND weight_kg = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 1 AND race_id = 3;
SELECT count(*) , count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' AND T1.gender_id = 'superhero' AND T1.full_name = 'Superhero' AND T1.superhero_name = 'Superhero' AND T1.gender_id = 'male' AND T1.eye_colour_id = 'green' AND T1.height_cm = 170 AND T1.weight_kg = 70
SELECT T2.publisher_name , count(*) - count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name LIKE '%DC%' INTERSECT SELECT T2.publisher_name , count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.full_name LIKE '%Marvel Comics%' GROUP BY T2.publisher_name ORDER BY count(*) DESC LIMIT 1
SELECT publisher_id FROM publisher WHERE publisher_name = "Star Trek"
SELECT avg(T1.attribute_value) FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id
SELECT count(*) FROM superhero WHERE full_name = "null"
SELECT T2.eye_colour FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.id = 75
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Deathlok'
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 2
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.gender_id = 1
SELECT superhero_name FROM superhero
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT T1.superhero_name FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T2.colour = 'blue'
SELECT t5.power_name FROM hero_power AS t1 JOIN superpower AS t2 ON t1.power_id = t2.id JOIN superhero AS t3 ON t1.hero_id = t3.id WHERE t3.id = 56
SELECT full_name FROM superhero WHERE gender_id = 1 AND race_id = 1 AND gender = 'Demi-God'
SELECT count(*) FROM superhero WHERE full_name LIKE "%bad%"
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) , T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.height_cm BETWEEN 150 AND 180 AND T1.publisher_name = 'Marvel Comics' GROUP BY T1.publisher_name
SELECT superhero_name FROM superhero WHERE gender_id = 1 AND weight_kg > (SELECT avg(weight_kg) FROM superhero) / 100
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.attribute_value FROM hero_attribute AS t1 JOIN attribute AS t2 ON t1.attribute_id = t2.id JOIN superhero AS t3 ON t1.hero_id = t3.id WHERE t3.superhero_name = "Abomination"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.id = 1
SELECT count(DISTINCT T1.hero_id) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T2.power_name = 'Stealth'
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = 'strength' ORDER BY t3.attribute_name DESC LIMIT 1
SELECT avg(full_name) FROM superhero WHERE skin_colour_id = "null"
SELECT count(*) FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T1.publisher_name = "Dark Horse Comics"
SELECT T1.superhero_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id JOIN superpower AS T3 ON T3.id = T4.id JOIN hero_power AS T5 ON T5.hero_id = T4.hero_id JOIN superhero AS T6 ON T6.id = T5.hero_id JOIN superpower AS T7 ON T7.id = T8.id JOIN hero_attribute AS T9 ON T9.hero_id = T8.hero_id JOIN attribute AS T10 ON T10.id = T9.attribute_id WHERE T2.publisher_name = 'Dark Horse Comics' AND T3.power_name = 'Durability' GROUP BY T1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.eye_colour_id FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T1.superhero_name = "Abraham Sapien"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Flight'
SELECT T1.eye_colour_id , T1.hair_colour_id , T1.skin_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id AND T2.gender_id = 10 AND T2.publisher_id = 25 AND T2.publisher_name = "Dark Horse Comics"
SELECT T2.publisher_name FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T1.id = T2.skin_colour_id AND T1.id = T2.eye_colour_id AND T1.id = T2.eye_colour_id AND T1.id = T2.hair_colour_id
SELECT T1.group_name FROM hero_group AS T1 JOIN superhero AS T2 ON T1.id = T2.group_id WHERE T2.superhero_name = 'A-Bomb'
SELECT count(*) , gender_id , gender FROM superhero WHERE gender_id = 2 AND gender = 'female' GROUP BY gender_id HAVING count(*) > 0
SELECT T2.superhero_name , T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.superhero_name = "Charles Chandler"
SELECT gender FROM superhero WHERE gender_id = 13
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'adaptation'
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Amazo"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id IN (SELECT id FROM colour WHERE colour = "amber")
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT colour.id FROM colour WHERE colour.name = "black") INTERSECT SELECT superhero_name FROM superhero WHERE hair_colour_id = (SELECT colour.id FROM colour WHERE colour.name = "black")
SELECT eye_colour_id FROM superhero WHERE skin_colour_id = (SELECT id FROM colour WHERE colour = "gold")
SELECT superhero_name , full_name FROM superhero WHERE race_id = 1 AND gender_id = 2 AND gender = 'Vampire'
SELECT superhero_name FROM superhero WHERE alignment_id = 1 AND gender_id = 1 AND alignment = "neutral"
SELECT count(DISTINCT hero_id) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute WHERE attribute_value = 'strength')
SELECT T2.race , T2.alignment FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T1.full_name = "Cameron Hicks"
SELECT count(*) * 100 / count(*) FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T2.publisher_name = 'Marvel Comics' AND T1.gender_id = 2
SELECT avg(weight_kg) FROM superhero WHERE race_id = 11111
SELECT weight_kg - height_cm FROM superhero WHERE superhero_name = "Emil Blonsky" EXCEPT SELECT weight_kg - height_cm FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = 'Abomination'
SELECT count(*) FROM superhero WHERE race_id = (SELECT race_id FROM race WHERE race = 'god/eternal') AND gender_id = 1
SELECT superhero_name FROM superhero ORDER BY height_cm LIMIT 1
SELECT count(*) FROM superhero WHERE alignment_id = "neutral"
SELECT T1.attribute_name , T2.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id WHERE T1.attribute_name = '3-D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" INTERSECT SELECT superhero_name FROM superhero WHERE hair_colour_id = "brown"
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Hawkman" INTERSECT SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Karate Kid" INTERSECT SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.superhero_name = "Speedy"
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) , avg(T2.eye_colour_id) FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T1.id = 31 AND T2.eye_colour_id = 16 GROUP BY T2.eye_colour_id
SELECT count(*) , count(*) FROM superhero WHERE gender_id = 1 : 2
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294;
SELECT superhero_name , full_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T3.power_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T1.full_name = 'Helen Parr'
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT T2.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.id = 38
SELECT T1.race FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id GROUP BY T1.id ORDER BY max(T2.attribute_value) LIMIT 1
SELECT T1.alignment_id , T1.alignment FROM alignment AS T1 JOIN superhero AS T2 ON T1.id = T2.alignment_id WHERE T2.superhero_name = "Atom IV"
SELECT T1.full_name FROM superhero AS T1 JOIN colour AS T2 ON T1.eye_colour_id = T2.id WHERE T2.colour = "blue"
SELECT avg(T1.attribute_value) FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.hero_id = T2.id WHERE T2.gender_id = 1 AND T2.full_name LIKE "%neutral%"
SELECT T1.skin_colour_id FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.skin_colour_id WHERE T2.attribute_value = 100
SELECT count(*) FROM superhero WHERE gender_id = 2 AND full_name LIKE "%female%"
SELECT T1.superhero_name FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value BETWEEN 75 AND 80
SELECT T2.race FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.hair_colour_id WHERE T1.colour = "blue" AND T2.gender_id = 1 AND T2.full_name LIKE "%male%"
SELECT count(*) , gender FROM superhero WHERE gender_id = 2 GROUP BY gender_id HAVING count(*) > 100
SELECT count(*) - count(*) FROM superhero WHERE weight_kg = "missing" AND eye_colour_id IN (1, 2)
SELECT full_name FROM superhero WHERE superhero_name = 'Hulk' AND gender_id = 1
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Ajax"
SELECT count(*) FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T1.colour.id = 1 AND T2.skin_colour_id = 1
SELECT count(*) FROM superhero WHERE gender_id = 2 AND publisher_id = 1001 AND superhero_name LIKE "%Marvel%"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.hero_id WHERE t2.power_name = "wind" ORDER BY t1.superhero_name
SELECT T1.gender FROM gender AS T1 JOIN superhero AS T2 ON T1.id = T2.gender_id JOIN hero_power AS T3 ON T2.id = T3.hero_id JOIN superpower AS T4 ON T3.power_id = T4.id WHERE T4.power_name = 'Phoenix Force'
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_id = 505 AND superhero_name LIKE '%non-human%' AND race_id = 123 AND publisher_name = 'Dark Horse Comics'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND eye_colour_id = 1 AND hair_colour_id = 1 AND skin_colour_id = 1 AND race_id = 1 AND publisher_id = 1 AND alignment_id = 1 AND superhero_name = 'Fastest'
SELECT count(*) FROM superhero WHERE publisher_id = 'DC' DIFFERENCE FROM superhero WHERE publisher_id = 'Marvel Comics'
SELECT attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = 'weakest' AND T1.hero_id = (SELECT id FROM superhero WHERE full_name = 'Black Panther' AND gender_id = 1)
SELECT eye_colour_id FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) , gender FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id JOIN publisher AS T3 ON T1.publisher_id = T3.id WHERE T3.publisher_name = 'George Lucas' GROUP BY T1.gender_id HAVING count(*) > 1
SELECT count(*) , avg(gender) FROM superhero WHERE gender = 'good' AND publisher_name = 'Marvel Comics'
SELECT count(*) FROM superhero WHERE full_name LIKE "%John%"
SELECT hero_id FROM hero_attribute ORDER BY attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT T1.full_name FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id JOIN gender AS T3 ON T1.gender_id = T3.id JOIN race AS T4 ON T1.race_id = T4.id WHERE T1.weight_kg < 100 AND T1.eye_colour_id = 50 AND T1.full_name LIKE '%brown%'
SELECT T1.attribute_value FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1 AND alignment_id = 1
SELECT T1.id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Inteligence'
SELECT T2.eye_colour FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T1.race = "Blackwulf"
SELECT power_name FROM superpower WHERE power_name = (SELECT max(power_name) FROM superpower WHERE height_cm > (SELECT avg(height_cm) FROM superhero))
SELECT T1.driverRef FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 20 AND T3.round = 1
SELECT T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 19 AND T2.position = 2 ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T2.year FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Shanghai"
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Germany"
SELECT T2.position FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T1.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid NOT IN (SELECT circuitid FROM circuits WHERE country != 'Asia' AND country != 'Europe')
SELECT T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Spain"
SELECT DISTINCT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT * FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit";
SELECT TIME FROM races WHERE circuitid = (SELECT circuitid FROM circuits WHERE name = "Sepang International Circuit")
SELECT T1.lng , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Abu Dhabi Grand Prix";
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.raceid = 24 AND T3.constructorid = T1.constructorid AND T3.points = 1
SELECT q1 FROM qualifying WHERE raceid = 354 AND driverid = 1924;
SELECT T1.nationality FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.number = 355 AND T2.q1 = "Q1" AND T2.q2 = "0:01:40";
SELECT T1.number FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 0 AND T2.raceid = 903 AND T2.q1 = "0:01:54";
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 EXCEPT SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 AND T1.statusid = 2
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(DISTINCT driverId) FROM results WHERE raceId IN (SELECT raceId FROM races WHERE date LIKE "%2015/%11/%29%");
SELECT T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 592 ORDER BY T1.dob DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 1 AND T2.position = 1 AND T2.time LIKE "0:01:27%" AND T2.raceid = 161;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "933" ORDER BY T2.position = 1 LIMIT 1
SELECT T1.lng , T1.lng FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.id = 9 ORDER BY T2.points DESC LIMIT 1
SELECT T1.position FROM constructorStandings AS T1 JOIN qualifying AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = "Lucas di Grassi" AND T3.round = 345
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.id = 347 AND T2.position = "Q2" AND T2.milliseconds = 1000 AND T2.time = "0:01:15"
SELECT T1.code FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 45 AND T2.q3 = "0:01:33"
SELECT T1.milliseconds FROM laptimes AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Bruce" AND T3.surname = "McLaren" AND T2.round = 743;
SELECT T1.position FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2006 AND T2.name = "San Marino Grand Prix" ORDER BY T1.position ASC LIMIT 1
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.raceid = 901
SELECT count(*) FROM results WHERE raceid = (SELECT raceid FROM races WHERE YEAR = 2015 AND date LIKE "2015/11/29") AND statusid = 0
SELECT T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.raceid = 872 ORDER BY T1.dob LIMIT 1;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.round = 348 ORDER BY T2.lap DESC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid ORDER BY T2.fastestlapspeed LIMIT 1
SELECT (position - 1) / position FROM results WHERE raceid = 853 ORDER BY fastestlapspeed LIMIT 1 OFFSET 1
SELECT T2.driverid , T1.laps FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.date = "1983/7/16"
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "Singapore Grand Prix";
SELECT count(*) , T1.name FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year = 2005 ORDER BY T1.name DESC LIMIT 1
SELECT name FROM races ORDER BY YEAR , MONTH LIMIT 1
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT name FROM races WHERE YEAR = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "European Grand Prix" ORDER BY T1.country LIMIT 1;
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = "British Grand Prix" AND T2.circuitid = "Brands Hatch";
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit" AND T1.name = "United Kindom grand prix"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2010 AND T3.name = "Singapore Grand Prix" ORDER BY T2.position
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.points = (SELECT max(points) FROM driverstandings)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T2.position DESC LIMIT 3;
SELECT T1.driverref , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid JOIN laptimes AS T3 ON T1.driverid = T3.driverid AND T2.raceid = T3.raceid ORDER BY T3.milliseconds LIMIT 1
SELECT avg(T1.milliseconds) FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Malaysian Grand Prix" AND T2.statusid = 1 AND T2.driverid = "Lewis Hamilton";
SELECT percentage FROM results AS T1 JOIN circuits AS T2 ON T1.raceid = T2.circuitid WHERE T1.year = 2010 AND T1.position != 1 AND T1.driverid = 829442
SELECT T1.surname , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY T2.wins DESC LIMIT 1
SELECT dob , surname FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T1.name , T1.location , T2.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2006 AND T1.country = 'USA'
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.date LIKE "%9月%"
{"sql": "SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.surname = \"Alex\" AND T3.surname = \"Yoong\" AND T1.name != \"Constructor\" AND T1.name != \"Constructor Results\" AND T1.name != \"Constructor Standings\" AND T1.name != \"Seasons\" AND T1.name != \"Circuits\" AND T1.name != \"Pit Stops\" AND T1.name != \"Lap Times\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\" AND T1.name != \"Driver Standings\"
SELECT count(*) FROM races AS T1 JOIN constructorstandings AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.name = "Michael Schumacher" AND T1.circuitid = (SELECT circuitid FROM circuits WHERE name = "Sepang International Circuit")
SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T2.driverid = T3.driverid JOIN drivers AS T4 ON T3.driverid = T4.driverid WHERE T4.forename = "Michael" AND T4.surname = "Schumacher" AND T2.position = 1 AND T2.fastestlapspeed = (SELECT max(T2.fastestlapspeed) FROM results AS T2 JOIN driverstandings AS T3 ON T2.driverid = T3.driverid JOIN drivers AS T4 ON T3.driverid = T4.driverid WHERE T4.forename = "Michael" AND T4.surname = "Schumacher")
SELECT avg(T1.points) FROM constructorstandings AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid AND T1.driverid = T2.driverid WHERE T2.year = 2000 AND T1.position = 1 AND T2.statusid = 1 AND T1.constructorid = 2255 AND T1.positiontext = "1" AND T2.positiontext = "2" AND T2.statusid = 1
SELECT T1.name , T1.position FROM races AS T1 JOIN constructorstandings AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T2.constructorid = T3.constructorid WHERE T3.driverid = T1.driverid AND T3.status = '1' AND T1.name = "Lewis Hamilton"
SELECT name , circuit.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T1.circuitref FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid GROUP BY T2.raceid ORDER BY sum(T2.laps) DESC LIMIT 1
SELECT count(*) / count(*) FROM races WHERE country = 'Europe' INTERSECT SELECT count(*) / count(*) FROM races WHERE country = 'Germany'
SELECT lat , lng FROM circuits WHERE name = 'Silverstone Circuit'
SELECT circuitRef FROM circuits WHERE name = 'Silverstone Circuit' ORDER BY lat DESC LIMIT 1 UNION SELECT circuitRef FROM circuits WHERE name = 'Hungaroring' ORDER BY lat DESC LIMIT 1
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = "null"
SELECT country FROM drivers WHERE dob = (SELECT max(dob) FROM drivers)
SELECT surname FROM drivers WHERE nationality = "Italian";
SELECT url FROM constructors WHERE name = "Anthony Davidson";
SELECT driverRef FROM drivers WHERE forename = "Lewis" AND surname = "Hamilton";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix";
SELECT T2.year FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone Circuit"
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Silverstone Circuit"
SELECT T2.time FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Abu Dhabi Circuit" AND T2.year = 2010;
SELECT count(*) FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Italy";
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT max(T1.milliseconds) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Lewis Hamilton"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN lapTimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2007 AND T3.name = "Canadian Grand Prix" ORDER BY T2.grid LIMIT 1
SELECT DISTINCT T1.name FROM races AS T1 JOIN driverstandings AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton" ORDER BY T2.position DESC LIMIT 1
SELECT fastestlapspeed FROM results WHERE raceid = 2009 AND name = "2009 Spanish Grand Prix" ORDER BY fastestlapspeed LIMIT 1
SELECT T2.year FROM driverstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = LewisHamilton
SELECT T1.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.driverid = "Lewis Hamilton" ORDER BY T1.position DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.position = 4;
SELECT count(DISTINCT T1.driverId) FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T2.raceId = T3.raceId WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT T1.lap , T1.position , T1.time , T1.milliseconds FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.driverid = "Lewis Hamilton" ORDER BY T1.milliseconds LIMIT 1
SELECT T1.time FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "AustChineseralian Grand Prix" AND T2.position = 2;
SELECT T1.name , T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" SELECT T3.driverid , T3.driverref FROM drivers AS T3 JOIN results AS T4 ON T3.driverid = T4.driverid WHERE T4.year = 2008 AND T4.round = 1 AND T4.position = 1
SELECT count(*) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "2008 Australian Grand Prix"
SELECT count(*) FROM races AS T1 JOIN driverstandings AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "2008 Chinese Grand Prix" GROUP BY T2.driverid HAVING count(*) >= 1
SELECT sum(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT avg(T2.fastestlapsit) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = "Lewis Hamilton"
SELECT T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix"
SELECT T1.position - T2.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "2008 Australian Grand Prix" ORDER BY T1.position DESC LIMIT 1
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide, Australia"
SELECT lat , lng FROM circuits WHERE country = 'USA'
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > "1980"
SELECT max(T1.points) FROM constructorstandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.points DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 291 AND T2.position = 0
SELECT count(*) FROM constructors AS T1 JOIN constructorResults AS T2 ON T1.constructorId = T2.constructorId WHERE T1.nationality = "Japanese" AND T2.points = 0
SELECT DISTINCT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.position = 1
SELECT count(*) FROM constructorstandings AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid JOIN constructors AS T4 ON T4.constructorid = T2.constructorid WHERE T4.nationality = "French" AND T3.year > 50
SELECT T1.percent FROM results AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.nationality = "Japanese" AND T1.year BETWEEN 2007 AND 2009
SELECT avg(T1.time) , T2.year FROM laptimes AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year < 1975 GROUP BY T2.year
SELECT DISTINCT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 2 AND T2.positionorder = 3 AND T1.dob > "1975-01-01"
SELECT count(*) FROM drivers WHERE nationality = 'Italian' AND driverid NOT IN (SELECT driverid FROM results WHERE raceid IN (SELECT raceid FROM races WHERE YEAR = 2023))
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT fastestlaps FROM results WHERE YEAR = 2009 ORDER BY fastestlaps LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT name , YEAR FROM races WHERE TIME LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.dob < 1985 AND T2.lap > 50 AND T1.nationality = "USA"
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "1" AND T2.time LIKE "%02:00:%00.%00%"
SELECT code FROM drivers WHERE nationality LIKE '%America%'
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(DISTINCT driverId) FROM races AS T1 JOIN results AS T2 ON T1.raceId = T2.raceId WHERE T1.raceId = 18
SELECT code FROM drivers WHERE nationality = 'Netherlandic' ORDER BY dob DESC LIMIT 3 GROUP BY code HAVING count(*) = 3
SELECT name FROM drivers WHERE surname = "Kubica";
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = 1980
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.lap BETWEEN 1980 AND 1990 ORDER BY T2.milliseconds LIMIT 3
SELECT driverRef FROM drivers WHERE nationality = "German" ORDER BY dob LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.milliseconds = (SELECT min(milliseconds) FROM laptimes) AND T1.dob = "1971"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap = (SELECT max(lap) FROM laptimes WHERE nationality = "Spanish" AND dob < 1982) ORDER BY dob LIMIT 10
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year ORDER BY T2.time LIMIT 1
SELECT YEAR FROM laptimes ORDER BY milliseconds LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlaps TIME DESC LIMIT 5
SELECT count(*) FROM qualifying AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.number BETWEEN 50 AND 100 AND T2.statusid = 3
SELECT LOCATION , lat , lng FROM circuits WHERE country = 'Austria'
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Race X" GROUP BY T2.round ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverId = T2.driverId WHERE T2.raceId = 23 AND T2.position = 2 AND T2.number = 2;
SELECT T1.year , T2.name , T2.date , T2.time FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE T2.name = 'Qualifying' ORDER BY T1.year LIMIT 1
SELECT count(*) FROM drivers WHERE nationality = 'American' AND status = 'puncture'
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Italian" ORDER BY T2.points DESC LIMIT 1
SELECT T1.url FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid GROUP BY T1.constructorid ORDER BY count(*) DESC LIMIT 1
SELECT T1.driverid , T2.lap , T2.time FROM results AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.name = "French Grand Prix" ORDER BY T2.lap DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT avg(T1.fastestlapspeed) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2006 AND T2.name = "United States Grand Prix" ORDER BY T1.laps DESC LIMIT 10;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) LIMIT 3 INTERSECT SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T1.dob BETWEEN "1980-1985"
SELECT T1.position , T1.positionText , T1.positionOrder , T1.fastestLapTime FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Canadian Grand Prix" AND T2.year = 2008
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix"
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN "1981-01-01" AND "1991-12-31"
SELECT forename , surname , dob FROM drivers WHERE nationality = "German" AND dob BETWEEN 1971 AND 1985 ORDER BY dob DESC
SELECT location , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.name , T1.nationality , T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "Monaco Grand Prix" AND T2.year BETWEEN 1980 AND 2010 ORDER BY T2.points DESC LIMIT 1
SELECT avg(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Turkish Grand Prix" AND T1.constructorid IN (SELECT constructorid FROM constructorstandings WHERE constructorid IN (SELECT constructorid FROM constructors WHERE nationality = "Turkish") GROUP BY constructorid HAVING count(*) >= 1)
SELECT avg(T1.race) FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T2.year BETWEEN 2012 AND 2021
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT sum(T1.wins) FROM constructorstandings AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T2.position = 91 AND T2.positiontext = "VICTORY"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN laptimes AS T3 ON T1.raceid = T3.raceid ORDER BY T3.milliseconds LIMIT 1
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.date LIKE "%%latest%%" ORDER BY T2.date DESC LIMIT 1
SELECT T1.surname , T1.forename FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.round = 3 AND T3.circuitid = "Marina Bay Street Circuit" ORDER BY T2.position = 1
SELECT T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid ORDER BY T1.dob LIMIT 1
SELECT count(*) FROM races AS T1 JOIN driverstandings AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.raceid = T3.raceid WHERE T1.name = "Canadian Grand Prix" ORDER BY count(*) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN constructorstandings AS T3 ON T2.raceid = T3.raceid ORDER BY T3.wins DESC LIMIT 1
SELECT max(duration) FROM pitstops
SELECT fastestLapTime FROM results ORDER BY fastestLapTime LIMIT 1
SELECT max(T1.duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton";
SELECT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2011 Australian Grand Prix" AND T1.driverid = "LEWIS HAMILTON";
SELECT T1.time FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2011 AND T1.name = "2011 Australian Grand Prix"
SELECT T1.laps FROM results AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "Formula_1" AND T2.position = 1 AND T1.statusid = 3 AND T1.driverid = 102 AND T1.driverid = 102 AND T1.driverid = 102
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid JOIN laptimes AS T3 ON T2.raceid = T3.raceid WHERE T3.driverid = T4.driverid AND T4.forename = "Lewis" AND T4.surname = "Hamilton" ORDER BY T3.position LIMIT 1;
SELECT T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Austrian" AND T2.name = "Austrian Grand Prix Circuit"
SELECT T1.lap FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Austrian Grand Prix Circuit"
SELECT T2.duration FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT T1.location FROM circuits AS T1 JOIN results AS T2 ON T1.circuitid = T2.raceid WHERE T2.laps = 1 AND T2.fastestlaptime LIKE "1:29.488%"
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN laps AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton"
SELECT avg(T1.milliseconds) , T2.name FROM results AS T1 JOIN circuits AS T2 ON T1.raceid = T2.circuitid WHERE T2.country = "Italy" GROUP BY T2.name
SELECT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND attacking_work_rate != defensive_work_rate;
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE crossing > (SELECT min(crossing) FROM Player_Attributes) GROUP BY T1.player_api_id ORDER BY crossing DESC LIMIT 5;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2016 GROUP BY T1.team_short_name ORDER BY count(*) LIMIT 1;
SELECT T1.player_name , T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN league AS T3 ON T1.season = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2010 GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = 'end' AND T2.result = 'draw' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.date BETWEEN '2013-01-01' AND '2015-01-01'
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN "1990-01-01" AND "1995-12-31";
SELECT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_fifa_api_id = T2.player_fifa_api_id WHERE T1.date = 2010 ORDER BY T1.overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.date = 2012 AND T1.buildUpPlayPassing > (SELECT avg(buildUpPlayPassing) FROM Team_Attributes WHERE date = 2012)
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND birthday BETWEEN "1987-01-01" AND "1992-12-31";
SELECT name FROM league ORDER BY goals_total DESC LIMIT 5;
SELECT avg(long_shots) FROM Player_attributes WHERE player_fifa_api_id = "Ahmed Samir Farag"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id HAVING avg(T2.heading_accuracy) > 180 ORDER BY avg(T2.heading_accuracy) DESC LIMIT 10;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.buildUpPlayDribblingClass = 'normal' AND T2.buildUpPlayPassingClass = 'dribbling' AND T2.date = 2014 GROUP BY T1.team_short_name ORDER BY avg(T2.chanceCreationPassing) - T2.chanceCreationPassing < 0
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2009 AND T2.season = 2010 GROUP BY T2.league_id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers"
SELECT player_name FROM Player WHERE birthday LIKE "1970-10%"
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Franco Zennaro"
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.defenceteamwidth >= 0.66 AND T2.defenceteamwidthclass = '1'
SELECT T1.finishing FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francois Affolter" AND T1.date = "18/09/2014";
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Scotland Premier League' AND T1.season = 2015 AND T1.season = 2016;
SELECT preferred_foot FROM Player ORDER BY birthday LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.weight < 130 AND T2.preferred_foot = 'left'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE chanceCreationPassingClass = 'Risky'
SELECT defensive_work_rate FROM Player_Attributes WHERE player_name = "David Wilson" AND preferred_foot = "football";
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Netherlands'
SELECT avg(T1.home_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN country AS T3 ON T2.country_id = T3.id WHERE T3.name = 'Poland' AND T1.season = 2010 AND T1.stage = 2011;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_name ORDER BY avg(T2.finishing) DESC LIMIT 1;
SELECT player_name FROM Player WHERE height > 180
SELECT count(*) FROM Player WHERE birthday > "1990";
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating > 80 AND T2.date BETWEEN "2008-01-01" AND "2010-01-01"
SELECT T1.potential FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Doran"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = "left"
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlayPlaySpeedClass = 'fast'
SELECT buildUpPlayPassingClass FROM Team_Attributes WHERE team_fifa_api_id = "CLB";
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayPassing > 70
SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 170 AND T1.birthday >= "2010" AND T1.birthday <= "2015"
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.buildUpPlaySpeed = 31 AND T1.buildUpPlayDribbling = 53 AND T1.buildUpPlayPassing = 32
SELECT avg(overall_rating) FROM Player_Attributes WHERE player_fifa_api_id = "Aaron Doran";
SELECT count(*) FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id JOIN country AS T3 ON T1.country_id = T3.id WHERE T3.name = "Germany 1. Bundesliga" AND T2.date BETWEEN "2008-08-01" AND "2008-10-31"
SELECT T2.team_short_name FROM MATCH AS T1 JOIN team AS T2 ON T1.home_team_api_id = T2.team_api_id WHERE T1.home_team_goal = 10
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.balance DESC LIMIT 1 OFFSET 0 WHERE T2.potential >= 61
SELECT avg(ball_control) - avg(ball_control) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Abdou Diallo" DIFFERENT FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT birthday FROM Player WHERE player_name = "Aaron Lennon" UNION SELECT birthday FROM Player WHERE player_name = "Abdelaziz Barrada";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = '1'
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Belgium Jupiler League"
SELECT T1.name FROM League AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Germany"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986 AND T2.attacking_work_rate != "null" AND T2.defensive_work_rate != "null"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = (SELECT max(crossing) FROM Player_Attributes WHERE player_fifa_api_id = 'Alexis' OR player_fifa_api_id = 'Ariel Borysiuk' OR player_fifa_api_id = 'Arouna Kone')
SELECT heading_accuracy FROM Player_Attributes WHERE player_fifa_api_id = "Ariel Borysiuk"
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.dribbling > 70
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.stage = T2.id JOIN country AS T3 ON T2.country_id = T3.id JOIN team AS T4 ON T4.team_api_id = T1.home_team_api_id WHERE T3.name = 'Belgium' AND T1.season = 2008 AND T1.stage = '1'
SELECT long_passing FROM Player ORDER BY birthday DESC LIMIT 1
SELECT count(*) FROM league AS T1 JOIN team AS T2 ON T1.country_id = T2.team_api_id JOIN MATCH AS T3 ON T2.team_api_id = T3.home_team_api_id WHERE T1.name = "Belgium Jupiler League" AND T3.date LIKE "%2009-%v-%w%" LIMIT 1;
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < "1986"
SELECT T1.overall_rating - T2.overall_rating FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Ariel Borysiuk" DIFFERENT FROM Player_attributes AS T2 JOIN Player AS T3 ON T1.player_api_id = T3.player_api_id WHERE T3.player_name = "Paulin Puel"
SELECT avg(buildUpPlaySpeed) FROM Team_attributes WHERE team_fifa_api_id = "Heart of Midlothian";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Pietro Marino"
SELECT sum(T1.crossing) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing = (SELECT max(chanceCreationPassing) FROM Team_Attributes)
SELECT preferred_foot FROM Player_Attributes WHERE player_name = "Abdou Diallo"
SELECT max(T1.overall_rating) FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Dorlan Pabon"
SELECT avg(away_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = "Italy"
SELECT T2.player_name FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.overall_rating = 77 AND T1.date = "2016/6/23" ORDER BY T2.birthday DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Mooy" AND T1.date = "2016/2/4"
SELECT T1.potential FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Parravicini" AND T1.date = "2010/8/30"
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Migliore" AND T1.date = "2015/5/1"
SELECT defensive_work_rate FROM Player_Attributes WHERE date = "2013/2/22" AND player_api_id = "KEVIN BERIGAUD";
SELECT T1.date FROM MATCH AS T1 JOIN Player_Attributes AS T2 ON T1.away_player_11 = T2.player_api_id WHERE T2.player_fifa_api_id = 'Kevin Constant' ORDER BY T2.crossing DESC LIMIT 1;
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.team_api_id = T2.player_api_id WHERE T2.player_name = "Willem II" AND T1.date = "2011/2/22"
SELECT T1.buildUpPlayDribbling FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.team_api_id = T2.player_api_id WHERE T2.player_name = "LEI" AND T1.date = "2015/9/10"
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.team_long_name = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE chanceCreationPassing = "PEC Zwolle" AND date = "2013/9/20"
SELECT chanceCreationCrossingClass FROM Team_attributes WHERE chanceCreationPassing = "Hull City" AND date = "2010/2/22";
SELECT defenceAggressionClass FROM Team_Attributes WHERE date = "2015/9/10" AND team_fifa_api_id = "Hannover 96";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date BETWEEN "2007/2/22" AND "2016/4/21";
SELECT T1.overall_rating FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Landon Donovan" AND T1.date = "2013/7/12" > SELECT T1.overall_rating FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Jordan Bowery" AND T1.date = "2013/7/12"
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday > 35
SELECT count(*) FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN Team_Attributes AS T3 ON T2.team_fifa_api_id = T3.team_fifa_api_id WHERE T3.team_long_name = 'home' AND T3.team_short_name = 'goal' AND T1.home_player_1 = 'Aaron Lennon'
SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = "Daan Smith" INTERSECT SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T2.team_short_name = "Filipe Ferreira"
SELECT sum(T2.home_team_goal) FROM Player AS T1 JOIN MATCH AS T2 ON T1.player_api_id = T2.home_player_11 WHERE T1.player_name LIKE "%30%"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY strength DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.attacking_work_rate > 0 AND T2.player_fifa_api_id = T3.player_api_id AND T3.player_api_id = T1.player_api_id
SELECT T2.player_name FROM Player_attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.finishing = 1 ORDER BY T2.birthday LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Country AS T2 ON T1.country_id = T2.id WHERE T2.name = "Belgium"
SELECT T1.name , T2.name FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T1.vision >= 90
SELECT T1.name FROM Country AS T1 JOIN Player AS T2 ON T1.id = T2.country_id GROUP BY T1.name ORDER BY avg(T2.weight) DESC LIMIT 1;
SELECT team_long_name FROM Team WHERE buildUpPlaySpeedClass = "slow"
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.chanceCreationPassing = 'safe' AND T1.chanceCreationPassingClass = 'passing'
SELECT avg(height) FROM Country AS T1 JOIN Player AS T2 ON T1.id = T2.country_id WHERE T1.name = "Italy"
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name
SELECT count(*) FROM Player WHERE birthday > 1990 AND player_name = "Aaron"
SELECT jumping - 6 FROM Player_Attributes WHERE player_fifa_api_id = 23
SELECT id FROM Player_Attributes WHERE preferred_foot = 'right' AND potential = (SELECT min(potential) FROM Player_Attributes WHERE preferred_foot = 'right')
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND crossing = (SELECT max(cross) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate = '1' )
SELECT count(*) / count(*) FROM Player_Attributes WHERE strength > 80 AND stamina > 80;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Poland Ekstraklasa"
SELECT home_team_goal , away_team_goal FROM MATCH WHERE date = "2008-09-24" AND league_id = 112 AND country_id = 135 WHERE team_short_name = "Belgian Jupiler League"
SELECT acceleration , agility , sprint_speed FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "KSV Cercle Brugge" ORDER BY buildUpPlaySpeedClass ASC LIMIT 1;
SELECT count(*) FROM league AS T1 JOIN team AS T2 ON T1.id = T2.league_id JOIN MATCH AS T3 ON T2.team_api_id = T3.home_team_api_id WHERE T1.name = 'Serie A' AND T3.season = 2015 AND T3.year = 2016
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = "Netherlands Eredivisie" ORDER BY T1.name DESC LIMIT 1
SELECT T1.finishing , T1.curve FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.weight DESC LIMIT 1
SELECT T1.name FROM league AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2015 AND T2.stage = '1' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN team AS T2 ON T1.away_team_api_id = T2.team_api_id GROUP BY T1.away_team_api_id ORDER BY sum(T1.goal) DESC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height < 180 AND T2.overall_rating > 70
SELECT count(*) , sex , (count(*) - count(*)男) / count(*)男 FROM patient GROUP BY sex
SELECT count(*) / count(*) FROM patient WHERE sex = 'F' AND birthday > 1930
SELECT count(*) , sum(admission) / count(*) FROM patient WHERE birthday BETWEEN 1930 AND 1940
SELECT count(*) / count(*) FROM patient WHERE diagnosis = 'SLE'
SELECT T1.Date FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = '30609'
SELECT T2.sex , T2.birthday , T1.examination_date , T2.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > (SELECT min(LDH) FROM laboratory)
SELECT id , PT FROM laboratory WHERE PT > 40
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = 'Severe'
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = 1937 AND T2.T-CHO > (SELECT avg(T-CHO) FROM laboratory)
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alp < 3.5
SELECT count(*) * 100 FROM patient WHERE sex = 'F' AND u-pro > 100
SELECT avg(IGG) FROM examination WHERE patient.age >= 50
SELECT count(*) FROM patient WHERE sex = 'F' AND admission = '1997' AND id NOT IN (SELECT id FROM examination WHERE date = '1997' )
SELECT max(admission - birthdate) FROM patient
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Thrombosis" AND T1.date = 1997 ORDER BY T1.diagnosis DESC LIMIT 2 WHERE T2.sex = "F"
SELECT max(birthdate) - min(birthdate) FROM patient WHERE diagnosis = 'Normal Triglyceride'
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID ORDER BY T2.Birthdate LIMIT 1
SELECT avg(T2.GOT) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.sex = 'M' AND T2.date LIKE "1998-12-31%"
SELECT T1.birthday , T1.first_date FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = (SELECT max(date) FROM laboratory)
SELECT count(*) , count(*) FROM patient WHERE sex = 'M' AND count(*) FROM patient WHERE sex = 'F' AND UA = 'Abnormal'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination WHERE examination.date - firstdate <= 365)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.birthday < 1990 AND T2.examination_date BETWEEN "1990-01-01" AND "1993-12-31"
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'M' AND T1.T-BIL > 100
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday BETWEEN "1/1/1985" AND "12/31/1995"
SELECT avg(T2.age) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.date LIKE "1999-10%" AND T1.examination date LIKE "1991-10%"
{"sql": "SELECT T1.diagnosis , T2.birthday FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.diagnosis = (SELECT max(T1.diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = (SELECT max(date) FROM examination) AND T1.di
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date = "1996/12/2" AND T2.id = 3605340
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 2927464 AND T1.date = "1995-9-4" AND T1.tcho = 100
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "AORTITIS"
SELECT T2.SMC FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "SLE" AND T1.Date = "1994/2/19" EXCEPT SELECT T2.SMC FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "SLE" AND T1.Date = "1993/11/12"
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.GLU = 9 AND T2.date = "1992-06-12"
SELECT T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO = 8.4 AND T2.date = "1991-10-21"
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.admission = "1991/6/13" AND T2.diagnosis = "SJS" AND T1.date = "1995"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND T2.admission = (SELECT admission FROM patient WHERE diagnosis = 'SLE' AND birthdate = '1997/1/27' ORDER BY admission LIMIT 1)
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday = "1959/3/1" AND T1.examination_date = "1993/9/27"
SELECT (T2.TCHO - T1.TCHO) / T1.TCHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Birthday = "1959/2/18" AND T2.Date = "1981-11-01" TO "1981-12-01"
SELECT T1.id , T1.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Behcet's" AND T2.examination_date BETWEEN "01/01/197" AND "12/31/1997"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.examination date > 1987/7/6 AND T2.examination date < 1996/1/31 AND T1.gpt > 30 AND T1.alb < 4
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 AND admission = 'Y'
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.Thrombosis = 2 AND T1.ANA Pattern = "S" AND T1.IGM > (SELECT avg(IGM) FROM examination)
SELECT count(*) / count(*) FROM patient WHERE u-pro >= 100 AND uric acid < 100
SELECT count(*) * 100.0 / count(*) FROM patient WHERE sex = 'M' AND first date = 1981 AND diagnosis = "BEHCET"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE "1991-10%" AND T2.T-BIL < 120
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ANA Pattern = "ANA"
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "PSS" INTERSECT SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "PSS" AND T1.id IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.CRP = 2 AND T3.Creatinine = 1 AND T3.LDH = 123)
SELECT avg(ALB) FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.sex = "F" AND T1.PLT > 400 AND T1.diagnosis = "SLE"
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.diagnosis = "SLE" GROUP BY T1.Symptoms ORDER BY count(*) DESC LIMIT 1
SELECT T1.date , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'APS'
{"sql": "SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date LIKE \"1997%\" AND T2.id NOT IN (SELECT T1
{"sql": "SELECT count(*) , count(*) / (SELECT count(*) FROM examination WHERE diagnosis = 'Thrombocytopenia' AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis AND diagnosis
SELECT count(*) * 100 / count(*) FROM patient WHERE birthdate = 1980 AND diagnosis = "RA" AND sex = "F"
SELECT count(*) FROM patient WHERE sex = 'M' AND first date >= 1995 AND first date <= 1997 AND diagnosis = "Behcet disease" EXCEPT SELECT count(*) FROM patient WHERE sex = 'M' AND first date >= 1995 AND first date <= 1997 AND diagnosis = "Treated in hospital"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T2.wbc < 3.5
SELECT admission - first date FROM patient WHERE id = 821298 INTERSECT SELECT first date - evaluation_date FROM patient WHERE id = 821298
SELECT 1 FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 57266 AND T1.U-PRO < 10.0
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND T1.got > 100
SELECT T1.sex , T1.birthday , T2.date FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.got < 100 AND T2.date = 1994
SELECT id FROM laboratory WHERE gpt > 100 AND sex = 'M'
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis != "Normal" ORDER BY T2.birthday
SELECT avg(LDH) FROM laboratory WHERE LDH <= 100 AND LDH >= 50
SELECT id , age FROM patient WHERE LDH >= 100 AND LDH <= 300 AND LDH > 99
SELECT T1.admission , T1.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.alp < 100 AND T2.alp > 50
SELECT id FROM patient WHERE birthday = "1982-04-01" INTERSECT SELECT id FROM laboratory WHERE ALP < 15
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE TP < (SELECT min(TP) FROM laboratory)
SELECT T1.id , T1.tp , T2.tp - T1.tp FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "F" AND T1.tp > (SELECT tp FROM laboratory WHERE sex = "F" AND tp = (SELECT min(tp) FROM laboratory WHERE sex = "F" ))
SELECT * FROM patient WHERE sex = 'M' AND ALP > 100
SELECT T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.T-BIL <= 50 AND T1.birthday = "1982"
SELECT count(*) * 100 / count(*) FROM patient WHERE sex = 'F' AND UA > (SELECT avg(UA) FROM laboratory)
SELECT avg(T2.UA) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.UA = 0
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.un >= (SELECT min(un) FROM laboratory) AND T2.un <= (SELECT max(un) FROM laboratory)
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = 'RA' INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = 'RA' AND T2.id IN (SELECT id FROM laboratory WHERE un = 'Normal' )
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine_index < 70
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine != (SELECT min(creatinine) FROM laboratory WHERE creatinine != (SELECT min(creatinine) FROM laboratory WHERE creatinine != "normal"))
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T2.T-BIL DESC LIMIT 1
SELECT count(*) , sex FROM laboratory WHERE T-BIL < 40.0 GROUP BY sex
SELECT T1.id , T2.T-CHO FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY T1.birthday DESC LIMIT 1
SELECT avg(T1.Birthday) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.T-CHO > 50 AND T1.sex = "M"
{"sql": "SELECT T1.name , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis LIKE \"%triglyceride%\" AND T2.diagnosis LIKE "%100%\""}
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE TG > (SELECT avg(TG) FROM laboratory) AND T2.birthday > 50
SELECT DISTINCT id FROM laboratory WHERE CPK BETWEEN 100 AND 130
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND sex = 'M' AND CPK > (SELECT avg(CPK) FROM laboratory)
SELECT id , sex , age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE GLU != 500 AND T-CHO != 500
SELECT T1.id , T2.GLU FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first date = 1991 AND T2.glu < 140
SELECT T1.id , T1.sex , T1.birthday , T2.age FROM patient AS T1 JOIN (SELECT id , sex , birthday , age FROM patient WHERE wbc > 1000 GROUP BY sex , birthday ORDER BY age) AS T2 ON T1.id = T2.id
SELECT T2.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.rbc < (SELECT max(rbc) FROM examination)
SELECT T1.admission , T2.sex , T2.birthday , T2.age , T2.admission FROM patient AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = 'F' AND T2.age >= 50 AND T2.admission = 'Y' AND T2.rbc > 5.5
SELECT DISTINCT T1.id , T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HGB < 100
{"sql": "SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = \"SLE\" AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = \"SLE\" AND T1.id = T2.patient_id AND T
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.HCT > 499
SELECT avg(HCT) FROM laboratory WHERE examination date = 1991 AND HCT < (SELECT avg(HCT) FROM laboratory)
SELECT count(*) - count(*) FROM laboratory WHERE PLT < 150000 DIFFERENT FROM laboratory WHERE PLT > 150000
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.plt = 10000 AND T1.birthday < 50
SELECT count(*) , sex , count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PT = "Abnormal" AND T1.age > 55 GROUP BY T1.sex
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PT = "normal" AND T1.first_date > 1992
SELECT count(*) FROM examination WHERE examination date > '1997/1/1' AND PT = 'inactivated partial prothrom bin time'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination WHERE PT = "abnormal") AND diagnosis != "thrombosis"
SELECT count(*) FROM patient WHERE sex = 'M' AND wbc = 10000 AND fg = 15000
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 19801101 AND T2.fg = "abnormal"
SELECT DISTINCT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.UA > 1000
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = "SLE" AND T2.u-pro = "normal"
SELECT count(*) FROM laboratory WHERE IGG > (SELECT avg(IGG) FROM laboratory)
SELECT count(*) FROM examination WHERE aCL IgG = "Normal" AND Symptoms = "Yes"
SELECT T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = (SELECT max(T1.Diagnosis) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = 0)
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date > "1990-10-01" AND T2.igaa = "Normal"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE IGM = 1 GROUP BY T1.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM laboratory WHERE CRP != "normal"
{"sql": "SELECT count(*) FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE CRE = \"Abnormal\") EXCEPT SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE id IN (SELECT id FROM laboratory
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.RF = "Normal" AND T1.PT > 40
SELECT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday > "1985-1-1" AND T1.thrombosis = "Normal Rhuematoid Factor"
SELECT id FROM laboratory WHERE RF = "Normal" AND birthdate > "1960-01-01"
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE RF = "normal" EXCEPT SELECT id FROM examination WHERE thrombosis = 1)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ana_pattern = 'P' AND T1.c3 = 3
SELECT id FROM laboratory WHERE HCT != 499 AND IGM != 1000 ORDER BY IGM DESC LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T2.C4 = 4 AND T1.Diagnosis = "blood clots in veins"
SELECT count(*) FROM patient WHERE admission = 'yes' AND RNP = 'normal'
SELECT T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RNP > 100
SELECT count(*) FROM patient WHERE sm = 'Normal' AND diagnosis != 'Thrombosis'
SELECT id FROM laboratory WHERE SM = "abnormal" ORDER BY first date LIMIT 3
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.examination_date > '1997/1/1' AND T2.diagnosis = 'Normal Anti-scl70'
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'Normal Anti-scl70' AND symptoms = "null"
SELECT count(*) FROM patient WHERE first date < 2000 AND diagnosis = "Normal Anti-SSA"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.ssymptoms = 'abnormal' ORDER BY T1.firstdate LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T1.sbb = "Normal"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.symptoms != "none" AND T1.symptoms != "no symptoms" AND T1.symptoms != "no data" AND T1.symptoms != "no results" AND T1.symptoms != "no results" AND T1.symptoms != "no data" AND T1.symptoms != "none" AND T1.symptoms != "no symptoms"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CENTROMEA = "Normal" AND T2.SSB = "Normal" AND T1.sex = "M"
SELECT DISTINCT T1.diseases FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Abnormal anti-DNA'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM laboratory) AND DNA = "normal"
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Normal IGG'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient_id WHERE T2.diagnosis = 'SLE' AND T1.GLU = 'Abnormal'
SELECT count(*) FROM patient WHERE sex = 'M' AND GLU < 100
SELECT min(birthdate) FROM patient WHERE GLU = "Abnormal"
SELECT T1.Birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE GLU < 100 AND T2.Diagnosis = "Normal" ORDER BY T2.Diagnosis = "Normal" DESC LIMIT 3;
SELECT count(*) , sex FROM patient WHERE GLU = "Normal" GROUP BY sex
{"sql": "SELECT T1.date , T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date) FROM examination WHERE T1.id = T2.id AND T2.sex = \"M\" AND T1.date = (SELECT max(date
SELECT max(date) FROM laboratory WHERE id IN (SELECT id FROM laboratory WHERE LDH != "normal")
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE ALP = "abnormal")
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.alp = "normal"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.aCL IgG < 1000
SELECT count(*) FROM examination AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SJS" AND T2.U-PRO = "normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal" AND T1.aCL IgG > (SELECT max(aCL IgG) FROM examination WHERE diagnosis = "Normal")
{"sql": "SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex = 'M' AND (SELECT min(alb) FROM laboratory WHERE id = (SELECT id FROM patient WHERE sex
SELECT T2.U-PRO FROM examination AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "Normal" ORDER BY T2.U-PRO DESC LIMIT 1
SELECT max(IGG) FROM LABORATORY WHERE ID IN (SELECT ID FROM LABORATORY WHERE CRE = 1.68) AND IGA = 0
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRE = 0 AND T2.IGG = (SELECT max(IGG) FROM laboratory)
SELECT count(*) FROM lab AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T1.id IN (SELECT T1.id FROM lab AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.ANA Pattern = "Peripheral") AND T1.t-bil > 10
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T2.id = T3.id WHERE T3.T-BIL < 100 AND T3.T-BIL > 80
SELECT count(*) FROM laboratory WHERE T-CHO > 100 AND (SELECT sum(PT) FROM examination WHERE id = (SELECT id FROM laboratory WHERE T-CHO > 100) GROUP BY id HAVING sum(PT) < 100) < 0
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ana_pattern = 'P' AND T2.diagnosis = 'Normal'
SELECT count(*) FROM examination WHERE symptoms = 'normal'
SELECT T2.Diagnosis FROM laboratory AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.TG <= 150
SELECT id FROM patient EXCEPT SELECT id FROM examination WHERE diagnosis = 'Thrombosis' INTERSECT SELECT id FROM laboratory WHERE CPK > 100
SELECT count(*) FROM laboratory WHERE CRKP > 0 AND PT > 0.5
SELECT birthday FROM patient WHERE id IN (SELECT id FROM laboratory WHERE GOT = 150 AND id NOT IN (SELECT id FROM examination WHERE diagnosis = "Normal") ) ORDER BY birthdate DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = 'Normal blood glucose' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'Thrombosis'
SELECT count(*) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE WBC = 5000
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T2.wbc = 4,500
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 100 AND T1.admission = 2
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.symptoms = 'normal platelet'
SELECT T2.PLT FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.Diagnosis = "MCTD" AND T2.PLT BETWEEN 100 AND 150
SELECT avg(PTT) FROM laboratory WHERE sex = 'M' AND T-CHO = "normal"
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Severe thrombosis" AND T2.sex = "M" AND T2.description = "Normal prothrombin time"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Angela" AND T2.last_name = "Sanders"
SELECT count(*) FROM major WHERE department = 'College of Engineering'
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Art and Design'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT T2.phone FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer" AND T2.t_shirt_size = "medium"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'vice president' AND T1.department = 'Student Club'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison" AND T1.link_to_event YEAR(T1.event_date) = 2019
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.link_to_member > 10 GROUP BY T1.link_to_event HAVING count(*) > 10 AND T2.TYPE = 'meeting'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event GROUP BY T2.link_to_event HAVING count(*) > 20 EXCEPT SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event WHERE T2.link_to_event IN (SELECT link_to_event FROM budget)
SELECT avg(link_to_member) FROM attendance WHERE event_date LIKE "2020-%";
SELECT T1.major_name FROM major AS T1 JOIN event AS T2 ON T1.major_id = T2.department WHERE T2.type = 'support' INTERSECT SELECT T3.major_name FROM major AS T3 JOIN event AS T4 ON T3.major_id = T4.department WHERE T4.type = 'club' AND T3.department = T4.department GROUP BY T3.department ORDER BY max(T3.spent) DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "Laugh Out Loud"
SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Law' INTERSECT SELECT T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Constitutional Studies'
SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey";
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Vice President'
SELECT T2.spent FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date LIKE "9/%" AND T1.type = "food"
SELECT T2.city , T2.state FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.position = 'President of the Student_Club'
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T1.state = 'IL'
SELECT T1.spent FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Student_Club' AND T2.expense_date LIKE "9/%"
SELECT department FROM major WHERE major_id IN (SELECT member_id FROM member WHERE first_name = "Pierce" INTERSECT SELECT member_id FROM member WHERE first_name = "Guidi")
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND expense_date LIKE "10/%" AND event_date LIKE "10/08/2019";
SELECT avg(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "%9.10%"
SELECT sum(T2.spent) - sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.event_status = 'Student Club' AND T2.event_date LIKE "2019%" AND T2.event_date LIKE "2020%"
SELECT T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = "Spring Budget Review";
SELECT T2.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date = "2019/9/4" AND T2.expense_description = "Posters"
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY remaining DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019/9/14"
SELECT count(*) FROM major WHERE department = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT T2.county FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Adela" AND T1.last_name = "O'Gallagher"
SELECT count(*) FROM budget WHERE event_status = 'November Meeting' AND spent > remaining
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT status FROM event WHERE event_date = "2019/8/20" AND event_name = "Post Cards, Posters"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason";
SELECT count(*) FROM major AS t1 JOIN member AS t2 ON t1.major_id = t2.link_to_major WHERE t1.major_name = "Business" AND t2.t_shirt_size = "medium"
SELECT TYPE FROM zip_code WHERE zip_code = 'Christof Nielson'
SELECT T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Vice President'
SELECT T2.state FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Sacha" AND T1.last_name = "Harrison"
SELECT T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'President'
SELECT T1.event_date FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = "Connor" AND T3.last_name = "Hilton";
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T2.approved = 'Yes' AND T2.expense_date = '2023-04-15' ORDER BY T2.expense_date LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Yearly Kickoff" AND T1.event_status = "Paid" AND T1.amount > (SELECT amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Meeting" AND T1.event_status = "Paid")
SELECT %spent / (SUM(%spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "%November%" ) AS budget_percent FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "%November%"
SELECT sum(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia";
SELECT department FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT T2.city FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Amy" AND T1.last_name = "Firth"
SELECT amount FROM budget ORDER BY remaining LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = "October Meeting"
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Casey" AND T2.last_name = "Mason";
SELECT count(*) FROM zip_code WHERE state = 'Maryland'
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'closed' ORDER BY T2.spent / T2.budget DESC LIMIT 1
SELECT count(*) FROM member WHERE position = 'president'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020-%";
SELECT sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = 'Food'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 7
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN attendance AS T3 ON T2.member_id = T3.link_to_member WHERE T1.major_name = 'Interior Design' AND T3.link_to_event IN (SELECT event_id FROM attendance WHERE TYPE = 'Community Theater')
SELECT T2.first_name , T2.last_name FROM zip_code AS T1 JOIN major AS T2 ON T1.zip_code = T2.zip_code WHERE T1.state = "South Carolina" AND T2.college = "Georgetown"
SELECT amount FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour";
SELECT link_to_member FROM income WHERE amount > 40
SELECT sum(T2.cost) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date LIKE "Yearly Kickoff%"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member JOIN budget AS T3 ON T2.link_to_budget = T3.budget_id WHERE T3.event_status = 'Yearly Kickoff'
SELECT T2.first_name , T2.last_name , T1.source FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member ORDER BY T1.amount DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent LIMIT 1
SELECT percentage FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Yearly Kickoff'
SELECT count(*) , count(*) FROM major WHERE department = 'Finance' : count(*) FROM major WHERE department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/19/2019" GROUP BY source ORDER BY sum(amount) DESC LIMIT 1
SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club's Secretary'
SELECT count(*) FROM major AS t1 JOIN member AS t2 ON t1.major_id = t2.link_to_major WHERE t1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.date_added = 2019
SELECT count(*) , T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi" GROUP BY T1.major_name
SELECT avg(spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_date LIKE '1990%'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.spent DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women's Soccer' AND T2.first_name = 'Maya' AND T2.last_name = 'Mclean'
SELECT count(*) , count(*) * 100 FROM event WHERE TYPE = 'Community Service' AND event_date = '2019' INTERSECT SELECT count(*) , count(*) * 100 FROM event WHERE TYPE = 'Community Service' AND event_date = '2019'
SELECT T2.amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'September Speaker'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.amount > (SELECT max(amount) FROM budget) AND T2.event_status = 'closed'
SELECT T2.type , sum(T1.cost) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'October Meeting' GROUP BY T2.type
SELECT category FROM budget WHERE link_to_event IN (SELECT event_id FROM event WHERE event_date LIKE "%April%" AND TYPE = 'Speaker') ORDER BY spent ASC
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T2.spent) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.category = 'Parking'
SELECT sum(cost) FROM expense WHERE expense_date = '08/20/2019'
SELECT T2.first_name , T2.last_name , sum(T1.expense) FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member HAVING T1.link_to_member = "rec4BLdZHS2Blfp4v"
SELECT T1.expense_description FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison"
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = "X-Large"
SELECT zip_code FROM expense WHERE cost < 50
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Phillip" AND T2.last_name = "Cullen";
SELECT T2.position FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Business'
SELECT count(*) FROM member WHERE t_shirt_size = 'Medium' AND department = 'Business'
SELECT TYPE FROM budget WHERE remaining > 30
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_date LIKE "2020-03-24T12:00:00%"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'Vice President'
SELECT count(*) , count(*) / (SELECT count(*) FROM major) FROM major WHERE department = 'Business'
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = 'MU 215'
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T2.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T2.city , T2.state FROM major AS T1 JOIN zip_code AS T2 ON T1.major_id = T2.zip_code WHERE T1.department = "Electrical and Computer Engineering"
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.position = 'Vice President' AND T1.location = "900 E. Washington St."
SELECT T2.last_name , T2.position FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = "09/10/2019" AND T1.type = "expense" AND T2.expense_description = "pizza"
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Women\'s Soccer Event'"}
SELECT count(*) , T1.amount , (count(*) / T1.amount) * 100 FROM budget AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T2.t_shirt_size = 'medium' GROUP BY T1.amount HAVING T1.amount = 50
SELECT DISTINCT T1.country FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T2.zip = T3.zip_code WHERE T3.type = 'postcode' AND T3.state = 'TX'
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan'
SELECT event_name FROM event WHERE event_date BETWEEN "3/15/2019" AND "3/20/2020" AND status = "closed" WHERE TYPE = "game"
SELECT T1.link_to_event FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.amount > 50
SELECT T1.first_name , T1.last_name , T2.link_to_event FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.link_to_event BETWEEN '11/19/2019' AND '01/10/2019'
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO"
SELECT T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Business' AND T1.college = 'College of Agriculture and Applied Sciences'
SELECT T2.email FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T1.budget_id = T3.budget_id WHERE T3.amount > 20 AND T1.expense_date BETWEEN "09/10/2019" AND "11/19/2019"
SELECT count(*) FROM major WHERE department = 'College of Education & Human Services' AND major_name = 'Education'
SELECT count(*) FROM budget WHERE spent > budget.amount
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-01" AND "2020-03-31"
SELECT T1.expense_description FROM expense AS T1 JOIN budget AS T2 ON T1.link_to_budget = T2.budget_id WHERE T2.spent > 50
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) , TYPE FROM zip_code WHERE TYPE = 'PO box' GROUP BY TYPE
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT max(spent) FROM budget)
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.link_to_event = T2.link_to_event JOIN expense AS T3 ON T2.budget_id = T3.budget_id WHERE T3.cost BETWEEN 50 AND 200 AND T2.category = 'Major' AND T2.amount > 50
SELECT T2.major_name , T2.department FROM expense AS T1 JOIN major AS T2 ON T1.link_to_budget = T2.major_id WHERE T1.cost > 100
SELECT T1.city , T1.state FROM zip_code AS T1 JOIN event AS T2 ON T1.zip_code = T2.location WHERE T2.event_id IN (SELECT income_id FROM income WHERE amount > 40)
SELECT T2.first_name , T2.last_name FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.member_id HAVING count(*) > 1 ORDER BY sum(T1.cost) DESC LIMIT 1
SELECT avg(amount) FROM budget WHERE category = 'expense' EXCEPT SELECT avg(amount) FROM member
SELECT event_name FROM event WHERE TYPE = 'sports' GROUP BY event_name HAVING avg(parking_cost) < (SELECT avg(parking_cost) FROM event WHERE TYPE = 'sports')
SELECT % of (sum(expense.spent) - sum(remaining)) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id
SELECT category FROM budget WHERE category = 'water' OR category = 'chips' OR category = 'cookies' ORDER BY sum(spent) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id ORDER BY T1.spent DESC LIMIT 5
SELECT T2.first_name , T2.last_name , T2.phone FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T1.link_to_member HAVING avg(T1.cost) > (SELECT avg(cost) FROM expense)
SELECT (count(*) - count(*) ) / count(*) FROM zip_code WHERE state = 'New Jersey' INTERSECT SELECT (count(*) - count(*) ) / count(*) FROM zip_code WHERE state = 'Vermont'
SELECT T_major.department , T_major.major_name FROM major AS T_major JOIN member AS T_member ON T_major.major_id = T_member.member_id WHERE T_member.first_name = "Garrett" AND T_member.last_name = "Gerke"
SELECT T2.first_name , T2.last_name , T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN budget AS T3 ON T1.link_to_budget = T3.budget_id WHERE T3.category = 'Food' AND T3.category = 'Vegetable tray' AND T3.category = 'Supplies'
SELECT T2.last_name , T2.phone FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Elementary Education'
SELECT category , amount FROM budget WHERE link_to_event = (SELECT event_id FROM event WHERE event_date = 'January')
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'food'
SELECT T2.first_name , T2.last_name , T1.amount FROM budget AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T1.event_date = "9/9/2019"
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT T1.first_name , T1.last_name , T2.major_name FROM member AS T1 JOIN major AS T2 ON T1.link_to_major = T2.major_id WHERE T1.position = 'Secretary'
SELECT sum(T2.spent) , T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event GROUP BY T1.event_name
SELECT T2.city FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T1.first_name = "Garrett" AND T1.last_name = "Gerke"
SELECT first_name , last_name , position FROM member WHERE zip_code = 28092 AND city = "Lincoln" AND state = "North Carolina"
SELECT count(*) FROM gasstations WHERE country = 'CZE' AND price = 'Premium'
SELECT count(*) , count(*) FROM customers WHERE currency = "EUR" AGAINST (SELECT count(*) FROM customers WHERE currency = "CZK") IN (1, 2)
SELECT T2.CustomerID FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date = "2012" AND T2.segment = "LAM" ORDER BY consumption LIMIT 1
SELECT avg(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Segment = "SME" AND T2.Date LIKE "2013/%"
SELECT T1.CustomerID , T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" AND T2.Date LIKE "2011%" ORDER BY T2.Consumption DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.segment = "KAM" AND T1.consumption < 30000 AND T1.date = "2012"
SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" DIFFERENT FROM yearmonth AS T2 JOIN customers AS T3 ON T2.CustomerID = T3.CustomerID WHERE T3.Currency = "EUR" YEAR = 2012
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.GasStationID WHERE T2.Price > 100 AND T2.Amount > 1000 SELECT max(T1.Consumption) FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.GasStationID WHERE T2.Price > 100 AND T2.Amount > 1000
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid GROUP BY T1.segment ORDER BY sum(T2.consumption) LIMIT 1
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" GROUP BY T1.Date ORDER BY Sum(T1.Consumption) DESC LIMIT 1
SELECT T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = 'SME' AND T2.Date LIKE "2013/%" ORDER BY T2.Consumption DESC LIMIT 1
SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "CZK" AND T2.segment = "SME" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "CZK" AND T2.segment = "LAM" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "CZK" AND T2.segment = "KAM" INTERSECT SELECT avg(consumption) - 2013 FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = "CZK" AND T2.segment = "SME"
SELECT T1.segment , max(T2.consumption) , min(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "EUR" AND T2.date BETWEEN "2012-01-01" AND "2013-12-31" GROUP BY T1.segment
SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "August" INTERSECT SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "November" AND T1.Date < 2013 WHERE T1.Date >= "August" AND T1.Date <= "November"
SELECT count(*) - count(*) FROM gasstations WHERE country = "Czech Republic" AND segment = "discount" EXCEPT SELECT count(*) - count(*) FROM gasstations WHERE country = "Slovakia" AND segment = "discount"
SELECT consumption FROM yearmonth WHERE date = '2013-04' AND customerid = 7 - (SELECT consumption FROM yearmonth WHERE date = '2013-04' AND customerid = 5)
SELECT count(*) - count(*) FROM customers WHERE currency = 'CZK' - count(*) FROM customers WHERE currency = 'EUR'
SELECT T1.customerid , T2.currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.consumption = (SELECT max(consumption) FROM yearmonth WHERE date LIKE "2013-10-%") AND T2.currency = "EUR"
SELECT T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "KAM" GROUP BY T2.CustomerID ORDER BY Consumption DESC LIMIT 1
SELECT sum(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "%2013%" AND T1.Segment = "KAM"
SELECT % of T1.consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T2.currency = 'LAM' AND T1.consumption > 46.73
SELECT country , count(*) FROM gasstations WHERE price = 1000 GROUP BY country
SELECT percentage FROM customers WHERE currency = 'EUR'
SELECT %consumption FROM yearmonth WHERE date LIKE "2012/%" AND consumption > 528.3
SELECT count(*) , country FROM gasstations WHERE country = "Slovakian" AND segment = "Premium" GROUP BY country
SELECT CustomerID FROM yearmonth WHERE Consumption = (SELECT max(Consumption) FROM yearmonth WHERE Date LIKE "2013-09-%" )
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "9/13/%" AND T2.consumption = (SELECT min(consumption) FROM yearmonth WHERE date LIKE "9/13/%");
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" ORDER BY T2.Consumption LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE YEAR = 2012
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro"
SELECT T2.Description FROM yearmonth AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Date LIKE "2013-09%"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "2013-%" AND T1.Date LIKE "% June "
SELECT T2.ChainID FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Amount = 100 AND T1.Price = 100000 AND T1.Date = "2023-10-01"
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Amount > 0 AND T1.Currency = "Euro"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012/%"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro" AND T2.consumption > 1000
SELECT T2.Description FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID JOIN gasstations AS T3 ON T1.GasStationID = T3.GasStationID WHERE T3.Country = "Czech Republic"
SELECT T2.Time FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.ChainID = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Date > "2012/1/1"
SELECT avg(T2.Price) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = "Czech Republic"
SELECT avg(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "EUR"
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/8/25%" ORDER BY T2.Date DESC LIMIT 1
SELECT T2.country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.date LIKE "2012/8/25%" AND T1.price != "0"
SELECT T1.currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date = "2012/8/24" AND T2.time = "16:25:00"
SELECT t1.segment FROM customers AS t1 JOIN yearmonth AS t2 ON t1.customerid = t2.customerid WHERE t2.date LIKE "2012/8/23 21:20:00"
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/8/26" AND T1.Currency = "CZK" AND T1.Segment = "Morning"
SELECT Segment FROM customers ORDER BY date ASC LIMIT 1
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "%2012/%8/%24 12:42:00%"
SELECT ProductID FROM transactions_1k WHERE Date LIKE "2012/%" AND TIME LIKE "%23:20:00%"
SELECT T1.Consumption , T2.Date , T1.Amount FROM yearmonth AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date LIKE "2012/%" AND T2.Amount = 124.05
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/26" AND TIME BETWEEN "8:00" AND "9:00" AND country = "CZE"
SELECT T2.currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.date LIKE "2013/%" AND T1.consumption = 214582.17
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.CardID = 667467
SELECT T2.country FROM transactions_1k AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid JOIN yearmonth AS T3 ON T1.date = T3.date WHERE T3.month = "8" AND T3.year = 2012 AND T1.amount = 548.4
SELECT count(*) FROM customers WHERE currency = 'EUR' AND date LIKE "2012/8/25%"
SELECT (T2.Consumption - T1.Consumption) / T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2012/8/25" AND T2.Segment = "2012" TO T2.Segment = "2013"
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T1.GasStationID ORDER BY SUM(T2.Amount) DESC LIMIT 1
SELECT (ProductID , COUNT(*) / (SELECT count(*) FROM products)) FROM products WHERE Description = "premium" GROUP BY ProductID HAVING COUNT(*) = 1 ORDER BY COUNT(*) DESC LIMIT 1 JOIN country ON country.Country = "SVK"
SELECT T1.Amount FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date = "2012-01" AND T1.CustomerID = 38508
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID JOIN yearmonth AS T3 ON T2.Date = T3.Date ORDER BY T2.Amount DESC LIMIT 5
SELECT T1.Currency , avg(T2.Price) , T1.Currency FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T2.CustomerID ORDER BY avg(T2.Price) DESC LIMIT 1
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.ProductID = 2 ORDER BY T2.Price DESC LIMIT 1
SELECT T2.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.ProductID = T2.ProductID WHERE T1.Price > 29.00 AND T1.ProductID = 5 AND T2.Date = "2012-08"
