SELECT max(percent (%) Eligible Free (K-12)) FROM frpm WHERE county = "Alameda" AND schooltype = "K-12"
SELECT min(frpmt) FROM frpm WHERE enroll12 >= 5 AND enroll12 <= 17
SELECT zip FROM frpm WHERE county = "Fresenici Office of Education" AND charterschool = 'Y'
SELECT mailstreet FROM schools ORDER BY frpm COUNT (DISTINCT) DESC LIMIT 1
SELECT phone FROM schools WHERE opendate > '2000-01-01' AND charter = 'Y'
SELECT count(*) FROM schools WHERE virtual = 'Y' AND avgscrmath > 400
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead >= 500 INTERSECT SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead >= 500 AND T1.magnet = 'Y'
SELECT T1.phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead > 1500 GROUP BY T1.phone ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM frpm WHERE school TYPE = 'K-12' ORDER BY frpm.count DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.chartercode WHERE T1.StatusType = 'Charter' AND avgscrmath > 560
{"sql": "SELECT count(*) FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode JOIN satscores AS T3 ON T3.cds = T1.cdscode WHERE T3.rtype = 'Read' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1.academicyear = '2013-14' AND T1
SELECT T1.CDSCode FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.Enrollment > 500
SELECT max(free meal count (Ages 5-17)) FROM frpm WHERE percent (%) Eligible Free > 0.3
SELECT T1.phone FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN satscores AS T3 ON T2.cds = T3.cds ORDER BY avgscrwrite DESC LIMIT 3
SELECT T1.NCESSchool , T1.Enrollment (Ages 5-17) FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T1.Enrollment (Ages 5-17) DESC LIMIT 5
SELECT t1.district FROM frpm AS t1 JOIN schools AS t2 ON t1.cdscode = t2.cdscode WHERE t2.state = 'Reading' GROUP BY t1.district ORDER BY avgscrread DESC LIMIT 1
SELECT count(*) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.State = "Alameda" AND T2.Eligible Free (%) < 100
SELECT T1.charternum FROM schools AS T1 JOIN satscores AS T2 ON T1.CDScode = T2.cds WHERE avgscrwrite > 499 ORDER BY avgscrwrite
SELECT count(*) FROM schools WHERE fundingtype = 'Directly funded' AND enroll12 <= 250
SELECT T1.Phone FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrRead = (SELECT max(AvgScrRead) FROM satscores WHERE rtype = "Math")
SELECT count(*) FROM frpm WHERE low grade = 9 AND high grade = 12 AND county = 'Amador'
SELECT count(*) FROM frpm WHERE free meal count (K-12) > 500 AND percent (%) eligible free (K-12) < 700 AND educational option type = 'K-12' AND county = 'Los Angeles'
SELECT T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.NumTstTakr DESC LIMIT 1
SELECT T1.Street , T1.school_name FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.enrollment (K-12) - T2.enrollment (Ages 5-17) > 30
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Percent (%) Eligible Free (K-12) > 0.1 INTERSECT SELECT T1.sname FROM schools AS T1 JOIN satscores AS T2 ON T1.cdscode = T2.cds WHERE T2.AvgScrRead >= 1500
SELECT T1.FundingType FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrRead < 400
SELECT t1.schoolname , t1.street + ' ' + t1.streetabr + ' ' + t1.city , t1.streetabr + ' ' + t1.street + ' ' + t1.city FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t1.state = 'Monterey' AND t2.freemembercount (Ages 5-17) > 800
SELECT T1.sname , avgScrWrite , T2.ext FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.opendate > 1991 OR T1.closeddate < 2000 GROUP BY T2.ext
SELECT T1.School , T1.DOC FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'K-12' GROUP BY T1.School HAVING avg(T2.Enrollment) - T2.Enrollment > (SELECT avg(T2.Enrollment) FROM schools AS T2 JOIN frpm AS T1 ON T1.CDSCode = T2.CDSCode WHERE T1.FundingType = 'K-12')
SELECT opendate FROM frpm ORDER BY enroll12 DESC LIMIT 12
SELECT DISTINCT T1.city FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode ORDER BY enroll12 LIMIT 5
SELECT percent (%) Eligible Free (K-12) FROM frpm ORDER BY enrollment (Ages 5-17) DESC LIMIT 2
SELECT T1.schoolname FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode ORDER BY T2.freemealcount (DESC) LIMIT 5
SELECT DISTINCT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.Cdscode WHERE T2.free Meal Count (Ages 5-17) BETWEEN 1900 AND 2000 AND T2.Percent (%) Eligible Free (Ages 5-17) = 1
SELECT frpm.Percent (%) Eligible Free (Ages 5-17) FROM frpm WHERE frpm.Enrollment (Ages 5-17) BETWEEN 5 AND 17 AND school_name = 'Kacey Gibson School'
SELECT t1.admemail1 FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY enroll12 LIMIT 1
SELECT t1.admFName1 FROM schools AS t1 JOIN satscores AS t2 ON t1.CDSCode = t2.cds WHERE avgscrwrite >= 1500 ORDER BY enroll12 DESC LIMIT 1
SELECT street , city , zip , state FROM schools ORDER BY frpm-percent-eligible-free-(% ) LIMIT 1
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.Enrollment (Ages 5-17) BETWEEN 2000 AND 3000 AND T1.county = "Los Angeles"
SELECT avg(numtsttaker) FROM schools WHERE opendate BETWEEN '01/01/1980' AND '12/31/1980' AND county = 'Fresno'
SELECT t1.phone FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds WHERE t1.city = "Fresno Unified" AND t2.rtype = "Read" GROUP BY t1.cds ORDER BY avgscrread LIMIT 1
SELECT T1.SchoolName FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY T2.AvgScrRead DESC LIMIT 5
SELECT DISTINCT T1.edopscode FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T2.AvgScrRead > T2.AvgScrWrite GROUP BY T1.edopscode ORDER BY avgscrread DESC LIMIT 1
SELECT avg(T1.AvgScrRead) , avg(T1.AvgScrMath) , T1.county FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.statustype = 'Charter' GROUP BY T1.county ORDER BY avg(T1.AvgScrRead) LIMIT 1
SELECT avg(scrg) , t1.city FROM schools AS t1 JOIN satscores AS t2 ON t1.cds = t2.cds WHERE t2.numge1500 >= 1500 GROUP BY t1.city ORDER BY count(*) DESC LIMIT 1
SELECT avg(AvgScrWrite) , T1.school_name FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds GROUP BY T1.school_name HAVING T1.charter = 'Y' AND T2.rtype = 'Write' AND T2.sname = 'Ricci Ulrich'
SELECT T1.State FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.State ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(county) FROM frpm WHERE county = 'Alameda County' AND district = 'Elementary School District' AND academic_year = 1980
SELECT (count(*) - 1) / count(*) FROM frpm WHERE county = 'Orange County' AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE district = 'Elementary' GROUP BY T1.cdscode
SELECT T1.County , T2.ClosedDate FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1
SELECT t1.school FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode ORDER BY avgscrmath DESC LIMIT 1
SELECT T1.MailStreet , T2.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode WHERE T3.School = (SELECT T2.School FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode JOIN schools AS T3 ON T2.CDSCode = T3.CDSCode ORDER BY avgscrread LIMIT 1)
SELECT count(*) FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE T1.mailcity = 'Lakeport' AND sum(T2.AvgScrRead) >= 1500
SELECT count(*) FROM schools WHERE mailcity = 'Fresno'
SELECT mailzip , school FROM schools WHERE mailzip < 'Avetik Atoian'
SELECT count(*) , count(*) FROM frpm WHERE mailstate = 'CA' AND county = 'Colusa' INTERSECT SELECT count(*) , count(*) FROM frpm WHERE mailstate = 'CA' AND county = 'Humboldt'
SELECT count(*) FROM schools WHERE mailstate = 'CA' AND mailcity = 'San Joaquin'
SELECT T1.Phone , T1.Ext FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode ORDER BY avgscrwrite LIMIT 333
SELECT phone , ext , school FROM schools WHERE zip = "95203-3704"
SELECT website FROM schools WHERE AdmFName1 = "Mike Larson" INTERSECT SELECT website FROM schools WHERE AdmFName2 = "Dante Alvarez"
SELECT T1.website FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T2.charterschool (Y/N) = 'N' AND T1.state = "San Joaquin"
SELECT count(*) FROM schools WHERE charter = 'Y' AND city = 'Hickman' AND district = 'Elementary School District'
SELECT count(*) FROM frpm WHERE county = "Los Angeles" AND percent (%) Eligible Free (K-12) < 0.18
SELECT T1.admFName1 , T1.admLName1 , T1.school FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T2.charterschoolnumber = "00D2"
SELECT count(*) FROM schools WHERE mailcity = 'Hickman' AND charternum = 00D4
SELECT count(*) , sum(fundingtype) , sum(percent) FROM frpm WHERE county = 'Santa Clara' AND charterfundingtype = 'Y' GROUP BY fundingtype
SELECT count(*) FROM schools WHERE opendate BETWEEN '01/01/2000' AND '12/31/2005' AND county = 'Stanislaus'
SELECT sum(T1.FRPMCount (Ages 5-17)) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.city = "San Francisco" AND T2.academicyear = 1989
SELECT T1.county FROM frpm AS T1 JOIN schools AS T2 ON T1.cdscode = T2.cdscode WHERE T2.statustype = "School Wonership Code" AND T2.edopsname = "Youth Authority Facilities (CEA)" AND T2.academicyear = 1980
SELECT T1.NCESdist FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode JOIN schools AS T3 ON T2.CDScode = T3.CDScode WHERE T3.State = 'Special' AND T2.Educational Option Type = 'Y'
SELECT count(*) , if (ClosedDate = '9999-12-31', 0 , 1) FROM frpm WHERE County = "Alpine" AND DistrictType = "Community Day School" GROUP BY districtcode
SELECT district FROM frpm EXCEPT SELECT district FROM schools WHERE magnet = 'Y' AND city = 'Fresno'
SELECT count(*) FROM frpm WHERE schoolcode = 'State Special School' AND academicyear = 2014-2015 AND 5 <= enroll12 AND enroll12 <= 17 AND mailcity = 'Fremont'
SELECT count(*) FROM frpm WHERE schoolcode = (SELECT cdsk FROM schools WHERE mailstreet = 'PO Box 1040' AND districttype = 'Youth Authority' AND districtname != 'Community High School' AND schooltype = 'Charter')
SELECT min(low_grade) FROM frpm WHERE cdscode = (SELECT cdscode FROM schools WHERE ncesdist = 0613360)
SELECT T2.EdOpsName FROM frpm AS T1 JOIN schools AS T2 ON T1.CDSCode = T2.CDSCode WHERE T1.FRPM Count (K-12) = 2 AND T2.County = 37
SELECT t1.city FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.edopscode = 'Lunch Provision 2' AND t2.lowgrade = 9 AND t2.highgrade = 12 AND t2.county = 'Merced'
SELECT T1.schoolname , T2.Percent (%) Eligible FRPM (Ages 5-17) FROM schools AS T1 JOIN frpm AS T2 ON T1.CDScode = T2.CDScode WHERE T1.county = "Los Angeles" AND T2.highgrade = 9 AND T2.lowgrade = 0 AND T2.editionaltype = "K-12"
SELECT gssoffered FROM schools WHERE city = "Adelanto" GROUP BY gssoffered ORDER BY count(*) DESC LIMIT 1
SELECT county FROM schools WHERE state = "San Diego" OR state = "Santa Barbara" AND GSoffered != "Physical" GROUP BY county ORDER BY count(*) DESC LIMIT 1
SELECT school , latitude FROM schools ORDER BY latitude DESC LIMIT 1
SELECT school , min(latitude) , min(gsoffered) , district FROM schools WHERE state = 'California' ORDER BY min(latitude) LIMIT 1
SELECT gsoffered FROM schools ORDER BY longitude DESC LIMIT 1
SELECT count(*) , mailcity FROM schools WHERE gsoffered = 'Kindergarten to 8th grade' AND magnet = 'Yes' GROUP BY mailcity
SELECT AdmFName1 , NCESdist FROM schools GROUP BY AdmFName1 ORDER BY count(*) DESC LIMIT 2
SELECT T1.districtcode FROM schools AS T1 JOIN frpm AS T2 ON T1.cdscode = T2.cdscode WHERE T1.admfname1 = "Alusine"
SELECT t1.admlname1 , t1.county , t1.schoolname FROM schools AS t1 JOIN frpm AS t2 ON t1.cdscode = t2.cdscode WHERE t2.charternum = 40
SELECT admemail1 FROM schools WHERE opendate BETWEEN '01/01/2009' AND '12/31/2010' AND district = 13 AND county = 11 AND schooltype = 'Public' AND schooltype = 'Intermediate/Middle Schools' AND districttype = 'Unified'
SELECT T1.school FROM schools AS T1 JOIN satscores AS T2 ON T1.CDSCode = T2.cds WHERE avgScrRead >= 1500 GROUP BY T1.school ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = (SELECT district_id FROM district WHERE district.A2 = 'East Bohemia') AND T2.operation = 'issuance'
SELECT count(DISTINCT T1.account_id) FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = (SELECT district_id FROM district WHERE district.A2 = 'Prague')
SELECT avg(unemployment) , year FROM unemployment GROUP BY year ORDER BY avg(unemployment) DESC LIMIT 1;
SELECT count(*) FROM district WHERE gender = 'F' AND (avg(A1) - 6000) < 4000
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'M' AND T2.A9 = "North Bohemia" GROUP BY T1.gender HAVING avg(T1.salary) > 8000
SELECT account_id FROM client WHERE gender = 'female' ORDER BY birth_date LIMIT 1 UNION SELECT account_id FROM client WHERE gender = 'female' ORDER BY avg(salary) LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "Young" GROUP BY T2.account_id ORDER BY avg(T2.balance) DESC LIMIT 1
SELECT count(*) FROM disp WHERE TYPE = 'statement' AND account_id IN (SELECT account_id FROM order WHERE operation = 'trans' AND bank = 'China' AND date LIKE "2023%" )
SELECT client_id FROM disp WHERE operation != 'deposit'
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date LIKE "1997%" ORDER BY T1.amount LIMIT 1
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'approved' AND T1.duration > 12 ORDER BY T2.date DESC LIMIT 1;
SELECT count(*) FROM client WHERE gender = 'F' AND birth_date < '1950' AND district_id = (SELECT district_id FROM account WHERE district = 'Sokolov')
SELECT account_id FROM trans WHERE date LIKE "1995%" ORDER BY date LIMIT 1
SELECT DISTINCT T1.district FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.amount > 3000 AND T2.date < 1997
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.issued = "1994/3/3"
SELECT T1.date FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount = 840 AND T1.date LIKE "1998/10/14";
SELECT T1.district_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T2.date LIKE "1994/08/25"
SELECT max(T3.amount) FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id JOIN trans AS T3 ON T2.account_id = T3.account_id WHERE T1.issued LIKE "1996/%" AND T2.date LIKE "10/%";
SELECT T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T2.type = 'new' GROUP BY T2.client_id ORDER BY T2.type LIMIT 1
SELECT T3.amount FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN disp AS T3 ON T2.account_id = T3.account_id WHERE T1.status = 'open' ORDER BY T1.amount DESC LIMIT 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T2.district_id = "Jesenik" AND T1.gender = "Female"
SELECT T1.disp_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T2.gender = "Male" AND T1.type = "Loan" AND T1.date = "1998/09/02" AND T1.amount = 5100
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A1 = "Litomerice" AND T1.date LIKE "1996%"
SELECT T2.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.gender = 'female' AND T1.birth_date = '1976/1/29'
SELECT T1.birth_date FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T2.amount = 98832 AND T2.date <= "1996/1/3"
SELECT T2.account_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id JOIN district AS T3 ON T3.district_id = T2.client_id WHERE T3.A9 = "Prague"
SELECT T1.gender , T2.A16 FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A8 = "south Bohemia" GROUP BY T2.A16 ORDER BY count(*) DESC LIMIT 1
SELECT (T3.balance - T2.balance) / T2.balance * 100 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN trans AS T3 ON T1.account_id = T3.account_id WHERE T1.date = '1993/03/22' AND T1.status = 'approved' ORDER BY T1.date
SELECT count(*) , STATUS FROM loan WHERE status = 'Fully Paid' GROUP BY STATUS
SELECT count(*) FROM loan WHERE amount < 100000 AND status = 'running'
SELECT T1.account_id , T3.A5 , T3.A12 FROM disp AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.district_id = T3.district_id WHERE T2.date > (SELECT min(date) FROM trans) AND T2.year = 1993
SELECT T1.account_id , count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T3.district_id = T1.district_id WHERE T3.A2 = 'east Bohemia' AND T1.date >= 1995 AND T1.date <= 2000 GROUP BY T1.account_id
SELECT account_id , date FROM account WHERE district_id IN (SELECT district_id FROM disp WHERE TYPE = 'P' )
SELECT T2.A2 , T2.A3 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.loan_id = '4990'
SELECT T1.account_id , T2.A5 , T2.A13 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount > 300000
SELECT T1.loan_id , T3.A3 , avg(T2.salary) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T2.A9 = T3.district_id WHERE T1.duration = 60 GROUP BY T1.loan_id
SELECT T1.A5 , T1.A13 , avg(T2.A14 - T2.A14) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.district_id IN (SELECT district_id FROM client WHERE client_type = 'debt') GROUP BY T1.A5 , T1.A13 HAVING avg(T2.A14 - T2.A14) > 0
SELECT count(*) * 100 / sum(count(*) ) FROM account WHERE date = '1993' AND district_id IN (SELECT district_id FROM account WHERE district_id = 'Decin')
SELECT DISTINCT account_id FROM account WHERE frequency = "monthly"
SELECT T1.district_id , count(*) FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.gender = 'F' GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 9;
SELECT T1.A1 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.type = 'debit' AND T2.date LIKE "1996-01-01" ORDER BY T2.amount DESC LIMIT 10;
SELECT count(*) FROM account WHERE district_id = (SELECT district_id FROM district WHERE A2 = 'South Bohemia') AND not in (SELECT account_id FROM card)
SELECT T1.A7 FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(amount) FROM loan WHERE gender = 'M'
SELECT T1.A7 , T1.A13 FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T2.date = 1996 GROUP BY T1.A7 ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM account WHERE date LIKE "1996%" GROUP BY district_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM trans WHERE TYPE = 'debit' AND balance < 0
SELECT count(*) FROM loan WHERE amount >= 250000 AND status = 'approved' AND date >= '1995-01-01' AND date <= '1997-12-31'
SELECT count(*) FROM loan WHERE duration = 'running' AND district_id = 1
SELECT count(*) FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN account AS T3 ON T2.account_id = T3.account_id WHERE T3.date = '1995' ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM card WHERE TYPE = 'high-level credit card' AND disp_id IN (SELECT disp_id FROM disp WHERE TYPE = 'owner');
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A9 = "Pisek"
SELECT T1.district_id FROM district AS T1 JOIN trans AS T2 ON T1.district_id = T2.account_id WHERE T2.date LIKE "1997%" AND T2.amount > 10000
SELECT T1.account_id FROM order AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id JOIN disp AS T3 ON T1.account_id = T3.account_id WHERE T3.type = 'Household' AND T2.district_id = T4.district_id AND T4.A2 = 'Pisek'
SELECT T2.account_id FROM card AS T1 JOIN disp AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = "Credit" AND T1.issued = "Gold"
SELECT avg(T1.amount) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.frequency = 'month' AND T2.date LIKE "2021%" AND T2.type = 'Credit'
SELECT T1.account_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'Credit' AND T2.amount < (SELECT avg(amount) FROM loan) AND T2.date = '1998'
SELECT DISTINCT T1.gender FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN account AS T3 ON T3.district_id = T2.district_id WHERE T1.gender = 'F' AND T2.A9 = "South Bohemia"
SELECT DISTINCT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id WHERE T1.district_id = 'Tabor'
{"sql": "SELECT DISTINCT T1.account_type , avg(T2.A1) FROM card AS T1 JOIN client AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Bank' AND T2.district_id = (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE frequency = 1 AND (SELECT district_id FROM account WHERE
SELECT count(*) FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN district AS T3 ON T1.district_id = T3.district_id WHERE T3.A6 = "North Bohemia" AND T2.bank = "AB"
SELECT DISTINCT T1.district_id FROM account AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T2.operation = 'withdraw'
SELECT avg(T1.crimes) FROM card AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.date >= 1997 GROUP BY T2.district_id HAVING avg(T1.crimes) > 4000
SELECT count(*) FROM card WHERE TYPE = 'classic'
SELECT count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A3 = 'Hl.m. Praha' AND T1.gender = 'M'
SELECT count(*) * 100 / 100 FROM card WHERE issued < "1998" AND TYPE = "Gold";
SELECT T1.account_id FROM account AS T1 JOIN loan AS T2 ON T1.account_id = T2.account_id GROUP BY T1.account_id ORDER BY T2.amount DESC LIMIT 1
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.date = 1995 AND T1.account_id = 532
SELECT T1.district_id FROM account AS T1 JOIN order AS T2 ON T1.account_id = T2.account_id WHERE T2.order_id = 33333
SELECT T3.amount FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id JOIN trans AS T3 ON T1.account_id = T3.account_id WHERE T2.client_id = 3356 AND T3.type = "cash"
SELECT count(*) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.amount < 200000
SELECT TYPE FROM card WHERE disp_id IN (SELECT client_id FROM disp WHERE client_id = 13539)
SELECT T1.A7 FROM district AS T1 JOIN client AS T2 ON T1.district_id = T2.district_id WHERE T2.client_id = 3541
SELECT T1.district_id FROM district AS T1 JOIN loan AS T2 ON T1.district_id = T2.account_id WHERE T2.status != "Finished with no problems" GROUP BY T1.district_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.client_id FROM disp AS T1 JOIN client AS T2 ON T1.client_id = T2.client_id WHERE T1.account_id = 32423
SELECT DISTINCT T1.trans_id FROM trans AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T2.district_id = 5
SELECT count(*) FROM account AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.district_name = "Jesenik"
SELECT T1.client_id FROM disp AS T1 JOIN card AS T2 ON T1.disp_id = T2.disp_id WHERE T2.type = 'Junior' AND T2.issued > 1996
SELECT count(*) * 100.0 / count(*) FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T2.A7 > 10000 AND T1.gender = 'F'
SELECT sum(T2.amount) - sum(T1.amount) * 100 FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.date >= '1996-04-01' AND T1.date < '1997-04-01' AND T2.gender = 'M'
SELECT count(*) FROM trans WHERE date > 1995 AND operation = 'credit'
SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A5 = "East Bohemia" AND T2.date = "1996-04-25" UNION SELECT count(*) - count(*) FROM district AS T1 JOIN account AS T2 ON T1.district_id = T2.district_id WHERE T1.A5 = "North Bohemia" AND T2.date = "1996-04-25"
SELECT count(*) , count(*) FROM disp WHERE account_id BETWEEN 1 AND 10
SELECT count(*) FROM account AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.frequency = 3 AND T2.operation = 'release'
SELECT T1.gender , T1.birth_date FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.client_id = 130
SELECT count(DISTINCT T1.account_id) FROM trans AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T2.type = 'request'
SELECT sum(T2.amount) , T1.status FROM loan AS T1 JOIN disp AS T2 ON T1.account_id = T2.account_id WHERE T1.client_id = 992 GROUP BY T1.client_id
SELECT T3.gender FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id JOIN client AS T3 ON T1.client_id = T3.client_id WHERE T2.trans_id = 851 AND T1.client_id = 4
SELECT TYPE FROM card WHERE disp_id IN (SELECT client_id FROM disp WHERE client_id = 9)
SELECT sum(T2.amount) FROM disp AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.date = 1998 AND T1.client_id = 617
SELECT T1.client_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id WHERE T1.birth_date BETWEEN '1983-01-01' AND '1987-12-31' INTERSECT SELECT T3.client_id FROM disp AS T3 JOIN account AS T2 ON T3.account_id = T2.account_id JOIN district AS T4 ON T3.client_id = T4.district_id WHERE T4.A7 = 'East Bohemia'
SELECT T1.client_id FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.account_id GROUP BY T1.client_id ORDER BY sum(T2.amount) DESC LIMIT 3 HAVING T1.gender = 'F'
SELECT count(*) FROM client AS T1 JOIN loan AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = 'M' AND T1.birth_date BETWEEN '1974-01-01' AND '1976-12-31' AND T2.amount > 4000
SELECT count(*) FROM account WHERE district_id = 12 AND date > '1996'
SELECT count(*) FROM card AS T1 JOIN client AS T2 ON T1.disp_id = T2.disp_id WHERE T1.type = 'Junior' AND T2.gender = 'Female'
SELECT count(*) * 1.0 / (SELECT count(*) FROM client WHERE district_id = 'Prague') FROM client WHERE gender = 'female'
SELECT count(*) * 100 / count(*) FROM client WHERE gender = 'M' JOIN disp ON disp.client_id = client.client_id WHERE disp.type = 'weekly'
SELECT count(*) FROM disp WHERE TYPE = "weekly" AND client_id IN (SELECT client_id FROM client WHERE gender = "male" OR birth_date = (SELECT max(birth_date) FROM client WHERE gender = "male") )
SELECT T1.account_id FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration > 24 ORDER BY T2.balance LIMIT 1
SELECT T2.account_id FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id WHERE T1.gender = "Female" ORDER BY T1.birth_date DESC LIMIT 1 UNION SELECT account_id FROM client WHERE gender = "Female" GROUP BY account_id ORDER BY avg(T2.balance) LIMIT 1
SELECT count(*) FROM client WHERE birth_date = '1920' AND district_id = (SELECT district_id FROM district WHERE A4 = 'east Bohemia')
SELECT count(DISTINCT T1.account_id) FROM loan AS T1 JOIN account AS T2 ON T1.account_id = T2.account_id WHERE T1.duration = 24 AND T2.frequency = 5
SELECT avg(amount) , T1.trans_id FROM loan AS T1 JOIN trans AS T2 ON T1.account_id = T2.account_id WHERE T1.status = 'Running' GROUP BY T1.trans_id
SELECT client_id , district_id FROM client EXCEPT SELECT client_id , district_id FROM (SELECT T1.client_id , T1.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN disp AS T3 ON T3.client_id = T1.client_id JOIN account AS T4 ON T4.account_id = T3.account_id WHERE T4.type = 'P' INTERSECT SELECT T1.client_id , T1.district_id FROM client AS T1 JOIN district AS T2 ON T1.district_id = T2.district_id JOIN disp AS T3 ON T3.client_id = T1.client_id JOIN account AS T4 ON T4.account_id = T3.account_id WHERE T4.type = 'L')
SELECT T1.client_id , T1.gender FROM client AS T1 JOIN disp AS T2 ON T1.client_id = T2.client_id JOIN loan AS T3 ON T2.account_id = T3.account_id WHERE T3.status = 'Eligible' AND T1.gender = 'High'
SELECT bond_type FROM bond GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM atom WHERE element = 'Cl'
SELECT avg(T2.molecule_id) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "O"
SELECT avg(count(*) ) FROM bond ;
SELECT count(*) FROM atom WHERE element = 'Na' AND bond_type != 'Carcinogen'
SELECT T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'triple bond' INTERSECT SELECT T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT count(*) , element FROM atom WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'double' )
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM atom WHERE element != 'Br'
SELECT count(*) FROM molecule WHERE molecule_id BETWEEN 1 AND 100 INTERSECT SELECT count(*) FROM molecule WHERE label = 'carcinogenic'
SELECT molecule_id FROM atom WHERE element = 'C'
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = "8_9"
SELECT element FROM bond WHERE bond_type = 'double'
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "H" GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT bond_type FROM bond WHERE element = 'Cl'
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE bond_type = 'single'
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id2 != T3.atom_id AND T3.element != "carcinogen"
SELECT element FROM atom EXCEPT SELECT element FROM molecule WHERE label = 'carcinogen' GROUP BY element ORDER BY count(*) LIMIT 1
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = "TR004_8" , T2.atom_id2 = "TR004_20")
SELECT label FROM molecule EXCEPT SELECT DISTINCT T1.label FROM molecule AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'tin'
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Iodine' INTERSECT SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Sulfur'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 WHERE bond_type = 'triple'
SELECT T1.element FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id2 JOIN atom AS T3 ON T2.atom_id2 = T3.atom_id WHERE T3.element = 'TR' AND T3.molecule_id = T1.molecule_id AND T1.molecule_id = '181'
SELECT count(*) FROM atom WHERE element != 'F'
SELECT count(*) , avg(T2.element) FROM bond AS T1 JOIN atom AS T2 ON T1.bond_type = 'triple' GROUP BY T2.element
{"sql": "SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom WHERE molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id , molecule_id ,
SELECT atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE bond_id = 'TR001_2_6'
SELECT count(*) - count(*) , label FROM molecule WHERE label = 'carcinogenic' INTERSECT SELECT count(*) - count(*) , label FROM molecule WHERE label = 'not carcinogenic'
SELECT T1.atom_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T2.bond_id = 'TR000_2_5'
SELECT bond_id FROM connected WHERE atom_id = 2
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" ORDER BY T2.label
SELECT count(*) - count(*) / 2 FROM bond WHERE bond_type = 'double'
SELECT count(*) * 100.0 / (SELECT sum(molecule_id) FROM molecule) FROM atom WHERE element = "carcinogenic"
SELECT count(*) * 100 / (SELECT sum(element) FROM atom WHERE element = "H") FROM atom WHERE molecule_id = 206
SELECT bond_type FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR000"
SELECT T1.element , T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Tr" AND T2.molecule_id = "TR060"
SELECT bond_type , T1.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR010" GROUP BY bond_type ORDER BY count(*) DESC LIMIT 1
SELECT T1.molecule FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.bond_id = T3.bond_id GROUP BY T1.molecule_id HAVING count(*) = 2 EXCEPT SELECT T1.molecule FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id JOIN atom AS T3 ON T2.bond_id = T3.bond_id JOIN molecule AS T4 ON T1.molecule_id = T4.molecule_id WHERE T4.label = 'carcinogenic' ORDER BY T1.molecule_id DESC LIMIT 3
SELECT bond FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR006" ORDER BY bond_id
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.bond_type = 'bond' AND T1.molecule_id = T2.molecule_id WHERE T2.atom_id = 12 AND T1.molecule_id = 13009
SELECT count(*) FROM atom WHERE element = 'Br'
SELECT bond_type , T2.element FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_id = 'TR001_6_9'
SELECT T2.label , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 'TR001_10'
SELECT count(*) FROM bond WHERE bond_type = 'triple'
SELECT count(*) FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 19
SELECT element FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = "TR004")
SELECT count(*) FROM molecule WHERE molecule_id NOT IN (SELECT molecule_id FROM atom WHERE element = 'carcinogen')
SELECT T2.label FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.atom_id = 21 OR T1.atom_id = 22 OR T1.atom_id = 23 OR T1.atom_id = 24 OR T1.atom_id = 25 AND T2.label IN ('carcinogenic')
SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'P' INTERSECT SELECT T1.bond_id FROM bond AS T1 JOIN atom AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.element = 'N'
SELECT count(*) FROM bond WHERE bond_type = 'double'
SELECT avg(T1.atom_id) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = "iodine"
SELECT bond_type , bond_id FROM bond WHERE bond_id IN (SELECT T1.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.atom_id = 45)
SELECT element FROM atom WHERE atom_id NOT IN (SELECT atom_id FROM connected)
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR041" AND bond_type = "triple"
SELECT element FROM atom WHERE atom_id = (SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom WHERE element = "TR" AND 144_8_19 = 1)
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" GROUP BY T2.label ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom GROUP BY element ORDER BY count(*) ASC LIMIT 1
SELECT atom_id FROM atom WHERE element = 'Pb' INTERSECT SELECT atom_id2 FROM connected WHERE atom_id = (SELECT atom_id FROM atom WHERE element = 'Pb')
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'double'
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T2.molecule_id = T1.molecule_id GROUP BY T1.atom_id2 HAVING count(*) = (SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T2.molecule_id = T1.molecule_id GROUP BY T1.atom_id2)
SELECT count(*) FROM bond WHERE bond_type = 'single' INTERSECT SELECT count(*) FROM bond_type WHERE bond_type = 'carcinogenic'
SELECT sum(atom_id) FROM atom WHERE element = 'C' INTERSECT SELECT sum(atom_id) FROM atom WHERE element = 'H'
SELECT atom_id2 FROM atom WHERE element = 'S'
SELECT bond_type FROM bond WHERE bond_type = 'bond' INTERSECT SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = "Tin"
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT sum(t1.element) FROM atom AS t1 JOIN bond AS t2 ON t1.molecule_id = t2.molecule_id JOIN molecule AS t3 ON t2.molecule_id = t3.molecule_id WHERE t3.label = 'triple bond' AND t1.element = 'P' OR t1.element = 'Br'
SELECT bond_id FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'carcinogenic')
SELECT molecule_id FROM bond EXCEPT SELECT molecule_id FROM (SELECT molecule_id FROM bond WHERE bond_type = 'carcinogenic' )
SELECT T1.element , T2.bond_type FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Cl" AND T2.bond_type = "single"
SELECT label FROM molecule WHERE molecule_id = 'TR000' OR molecule_id = 'TR001' OR molecule_id = 'TR002'
SELECT molecule_id FROM molecule WHERE label != 'carcinogenic'
SELECT sum(count(*) ) FROM atom WHERE molecule_id BETWEEN TR000 AND TR030
SELECT bond_type FROM bond WHERE molecule_id BETWEEN TR000 AND TR050
SELECT bond_type FROM bond WHERE bond_id = 'TR001_10_11'
SELECT count(*) FROM atom WHERE element = 'iodine' INTERSECT SELECT count(*) FROM bond WHERE bond_type = 'bond'
SELECT count(*) FROM atom WHERE element = "Calcium" GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT element FROM atom WHERE element = 'Cl' INTERSECT SELECT element FROM atom WHERE element = 'C'
SELECT T2.molecule_id , T1.molecule_id FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "triple" AND T2.label != "carcinogen" AND T2.element = "carbon"
SELECT count(*) * 100.0 FROM atom WHERE element = 'Cl' AND molecule_id IN (SELECT molecule_id FROM molecule WHERE label = 'carcinogenic')
SELECT DISTINCT element FROM atom WHERE molecule_id = TR001
SELECT molecule_id FROM bond WHERE bond_type = 'double'
SELECT T1.atom_id , T2.atom_id FROM bond AS T1 JOIN connected AS T2 ON T1.bond_id = T2.bond_id WHERE T1.bond_type = "triple"
SELECT DISTINCT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_id = "TR000_1_2"
SELECT count(*) FROM bond WHERE bond_type = 'single' AND bond_id NOT IN (SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic')
SELECT label FROM molecule WHERE molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'bond' AND bond_id = 'TR001_10_11')
SELECT bond_id , count(*) FROM bond WHERE bond_type = 'triple' GROUP BY bond_id HAVING count(*) >= 2
SELECT count(*) , T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'Toxic' AND T3.label = 'Carcinogen' GROUP BY T1.molecule_id
SELECT count(*) , element FROM atom WHERE molecule_id = 'TR006' GROUP BY element
SELECT element FROM atom WHERE element = 'Ca' INTERSECT SELECT element FROM atom WHERE element = 'Cancer'
SELECT bond_type FROM bond WHERE molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'Carbon')
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.bond_type = 'TR001_10_11'
SELECT count(*) * 100 / (SELECT count(*) FROM bond WHERE bond_type = 'triple-bond') FROM molecule AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "TR047" GROUP BY T1.molecule_id HAVING bond_type = "double-bond"
SELECT count(*) FROM atom WHERE element = 'TR001_1' AND molecule_id IN (SELECT molecule_id FROM atom GROUP BY molecule_id HAVING count(*) >= 2)
SELECT count(*) FROM atom WHERE element = 'carcinogenic' AND molecule_id = 'TR151'
SELECT element FROM atom WHERE molecule_id = 151 AND element = 'toxic'
SELECT count(*) FROM (SELECT DISTINCT molecule_id FROM compound WHERE bond_type = 'carcinogenic' GROUP BY molecule_id HAVING count(*) >= 1)
SELECT atom_id FROM atom WHERE molecule_id BETWEEN TR010 AND TR050 AND element = 'C'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = 'carcinogenic'
SELECT bond_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT bond_id FROM bond WHERE bond_type = 'carcinogenic'
SELECT count(*) FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'H' AND T2.label = 'carcinogenic'
SELECT T3.molecule_id FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id JOIN bond AS T3 ON T2.bond_id = T3.bond_id WHERE T1.element = 'TR000_1' AND T3.bond_type = 'TR000_1_2'
SELECT atom_id FROM atom WHERE element = 'Carbon' EXCEPT SELECT atom_id FROM atom WHERE element = 'Carcinogen'
SELECT count(*) , element FROM atom WHERE element = 'H' AND molecule_id IN (SELECT molecule_id FROM atom WHERE element = 'C' )
SELECT count(*) FROM atom WHERE element = 'C' AND molecule_id = 124
SELECT element FROM atom WHERE element = 'TR186'
SELECT bond_type FROM bond WHERE bond_id = (SELECT bond_id FROM connected WHERE molecule_id = (SELECT molecule_id FROM atom WHERE atom_id = 'TR007_4_19') )
SELECT element FROM atom WHERE atom_id IN (SELECT atom_id2 FROM connected WHERE bond_id = 'TR001_2_4' )
SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = "H" AND T1.bond_type = "double" INTERSECT SELECT count(*) FROM bond AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id WHERE T2.element = "C" AND T1.bond_type = "carcinogenic"
SELECT molecule_id , element FROM atom WHERE element = 'carcinogen'
SELECT T1.label , T2.atom_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id JOIN bond AS T3 ON T3.bond_id = T1.bond_id WHERE T3.bond_type = 'single'
SELECT T1.molecule_id , T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id GROUP BY T1.molecule_id HAVING count(*) = 2
SELECT T1.element FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.bond_id WHERE T2.bond_type = "TR000_2_3"
SELECT count(*) FROM atom AS T1 JOIN connected AS T2 ON T1.atom_id = T2.atom_id WHERE T1.element = 'Cl'
SELECT count(*) , T1.atom_id FROM atom AS T1 JOIN bond AS T2 ON T1.atom_id = T2.atom_id WHERE T1.molecule_id = 346 GROUP BY T1.atom_id
SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "double" INTERSECT SELECT count(*) , count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label = "carcinogenic compound"
SELECT count(*) FROM atom WHERE element != 'S' AND bond_type != 'double'
SELECT T2.label FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.bond_type = "carcinogenic" AND T1.bond_id = "TR001_2_4"
SELECT count(*) FROM atom WHERE molecule_id = 'TR001'
SELECT count(*) FROM bond WHERE bond_type = 'single'
SELECT T2.molecule_id FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "cl" GROUP BY T2.molecule_id HAVING count(*) >= 1 AND T2.label = "carcinogenic"
SELECT molecule_id FROM atom WHERE element = 'c' EXCEPT SELECT molecule_id FROM (SELECT molecule_id FROM atom WHERE element = 'carcinogen' )
SELECT count(*) / (SELECT count(*) FROM atom WHERE element = 'Chlorine') FROM atom WHERE element = 'Chlorine'
SELECT molecule_id FROM bond WHERE bond_id = "TR001_1_7"
SELECT count(*) FROM bond WHERE bond_id = 'TR001_3_4'
SELECT bond_type FROM bond WHERE bond_id IN (SELECT T1.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 'TR000_1' INTERSECT SELECT T1.bond_id FROM connected AS T1 JOIN atom AS T2 ON T1.atom_id2 = T2.atom_id WHERE T2.atom_id = 'TR000_2')
SELECT molecule FROM atom WHERE atom_id = "TR000_2" UNION SELECT molecule FROM atom WHERE atom_id = "TR000_4"
SELECT element FROM atom WHERE atom_id = "TR000_1"
SELECT count(*) FROM atom WHERE element = 'C' AND molecule_id = 'TR000'
SELECT count(*) , avg(atom_id) FROM bond GROUP BY bond_type HAVING bond_type = 'single'
SELECT count(*) FROM atom WHERE element = 'N'
SELECT T1.molecule FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = "Sulfur" AND T1.bond_type = "double"
SELECT molecule_id FROM atom GROUP BY molecule_id HAVING sum(atom_id) > 5
SELECT T1.element FROM atom AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id JOIN bond AS T3 ON T3.molecule_id = T2.molecule_id AND T3.bond_type = 'double' WHERE T2.label = 'TR024'
SELECT molecule_id , element FROM atom GROUP BY molecule_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) * 100 / (SELECT count(*) FROM atom WHERE element = 'H' AND molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = 'triple' )) FROM molecule AS T1 JOIN atom AS T2 ON T1.atom_id = T2.atom_id2 WHERE T2.element = 'H' AND T1.label = 'carcinogenic' GROUP BY T1.label
SELECT count(*) FROM atom WHERE element = 'carcinogenic'
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE T2.label BETWEEN 'TR004' AND 'TR010' AND T1.bond_type = 'single'
SELECT count(*) FROM atom WHERE molecule_id = (SELECT molecule_id FROM atom WHERE molecule_name = "TR008")
SELECT element FROM atom WHERE atom_id = "TR004_7" EXCEPT SELECT element FROM atom WHERE atom_id = "TR004_7" AND molecule_id IN (SELECT molecule_id FROM bond WHERE bond_type = "carcinogenic")
SELECT count(*) FROM atom AS T1 JOIN bond AS T2 ON T1.molecule_id = T2.molecule_id WHERE T1.element = 'O' AND T2.bond_type = 'double';
SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'triple' EXCEPT SELECT count(*) FROM bond AS T1 JOIN molecule AS T2 ON T1.molecule_id = T2.molecule_id WHERE bond_type = 'carcinogenic'
SELECT element , bond_type FROM bond WHERE molecule_id = 1002
SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM bond WHERE bond_type = 'double' INTERSECT SELECT atom_id FROM atom WHERE molecule_id = (SELECT molecule_id FROM molecule WHERE label = 'TR012') )
SELECT atom_id FROM atom WHERE element = "o"
SELECT name FROM cards WHERE power = 'incredibly powerful'
SELECT name FROM cards WHERE isTextless = 'true' AND hasNonFoil = 'true'
SELECT faceName FROM cards WHERE convertedManaCost > (SELECT min(convertedManaCost) FROM cards)
SELECT name FROM cards WHERE frameEffects = '2015' AND edhrecRank < 100
SELECT T1.name FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId JOIN printings AS T3 ON T1.id = T3.id WHERE T3.format = "gladiator" AND T3.isReserved = 1 AND T1.rarity = "mythic"
SELECT T1.status FROM legalities AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.cardKingdomId = 'cards' AND T2.cardKingdomFoilId = 'cards' AND count(*) = 1
SELECT T1.id , T1.artist FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "commander" AND T2.status = "okay"
SELECT T1.flavorText , T1.date FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Stephen Daniel' INTERSECT SELECT T1.flavorText , T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.artist = 'Stephen Daniel'
SELECT T1.date , T1.text FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Sublime Epiphany' AND T2.number = 74s
SELECT T1.name , T1.artist , T3.promoTypes FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN rulings AS T3 ON T1.uuid = T3.uuid WHERE T3.status = 'Active' GROUP BY T1.uuid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.number = 29 AND T1.name = "Annul"
SELECT T1.name FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "Japanese"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE language = 'Chinese Simplified') FROM foreign_data AS T1 JOIN cards AS T2 ON T1.id = T2.id WHERE T1.language = 'Chinese Simplified'
SELECT count(*) , T1.name FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN cards AS T3 ON T3.id = T2.setcode WHERE T2.language = "Italian" GROUP BY T1.code
SELECT count(DISTINCT T1.types) FROM cards AS T1 JOIN (SELECT DISTINCT TYPE FROM cards AS T2 JOIN (SELECT DISTINCT T1.types FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code JOIN rulings AS T3 ON T2.id = T3.uuid WHERE T3.date > '2019-01-01' AND T2.baseSetSize = 1) AS T4 ON T1.id = T4.cardId AND T2.code = T4.parentCode) AS T5 GROUP BY T5.types HAVING T5.date > '2019-01-01' AND T5.date < date(min) ORDER BY count(DISTINCT T1.types) DESC LIMIT 1;
SELECT keywords FROM cards WHERE name = 'Angel of Mercy'
SELECT count(*) FROM cards WHERE power = "infinite"
SELECT promoTypes FROM cards WHERE name = 'Duress'
SELECT borderColor FROM cards WHERE name = "Ancestor's Chosen";
{"sql": "SELECT originalType FROM cards WHERE name = 'Ancestor\'s Chosen'"}
SELECT T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN sets AS T3 ON T3.code = T2.setCode WHERE T1.name = "Angel of Mercy"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = "restricted" INTERSECT SELECT count(*) FROM foreign_data AS T3 JOIN cards AS T4 ON T3.uuid = T4.uuid
SELECT T2.flavorText FROM rulings AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T1.text = "Condemn"
SELECT count(*) FROM legalities WHERE status = 'restricted' INTERSECT SELECT count(*) FROM cards WHERE isStarter = 1
SELECT count(*) FROM legalities WHERE id IN (SELECT id FROM cards WHERE name = "Cloudchaser Eagle" )
SELECT TYPE FROM cards WHERE name = "Benalish Knight";
SELECT DISTINCT T2.flavorText FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.uuid = T2.uuid WHERE T1.cardKingdomFoilId = "Benalish Knight"
SELECT DISTINCT artist FROM cards WHERE cardKingdomId = "Phyrexian"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE borderColor != "border") FROM cards GROUP BY cardKingdomId ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM cards WHERE isReprint = 'yes' AND scryfallillustrationid IN (SELECT scryfallillustrationid FROM cards WHERE language = 'German')
SELECT count(*) FROM cards WHERE isTextless = 'borderless' AND flavortext = 'Russian'
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE isStorySpotlight = 'Y' AND language = 'French') FROM foreign_data AS T1 JOIN cards AS T2 ON T1.multiverseid = T2.multiverseid WHERE T2.isStorySpotlight = 'Y' AND T1.language = 'French'
SELECT count(*) FROM cards WHERE toughness = 99
SELECT name FROM cards WHERE scryfallillustrationid = (SELECT scryfallillustrationid FROM cards WHERE artist = "Aaron Boyd")
SELECT count(*) FROM cards WHERE borderColor = "black" AND cardKingdomFoilId = "mtgo"
SELECT id FROM cards WHERE convertedManaCost = 0
SELECT layout FROM cards WHERE keywords LIKE '%flying%'
SELECT count(*) FROM cards WHERE originalType = "Summon - Angel" AND subtypes != "Angel"
SELECT cardKingdomFoilId FROM cards WHERE power = "incredibly powerful" INTERSECT SELECT cardKingdomFoilId FROM cards WHERE hasNonFoil = 1
SELECT id FROM cards WHERE duelDeck = "a"
SELECT DISTINCT edhrecRank FROM cards WHERE frameVersion = "2015"
SELECT T1.name FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.asciiName WHERE T1.language = "Chinese Simplified"
SELECT name FROM cards WHERE availability = 'available' INTERSECT SELECT flavorname FROM foreign_data WHERE LANGUAGE = 'Japanese'
SELECT count(*) FROM cards WHERE borderColor = 'white' AND colorIndicator = 'card';
SELECT T2.uuid , T1.flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.cardKingdomId = "legacy"
SELECT text FROM rulings WHERE status = "Ruling" AND flavortext = "Beacon of Immortality";
SELECT count(*) , T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.frameVersion = 'future'
SELECT colorIdentity , colorIndicator FROM cards WHERE cardKingdomFoilId = "OGW"
SELECT T2.translation , T2.language FROM cards AS T1 JOIN set_translations AS T2 ON T1.id = T2.code WHERE T1.setcode = 10 AND T1.convertedManaCost = 5
SELECT T1.name , T3.date FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T1.code WHERE originalType = "Creature" AND T1.originalText = "Elf"
SELECT colorIndicator , format FROM cards WHERE id BETWEEN 1 AND 20;
SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN foreign_data AS T3 ON T2.id = T3.id WHERE T1.colorIndicator = "Black" INTERSECT SELECT T1.name FROM cards AS T1 JOIN set_translations AS T2 ON T1.uuid = T2.setCode JOIN foreign_data AS T3 ON T2.id = T3.id WHERE T1.colorIndicator = "Black" AND T2.flavorText = "Language"
SELECT name FROM cards WHERE rarity = 'uncommon' ORDER BY releaseDate ASC LIMIT 3;
SELECT count(*) FROM cards WHERE hasnonfoil = 'false' AND power = 'power' AND artist = 'John Avon'
SELECT count(*) FROM cards WHERE power = 'White' AND borderColor = 'bold';
SELECT count(*) FROM cards WHERE mtgoid IN (SELECT mtgoid FROM cards WHERE printings = 'mtgo' AND TYPE = 'card') AND artist = 'UDON' AND hand = -1
SELECT count(*) FROM cards WHERE frameversion = "1993" AND hasContentWarning = 1 AND availability = "paper"
SELECT manaCost FROM cards WHERE layout = 'normal' AND frameVersion = '2003' AND borderColor = 'black' AND availability = 'paper' AND availability = 'mtgo'
SELECT sum(convertedManaCost) FROM cards WHERE artist = 'Rob Alexander'
SELECT DISTINCT TYPE FROM cards WHERE cardKingdomFoilId = "arena"
SELECT setcode FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE LANGUAGE = "es"
SELECT count(*) * 100 / count(*) FROM cards WHERE isOnlineOnly = 'yes' AND frameEffects = 'legendary'
SELECT count(*) FROM cards WHERE isTextless = 'false'
SELECT count(*) , name FROM foreign_data WHERE LANGUAGE = "Spanish" ORDER BY name
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.number = 309
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code JOIN foreign_data AS T3 ON T3.id = T2.setcode WHERE T3.language = "Portuguese" AND T3.name = "Commander"
SELECT T1.id FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.status = 'Legal'
SELECT DISTINCT TYPE FROM cards WHERE TYPE LIKE '%card%' AND language = 'de'
SELECT count(*) FROM cards WHERE power = 'triggered'
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "This is a triggered mana ability." EXCEPT SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T2.text = "This is a triggered mana ability." AND T1.format = "pre-modern" GROUP BY T1.id HAVING count(*) > 1
SELECT id FROM cards WHERE artist = "Erica Yang" AND availability = "paper"
SELECT artist FROM cards WHERE text = "Das perfekte Gegenmittel zu einer dichten Formation"
SELECT T1.flavortext FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.language = "French" AND T2.type = "Creature" AND T2.borderColor = "Black" AND T2.layout = "Normal" AND T2.artist = "Matthew D. Wilson"
SELECT count(*) FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "print" AND T2.date = "01/02/2007"
SELECT T2.flavorText FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.block = "Ravnica" AND T1.baseSetSize = 180
SELECT count(*) * 100 / count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.cardKingdomFoilId = 'format commander' AND T2.status != 'has content warning'
SELECT count(*) * 100 / count(*) FROM cards WHERE power = 'none' AND flavortext = 'French'
SELECT count(*) * 100 / count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN translations AS T3 ON T3.language = T1.language WHERE T3.language = "Japanese" AND T2.type = "Expansion"
SELECT DISTINCT printings FROM cards WHERE artist = "Daren Bader";
SELECT count(*) FROM cards WHERE edhrecRank > 12000 AND borderColor != "none";
SELECT count(*) FROM cards WHERE isOversized = 'Y' AND promoTypes = 'Promotion' AND isReprint = 'Y'
SELECT power FROM cards WHERE promoTypes = 'Promotion' AND mtgArenaId = 'MTG' ORDER BY power
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid WHERE T1.multiverseid = 149934
SELECT cardKingdomFoilId FROM cards ORDER BY cardKingdomFoilId ASC LIMIT 3
SELECT count(*) FROM cards WHERE layout != 'normal'
SELECT number FROM cards WHERE count(*) = 1 AND subtypes = "Angel" INTERSECT SELECT number FROM cards WHERE count(*) = 1 AND subtypes = "Wizard"
SELECT name FROM sets WHERE isNonFoilOnly != "yes" AND mtgoCode != "Magic: The Gathering Online" ORDER BY name
SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN sets AS T2 ON T1.setcode = T2.code JOIN card_languages AS T3 ON T3.setcode = T2.setcode AND T3.code = 'ARC' UNION SELECT DISTINCT T1.language FROM foreign_data AS T1 JOIN set_translations AS T2 ON T1.setcode = T2.code JOIN card_languages AS T3 ON T3.setcode = T2.setcode AND T3.code = 'ARC'
SELECT T2.name , T3.translation FROM sets AS T1 JOIN card AS T2 ON T1.code = T2.code JOIN set_translations AS T3 ON T3.code = T1.code WHERE T1.number = 5
SELECT T2.language , T2.promoTypes FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.number = 206
SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.setcode WHERE T2.language = "Italian" AND T3.block = "Shadowmoor" ORDER BY T1.id
SELECT id FROM cards WHERE hasFoil AND flavorText = "Japanese" INTERSECT SELECT id FROM cards WHERE hasFoil AND flavorText = "Japanese" AND availability != "Foreign"
SELECT name FROM sets ORDER BY totalSetSize DESC LIMIT 1;
SELECT count(*) FROM foreign_data AS T1 JOIN sets AS T2 ON T1.multiverseid = T2.multiverseid JOIN set_translations AS T3 ON T1.flavortext = T3.flavortext WHERE T3.language = "Chinese Simplified" AND T2.isOnlineOnly = 1
SELECT count(*) FROM sets WHERE isNonFoilOnly = 'Yes' AND isOnlineOnly = 'No' AND name LIKE "%Japanese%"
SELECT id FROM cards WHERE colorIndicator = "black"
SELECT id FROM cards WHERE frameEffects = 'extendedart'
SELECT name FROM cards WHERE isFullArt = 'yes' AND borderColor = 'black'
SELECT T2.language FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.code WHERE T1.id = 174
SELECT name FROM sets WHERE setcode = "ALL"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.faceName = "A Pedra Fellwar"
SELECT code FROM sets WHERE releaseDate = '07/13/2007'
SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1 = T2.block WHERE T1.name = "Masques" INTERSECT SELECT T2.baseSetSize , T2.code FROM blocks AS T1 JOIN sets AS T2 ON T1 = T2.code WHERE T1.name = "Mirage"
SELECT code FROM sets WHERE TYPE = 'expansion'
SELECT T2.flavorName , T2.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T1.flavorText = 'boros'
SELECT T1.language , T1.flavorText , T2.types FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T1.colors = "colorIdentity"
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE convertedManaCost = 10 AND cardKingdomId = 'Abyssal Horror') FROM cards WHERE convertedManaCost = 10
SELECT code FROM sets WHERE parentCode = 'Expansion Commander'
SELECT T2.flavorName , T2.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.flavorName WHERE T1.flavorText = 'abzan'
SELECT T1.language , T2.type FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.watermark = 'azorius'
SELECT count(*) FROM cards WHERE cardKingdomFoilId = "incredibly powerful" AND artist = "Aaron Miller"
SELECT count(*) FROM cards WHERE availability = 'paper' AND hand > 0
SELECT name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.asciiName WHERE T2.flavorText = 'text'
SELECT convertedManaCost FROM cards WHERE name = "Ancestor's Chosen"
SELECT count(*) FROM cards WHERE borderColor = "white" AND power = "unknown"
SELECT faceName FROM cards WHERE isPromo = 'yes' GROUP BY faceName HAVING count(*) >= 2
SELECT DISTINCT TYPE FROM cards WHERE name = "Molimo, Maro-Sorcerer"
SELECT purchaseUrls FROM cards WHERE promoTypes = "bundle"
SELECT count(*) FROM cards WHERE borderColor = "black" AND printings = "arena" INTERSECT SELECT count(*) FROM cards WHERE borderColor = "black" AND printings = "mtgo"
SELECT convertedManaCost FROM cards WHERE name = "Serra Angel" OR name = "Shrine Keeper"
SELECT artist FROM cards WHERE promoTypes = "starter" AND flavorName = "Battra, Dark Destroyer"
SELECT T1.asciiName FROM cards AS T1 JOIN sets AS T2 ON T1.mcmId = T2.mcmId WHERE T2.releaseDate LIKE "2003%" ORDER BY convertedManaCost DESC LIMIT 3
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN sets AS T3 ON T3.code = T1.parentCode WHERE T1.asciiName = "Ancestor's Chosen" AND T3.name = "Set of Cards with "Ancestor's Chosen"" AND T2.language = "Italian"
SELECT count(*) FROM set_translations AS T1 JOIN sets AS T2 ON T1.setCode = T2.code JOIN cards AS T3 ON T1.setcode = T2.setcode WHERE T3.name = 'Angel of Mercy'
SELECT name FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T2.flavorText FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Ancestor's Chosen" AND T2.language = "ko"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.id WHERE T2.name = "Hauptset Zehnte Edition" INTERSECT SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.id = T2.id WHERE T2.format = "image" AND T1.artist = "Adam Rex"
SELECT count(*) FROM cards WHERE setcode = "Hauptset Zehnte Edition"
SELECT T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Eighth Edition" AND T2.language = "Simplified Chinese"
SELECT count(*) FROM cards WHERE name = "Angel of Mercy" AND isOnlineOnly = 1
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.name = "Ancestor's Chosen"
SELECT T2.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = "Hauptset Zehnte Edition";
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.block = "Ice Age" AND T2.language = "Italian"
SELECT count(*) FROM cards WHERE isForeignOnly = 1 AND name = "Adarkar Valkyrie" AND availability != "PUBLISHED" AND releaseDate != "2023-08-20"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T2.language = "Italian" AND T1.baseSetSize < 100
SELECT count(*) FROM cards WHERE borderColor = 'Black';
SELECT name FROM cards WHERE cardKingdomFoilId = 'Coldsnap' ORDER BY convertedManaCost DESC LIMIT 1
SELECT artist FROM cards WHERE setcode = "Coldsnap" INTERSECT SELECT artist FROM cards WHERE faceName = "Jeremy Jarvis" INTERSECT SELECT artist FROM cards WHERE faceName = "Aaron Miller" INTERSECT SELECT artist FROM cards WHERE faceName = "Chippy"
SELECT number FROM cards WHERE setcode = 'Coldsnap' AND id = 4
SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Coldsnap' AND convertedManaCost > 5 AND power != 'Known'
SELECT flavorText FROM cards WHERE name = "Ancestor's Chosen" AND flavorName = "Italian"
SELECT DISTINCT T2.language FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.flavorText WHERE T1.faceName = "Ancestor's Chosen"
SELECT T1.flavorText FROM foreign_data AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = "Ancestor's Chosen" AND T1.language = "de"
SELECT T2.flavorText FROM rulings AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.setCode WHERE T3.type = "Coldsnap" AND T2.language = "Italian"
SELECT name FROM cards WHERE cardKingdomFoilId = 'Coldsnap' ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = 'Reminisce'
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE convertedManaCost = 7) FROM cards WHERE cardKingdomFoilId = "Coldsnap"
SELECT count(*) * 100 / (SELECT count(*) FROM cards WHERE cardKingdomFoilId = 'Coldsnap') FROM cards WHERE cardKingdomId = 'Incredibly Powerful'
SELECT code FROM sets WHERE releaseDate = "2017/7/14";
SELECT keyruneCode FROM sets WHERE code = "PKHC"
SELECT mcmidextras FROM sets WHERE code = 'SS2'
SELECT mcmName FROM sets WHERE releaseDate = "2017/6/9" JOIN cards ON sets.code = cards.id WHERE cardKingdomFoilId = "magic";
SELECT T2.expansion_type FROM sets AS T1 JOIN legalities AS T2 ON T1.id = T2.mcmId WHERE T1.name = "From the Vault: Lore"
SELECT parentCode FROM sets WHERE name = "Commander 2014 Oversized"
SELECT T2.flavorText FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.id WHERE T1.artist = "Jim Pavelec"
SELECT T2.releaseDate FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId WHERE T1.flavorName = "Evacuation"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.keyruneCode WHERE T2.name = "Rinascita di Alara"
SELECT T2.promoTypes FROM sets AS T1 JOIN card AS T2 ON T1.code = T2.code WHERE T1.name = "Huitième édition"
SELECT T2.flavorName FROM cards AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode JOIN sets AS T3 ON T3.code = T2.code WHERE T1.asciiName = "Tendo Ice Bridge" AND T3.language = "French"
SELECT count(*) FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setCode WHERE T1.name = "Tenth Edition"
SELECT T2.name FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId JOIN set_translations AS T3 ON T2.code = T3.setCode WHERE T1.cardKingdomFoilId = T4.cardKingdomFoilId AND T3.language = "Japanese" AND T1.faceName = "Fellwar Stone"
SELECT name FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.keyruneCode WHERE T2.name = 'Journey into Nyx Hero's Path' ORDER BY convertedManaCost DESC LIMIT 1
SELECT T1.releaseDate FROM sets AS T1 JOIN cards AS T2 ON T1.code = T2.id WHERE T2.name = "Ola de frío"
SELECT T2.promoTypes FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T1.name = 'Samite Pilgrim'
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.code WHERE T2.mcmname = "World Championship Decks 2004" AND T1.convertedManaCost = "3"
SELECT T2.translation FROM sets AS T1 JOIN set_translations AS T2 ON T1.code = T2.setcode WHERE T1.name = "Mirrodin" AND T2.language = "simplified"
SELECT count(*) FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId JOIN set_translations AS T3 ON T3.code = T2.name WHERE T3.language = "Japanese" AND T2.isNonFoilOnly != "false"
SELECT count(*) * 100.0 / (SELECT count(*) FROM cards WHERE isOnlineOnly = 'yes' ) FROM cards WHERE isOnlineOnly = 'yes' AND setcode IN ( SELECT code FROM sets WHERE name = 'Brazil' )
SELECT DISTINCT printings FROM cards WHERE id NOT IN ( SELECT T1.id FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.multiverseid JOIN legalities AS T3 ON T2.id = T3.uuid WHERE T3.format = "text" AND T3.status = 1 )
SELECT T1.id FROM cards AS T1 JOIN sets AS T2 ON T1.cardKingdomId = T2.cardKingdomId GROUP BY T1.cardKingdomId ORDER BY count(*) DESC LIMIT 1
SELECT artist FROM cards WHERE convertedmanaCost = (SELECT max(convertedmanaCost) FROM cards) GROUP BY artist HAVING count(*) != 2
SELECT frameEffects FROM cards WHERE power = 'incredible' AND isFoilOnly = 1 GROUP BY frameEffects ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM cards WHERE power = 'unknown' AND cardKingdomFoilId = 'none' AND duelDeck = 'A'
{"sql": "SELECT max(totalSetSize) FROM cards AS T1 JOIN sets AS T2 ON T1.mtgoId = T2.mcmIdExtras WHERE T2.type = \"Commander\" AND T1.isPromo = 1 UNION SELECT T2.id FROM cards AS T1 JOIN sets AS T2 ON T1.mtgoId = T2.mcmIdExtras WHERE T2.type = \"Commander\" AND T1.isPromo = 1 INTERSECT SELECT T2.id FROM cards AS T1 JOIN sets AS T2 ON T1.mtgoId = T2.mcmIdExtras WHERE T2.type = \"Commander\" AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 EXCEPT SELECT max(totalSetSize) FROM cards AS T1 JOIN sets AS T2 ON T1.mtgoId = T2.mcmIdExtras WHERE T2.type = \"Commander\" AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1 AND T1.isTimeshifted = 1 AND T1.isFoilOnly = 1 AND T1.isNonFoilOnly = 1 AND T1.isPromo = 1 AND T1.isReprint = 1 AND T1.isStarter = 1
SELECT id FROM cards ORDER BY convertedManaCost LIMIT 0;
SELECT T1.releaseDate , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid ORDER BY T1.releaseDate DESC LIMIT 1
SELECT count(*) FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid WHERE T2.language = "French" AND T1.artist = "Volkan Baçım"
SELECT count(*) FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T1.rarity = "rare" AND T2.status = "legal"
SELECT format , T1.name FROM cards AS T1 JOIN foreign_data AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T2.mcmid = T3.mcmid WHERE T3.type = 'legal' AND T2.status = 'banned' GROUP BY T1.format ORDER BY count(*) DESC LIMIT 1
SELECT flavorText FROM foreign_data WHERE name = "Battlebond"
SELECT T1.faceName , T1.format FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T3.uuid = T2.uuid WHERE T3.format = 'play' GROUP BY T1.faceName ORDER BY count(*) ASC LIMIT 1
SELECT T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "legacy" INTERSECT SELECT T1.status FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "sensitive" AND T1.faceName = "D. Alexander Gregory"
SELECT name , format FROM cards WHERE edhrecRank = 1
SELECT avg(T2.releaseDate) FROM cards AS T1 JOIN sets AS T2 ON T1.id = T2.keyruneCode WHERE T1.originalReleaseDate BETWEEN '01/01/2012' AND '12/31/2015' AND T2.type = 'base'
SELECT artist FROM cards WHERE isOnlineOnly = 'yes' AND borderColor = 'black'
SELECT T1.uuid FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid WHERE T2.format = "old"
SELECT count(*) FROM cards WHERE isOnlineOnly = 'paper' AND artist = 'Matthew D. Wilson'
SELECT T1.date FROM rulings AS T1 JOIN cards AS T2 ON T1.uuid = T2.uuid WHERE T2.name = (SELECT T2.name FROM cards AS T2 WHERE T2.artist = "Kev Walker") ORDER BY T1.date DESC
SELECT T1.name , T2.format FROM cards AS T1 JOIN legalities AS T2 ON T1.uuid = T2.uuid JOIN sets AS T3 ON T3.code = T2.parentCode WHERE T3.name = "Hour of Devastation"
SELECT name FROM sets WHERE code NOT IN (SELECT setcode FROM set_translations WHERE translation = "Japanese") AND code NOT IN (SELECT setcode FROM set_translations WHERE translation = "Korean")
{"sql": "SELECT DISTINCT T1.frameEffects , T1.frameVersion FROM cards AS T1 JOIN rulings AS T2 ON T1.uuid = T2.uuid JOIN legalities AS T3 ON T2.date = T3.date WHERE T2.status = 'Banned' AND T3.format = 'Card' AND T1.cardKingdomFoilId != \"null\" AND T1.cardKingdomId != \"null\" JOIN sets AS T4 ON T1.mcmId = T4.mcmId AND T1.mcmMetaId != \"null\" JOIN foreign_data AS T5 ON T1.uuid = T5.uuid JOIN foreign_data AS T6 ON T1.uuid = T6.uuid JOIN foreign_data AS T7 ON T1.uuid = T7.uuid JOIN cards AS T8 ON T1.id = T8.id JOIN cards AS T9 ON T1.id = T9.id JOIN cards AS T10 ON T1.id = T10.id JOIN cards AS T11 ON T1.id = T11.id JOIN cards AS T12 ON T1.id = T12.id JOIN cards AS T13 ON T1.id = T13.id JOIN cards AS T14 ON T1.id = T14.id JOIN cards AS T15 ON T1.id = T15.id JOIN cards AS T16 ON T1.id = T16.id JOIN cards AS T17 ON T1.id = T17.id JOIN cards AS T18 ON T1.id = T18.id JOIN cards AS T19 ON T1.id = T19.id JOIN cards AS T20 ON T1.id = T20.id JOIN cards AS T21 ON T1.id = T21.id JOIN cards AS T22 ON T1.id = T22.id JOIN cards AS T23 ON T1.id = T23.id JOIN cards AS T24 ON T1.id = T24.id JOIN cards AS T25 ON T1.id = T25.id JOIN cards AS T26 ON T1.id = T26.id JOIN cards AS T27 ON T1.id = T27.id JOIN cards AS T28 ON T1.id = T28.id JOIN cards AS T29 ON T1.id = T29.id JOIN cards AS T30 ON T1.id = T30.id JOIN cards AS T31 ON T1.id = T31.id JOIN cards AS T32 ON T1.id = T32.id JOIN cards AS T33 ON T1.id = T33.id JOIN cards AS T34 ON T1.id = T34.id JOIN cards AS T35 ON T1.id = T35.id JOIN cards AS T36 ON T1.id = T36.id JOIN cards AS T37 ON T1.id = T37.id JOIN cards AS T38 ON T1.id = T38.id JOIN cards AS T39 ON T1.id = T39.id JOIN cards AS T40 ON T1.id = T40.id JOIN cards AS T41 ON T1.id = T41.id JOIN cards AS T42 ON T1.id = T42.id JOIN cards
SELECT DisplayName FROM users WHERE Reputation > (SELECT DisplayName FROM users WHERE Name = "Harlan" OR Name = "Jarrod Dixon")
SELECT T1.DisplayName FROM users AS T1 JOIN users AS T2 ON T1.AccountId = T2.AccountId WHERE T2.CreationDate = "2011-01-01"
SELECT count(*) FROM users WHERE lastAccessDate > '2014-09-01'
SELECT T1.DisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId GROUP BY T1.Id ORDER BY T2.ViewCount DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.UpVotes > 100 AND T2.DownVotes > 100
SELECT count(*) FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.Views > 10 AND T1.creationdate > 2013
SELECT COUNT(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.name = "Csgillispie"
SELECT title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.userid = "csgillespie"
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId WHERE T2.Title = "Eliciting priors from experts"
SELECT title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'Csgill' ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.OwnerUserId GROUP BY T2.OwnerUserId ORDER BY SUM(T2.score) DESC LIMIT 1
SELECT sum(T2.CommentCount) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.name = 'Csgillispie'
SELECT max(AnswerCount) FROM badges AS T1 JOIN posts AS T2 ON T1.OwnerUserId = T2.OwnerUserId WHERE T1.Name = "Csgillis"
SELECT T1.LastEditorDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Body = "Examples for teaching: Correlation does not mean causation"
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.OwnerDisplayName = "Csgillis");
SELECT T4.OwnerDisplayName FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId JOIN users AS T3 ON T2.UserId = T3.Id JOIN tags AS T4 ON T4.ExcerptPostId = T1.Id WHERE T1.Score = 9.5
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation > 19
SELECT T2.Location FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T1.title = "Eliciting priors from experts"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T2.TagName = "bayesian"
SELECT T1.Body FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId GROUP BY T2.ExcerptPostId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgillispie'
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgilliespie'
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'Csgill' AND T1.date = 2011
SELECT T1.DisplayName FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId GROUP BY T2.UserId ORDER BY count(*) DESC LIMIT 1
SELECT avg(Score) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = 'Csgillispie'
SELECT avg(T1.id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.views > 200
SELECT count(*) * 100.0 / (SELECT count(*) FROM posts WHERE score > 5 AND owneruserid IN (SELECT id FROM users WHERE reputation > 5) ) FROM posts WHERE score > 5
SELECT T2.VoteCount FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T1.reputation = 58 AND T2.creationdate = "2010-07-19";
SELECT CreationDate FROM votes GROUP BY CreationDate ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM badges WHERE name = "Revival";
SELECT T1.Title FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId GROUP BY T1.Id ORDER BY AVG(Score) DESC LIMIT 1
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.postid = T2.id WHERE T2.viewcount = 1910
SELECT favoritecount FROM posts WHERE postid IN (SELECT postid FROM comments WHERE creationdate = '2014-04-23 20:29:39' AND userid = 3025)
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ParentId = 107829
SELECT count(*) FROM posts WHERE creationdate = '2013/7/12' AND comment = 'well-finished' AND userdisplayname = 'User No.23853' AND creationdate = '9:08:18'
SELECT T4.Reputation FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id JOIN tags AS T3 ON T3.ExcerptPostId = T1.Id JOIN posts AS T4 ON T4.OwnerUserId = T2.Id WHERE T1.PostId = 65041
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Tiago Pasqualini"
SELECT T1.DisplayName FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.id = 6347
SELECT sum(T2.ViewCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = "data visualization"
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "DatEpicCoderGuyWhoPrograms"
SELECT count(*) , (SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.OwnerUserId = (SELECT id FROM users WHERE id = 24) GROUP BY T2.id) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id
SELECT sum(viewcount) FROM posts WHERE title = 'Integration of Weka and/or RapidMiner into Informatica PowerCenter/Developer'
SELECT Text FROM comments WHERE score = 17
SELECT users.displayname FROM users JOIN postlinks ON postlinks.id = posts.parentid JOIN posts ON posts.id = posts.parentid WHERE posts.linktypeid = 1 AND posts.linkedpostid = 261 AND posts.title = "Stack Overflow"
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = 'SilentGhost'
SELECT T1.DisplayName FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.userId WHERE T2.text = 'thank you user93!'
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'A Lion'
SELECT T4.OwnerUserId , T4.Reputation FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId JOIN users AS T3 ON T3.OwnerUserId = T1.OwnerUserId WHERE T1.Title = 'Understanding what Dassault iSight is doing'
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'How does gentle boosting differ from AdaBoost'
SELECT T1.UserId FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Name = "Necromancer" LIMIT 10
SELECT lasteditordisplayname FROM posts WHERE title = 'Open source tools for visualizing multi-dimensional data'
SELECT T1.title FROM posts AS T1 JOIN posts AS T2 ON T1.id = T2.parentid JOIN users AS T3 ON T3.id = T2.lasteditoruserid WHERE T3.displayname = "Vebjorn Ljosa"
SELECT sum(T1.score) FROM posts AS T1 JOIN posts AS T2 ON T1.id = T2.parentid JOIN users AS T3 ON T2.owneruserid = T3.id WHERE T3.displayname = 'Yevgeny'
SELECT T1.Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Why square the difference instead of taking the absolute value in standard deviation'
SELECT sum(T2.BountyAmount) FROM tags AS T1 JOIN votes AS T2 ON T1.ExcerptPostId = T2.PostId WHERE T1.TagName = "data"
SELECT T1.OwnerUserId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.title = "variance" AND T1.bountyamount = 50
SELECT T1.Title , T1.CommentCount , T2.Tags , T2.Count FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T2.TagName = "humor" GROUP BY T2.Tags
SELECT count(*) FROM comments WHERE userid = 13
SELECT UserId FROM users ORDER BY Reputation DESC LIMIT 1
SELECT UserId FROM posts ORDER BY VIEWCOUNT LIMIT 1
SELECT count(DISTINCT userid) FROM badges WHERE date = "2011-01-01"
SELECT count(DISTINCT T1.user_id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name > 5
SELECT count(DISTINCT T1.user_id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = 'New York' AND T1.name = 'Teacher' INTERSECT SELECT count(DISTINCT T1.user_id) FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.name = 'Supporter'
SELECT T1.OwnerUserId , T1.Reputation FROM users AS T1 JOIN posts AS T2 ON T1.OwnerUserId = T2.OwnerUserId WHERE T2.Id = 1
SELECT T1.UserId FROM posthistory AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.ViewCount >= 1000 GROUP BY T1.UserId HAVING count(*) = 1
SELECT T1.Name , T1.UserId FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT T1.userid) FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T1.Location = 'India'
SELECT datediff(badges.Date , '2010-01-01' , datediff(badges.Date , '2011-01-01' )) * 100 FROM badges WHERE badges.Date BETWEEN '2010-01-01' AND '2011-01-01'
SELECT T1.PosthistoryTypeId , count(DISTINCT T2.UserId) FROM postHistory AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.PostId = 3720 GROUP BY T2.UserId
SELECT T1.Title , T2.Score FROM posts AS T1 JOIN votes AS T2 ON T1.Id = T2.PostId WHERE T1.Id = 61217 GROUP BY T1.Id ORDER BY T2.Score DESC
SELECT T2.score , T1.linktypeid FROM postlinks AS T1 JOIN posts AS T2 ON T1.postid = T2.postid WHERE T1.postid = 395
SELECT postid , T1.owneruserid FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE score > 60
SELECT sum(favoritecount) FROM posts WHERE creationdate = 2011 AND ownerId = 686
SELECT avg(upvotes) , avg(age) FROM users WHERE acceptedanswerid > 10
SELECT count(DISTINCT userid) FROM badges
SELECT name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.creationdate = '2010-07-19 19:39:08'
SELECT count(*) FROM comments WHERE score > 0
SELECT Text FROM comments WHERE CreationDate = "2010-07-19 19:25:47"
SELECT count(*) FROM posts WHERE score = 10
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation DESC LIMIT 1
SELECT T2.reputation FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T1.date = "2010-07-19 19:39:08"
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Pierre"
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.Location = 'Rochester , NY'
SELECT count(*) , T1.id FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id GROUP BY T1.user_id HAVING T1.name = 'Teacher' }
SELECT count(*) * 100.0 / (count(*) + 1) FROM badges WHERE name = 'Organizer' INTERSECT SELECT count(*) * 100.0 / (count(*) + 1) FROM users WHERE age = '13' OR age = '14' OR age = '15'
SELECT max(T1.Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "2010-07-19 19:56:56"
SELECT Text FROM comments WHERE CreationDate = "2010-07-19 19:37:33";
SELECT T2.Age FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN tags AS T3 ON T3.ExcerptPostId = T2.Id WHERE T3.TagName = "Austrian" AND T2.Location = "Vienna, Austria"
SELECT count(*) FROM badges WHERE name = 'Supporter'
SELECT count(*) FROM badges WHERE date = '2010-07-19 19:39:08'
SELECT T1.Name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id ORDER BY T2.Reputation LIMIT 1
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.displayname = "Sharpie"
SELECT count(*) FROM badges WHERE Name = "Supporter" AND UserId IN (SELECT T1.UserId FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid GROUP BY T1.UserId HAVING count(*) = 1)
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.id = 30
SELECT count(*) FROM users WHERE LOCATION = 'New York'
SELECT count(*) FROM votes WHERE creationdate = "2010-01-01";
SELECT count(*) FROM users WHERE Age > 25
SELECT DisplayName FROM users ORDER BY ViewCount DESC LIMIT 1
SELECT count(*) , YEAR FROM votes WHERE creationdate LIKE "2010-01-01" GROUP BY YEAR , creationdate;
SELECT T2.TagName FROM users AS T1 JOIN tags AS T2 ON T1.id = T2.excerptpostid WHERE T1.displayname = "John Salvatier"
SELECT count(*) FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Daniel Vassallo"
SELECT count(*) FROM votes AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T2.displayname = 'Harlan'
SELECT postid FROM posts WHERE owneruserid = 'Slashnick' ORDER BY AnswerCount DESC LIMIT 1
SELECT max(viewcount) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2 DisplayName = "Harvey Motulsky" INTERSECT SELECT max(viewcount) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2 DisplayName = "Noah Snyder"
SELECT count(*) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T3.Id = T2.OwnerUserId WHERE T3.DisplayName = "Matt Parker" AND T1.voteTypeId = 1 AND T1.creationdate = (SELECT max(creationdate) FROM votes) GROUP BY T2.id HAVING sum(T1.votecount) > 4
SELECT count(*) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Neil McGuigan' AND T1.Score < 0
SELECT DISTINCT T2.Tags FROM posts AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId WHERE T1.OwnerUserId = 1001 AND T1.OwnerDisplayName = "Mark Meckes" EXCEPT SELECT T2.Tags FROM comments AS T1 JOIN tags AS T2 ON T1.ExcerptPostId = T2.ExcerptPostId
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.name = "Organizer"
SELECT count(*) / (SELECT count(*) FROM posts WHERE posttype = 'answer' AND owneruserid = (SELECT id FROM users WHERE reputation = 'Moderator') ) * 100 FROM tags WHERE tagname = 'R'
SELECT T2.ViewCount - T1.ViewCount FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OWNER_userid WHERE T1.Location = "Mornington" INTERSECT SELECT T2.ViewCount - T1.ViewCount FROM users AS T1 JOIN posts AS T2 ON T1.ID = T2.OWNER_userid WHERE T1.Location = "Amos"
SELECT count(DISTINCT user_id) FROM badges WHERE date = 2014
SELECT count(*) FROM posts WHERE creationdate LIKE "21/%" AND cast(date AS text) = "2010-07-21";
SELECT T1.DisplayName , T1.Age FROM users AS T1 JOIN posts AS T2 ON T1.UserID = T2.OwnerUserId ORDER BY T2.ViewCount DESC LIMIT 1
SELECT lasteditdate , lastedituserid FROM posts WHERE title = "Detecting a given face in a database of facial images"
SELECT count(*) FROM comments WHERE userid = 13 AND text != "" AND score != 0;
SELECT T1.Title , T2.UserDisplayName FROM posts AS T1 JOIN comments AS T2 ON T1.Id = T2.PostId WHERE T2.Score > 0 JOIN users AS T3 ON T2.UserId = T3.Id
SELECT T1.name FROM badges AS T1 JOIN users AS T2 ON T1.user_id = T2.id WHERE T2.location = 'North Pole' AND T1.date = 2011
SELECT T4.DisplayName , T1.LinkTypeId FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.PostId JOIN postlinks AS T3 ON T3.PostId = T2.PostId JOIN users AS T4 ON T4.UserId = T2.OwnerUserId WHERE T2.FavoriteCount > 150
SELECT count(*) , T1.LastEditDate FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = "What is the best introductory Bayesian statistics textbook" GROUP BY T1.LastEditDate
SELECT T2.Date , T2.Location FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.name = 'Outliers'
SELECT T2.title FROM postlinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id JOIN tags AS T3 ON T3.ExcerptPostId = T2.Id WHERE T2.title = "How to tell if something happened in a data set which monitors a value over time"
SELECT T2.Id , T2.name FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.displayname = 'Samuel' AND T1.date = 2013
SELECT OwnerDisplayName FROM posts GROUP BY OwnerUserId ORDER BY VIEWCOUNT DESC LIMIT 1
SELECT T1.OwnerDisplayName , T1.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.OwnerUserId JOIN tags AS T3 ON T2.ExcerptPostId = T3.ExcerptPostId WHERE T3.TagName = "hypothesis-testing"
SELECT T2.Title , T1.RelatedPostId FROM postlinks AS T1 JOIN posts AS T2 ON T1.RelatedPostId = T2.Id WHERE T2.Title = "What are principal component scores"
SELECT T1.OwnerDisplayName FROM posts AS T1 JOIN posts AS T2 ON T1.ParentId = T2.ParentId ORDER BY T2.Score DESC LIMIT 1
SELECT T1.DisplayName , T1.WebsiteUrl FROM users AS T1 JOIN votes AS T2 ON T1.Id = T2.UserId WHERE T2.BountyAmount = (SELECT max(BountyAmount) FROM votes WHERE VoteTypeId = 8)
SELECT title FROM posts ORDER BY VIEWCOUNT DESC LIMIT 5;
SELECT count(*) FROM tags AS T JOIN posts AS P ON T.excerptpostid = P.id WHERE viewcount BETWEEN 5000 AND 7000
SELECT OwnerUserId FROM posts ORDER BY score DESC LIMIT 1
SELECT Age FROM users ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM votes WHERE creationdate = '2011' AND bountyamount = 50
SELECT id FROM users ORDER BY age LIMIT 1
SELECT sum(T1.Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.CreationDate = "2010-07-19"
SELECT avg(T1.LinkTypeId) FROM postlinks AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.AnswerCount <= 2 AND T2.CreatedDate = '2010-04-11' GROUP BY T1.LinkTypeId
SELECT postid FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.UserId = 1465 GROUP BY T2.id ORDER BY sum(T1.BountyAmount) DESC LIMIT 1
SELECT T1.Title FROM posts AS T1 JOIN postlinks AS T2 ON T1.PostId = T2.PostId ORDER BY T2.CreationDate DESC LIMIT 1
SELECT T2.DisplayName FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id GROUP BY T1.UserId ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.CreationDate FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T1.voteTypeId = "chl"
SELECT T1.CreationDate FROM users AS T1 JOIN postHistory AS T2 ON T1.Id = T2.UserId ORDER BY T1.Age ASC LIMIT 1
SELECT T1.userDisplayName FROM users AS T1 JOIN badges AS T2 ON T1.id = T2.userid WHERE T2.name = 'Autobiographer' ORDER BY T2.date LIMIT 1
SELECT count(DISTINCT T1.userdisplayname) FROM users AS T1 JOIN posts AS T2 ON T1.id = T2.owneruserid WHERE T1.location = "United Kingdom" AND (T2.favoritecount >= 4)
SELECT avg(T1.AverageCount) FROM votes AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id JOIN users AS T3 ON T1.UserId = T3.Id WHERE T3.Age = (SELECT max(Age) FROM users)
SELECT DisplayName FROM users ORDER BY Reputation DESC LIMIT 1
SELECT count(*) FROM users WHERE reputation > 2000 AND views > 1000
SELECT DisplayName FROM users WHERE Age = 'Adult'
SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.DisplayName = "Jay Stevens" AND T1.CreationDate = "2010-04-10"
SELECT postid , title FROM posts AS T1 JOIN users AS T2 ON T1.owneruserid = T2.id WHERE T2.displayname = 'Harvey Motulsky' ORDER BY viewcount DESC LIMIT 1
SELECT postid , title FROM posts ORDER BY score DESC LIMIT 1
SELECT avg(Score) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = 'Stephen Turner'
SELECT DISTINCT T1.OwnerDisplayName FROM users AS T1 JOIN posts AS T2 ON T1.UserId = T2.OwnerUserId WHERE T2.ViewCount > 20000 AND T2.CreationDate = 2011
SELECT postid , OWNERDISPLAYNAME FROM posts WHERE creationdate = "2010-05-01" ORDER BY score DESC LIMIT 1
SELECT COUNT(*) * 100.0 / (SELECT count(*) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id WHERE T2.Reputation > 1000 AND T1.CreationDate = 2011) FROM posts AS T1 JOIN users AS T2 ON T1.OwnerUserId = T2.Id
SELECT count(*) * 100 / (count(*) + 1) FROM users WHERE age LIKE '%13%' OR age LIKE '%14%' OR age LIKE '%15%'
SELECT T2.LastEditorDisplayName FROM posts AS T1 JOIN postHistory AS T2 ON T1.Id = T2.PostId WHERE T1.Title = 'Computer Game Datasets' ORDER BY T2.LasActivityDate DESC LIMIT 1
SELECT count(*) FROM posts WHERE viewcount > (SELECT avg(viewcount) FROM posts)
SELECT count(*) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Score = (SELECT max(Score) FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id)
SELECT count(*) FROM posts AS T1 JOIN comments AS T2 ON T1.id = T2.postid WHERE T1.viewcount > 35000 EXCEPT SELECT count(*) FROM comments AS T3 JOIN posts AS T4 ON T3.postid = T4.id
SELECT T1.LastEditorDisplayName , T2.Location FROM users AS T1 JOIN posts AS T2 ON T1.Id = T2.LastEditorUserId WHERE T2.Id = 183
SELECT T1.Date FROM badges AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Emmett" ORDER BY T1.Date DESC LIMIT 1
SELECT count(*) FROM users AS T1 JOIN votes AS T2 ON T1.id = T2.userid WHERE T1.age > 18 AND T2.votecount > 5000
SELECT max(T2.Date) - T1.CreationDate FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T1.DisplayName = 'Zolomon'
SELECT count(*) , commentcount FROM posts WHERE creationdate = (SELECT creationdate FROM users WHERE creationdate = (SELECT creationdate FROM users WHERE creationdate = (SELECT creationdate FROM users ORDER BY creationdate DESC LIMIT 1) ))
SELECT T1.Text , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.PostId = (SELECT postId FROM posts WHERE title = 'Analysing wind data with R' ORDER BY creationdate DESC LIMIT 10)
SELECT count(DISTINCT userid) FROM badges WHERE name = 'Citizen Patrol'
SELECT count(*) FROM tags AS T JOIN posts AS P ON T.ExcerptPostId = P.Id WHERE T.TagName = 'careers'
SELECT Reputation , Views FROM users WHERE DisplayName = 'Jarrod Dixon'
SELECT count(*) , answercount FROM posts WHERE title = 'Clustering 1D data'
SELECT T1.CreationDate FROM users AS T1 JOIN badges AS T2 ON T1.Id = T2.UserId WHERE T2.Name = 'IrishStat'
SELECT count(*) FROM votes WHERE bountyamount > 30
SELECT count(*) , (sum(score) - 50) / sum(score) FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.reputation = (SELECT max(reputation) FROM users) GROUP BY T2.Id
SELECT count(*) FROM comments WHERE score < 20
SELECT count(*) FROM tags WHERE id < 15 AND count >= 20
SELECT ExcerptPostId , WikiPostId FROM tags WHERE TagName = "sample"
SELECT T4.Reputation , T4.UpVotes FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id JOIN votes AS T3 ON T3.UserId = T2.Id JOIN badges AS T4 ON T4.UserId = T3.UserId WHERE T1.Text = "fine, you win :)"
SELECT Text FROM comments AS T1 JOIN posts AS T2 ON T1.PostId = T2.Id WHERE T2.Title = 'Linear Regression'
SELECT max(T2.score) , T1.postid FROM posts AS T1 JOIN comments AS T2 ON T1.postid = T2.postid WHERE T1.viewcount BETWEEN 100 AND 150 GROUP BY T1.postid ORDER BY max(T2.score) DESC LIMIT 1
SELECT T1.CreationDate , T1.Age FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.userDisplayName = 'Webiste'
SELECT count(*) FROM comments WHERE score = 0 AND votecount < 5
SELECT count(*) FROM comments WHERE postid IN ( SELECT postid FROM comments GROUP BY postid HAVING commentcount = 1 ) AND score = 0
SELECT count(DISTINCT T1.userid) FROM comments AS T1 JOIN users AS T2 ON T1.userid = T2.id WHERE T1.score = 0 AND T2.age = 40
SELECT T1.PostId , T1.CommentCount FROM posts AS T1 JOIN comments AS T2 ON T1.PostId = T2.PostId WHERE T1.Title = "Group differences on a five point Likert item"
SELECT T1.UpVotes FROM users AS T1 JOIN comments AS T2 ON T1.id = T2.UserId WHERE T2.text = "R is also lazy evaluated."
SELECT Text FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T2.DisplayName = "Harvey Motulsky"
SELECT T1.UserDisplayName FROM users AS T1 JOIN comments AS T2 ON T1.Id = T2.UserId WHERE T2.Score BETWEEN 1 AND 5 GROUP BY T2.UserId HAVING COUNT(*) = 0
SELECT T1.Score , T2.UserDisplayName FROM comments AS T1 JOIN users AS T2 ON T1.UserId = T2.Id WHERE T1.Score BETWEEN 5 AND 10 GROUP BY T2.UserDisplayName HAVING count(*) = 0
SELECT power_name FROM superpower WHERE power_name LIKE "%3D Man%" GROUP BY power_name HAVING count(*) >= 3
SELECT count(*) FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T1.power_name = "Super Strength"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.super_power = "Super Strength" AND T1.height_cm > 200
SELECT t1.full_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE count(power_name) > 15
SELECT count(*) FROM superhero WHERE eye_colour_id = 'blue'
SELECT T2.colour FROM superhero AS T1 JOIN colour AS T2 ON T1.skin_colour_id = T2.id WHERE T1.superhero_name = "Apocalypse"
SELECT count(*) FROM superhero AS T1 JOIN superpower AS T2 ON T1.id = T2.hero_id WHERE T1.eye_colour_id = "Blue" AND T2.power_name = "Agility"
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "blond"
SELECT count(DISTINCT publisher_id) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE publisher_id = "Marvel Comics" ORDER BY height_cm DESC
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id WHERE T2.superhero_name = "Sauron";
SELECT superhero_name FROM superhero ORDER BY count(*) DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE publisher_name = 'Marvel Comics'
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Super Strength' AND t1.publisher_id = (SELECT T1.publisher_name FROM superhero AS T1 JOIN hero_power AS T2 ON T1.id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Super Strength')
SELECT count(DISTINCT publisher_id) FROM superhero WHERE publisher_name = 'DC Comics'
SELECT T1.publisher_name FROM publisher AS T1 JOIN superhero AS T2 ON T1.id = T2.publisher_id ORDER BY T2.height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE eye_colour_id = 'gold' AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.superhero_name = "Blue Beetle II"
SELECT count(*) FROM superhero WHERE hair_colour_id = 'blond'
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT race FROM superhero WHERE superhero_name = "Copycat"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value < 50
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'death touch'
SELECT count(*) FROM superhero WHERE gender_id = 1 AND weight_kg = 100
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM superhero WHERE gender_id = 1 AND full_name LIKE "%Vampire%"
{"sql": "SELECT count(*) , sum(percentage) , count(*) FROM superhero WHERE superhero_name = 'Superhero' AND superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Superhero' AND publisher_id = (SELECT id FROM superhero WHERE superhero_name
SELECT T1.publisher_name , T2.publisher_name - T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender_id = 1 AND T1.full_name = 'Superman' INTERSECT SELECT T1.publisher_name , T2.publisher_name - T1.publisher_name FROM superhero AS T1 JOIN publisher AS T2 ON T1.publisher_id = T2.id WHERE T1.gender_id = 2 AND T1.full_name = 'Wonder Woman'
SELECT publisher_id FROM superhero WHERE superhero_name = "Star Trek."
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id WHERE T2.attribute_name = "superhero"
SELECT count(*) FROM superhero WHERE full_name = "null"
SELECT eye_colour FROM superhero WHERE id = 75
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Deathlok"
SELECT avg(weight_kg) FROM superhero WHERE gender_id = 1
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.gender_id = 1
SELECT superhero_name FROM superhero WHERE gender_id = 1
SELECT superhero_name FROM superhero WHERE height_cm BETWEEN 170 AND 190 EXCEPT SELECT T1.superhero_name FROM superhero AS T1 JOIN superhero AS T2 ON T1.height_cm = T2.height_cm WHERE T2.eye_colour_id = 'Human'
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id WHERE t2.hero_id = 56
SELECT full_name FROM superhero WHERE gender = 'Demi-God'
SELECT count(*) FROM superhero WHERE superhero_name = "Bad"
SELECT race FROM superhero WHERE weight_kg = 169
SELECT hair_colour_id FROM superhero WHERE height_cm = 185
SELECT eye_colour FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT count(*) FROM superhero WHERE height_cm BETWEEN 150 AND 180 AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Marvel Comics')
SELECT superhero_name FROM superhero WHERE gender = 'Male' AND weight_kg > (SELECT avg(weight_kg) FROM superhero)
SELECT power_name FROM superpower GROUP BY power_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.superhero_name = "Abomination"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.id = 1
SELECT count(DISTINCT hero_id) FROM hero_power WHERE power_name = "stealth"
SELECT t1.full_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id JOIN attribute AS t3 ON t2.attribute_id = t3.id WHERE t3.attribute_name = 'strength' ORDER BY t5.attribute_value DESC LIMIT 1
SELECT avg(weight_kg) FROM superhero WHERE race_id NOT IN (SELECT race_id FROM colour)
SELECT count(DISTINCT publisher_id) FROM superhero WHERE publisher_id IN (SELECT id FROM publisher WHERE publisher_name = 'Dark Horse Comics')
SELECT t1.superhero_name FROM superhero AS t1 JOIN publisher AS t2 ON t1.publisher_id = t2.id WHERE t2.publisher_name = 'Dark Horse Comics' GROUP BY t1.superhero_name ORDER BY count(*) DESC LIMIT 1
SELECT eye_colour FROM superhero WHERE full_name = "Abraham Sapien"
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_power AS t2 ON t1.id = t2.hero_id JOIN superpower AS t3 ON t2.power_id = t3.id WHERE t3.power_name = 'Fly'
SELECT T1.eye_colour , T1.hair_colour , T1.skin_colour FROM colour AS T1 JOIN superhero AS T2 ON T1.id = T2.eye_colour_id WHERE T2.publisher_id = 503 AND T2.gender_id = 1
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.eye_colour_id = (SELECT eye_colour_id FROM superhero GROUP BY eye_colour_id HAVING count(*) = 1) AND t2.hair_colour_id = (SELECT hair_colour_id FROM superhero GROUP BY hair_colour_id HAVING count(*) = 1) AND t2.skin_colour_id = (SELECT skin_colour_id FROM superhero GROUP BY skin_colour_id HAVING count(*) = 1)
SELECT T2.alignment FROM hero_power AS T1 JOIN superhero AS T2 ON T1.power_id = T2.power_name WHERE T2.superhero_name = "A-Bomb"
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE gender_id = 2) FROM superhero WHERE gender_id = 2 AND skin_colour_id = "blue"
SELECT superhero_name , race FROM superhero WHERE full_name = "Charles Chandler"
SELECT T2.gender FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.superhero_name = "Agent 13"
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id WHERE t2.power_name = 'adaption'
SELECT count(*) FROM hero_power AS T1 JOIN superpower AS T2 ON T1.power_id = T2.id WHERE T1.power_name = "Amazo"
SELECT power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.supername = "Hunter Zolomon"
SELECT height_cm FROM superhero WHERE eye_colour_id = "amber"
SELECT superhero_name FROM superhero WHERE eye_colour_id = (SELECT eye_colour_id FROM superhero WHERE hair_colour_id = (SELECT hair_colour_id FROM superhero WHERE colour = "Black") )
SELECT eye_colour_id FROM superhero WHERE skin_colour_id = "gold"
SELECT full_name FROM superhero WHERE race = "vampire" AND gender = "male"
SELECT T1.superhero_name FROM superhero AS T1 JOIN alignment AS T2 ON T1.alignment_id = T2.id WHERE T2.alignment = "neutral"
SELECT count(*) FROM hero_attribute WHERE attribute_value = (SELECT max(attribute_value) FROM hero_attribute ORDER BY attribute_value LIMIT 1) AND attribute_id = 1
SELECT T2.race , T2.alignment FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id JOIN alignment AS T3 ON T1.alignment_id = T3.id WHERE T1.full_name = "Cameron Hicks"
SELECT count(*) * 100.0 / count(*) FROM superhero WHERE gender_id = "female" AND publisher_id IN (SELECT id FROM publisher WHERE publisher_name = "Marvel Comics")
SELECT avg(weight_kg) FROM superhero WHERE race_id = 'Alien'
SELECT weight_kg - 20 FROM superhero WHERE superhero_name = "Emil Blonsky" INTERSECT SELECT weight_kg - 20 FROM superhero WHERE superhero_name = "Charles Chandler"
SELECT avg(height_cm) FROM superhero
SELECT t1.power_name FROM superpower AS t1 JOIN hero_power AS t2 ON t1.id = t2.power_id JOIN superhero AS t3 ON t2.hero_id = t3.id WHERE t3.superhero_name = "Abomination"
SELECT count(*) FROM superhero WHERE race_id = (SELECT race_id FROM superhero WHERE race = 'god / eternal') AND gender_id = 1
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT count(*) FROM superhero WHERE alignment = "neutral"
SELECT T1.attribute_name , T4.attribute_value FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.supername = '3-D Man'
SELECT superhero_name FROM superhero WHERE eye_colour_id = "blue" AND hair_colour_id = "brown"
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.superhero_name = 'Hawkman' OR t2.superhero_name = 'Karate Kid' OR t2.superhero_name = 'Speedy'
SELECT count(*) FROM superhero WHERE publisher_id = "null"
SELECT count(*) / count(*) FROM superhero WHERE eye_colour_id = 'blue'
SELECT count(*) , count(*) FROM superhero WHERE gender_id = 1 : 1
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT power_id FROM superpower WHERE power_name = "cryokinesis"
SELECT superhero_name FROM superhero WHERE id = 294
SELECT superhero_name FROM superhero WHERE weight_kg = "null"
SELECT eye_colour FROM superhero WHERE full_name = "Karen Beecher-Duncan"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.full_name = "Helen Parr"
SELECT race FROM superhero WHERE weight_kg = 108 AND height_cm = 188
SELECT t1.publisher_name FROM publisher AS t1 JOIN superhero AS t2 ON t1.id = t2.publisher_id WHERE t2.id = 38
SELECT t1.race FROM race AS t1 JOIN superhero AS t2 ON t1.id = t2.race_id ORDER BY t2.attribute_value DESC LIMIT 1
SELECT t1.alignment , t2.power_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.alignment_id = t2.id WHERE t1.superhero_name = "Atom IV"
SELECT full_name FROM superhero WHERE eye_colour_id IN (105)
SELECT avg(T2.attribute_value) FROM hero_attribute AS T1 JOIN attribute AS T2 ON T1.attribute_id = T2.id JOIN superhero AS T3 ON T1.hero_id = T3.id WHERE T3.alignment_id = 1 AND T3.full_name LIKE "%Neutral%"
SELECT T1.skin_colour_id FROM superhero AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.hero_id WHERE T2.attribute_value = 100
SELECT count(*) FROM superhero WHERE gender_id = 1 AND gender = 'female'
SELECT t1.superhero_name FROM superhero AS t1 JOIN hero_attribute AS t2 ON t1.id = t2.hero_id WHERE t2.attribute_value BETWEEN 75 AND 80
SELECT T2.race FROM superhero AS T1 JOIN race AS T2 ON T1.race_id = T2.id WHERE T1.gender = 'Male' AND T1.full_name LIKE '%blue%' AND T1.eye_colour_id = 'blue'
SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE gender_id = "female") FROM superhero WHERE gender_id = "female" UNION SELECT count(*) * 100.0 / (SELECT count(*) FROM superhero WHERE gender_id = "male") FROM superhero WHERE gender_id = "male")
SELECT count(*) - count(*) FROM superhero WHERE weight_kg = "null" AND eye_colour_id = "blue"
SELECT power_name FROM hero_power WHERE power_name = "Hulk"
SELECT power_name FROM superpower WHERE power_name LIKE "%Ajax%"
SELECT count(*) FROM race AS T1 JOIN superhero AS T2 ON T1.id = T2.race_id WHERE T2.skin_colour_id = 1 AND T2.gender_id = 1 AND T2.race_id = 2;
SELECT count(*) FROM superhero WHERE gender_id = 2 AND publisher_name = 'Marvel Comics'
SELECT t1.superhero_name FROM superhero AS t1 JOIN superpower AS t2 ON t1.id = t2.power_id WHERE t2.power_name = 'wind' ORDER BY t1.superhero_name
SELECT t1.gender FROM superhero AS t1 JOIN gender AS t2 ON t1.gender_id = t2.id JOIN superpower AS t3 ON t3.id = t2.power_name WHERE t3.power_name = 'Phoenix Force'
SELECT superhero_name FROM superhero ORDER BY weight_kg DESC LIMIT 1
SELECT avg(height_cm) FROM superhero WHERE superhero_name LIKE '%Non-human%' AND publisher_id = 1001
SELECT count(*) FROM superhero WHERE power_name = 'Fastest'
SELECT count(*) FROM superhero WHERE publisher_id = "DC" OR publisher_id = "Marvel Comics"
SELECT attribute_name FROM attribute WHERE attribute_name = 'Weak' INTERSECT SELECT T1.attribute_name FROM attribute AS T1 JOIN hero_attribute AS T2 ON T1.id = T2.attribute_id JOIN superhero AS T3 ON T2.id = T3.id WHERE T3.superhero_name = 'Black Panther'
SELECT eye_colour FROM superhero WHERE superhero_name = "Abomination"
SELECT superhero_name FROM superhero ORDER BY height_cm DESC LIMIT 1
SELECT superhero_name FROM superhero WHERE full_name = "Charles Chandler"
SELECT count(*) , avg(T2.gender) FROM superhero AS T1 JOIN gender AS T2 ON T1.gender_id = T2.id WHERE T1.publisher_id = (SELECT id FROM superhero WHERE superhero_name = 'Geoffrey Lucas') GROUP BY T2.gender
SELECT count(*) , sum(gender_id) / count(*) FROM superhero WHERE gender_id = 'good' AND publisher_id = 'Marvel';
SELECT count(*) FROM superhero WHERE superhero_name = "John"
SELECT t1.hero_id FROM hero_attribute AS t1 JOIN attribute AS t2 ON t1.attribute_id = t2.id ORDER BY t2.attribute_value LIMIT 1
SELECT full_name FROM superhero WHERE superhero_name = "Alien"
SELECT t1.full_name FROM superhero AS t1 JOIN colour AS t2 ON t1.skin_colour_id = t2.id JOIN attribute AS t3 ON t2.colour = t3.id WHERE t3.attribute_name = 'brown' AND t1.weight_kg < 100
SELECT T1.attribute_value FROM hero_attribute AS T1 JOIN superhero AS T2 ON T1.attribute_id = T2.id WHERE T2.superhero_name = "Aquababy"
SELECT weight_kg , race FROM superhero WHERE id = 40
SELECT avg(height_cm) FROM superhero WHERE gender_id = 1
SELECT T1.hero_id FROM superhero AS T1 JOIN hero_power AS T2 ON T1.hero_id = T2.hero_id JOIN superpower AS T3 ON T2.power_id = T3.id WHERE T3.power_name = 'Intelligence'
SELECT eye_colour FROM superhero WHERE race = "Blackwulf"
SELECT T1.power_name FROM superpower AS T1 JOIN hero_power AS T2 ON T1.id = T2.power_id JOIN superhero AS T3 ON T2.hero_id = T3.id WHERE T3.height_cm > (SELECT avg(height_cm) FROM superhero)
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.name = "20" AND T2.position = "eliminated"
SELECT t1.surname FROM drivers AS t1 JOIN laptimes AS t2 ON t1.driverid = t2.driverid WHERE t2.raceid = 19 ORDER BY t2.milliseconds DESC LIMIT 1
SELECT T2.year FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Shanghai"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Circuit de Barcelona-Catalunya"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Germany"
SELECT T1.position FROM constructorstandings AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.name = "Renault"
SELECT count(*) FROM races WHERE YEAR = 2010 AND circuitid IN (SELECT circuitid FROM circuits WHERE country != 'Asia') AND circuitid IN (SELECT circuitid FROM circuits WHERE country != 'Europe')
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.country = "Spain"
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Australian Grand Prix"
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit";
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Sepang International Circuit"
SELECT T2.lng , T2.latt FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Abu Dhabi Grand Prix";
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.raceid = 24 AND T3.constructorid = T2.constructorid AND T3.points = 1
SELECT T1.q1 FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Qualifying Race No. 354" AND T1.driverid = drivers.driverid AND drivers.forename = "Bruno" AND drivers.surname = "Senna";
SELECT t1.nationality FROM drivers AS t1 JOIN qualifying AS t2 ON t1.driverid = t2.driverid WHERE t2.raceid = 355 AND t2.q2 = "0:01:40"
SELECT T1.number FROM qualifying AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.raceid = 903 AND T1.position = "0:01:54" ORDER BY T1.raceid DESC LIMIT 1
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Bahrain Grand Prix" AND T2.year = 2007 AND T1.status != "Finished"
SELECT T1.url FROM races AS T1 JOIN seasons AS T2 ON T1.year = T2.year WHERE T1.raceid = 901
SELECT count(DISTINCT driverId) FROM results WHERE raceId IN (SELECT raceId FROM races WHERE date LIKE "%2015/%-29/%-29%" )
SELECT t1.forename , t1.surname FROM drivers AS t1 JOIN results AS t2 ON t1.driverid = t2.driverid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t3.raceid = 592 ORDER BY t1.dob DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.lap = 0:01:27 AND T2.raceid = 161;
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.id = 933 ORDER BY T2.time LIMIT 1;
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Malaysian Grand Prix";
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.raceid = 9 ORDER BY T2.positiontext DESC LIMIT 1
SELECT T1.position FROM races AS T1 JOIN qualifying AS T2 ON T1.raceid = T2.raceid WHERE T2.number = 345 AND T2.driverid = T3.driverid AND T3.forename = "Lucas" AND T3.surname = "di Grassi";
SELECT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.id = 347 AND T2.time LIKE "0:01:15"
SELECT T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 45 AND T2.position = "Q3" AND T2.milliseconds = 100
SELECT T1.position , T1.time FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid JOIN results AS T3 ON T1.raceid = T3.raceid WHERE T3.driverid = T2.driverid AND T3.statusid = 1 AND T2.milliseconds = 743 AND T3.positiontext = "race 743" AND T3.positionorder = 1 AND T3.driverid = T4.driverid AND T4.forename = "Bruce" AND T4.surname = "McLaren";
SELECT T1.driver FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "San Marino Grand Prix" AND T3.year = 2006 ORDER BY T1.position = "2"
SELECT T1.url FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year WHERE raceid = 901
SELECT count(*) FROM lappeddrivers WHERE driverid NOT IN ( SELECT driverid FROM results WHERE raceid = ( SELECT raceid FROM races WHERE date LIKE "%2015/%22/29%" ) )
SELECT t1.forename , t1.surname FROM drivers AS t1 JOIN results AS t2 ON t1.driverid = t2.driverid JOIN races AS t3 ON t2.raceid = t3.raceid WHERE t3.raceid = 872 ORDER BY t1.dob LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 348 ORDER BY T2.position DESC LIMIT 1
SELECT T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT (SELECT T1.position - T2.position FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "853rd") FROM results AS T2 JOIN races AS T1 ON T1.raceid = T2.raceid WHERE T2.name = "853rd" ORDER BY T1.position - T2.position LIMIT 1
SELECT count(*) , avg(T1.laps) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 1983 AND T2.date = "7/16/1983"
SELECT T1.year FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.nationality = "Singapore" AND T2.position = "first";
SELECT name FROM races WHERE YEAR = 2005 ORDER BY name DESC
SELECT name FROM races ORDER BY YEAR , MONTH LIMIT 1
SELECT name , date FROM races WHERE YEAR = 1999 ORDER BY round DESC LIMIT 1
SELECT YEAR FROM races GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM races WHERE YEAR = 2017 EXCEPT SELECT T1.name FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructor AS T3 ON T2.constructorid = T3.constructorid WHERE YEAR = 2000
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.name = "European Grand Prix" AND T1.country = "France"
SELECT T1.year FROM seasons AS T1 JOIN races AS T2 ON T1.year = T2.year JOIN constructors AS T3 ON T2.raceid = T3.raceid WHERE T3.nationality = "UK" AND T2.name = "British Grand Prix" AND T2.circuitid = T3.constructorid AND T2.date = T1.date AND T2.round = 1 AND T3.constructorid = 1
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone Circuit" AND T2.country = "United Kingdom" AND T1.round = 2
SELECT T1.drivername FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.name = "2010 Singapore Grand Prix" ORDER BY T3.round LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.forename , T1.surname ORDER BY sum(T2.points) DESC LIMIT 1
SELECT T1.drivername , T3.points FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2017 AND T3.name = "2017 Chinese Grand Prix" ORDER BY T3.points DESC LIMIT 3;
SELECT T1.driver , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.raceid ORDER BY T1.driverid , T2.round LIMIT 1
SELECT avg(T1.lap) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "2009 Malaysian Grand Prix" AND T1.driverid = T2.driverid AND T1.position = "1" AND T1.time = T2.fastestlaptime AND T1.milliseconds = T2.milliseconds AND T1.driver = "Lewis Hamilton";
SELECT count(*) * 100 / (SELECT count(*) FROM circuits WHERE circuitRef IN (SELECT circuitId FROM races WHERE YEAR >= 2010 AND position != "1") ) FROM drivers WHERE forename = "Hamilton";
SELECT T1.forename , T1.nationality , max(T2.points) FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY max(T2.points) DESC LIMIT 1;
SELECT dob FROM drivers WHERE nationality = "Japanese" ORDER BY dob LIMIT 1
SELECT DISTINCT T1.circuitid FROM races AS T1 JOIN circuits AS T2 ON T1.circuit = T2.circuitid WHERE T1.year BETWEEN 1990 AND 2000 GROUP BY T1.circuitid HAVING count(*) = 4
SELECT T2.name , T2.location , T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2006
SELECT T1.name , T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2005 AND T1.round = "Q1" AND T1.date LIKE "9/%"
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Alex" AND T3.surname = "Yoong" AND T1.name != "Race 1" AND T1.year != "2022" AND T1.name LIKE "%20%" AND T1.circuitid != "2021-12-15"
SELECT count(*) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T1.name = "Sepang International Circuit" AND T3.name = "Michael Schumacher"
SELECT T1.name , T1.year FROM races AS T1 JOIN lapTimes AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Michael" AND T2.position = (SELECT max(position) FROM constructorStandings WHERE constructorid = T2.constructorid)
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2000 AND T1.driverid = "Eddie Irvine"
SELECT T1.name , T1.points FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.name = 'Lewis Hamilton' AND T1.year = (SELECT min(YEAR) FROM races AS T1 JOIN constructorresults AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T2.constructorid = T3.constructorid WHERE T3.name = 'Lewis Hamilton')
SELECT name , T1.country FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2017 ORDER BY T1.date
SELECT T1.name , T1.year , T1.circuit FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid GROUP BY T1.raceid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) * 100 / count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Europe" INTERSECT SELECT count(*) * 100 / count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.location = "Germany"
SELECT lat , lng FROM circuits WHERE circuitref = 'Silverstone Circuit'
SELECT location FROM circuits WHERE circuitref = 'Silverstone Circuit' OR circuitref = 'Hockenheimring' UNION SELECT location FROM circuits WHERE circuitref = 'Hungaroring'
SELECT circuitRef FROM circuits WHERE name = "Marina Bay Street Circuit"
SELECT country FROM circuits ORDER BY alt DESC LIMIT 1
SELECT count(*) FROM drivers WHERE code = ''
SELECT T1.country FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = (SELECT max(YEAR) FROM races)
SELECT surname FROM drivers WHERE nationality = "Italian"
SELECT DISTINCT T1.url FROM circuits AS T1 JOIN drivers AS T2 ON T1.circuitid = T2.driverid WHERE T2.forename = "Anthony" AND T2.surname = "Davidson"
SELECT driverRef FROM drivers WHERE forename = "Lewis" Hamilton
SELECT T1.circuitId FROM circuits AS T1 JOIN races AS T2 ON T1.circuitId = T2.circuitId WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT T2.year FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitref WHERE T1.name = "Silverstone Circuit" AND T1.round = "Formula_1"
SELECT DISTINCT T1.name FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T1.name = "Silverstone"
SELECT T1.time FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = 2010 AND T2.name = "Abu Dhabi Circuit"
SELECT count(*) FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Italy"
SELECT T1.date FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Barcelona-Catalunya"
SELECT T1.url FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.year = 2009 AND T2.name = "Spanish Grand Prix"
SELECT max(T1.time) FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid WHERE T1.driverid = 'Lewis Hamilton' AND T1.position = 1;
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.driverRef FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.name = "Canadian Grand Prix" AND T3.year = 2007 ORDER BY T2.rank LIMIT 1
SELECT DISTINCT T2.name FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = drivers.hamilton
SELECT T1.name FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.forename = "Lewis Hamilton" ORDER BY T3.rank LIMIT 1
SELECT T1.fastestlapspeed FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 AND T2.name = "2009 Spanish Grand Prix" ORDER BY T1.position ASC LIMIT 1
SELECT T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T3.driverid = drivers.driverid AND T3.position = "1" AND T1.status = "2" AND T1.constructorid = constructorid AND T2.name = "Lewis Hamilton"
SELECT T1.rank FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Chinese Grand Prix" AND T1.driverid = "Lewis Hamilton";
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 1989 AND T3.name = "Australian Grand Prix" AND T2.position = 4
SELECT count(T1.driverId) FROM drivers AS T1 JOIN results AS T2 ON T1.driverId = T2.driverId JOIN races AS T3 ON T3.raceId = T2.raceId WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT T1.lap , T1.position , T1.milliseconds FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2008 Australian Grand Prix" AND T1.driverid = T3.driverid AND T3.forename = "Lewis" AND T3.surname = "Hamilton" ORDER BY T1.milliseconds LIMIT 1
SELECT T1.time FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 2 AND T1.year = 2008 AND T1.round = 2 AND T1.position = 2 AND T1.circuitid = T2.circuitid AND T1.name = "AustChineseralian Grand Prix"
SELECT T1.name , T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.raceid WHERE T2.year = 2008 AND T2.name = "Australian Grand Prix" SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1
SELECT count(T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T3.raceid = T2.raceid WHERE T3.year = 2008 AND T3.name = "2008 Australian Grand Prix"
SELECT count(DISTINCT T1.driverid) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2008 AND T3.name = "Chinese Grand Prix"
SELECT sum(T1.points) FROM constructorresults AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Formula_1" AND T3.points = T1.points AND T1.driverid = T2.driverid AND T1.status = "P" AND T1.position = 1 AND T1.wins = 0 AND T1.driver = "Lewis Hamilton"
SELECT avg(T1.fastestlapspeed) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T2.name = "Formula_1"
SELECT count(*) FROM results AS T1 JOIN race AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2008 AND T2.name = "2008 Australian Grand Prix" AND T1.status = "Completed"
SELECT (SELECT T2.fastestlapspeed FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T2.position = 1) AS percentage FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T2.position = 1
SELECT count(*) FROM circuits WHERE LOCATION = "Adelaide" AND country = "Australia";
SELECT lat , lng FROM circuits WHERE country = "United States"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob > 1980
SELECT max(T1.points) FROM constructorstandings AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "British"
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid ORDER BY T2.position TEXTS DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorStandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 291 AND T2.points = 0
SELECT count(*) FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid WHERE T2.nationality = "Japanese" AND raceid IN (SELECT raceid FROM constructorresults WHERE points = 0 GROUP BY raceid HAVING count(*) = 2)
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid WHERE T2.positiontext = "1"
SELECT count(*) FROM constructorstandings AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN laptimes AS T3 ON T1.raceid = T3.raceid WHERE T3.lap > 50 AND T2.name = "Formula 1" AND T3.constructorid IN (SELECT constructorid FROM constructorresults AS T4 JOIN constructorstandings AS T5 ON T4.constructorid = T5.constructorid WHERE T5.positiontext = "win" AND T4.laps > 50)
SELECT T2.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T3.nationality = "Japanese" AND T1.year BETWEEN 2007 AND 2009
SELECT avg(T2.time) , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year < 1975 GROUP BY T1.year
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 2 AND T1.dob > '1975-01-01'
SELECT count(*) FROM drivers WHERE nationality != 'Italian'
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.position ASC LIMIT 1
SELECT max(T1.lap) FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2009 ORDER BY T1.milliseconds DESC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2009 AND T1.name = "2009 Spanish Grand Prix"
SELECT T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT count(*) FROM laptimes AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T1.lap > 50 AND T2.dob < 1985 GROUP BY T2.driverid HAVING count(*) > 0
SELECT count(*) FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "French" AND T2.time LIKE "02:00.00%" - 1
SELECT code FROM drivers WHERE nationality LIKE "%America%"
SELECT raceid FROM races WHERE YEAR = 2009
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.raceid = 18
SELECT count(*) FROM drivers WHERE nationality = "Netherlandic" ORDER BY dob DESC LIMIT 3
SELECT T1.name FROM drivers AS T1 JOIN circuits AS T2 ON T1.driverid = T2.circuitid WHERE T1.forename = "Robert" AND T1.surname = "Kubica"
SELECT count(*) FROM drivers WHERE nationality = "British" AND dob = "1980"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T2.year BETWEEN 1980 AND 1990 ORDER BY T2.position ASC LIMIT 3
SELECT T1.driverRef FROM drivers AS T1 JOIN seasons AS T2 ON T1.driverId = T2.driverId WHERE T2.year = (SELECT max(YEAR) FROM seasons) AND T1.nationality = "German" ORDER BY T1.dob DESC LIMIT 1
SELECT T1.driverid , T1.code FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.time LIKE "1971%"
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "Spanish" AND T2.lap = (SELECT max(lap) FROM laptimes WHERE YEAR = 2022)
SELECT T1.year FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT DISTINCT YEAR FROM laptimes ORDER BY fastestlaptime LIMIT 1
SELECT driverid FROM laptimes ORDER BY fastestlaptime DESC LIMIT 5
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructorresults AS T3 ON T1.constructorid = T3.constructorid JOIN status AS T4 ON T3.statusid = T4.statusid WHERE T2.round = 50 AND T2.year = T4.year AND T3.position = "disqualified" AND T3.raceid BETWEEN 50 AND 100
SELECT LOCATION , lat , lng FROM circuits WHERE country = 'Austria'
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Lap Times"
SELECT T1.driverRef , T1.nationality , T1.dob FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.raceid = 23 AND T2.position = "q2"
SELECT T2.name , T2.date , T2.time FROM qualifying AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.position = 1 ORDER BY T2.year LIMIT 1
SELECT count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN constructorresults AS T3 ON T2.constructorid = T3.constructorid WHERE T1.nationality = "American" AND T3.status = "Puncture";
SELECT T1.name FROM constructors AS T1 JOIN constructorresults AS T2 ON T1.constructorid = T2.constructorid WHERE T1.nationality = "Italian" ORDER BY T2.points DESC LIMIT 1
SELECT t1.name FROM constructors AS t1 JOIN constructorstandings AS t2 ON t1.constructorid = t2.constructorid GROUP BY t1.constructorid ORDER BY sum(t2.wins) DESC LIMIT 1
SELECT T1.driverid , T1.lap FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "French Grand Prix" ORDER BY T1.position DESC LIMIT 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2006 AND T1.name = "United States Grand Prix" GROUP BY T2.driverid ORDER BY count(*) LIMIT 10
SELECT T1.driverid , T1.drivername FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid ORDER BY avg(T2.duration) ASC LIMIT 3 INTERSECT SELECT T1.driverid , T1.forename , T1.surname FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid WHERE T1.nationality = "German" AND T1.dob BETWEEN "1980-1985" ORDER BY avg(T2.duration) ASC LIMIT 3
SELECT T2.position FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Canadian Grand Prix" ORDER BY T2.positiontext DESC LIMIT 1
SELECT T1.name FROM constructors AS T1 JOIN constructorstandings AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.year = 2009 AND T3.name = "2009 Singapore Grand Prix" AND T2.position = 1
SELECT forename , surname , dob FROM drivers WHERE nationality = "Austrian" AND dob BETWEEN "1981-01-01" AND "1991-12-31"
SELECT forename , surname , dob FROM drivers WHERE nationality = "German" AND dob BETWEEN "1971-01-01" AND "1985-01-01" ORDER BY dob DESC
SELECT LOCATION , country , lat , lng FROM circuits WHERE name = 'Hungaroring'
SELECT T1.points , T2.name , T2.nationality FROM constructorresults AS T1 JOIN constructors AS T2 ON T1.constructorid = T2.constructorid JOIN races AS T3 ON T1.raceid = T3.raceid WHERE T3.name = 'Monaco Grand Prix' AND T2.nationality = 'France' AND T1.year BETWEEN 1980 AND 2010 ORDER BY T1.points DESC LIMIT 1
SELECT avg(T1.points) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN constructors AS T3 ON T1.constructorid = T3.constructorid WHERE T2.name = "Turkish Grand Prix" AND T3.nationality = "Turkish" AND T1.status = "P" AND T1.position = "2" AND T3.constructorid = T4.constructorid AND T4.driverid = T5.driverid AND T5.forename = "Lewis" AND T5.surname = "Hamilton"
SELECT avg(T1.year) FROM races AS T1 JOIN seasons AS T2 ON T1.year LIKE T2.year WHERE T2.year >= 1999 AND T2.year <= 2000
SELECT nationality FROM drivers GROUP BY nationality ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM driverstandings AS T1 JOIN constructorstandings AS T2 ON T1.raceid = T2.raceid WHERE T1.position = 91 AND T2.wins = 1
SELECT T1.name FROM races AS T1 JOIN laptimes AS T2 ON T1.raceid = T2.raceid ORDER BY T2.milliseconds LIMIT 1
SELECT T2.name , T2.location FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T1.year = (SELECT max(YEAR) FROM races)
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN qualifying AS T2 ON T1.driverid = T2.driverid WHERE T2.position = "q3" AND T2.raceid = (SELECT raceid FROM races WHERE YEAR = 2008 AND circuitid = 'Marina Bay Street Circuit') ORDER BY T2.position ASC LIMIT 1
SELECT T1.forename , T1.surname , T1.nationality , T2.name FROM drivers AS T1 JOIN races AS T2 ON T1.driverid = T2.driverid WHERE T1.dob = (SELECT min(dob) FROM drivers)
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN driverstandings AS T3 ON T1.driverid = T3.driverid WHERE T2.name = "Canadian Grand Prix" ORDER BY count(*) DESC LIMIT 1
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.wins = (SELECT max(wins) FROM driverstandings)
SELECT max(duration) FROM pitstops
SELECT max(time) FROM lappedtimes
SELECT max(T2.duration) FROM pitstops AS T1 JOIN drivers AS T2 ON T1.driverid = T2.driverid WHERE T2.forename = "Lewis" AND T2.surname = "Hamilton";
SELECT T1.lap FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "2011 Australian Grand Prix" AND T1.driverid = T2.driverid AND T1.stop = "pit" AND T1.driver = "Lewis Hamilton";
SELECT T2.time FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.year = 2011 AND T2.name = "2011 Australian Grand Prix"
SELECT T1.lap , T1.position , T1.time FROM laptimes AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis" AND T3.surname = "Hamilton";
SELECT T1.forename FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 20
SELECT T1.position FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T2.name = "Formula_1" AND T1.driverid = T2.driverid AND T1.position = (SELECT min(position) FROM laptimes WHERE driverid = T2.driverid AND T2.name = "Formula_1" )
SELECT T1.laps , T1.time FROM laptimes AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Austrian Grand Prix Circuit"
SELECT T1.laps FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN circuits AS T3 ON T2.circuitid = T3.circuitid WHERE T3.country = "Italy"
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.name = "Austrian Grand Prix Circuit" SELECT max(T3.milliseconds) FROM laptimes AS T3 JOIN races AS T1 ON T3.raceid = T1.raceid WHERE T1.name = "Austrian Grand Prix Circuit"
SELECT T2.duration FROM races AS T1 JOIN pitstops AS T2 ON T1.raceid = T2.raceid WHERE T1.name = "Austrian Grand Prix Circuit" AND T2.driverid = T1.driverid ORDER BY T2.duration DESC LIMIT 1
SELECT T1.location FROM circuits AS T1 JOIN races AS T2 ON T1.circuitid = T2.circuitid WHERE T2.time LIKE "1:29.488%"
SELECT avg(T2.milliseconds) FROM pitstops AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T1.driverid = T3.driverid AND T3.forename = "Lewis Hamilton"
SELECT avg(T1.milliseconds) , T2.circuitRef FROM circuits AS T2 JOIN laptimes AS T1 ON T2.circuitid = T1.raceid WHERE T2.country = "Italy" GROUP BY T2.circuitRef
SELECT player_api_id FROM Player_Attributes ORDER BY overall_rating DESC LIMIT 1;
SELECT player_name , height FROM Player ORDER BY height DESC LIMIT 1;
SELECT preferred_foot FROM Player_Attributes ORDER BY potential LIMIT 1;
SELECT count(*) FROM Player_Attributes WHERE overall_rating BETWEEN 60 AND 65 AND preferred_foot = 'att';
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE crossing = 'cross' ORDER BY overall_rating DESC LIMIT 5;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2016" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_long_name FROM Team AS T1 JOIN MATCH AS T2 ON T1.team_api_id = T2.home_team_api_id WHERE T2.season = 2016 GROUP BY T1.team_long_name ORDER BY count(*) ASC LIMIT 1;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id ORDER BY penalties DESC LIMIT 10;
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T1.season = '2010' GROUP BY T2.team_short_name ORDER BY count(*) DESC LIMIT 1;
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id ORDER BY buildUpPlaySpeed DESC LIMIT 4;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = 2016 AND T2.stage = "draw" GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1;
SELECT max(T1.birthday) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.sprint_speed >= 97 AND T2.date >= "2013-01-01" AND T2.date <= "2014-01-01";
SELECT T1.name , count(*) FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(height) FROM Player WHERE birthday BETWEEN '1990-' AND '1995';
SELECT DISTINCT T1.player_api_id FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.date = "2010" ORDER BY T1.overall_rating DESC LIMIT 1;
SELECT team_fifa_api_id FROM Team_Attributes WHERE buildUpPlaySpeed BETWEEN 50 AND 60;
SELECT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.date = "2012" ORDER BY T1.buildUpPlayPassing > (SELECT avg(buildUpPlayPassing) FROM Team_Attributes)
SELECT count(*) * 100 / count(*) FROM Player_Attributes WHERE preferred_foot = "left" AND birthday BETWEEN 1987 AND 1992;
SELECT T1.name FROM League AS T1 JOIN country AS T2 ON T1.country_id = T2.id ORDER BY sum(T3.goal) LIMIT 5;
SELECT avg(long_shots) FROM Player_Attributes WHERE player_api_id = 1166;
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id GROUP BY T1.player_api_id HAVING avg(heading_accuracy) > 180 ORDER BY avg(heading_accuracy) DESC LIMIT 10;
SELECT team_long_name FROM Team_Attributes WHERE buildUpPlayDribblingClass = 'normal' AND buildUpPlayPassingClass = 'dribbling' AND date = 2014 ORDER BY chanceCreationPassing LIMIT 5;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = '2009/2010' GROUP BY T1.id HAVING avg(T2.home_team_goal) > avg(T2.away_team_goal)
SELECT team_short_name FROM Team WHERE team_long_name = "Queens Park Rangers";
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday = "1970-10-25" AND T1.preferred_foot = "football"
SELECT avg(attacking_work_rate) FROM Player_Attributes WHERE player_fifa_api_id = "Franco Zennaro";
SELECT T1.team_short_name , T2.defenceteamwidth FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_fifa_api_id = 'ADO' AND T2.date >= '1/3' AND T2.date <= '2/3'
SELECT heading_accuracy FROM Player_Attributes WHERE date = "18/09/2014" AND preferred_foot = "football" AND player_fifa_api_id = "FA1545";
SELECT T1.overall_rating FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Gabriel Tamas" AND T2.date = 2011
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.season = '2015/2016' JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Scotland Premier League';
SELECT DISTINCT T1.preferred_foot FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = (SELECT player_name FROM Player ORDER BY birthday LIMIT 1) AND T2.overall_rating = (SELECT overall_rating FROM Player_Attributes ORDER BY birthday LIMIT 1)
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND attacking_work_rate < 130;
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE chanceCreationPassingClass = 'Risky'
SELECT defensive_work_rate FROM Player_Attributes AS P JOIN Player AS T ON P.player_api_id = T.player_api_id WHERE T.player_name = "David Wilson" AND P.preferred_foot = "defense";
SELECT T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Netherlands"
SELECT avg(T2.goal) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Poland" AND T1.season = "2010/2011";
SELECT avg(T1.finishing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT player_api_id FROM Player_Attributes GROUP BY player_fifa_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1) INTERSECT SELECT avg(T1.finishing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_fifa_api_id IN (SELECT player_api_id FROM Player_Attributes GROUP BY player_fifa_api_id ORDER BY avg(T1.finishing) DESC LIMIT 1)
SELECT player_name FROM Player WHERE height > 180;
SELECT count(*) FROM Player WHERE birthday > "1990-01-01";
SELECT count(*) FROM Player WHERE player_name = "Adam" AND weight > 170;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date BETWEEN '2008-01-01' AND '2010-01-01' AND overall_rating > 80
SELECT potential FROM Player_Attributes WHERE player_api_id = "Aaron Doran";
SELECT DISTINCT player_api_id FROM Player_Attributes WHERE preferred_foot = 'left';
SELECT DISTINCT T2.team_long_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeedClass = 'fast'
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_long_name = 'CLB'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayPassing > 70;
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.date BETWEEN '2010' AND '2015' AND T2.height > 170
SELECT player_name FROM Player ORDER BY height ASC LIMIT 1;
SELECT T1.name FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Italy Serie A'
SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlaySpeed = 31 INTERSECT SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayDribbling = 53 INTERSECT SELECT T2.team_short_name FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T1.buildUpPlayPassing = 32
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Aaron Doran' AND T1.overall_rating > 10;
SELECT count(*) FROM MATCH AS T1 JOIN league AS T2 ON T1.country_id = T2.id WHERE T2.name = 'Germany 1. Bundesliga' AND T1.date BETWEEN '2008-08' AND '2008-10'
SELECT T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id WHERE T1.goal = 10
SELECT DISTINCT T1.player_name , T1.player_fifa_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.potential DESC LIMIT 2;
SELECT avg(ball_control) - (SELECT avg(ball_control) FROM Player_Attributes WHERE player_fifa_api_id = "Abdou Diallo") AS difference FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN Player_Attributes AS T3 ON T3.player_api_id = T2.player_api_id WHERE T3.player_fifa_api_id = "Aaron Appindangoye"
SELECT team_long_name FROM Team WHERE team_fifa_api_id = "GEN";
SELECT player_name FROM Player WHERE birthday > '2000-01-01' INTERSECT SELECT player_name FROM Player WHERE birthday > '2000-01-01'
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND team_api_id = (SELECT team_api_id FROM Match WHERE stage = 'home' AND attacking_work_rate = 100)
SELECT T1.country FROM country AS T1 JOIN league AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Belgium Jupiler League'
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T1.name = "Germany"
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT count(*) FROM Player AS T1 JOIN Team_Attributes AS T2 ON T1.player_api_id = T2.team_api_id JOIN Team AS T3 ON T2.team_api_id = T3.team_api_id WHERE T1.birthday < 1986 AND T3.defenseDefenderLineClass = 1 AND T2.defencePressure = 1;
{"sql": "SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.crossing = 'best' INTERSECT SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.cross
SELECT heading_accuracy FROM Player_Attributes AS P1 JOIN Player AS P2 ON P1.player_api_id = P2.player_api_id WHERE P2.player_name = "Ariel Borysiuk";
SELECT count(*) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.height > 180 AND T2.volleys > 70;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.volleys > 70 AND T2.dribbling > 70;
SELECT count(*) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Country AS T3 ON T3.id = T2.country_id WHERE T3.name = 'Belgium' AND T1.season = '2008/2009';
SELECT long_passing FROM Player_Attributes ORDER BY birthday DESC LIMIT 1;
SELECT count(*) FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN country AS T3 ON T3.id = T2.country_id WHERE T3.name = "Belgium Jupiler League" AND T1.date LIKE "2009-04%";
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = "2008/2009" GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1;
SELECT avg(T1.overall_rating) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.birthday < 1986
SELECT (overall_rating - (overall_rating - 1000)) / 100 FROM Player_Attributes WHERE player_fifa_api_id = "Ariel Borysiuk" INTERSECT SELECT (overall_rating - (overall_rating - 1000)) / 100 FROM Player_Attributes WHERE player_fifa_api_id = "Paulin Puel"
SELECT avg(T2.buildUpPlaySpeed) FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.team_fifa_api_id = 'Heart of Midlothian'
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Pietro Marino'
SELECT sum(T1.crossing) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Lennox"
SELECT chanceCreationPassing , chanceCreationPassingClass FROM Team_Attributes WHERE team_fifa_api_id = 'Ajax'
SELECT preferred_foot FROM Player_Attributes WHERE player_name = "Abdou Diallo";
SELECT max(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = 'Dorlan Pabon'
SELECT avg(away_team_goal) FROM MATCH AS T1 JOIN TEAM AS T2 ON T1.away_team_api_id = T2.team_api_id JOIN Country AS T3 ON T2.team_fifa_api_id = T3.id WHERE T3.name = 'Italy' AND T2.team_short_name = 'Parma'
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 77 AND T2.date = "2016-06-23" ORDER BY T1.height DESC LIMIT 1;
SELECT T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Aaron Mooy" AND T1.date = "2016/2/4"
SELECT T1.potential FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.player_name = "Francesco Parravicini" AND T2.date = "2010/8/30";
SELECT T1.attacking_work_rate FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Francesco Migliore" AND T1.date = "2015-05-01"
SELECT T1.defensive_work_rate FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.date = "2013/2/22" AND T1.player_name = "Kevin Berigaud";
SELECT date FROM Player_Attributes WHERE player_api_id = "KEVIN" AND crossing = (SELECT max(crossing) FROM Player_Attributes WHERE player_api_id = "KEVIN")
SELECT T1.buildUpPlaySpeedClass FROM Team_Attributes AS T1 JOIN Player AS T2 ON T1.team_api_id = T2.player_api_id WHERE T2.player_name = "Willem II" AND T1.date = "2011/2/22";
SELECT T1.buildUpPlayDribblingClass FROM Team_Attributes AS T1 JOIN Player_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.player_api_id = "LEI" AND T2.date = "2015/9/10"
SELECT T1.buildUpPlayPassingClass FROM Team_Attributes AS T1 JOIN Team AS T2 ON T1.team_fifa_api_id = T2.team_fifa_api_id WHERE T2.team_short_name = "FC Lorient" AND T1.date = "2010/2/22"
SELECT chanceCreationPassingClass FROM Team_Attributes WHERE date = "2013/9/20" AND chanceCreationPassingClass = "PEC Zwolle";
SELECT chanceCreationCrossingClass FROM Team WHERE team_short_name = "Hull City" AND date = "2010/2/22"
SELECT defenceAggressionClass FROM Team_Attributes WHERE team_fifa_api_id = "Hannover 96" AND date = "2015/9/10";
SELECT avg(T1.overall_rating) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.player_name = "Marko Arnautovic" AND T1.date >= "2007/2/22" AND T1.date <= "2016/4/21"
SELECT count(*) FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id WHERE T1.date = "2013/7/12" AND T2.player_name = "Landon Donovan" AND T2.overall_rating > T2.overall_rating AS T3 JOIN Player AS T4 ON T1.player_api_id = T4.player_api_id WHERE T4.player_name = "Jordan Bowery";
SELECT player_name FROM Player ORDER BY height DESC LIMIT 1;
SELECT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T1.overall_rating DESC LIMIT 10;
SELECT player_name FROM Player WHERE birthday >= "1989-04-15" ORDER BY age DESC LIMIT 1
SELECT count(*) FROM Player_Attributes AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T1.player_api_id = "Aaron Lennon" AND T1.cross = "goal"
SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.away_team_api_id WHERE T1.player_name = "Daan Smith" INTERSECT SELECT sum(away_team_goal) FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.away_team_api_id WHERE T1.player_name = "Filipe Ferreira"
SELECT sum(T1.goal) FROM Match AS T1 JOIN Player_Attributes AS T2 ON T1.goal = T2.cross WHERE T2.player_api_id IN (SELECT player_api_id FROM Player WHERE birthday < '2000-01-01')
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY strength DESC LIMIT 1
SELECT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY potential DESC LIMIT 1
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 100 INTERSECT SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating = 100
SELECT max(T1.player_name) FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE finishing = 1;
SELECT T1.player_name FROM Player AS T1 JOIN League AS T2 ON T1.player_api_id = T2.team_api_id JOIN Country AS T3 ON T2.country_id = T3.id WHERE T3.name = "Belgium"
SELECT T1.player_name , T4.name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id JOIN League AS T3 ON T2.team_fifa_api_id = T3.team_api_id JOIN Country AS T4 ON T3.country_id = T4.id WHERE T2.defensive_work_rate >= 90;
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id GROUP BY T2.country_id ORDER BY avg(T1.weight) DESC LIMIT 1;
SELECT team_fifa_api_id , team_long_name FROM Team_Attributes WHERE buildUpPlaySpeedClass = 'slow'
SELECT T1.team_short_name FROM Team AS T1 JOIN Team_Attributes AS T2 ON T1.team_api_id = T2.team_api_id WHERE T2.chanceCreationPassing = 1 AND T2.chanceCreationCrossing = 1;
SELECT avg(T1.height) FROM Player AS T1 JOIN Country AS T2 ON T1.player_api_id = T2.id WHERE T2.name = "Italy";
SELECT player_name FROM Player WHERE height > 180 ORDER BY player_name DESC LIMIT 3;
SELECT count(*) FROM Player WHERE birthday > 1990 AND preferred_foot = "football" AND player_name = "Aaron";
SELECT jumping - jumping FROM Player_Attributes WHERE player_api_id = 6 - SELECT jumping FROM Player_Attributes WHERE player_api_id = 23;
SELECT DISTINCT T1.player_api_id FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.preferred_foot = 'right' ORDER BY potential LIMIT 5;
SELECT count(*) FROM Player_Attributes WHERE preferred_foot = 'left' AND crossing = (SELECT max(crossing) FROM Player_Attributes WHERE preferred_foot = 'left' )
SELECT count(*) * 100.0 / count(*) FROM Player_Attributes WHERE strength > 80 UNION SELECT count(*) * 100.0 / count(*) FROM Player_Attributes WHERE stamina > 80
SELECT T1.name FROM Country AS T1 JOIN League AS T2 ON T1.id = T2.country_id WHERE T2.name = 'Poland Ekstraklasa'
SELECT sum(T1.goal) , sum(T2.goal) FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.away_team_api_id = T2.home_team_api_id AND T1.date = '2008-09-24' AND T1.league_id = 'Belgian Jupiler League' UNION SELECT sum(T1.goal) , sum(T2.goal) FROM MATCH AS T1 JOIN MATCH AS T2 ON T1.home_team_api_id = T2.away_team_api_id AND T1.date = '2008-09-24' AND T1.league_id = 'Belgian Jupiler League'
SELECT acceleration , agility , sprint_speed FROM Player_Attributes WHERE player_name = "Alexis Blin"
SELECT buildUpPlaySpeedClass FROM Team_Attributes WHERE team_fifa_api_id = "KSV Cercle Brugge";
SELECT count(*) FROM league AS T1 JOIN team AS T2 ON T1.id = T2.team_api_id WHERE T1.name = "Italian Serie A" AND T1.season = 2015-2016;
SELECT max(T1.goal) , T2.team_short_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.home_team_api_id = T2.team_api_id JOIN League AS T3 ON T1.season = T3.season WHERE T3.country_id = 1111
SELECT T1.curve , T1.overall_rating FROM Player_Attributes AS T1 JOIN Player AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.weight DESC LIMIT 1;
SELECT T1.name FROM League AS T1 JOIN MATCH AS T2 ON T1.id = T2.league_id WHERE T2.season = '2015-2016' GROUP BY T2.league_id ORDER BY count(*) DESC LIMIT 4;
SELECT T2.team_long_name FROM MATCH AS T1 JOIN Team AS T2 ON T1.away_team_api_id = T2.team_api_id ORDER BY goal DESC LIMIT 1;
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY T2.overall_rating DESC LIMIT 1
SELECT count(*) * 100 / count(*) FROM Player AS P JOIN Player_Attributes AS PA ON P.player_api_id = PA.player_api_id WHERE P.height < 180 INTERSECT SELECT count(*) * 100 / count(*) FROM Player_Attributes AS PA JOIN Team_Attributes AS TA ON PA.team_api_id = TA.team_api_id WHERE PA.overall_rating > 70
SELECT count(*) , sex FROM patient WHERE diagnosis = 'Inpatient' OR diagnosis = 'Outpatient' GROUP BY sex HAVING count(*) > 1;
SELECT count(*) / count(*) FROM patient WHERE birthday > 1930 AND sex = "F"
SELECT count(*) * 100.0 / count(*) FROM patient WHERE birthday BETWEEN 1930 AND 1940
SELECT count(*) , sum(count(*) ) / sum(count(*) ) FROM examination WHERE diagnosis = 'SLE'
SELECT T1.Date FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.ID = 30609
SELECT T2.sex , T2.birthday , T1.examination date , T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.id = 163109
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 10
SELECT T1.id , T2.PT FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Positive'
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.thrombosis = 'severe'
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1937" AND T2.T-CHO > 50
SELECT T1.id , T1.sex , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.alp < 3.5
SELECT count(*) * 100 / sum(count(*) ) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO != "Normal" AND T1.sex = "F"
SELECT avg(IIGG) FROM LABORATORY WHERE age >= 50
SELECT count(*) FROM patient WHERE sex = 'F' AND admission = '1997' INTERSECT SELECT count(*) FROM patient WHERE sex = 'F' AND first date = '1997'
SELECT max(admission) - birthday FROM patient ORDER BY birthday LIMIT 1
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'Thrombosis' AND T1.examination_date = '1997' GROUP BY T2.sex HAVING count(*) ORDER BY count(*) DESC LIMIT 1
SELECT max(firstdate) - min(birthdate) FROM patient WHERE diagnosis = 'normal triglyceride'
SELECT T1.Symptoms , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id ORDER BY T2.birthday LIMIT 1
SELECT avg(T2.TBIL) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Negative" AND T2.sex = "M" AND T1.date = "1998-12-31"
SELECT T2.date , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "S" AND T2.diagnosis = "Medical Laboratory Work" ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) , sex FROM patient WHERE diagnosis = 'uric acid' GROUP BY sex
SELECT count(*) FROM patient WHERE first date < (SELECT max(first date) FROM patient WHERE diagnosis != "none")
SELECT count(*) FROM patient WHERE birthday < 1993 AND birthday > 1990
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.T-BIL > 100
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday >= '1/1/1985' AND T2.birthday <= '12/31/1995' GROUP BY T1.diagnosis ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.Birthdate) FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T1.date LIKE "1999-10%" AND T1.diagnosis = "Labs" AND T2.birthday LIKE "1991-04-08%"
SELECT T1.birthday , T2.diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient.id ORDER BY T2.HGB DESC LIMIT 1
SELECT IGG FROM laboratory WHERE id = 3605340 AND DATE = "1996/12/2"
SELECT count(*) FROM laboratory WHERE id = 2927464 AND T-CHO = 55
SELECT T2.sex FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "AORTITIS"
SELECT T2.RNP FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "SLE" AND T1.date = "1994/2/19"
SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glutamic pylvic transaminase = 9 AND T2.date = "1992-06-12"
SELECT T2.Birthdate FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.date = "1991-10-21" AND T2.UT-PRO = 8.4
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.patient WHERE T1.first_date = '1991-06-13' AND T2.diagnosis = 'SJS' AND T2.date = '1995'
SELECT T1.description FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'SLE' AND T2.date = '1997/1/27'
SELECT T1.Symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.ID = T2.ID WHERE T2.birthday = "1959/3/1" AND T1.examination_date = "1993/9/27"
SELECT (T2.TCHO - T1.TCHO) / T1.TCHO * 100 FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday = "1959/2/18" AND T2.date LIKE "1981/11/%" AND T2.date LIKE "1981/12/%"
{"sql": "SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Behcet\'s' AND T2.examination_date BETWEEN '01/01/197' AND '12/31/1997'"}
SELECT T2.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.examination date >= '1987/7/6' AND T1.examination date <= '1996/1/31' AND T2.diagnosis = 'GPT' AND T2.gpt > 30 AND T2.alb < 4;
SELECT id FROM patient WHERE sex = 'F' AND birthday = 1964 ORDER BY admission
SELECT count(*) FROM examination WHERE thrombosis = "2" AND ANA Pattern = "S" AND (T-CHO / 100) > (SELECT avg(T-CHO) FROM examination)
SELECT count(*) / count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO >= 100 AND T2.U-PRO <= 1000
SELECT count(*) * 100 / count(*) FROM patient WHERE first_date = 1981 AND sex = 'M' INTERSECT SELECT count(*) * 100 / count(*) FROM patient WHERE diagnosis = "BEHCET"
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.date = '1991-10-01' AND T1.sex = 'female' AND T1.birthday = '1989-11-11' AND T2.alb < 15
SELECT count(*) FROM patient WHERE sex = 'F' AND birthday BETWEEN 1980 AND 1989 EXCEPT SELECT count(*) FROM examination WHERE ana = "ANA Pattern" AND patient.id = (SELECT id FROM examination WHERE ana = "ANA Pattern" )
SELECT T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "PSS" INTERSECT SELECT T1.sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.patient WHERE T2.crp = 2 + 1 AND T2.let = 1 AND T2.let1 = 123
SELECT avg(alb) FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "F" AND T1.diagnosis = "SLE" AND T1.plt > 400
SELECT T1.symptoms FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "SLE" GROUP BY T1.symptoms ORDER BY count(*) DESC LIMIT 1
SELECT T1.examination_date , T1.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473
SELECT count(*) FROM patient WHERE diagnosis = 'APS' AND sex = 'F'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "M" AND T2.date = '1997' AND T2.U-PRO != 'Normal'
SELECT count(*) / count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'Thrombocytopenia' AND T2.diagnosis = 'SLE'
SELECT count(*) * 100 / count(*) FROM patient WHERE birthday = '1980' AND diagnosis = 'RA' AND sex = 'F'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.examination date >= 1995 AND T2.examination date <= 1997 AND T1.sex = 'M' AND T1.diagnosis = "Behcet disease" AND T2.diagnosis != "No treatment"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND WBC < 3.5
SELECT admission - TAT FROM patient WHERE id = 821298 INTERSECT SELECT TAT FROM evaluation ORDER BY TAT ASC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO >= 1.96 AND T2.U-PRO <= 2.96
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.id = 48473 AND glu > 60
SELECT T1.sex , T1.birthday , T2.date FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.date = '1994' AND T2.gut >= 0 AND T2.gut <= 10
SELECT id FROM patient WHERE sex = 'male' INTERSECT SELECT id FROM laboratory WHERE GPT > 0.5
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T1.diagnosis != "Normal" ORDER BY T2.birthday
SELECT avg(LDH) FROM Laboratory WHERE LDH < 150
SELECT id , age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH > 300 INTERSECT SELECT id , age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE LDH < 100
SELECT T1.id , T2.Admission FROM LABORATORY AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE ALP < 45 AND diagnosis = "Normal" GROUP BY T1.id HAVING count(*) = 1
SELECT id FROM patient WHERE birthday = '1982-04-01' INTERSECT SELECT id FROM laboratory WHERE ALP < 16
SELECT id , sex , birthday FROM patient JOIN laboratory ON patient.id = laboratory.id WHERE T-CHO < (SELECT min(T-CHO) FROM laboratory)
SELECT id , T-CHO - 100 FROM patient WHERE sex = "F" AND TP > 100
SELECT * FROM patient WHERE sex = 'M' AND alb NOT IN ( 0.35 , 0.45 )
SELECT count(*) FROM patient WHERE birthday = 1982 AND (SELECT count(*) FROM laboratory WHERE ALP < 14)
SELECT count(*) , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.U-PRO > 0.95 GROUP BY T1.sex
SELECT avg(T2.UA) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = "Normal"
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE UN >= (SELECT min(un) FROM laboratory WHERE diagnosis = 'pass')
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'RA' INTERSECT SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'RA' AND T2.id IN (SELECT id FROM laboratory WHERE un = 'Normal')
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine >= 0.5
SELECT count(*) FROM patient WHERE sex = 'M' AND creatinine != (SELECT min(creatinine) FROM patient WHERE sex = 'M' )
SELECT T1.id , T1.sex , T1.birthday FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id ORDER BY sum(T2.T-BIL) DESC LIMIT 1
SELECT count(*) , sex FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY sex HAVING T2.T-BIL < 16.0
SELECT T1.id , T-CHO FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id ORDER BY T-CHO DESC LIMIT 1
SELECT avg(T2.Birthdate) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE T1.sex = "M" AND T2.T-CHO > 50
SELECT T1.ID , T2.Diagnosis FROM patient AS T1 JOIN examination AS T2 ON T1.ID = T2.ID WHERE T2.TG > 100
SELECT count(*) FROM patient WHERE TG > (100 / 100) AND birthday > 50000
SELECT DISTINCT id FROM patient WHERE diagnosis = 'outpatient' INTERSECT SELECT DISTINCT id FROM laboratory WHERE cpk < 1.5
SELECT count(*) FROM patient WHERE birthday BETWEEN 1936 AND 1956 AND CPK > 0.6
SELECT T1.id , T1.sex , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu < 40 INTERSECT SELECT T1.id , T1.sex , T1.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.glu > 50
SELECT id , glu FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.first_date = 1991 AND (glu >= 350 AND glu <= 110)
SELECT T1.id , T1.sex , T1.birthday , T3.age FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id GROUP BY T1.sex ORDER BY T3.age
SELECT T2.id , T2.age FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'RBC' AND T1.RBC < 450
SELECT T1.sex , T1.birthday , T2.admission , T3.RBC , T2.admission FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.sex = "F" AND T1.birthday >= "1950-04-18" GROUP BY T2.admission HAVING T3.RBC != "0"
SELECT DISTINCT T2.id , T2.sex FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.HGB < 140
SELECT T1.id , T1.sex FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'SLE' AND T1.birthday = (SELECT max(birthday) FROM patient WHERE diagnosis = 'SLE') AND T1.HGB = 'normal'
SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Thrombosis' INTERSECT SELECT T1.id , T1.age FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Hemorrhage'
SELECT avg(HCT) FROM LABORATORY WHERE EXAMINATION DATE = 1991 AND HCT < (SELECT avg(HCT) FROM LABORATORY)
SELECT count(*) - count(*) FROM (SELECT id FROM laboratory WHERE PLT < 150 INTERSECT SELECT id FROM laboratory WHERE PLT > 150)
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday < 50 AND T2.plt = 0 AND YEAR (T2.date) = 1984
SELECT count(*) , sex , count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > 55 AND T2.UT-T-PRO = 'positive' GROUP BY sex HAVING count(*) > 1
SELECT DISTINCT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PT = "Normal" AND T1.first_date > 1992
SELECT count(*) FROM examination WHERE examination_date > '1997-01-01' AND PT = "inactivated partial prothrombin";
SELECT count(*) FROM patient WHERE id NOT IN (SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.aCL IgG = "abnormal" AND T2.diagnosis = "thrombosis")
SELECT count(*) FROM patient WHERE sex = 'M' AND WBC = 'Normal' INTERSECT SELECT count(*) FROM patient WHERE sex = 'M' AND fibrinogen = 'Abnormal'
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.birthday > "1980-01-01" AND T2.IGG != "Normal"
SELECT DISTINCT T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.U-PRO > 10
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'SLE' AND T3.U-PRO = 'Normal'
SELECT count(*) FROM examination WHERE IGG > 0
SELECT count(*) FROM examination WHERE Diagnosis = "Normal IgG" AND Symptoms = "Yes"
SELECT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T2.sex = "F" AND T1.igA = (SELECT max(igA) FROM examination WHERE T1.igA <= 15)
SELECT count(*) FROM patient WHERE birthday > 1990-01-01 AND iagA = "Normal" AND first date > 1990-01-01
SELECT T1.id , T2.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.IGM = 'Abnormal' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM laboratory WHERE crp = 'positive')
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM patient WHERE creatinine != "normal") AND (T-CHO != 70)
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PT = 'normal' AND T2.APTT > 0.01
SELECT DISTINCT T2.Birth FROM LABORATORY AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.birthday > "1985-1-1" AND T1.Rhematoid Factor = "Normal"
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.Diagnosis = "Normal" INTERSECT SELECT id FROM patient WHERE birthday > "2009-04-15"
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' AND RF = 'Normal' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'Thrombosis'
SELECT count(*) FROM examination WHERE ana_pattern = "P" AND C3 = 3
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.HCT != "Normal" ORDER BY T2.IGG DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Thrombosis' AND T1.sex = 'female' AND T1.description LIKE '%blood clots in veins%' AND T1.description LIKE '%normal level of complement 4%'
SELECT count(*) FROM patient WHERE admission = 'Yes' AND (SELECT count(*) FROM laboratory WHERE RNP = 'Normal')
SELECT T2.Birthdate FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.RNP > 0.01
SELECT count(*) FROM patient WHERE diagnosis = 'Normal Anti-SM' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'Thrombosis'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.SM = 'Positive' ORDER BY T1.birthday LIMIT 3
SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.patient.id = T2.id WHERE T1.examination_date > '1997/1/1' AND T2.birthday = '01/01/1997' AND T2.diagnosis = 'Normal Anti-scl70'
SELECT count(*) FROM patient WHERE sex = 'F' AND diagnosis = 'normal anti-scl70' EXCEPT SELECT count(*) FROM examination WHERE symptoms = 'yes'
SELECT count(*) FROM patient WHERE birthday < 2000 AND diagnosis = "Normal Anti-SSA"
SELECT T1.id FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Abnormal Anti-SSA' ORDER BY T1.first_date LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'SLE' AND T1.IGG = 'normal'
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T2.SSA = 'Negative' INTERSECT SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T2.SNA != "Negative"
SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT count(*) FROM laboratory WHERE CENTROMEA = 'Negative' INTERSECT SELECT count(*) FROM laboratory WHERE SSB = 'Negative')
SELECT DISTINCT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.idpatient = T2.id WHERE T1.ana = 'positive'
SELECT count(*) FROM patient WHERE id NOT IN (SELECT id FROM examination) AND dna = 'normal'
SELECT count(*) FROM patient WHERE diagnosis = 'Normal' INTERSECT SELECT count(*) FROM examination WHERE diagnosis = 'Infectious'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'SLE' AND T1.GLU > 0.5
SELECT count(*) FROM patient WHERE sex = "M" AND GLU <= 10 AND GLU >= 0
SELECT max(T1.Birthdate) FROM patient AS T1 JOIN laboratory AS T2 ON T1.ID = T2.ID WHERE GLU = 'Positive'
SELECT T2.Birthday FROM LABORATORY AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.GLU < 0.5 AND T2.Diagnosis = "Normal" ORDER BY T1.GLU DESC LIMIT 3;
SELECT count(*) FROM patient WHERE first date = (SELECT min(first date) FROM patient WHERE glu = 'normal') AND sex = 'M'
SELECT T1.date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.sex = "Normal" ORDER BY LDH DESC LIMIT 1
SELECT max(date) FROM laboratory WHERE LDH != "normal"
SELECT count(*) FROM patient WHERE id IN (SELECT id FROM laboratory WHERE ALP != "Normal") AND admission != "No";
SELECT count(*) FROM patient JOIN laboratory ON patient.id = laboratory.id WHERE ALP = "Normal"
SELECT DISTINCT T1.diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE sum(T2.U-PRO) < 100
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "SJS" AND T1.description = "normal"
SELECT T1.examination_date FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.alb < 45 AND T2.diagnosis = "Normal"
SELECT count(*) FROM patient WHERE sex = 'M' AND (SELECT count(*) FROM laboratory WHERE id IN (SELECT id FROM patient WHERE sex = 'M' AND (ALP = 1.0005 AND T-CHO = 1.0005)) INTERSECT SELECT count(*) FROM patient WHERE sex = 'M' AND (ALP = 1.0005 AND T-CHO = 1.0005))
SELECT T2.IGG FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "Normal" ORDER BY T2.U-PRO DESC LIMIT 1
SELECT max(IGG) FROM Laboratory WHERE CRE <= 100
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.CRE = 0.000 AND T2.IGG = (SELECT max(IGG) FROM patient)
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.T-BIL > 10 AND T2.Symptoms = "Peripheral pattern"
SELECT T1.anti-nucleus FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T2.diagnosis = 'Normal' ORDER BY T1.T-BIL DESC LIMIT 1
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.TP < 0 AND T2.TBIL > 100
SELECT count(*) FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.ana = 'P' AND T1.ana_pattern = 'P' AND T2.diagnosis = 'Normal'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "Normal" AND T2.symptoms != "No symptoms"
SELECT T2.Diagnosis FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.TG < 150 UNION SELECT T2.Diagnosis FROM laboratory AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.TG < 150
SELECT id FROM patient EXCEPT SELECT T1.id FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id JOIN laboratory AS T3 ON T1.id = T3.id WHERE T3.CPK = 1.8
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.PTT > 0.5
SELECT T1.birthday FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'Abnormal' ORDER BY T1.birthday DESC LIMIT 1
SELECT count(*) FROM patient WHERE diagnosis = 'Normal Blood Glucose' EXCEPT SELECT count(*) FROM patient WHERE diagnosis = 'Thrombosis'
SELECT count(*) FROM patient JOIN laboratory ON patient.id = laboratory.id WHERE wbc = "normal"
SELECT count(*) FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T1.diagnosis = 'SLE' AND WBC = 'normal'
SELECT T1.id FROM patient AS T1 JOIN laboratory AS T2 ON T1.id = T2.id WHERE T2.RBC > 140 AND T1.admission = 'Outpatient'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = "Normal" AND T2.symptoms != "No symptoms"
SELECT T2.PLT FROM examination AS T1 JOIN patient AS T2 ON T1.id = T2.id WHERE T1.diagnosis = "MCTD" AND T2.PLT < 150
SELECT avg(U-PRO) FROM Laboratory WHERE sex = 'male' AND PT = 'normal'
SELECT count(*) FROM patient AS T1 JOIN examination AS T2 ON T1.id = T2.patient WHERE T2.diagnosis = 'severe thrombosis' AND T1.UTT = 'normal'
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Angie" AND T2.last_name = "Sanders"
SELECT count(*) FROM major WHERE department = "College of Engineering"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Art and Design'
{"sql": "SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Women\'s Soccer'"}
SELECT T1.phone FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member JOIN event AS T3 ON T2.link_to_event = T3.event_id WHERE T3.event_name = "Women's Soccer"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN major AS T3 ON T2.zip = T3.zip_code WHERE T1.link_to_event = (SELECT event_id FROM attendance WHERE event_name = "Women's Soccer") AND T2.t_shirt_size = "medium"
SELECT T1.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T1.link_to_event ORDER BY count(*) DESC LIMIT 1
SELECT t1.college FROM major AS t1 JOIN member AS t2 ON t1.major_id = t2.link_to_major WHERE t2.position = 'Vice President' AND t1.major_name = 'Student Club'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id JOIN member AS T3 ON T1.link_to_member = T3.member_id WHERE T3.first_name = "Maya" AND T3.last_name = "Mclean";
SELECT count(*) FROM attendance AS T1 JOIN major AS T2 ON T1.link_to_member = T2.member_id JOIN student_club AS T3 ON T3.major_id = T2.major_id WHERE T1.link_to_event IN (SELECT event_id FROM attendance AS T1 JOIN student_club AS T3 ON T1.link_to_member = T3.member_id WHERE T1.link_to_member = (SELECT first_name , last_name FROM student_club WHERE first_name = 'Sacha' AND event_date = '2019' ) )
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.position = 'Student_Club' GROUP BY T2.member_id HAVING count(*) > 10 AND T1.type = 'meeting'
SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.number > 20 EXCEPT SELECT T2.event_name FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.number = 20
SELECT avg(link_to_event) FROM attendance WHERE event_date LIKE "2020-01-01"
SELECT T1.major_name FROM major AS T1 JOIN budget AS T2 ON T1.major_id = T2.budget_id WHERE T2.category = 'Support' INTERSECT SELECT T1.major_name FROM major AS T1 JOIN budget AS T2 ON T1.major_id = T2.budget_id WHERE T2.category = 'Club' ORDER BY T2.spent DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.department = 'Environmental Engineering'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'Laugh Out Loud'
SELECT last_name FROM major WHERE major_name = 'Law' INTERSECT SELECT last_name FROM major WHERE major_name = 'Constitutional Studies'
SELECT county FROM zip_code WHERE county = (SELECT T1.county FROM zip_code AS T1 JOIN member AS T2 ON T1.zip = T2.zip WHERE T2.first_name = "Sherri" AND T2.last_name = "Ramsey")
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Tyler" AND T2.last_name = "Hewitt"
SELECT T2.amount FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.member_id WHERE T1.first_name = 'Vice President'
SELECT T2.amount FROM attendance AS T1 JOIN budget AS T2 ON T1.link_to_member = T2.budget_id JOIN member AS T3 ON T1.link_to_event = T3.event_id WHERE T3.position = 'Student_club' AND T2.event_date = '2023-09-15'
SELECT T3.city , T3.state FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T3.zip_code = T2.zip RETURNING T3.city , T3.state
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN zip_code AS T2 ON T1.zip = T2.zip_code WHERE T2.state = "Illinois"
SELECT T2.amount FROM attendance AS T1 JOIN budget AS T2 ON T1.link_to_member = T2.link_to_member JOIN major AS T3 ON T1.link_to_event = T3.event_id WHERE T3.major_name = 'Student_Club' AND T2.category = 'advertisement' AND T1.event_date LIKE "9/%";
SELECT department FROM major WHERE major_id = (SELECT major_id FROM member WHERE first_name = "Pierce" INTERSECT SELECT major_id FROM member WHERE first_name = "Guidi")
SELECT sum(T1.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "October Speaker"
SELECT * FROM expense WHERE approved = 'Yes' AND event_date = "2019-10-08"
SELECT avg(T2.spent) FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.event_id WHERE T1.event_date LIKE "9/%" OR T1.event_date LIKE "10/%" AND T1.type = "Registration" AND T1.status = "Completed" AND T1.department = "Major" AND T1.event_name = "Elijah Allen""
SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id WHERE T1.category = 'Student Club' AND T1.event_date = '2019-01-01' INTERSECT SELECT sum(T1.spent) - sum(T2.spent) FROM budget AS T1 JOIN attendance AS T2 ON T1.event_id = T2.event_id WHERE T1.category = 'Student Club' AND T1.event_date = '2020-01-01'
SELECT LOCATION FROM event WHERE event_name = "Spring Budget Review"
SELECT T2.amount FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_date = "2019/9/4" AND T2.category = "Budget" AND T2.type = "Expense" AND T2.expense_description = "Posters"
SELECT remaining FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT notes FROM event WHERE event_date = "2019-09-14"
SELECT count(*) FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT phone FROM member WHERE first_name = "Carlo" AND last_name = "Jacobs";
SELECT county FROM zip_code WHERE city = "Adela O'Gallagher"
SELECT count(*) FROM budget WHERE event_status = 'Completed' AND amount > (SELECT avg(amount) FROM budget WHERE event_status = 'Completed' ) AND link_to_event = (SELECT event_id FROM budget WHERE event_status = 'Completed' AND event_name = 'November Meeting')
SELECT sum(T2.amount) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "September Speaker"
SELECT status FROM event WHERE event_date = "2019/8/20" AND TYPE = "Post Cards, Posters";
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Brent" AND T2.last_name = "Thomason";
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Business" AND T2.t_shirt_size = "medium"
SELECT TYPE FROM zip_code WHERE zip = "(Christof) Nielson"
SELECT t3.major_name FROM member AS t1 JOIN major AS t2 ON t1.member_id = t2.major_id JOIN zip_code AS t3 ON t1.zip = t3.zip_code WHERE t1.position = 'Vice President'
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT department FROM major WHERE first_name = 'President'
SELECT T1.event_date FROM event AS T1 JOIN member AS T2 ON T1.event_id = T2.member_id WHERE T2.first_name = "Connor" AND T2.last_name = "Hilton";
SELECT first_name , last_name FROM member WHERE POSITION = 'dues' ORDER BY date_received LIMIT 1
SELECT count(*) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Yearly Kickoff' AND T1.category = 'Advertisement' AND T1.amount > T3.amount WHERE T3.event_name = 'October Meeting'
SELECT percentage FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Parking" AND T2.event_date LIKE "2023-11%"
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.budget_id = T2.budget_id WHERE T2.type = 'Pizza'
SELECT count(*) FROM zip_code WHERE county = "Orange County" AND state = "Virginia"
SELECT department FROM major WHERE college = "College of Humanities and Social Sciences"
SELECT T1.zip FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Amy" AND T2.last_name = "Firth";
SELECT T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.remaining = (SELECT min(remaining) FROM budget)
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'October Meeting'
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major GROUP BY T1.college ORDER BY count(*) DESC LIMIT 1
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.phone = "809-555-3360"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount DESC LIMIT 1
SELECT T1.cost FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = "Women's Soccer"
SELECT date_received FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = 'Casey' AND T2.last_name = 'Mason'
SELECT count(*) FROM zip_code WHERE state = "Maryland"
SELECT count(*) FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.phone = "954-555-6240"
SELECT T2.first_name , T2.last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.department = "School of Applied Sciences, Technology and Education"
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.event_status = 'closed' GROUP BY T1.event_name ORDER BY spent / (spent + remaining) DESC LIMIT 1
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.position = 'president'
SELECT max(amount) FROM budget
SELECT count(*) FROM event WHERE event_date LIKE "2020-01-01"
SELECT sum(t1.spent) FROM budget AS t1 JOIN expense AS t2 ON t1.budget_id = t2.budget_id WHERE t1.category = 'food'
SELECT T2.first_name , T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id GROUP BY T2.first_name , T2.last_name HAVING count(*) > 7
SELECT T2.member_id FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major JOIN attendance AS T3 ON T3.link_to_member = T2.member_id WHERE T1.major_name = 'Interior Design' AND T3.link_to_event = 'Community Theater'
SELECT T2.major_name FROM zip_code AS T1 JOIN major AS T2 ON T1.zip_code = T2.zip WHERE T1.state = "South Carolina" AND T1.city = "Georgetown"
SELECT count(*) FROM income AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T2.first_name = "Grant" AND T2.last_name = "Gilmour"
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE amount > 40
SELECT sum(T2.cost) FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id WHERE T1.event_status = "Yearly Kickoff" AND T2.event_status = "Yearly Kickoff";
SELECT T2.first_name , T2.last_name FROM budget AS T1 JOIN member AS T2 ON T1.link_to_event = T2.member_id WHERE T1.category = "Yearly Kickoff"
SELECT T1.first_name , T1.last_name , T2.source FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member GROUP BY T2.source ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event ORDER BY T2.amount LIMIT 1
SELECT count(*) , sum(amount) , event_date FROM budget WHERE event_date = '2023-04-14' GROUP BY event_date
SELECT count(*) , department FROM major WHERE department = 'Finance' GROUP BY department = 'Physics'
SELECT source FROM income WHERE date_received LIKE "9/%" AND amount = (SELECT amount FROM income WHERE date_received LIKE "9/%" GROUP BY amount ORDER BY count(*) DESC LIMIT 1)
{"sql": "SELECT first_name , last_name , email FROM member WHERE POSITION = 'Student_Club\'s Secretary'"}
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Physics Teaching'
SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Community Theater' AND T1.date = '2019'
SELECT count(*) , T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN attendance AS T3 ON T3.link_to_member = T2.member_id WHERE T2.first_name = "Luisa" AND T2.last_name = "Guidi" GROUP BY T1.major_id
SELECT avg(budget.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'Student_Club' AND T2.event_name = 'typical'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Ad' ORDER BY T2.amount DESC LIMIT 1
{"sql": "SELECT count(*) FROM attendance AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'Women\'s Soccer' AND T1.member_id = T3.member_id AND T3.first_name = 'Maya' AND T3.last_name = 'Lindsay'"}
SELECT count(*) * 100 / (SELECT count(*) FROM event WHERE TYPE = 'Community Service' AND event_date = '2019' ) FROM major JOIN student_club ON student_club.major_id = major.major_id
SELECT T2.cost FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T1.event_name = 'September Speaker'
SELECT t_shirt_size FROM member GROUP BY t_shirt_size ORDER BY count(*) DESC LIMIT 1
SELECT T2.event_name FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.amount > (SELECT max(amount) FROM budget) AND T2.status = 'closed'
SELECT T2.type , sum(T1.cost) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'October Meeting' GROUP BY T2.type
SELECT category FROM budget WHERE event_id IN (SELECT event_id FROM budget WHERE event_name = 'April Speaker') ORDER BY amount ASC
SELECT amount FROM budget WHERE category = 'Food' ORDER BY amount DESC LIMIT 1
SELECT amount FROM budget WHERE category = 'Advertising' ORDER BY amount DESC LIMIT 3
SELECT sum(T1.cost) FROM expense AS T1 JOIN budget AS T2 ON T1.expense_id = T2.expense_id WHERE T2.category = 'Parking'
SELECT sum(cost) FROM expense WHERE expense_date = '08/20/2019'
SELECT T1.first_name , T1.last_name , sum(T2.expense) FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T1.member_id = "rec4BLdZHS2Blfp4v" GROUP BY T1.member_id
SELECT T1.state FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Sacha" AND T2.last_name = "Harrison";
SELECT T2.expense_description FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.member_id WHERE T1.t_shirt_size = 'X-Large'
SELECT zip FROM member WHERE zip IN (SELECT zip FROM budget WHERE amount < 50)
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Phillip" AND T2.last_name = "Cullen"
SELECT T1.position FROM member AS T1 JOIN major AS T2 ON T1.member_id = T2.link_to_major WHERE T2.department = 'Business'
SELECT count(*) FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T1.major_name = 'Business' AND T2.t_shirt_size = 'Medium'
SELECT T1.type FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.remaining > 30
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT TYPE FROM event WHERE event_date LIKE "2020-03-24T12:00:00"
SELECT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = 'Vice President'
SELECT count(*) * 100 / (SELECT count(*) FROM major WHERE department = 'Business' ) FROM major
SELECT TYPE FROM event WHERE LOCATION = "MU 215"
SELECT count(*) FROM income WHERE amount = 50
SELECT count(*) FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) FROM major WHERE department = 'School of Applied Sciences, Technology and Education' AND college = 'College of Agriculture and Applied Sciences'
SELECT T2.last_name , T1.department , T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = "Environmental Engineering"
SELECT T1.category FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.location = "MU 215" AND T1.spent = 0
SELECT T3.city , T3.state FROM major AS T1 JOIN member AS T2 JOIN zip_code AS T3 ON T1.major_id = T2.member_id AND T3.zip_code = T2.zip WHERE T1.major = 'Electrical and Computer Engineering'
SELECT T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T3.first_name = 'Vice President' AND T1.location = '900 E. Washington St.' AND T1.type = 'social'
SELECT T2.last_name , T2.position FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_date = "09/10/2019" AND T1.type = "buy"
{"sql": "SELECT T2.last_name FROM attendance AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id JOIN event AS T3 ON T1.link_to_event = T3.event_id WHERE T3.event_name = 'women\'s soccer event'"}
SELECT count(*) , percentage FROM ( SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.link_to_member WHERE T1.t_shirt_size = 'medium' AND T2.amount = 50 GROUP BY T1.first_name , T1.last_name ) AS T3
SELECT DISTINCT T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id JOIN zip_code AS T3 ON T3.zip_code = T2.zip RETURNING T3.zip_code
SELECT zip_code FROM zip_code WHERE state = 'Puerto Rico' AND county = 'San Juan Municipio'
SELECT event_name FROM event WHERE event_date LIKE "3/%" AND TYPE = "game" AND event_date >= "3/15/2019" AND event_date <= "3/20/2020"
SELECT T1.event_id , T1.event_name FROM event AS T1 JOIN attendance AS T2 ON T1.event_id = T2.link_to_event JOIN member AS T3 ON T3.member_id = T2.link_to_member WHERE T3.position = 'budget' AND T1.amount > 50
SELECT T1.first_name , T1.last_name , T2.link_to_event FROM member AS T1 JOIN attendance AS T2 ON T1.member_id = T2.link_to_member WHERE T2.event_date BETWEEN '01-10-2019' AND '13-19-2019'
SELECT T1.college FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.first_name = "Katy" AND T1.major_name = "rec1N0upiVLy5esTO"
SELECT phone FROM member WHERE position = 'student' AND major_id IN (SELECT major_id FROM major WHERE department = 'Business' AND college = 'College of Agriculture and Applied Sciences')
SELECT T1.email FROM member AS T1 JOIN income AS T2 ON T1.member_id = T2.member_id WHERE T2.amount > 20 AND T2.date_received BETWEEN '09/10/2019' AND '11/19/2019'
SELECT count(*) FROM major WHERE department = 'College of Education & Human Services' AND major_name = 'Education'
SELECT count(*) * 100 / (SELECT count(*) FROM budget WHERE spent > remaining) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T1.event_status = 'over'
SELECT event_id , LOCATION , status FROM event WHERE event_date BETWEEN "2019-11-02" AND "2020-03-03"
SELECT cost FROM expense WHERE cost > (SELECT avg(cost) FROM expense WHERE cost > 5)
SELECT first_name , last_name FROM member WHERE t_shirt_size = 'extra large'
SELECT count(*) / (SELECT count(*) FROM zip_code) FROM zip_code WHERE TYPE = 'PO box'
SELECT T1.event_name , T1.location FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.spent < (SELECT avg(spent) FROM budget)
SELECT T1.event_name , T1.event_date FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE T2.category = 'Expense' AND T2.amount BETWEEN 50 AND 200
SELECT T1.first_name , T1.last_name , T3.major_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member WHERE T2.amount > 100 JOIN major AS T3 ON T3.major_id = T2.link_to_event
SELECT T3.city , T3.state FROM income AS T1 JOIN zip_code AS T2 ON T1.link_to_member = T2.zip => SELECT T3.city , T3.state FROM income AS T1 JOIN zip_code AS T2 ON T1.link_to_member = T2.zip_code WHERE T1.amount > 40 JOIN event AS T3 ON T2.zip_code = T3.zip_code
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN expense AS T2 ON T1.member_id = T2.link_to_member GROUP BY T1.member_id HAVING count(*) > 1 ORDER BY sum(T2.cost) DESC LIMIT 1
SELECT avg(amount) FROM budget WHERE position != 'member'
SELECT event_name FROM event GROUP BY event_name HAVING avg(parking_cost) - (SELECT avg(parking_cost) FROM event) < 0
SELECT count(*) * 100 FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.type = 'meeting'
SELECT category FROM budget WHERE category = 'water' OR category = 'chips' OR category = 'cookies' ORDER BY amount DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM member AS T1 JOIN budget AS T2 ON T1.member_id = T2.link_to_member ORDER BY T2.spent DESC LIMIT 5;
SELECT T2.first_name , T2.last_name , T2.phone FROM expense AS T1 JOIN member AS T2 ON T1.link_to_member = T2.member_id WHERE T1.cost > (SELECT avg(cost) FROM expense)
SELECT sum(percentage) - 3.5 FROM zip_code WHERE state = 'New Jersey' INTERSECT SELECT sum(percentage) - 3.5 FROM zip_code WHERE state = 'Vermont'
SELECT T1.major_name , T1.department FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.member_id WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke"
SELECT T2.first_name , T2.last_name , T2.zip , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.expense_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = 'Water' INTERSECT SELECT T2.first_name , T2.last_name , T2.zip , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = 'Veggie tray' INTERSECT SELECT T2.first_name , T2.last_name , T2.zip , T1.amount FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.budget_id JOIN member AS T3 ON T2.link_to_member = T3.member_id WHERE T1.category = 'Supplies'
SELECT last_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T1.major_name = 'Elementary Education' AND T2.first_name = "null"
SELECT T1.category , T1.amount FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id WHERE T2.event_name = 'January Speaker'
SELECT T1.event_name FROM event AS T1 JOIN budget AS T2 ON T1.event_id = T2.link_to_event WHERE category = 'food'
SELECT T3.first_name , T3.last_name , T1.amount FROM budget AS T1 JOIN income AS T2 JOIN member AS T3 ON T1.link_to_event = T2.link_to_member AND T2.date_received = 9/9/2019 AND T3.first_name , T3.last_name = T2.first_name , T2.last_name WHERE T1.type = 'income'
SELECT T1.category FROM budget AS T1 JOIN expense AS T2 ON T1.budget_id = T2.link_to_budget WHERE T2.expense_description = 'Posters'
SELECT first_name , last_name , T1.major_name FROM major AS T1 JOIN member AS T2 ON T1.major_id = T2.link_to_major WHERE T2.position = 'Secretary'
SELECT T2.event_name , sum(T1.spent) FROM budget AS T1 JOIN event AS T2 ON T1.link_to_event = T2.event_id GROUP BY T2.event_name
SELECT T1.zip FROM zip_code AS T1 JOIN member AS T2 ON T1.zip_code = T2.zip WHERE T2.first_name = "Garrett" AND T2.last_name = "Gerke";
SELECT T.member_id , T.first_name , T.last_name , T.position FROM member AS T JOIN zip_code AS S ON T.zip = S.zip_code WHERE S.city = "Lincolnville" AND S.state = "North Carolina" AND S.zip_code = "28092"
{"sql": "SELECT count(*) FROM gasstations WHERE country = \"CZE\" AND GasStationID = (SELECT GasStationID FROM transactions_1k WHERE price = (SELECT max(price) FROM transactions_1k WHERE segment = \"Premium\")")}
SELECT consumption / consumption FROM yearmonth WHERE currency = 'EUR' GROUP BY consumption INTERSECT SELECT consumption / consumption FROM yearmonth WHERE currency = 'CZK' GROUP BY consumption
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.date LIKE "2012/%" ORDER BY consumption LIMIT 1
SELECT avg(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "SME" AND T2.date = '2013-01'
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "CZK" AND T2.Date = "2011-01-01" GROUP BY T1.CustomerID ORDER BY SUM(T2.Consumption) DESC LIMIT 1
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.customerid = T2.customerid WHERE T1.Consumption < 30000 AND T2.segment = "KAM" AND T1.Date = 2012
SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "CZK" INTERSECT SELECT T1.Consumption - T2.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "EUR"
SELECT T2.Date FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID JOIN customers AS T3 ON T1.CustomerID = T3.CustomerID WHERE T3.Currency = "EUR" GROUP BY T2.Date ORDER BY sum(T1.Amount) DESC LIMIT 1
SELECT segment FROM yearmonth ORDER BY consumption LIMIT 1
SELECT T2.Date , T1.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Price = 100 AND T1.Amount > 100 AND T1.Currency = "CZK" GROUP BY T2.Date ORDER BY Consumption DESC LIMIT 1
SELECT T2.Date FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.segment = "SME" AND T2.Date LIKE "2013%";
SELECT avg(consumption) - 2013 FROM customers WHERE currency = 'CZK' AND customerid IN (SELECT customerid FROM transactions_1k WHERE date LIKE "2013/%") GROUP BY customerid
SELECT T1.segment , max(T2.consumption) , min(T2.consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.segment = "SME" AND T2.date >= "2012-01-01" AND T2.date <= "2013-01-01" AND T1.currency = "EUR" GROUP BY T1.segment
SELECT sum(Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.segment = "August" OR T2.segment = "November" AND T1.Date = 2013
SELECT count(*) - count(*) FROM gasstations WHERE country = 'Czech Republic' AND discount = 'yes' INTERSECT SELECT count(*) - count(*) FROM gasstations WHERE country = 'Slovakia' AND discount = 'yes'
SELECT consumption - (SELECT min(consumption) FROM yearmonth WHERE date = '2013-04') FROM yearmonth WHERE customerid = 7
SELECT count(*) FROM customers WHERE currency = 'CZK' - count(*) FROM customers WHERE currency = 'EUR'
SELECT T1.CustomerID FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Currency = "Euro" AND T2.Date LIKE "10/13/2013%" ORDER BY T2.Consumption DESC LIMIT 1
SELECT T1.ConsumerID , T2.Consumption FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.ConsumerID ORDER BY T2.Consumption DESC LIMIT 1
SELECT sum(T1.Consumption) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Segment = "KAM" AND T1.Date = "2013-05"
SELECT count(*) FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Consumption > 46.73 AND T2.Currency = "LAM"
SELECT T1.Country , count(*) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID GROUP BY T1.Country HAVING sum(T2.Price) > 0;
SELECT sum(percentage) / 100 FROM customers WHERE currency = 'EUR'
SELECT %s FROM yearmonth WHERE Date = "2012-02" AND Consumption > 528.3 GROUP BY %s HAVING COUNT(*) > 1
SELECT count(*) * 100 / count(*) FROM gasstations WHERE country = 'Slovakian'
SELECT customerid FROM yearmonth WHERE date = "2013-09" GROUP BY customerid ORDER BY consumption DESC LIMIT 1
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date LIKE "2013%" ORDER BY T2 Consumption LIMIT 1
SELECT T1.customerid FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date = "2012-06" ORDER BY consumption LIMIT 1
SELECT max(Consumption) FROM yearmonth WHERE DATE LIKE "%2012%"
SELECT max(T2.Consumption) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro"
SELECT T2.description FROM yearmonth AS T1 JOIN products AS T2 ON T1.productid = T2.productid WHERE T1.date = "2013-09"
SELECT T2.Country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Date LIKE "2013/%" AND T1.Date LIKE "06/%"
SELECT T2.chainid FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.amount > 0 AND T1.price = 0x01
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.productid = T2.productid WHERE T2.amount > 0 AND T2.price > 0.01 AND T2.currency = "Euro"
SELECT avg(Price) FROM transactions_1k WHERE Date LIKE "2012-%" AND MONTH(Date) = 1
SELECT count(*) FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = "Euro" AND T2 Consumption > 1000
SELECT T1.Description FROM products AS T1 JOIN transactions_1k AS T2 ON T1.ProductID = T2.ProductID WHERE T2.GasStationID = (SELECT GasStationID FROM gasstations WHERE country = 'Czech Republic')
SELECT T2.Time FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.chainid = 11
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Price > 1000
SELECT count(*) FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Country = "Czech Republic" AND T1.Date > "2012/1/1"
SELECT avg(T2.Price) FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T1.Country = "Czech Republic"
SELECT avg(T2.Amount) FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T1.currency = 'Euro'
SELECT T1.customerid FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.customerid = T2.customerid WHERE T2.Date LIKE "2012/8/25" ORDER BY T2.Amount DESC LIMIT 1
SELECT T3.country FROM transactions_1k AS T1 JOIN YEARMONTH AS T2 ON T1.date = T2.date JOIN customers AS T3 ON T1.customerid = T3.customerid WHERE T2.monthyear = "2012/08/25" AND T1.price != "free" GROUP BY T3.country ORDER BY count(*) DESC LIMIT 1
SELECT T1.Currency FROM customers AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Date <= "2012-08-24" AND T2.Time = "16:25:00"
SELECT T1.segment FROM customers AS T1 JOIN yearmonth AS T2 ON T1.customerid = T2.customerid WHERE T2.Date = "2012/8/23 21:20:00"
SELECT count(*) FROM transactions_1k WHERE date ,= '2012-08-26' AND TIME ,= '08:00:00' AND amount ,> 0 AND price ,> 0 AND customerid ,= (SELECT customerid FROM customers WHERE currency = 'CZK')
SELECT segment FROM customers ORDER BY consumption LIMIT 1
SELECT T1.country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.date = "2012/8/24 12:42:00"
SELECT productid FROM transactions_1k WHERE date = "2012/08/23 21:20:00"
SELECT T1.Date , T1.Consumption FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T2.Currency = "USD" AND T1.Date LIKE "2012/%" AND T1.Consumption = 124.05
SELECT count(*) FROM transactions_1k WHERE date LIKE "2012/8/26" AND TIME BETWEEN "08:00:00" AND "09:00:00" AND country = "CZE"
SELECT T2.Currency FROM yearmonth AS T1 JOIN customers AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date <= "2013-06-30" AND T1.Date > "2013-05-31" AND T1.Consumption = 214582.17
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.CardID = "667467"
SELECT T1.Country FROM gasstations AS T1 JOIN transactions_1k AS T2 ON T1.GasStationID = T2.GasStationID WHERE T2.Date = "2012/8/24" AND T2.Amount = 548.4
SELECT count(*) FROM customers WHERE date = "2012/8/25" AND currency = "EUR"
SELECT T2.Consumption - T1.Consumption FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.CustomerID = T2.CustomerID WHERE T1.Date LIKE "2012%" AND T1.Date LIKE "08/25/2012%" AND T2.Date LIKE "2013%"
SELECT GasStationID FROM transactions_1k GROUP BY GasStationID ORDER BY sum(amount) DESC LIMIT 1
SELECT count(*) / (select count(*) FROM country WHERE country = "SVK") * 100 FROM premium
SELECT sum(T1.Amount) FROM transactions_1k AS T1 JOIN yearmonth AS T2 ON T1.TransactionID = T2.TransactionID WHERE T2.Date LIKE "2012-01%" AND T1.CustomerID = 38508
SELECT T2.Description , T1.ProductID FROM transactions_1k AS T1 JOIN products AS T2 ON T1.ProductID = T2.ProductID ORDER BY T1.Amount , T1.Date DESC LIMIT 5;
SELECT T1.Currency , avg(T2.Price) , T1.CustomerID FROM customers AS T1 JOIN transactions_1k AS T2 ON T1.CustomerID = T2.CustomerID GROUP BY T1.CustomerID ORDER BY avg(T2.Price) DESC LIMIT 1
SELECT T2.country FROM transactions_1k AS T1 JOIN gasstations AS T2 ON T1.gasstationid = T2.gasstationid WHERE T1.productid = 2 GROUP BY T2.country ORDER BY count(*) DESC LIMIT 1
{"sql": "SELECT T1.consumption FROM yearmonth AS T1 JOIN products AS T2 ON T1.customerid = T2.productid WHERE T2.productid = 5 AND T1.date LIKE \"2012-08-%\" AND T1.consumption != \"null\" AND T1.consumption != \"no data\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption != \"not applicable\" AND T1.consumption != \"no value\" AND T1.consumption !=
